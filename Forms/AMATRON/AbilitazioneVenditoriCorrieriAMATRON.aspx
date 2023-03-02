<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="AbilitazioneVenditoriCorrieriAMATRON.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../../assets/css/AMATRON.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container mt-5">
        <center>
            <h2>Abilitazione Venditori e Corrieri</h2>
        </center>
        <div class="row mt-5">
            <div class="col-6">
                <div class="card">
                    <div class="card-body backgroundCard">
                        <center>
                            <h4>Abilita venditori</h4>
                            <%--griglia dei venditori--%>
                            <asp:GridView ID="grigliaVenditori" runat="server" DataSourceID="sdsVenditori" AutoGenerateColumns="False" DataKeyNames="chiave" OnSelectedIndexChanged="grigliaVenditori_SelectedIndexChanged">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" ButtonType="Button" ControlStyle-CssClass="button"></asp:CommandField>
                                    <asp:BoundField DataField="chiave" HeaderText="chiave" ReadOnly="True" Visible="False" SortExpression="chiave"></asp:BoundField>
                                    <asp:BoundField DataField="RAGIONESOCIALE" HeaderText="RAGIONESOCIALE" SortExpression="RAGIONESOCIALE"></asp:BoundField>
                                    <asp:BoundField DataField="PIVA" HeaderText="PIVA" SortExpression="PIVA" Visible="False"></asp:BoundField>
                                    <asp:BoundField DataField="INDIRIZZO" HeaderText="INDIRIZZO" SortExpression="INDIRIZZO" Visible="False"></asp:BoundField>
                                    <asp:BoundField DataField="PROVINCIA" HeaderText="PROVINCIA" SortExpression="PROVINCIA" Visible="False"></asp:BoundField>
                                    <asp:BoundField DataField="CITTA" HeaderText="CITTA" SortExpression="CITTA" Visible="False"></asp:BoundField>
                                    <asp:BoundField DataField="CAP" HeaderText="CAP" SortExpression="CAP" Visible="False"></asp:BoundField>
                                    <asp:BoundField DataField="TELEFONO" HeaderText="TELEFONO" SortExpression="TELEFONO" Visible="False"></asp:BoundField>
                                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL"></asp:BoundField>
                                    <asp:BoundField DataField="PWD" HeaderText="PWD" SortExpression="PWD" Visible="False"></asp:BoundField>
                                    <asp:CheckBoxField DataField="ABILITATO" HeaderText="ABILITATO" SortExpression="ABILITATO"></asp:CheckBoxField>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource runat="server" ID="sdsVenditori" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spVENDITORI_SelectAll" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            <br />
                            <%--pulsante per abilitare--%>
                            <asp:Button ID="btnAbilitaVenditori" CssClass="button" runat="server" Text="Abilita" OnClick="btnAbilitaVenditori_Click" />
                        </center>
                    </div>
                </div>
            </div>


            <div class="col-6">
                <div class="card">
                    <div class="card-body backgroundCard">
                        <center>
                            <h4>Abilita corrieri</h4>
                            <%--griglia dei corrieri--%>
                            <asp:GridView ID="grigliaCorrieri" runat="server" AutoGenerateColumns="False" DataKeyNames="chiave" DataSourceID="sdsCorrieri" OnSelectedIndexChanged="grigliaCorrieri_SelectedIndexChanged">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="true" ButtonType="Button" ControlStyle-CssClass="button"></asp:CommandField>
                                    <asp:BoundField DataField="chiave" HeaderText="chiave" ReadOnly="True" InsertVisible="False" SortExpression="chiave" Visible="False"></asp:BoundField>
                                    <asp:BoundField DataField="RAGIONESOCIALE" HeaderText="RAGIONESOCIALE" SortExpression="RAGIONESOCIALE"></asp:BoundField>
                                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL"></asp:BoundField>
                                    <asp:BoundField DataField="PWD" HeaderText="PWD" SortExpression="PWD" Visible="False"></asp:BoundField>
                                    <asp:BoundField DataField="COSTOCORRIERE" HeaderText="COSTOCORRIERE" Visible="False" SortExpression="COSTOCORRIERE"></asp:BoundField>
                                    <asp:CheckBoxField DataField="ABILITATO" HeaderText="ABILITATO" SortExpression="ABILITATO"></asp:CheckBoxField>
                                    <asp:BoundField DataField="PIVA" HeaderText="PIVA" Visible="False" SortExpression="PIVA"></asp:BoundField>
                                    <asp:BoundField DataField="INDIRIZZO" HeaderText="INDIRIZZO" Visible="False" SortExpression="INDIRIZZO"></asp:BoundField>
                                    <asp:BoundField DataField="CITTA" HeaderText="CITTA" Visible="False" SortExpression="CITTA"></asp:BoundField>
                                    <asp:BoundField DataField="PROVINCIA" HeaderText="PROVINCIA" Visible="False" SortExpression="PROVINCIA"></asp:BoundField>
                                    <asp:BoundField DataField="CAP" HeaderText="CAP" Visible="False" SortExpression="CAP"></asp:BoundField>
                                    <asp:BoundField DataField="TELEFONO" HeaderText="TELEFONO" Visible="False" SortExpression="TELEFONO"></asp:BoundField>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource runat="server" ID="sdsCorrieri" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spCORRIERI_SelectAll" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            <br />
                            <%--pulsante per abilitare--%>
                            <asp:Button ID="btnAbilitaCorrieri" CssClass="button" runat="server" Text="Abilita" OnClick="btnAbilitaCorrieri_Click" />
                        </center>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

