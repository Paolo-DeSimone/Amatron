
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Default2" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="assets/css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="icon" type="image/png" sizes="64x64" href="/assets/images/amatron-icon.png" />
    <script>
        function openRightMenu() {
            document.getElementById("rightMenu").style.display = "block";
        }

        function closeRightMenu() {
            document.getElementById("rightMenu").style.display = "none";
        }

        function closePopupLogin() {
            document.getElementById("rightMenu").style.display = "none";
        }

        $(document).ready(function () {
            //$("#show_login").click(function () {
            //    showpopup();
            //});
            $("#close_login").click(function () {
                hidepopup();
            });
        });

        function showpopup() {
            $("#loginform").fadeIn();
            $("#loginform").css({ "visibility": "visible", "display": "block" });
        }

        function hidepopup() {
            $("#loginform").fadeOut();
            $("#loginform").css({ "visibility": "hidden", "display": "none" });
        }

        function Accedi() {
            $.ajax({
                type: "POST",
                url: "Home.aspx/Accedi",
                data: "{'USR': '" + $('#txtUSR').val() + "', 'PWD' : '" + $('#txtPWD').val() + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    notifySuccess(msg.d);
                },
                error: function (req, status, err) {
                    alert(req, status, err);
                }
            });
        }

        //function cbChange(obj) {
        //    var cbs = document.getElementsByClassName("form-check-input");
        //    for (var i = 0; i < cbs.length; i++) {
        //        cbs[i].checked = false;
        //    }
        //    obj.checked = true;
        //}
    </script>
</head>
<body>
    <form id="form1" runat="server">

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark navbar-default">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">
                    <img class="logo" src="/assets/images/amatron.png" />
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">

                    <%--  BARRA DI RICERCA--%>
                    <div class="input-group searchbar">
                        <div class="dropdown">
                            <button class="btn btn-secondary logoColor" style="background-color:#212529" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Dropdown button
                            </button>
                            <div class="dropdown-menu" style="background-color:#212529" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item bianco" href="#">Action</a>
                                <a class="dropdown-item bianco" href="#">Another action</a>
                                <a class="dropdown-item bianco" href="#">Something else here</a>
                            </div>
                        </div>
                        <input class="form-control" type="search" placeholder="Search" aria-label="Search" />
                        <button class="btn logoColor input-group-append" type="submit">Search</button>
                    </div>

                    <%--  SIGN UP E SIGN IN--%>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="nav-item"><a class="nav-link" href="#">Registrati</a></li>
                        <li>&nbsp;</li>
                        <li class="nav-item"><a class="nav-link" href="#" id="show_popup" onclick="showpopup()">Accedi</a></li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                    </ul>

                    <%--  ICONA CARRELLO--%>
                    <div>
                        <div onclick="openRightMenu()" class="carrello">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="bi bi-cart4 carrello" viewBox="0 0 16 16">
                                <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z" />
                            </svg>
                        </div>
                    </div>
                </div>
            </div>
        </nav>

        <div class="w3-sidebar w3-bar-block w3-card w3-animate-right " style="display: none; right: 0; width: 500px;" id="rightMenu">
            <button onclick="closeRightMenu()" class="w3-bar-item w3-button w3-large">&times;</button>
            <a href="#" class="w3-bar-item w3-button">Link 1</a>
            <a href="#" class="w3-bar-item w3-button">Link 2</a>
            <a href="#" class="w3-bar-item w3-button">Link 3</a>
        </div>

        <%-- Questo è il contenuto del PopUp che si apre cliccando su SignUp --%>
        <div class="popupLogin" id="loginform">
            <div>
                <img style="height: 42px; margin-left: 28%" src="assets/images/amatron.png" />
                <button onclick="closePopupLogin()" class="w3-bar-item w3-button w3-large" style="float: right;">
                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-x-octagon bianco" viewBox="0 0 16 16">
                        <path d="M4.54.146A.5.5 0 0 1 4.893 0h6.214a.5.5 0 0 1 .353.146l4.394 4.394a.5.5 0 0 1 .146.353v6.214a.5.5 0 0 1-.146.353l-4.394 4.394a.5.5 0 0 1-.353.146H4.893a.5.5 0 0 1-.353-.146L.146 11.46A.5.5 0 0 1 0 11.107V4.893a.5.5 0 0 1 .146-.353L4.54.146zM5.1 1 1 5.1v5.8L5.1 15h5.8l4.1-4.1V5.1L10.9 1H5.1z" />
                        <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
                    </svg>
                </button>
            </div>
            <br />
            <asp:Label class="bianco cont testo" ID="Label2" runat="server" Text="Email"></asp:Label>
            <input type="text" class="txtUSR" id="txtUSR" placeholder="Email Id" name="uid" />
            <br />
            <asp:Label class="bianco cont testo" ID="Label1" runat="server" Text="Password"></asp:Label>
            <input type="password" class="txtPWD" id="txtPWD" name="upass" placeholder="Password" />
        <%--    <div class="form-check form-switch check">
                <label class="bianco">
                    <input class="form-check-input" runat="server" type="checkbox" id="cliente" onchange="cbChange(this)" />
                    <asp:Label class="testo" ID="Label3" runat="server" Text="Sono un Cliente"></asp:Label>
                </label>
                <br />
                <label class="bianco">
                    <input class="form-check-input" runat="server" type="checkbox" id="venditore" onchange="cbChange(this)" />
                    <asp:Label class="testo" ID="Label4" runat="server" Text=" Sono un Venditore"></asp:Label>
                </label>
                <br />
                <label class="bianco">
                    <input class="form-check-input" runat="server" type="checkbox" id="corriere" onchange="cbChange(this)" />
                    <asp:Label class="testo" ID="Label5" runat="server" Text="Sono un Corriere"></asp:Label>
                </label>
            </div>--%>
            <input type="submit" class="doLogin" id="dologin" onclick="Accedi()" value="Login" />
        </div>
    </form>
</body>
</html>