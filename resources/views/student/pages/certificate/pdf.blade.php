<!DOCTYPE html>
<html>
<head>
    <title>Amar Skill - Certificate</title>
    <style>
        @page { 
            size: 21cm 29.7cm landscape; 
        }
        *{
            font-family: 'Lato', sans-serif;
        }
       body{
           background-color: #fff;
           background-position: center center;
           background-size: cover;
           background-repeat: no-repeat;
           margin: 5px;
           padding: 80px 0px;
           border: 3px solid #0B4080;
           z-index: 0;
           font-family: nikosh; 
           width: 100%;
       }
        .top h2 {
            font-size: 30px;
            text-transform: capitalize;
            letter-spacing: 0.5px;
            font-weight: 500;
            margin: 0;
            text-align: center;
            background-color: #084496;
            color: #fff;
            line-height: 50px;
            margin-bottom: 20px;
            padding: 20px 0px;
        }
        .top h4 {
            font-size: 32px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            font-weight: 700;
            padding: 0 0 10px 0;
            margin: 0;
        }
       .certificate-title .left-side {
           border-radius: 0 0px 0px 0;
           border-right: 50px solid transparent;
           margin-bottom: 20px;
           border: none;
        }

        .certificate-title .left-side  h2 {
            font-size: 45px;
            text-transform: uppercase;
            color: #000;
            letter-spacing: 0.5px;
            font-weight: 600;
            text-align: center;
            line-height: 20px;
            margin: 50px 0px;
        }

       .main-content {
            text-align: center;
            margin: 50px 0px;
        }
       .main-content .title {
            font-size: 25px;
            font-weight: 700px;
            text-transform: capitalize;
            letter-spacing: 0.2px;
            text-align: center;
            margin: 5px;
            padding: 0;
            font-style: bold;
        }
        .main-content .name {
            color: #06458F;
            font-size: 42px;
            font-weight: 600;
            letter-spacing: 0.5px;
            margin: 5px 0;
            padding: 0;
        }
        .main-content .skils {
            color: #09080A;
            font-size: 32px;
            font-weight: 600;
            letter-spacing: 0.5px;
            margin: 5px 0;
            padding: 0;
    }


    .main-content .skils span{
    color: #06458F;
    }
    
   .bottom {
       padding: 0px 80px 0px 80px;
        width: 100%;
        text-align: center;
    }
    .bottom th{
        width: 33%;
    }
    th.date h2 {
    font-size: 18px;
    color: #000;
    font-weight: 500;
    letter-spacing: 0.5px;
    padding: 10px 0;
    }
    th.logo img {
    width: 30%;
    height: 50px;
    margin: 5px 0;
    padding: 0;
    }

    th.signature img{
    width: 30%;
    height: 50px;
    margin: 5px 0;
    padding: 0;
    }

    table.bottom{
        padding: 10px 0 10px 0px;
    }

    table.bottom img {
        width: 50px;
    }

    .container{
        padding: 30px 0px;
        border: 10px solid #084496;
        width: 100%;
        margin: 0px;
    }


      @page {
            margin: 10px 10px 10px 10px;
            margin-header: 0mm;
            margin-footer: 0mm;
        }

    </style>
</head>
<body>
    <div class="container">

        <div class="certificate-title">
            <div class="left-side">
                <h2>Certificate of achievement</h2>
            </div>
        </div>

        <div class="top">
            <h2>Certificated Number: {{$certificate->id}}</h2>
        </div>

        <div class="main-content">
            <p class="title"><b>{{$certificate->course_name}}</b></p>
            <h2 class="name">{{$certificate->user->name}}</h2><br>
            <h3 class="skils">Certified by <span>Amar Skills</span></h3><br>
            <p class="title">Certification through examination adminstrative by amar skill</p>
        </div>
<hr>

        <table class="bottom">
            <tr>
                <th class="date">
                    <h2>{{Carbon\Carbon::now()->format('d-m-Y')}}</h2>
                </th>
                <th class="logo">
                    <img src="https://amarskill.net/public/img/upload/setting/61b9d58b6a43a.png" alt="" width="70px">
                </th>
                <th class="signature">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Cristiano_Ronaldo_Signature.svg/1024px-Cristiano_Ronaldo_Signature.svg.png" alt=""  width="70px">
                </th>
            </tr>
        </table>

    </div>
</body>
</html>