<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PopupStatoCorrieri.aspx.cs" Inherits="PopupStatoCorriere" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<link href="/css/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="/assets/css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="icon" type="image/png" sizes="64x64" href="/assets/images/amatron-icon.png" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="col-sm-2 mt-2">
                <asp:Label ID="Label1" runat="server" class="form-label" Text="Stato Ordine:"></asp:Label>
                <asp:DropDownList ID="ddlStato" runat="server"></asp:DropDownList>
            </div>

            <div class="text-center mt-3">
                <asp:Button ID="btnConferma" type="button" runat="server" Text="Conferma" class="btn btn-primary" />
            </div>

        </div>
    </form>
</body>
</html>
