<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="Statistiche.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="/assets/css/test.css" rel="stylesheet" />
    <%--Visualizzazione statistiche corrieri--%>
    <div class="container mt-5">
        <div class="row">
            <div class="col-lg-3"></div>
            <center>
                <div id="benvenutoCorriere" class="col-lg-6" runat="server"></div>
            </center>
            <div class="col-lg-3"></div>
        </div>
        <div class="row">
            <div class="col-lg-4"></div>
            <div class="col-lg-4">
                <center>
                    <h4>Resoconto consegne</h4>
                </center>
            </div>
            <div class="col-lg-4"></div>
        </div>
        <div class="row">
            <div class="col-lg-3"></div>
            <div class="col-lg-3 text-center">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Seleziona anno</h4>
                        <center>
                            <p class="card-text">
                                <asp:DropDownList CssClass="form-select" Style="width: auto" ID="ddlAnni" runat="server" DataTextField="ANNO" DataValueField="ANNO" DataSourceID="sdsAnno" AutoPostBack="True"></asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="sdsAnno" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spSPEDIZIONI_DATAORA_Year" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            </p>
                        </center>
                    </div>
                </div>
                <div class="col-lg-3"></div>
            </div>
            <div class="col-lg-3 text-center">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Seleziona mese</h4>
                        <center>
                            <p class="card-text">
                                <asp:DropDownList CssClass="form-select" Style="width: auto" ID="ddlMesi" runat="server" DataTextField="MESE" DataValueField="NUMEROMESE" DataSourceID="sdsMese" AutoPostBack="True"></asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="sdsMese" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spSPEDIZIONI_DATAORA_Month" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ddlAnni" PropertyName="SelectedValue" Name="anno" Type="Int32"></asp:ControlParameter>
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </p>
                        </center>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-lg-3"></div>
            <div class="col-lg-6 text-center">
                <div class="card">
                    <div class="card-body">
                        <asp:Button ID="btnResocontoCorriere" runat="server" CssClass="btn masterButton" Text="Resoconto:" OnClick="btnResocontoCorriere_Click" />
                        <p></p>
                        <asp:Label ID="lblResocontoCorriere" runat="server" Text=""></asp:Label>
                        <p class="card-text">
                            <center>
                                <asp:GridView ID="grigliaStatisticheCorrieri" runat="server" CssClass="table table-bordered table-condensed" DataSourceID="sdsStatisticheCorrieri" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="chiaveCORRIERE" HeaderText="chiaveCORRIERE" ReadOnly="True" SortExpression="chiaveCORRIERE" Visible="False" />
                                        <asp:BoundField DataField="chiaveORDINE" HeaderText="chiaveORDINE" ReadOnly="True" SortExpression="chiaveORDINE" Visible="False" />
                                        <asp:BoundField DataField="chiaveSPEDIZIONE" HeaderText="chiaveSPEDIZIONE" ReadOnly="True" SortExpression="chiaveSPEDIZIONE" Visible="False" />
                                        <asp:BoundField DataField="DATA_ORA_SPEDIZIONE" HeaderText="DATA SPEDIZIONE" SortExpression="DATA_ORA_SPEDIZIONE" />
                                        <asp:BoundField DataField="NUMERO_ORDINE" HeaderText="NUMERO ORDINE" SortExpression="NUMERO_ORDINE" />
                                    </Columns>
                                    <HeaderStyle BackColor="#B469FF" />
                                </asp:GridView>
                            </center>
                            <asp:SqlDataSource runat="server" ID="sdsStatisticheCorrieri" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spv_JoinCORRIERI_SPEDIZIONI" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:SessionParameter SessionField="chiaveUSR" Name="chiave" Type="Int32"></asp:SessionParameter>
                                    <asp:ControlParameter ControlID="ddlAnni" PropertyName="SelectedValue" Name="anno" Type="Int32"></asp:ControlParameter>
                                    <asp:ControlParameter ControlID="ddlMesi" PropertyName="SelectedValue" Name="mese" Type="Int32"></asp:ControlParameter>
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3"></div>
        </div>
    </div>
</asp:Content>

