<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>SRIMCA LIBRARY</title>
     <!--  Bootstrap Style -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!--  Font-Awesome Style -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
     <!--  Font-Awesome Animation Style -->
    <link href="assets/css/font-awesome-animation.css" rel="stylesheet" />
     <!--  Pretty Photo Style -->
    <link href="assets/css/prettyPhoto.css" rel="stylesheet" />
        <!--  Google Font Style -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
     <!--  Custom Style -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    

</head>
<body>
    <form id="form1" runat="server">
    <div>
    	<div id="welocme-note" >

        <div class="welcome-div" style="background-color:#fff;color:red">
			<h2 > Welcome You in Library of Shrimad Rajchadra Institute of Management And Computer Application </h2>
        </div>

    </div>
    <!--./ vedio-sec End -->
    <div class="middle-section">
        <div class="container">
            <div class="row ">
                <div class="col-lg-12 col-md-12 ">
					<h1>
                        <asp:HiddenField ID="ctvar" runat="server" Value="0" />
                        LOG IN</h1>
					<div class="row">
						<div class="col-md-6" style="text-align:right" >
							<label style="padding-top:10px;">ENTER USERNAME  </label>
						</div>
						<div class="col-md-4" >	
                            <asp:TextBox ID="UsernameTEXT" runat="server" placeholder="User Name" Class="form-control" required></asp:TextBox>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6" style="text-align:right" >
							<label style="padding-top:10px;" >ENTER PASSWORD </label>
						</div>
						<div class="col-md-4" style="text-align:left">
                            <asp:TextBox ID="PasswordTEXT" runat="server" placeholder="Password" Class="form-control" TextMode="Password" required></asp:TextBox>
                            <asp:Button ID="LoginBTN" runat="server" Text="LOG IN" Class="btn btn-primary" Width="100px" OnClick="LoginBTN_Click"  />
						</div>
					</div>
				</div>
            </div>
        </div>
    </div>
    <!--./ Testimonials End -->
  
    <div id="footser-end">
        <div class="container">

            <div class="row" style="font-size:larger">
                <div class="col-lg-12 col-md-12" >
                    Developed by : <a href="My protfolio/HTML/index.html" target="_blank" style="color: #FF6A00">Daksh Vaishnav</a>
                    
                </div>
            </div>

        </div>
    </div>

    </div>
    </form>
</body>
</html>
