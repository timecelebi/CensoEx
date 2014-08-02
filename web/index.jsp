<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@include file="WEB-INF/jspf/browser.jspf" %>
<%
    session.removeAttribute("ID");
    session.removeAttribute("autorizacion");
    session.removeAttribute("usuario");
    session.invalidate();
%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!doctype html>
<!--[if gt IE 8]><!--> <html > <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Censo Exodo - WebApp</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic" rel="stylesheet" type="text/css">
        <!-- needs images, font... therefore can not be part of ui.css -->
        <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="bower_components/weather-icons/css/weather-icons.min.css">
        <!-- end needs images -->

            <link rel="stylesheet" href="styles/main.css">

    </head>
    <body data-ng-app="app" id="app" data-custom-background="" data-off-canvas-nav="">
        <!--[if lt IE 9]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->


<div class="page-signin">

    <div class="signin-header">
        <div class="container text-center">
            <section class="logo">
                <a href="#/"><img src="images/logo.png" alt="" width="100" height="50" ></a>
            </section>
        </div>
    </div>

    <div class="signin-body">
        <div class="container">
            <div class="form-container">

                

                <form class="form-horizontal" action="LOGIN" method="post">
                    <fieldset>
                        <div class="form-group">
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-user"></span>
                                </span>
                                <input type="text"
                                       class="form-control"
                                       placeholder="Usuario"
                                       name="usuario.usuario" 
                                         id="usuario">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-lock"></span>
                                </span>
                                <input type="password"
                                       class="form-control"
                                       placeholder="password"
                                       name="usuario.password" 
                                        id="password">
                            </div>
                        </div>
                        <div class="form-group">
						<s:actionerror />
                        </div>
                        <div class="form-group">
                            <center> <button type="submit" class="btn btn-primary btn-lg btn-block" id="submit">Conectarse</button></center>
                            
                        </div>
                    </fieldset>
                </form>

                
                
            </div>
        </div>
    </div>

</div>
                        
                        
   <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
        <script src="scripts/vendor.js"></script>

        <script src="scripts/ui.js"></script>

        <script src="scripts/app.js"></script>
    </body>
</html>                      
                        