<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="ReportAMATRON.aspx.cs" Inherits="ReportAMATRON" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        //function getDATAMensile() {
        //    $.ajax({
        //        type: "POST",
        //        url: "ReportAMATRON.aspx/dataMensile",
        //        contentType: "application/json; charset=utf-8",
        //        dataType: "json",
        //        success: function (DATAMensile) {
        //            $('#Text1').val(DATAMensile.d);
        //        },
        //        error: function (req, status, err) {
        //            alert(req, status, err);
        //        }
        //    });
        //}
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <input id="Text1" visible="false" runat="server" type="text" />
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
                                                    <canvas id="chartMensile"></canvas>
                                                </div>
                                                <script>
                                                    const ctxMensile = document.getElementById('chartMensile');
                                                    const DATAMensile = document.getElementById("Text1");

                                                    new Chart(ctxMensile, {
                                                        type: 'bar',
                                                        data: {
                                                            labels: ['Gennaio', 'Febbraio', 'Marzo', 'Aprile', 'Maggio', 'Giugno', 'Luglio', 'Agosto', 'Settembre', 'Ottobre', 'Novembre', 'Dicembre'],
                                                            datasets: [{
                                                                data: [DATAMensile],
                                                                borderWidth: 1,
                                                                borderColor: '#B469FF',
                                                                backgroundColor: '#cc99ff'
                                                            }]
                                                        },
                                                        options: {
                                                            scales: {
                                                                y: {
                                                                    beginAtZero: true,
                                                                    title: {
                                                                        display: true,
                                                                        align: 'center',
                                                                        text: '# di Prodotti venduti'
                                                                    }
                                                                },

                                                            },
                                                            plugins: {
                                                                legend: {
                                                                    display: false
                                                                }
                                                            }
                                                        }
                                                    });
                                                </script>
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
                                                    <canvas id="chartAnnuale"></canvas>
                                                </div>
                                                <script>
                                                    const ctxAnnuale = document.getElementById('chartAnnuale');

                                                    new Chart(ctxAnnuale, {
                                                        type: 'line',
                                                        data: {
                                                            labels: ['2020', '2021', '2022', '2023'],
                                                            datasets: [{
                                                                data: [12, 19, 3, 5],
                                                                borderWidth: 1,
                                                                borderColor: '#B469FF',
                                                                backgroundColor: '#cc99ff'
                                                            }]
                                                        },
                                                        options: {
                                                            scales: {
                                                                y: {
                                                                    beginAtZero: true,
                                                                    title: {
                                                                        display: true,
                                                                        align: 'center',
                                                                        text: '# di Prodotti venduti'
                                                                    }
                                                                }
                                                            },
                                                            plugins: {
                                                                legend: {
                                                                    display: false
                                                                }
                                                            }
                                                        }
                                                    });
                                                </script>
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
                                            <canvas id="chartCategoria"></canvas>
                                        </div>
                                        <script>
                                            const ctxCategoria = document.getElementById('chartCategoria');

                                            new Chart(ctxCategoria, {
                                                type: 'bar',
                                                data: {
                                                    labels: ['Elettronica', 'Cibo', 'Bevande', 'Arredamento', 'Editoria', 'Gioielli', 'App e Giochi', 'Bellezza', 'Moda Donna', 'Moda Uomo', 'Cancelleria ', 'Casa e Cucina', 'Film e TV', 'CD, DVD e vinili', 'Libri', 'Elettrodomestici', 'Cura della persona', 'Videogiochi', 'Accessori da viaggio', 'Valigie. Zaini e Borsoni', 'Prima infanzia', 'Giardinaggio'],
                                                    datasets: [{
                                                        data: [12, 19, 3, 5, 2, 3, 7, 3, 9, 14, 55, 23, 67, 19, 23, 54, 37, 16, 34, 74, 34, 13],
                                                        borderWidth: 1,
                                                        backgroundColor: '#cc99ff'
                                                    }]
                                                },
                                                options: {
                                                    scales: {
                                                        y: {
                                                            beginAtZero: true,
                                                            title: {
                                                                display: true,
                                                                align: 'center',
                                                                text: '# di Prodotti venduti'
                                                            }
                                                        }
                                                    },
                                                    plugins: {
                                                        legend: {
                                                            display: false
                                                        }
                                                    }
                                                }
                                            });
                                        </script>
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

