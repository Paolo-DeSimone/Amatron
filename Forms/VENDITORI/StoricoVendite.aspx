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
            margin-left: 25%;
            margin-bottom: 0%;
        }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <%--formattazione card--%>
    <div class="container">

        <div id="IdentificaVenditore" class="CardMargine" runat="server">



        </div>
        <div class="card" style="width: 100%; margin: 0 auto;">
            <%-- Inizio body --%>
            <div class="card-body">
                <div class="row">

                    <div class="col-8">
                        <div class="row">
                            <div class="col-lg-2">
                                <asp:Label ID="Label1" runat="server" Text="Prodotto:"></asp:Label>
                            </div>
                            <div class="col-lg-2">

                                <asp:Label ID="Label5" runat="server" Text="Categoria:"></asp:Label>
                            </div>

                            <div class="col-lg-2">

                                <asp:Label ID="Label2" runat="server" Text="Numero Ordine"></asp:Label>
                            </div>

                            <div class="col-lg-2">

                                <asp:Label ID="Label3" runat="server" Text="Data inizio"></asp:Label>
                            </div>

                            <div class="col-lg-2">

                                <asp:Label ID="Label4" runat="server" Text="Data fine"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtTitolo" Class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-lg-2">
                                <div class="dropdown">
                                    <asp:DropDownList ID="ddlCategoria" AppendDataBoundItems="true" Class="form-control form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="CATEGORIA" DataValueField="chiaveCATEGORIA">
                                        <asp:ListItem Selected="True" Value="0">Tutte le categorie</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spCATEGORIE_SelectByVenditore_DDL" SelectCommandType="StoredProcedure">

                                        <SelectParameters>
                                            <asp:SessionParameter DefaultValue="" Name="chiaveVENDITORE" SessionField="chiaveUSR" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <asp:DropDownList ID="ddlNOrdine" AppendDataBoundItems="true" Class="form-control form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="NUMEROORDINE" DataValueField="chiaveORDINI">
                                    <asp:ListItem Value="0">Tutti gli ordini</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spORDINI_PRODOTTI_CATEGORIA_SelectDDL" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:SessionParameter DefaultValue="" Name="chiaveVENDITORE" SessionField="chiaveUSR" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtDInizio" Class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </div>
                            <div class="col-lg-2">
                                <asp:TextBox ID="txtDFine" Class="form-control" runat="server" TextMode="Date"></asp:TextBox>

                            </div>

                            <div class="col-lg-2 text-end">

                                <asp:Button ID="btnCerca" Class="btn masterButton" runat="server" Text="FILTRA" OnClick="btnCerca_Click" />
                            </div>
                        </div>

                    </div>
                </div>


                <div class="row mt-3">
                    <div class="col-lg-8">
                        <div class="table-responsive" style="overflow-y: scroll; width: 100%; height: 500px;">
                            <asp:GridView ID="GrigliaStoricoVendite" class="table" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-condensed">
                                <Columns>
                                    <asp:BoundField DataField="chiavePRODOTTI" HeaderText="chiavePRODOTTI" SortExpression="chiavePRODOTTI" Visible="False" />
                                    <asp:BoundField DataField="chiaveORDINI" HeaderText="chiaveORDINI" SortExpression="chiaveORDINI" Visible="False" />
                                    <asp:BoundField DataField="chiaveVENDITORE" HeaderText="chiaveVENDITORE" SortExpression="chiaveVENDITORE" Visible="False" />
                                    <asp:BoundField DataField="chiaveCATEGORIA" HeaderText="chiaveCATEGORIA" SortExpression="chiaveCATEGORIA" Visible="False" />
                                    <asp:BoundField DataField="TITOLO" HeaderText="PRODOTTO" SortExpression="TITOLO" />
                                    <asp:BoundField DataField="PREZZO" HeaderText="PREZZO" DataFormatString="{0:C}" SortExpression="PREZZO" />
                                    <asp:BoundField DataField="PERCAMATRON" HeaderText="% AMATRON" SortExpression="PERCAMATRON" />
                                    <asp:BoundField DataField="DATATRANSAZIONE" HeaderText="DATA VEND" SortExpression="DATATRANSAZIONE" ApplyFormatInEditMode="true" DataFormatString="{0:d}" />
                                    <asp:BoundField DataField="QTA" HeaderText="QTA" SortExpression="QTA" />
                                    <asp:BoundField DataField="NUMEROORDINE" HeaderText="NUM. ORD." SortExpression="NUMEROORDINE" />
                                    <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
                                </Columns>
                                <HeaderStyle BackColor="#B469FF" />
                            </asp:GridView>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="table-responsive" style="width: 100%;">

                            <asp:GridView ID="GrigliaFatturatoVenditore" class="table" runat="server" CssClass="table table-bordered table-condensed" AutoGenerateColumns="False" DataSourceID="sdsGrigliaFatturatoVenditore">
                                <Columns>
                                    <asp:BoundField DataField="GuadagnoLordo" HeaderText="Guad. Lordo" ReadOnly="True" DataFormatString="{0:C}" SortExpression="GuadagnoLordo" />
                                    <asp:BoundField DataField="PercentualeAmatron" HeaderText="Costo %Amatron" ReadOnly="True" DataFormatString="{0:C}" SortExpression="PercentualeAmatron" />
                                    <asp:BoundField DataField="GuadagnoNetto" HeaderText="Guad. Netto" ReadOnly="True" DataFormatString="{0:C}" SortExpression="GuadagnoNetto" />

                                </Columns>
                                <HeaderStyle BackColor="#B469FF" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="sdsGrigliaFatturatoVenditore" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spORDINI_PRODOTTI_CATEGORIA_Fatturato" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:SessionParameter Name="chiaveVENDITORE" SessionField="chiaveUSR" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

