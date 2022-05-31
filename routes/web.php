<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;

// ---------------------------------------------------------------
				// Admin Controllers
// ---------------------------------------------------------------


use App\Http\Controllers\Admin\AdminDashboardController;
use App\Http\Controllers\Admin\AdminCourseController;
use App\Http\Controllers\Admin\Course\CourseFaqAdminController;
use App\Http\Controllers\Admin\Course\AssignmentAdminController;
use App\Http\Controllers\Admin\Course\AdminSectionController;
use App\Http\Controllers\Admin\Course\AdminLessionController;
// course Admin Manage For Requerments and Outcome
use App\Http\Controllers\Admin\Course\AdminReqermentOutcomeController;
use App\Http\Controllers\Admin\AdminAssignmentController;
use App\Http\Controllers\Admin\AdminManageController;
use App\Http\Controllers\Admin\AdminEnrollController;
use App\Http\Controllers\Admin\AdminProfileController;
use App\Http\Controllers\Admin\AdminStudentlistController;
use App\Http\Controllers\Admin\AdminInstructorlistController;
use App\Http\Controllers\Admin\AdminCuponController;
use App\Http\Controllers\Admin\AdminPagesController;
use App\Http\Controllers\Admin\TermsAndConditionsController;
use App\Http\Controllers\Admin\AdminAboutPageController;
use App\Http\Controllers\Admin\AdminContactPageController;
use App\Http\Controllers\Admin\AdminBasicSettingController;
use App\Http\Controllers\Admin\AdminAboutCOntroller;

// ---------------------------------------------------------------
				// Instructor Dashboard Controllers
// ---------------------------------------------------------------
use App\Http\Controllers\Instructor\InstructorDashboardController;
// Course Controllers
use App\Http\Controllers\Instructor\InstructorCourseController;
// Course Manage Controllers -- Find All the Section , Lession , Assignment under it
use App\Http\Controllers\Instructor\InstructorManageCourseController;
// Assignment Controllers
use App\Http\Controllers\Instructor\InstructorManageAssignmentCourseController;
// Section Controllers
use App\Http\Controllers\Instructor\InstructorCourseSectionController;
// Lession Controllers
use App\Http\Controllers\Instructor\InstructorCourseLessionController;
// Asssiment Controllers
use App\Http\Controllers\Instructor\InstructorCourseAsssimentController;
// FAQ Controllers
use App\Http\Controllers\Instructor\InstructorFaqController;
// Asssiment Controllers
use App\Http\Controllers\Instructor\InstructorProfileController;
// Widhdrow Controllers
use App\Http\Controllers\Instructor\InstructorWithdrowController;


// ---------------------------------------------------------------
				// Student Dashboard Controllers
// ---------------------------------------------------------------
use App\Http\Controllers\Student\StudentDashboardController;
use App\Http\Controllers\Student\StudentVideoController;
use App\Http\Controllers\Student\StudentCertificateController;
use App\Http\Controllers\Student\StudentPurchaseController;
use App\Http\Controllers\Student\StudentrefundController;
use App\Http\Controllers\Student\StudentWishlistController;
use App\Http\Controllers\Student\StudentOrderController;
use App\Http\Controllers\Student\StudentProfileController;
// Frontend Controllers
use App\Http\Controllers\Frontend\FrontendController;
use App\Http\Controllers\Frontend\CategoryFrontendController;
use App\Http\Controllers\Frontend\InstructorFrontendController;
use App\Http\Controllers\Frontend\CartController;
use App\Http\Controllers\Frontend\CuponController;
use App\Http\Controllers\Frontend\CheckoutController;
use App\Http\Controllers\Frontend\WishlistController;
use App\Http\Controllers\Frontend\SearchFrontendController;
use App\Http\Controllers\Frontend\ContactFormController;
use App\Http\Controllers\Frontend\CertificateFrontendController;
use App\Http\Controllers\SslCommerzPaymentController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

  Route::get('/clear', function() {
        $run = Artisan::call('config:clear');
        $run = Artisan::call('cache:clear');
        $run = Artisan::call('config:cache');
        return 'FINISHED';  
    });
    
// clear view cache
Route::get('/clear-view-cache', function () {
    Artisan::call('view:clear');
    return 'View cache has clear successfully!';
});

// ----------- Route For SSLCOMMERZ Start

// SSLCOMMERZ Start
Route::get('/example1', [SslCommerzPaymentController::class, 'exampleEasyCheckout']);
Route::get('/example2', [SslCommerzPaymentController::class, 'exampleHostedCheckout']);

Route::post('/pay', [SslCommerzPaymentController::class, 'index'])->name('cart.buy.checkout');
Route::post('/pay-via-ajax', [SslCommerzPaymentController::class, 'payViaAjax']);

Route::post('/success', [SslCommerzPaymentController::class, 'success']);
Route::post('/fail', [SslCommerzPaymentController::class, 'fail']);
Route::post('/cancel', [SslCommerzPaymentController::class, 'cancel']);

Route::post('/ipn', [SslCommerzPaymentController::class, 'ipn']);
//SSLCOMMERZ END

// ----------- Route For SSLCOMMERZ End









// --- All Frontend Route ---

Route::get('/', [FrontendController::class, 'index'])->name('index');

// ------- Course  Frontend
Route::get('/course', [FrontendController::class, 'course'])->name('course');
Route::get('/course/{slug}', [FrontendController::class, 'single_course'])->name('single.course');


Route::get('unlock/course/{slug}', [FrontendController::class, 'course_unlock'])->name('course.unlock');

// ----------- Normal Pages ---------
// About Page
Route::get('about', [FrontendController::class, 'about'])->name('root.about');
// Contact Page
Route::get('contact', [FrontendController::class, 'contact'])->name('root.contact');
// contact form 
Route::post('contact-store', [ContactFormController::class, 'contact_store'])->name('root.contact.store');
// Privacy Policy
Route::get('privacy-policy', [FrontendController::class, 'privacy'])->name('root.privicy');
// Trams And Conditions
Route::get('terms-and-conditions', [FrontendController::class, 'terms'])->name('root.terms');
// Trams And Conditions
Route::get('refund-return-policy', [FrontendController::class, 'refund'])->name('root.refund');





// ------- Course  Frontend
Route::get('/category/', [CategoryFrontendController::class, 'index'])->name('course.category');
Route::get('/category/{slug}', [CategoryFrontendController::class, 'singlecategory'])->name('single.category');


 // ---------- instructor Frontend
Route::get('/instructor/', [InstructorFrontendController::class, 'index'])->name('instructor.list');
Route::get('/instructor/profile/{username}', [InstructorFrontendController::class, 'instructor_profile'])->name('instructor.profile');


 // ----------  Cart  Frontend
Route::get('/cart/', [CartController::class, 'index'])->name('cart.page');
Route::get('/addtocart/{id}', [CartController::class, 'addtocart'])->name('add.cart');
Route::get('/remove/{id}', [CartController::class, 'cartremove'])->name('remove.cart');
// -- Cart On Page -- 

Route::group(['as' => 'wishlist.', 'prefix' => 'wishlist' , 'namespace' => 'wishlist'],function(){
	
	Route::get('/', [WishlistController::class, 'index'])->name('list');
	Route::get('/add-to-wishlist/{id}', [WishlistController::class, 'addtowishlist'])->name('add');
	Route::get('/wishlist-remove/{id}', [WishlistController::class, 'wishlistremove'])->name('remove');

});



Route::group(['as' => 'search.', 'prefix' => 'search' , 'namespace' => 'search'],function(){
	Route::get('/', [SearchFrontendController::class, 'search'])->name('search');

});


Route::group(['as' => 'certificate.', 'prefix' => 'certificate' , 'namespace' => 'certificate'],function(){
	Route::get('/certificate', [CertificateFrontendController::class, 'index'])->name('index');
	Route::post('/certificate-search', [CertificateFrontendController::class, 'certificate_search'])->name('search.value');
	Route::get('/search-page', [CertificateFrontendController::class, 'search_page'])->name('search.page');

});



Route::get('/plus-cart/{id}', [CartController::class, 'pluscart'])->name('cart.plus');
Route::get('/cart/view', [CartController::class, 'viewcart'])->name('cart.view');
 // ----------  Apply Cupon Code  Frontend
Route::post('/apply-cupon/', [CuponController::class, 'applycupon'])->name('apply.cupon');
Route::get('/remove-cupon/', [CuponController::class, 'removecupon'])->name('remove.cupon');

// ------------- Checkout Page --------
Route::post('/checkout/', [CheckoutController::class, 'checkout'])->name('checkout.course');











// --- Route For Auth
Auth::routes();
Route::get('/home', [HomeController::class, 'index'])->name('home');

// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
// --------------------------- Admin Dashboard Controllers ------------------------
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
Route::group(['as'=> 'admin.' , 'prefix' => 'admin' , 'namespace' => 'Admin' , 'middleware' =>['auth','admin']], function(){

Route::get('/dashboard', [AdminDashboardController::class, 'index'])->name('dashboard');

// --------------------------------------------------------------------------------
// ----------------- All courses Route Will Find Here For Admin -------------------
// --------------------------------------------------------------------------------


Route::group(['as' => 'admin.', 'prefix' => 'admin' , 'namespace' => 'admin'],function(){
		Route::get('/create', [AdminDashboardController::class, 'create'])->name('create');

		Route::post('/store', [AdminDashboardController::class, 'store'])->name('store');
		
});



Route::group(['as' => 'setting.', 'prefix' => 'setting' , 'namespace' => 'setting'],function(){

		Route::get('/index', [AdminBasicSettingController::class, 'index'])->name('index');
		Route::post('/store-basic', [AdminBasicSettingController::class, 'basic_store'])->name('basic.store');
		Route::post('/update-basic/{id}', [AdminBasicSettingController::class, 'basic_update'])->name('basic.update');


});
// ---------- Admin Main Pages Start-----------

Route::group(['as' => 'pages.', 'prefix' => 'pages' , 'namespace' => 'pages'],function(){

	
	// Contact Pages Controllers For Admin Start
	// ----------------- Contact Information ( Mobile , Email , Location ) ------------------------------
		Route::group(['as' => 'contact.', 'prefix' => 'contact' , 'namespace' => 'contact'],function(){
				Route::get('/index', [AdminContactPageController::class, 'index'])->name('index');
				Route::post('/contact-store', [AdminContactPageController::class, 'contact_store'])->name('contact.store');
				Route::post('/contact-update/{id}', [AdminContactPageController::class, 'contact_update'])->name('contact.update');

		// ADMIN CONTACT form

				Route::get('/contact-list', [AdminContactPageController::class, 'contact_list'])->name('contact.list');
				Route::get('/contact-view/{id}', [AdminContactPageController::class, 'contact_view'])->name('contact.view');

		});
	// ----------------- Contact Information ( Mobile , Email , Location ) ------------------------------

			// ----------------- Social LInk Code Start ------------------------------

		Route::group(['as' => 'social.', 'prefix' => 'social' , 'namespace' => 'social'],function(){


				Route::post('/social-store', [AdminContactPageController::class, 'social_store'])->name('social.store');


		});

			// ----------------- Social LInk Code End  ------------------------------
	// Contact Pages Controllers For Admin End
	// About Pages Controllers For Admin Start
		Route::group(['as' => 'about.', 'prefix' => 'about' , 'namespace' => 'about'],function(){

				Route::get('/index', [AdminAboutPageController::class, 'index'])->name('index');
				Route::post('/store', [AdminAboutPageController::class, 'store'])->name('store');
				Route::post('/update/{id}', [AdminAboutPageController::class, 'update'])->name('update');
		
		});
	// About Pages Controllers For Admin End
	
	// Privicy Policy Pages Controllers For Admin Start
		Route::group(['as' => 'privicy.', 'prefix' => 'privicy' , 'namespace' => 'privicy'],function(){
				Route::get('/create', [AdminPagesController::class, 'privicypolicy_create'])->name('create');
				Route::post('/store', [AdminPagesController::class, 'privicy_store'])->name('store');
		});
	// Privicy Policy Pages Controllers For Admin End


	// Privicy Policy Pages Controllers For Admin Start
		Route::group(['as' => 'terms.', 'prefix' => 'terms' , 'namespace' => 'terms'],function(){
				Route::get('/create', [TermsAndConditionsController::class, 'create'])->name('create');
				Route::post('/store', [TermsAndConditionsController::class, 'term_store'])->name('store');
		});
	// Privicy Policy Pages Controllers For Admin End
});

// ---------- Admin Main Pages End-----------


Route::group(['as' => 'profile.', 'prefix' => 'profile' , 'namespace' => 'profile'],function(){
		// Route Admin Profile
		Route::get('/', [AdminProfileController::class, 'index'])->name('index');
		Route::post('/image', [AdminProfileController::class, 'image'])->name('image');
		Route::post('/updatebasic', [AdminProfileController::class, 'updatebasic'])->name('update.basic');
		Route::post('/update-password', [AdminProfileController::class, 'updatepassword'])->name('update.password');
});



Route::group(['as' => 'requirements.', 'prefix' => 'requirements' , 'namespace' => 'requirements'],function(){
		// Route Admin Profile
			Route::post('/update/{id}', [AdminReqermentOutcomeController::class, 'requirements_update'])->name('update');
			Route::get('/delete/{id}', [AdminReqermentOutcomeController::class, 'requirements_delete'])->name('delete');
			Route::post('/add-new-req/{id}', [AdminReqermentOutcomeController::class, 'addnew_req'])->name('addnew.req');
});


Route::group(['as' => 'outcome.', 'prefix' => 'outcome' , 'namespace' => 'outcome'],function(){
		// Route Admin Profile
			Route::post('/update/{id}', [AdminReqermentOutcomeController::class, 'update_outcome'])->name('update');
			Route::get('/delete/{id}', [AdminReqermentOutcomeController::class, 'delete_outcome'])->name('delete');
			Route::post('/addnew/{id}', [AdminReqermentOutcomeController::class, 'outcomes_new_save'])->name('add.new.outcome');
});

// ----- Route For All Student -----
Route::group(['as' => 'student.', 'prefix' => 'student' , 'namespace' => 'student'],function(){
		// Route Admin Profile
		Route::get('/list', [AdminStudentlistController::class, 'index'])->name('index');
		// --- Show Student Single Page
		Route::get('/show/{id}', [AdminStudentlistController::class, 'show'])->name('show');
		// --- Student Password Update
		Route::post('/update-password/{id}', [AdminStudentlistController::class, 'passwordupdate'])->name('update.password');
});

// ----- Route For All Student End-----

// ----- Route For All Student -----
Route::group(['as' => 'instructor.', 'prefix' => 'instructor' , 'namespace' => 'instructor'],function(){
		// Route Admin Profile
		Route::get('/list', [AdminInstructorlistController::class, 'index'])->name('index');
});

// ----- Route For All Student End-----
// ----- Route For All Student -----
Route::group(['as' => 'cupons.', 'prefix' => 'cupons' , 'namespace' => 'cupons'],function(){
		// Route Admin Profile
		Route::get('/edit/{id}', [AdminCuponController::class, 'edit'])->name('edit');
		Route::get('/trash/{id}', [AdminCuponController::class, 'trash'])->name('trash');
		Route::get('/show/{id}', [AdminCuponController::class, 'show'])->name('show');
		Route::post('/update/{id}', [AdminCuponController::class, 'update'])->name('update');
});

// ----- Route For All Student End-----

Route::group(['as' => 'courses.', 'prefix' => 'course' , 'namespace' => 'courses'],function(){




// Manage All  course 
Route::get('/manage-courses', [AdminCourseController::class, 'manage_courses'])->name('manage.list');
// Add New  course 
Route::get('/add-new', [AdminCourseController::class, 'add_courses'])->name('add.new');
// Store course
Route::post('/add-store', [AdminCourseController::class, 'store_courses'])->name('store');
// edit course
Route::get('/edit/{id}', [AdminCourseController::class, 'courses_edit'])->name('edit');
// edit course
Route::get('/pending/', [AdminCourseController::class, 'courses_pending'])->name('pending');
// edit course
Route::get('/approve/{id}', [AdminCourseController::class, 'course_approve'])->name('approve');
// update course
Route::post('/update/{id}', [AdminCourseController::class, 'courses_update'])->name('update');
// ------ Create Course Section --------
Route::post('/course-section/{id}', [AdminCourseController::class, 'courses_section_store'])->name('section.store');
// ------ Create Course Section --------
Route::get('/trash/{id}', [AdminCourseController::class, 'trash'])->name('trash');
// ------ Manage ----------

Route::get('/manage/{id}', [AdminManageController::class, 'manage'])->name('manage');	


Route::group(['as' => 'manage.', 'prefix' => 'manage' , 'namespace' => 'manage'],function(){
	// ----------- Course Section ---------
	Route::get('/single-video/{id}', [AdminManageController::class, 'single_video'])->name('single.video');
	// ----------- Course Section ---------
	Route::get('/section/{id}', [AdminManageController::class, 'section'])->name('section');
	// ----------- Course Section ---------
	Route::get('/lession/{id}', [AdminManageController::class, 'lession'])->name('lession');
});


Route::group(['as' => 'enroll.', 'prefix' => 'enroll' , 'namespace' => 'enroll'],function(){

	Route::get('/index/', [AdminEnrollController::class, 'index'])->name('index');
	// PDF View
	Route::get('/view/{id}', [AdminEnrollController::class, 'view'])->name('view');

});






// ------ Create Course Section --------
Route::post('/course-lession/{id}', [AdminCourseController::class, 'courses_lession_store'])->name('lession.store');
Route::post('/course-page-lession', [AdminCourseController::class, 'courses_page_lession_store'])->name('page.lession.store');

// ---------- Admin Assignment Controllers ------------
Route::get('/create-assignment/{id}', [AdminCourseController::class, 'createassignment'])->name('create.assignment');
Route::get('/remove-assignment/{id}', [AdminCourseController::class, 'removeassignment'])->name('remove.assignment');

Route::get('/edit/assignment/{id}', [AdminAssignmentController::class, 'assignmentedit'])->name('assignment.edit');
Route::get('/update/assignment/{id}', [AdminAssignmentController::class, 'assignmentupdate'])->name('assignment.update');
Route::post('/update/assignment/{id}', [AdminAssignmentController::class, 'update'])->name('assignment.update');
	





// --------------------------------------------------------------------------------------------
 								//  Category Controllers 
 // -------------------------------------------------------------------------------------------



Route::group(['as' => 'category.', 'prefix' => 'category' , 'namespace' => 'category'],function(){
// --- Category List -------
Route::get('/categorys', [AdminCourseController::class, 'add_courses_category'])->name('add');
// --- Category store -------
Route::post('/category-store', [AdminCourseController::class, 'store_courses_category'])->name('store');
	});
// --------------------------------------------------------------------------------------------
 								// Add lesson Controllers 
 // -------------------------------------------------------------------------------------------		
	Route::group(['as' => 'lesson.', 'prefix' => 'lesson' , 'namespace' => 'lesson'],function(){

		Route::get('/lessons', [AdminCourseController::class, 'add_course_lesson'])->name('add');

		// ------------ Lession Controller ----------
		Route::get('/manage-lession/{id}', [AdminLessionController::class, 'managelession'])->name('manage');
			// Order Controllers
		Route::post('/updateorder/{id}', [AdminLessionController::class, 'updateorder'])->name('manage.update.order');
			// Edit Controllers
		Route::get('/edit/{id}', [AdminLessionController::class, 'edit'])->name('manage.edit');
		 // -------- Update Post --------												
		Route::post('/update/{id}', [AdminLessionController::class, 'update'])->name('manage.update');

	});





// --------------------------------------------------------------------------------------------
 								// Add Section Controllers 
 // -------------------------------------------------------------------------------------------		
	Route::group(['as' => 'section.', 'prefix' => 'section' , 'namespace' => 'section'],function(){

		Route::get('/view/{id}', [AdminSectionController::class, 'lessiontosectionview'])->name('view');
		Route::post('/orderupdate/{id}', [AdminSectionController::class, 'orderupdate'])->name('order.update');
		Route::get('/edit/{id}', [AdminSectionController::class, 'edit'])->name('edit');
		Route::post('/update/{id}', [AdminSectionController::class, 'update'])->name('update');





		
	});




// --------------------------------------------------------------------------------------------
 								// Coupons Controllers
 // -------------------------------------------------------------------------------------------			
	Route::group(['as' => 'coupons.', 'prefix' => 'coupons' , 'namespace' => 'coupons'],function(){

		Route::get('/', [AdminCourseController::class, 'add_course_coupon'])->name('add');
		Route::post('/store', [AdminCourseController::class, 'cupon_store'])->name('store');
	});
// --------------------------------------------------------------------------------------------
 								// Course FAQ Controllers 
 // -------------------------------------------------------------------------------------------			
	Route::group(['as' => 'faq.', 'prefix' => 'faq' , 'namespace' => 'faq'],function(){

		Route::get('/', [CourseFaqAdminController::class, 'index'])->name('create');
		// view FAQ
		Route::get('/view/{id}', [CourseFaqAdminController::class, 'view'])->name('view');
		// Store FAQ
		Route::post('/store', [CourseFaqAdminController::class, 'store'])->name('store');

		// Faq Edit Admin
		Route::get('/edit/{id}', [CourseFaqAdminController::class, 'edit'])->name('edit');
		// Faq Edit Admin
		Route::post('/update/{id}', [CourseFaqAdminController::class, 'update'])->name('update');
		// Faq Edit Admin
		Route::get('/destroy/{id}', [CourseFaqAdminController::class, 'destroy'])->name('destroy');
	});
// --------------------------------------------------------------------------------------------
 								// Course FAQ Controllers 
 // -------------------------------------------------------------------------------------------			
	Route::group(['as' => 'assignment.', 'prefix' => 'assignment' , 'namespace' => 'assignment'],function(){

		
		Route::get('/', [AssignmentAdminController::class, 'index'])->name('create');
		// --------- Admin Assignment Admin Controller
		Route::get('/assignment/section/{id}', [AdminAssignmentController::class, 'assignmentsection'])->name('section');
		// --------- Admin Assignment Admin Controller Lession
		Route::get('/assignment/lession/{id}', [AdminAssignmentController::class, 'assignmentlession'])->name('lession');
		// --------- Admin Assignment Admin Controller Lession
		Route::get('/assignment/create/{id}', [AdminAssignmentController::class, 'create'])->name('create.view');
		// --------- Admin Assignment Admin Controller Lession
		Route::post('/assignment/store/{id}', [AdminAssignmentController::class, 'store'])->name('store');
	});

});
// --------------------------------------------------------------------------------
// ----------------- All courses Route Will Find Here For Admin END----------------
// --------------------------------------------------------------------------------

});


// -------------------- Student Dashboard Controllers -------------------
Route::group(['as'=> 'student.' , 'prefix' => 'student' , 'namespace' => 'Student' , 'middleware' =>['auth','student']], function(){




Route::get('/dashboard', [StudentDashboardController::class, 'index'])->name('dashboard');
// ----- Student PlayList Aria Start ------
Route::get('/course/playlist/{slug}', [StudentVideoController::class, 'index'])->name('play.list');
// ----- Student Single Video -----
Route::get('/course/video/{slug}', [StudentVideoController::class, 'singlevideo'])->name('single.video');
// ----- Student Certificate ------
Route::get('/course/certificate', [StudentCertificateController::class, 'index'])->name('certificate.list');
Route::get('/course/certificate/{id}', [StudentCertificateController::class, 'view'])->name('certificate.view');
// ----- Student purchase history ------
Route::get('/course/purchase', [StudentPurchaseController::class, 'index'])->name('purchase.list');


// ----------   purchase All -------------
Route::group(['as' => 'purchase.', 'prefix' => 'purchase' , 'namespace' => 'purchase'],function(){
		Route::get('/veiw/all/{id}', [StudentPurchaseController::class, 'viewall'])->name('view.all');
});	




Route::group(['as' => 'profile.', 'prefix' => 'profile' , 'namespace' => 'profile'],function(){

		Route::get('/{username}', [StudentProfileController::class, 'index'])->name('page');
		// Route Profile Section
		Route::post('/profile/update', [StudentProfileController::class, 'update'])->name('update');
		// Change Password 
		Route::get('/profile/change-password', [StudentProfileController::class, 'password'])->name('change.password');
		// Update Password 
		Route::post('/update-password', [StudentProfileController::class, 'updatepassword'])->name('update.password');

});		

// ----- Student Refund history ------
Route::get('/course/refund', [StudentrefundController::class, 'index'])->name('refund.list');
// ----- Student Refund history ------
Route::get('/course/wishlist', [StudentWishlistController::class, 'index'])->name('wishlist.page');


});



// -------------------- Instructor Dashboard Controllers ------------------- InstructorCourseController
Route::get('/courses/single-video/id/found/single-course/ksldkc-456399-ckdlcsakd', [FrontendController::class, 'courses'])->name('course.6d69c9sdc');
Route::group(['as'=> 'instructor.' , 'prefix' => 'instructor' , 'namespace' => 'Instructor' , 'middleware' =>['auth','instructor']], function(){

			Route::get('/dashboard', [InstructorDashboardController::class, 'index'])->name('dashboard');

			// ----------------- Faq --------------------



			// ----------------- Faq End--------------------
			// -------------- Profile Controller For Instructor -------------
	Route::group(['as' => 'profile.', 'prefix' => 'profile' , 'namespace' => 'profile'],function(){
	// update Phone Number and Name 
			Route::post('/update-phone-name', [InstructorProfileController::class, 'updatebasic'])->name('update.basic');
			Route::post('/image-upload', [InstructorProfileController::class, 'profileimage'])->name('image');
			Route::post('/profile-info', [InstructorProfileController::class, 'profileinfo'])->name('profile.info');
			// --------- Add Certificate For Instructor
			Route::post('/add-certificate', [InstructorProfileController::class, 'addcertificate'])->name('add.certificate');
			// --------- Add Certificate For Instructor
			Route::get('/remove-certificate/{id}', [InstructorProfileController::class, 'certificateremove'])->name('remove.certificate');
			// --------- Add Certificate For Instructor
			Route::post('/add-skill', [InstructorProfileController::class, 'addskill'])->name('add.skill');
			// --------- Add Certificate For Instructor
			Route::get('/remove-skill/{id}', [InstructorProfileController::class, 'removeskill'])->name('remove.skill');
			// --------- Add Degree For Instructor
			Route::post('/add-degree', [InstructorProfileController::class, 'adddegree'])->name('add.degree');
			// --------- Add Degree For Instructor
			Route::get('/remove-degree/{id}', [InstructorProfileController::class, 'removedegree'])->name('remove.degree');
	});	


// -------------------------------------------------------------------------------------
 								// Instructor withdrow Layout 
// ------------------------------------------------------------------------
	Route::group(['as' => 'withdrow.', 'prefix' => 'withdrow' , 'namespace' => 'withdrow'],function(){

			// --------- Add Degree For Instructor
			Route::get('/index', [InstructorWithdrowController::class, 'index'])->name('index');


	});	








	// InstructorWithdrowController

	
	Route::group(['as' => 'course.', 'prefix' => 'course' , 'namespace' => 'course'],function(){
			// -------- Course Controller For Instructor ---------
			Route::get('/index', [InstructorCourseController::class, 'index'])->name('index');
			Route::get('/create', [InstructorCourseController::class, 'create'])->name('create');
			// -------- store -----------
			Route::post('/store', [InstructorCourseController::class, 'store'])->name('store');
			// edit course for instructor
			Route::get('/edit/{id}', [InstructorCourseController::class, 'edit'])->name('edit');
			// update course for instructor
			Route::post('/update/{id}', [InstructorCourseController::class, 'update'])->name('update');



			// -- All The requirements Route Will Be Come Here --
			Route::group(['as' => 'requirements.', 'prefix' => 'requirements' , 'namespace' => 'requirements'],function(){
					// Delete Requirements
					Route::get('/delete/{id}', [InstructorCourseController::class, 'deleterequirements'])->name('delete');
					Route::post('/edit/{id}', [InstructorCourseController::class, 'editrequirement'])->name('edit');
					Route::post('/add-update/{id}', [InstructorCourseController::class, 'requerment_add_update'])->name('add.update');
			});		




			// -- All The OutCome Route Will Be Come Here --
			Route::group(['as' => 'outcome.', 'prefix' => 'outcome' , 'namespace' => 'outcome'],function(){

					Route::post('/edit/{id}', [InstructorCourseController::class, 'outcome_add_update'])->name('edit');
					Route::get('/trash/{id}', [InstructorCourseController::class, 'outcome_trash'])->name('trash');
					Route::post('/store-edit/{id}', [InstructorCourseController::class, 'storeedit'])->name('store.edit');
			});	


			Route::group(['as' => 'profile.', 'prefix' => 'profile' , 'namespace' => 'profile'],function(){
					Route::get('/', [InstructorProfileController::class, 'index'])->name('index');
			});		
			// ------- Course FAQ Section ----------
			Route::group(['as' => 'faq.', 'prefix' => 'faq' , 'namespace' => 'faq'],function(){

					Route::get('/all', [InstructorFaqController::class, 'index'])->name('all');
					Route::get('/create', [InstructorFaqController::class, 'create'])->name('create');
					Route::post('/store', [InstructorFaqController::class, 'store'])->name('store');
			});	



	Route::group(['as' => 'manage.', 'prefix' => 'manage' , 'namespace' => 'manage'],function(){
					// -------- Manage All Asset -----------
			Route::get('/{slug}', [InstructorManageCourseController::class, 'index'])->name('index');
			// -------- Manage Assignment -----------
			Route::group(['as' => 'assignment.', 'prefix' => 'assignment' , 'namespace' => 'assignment'],function(){
				Route::get('/{id}', [InstructorManageAssignmentCourseController::class, 'index'])->name('index');
			});		
			// -------- Manage All Section Controller  -----------
			Route::group(['as' => 'section.', 'prefix' => 'section' , 'namespace' => 'section'],function(){

				Route::get('/{id}', [InstructorCourseSectionController::class, 'index'])->name('index');
				Route::post('/store/{id}', [InstructorCourseSectionController::class, 'store'])->name('store');
				Route::post('/updateorder/{id}', [InstructorCourseSectionController::class, 'updateorder'])->name('updateorder');
				Route::get('/edit/{id}', [InstructorCourseSectionController::class, 'edit'])->name('edit');
				Route::post('/update/{id}', [InstructorCourseSectionController::class, 'update'])->name('update');
			});	
			// -------- Manage All Section Controller  -----------
			Route::group(['as' => 'lession.', 'prefix' => 'lession' , 'namespace' => 'lession'],function(){
				Route::get('/{id}', [InstructorCourseLessionController::class, 'index'])->name('index');
				Route::get('section/{id}', [InstructorCourseLessionController::class, 'section'])->name('section');
				Route::post('/store-lession/{id}', [InstructorCourseLessionController::class, 'store'])->name('store');
				Route::post('/order-lession/{id}', [InstructorCourseLessionController::class, 'order'])->name('order');
				Route::get('/edit-lession/{id}', [InstructorCourseLessionController::class, 'edit'])->name('edit');

				// -------- Update Lession
				Route::post('/update-lession/{id}', [InstructorCourseLessionController::class, 'update'])->name('update');

			});	
			// -------- Manage All Section Controller  -----------
			Route::group(['as' => 'asssiment.', 'prefix' => 'asssiment' , 'namespace' => 'asssiment'],function(){
				Route::get('/index/{id}', [InstructorCourseAsssimentController::class, 'index'])->name('index');
				// ---------- Assignment Lession List for add assignment 
				Route::get('/lession/{id}', [InstructorCourseAsssimentController::class, 'lession'])->name('lession');
				Route::post('/store/{id}', [InstructorCourseAsssimentController::class, 'store'])->name('store');
				Route::get('/delete/{id}', [InstructorCourseAsssimentController::class, 'delete'])->name('delete');
			});		
		});		
	});
});