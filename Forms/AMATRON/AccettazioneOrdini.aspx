﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="AccettazioneOrdini.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <section class="h-100 h-custom">
        <div class="container text-align-center py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-12 col-xl-12">
                    <%--card--%>
                    <h2 class="text-center mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Accettazione Ordini</h2>
                    <div class="card rounded-3">
                        <div class="card-body p-4 p-md-5">
                            <div class="row align-items-center">
                                <div class="col-lg-12">
                                    <div style="overflow-y: scroll; height: 400px;">
                                        <asp:GridView ID="grigliaOrdini" CssClass="table table-bordered table-condensed" runat="server"  OnSelectedIndexChanged="grigliaOrdini_SelectedIndexChanged" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="chiave">
                                            <Columns>
                                                <asp:CommandField ShowSelectButton="True" />
                                                <asp:BoundField DataField="chiave" HeaderText="chiave" SortExpression="chiave" Visible="False" InsertVisible="False" ReadOnly="True" />
                                                <asp:BoundField DataField="chiaveCORRIERE" HeaderText="chiaveCORRIERE" SortExpression="chiaveCORRIERE" />
                                                <asp:BoundField DataField="chiavePRODOTTO" HeaderText="chiavePRODOTTO" SortExpression="chiavePRODOTTO" />
                                                <asp:BoundField DataField="chiaveCLIENTE" HeaderText="chiaveCLIENTE" SortExpression="chiaveCLIENTE" />
                                                <asp:BoundField DataField="DATATRANSAZIONE" HeaderText="DATATRANSAZIONE" SortExpression="DATATRANSAZIONE" />
                                                <asp:BoundField DataField="QTA" HeaderText="QTA" SortExpression="QTA" />
                                                <asp:BoundField DataField="NUMEROORDINE" HeaderText="NUMEROORDINE" SortExpression="NUMEROORDINE" />
                                                <asp:BoundField DataField="GESTITO" HeaderText="GESTITO" SortExpression="GESTITO" />
                                            </Columns>
                                            <HeaderStyle BackColor="#B469FF" />
                                        </asp:GridView>
                                    </div>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spORDINI_SelectAll" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="row align-items-center">
                                <div class="col-lg-6">
                                    <asp:Button ID="btnAccetta" class="btn masterButton" runat="server" Text="Accetta" />
                                </div>
                                <div class="col-lg-6">
                                    <asp:Button ID="btnRifiuta" class="btn masterButton" runat="server" Text="Rifiuta" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>

