<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResoClientiPopup.aspx.cs" Inherits="ResoClientiPopup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Reso Prodotto</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link href="/assets/css/style.css" rel="stylesheet" />
    <link href="/assets/css/cssCLIENTI.css" rel="stylesheet" />
    <link href="/assets/css/masterStyle.css" rel="stylesheet" />
    <script src="../../../assets/js/notify.js"></script>
    <link href="../../../assets/css/notify.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <h3 class="resoCl">EFFETTUA IL RESO</h3>
        <!-- TITOLO PRODOTTO RESO -->
        <div class="container">
            <div class="row mt-2">

                <div class="col">
                    <asp:Label ID="lblChiaveProdotto" runat="server" Text="Prodotto: " class="control-label col-sm-4"></asp:Label>
                    <asp:Label ID="lblTitolo" Text="" runat="server" Font-Bold="True"></asp:Label>

                </div>
            </div>
            <!-- COMPILAZIONE CAMPI -->
            <div class="row mt-2">
                <!-- DESCRIZIONE RESO -->
                <div class="col-md-6">
                    <asp:Label ID="lblDescrizione" runat="server" Text="Motivo del reso:"></asp:Label>
                    <asp:TextBox ID="txtDescrizione" class="form-control form-control-sm" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>
            <div class="row mt-2">
                <!-- QTA RESA -->
                <div class="col-md-6">

                    <asp:Label ID="lbl" runat="server" Text="Quantità Reso: "></asp:Label>
                    <asp:Label ID="lblQta" runat="server" Text="" Font-Bold="True"></asp:Label>

                </div>
            </div>
            <div>
                <!-- RIMBORSO -->
                <div class="col-md-6">

                    <asp:Label ID="lblRimborso" runat="server" Text="Rimborso: &euro;"></asp:Label>
                    <b>
                        <asp:Label ID="lblImporto" runat="server"></asp:Label></b>

                </div>
            </div>
            <!-- BOTTONE EFFETTUA RESO -->
            <!-- non mandare l'ACCETTAZIONE perchè deve approvare AMATRON -->
            <div class="row mt-2">
                <div align="right">

                    <asp:Button ID="btnReso" class="btn masterButton sm" runat="server" Text="EFFETTUA RESO" OnClick="btnReso_Click" />

                </div>
            </div>
        </div>
    </form>
</body>
</html>
