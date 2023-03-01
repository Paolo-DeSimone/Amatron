<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="AccettazioneOrdini.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section class="h-100 h-custom">
        <div class="container text-align-center py-5 h-100"> 
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-12 col-xl-12">
                    <%--card--%>
                    <div class="card rounded-3">
                        <div class="card-body p-4 p-md-5">
                            <h3 class="text-center mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Accettazione Ordini</h3>
                           
                            <div class="row align-items-center">
                                <div class="col-lg-8">
                                    <asp:GridView ID="grigliaOrdini" runat="server" AutoGenerateColumns="False" DataKeyNames="chiave" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                            <asp:BoundField DataField="chiave" HeaderText="chiave" InsertVisible="False" ReadOnly="True" SortExpression="chiave" Visible="False" />
                                            <asp:BoundField DataField="chiaveCORRIERE" HeaderText="chiaveCORRIERE" SortExpression="chiaveCORRIERE" />
                                            <asp:BoundField DataField="chiavePRODOTTO" HeaderText="chiavePRODOTTO" SortExpression="chiavePRODOTTO" />
                                            <asp:BoundField DataField="chiaveCLIENTE" HeaderText="chiaveCLIENTE" SortExpression="chiaveCLIENTE" />
                                            <asp:BoundField DataField="DATATRANSAZIONE" HeaderText="DATATRANSAZIONE" SortExpression="DATATRANSAZIONE" />
                                            <asp:BoundField DataField="QTA" HeaderText="QTA" SortExpression="QTA" />
                                            <asp:BoundField DataField="NUMEROORDINE" HeaderText="NUMEROORDINE" SortExpression="NUMEROORDINE" />
                                        </Columns>
                                    </asp:GridView>  
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString2 %>" SelectCommand="SELECT [chiave], [chiaveCORRIERE], [chiavePRODOTTO], [chiaveCLIENTE], [DATATRANSAZIONE], [QTA], [NUMEROORDINE] FROM [ORDINI] ORDER BY [DATATRANSAZIONE], [chiavePRODOTTO]"></asp:SqlDataSource>
                                </div>
                                <div class="col-lg-4">
                                    <asp:DropDownList ID="ddlAccettaRifiuta" runat="server">
                                        <asp:ListItem Selected="True" Value="1">Accetta</asp:ListItem>
                                        <asp:ListItem Value="0">Rifiuta</asp:ListItem>
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

