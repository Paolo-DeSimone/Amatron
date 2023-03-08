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

    <div id="IdentificaVenditore" class="CardMargine" runat="server">

        <h2>
            Storico Vendite del Venditore
        
        </h2>

    </div>
    <div class="card" style="width: 80%; margin: 0 auto;">
        <%-- Inizio body --%>
        <div class="card-body">

            <div class="row">
                <div class="col-9">
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
                    <div class="row mt-3">
                        <div class="col-lg-12">
                            <div class="table-responsive" style="overflow-y: scroll; width: 100%;">
                                <asp:GridView ID="GrigliaStoricoVendite" class="table" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-condensed" DataSourceID="sdsGrigliaFatturatoVenditore">
                                    <Columns>
                                        <asp:BoundField DataField="GuadagnoLordo" HeaderText="GuadagnoLordo" SortExpression="GuadagnoLordo" ReadOnly="True" />
                                        <asp:BoundField DataField="PercentualeAmatron" HeaderText="PercentualeAmatron" SortExpression="PercentualeAmatron" ReadOnly="True" />
                                        <asp:BoundField DataField="GuadagnoNetto" HeaderText="GuadagnoNetto" SortExpression="GuadagnoNetto" ReadOnly="True" />
                                    </Columns>
                                    <HeaderStyle BackColor="#B469FF" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="sdsGrigliaFatturatoVenditore" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spORDINI_PRODOTTI_CATEGORIA_Fatturato" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:SessionParameter DefaultValue="" Name="chiaveVENDITORE" SessionField="chiaveUSR" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-3">

                    <asp:GridView ID="GrigliaFatturatoVenditore" runat="server" AutoGenerateColumns="False" DataSourceID="sdsGrigliaFatturatoVenditore">
                        <Columns>
                            <asp:BoundField DataField="GuadagnoLordo" HeaderText="GuadagnoLordo" ReadOnly="True" SortExpression="GuadagnoLordo" />
                            <asp:BoundField DataField="PercentualeAmatron" HeaderText="PercentualeAmatron" ReadOnly="True" SortExpression="PercentualeAmatron" />
                            <asp:BoundField DataField="GuadagnoNetto" HeaderText="GuadagnoNetto" ReadOnly="True" SortExpression="GuadagnoNetto" />
                        </Columns>
                    </asp:GridView>


                </div>
            </div>
        </div>
    </div>
</asp:Content>

