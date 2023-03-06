<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="Statistiche.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="/assets/css/test.css" rel="stylesheet" />
    <%--Visualizzazione statistiche corrieri--%>
    <div class="container mt-5">
        <div class="row">
            <div class="col-lg-4"></div>
            <div class="col-lg-4">
                <center>
                    <h2>Resoconto consegne</h2>
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
                                <asp:DropDownList CssClass="form-select" Style="width: auto" ID="ddlAnni" runat="server">
                                    <asp:ListItem Text="2012" Value="2012"></asp:ListItem>
                                    <asp:ListItem Text="2013" Value="2013"></asp:ListItem>
                                    <asp:ListItem Text="2014" Value="2014"></asp:ListItem>
                                    <asp:ListItem Text="2015" Value="2015"></asp:ListItem>
                                    <asp:ListItem Text="2016" Value="2016"></asp:ListItem>
                                    <asp:ListItem Text="2017" Value="2017"></asp:ListItem>
                                    <asp:ListItem Text="2018" Value="2018"></asp:ListItem>
                                    <asp:ListItem Text="2019" Value="2019"></asp:ListItem>
                                    <asp:ListItem Text="2020" Value="2020"></asp:ListItem>
                                    <asp:ListItem Text="2021" Value="2021"></asp:ListItem>
                                    <asp:ListItem Text="2022" Value="2022"></asp:ListItem>
                                    <asp:ListItem Text="2023" Value="2023"></asp:ListItem>
                                </asp:DropDownList>
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
                                <asp:DropDownList CssClass="form-select" Style="width: auto" ID="ddlMesi" runat="server">
                                    <asp:ListItem Text="Gennaio" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Febbraio" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="Marzo" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="Aprile" Value="4"></asp:ListItem>
                                    <asp:ListItem Text="Maggio" Value="5"></asp:ListItem>
                                    <asp:ListItem Text="Giugno" Value="6"></asp:ListItem>
                                    <asp:ListItem Text="Luglio" Value="7"></asp:ListItem>
                                    <asp:ListItem Text="Agosto" Value="8"></asp:ListItem>
                                    <asp:ListItem Text="Settembre" Value="9"></asp:ListItem>
                                    <asp:ListItem Text="Ottobre" Value="10"></asp:ListItem>
                                    <asp:ListItem Text="Novembre" Value="11"></asp:ListItem>
                                    <asp:ListItem Text="Dicembre" Value="12"></asp:ListItem>
                                </asp:DropDownList>
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
                        <h5 class="card-title">Griglia</h5>
                        <p class="card-text">
                            <center>
                                <asp:GridView ID="grigliaStatisticheCorrieri" runat="server" DataSourceID="sdsStatisticheCorrieri" AutoGenerateColumns="false">
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

