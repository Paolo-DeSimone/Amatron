<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="AccettazioneResi.aspx.cs" Inherits="AccettazioneResi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--section--%>
    <section class="h-100 h-custom">
        <div class="container text-align-center py-5 h-100">         
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-12 col-xl-12">
                    <%--card--%>
                    <div class="card rounded-3">
                        <div class="card-body p-4 p-md-5">
                            <h3 class="text-center mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Accettazione Resi</h3>
                          
                            <div class="row align-items-center">
                                <div class="col-lg-8">
                                    <asp:GridView ID="grigliaResi" runat="server" AutoGenerateColumns="False" DataKeyNames="chiave" DataSourceID="sdsTabellaResi" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" OnSelectedIndexChanged="grigliaResi_SelectedIndexChanged">
                                        <AlternatingRowStyle BackColor="#F7F7F7" />
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                            <asp:BoundField DataField="chiave" HeaderText="chiave" InsertVisible="False" ReadOnly="True" SortExpression="chiave" Visible="False" />
                                            <asp:BoundField DataField="chiaveORDINE" HeaderText="chiaveORDINE" SortExpression="chiaveORDINE" />
                                            <asp:BoundField DataField="DESCRIZIONE" HeaderText="DESCRIZIONE" SortExpression="DESCRIZIONE" />
                                            <asp:BoundField DataField="QTARESA" HeaderText="QTARESA" SortExpression="QTARESA" />
                                            <asp:CheckBoxField DataField="ACCETTAZIONE" HeaderText="ACCETTAZIONE" SortExpression="ACCETTAZIONE" />
                                            <asp:BoundField DataField="DATARICHIESTA" HeaderText="DATARICHIESTA" SortExpression="DATARICHIESTA" />
                                            <asp:BoundField DataField="DATAEMISSIONE" HeaderText="DATAEMISSIONE" SortExpression="DATAEMISSIONE" />
                                        </Columns>
                                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="sdsTabellaResi" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spRESI_SelectAll" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                </div>
                                <div class="col-lg-4">
                                    <asp:DropDownList ID="ddlAccettaRifiuta" runat="server">
                                        <asp:ListItem Selected="True" Value="True">Accetta</asp:ListItem>
                                        <asp:ListItem Value="False">Rifiuta</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Button ID="btnInvia" class="btn btn-secondary" runat="server" Text="Invia" OnClick="btnInvia_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

