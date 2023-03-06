<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="ProfiloPersonaleVenditore.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="CardMargine">

        <h2>
            <asp:Label ID="lblStoricoVendite" runat="server" Text="Profilo Venditore"></asp:Label>
        </h2>

    </div>
    <div class="container">
        <div class="card">
            <%-- Inizio body --%>
            <div class="card-body form-control text-start" style="padding: 15px 15px 15px;">

                <div class="row">
                    <div class="col-lg-9">
                        <asp:Label ID="lblRagioneSociale" runat="server" Text="Ragione Sociale:"></asp:Label>

                        <asp:TextBox ID="txtRagioneSociale" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-lg-3">
                        <asp:Label ID="lblPIva" runat="server" Text="Partita Iva:"></asp:Label>

                        <asp:TextBox ID="txtPIva" Class="form-control-sm" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8">

                    </div>
                    <div class="col-lg-4">

                    </div>
                </div>
                <div class="row">
                     <div class="col-lg-10">

                    </div>
                    <div class="col-lg-2">

                    </div>
                </div>
                <div class="row">


                </div>
                <div class="row">
                     <div class="col-lg-6">

                    </div>
                    <div class="col-lg-6">

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

