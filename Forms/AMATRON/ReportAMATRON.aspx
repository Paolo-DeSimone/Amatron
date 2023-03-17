<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="ReportAMATRON.aspx.cs" Inherits="ReportAMATRON" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--Container--%>
    <section class="h-100 h-custom">
        <div class="container text-align-center py-5 h-100">
            <%--Card grande per contenere le altre card--%>
            <h2 class="text-center py-2">Report AMATRON</h2>
            <div class="card rounded-3">
                <div class="card-body p-4 p-md-5">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-lg-12 col-xl-12">
                            <%--Card Report Mensile--%>
                            <div class="row">
                                <div class="card rounded-3">
                                    <br />
                                    <h4 class="card-title text-center mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Incassi Mensili</h4>
                                    <div class="card-body p-4 p-md-5">
                                        <div class="row">
                                            <%-- DDL Filtro Anno --%>
                                            <div class="col-lg-6 text-center justify-content-center align-items-center">
                                                <asp:Literal ID="ltrFiltroAnno" runat="server" Text="Anno:"></asp:Literal>
                                                <asp:DropDownList ID="ddlFiltroAnnoMensile" runat="server" DataSourceID="sdsGetAnno" DataTextField="ANNO" DataValueField="ANNO" AutoPostBack="True" OnSelectedIndexChanged="ddlFiltroAnnoMensile_SelectedIndexChanged"></asp:DropDownList>
                                                <asp:SqlDataSource ID="sdsGetAnno" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spAMATRON_GetAnno" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                            </div>
                                            <%-- DDL Filtro Anno --%>
                                        </div>
                                        </>
                                        <div class="row">
                                            <%--Grafico Incassi Mensili--%>
                                            <div class="col-lg-6">
                                                <center>
                                                    <asp:Chart ID="chartIncassiMensili" runat="server" Palette="None" PaletteCustomColors="180, 105, 255" Width="450px" DataSourceID="sdsIncassiMensili">
                                                        <Series>
                                                            <asp:Series Name="Series1" XValueMember="MESE" YValueMembers="GUADAGNO_TOTALE"></asp:Series>
                                                        </Series>
                                                        <ChartAreas>
                                                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                                        </ChartAreas>
                                                    </asp:Chart>
                                                    <asp:SqlDataSource ID="sdsIncassiMensili" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spAMATRON_IncassiMensiliByAnno" SelectCommandType="StoredProcedure">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="ddlFiltroAnnoMensile" DefaultValue="2023" Name="anno" PropertyName="SelectedValue" Type="Int32" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                </center>
                                            </div>
                                            <%--Grafico Incassi Mensili--%>

                                            <%--Dettagli Dati Tabella--%>
                                            <div class="col-lg-6 text-center align-items-center text-align-center" style="padding-top: 17px;">
                                                <div class="masterHideScroll masterCardHeight">
                                                    <asp:GridView ID="grdIncassiMensili" runat="server" CssClass="table table-bordered table-condensed" AutoGenerateColumns="False" DataSourceID="sdsIncassiMensili">
                                                        <HeaderStyle BackColor="#B469FF" />
                                                        <Columns>
                                                            <asp:BoundField DataField="MESE" HeaderText="MESE" ReadOnly="True" SortExpression="MESE" />
                                                            <asp:BoundField DataField="GUADAGNO_TOTALE" HeaderText="GUADAGNO_TOTALE" ReadOnly="True" SortExpression="GUADAGNO_TOTALE" DataFormatString="€ {0:0.00}"/>
                                                        </Columns>
                                                    </asp:GridView>
                                                </div>
                                            </div>
                                            <%--Dettagli Dati Tabella--%>
                                        </div>
                                    </div>
                                </div>
                                <%--Card Report Mensile--%>
                            </div>
                        </div>
                    </div>
                    <br />
                    <%--Card Report Annuale--%>
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="card rounded-3">
                            <br />
                            <h4 class="card-title text-center mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Incassi Annuali</h4>
                            <div class="card-body p-4 p-md-5">
                                <%--grafico--%>
                                <div class="row text-center">
                                    <div class="col-lg-6">
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
                                    </div>
                                    <div class="col-lg-6 align-items-center text-align-center" style="padding-top: 17px;">
                                        <asp:GridView ID="grdIncassiAnnuali" CssClass="table table-bordered table-condensed" runat="server" AutoGenerateColumns="False" DataSourceID="sdsIncassiAnnuali">
                                            <HeaderStyle BackColor="#B469FF" />
                                            <Columns>
                                                <asp:BoundField DataField="ANNO" HeaderText="ANNO" ReadOnly="True" SortExpression="ANNO" />
                                                <asp:BoundField DataField="GUADAGNO_TOTALE" HeaderText="GUADAGNO_TOTALE" ReadOnly="True" SortExpression="GUADAGNO_TOTALE" DataFormatString="€ {0:0.00}"/>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <%--Card Report per Categoria--%>
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="card rounded-3">
                            <br />
                            <h4 class="card-title text-center mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Incassi per Categoria</h4>
                            <div class="card-body p-4 p-md-5">
                                <%--grafico--%>
                                <div class="row">
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
            <%--Card grande per contenere le altre card--%>
        </div>
    </section>
    <%--Container--%>
</asp:Content>

