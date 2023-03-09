<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prova.aspx.cs" Inherits="prova" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <%-- evento onclick con ajax --%>
    <form id="form1" runat="server">
        <div>
            <div class="row">
                <div class='col-md-4'> </div>
                <div class='col-md-4'>
                    <img src='/Img.ashx?c=1'class="w-100"/>
               </div>
                        <div class="col-md-4">
                            <div class="card-body">
                                <h5 class="card-title"><asp:Label ID="lblTitolo" runat="server" Text="Label">Tende per la casa</asp:Label></h5>
                                <p class="card-text">Display 14"Tende per la casa di vari colori e lunghezza molto</p>
                                <asp:Button ID="btnRecensione" runat="server" Text="Lascia una recensione" class="btn masterButton" />
                                <asp:Button ID="btnReso" runat="server" Text="Effettua reso" class="btn masterButton" />
                                <p class="card-text">Prezzo:<asp:Label ID="lblPrezzo" runat="server" Text="Label"/>40,00</p>
                                <asp:Label ID="lblStato" runat="server" Text="">C</asp:Label>
                            </div>
                        </div>
                    </div>
            <button></button>
            <label></label>
            <style>
                .card {
                    max-height: 200px;
                    max-width: 200px;
                }
            </style>max-height:200px;max-width:200px
            <div class="row">
                <div class='col-md-4'>
                    <img src='/Img.ashx?c=3'class="w-100" '/>
                        </div><div class="col-md-8">
                            <div class="card-body">
                                <h5 class="card-title">
                                    <asp:Label ID="lblTitolo" runat="server" Text="Label">Coltelli colorati</asp:Label>
                                </h5>
                                <p class="card-text">Display 14"Coltelli colorati di varie lunghezze e dimensioni </p>
                                <asp:Button ID="btnRecensione"runat="server"Text="Lascia una recensione" class="btn masterButton"</asp:Button>
                                <asp:Button ID="btnReso"runat="server"Text="Effettua reso class="btn masterButton" </asp:Button>
                                <p class="card-text">Prezzo:<asp:Label ID='lblPrezzo' runat='server' Text='Label'>5,00</p>
                                    <asp:Label ID="lblStato" runat="server" Text="">B</asp:Label>
                            </div>
                       </div>
                </div>


            <div class="row"><div class='col-md-4'><img src='/Img.ashx?c=5'class="w-100" '/>
                </div><div class="col-md-8"> <div class="card-body">
                    <h5 class="card-title">
                        <asp:Label ID="lblTitolo" runat="server" Text="Label">Forbici per bambini</asp:Label>
                    </h5>
                    <p class="card-text">Display 14"Forbici per bambini a punta arrotondata adatta a t</p>
                    <asp:Button ID="btnRecensione"runat="server"Text="Lascia una recensione" class="btn masterButton"</asp:Button>
                    <asp:Button ID="btnReso"runat="server"Text="Effettua reso class="btn masterButton" </asp:Button>
                    <p class="card-text">Prezzo:<asp:Label ID='lblPrezzo' runat='server' Text='Label'>7,00</p>
                    <asp:Label ID="lblStato" runat="server" Text="">C</asp:Label>
                         </div>
                     </div>
                </div>


                <div class="row">
                    <div class='col-md-4'><img src='/Img.ashx?c=5'class="w-100" '/></div>
                        <div class="col-md-8"> <div class="card-body">
                            <h5 class="card-title"><asp:Label ID="lblTitolo" runat="server" Text="Label">Forbici per bambini</asp:Label></h5>
                            <p class="card-text">Display 14"Forbici per bambini a punta arrotondata adatta a t</p>
                            <asp:Button ID="btnRecensione"runat="server"Text="Lascia una recensione" class="btn masterButton"</asp:Button>
                            <asp:Button ID="btnReso"runat="server"Text="Effettua reso class="btn masterButton" </asp:Button>
                            <p class="card-text">Prezzo:<asp:Label ID='lblPrezzo' runat='server' Text='Label'>7,00</p>
                                <asp:Label ID="Label1" runat="server" Text="">C</asp:Label>
                                </div>
                          </div>
                    </div>


            <div class="row"><div class='col-md-4'><img src='/Img.ashx?c=5'class="w-100" '/>
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title"><asp:Label ID="lblTitolo" runat="server" Text="Label">Forbici per bambini</asp:Label></h5>
                        <p class="card-text">Display 14"Forbici per bambini a punta arrotondata adatta a t</p>
                        <asp:Button ID="btnRecensione"runat="server"Text="Lascia una recensione" class="btn masterButton"</asp:Button>
                        <asp:Button ID="btnReso"runat="server"Text="Effettua reso class="btn masterButton" </asp:Button>
                        <p class="card-text">Prezzo:<asp:Label ID='lblPrezzo' runat='server' Text='Label'>7,00</p>
                        <asp:Label ID="lblStato" runat="server" Text="">B</asp:Label>
                    </div>
                </div>
            </div>


            <div class="row"><div class='col-md-4'><img src='/Img.ashx?c=10'class="w-100" '/>
                </div><div class="col-md-8"> <div class="card-body"><h5 class="card-title"><asp:Label ID="lblTitolo" runat="server" Text="Label">Set coltelli MasterChef</asp:Label>
                                                                    </h5>
                    <p class="card-text">Display 14"Set coltelli MasterChef affilatissimo e molto prof</p>
                    <asp:Button ID="btnRecensione"runat="server"Text="Lascia una recensione" class="btn masterButton"</asp:Button>
                    <asp:Button ID="btnReso"runat="server"Text="Effettua reso class="btn masterButton" </asp:Button>
                    <p class="card-text">Prezzo:<asp:Label ID='lblPrezzo' runat='server' Text='Label'>25,00</p>
                        <asp:Label ID="Label2" runat="server" Text="">B</asp:Label>
                      </div>
                  </div>
              </div>
        </div>
    </form>
</body>
</html>
