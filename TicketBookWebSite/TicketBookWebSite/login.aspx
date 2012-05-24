<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TicketBookWebSite.login1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>车站售票管理系统</title>

    <script type="text/javascript" src="Scripts/jquery-1.4.1.js"></script>

    <style type="text/css">
     
     body
     {
           border-width:2px;
          border-color:Red;
         }
       

    fieldset
    {
        background-image:url(image/body_background.jpg);
        position:absolute;   
         left:50px;       
         top:100px ;

         
        }
        
        .clearfix:after {
            content:".";
            display:block;
            height:0;
            clear:both;
            visibility:hidden;
            }
            .clearfix {display:inline-block;}
            /* Hides from IE-mac \*/
            * html .clearfix { height:1%; }
            .clearfix {display:block;}
            /* End hide from IE-mac */
        
        
               
    fieldset#login {
        background: url(image/login_bg.png) no-repeat top left;
        margin: 0px auto;
        padding: 5px 5px 5px 5px;
        width: 276px;
        height: 176px;
        font-size: 1.4em;
        border: none;
        position: relative;
        left: 15px;
        }
        #login h4 {
        font-size: 18px;
        font-weight: normal;
        font-family: Cambria, Georgia, "Times New Roman", Times, serif;
        width: 246px;
        height: 31px;
        padding: 4px 0px 0px 30px;
        margin: 0px;
        text-align: left;
        }
        #login form {
        height: 95px;
        width: 276px;
        padding: 10px 0px 0px 0px;
        margin: 0px;
        }
        #login p {
        width: 276px;
        margin: 0px;
        padding: 0px;
        font-family: Arial, Helvetica, sans-serif;
        }
        #login form p label {
        text-align: left;
        margin-left: 0.5em;
        float: left;
        font-size: 14px;
        }
        #login form p.check {
        padding-left: 77px;
        width: 199px;
        height: 23px;
        }
        #login #remlabel {
        float: left;
        font-size: 12px;
        position: relative;
        left: -3px;
        }
        #login #remember {
        float: left;
        width: 14px;
        height: 14px;
        margin: 0px;
        padding: 0px;
        position: relative;
        top: 3px;
        }
        #login #submit {
        background: url(image/login.png) no-repeat top left;
        width: 77px;
        height: 27px;
        cursor: pointer;
        border: none;
        float: right;
        }
        #login #username, #login #password {
        background: url(image/input_bg.png) no-repeat top left;
        border: 1px solid #d0d0d0;
        width: 192px;
        height: 19px;
        padding: 2px;
        color: #222222;
        font-size: 14px;
        float: right;
        margin-bottom: 10px;
        }
        #login p.member {
        text-align: left;
        width: 270px;
        font-size: 11px;
        font-family: Arial, Helvetica, sans-serif;
        margin: 2px 2px 0px 2px;
        padding: 2px;
        line-height: 18px;
        }
    
    
    </style>



    <script type="text/javascript">
        $(function () {

            //输入为空时的警告信息
            $("#submit").click(function () {
                if ($("#username").val() == "" || $("#password").val() == "") {
                    $("#login input").css("border-color", "red");
                    return false;
                }
            });

        });




    
    </script>


</head>
<body>
        <fieldset id="login">
                    	<h4>Members login</h4>
               			<form action="ashx/login.ashx" method="post">
                        	
                            <p class="clearfix"><label for="username">Username</label>
                            <input name="username" id="username" type="text" value="" /></p>

                            <p class="clearfix"><label for="password">Password</label>
							<input name="password" id="password" type="password" value="" /></p>
                            
                            <p class="clearfix check"><input type="checkbox" id="remember" name="remember" />
                            <label for="remember" id="remlabel">Remember me</label>


                        <input name="submit" id="submit" type="submit" value="" /></p>
                    	</form>
                        <p class="member"><a href="#">Lost your Password?</a><br />Not a member yet? <a href="#">Register now!</a></p>
        </fieldset>

        <div id="errorMessage">
        
        
        
        </div>


</body>
</html>
