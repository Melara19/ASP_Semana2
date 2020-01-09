<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Tercera_Entity.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>Tercera | Login</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic"/>
    <link href="Content/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="Content/css/bootstrap-select.css" rel="stylesheet"/>
    <link href="Content/css/bootstrap-datepicker3.min.css" rel="stylesheet"/>
    <link href="Content/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="Content/css/icheck/blue.min.css" rel="stylesheet"/>
    <link href="Content/css/AdminLTE.css" rel="stylesheet"/>
    <link href="Content/css/skins/skin-blue.css" rel="stylesheet"/>

    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
<style type="text/css">span.im-caret {
    -webkit-animation: 1s blink step-end infinite;
    animation: 1s blink step-end infinite;
 
		   
}

#trianguloSuperior{
	width: 0px;
	border-top: 100px solid #146db1;
	border-right: 250px solid transparent;
	border-bottom: 80px transparent; 
}
#trianguloInferior{
    width: 0px;
    border-bottom: 100px solid #f0921e; 
    border-left: 250px solid transparent;
    margin-right: 57px;
    position:fixed  ; 
    bottom:0;
}

@keyframes blink {
    from, to {
        border-right-color: black;
    }
    50% {
        border-right-color: transparent;
    }
}

@-webkit-keyframes blink {
    from, to {
        border-right-color: black;
    }
    50% {
        border-right-color: transparent;
    }
}

.BotnRedon
{
    border-radius: 18px;
    border-bottom:solid ;
    background-color: #146db1;
    
    font-size:18px;
        font-family:Verdana,Helvetica;
        font-weight:bold;
        color:white;
}

 


</style>

</head>
    <body class="login-page"  style="height: auto;" >
               
        <form id="form1" runat="server">
            
             <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager> 
             <div class="login-box">
                <div class="login-logo">
                    <h3>Inicio Sesión</h3>
                </div>
                 &nbsp;<!-- /.login-logo -->
                <div class="login-box-body">                    
                    <p class="login-box-msg">Ingresa para iniciar sesion</p>
                     <%--<form action="/" class="m-t" method="post" role="form"><input name="__RequestVerificationToken" type="hidden" value="ponkZ5MBsPiWVdb8p-gT5PxmVxYSieUREGNTu9rDs41wY-8ka9d44aEh3ti7XGlhe_HmsACfVqFQXs2gczsSJllPIDF9bzxx-FX7gYa3DXw1">  --%>     
                     <div class="form-group has-feedback">
                        <input class="form-control" runat="server" id="Codigo" name="Codigo" placeholder="Nombre de Usuario" required="" type="text" value="" />
                        <span class="glyphicon glyphicon-user form-control-feedback"></span>
                       <span class="field-validation-valid" data-valmsg-for="Codigo" data-valmsg-replace="true"></span>
                    </div>
                    <div class="form-group has-feedback">                      
                        <input class="form-control" id="Contrasenia" name="Contrasenia" placeholder="Contraseña" required="" type="password" runat="server"/>
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                        <span class="field-validation-valid" data-valmsg-for="Contrasenia" data-valmsg-replace="true"></span>
                    </div>
                    <div class="row" >
                        <div class="col-xs-4"></div>
                        <div class="col-xs-4" >
                            <asp:Button ID="BIngresar" runat="server" Text="ACEPTAR" Font-Bold="True" ForeColor="White" CssClass="BotnRedon" BorderStyle="None" Width="118px" OnClick="BIngresar_Click"   />
                        </div>
                    </div>
                           
                   </div>
             </div>
             
        </form>

         
       
    
    <!-- /.login-box -->
    <script src="routejs.axd/09ced8537ea29adac159b94dedc5cfd859c8ca5f/router.js"></script>
    <script src="WebHelpers.axd/1050757930eac1f68c57a43e55cf8721be2262f4/webhelpers.js"></script>
    <script src="Content/js/plugins/jquery/jquery-3.3.1.js"></script>
<script src="Content/js/plugins/bootstrap/bootstrap.js"></script>
<script src="Content/js/plugins/fastclick/fastclick.js"></script>
<script src="Content/js/plugins/slimscroll/jquery.slimscroll.js"></script>
<script src="Content/js/plugins/bootstrap-select/bootstrap-select.js"></script>
<script src="Content/js/plugins/moment/moment.js"></script>
<script src="Content/js/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="Content/js/plugins/icheck/icheck.js"></script>
<script src="Content/js/plugins/inputmask/jquery.inputmask.bundle.js"></script>
<script src="Content/js/adminlte.js"></script>
<script src="Content/js/init.js"></script>

    
    

<!-- Visual Studio Browser Link -->
<script type="application/json" id="__browserLink_initializationData">
    {"appName":"Chrome","requestId":"5c8581ba1f8a446ea2655be18a6724d9"}
</script>
<script type="text/javascript" src="http://localhost:1769/ce393ec2b63641c69c6e63855afa5ce3/browserLink" async="async"></script>
<!-- End Browser Link -->
       
</body>

    
</html>