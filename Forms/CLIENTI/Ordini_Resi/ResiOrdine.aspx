<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="ResiOrdine.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container mt-1">
        <div class="row text-center">
            <h4 id="OrdiniCorriere" runat="server"></h4>
        </div>
        <div style="text-align:center; color:black; margin: 0 auto;" class="testo">
            <h2>Pagina Resi</h2>
        </div>
        <center>
            <div class="col-lg-10 text-center">
                <div class="card">
                    <div class="card-body">
                        <div class="row text-center">
                            <div class="col">
                                <br />
                                <center>
                                    <asp:GridView ID="grdreso" class="table" runat="server" CssClass="table table-bordered table-condensed"  AutoGenerateColumns="False" DataKeyNames="chiaveprodotto" DataSourceID="sdsResi">
                                        <Columns>
                                            <asp:BoundField DataField="chiaveprodotto" HeaderText="chiaveprodotto" InsertVisible="False" ReadOnly="True" SortExpression="chiaveprodotto" Visible="False" />
                                            <asp:BoundField DataField="TITOLO" HeaderText="TITOLO" SortExpression="TITOLO" />
                                            <asp:BoundField DataField="DESCRIZIONE" HeaderText="DESCRIZIONE" SortExpression="DESCRIZIONE" />
                                            <asp:BoundField DataField="PREZZO" HeaderText="PREZZO" SortExpression="PREZZO" />
                                            <asp:BoundField DataField="QTA" HeaderText="QTA" SortExpression="QTA" />
                                            <asp:CommandField ShowSelectButton="True" ButtonType="Image" ControlStyle-Height="20px" ControlStyle-Width="24px" SelectImageUrl="/assets/images/spunta_button.png" />
                                        </Columns>
                                        <SelectedRowStyle BackColor="LightGray" />
                                        <HeaderStyle BackColor="#B469FF" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="sdsResi" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spORDINI_SelectOrdineClienteReso" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="chiaveCLIENTE" SessionField="chiaveUSR" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                            </div>
                             <div align="center">
                                    <asp:Button ID="btnAccetta" class="btn masterButton" runat="server" Text="Effettua Reso" />
                                    <asp:Button ID="btnRifiuta" class="btn masterButton" runat="server" Text="Effettua Recensione" />
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </center>
    </div>
</asp:Content>

