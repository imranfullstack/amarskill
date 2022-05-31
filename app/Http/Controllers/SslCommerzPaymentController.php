<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use App\Library\SslCommerz\SslCommerzNotification;


use App\Models\order;
use App\Models\Orderitem;
use App\Models\Checkout;
use App\Models\Course;
use App\Models\Cart;
use Auth;
use str;
use carbon\carbon;



class SslCommerzPaymentController extends Controller
{

    public function exampleEasyCheckout()
    {
        return view('exampleEasycheckout');
    }

    public function exampleHostedCheckout()
    {
        return view('exampleHosted');
    }

    public function index(Request $request)
    {
        # Here you have to receive all the order data to initate the payment.
        # Let's say, your oder transaction informations are saving in a table called "orders"
        # In "orders" table, order unique identity is "transaction_id". "status" field contain status of the transaction, "amount" is the order amount to be paid and "currency" is for storing Site Currency which will be checked with paid currency.

        $post_data = array();
        $post_data['total_amount'] = $request->subtotal;; # You cant not pay less than 10
        $post_data['currency'] = "BDT";
        $post_data['tran_id'] = uniqid(); // tran_id must be unique

        # CUSTOMER INFORMATION
        $post_data['cus_name'] = Auth::user()->name;
        $post_data['cus_email'] = Auth::user()->email;
        $post_data['cus_add1'] = 'Customer Address';
        $post_data['cus_add2'] = "";
        $post_data['cus_city'] = "";
        $post_data['cus_state'] = "";
        $post_data['cus_postcode'] = "";
        $post_data['cus_country'] = "Bangladesh";
        $post_data['cus_phone'] = Auth::user()->phone;
        $post_data['cus_fax'] = "";

        # SHIPMENT INFORMATION
        $post_data['ship_name'] = "Store Test";
        $post_data['ship_add1'] = "Dhaka";
        $post_data['ship_add2'] = "Dhaka";
        $post_data['ship_city'] = "Dhaka";
        $post_data['ship_state'] = "Dhaka";
        $post_data['ship_postcode'] = "1000";
        $post_data['ship_phone'] = "";
        $post_data['ship_country'] = "Bangladesh";

        $post_data['shipping_method'] = "NO";
        $post_data['product_name'] = "Computer";
        $post_data['product_category'] = "Course";
        $post_data['product_profile'] = "physical-goods";
        $post_data['customer_id'] = "dd-goods";

        # OPTIONAL PARAMETERS
        $post_data['value_a'] = "ref001";
        $post_data['value_b'] = "ref002";
        $post_data['value_c'] = "ref003";
        $post_data['value_d'] = "ref004";




        $order = new order;
        $order->user_id = Auth::user()->id;
        $order->payment_type = 'shurjoPay';
        $order->total = $request->total;
        $order->subtotal = $request->subtotal;
        $order->cupon_discount = $request->discount;
        $order->invoice_no = $post_data['tran_id'];
        $order->created_at = carbon::now();
        $order->save();


        $post_data['order_id'] = $order->id; // tran_id must be unique

        // ------ Cart Page ----
        $carts = Cart::where('user_ip',request()->ip())->get(); 



        foreach($carts as $item){

            $orderitem = new Orderitem;
            $orderitem->user_id = Auth::user()->id;
            $orderitem->instructor_id = $item->course->user_id;
            $orderitem->order_id = $order->id;
            $orderitem->course_id = $item->course_id;
            $orderitem->course_name = $item->course->course_title;
            $orderitem->created_at = carbon::now();
            $orderitem->save();
        }

        $checkout = new Checkout;
        $checkout->user_id = Auth::user()->id;
        $checkout->name = Auth::user()->name;
        $checkout->email = Auth::user()->email;
        $checkout->save();


        if(session()->has('cupon')){
            session()->forget('cupon');
        }
        Cart::where('user_ip',request()->ip())->delete();



        #Before  going to initiate the payment order status need to insert or update as Pending.
     


        $sslc = new SslCommerzNotification();
        # initiate(Transaction Data , false: Redirect to SSLCOMMERZ gateway/ true: Show all the Payement gateway here )
        $payment_options = $sslc->makePayment($post_data, 'hosted');

        if (!is_array($payment_options)) {
            print_r($payment_options);
            $payment_options = array();
        }

    }



    public function success(Request $request)
    {
        

        $tran_id = $request->input('tran_id');
        $sslc = new SslCommerzNotification();



        // -- Success Is 1 ---
        $order = order::where('invoice_no',$tran_id)->first();
        $order->status = 1;
        $order->Save();



        return redirect()->route('student.dashboard')->with('success','success Buy This Course!');


    }

    public function fail(Request $request)
    {
        $tran_id = $request->input('tran_id');

     
        return redirect()->route('student.dashboard')->with('error','Something is not right! Please Try Again.');

    }

    public function cancel(Request $request)
    {
        $tran_id = $request->input('tran_id');

    
        return redirect()->route('student.dashboard')->with('error','You Just Cancel This Order!');

    }



    public function ipn(Request $request)
    {
        #Received all the payement information from the gateway
        if ($request->input('tran_id')) #Check transation id is posted or not.
        {

            $tran_id = $request->input('tran_id');

            #Check order status in order tabel against the transaction id or order id.
            $order_details = DB::table('orders')
                ->where('transaction_id', $tran_id)
                ->select('transaction_id', 'status', 'currency', 'amount')->first();

            if ($order_details->status == 'Pending') {
                $sslc = new SslCommerzNotification();
                $validation = $sslc->orderValidate($request->all(), $tran_id, $order_details->amount, $order_details->currency);
                if ($validation == TRUE) {
                    /*
                    That means IPN worked. Here you need to update order status
                    in order table as Processing or Complete.
                    Here you can also sent sms or email for successful transaction to customer
                    */
                    $update_product = DB::table('orders')
                        ->where('transaction_id', $tran_id)
                        ->update(['status' => 'Processing']);

                    echo "Transaction is successfully Completed";
                } else {
                    /*
                    That means IPN worked, but Transation validation failed.
                    Here you need to update order status as Failed in order table.
                    */
                    $update_product = DB::table('orders')
                        ->where('transaction_id', $tran_id)
                        ->update(['status' => 'Failed']);

                    echo "validation Fail";
                }

            } else if ($order_details->status == 'Processing' || $order_details->status == 'Complete') {

                #That means Order status already updated. No need to udate database.

                echo "Transaction is already successfully Completed";
            } else {
                #That means something wrong happened. You can redirect customer to your product page.

                echo "Invalid Transaction";
            }
        } else {
            echo "Invalid Data";
        }
    }

}
