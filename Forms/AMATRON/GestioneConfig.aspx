<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="GestioneConfig.aspx.cs" Inherits="GestioneConfig" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="h-100 h-custom">
        <div class="container text-align-center py-5 h-100">
            <%--APPUNTO: text-align-center al posto di text-center--%>
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-8 col-xl-8">
                    <%--card--%>
                    <div class="card rounded-3">
                        <div class="card-body p-4 p-md-5">
                            <h3 class="text-center mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Gestione AMATRONPrime / Percentuali di servizio AMATRON</h3>
                            <%--Tabella provvisoria per sistemare l'html, da sostituire con GridView--%>
                            <div class="row align-items-center">
                                <div class="col-lg-8">
                                    <asp:Literal ID="ltlCostoPrime" runat="server">Costo AMATRON PRIME:</asp:Literal>
                                </div>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtCostoPrime" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <div class="row align-items-center">
                                <div class="col-lg-8">
                                    <asp:Literal ID="ltlPerc1_10" runat="server">Percentuale AMATRON su ordini da 1 a 10:</asp:Literal>
                                </div>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtPerc1_10" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <div class="row align-items-center">
                                <div class="col-lg-8">
                                    <asp:Literal ID="ltlPerc11_100" runat="server">Percentuale AMATRON su ordini da 11 a 100:</asp:Literal>
                                </div>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtPerc11_100" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <div class="row align-items-center">
                                <div class="col-lg-8">
                                    <asp:Literal ID="ltlPerc101_1000" runat="server">Percentuale AMATRON su ordini da 101 a 1000:</asp:Literal>
                                </div>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtPerc101_1000" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <div class="row align-items-center">
                                <div class="col-lg-8">
                                    <asp:Literal ID="ltlPerc1001" runat="server">Percentuale AMATRON su ordini da 1001 in su:</asp:Literal>
                                </div>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtPerc1001" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <div class="row align-items-center">
                                <div class="col-lg-8">
                                    <asp:Button ID="btnAccetta" runat="server" class="btn btn-secondary" Text="Accetta" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

