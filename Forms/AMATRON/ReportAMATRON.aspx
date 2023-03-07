<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="ReportAMATRON.aspx.cs" Inherits="ReportAMATRON" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<%--    <script>
        function getDATAMensile() {
            $.ajax({
                type: "POST",
                url: "ReportAMATRON.aspx/dataMensile",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (DATAMensile) {
                    $('#Text1').val(DATAMensile.d);
                },
                error: function (req, status, err) {
                    alert(req, status, err);
                }
            });
        }
    </script>--%>

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
                                                    <asp:Literal ID="ltrFiltroAnno" runat="server">Anno:</asp:Literal>
                                                    <asp:DropDownList ID="ddlFiltroAnnoMensile" runat="server"></asp:DropDownList>
                                                </div>
                                            </div>
                                            <%--grafico--%>
                                            <div class="row">
                                                <div>
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

