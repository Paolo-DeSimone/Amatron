<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="ReportAMATRON.aspx.cs" Inherits="ReportAMATRON" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="h-100 h-custom">
        <div class="container text-align-center py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-12 col-xl-12">
                    <%--card--%>
                    <div class="card rounded-3">
                        <div class="card-body p-4 p-md-5">
                            <h3 class="text-center mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Report AMATRON</h3>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="card rounded-3">
                                        <div class="card-body p-4 p-md-5">
                                            <h3 class="text-center mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Incassi Mensili</h3>
                                            <%--grafico va inserito qui--%>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="card rounded-3">
                                        <div class="card-body p-4 p-md-5">
                                            <h3 class="text-center mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Incassi Annuali</h3>

                                            <%--grafico va inserito qui--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card rounded-3">
                                        <div class="card-body p-4 p-md-5">
                                            <h3 class="text-center mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Incassi per Categoria</h3>
                                            <%--grafico va inserito qui--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

