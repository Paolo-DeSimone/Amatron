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
</head>
<body>
    <form id="form1" runat="server">
        <h3 class="resoCl">EFFETTUA IL RESO</h3>
       

        <!-- TITOLO PRODOTTO RESO -->
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="col-lg-6">
                        <asp:Label ID="lblChiaveProdotto" runat="server" Text="" class="control-label col-sm-4">PRODOTTO:</asp:Label>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="p-3">
                        <asp:Label ID="lblTitolo" runat="server" Text="">HP Elitebook Folio, Notebook Pc portatile Pronto All'uso</asp:Label>
                    </div>
                </div>
            </div>
        </div>

        <!-- COMPILAZIONE CAMPI -->
        <div class="container">
            <div class="row g-2">
                <!-- DESCRIZIONE RESO -->
                <div class="col-lg-6">
                    <div class="p-4">
                        <asp:Label ID="lblDescrizione" runat="server" Text="Motivo del reso:"></asp:Label>
                        <asp:TextBox ID="txtDescrizione"  class="form-control form-control-sm" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>

                <!-- QTA RESA -->
                <div class="col-lg-6">
                    <div class="p-3">
                        <asp:Label ID="lblQta" runat="server" Text="Quantità Reso"></asp:Label>
                        <asp:TextBox ID="txtQta" class="form-control form-control-sm" runat="server" TextMode="Number"></asp:TextBox>
                    </div>
                </div>


                <!-- RIMBORSO -->
                <div class="col-6">
                    <div class="p-3">
                        <asp:Label ID="lblRimborso" runat="server" Text="Rimborso:"></asp:Label>
                        <asp:Label ID="lblImporto" runat="server" Text="">550€</asp:Label>
                    </div>
                </div>
            </div>

            <!-- BOTTONE EFFETTUA RESO -->
            <!-- non mandare l'ACCETTAZIONE perchè deve approvare AMATRON -->

            <div class="d-grid gap-2 col-6 mx-auto">
                <asp:Button ID="btnReso" class="btn masterButton" runat="server" Text="EFFETTUA RESO" />
            </div>
        </div>
         
    </form>
</body>
</html>
