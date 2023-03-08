<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="ReportAMATRON.aspx.cs" Inherits="ReportAMATRON" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <input id="Text1" visible="false" runat="server" type="number" />
    <input id="Text2" visible="false" runat="server" type="text" />
    <input id="Text3" visible="false" runat="server" type="text" />
    <section class="h-100 h-custom">
        <div class="container text-align-center py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-12 col-xl-12">
                    <h2 class="text-center mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Report AMATRON</h2>
                    <%--card--%>
                    <div class="card rounded-3">
                        <div class="card-body p-4 p-md-5">
                            <div class="row">
                                <div class="col-lg-6">
                                    <%--Card Report Mensile--%>
                                    <div class="card rounded-3">
                                        <br />
                                        <h4 class="card-title text-center mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Incassi Mensili</h4>
                                        <div class="card-body p-4 p-md-5">
                                            <div class="row text-center">
                                                <div class="col-lg-12">
                                                    <asp:Literal ID="ltrFiltroAnno" runat="server" Text="Anno:"></asp:Literal>
                                                    <asp:DropDownList ID="ddlFiltroAnnoMensile" runat="server" DataSourceID="sdsGetAnno" DataTextField="ANNO" DataValueField="ANNO" AutoPostBack="True"></asp:DropDownList>
                                                    <asp:SqlDataSource ID="sdsGetAnno" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spAMATRON_GetAnno" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                                </div>
                                            </div>
                                            <%--grafico--%>
                                            <div class="row">
                                                <div>
                                                    <center>
                                                        <asp:Chart ID="chartIncassiMensili" runat="server" Palette="None" PaletteCustomColors="180, 105, 255" Width="450px" DataSourceID="odsIncassiMensile">
                                                            <Series>
                                                                <asp:Series Name="Series1"></asp:Series>
                                                            </Series>
                                                            <ChartAreas>
                                                                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                                            </ChartAreas>
                                                        </asp:Chart>
                                                        <asp:ObjectDataSource ID="odsIncassiMensile" runat="server" SelectMethod="AMATRON_IncassiMensiliByAnno" TypeName="rifAmatronOL.WsAmatronSoapClient">
                                                            <SelectParameters>
                                                                <asp:ControlParameter ControlID="ddlFiltroAnnoMensile" DefaultValue="2022" Name="anno" PropertyName="SelectedValue" Type="Int32" />
                                                            </SelectParameters>
                                                        </asp:ObjectDataSource>
                                                    </center>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <%--Card Report Annuale--%>
                                    <div class="card rounded-3">
                                        <br />
                                        <h4 class="card-title text-center mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Incassi Annuali</h4>
                                        <div class="card-body p-4 p-md-5">
                                            <%--grafico--%>
                                            <div class="row text-center">
                                                <div>
                                                    <center>
                                                        <asp:Chart ID="chartIncassiAnnuali" runat="server" DataSourceID="sdsIncassiAnnuali" Palette="None" PaletteCustomColors="180, 105, 255" Width="450px">
                                                            <Series>
                                                                <asp:Series Name="Series1" ChartType="Line" XValueMember="ANNO" YValueMembers="GUADAGNO_TOTALE"></asp:Series>
                                                            </Series>
                                                            <ChartAreas>
                                                                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                                            </ChartAreas>
                                                        </asp:Chart>
                                                        <asp:SqlDataSource ID="sdsIncassiAnnuali" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spAMATRON_IncassiAnnuali" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                                    </center>
                                                    <asp:Chart ID="chartMensile" runat="server">
                                                        <Series>
                                                            <asp:Series Name="Series1"></asp:Series>
                                                        </Series>
                                                        <ChartAreas>
                                                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                                        </ChartAreas>
                                                    </asp:Chart>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row d-flex justify-content-center align-items-center h-100">
                            <div class="col-lg-10">
                                <%--Card Report per Categoria--%>
                                <div class="card rounded-3">
                                    <br />
                                    <h4 class="card-title text-center mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Incassi per Categoria</h4>
                                    <div class="card-body p-4 p-md-5">
                                        <%--grafico--%>
                                        <div>
                                            <center>
                                                <asp:Chart ID="chartIncassiCategoria" runat="server" DataSourceID="sdsIncassiCategoria" Palette="None" PaletteCustomColors="180, 105, 255" Width="1000px">
                                                    <Series>
                                                        <asp:Series Name="Series1" XValueMember="CATEGORIA" YValueMembers="GUADAGNO_TOTALE"></asp:Series>
                                                    </Series>
                                                    <ChartAreas>
                                                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                                    </ChartAreas>
                                                </asp:Chart>
                                                <asp:SqlDataSource ID="sdsIncassiCategoria" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spAMATRON_IncassiPerCategoria" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                            </center>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%-- literal per dati da trasferire in js --%>
    </section>
</asp:Content>

