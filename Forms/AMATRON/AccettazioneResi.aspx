<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="AccettazioneResi.aspx.cs" Inherits="AccettazioneResi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--section--%>
    <section class="h-100 h-custom">
        <div class="container text-center py-5 h-100"> <%--APPUNTO: text-align-center al posto di text-center--%>
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-12 col-xl-12">
                    <%--card--%>
                    <div class="card rounded-3">
                        <div class="card-body p-4 p-md-5">
                            <h3 class="text-center mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Accettazione Resi</h3>
                            <%--Tabella provvisoria per sistemare l'html, da sostituire con GridView--%>
                            <div class="row align-items-center">
                                <div class="col-lg-8">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">First</th>
                                                <th scope="col">Last</th>
                                                <th scope="col">Handle</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>Mark</td>
                                                <td>Otto</td>
                                                <td>@mdo</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">2</th>
                                                <td>Jacob</td>
                                                <td>Thornton</td>
                                                <td>@fat</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">3</th>
                                                <td colspan="2">Larry the Bird</td>
                                                <td>@twitter</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="col-lg-4">
                                    <asp:DropDownList ID="ddlAttivaDisattiva" runat="server">
                                        <asp:ListItem Selected="True" Value="1">Accetta</asp:ListItem>
                                        <asp:ListItem Value="0">Rifiuta</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Button ID="btnInvia" class="btn btn-secondary" runat="server" Text="Invia" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

