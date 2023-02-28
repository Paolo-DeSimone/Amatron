<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="Stato.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="/assets/css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="icon" type="image/png" sizes="64x64" href="/assets/images/amatron-icon.png" />
    <link href="/assets/css/styleCorrieri.css" rel="stylesheet" />
    <div class="container-lg mt-5">
        <div class="row text-center">
            <div class="col-12 mx-auto">
                <div class="card bg-light mb-3 border rounded" style="background-color: #e4e4e4">
                    <div class="card-header">
                        <h5 class="card-title">Visualizzazione Ordini</h5>
                    </div>
                    <div class="card-body">
                        <div class="row" style="margin-top: 10px;">
                            <div class="col-md-9" style="overflow: auto;">
                                QUA SI DEVE INSERIRE LA GRIGLIA PER LA VISUALIZZAZIONE DEGLI ORDINI
                            </div>
                            <div class="col-md-3 text-center">
                                
                                    <%-- Introduzione di uno script manager --%>
                                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                                    </asp:ScriptManager>

                                    <%-- pulsante che apre il popup --%>
                                    <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Stato Ordine" />

                                    <%-- chiamata del popup --%>
                                    <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl1" TargetControlID="Button1"
                                        CancelControlID="Button2" BackgroundCssClass="Background">
                                    </cc1:ModalPopupExtender>


                                    <asp:Panel
                                        ID="Panl1"
                                        runat="server"
                                        CssClass="PopupStatoCorrieri"
                                        align="center"
                                        Style="display: none">

                                        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
                                        <iframe style="width:300px; height: 90px;" id="irm1" src="PopupStatoCorrieri.aspx" runat="server"></iframe>
                                        <br />
                                        <asp:Button ID="Button2" runat="server" class="btn btn-danger" Text="Close" />
                                        <%--chiude il popup--%>
                                    </asp:Panel>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

