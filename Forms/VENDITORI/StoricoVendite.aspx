<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="StoricoVendite.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        /*riduzione dimensione del testo per evitare conflitti in caso di un titolo molto lungo*/

        .DescrizioneProdotto {
            display: -webkit-box;
            text-overflow: ellipsis;
            overflow: hidden;
            -webkit-line-clamp: 3;
            -webkit-box-orient: vertical;
        }

        .contenimentoTitolo {
            display: -webkit-box;
            text-overflow: ellipsis;
            overflow: hidden;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
        }

        .boxImg {
            object-fit: scale-down;
            width: 225px;
            height: 225px;
        }

        .CardMargine {
            margin: 6vh auto;
            margin-left: 38%;
            margin-bottom: 0%;
        }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <%--formattazione card--%>

    <div class="CardMargine">

        <h2>
            <asp:Label ID="lblStoricoVendite" runat="server" Text="Storico Vendite"></asp:Label>
        </h2>

    </div>
    <div class="container">
        <div class="card">
            <%-- Inizio body --%>
            <div class="card-body"  style="width:50%; padding: 15px 15px 15px;">
                <div class="table-responsive">

                <asp:GridView ID="GrigliaStoricoVendite" class="table" CssClass="table table-bordered table-condensed" runat="server" AutoGenerateColumns="False" DataSourceID="sdsGrigliaStorico">
                    <Columns>
                        <asp:BoundField DataField="chiavePRODOTTI" HeaderText="chiavePRODOTTI" SortExpression="chiavePRODOTTI" />
                        <asp:BoundField DataField="chiaveORDINI" HeaderText="chiaveORDINI" SortExpression="chiaveORDINI" />
                        <asp:BoundField DataField="chiaveVENDITORE" HeaderText="chiaveVENDITORE" SortExpression="chiaveVENDITORE" />
                        <asp:BoundField DataField="chiaveCATEGORIA" HeaderText="chiaveCATEGORIA" SortExpression="chiaveCATEGORIA" />
                        <asp:BoundField DataField="TITOLO" HeaderText="TITOLO" SortExpression="TITOLO" />
                        <asp:BoundField DataField="PREZZO" HeaderText="PREZZO" SortExpression="PREZZO" />
                        <asp:BoundField DataField="PERCAMATRON" HeaderText="PERCAMATRON" SortExpression="PERCAMATRON" />
                        <asp:BoundField DataField="DATATRANSAZIONE" HeaderText="DATATRANSAZIONE" SortExpression="DATATRANSAZIONE" />
                        <asp:BoundField DataField="QTA" HeaderText="QTA" SortExpression="QTA" />
                        <asp:BoundField DataField="NUMEROORDINE" HeaderText="NUMEROORDINE" SortExpression="NUMEROORDINE" />
                    </Columns>
                    <HeaderStyle BackColor="#B469FF"/>
                </asp:GridView>
                <asp:SqlDataSource ID="sdsGrigliaStorico" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spORDINI_PRODOTTI_SelectByVenditore" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="chiaveVenditore" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

