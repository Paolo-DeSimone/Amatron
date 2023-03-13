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
    <div class="container">

        <div id="IdentificaVenditore" style="display: center; width: 65vw; margin: 4vh auto;" runat="server">
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

                                <asp:Label ID="Label2" runat="server" Text="Numero Ordine:"></asp:Label>
                            </div>

                            <div class="col-lg-2">

                                <asp:Label ID="Label3" runat="server" Text="Data inizio:"></asp:Label>
                            </div>

                            <div class="col-lg-2">

                                <asp:Label ID="Label4" runat="server" Text="Data fine:"></asp:Label>
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
                                <asp:TextBox ID="txtNumeroOrdine" Class="form-control" runat="server" TextMode="Number"></asp:TextBox>

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
                        <div class="table-responsive" style="overflow-y: auto; width: 100%; height: 500px;">
                            <asp:GridView ID="GrigliaStoricoVendite" class="table" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-condensed">
                                <Columns>
                                    <asp:BoundField DataField="chiavePRODOTTI" HeaderText="chiavePRODOTTI" SortExpression="chiavePRODOTTI" Visible="False" />
                                    <asp:BoundField DataField="chiaveORDINI" HeaderText="chiaveORDINI" SortExpression="chiaveORDINI" Visible="False" />
                                    <asp:BoundField DataField="chiaveVENDITORE" HeaderText="chiaveVENDITORE" SortExpression="chiaveVENDITORE" Visible="False" />
                                    <asp:BoundField DataField="chiaveCATEGORIA" HeaderText="chiaveCATEGORIA" SortExpression="chiaveCATEGORIA" Visible="False" />
                                    <asp:BoundField DataField="TITOLO" HeaderText="PRODOTTO" SortExpression="TITOLO" />
                                    <asp:BoundField DataField="PREZZO" HeaderText="PREZZO" DataFormatString="€{0:n}" SortExpression="PREZZO" />
                                    <asp:BoundField DataField="PERCAMATRON" HeaderText="% AMATRON" DataFormatString="{0:0}%" SortExpression="PERCAMATRON" />
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
                          <div class="mb-2"> 
                            <h4>
                            <asp:Label ID="Label7" runat="server" Text="Guadagni del venditore:"></asp:Label>
                            </h4>
                        </div>
                        <div class="table-responsive" style="width: 100%;">
                            <asp:GridView ID="GrigliaFatturatoVenditore" class="table" runat="server" CssClass="table table-bordered table-condensed" AutoGenerateColumns="False" DataSourceID="sdsGrigliaFatturatoVenditore">
                                <Columns>
                                    <asp:BoundField DataField="GuadagnoLordo" HeaderText="Guad. Lordo" ReadOnly="True" DataFormatString="&euro;{0:n}" SortExpression="GuadagnoLordo" />
                                    <asp:BoundField DataField="PercentualeAmatron" HeaderText="Costo %Amatron" ReadOnly="True" DataFormatString="&euro;{0:n}" SortExpression="PercentualeAmatron" />
                                    <asp:BoundField DataField="GuadagnoNetto" HeaderText="Guad. Netto" ReadOnly="True" DataFormatString="&euro;{0:n}" SortExpression="GuadagnoNetto" />
                                </Columns>
                                <HeaderStyle BackColor="#B469FF" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="sdsGrigliaFatturatoVenditore" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spORDINI_PRODOTTI_CATEGORIA_Fatturato" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:SessionParameter Name="chiaveVENDITORE" SessionField="chiaveUSR" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                        <div class="mt-4 mb-2"> 
                            <h4>
                            <asp:Label ID="Label6" runat="server" Text="Percentuali percepite da Amatron per ogni acquisto:"></asp:Label>
                            </h4>
                        </div>
                        <div class="table-responsive" style="width: 100%;">
                            <asp:GridView ID="grdPercentualiAmatron" class="table" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-condensed" DataSourceID="SqlDataSource2">
                                <Columns>
                                    <asp:BoundField DataField="PERC1_10" HeaderText="% 1-10€" DataFormatString="{0:0}%" SortExpression="PERC1_10" />
                                    <asp:BoundField DataField="PERC11_100" HeaderText="% 11-100€" DataFormatString="{0:0}%" SortExpression="PERC11_100" />
                                    <asp:BoundField DataField="PERC101_1000" HeaderText="% 101-1000€" DataFormatString="{0:0}%" SortExpression="PERC101_1000" />
                                    <asp:BoundField DataField="PERC1001" HeaderText="% 1001€+" DataFormatString="{0:0}%" SortExpression="PERC1001" />
                                </Columns>
                                <HeaderStyle BackColor="#B469FF" />

                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="SELECT [PERC1_10], [PERC11_100], [PERC101_1000], [PERC1001] FROM [CONFIG]"></asp:SqlDataSource>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

