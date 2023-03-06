<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PopupDati.aspx.cs" Inherits="PopupDatiCorrieri" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
</head>
<body>
    <form id="form1" runat="server">
        <%--Pagina di popup per la modifica dei dati personali dei corrieri--%>
        <div class="container-fluid col-lg-5">
            <div class="card">
                <div class="card-header text-center">
                    <h5 class="card-title">I tuoi dati</h5>
                </div>
                <div class="card-body">
                    <div class="row text-center">
                        <div class="col">
                            <asp:Label ID="Label1" class="form-label" runat="server" Text="Ragione Sociale:"></asp:Label>
                            <asp:TextBox ID="txtRAGIONESOCIALE" class="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                        </div>
                        <div class="col-4">
                            <asp:Label ID="Label2" class="form-label" runat="server" Text="Partita IVA:"></asp:Label>
                            <asp:TextBox ID="txtPIVA" class="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row text-center">
                        <div class="col">
                            <asp:Label ID="Label3" class="form-label" runat="server" Text="Indirizzo:"></asp:Label>
                            <asp:TextBox ID="txtINDIRIZZO" class="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row text-center">
                        <div class="col-7">
                            <asp:Label ID="Label4" class="form-label" runat="server" Text="Città:"></asp:Label>
                            <asp:TextBox ID="txtCITTA" class="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-3">
                            <asp:Label ID="Label5" class="form-label" runat="server" Text="CAP:"></asp:Label>
                            <asp:TextBox ID="txtCAP" class="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-2">
                            <asp:Label ID="Label6" class="form-label" runat="server" Text="Provincia:"></asp:Label>
                            <asp:TextBox ID="txtPROVINCIA" class="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row text-center">
                        <div class="col">
                            <asp:Label ID="Label7" class="form-label" runat="server" Text="Numero di telefono:"></asp:Label>
                            <asp:TextBox ID="txtNUMERO" class="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row text-center">
                        <div class="col">
                            <asp:Label ID="Label8" class="form-label" runat="server" Text="Indirizzo E-mail:"></asp:Label>
                            <asp:TextBox ID="txtEMAIL" class="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                        </div>
                        <div class="text-center mt-2">
                            <asp:Button ID="btnAggiorna" class="btn btn-primary" runat="server" Text="Aggiorna" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
