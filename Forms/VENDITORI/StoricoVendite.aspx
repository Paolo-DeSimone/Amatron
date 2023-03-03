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
            <div class="card-body" style="width: 50%; padding: 15px 15px 15px;">
                <div class="row">
                    <div class="col-lg-6">
                        <asp:Label ID="Label1" runat="server" Text="Titolo:"></asp:Label>
                        <asp:TextBox ID="txtTitolo" Class="form-control" runat="server"></asp:TextBox>
                    </div>

                    <div class="col-lg-6">
                        <asp:Label ID="Label5" runat="server" Text="Categoria:"></asp:Label>

                        <asp:DropDownList ID="ddlCategoria" Class="btn btn-secondary dropdown-toggle" runat="server" DataSourceID="SqlDataSource1" DataTextField="CATEGORIA" DataValueField="chiaveCATEGORIA">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                                <%--<asp:ListItem Enabled=�true� Text= �Select Subject� Value= �-1�></asp:ListItem>--%>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spCATEGORIE_SelectByVenditore_DDL" SelectCommandType="StoredProcedure">
                            
                            
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="chiaveVENDITORE" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>

                    <div class="col-lg-12">
                        <asp:Label ID="Label2" runat="server" Text="Numero Ordine"></asp:Label>
                        <asp:TextBox ID="txtNOrdine" Class="form-control" runat="server"></asp:TextBox>

                    </div>

                    <div class="col-lg-6">
                        <asp:Label ID="Label3" runat="server" Text="Data inizio"></asp:Label>
                         <asp:TextBox ID="txtDInizio" Class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-lg-6">
                        <asp:Label ID="Label4" runat="server" Text="Data fine"></asp:Label>
                         <asp:TextBox ID="txtDFine" Class="form-control" runat="server"></asp:TextBox>
                    </div>

                </div>


    <div class="CardMargine">

        <h2>
            <asp:Label ID="lblStoricoVendite2" runat="server" Text="Storico Vendite"></asp:Label>
        </h2>


                <div class="table-responsive">
                    <asp:GridView ID="GrigliaStoricoVendite" class="table" CssClass="table table-bordered table-condensed" runat="server" AutoGenerateColumns="False" DataSourceID="sdsGrigliaStorico">
                        <Columns>
                            <asp:BoundField DataField="chiavePRODOTTI" HeaderText="chiavePRODOTTI" SortExpression="chiavePRODOTTI" Visible="False" />
                            <asp:BoundField DataField="chiaveORDINI" HeaderText="chiaveORDINI" SortExpression="chiaveORDINI" Visible="False" />
                            <asp:BoundField DataField="chiaveVENDITORE" HeaderText="chiaveVENDITORE" SortExpression="chiaveVENDITORE" Visible="False" />
                            <asp:BoundField DataField="chiaveCATEGORIA" HeaderText="chiaveCATEGORIA" SortExpression="chiaveCATEGORIA" Visible="False" />
                            <asp:BoundField DataField="TITOLO" HeaderText="TITOLO" SortExpression="TITOLO" />
                            <asp:BoundField DataField="PREZZO" HeaderText="PREZZO" SortExpression="PREZZO" />
                            <asp:BoundField DataField="PERCAMATRON" HeaderText="PERCAMATRON" SortExpression="PERCAMATRON" />
                            <asp:BoundField DataField="DATATRANSAZIONE" HeaderText="DATATRANSAZIONE" SortExpression="DATATRANSAZIONE" />
                            <asp:BoundField DataField="QTA" HeaderText="QTA" SortExpression="QTA" />
                            <asp:BoundField DataField="NUMEROORDINE" HeaderText="NUMEROORDINE" SortExpression="NUMEROORDINE" />
                            <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
                        </Columns>
                        <HeaderStyle BackColor="#B469FF" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="sdsGrigliaStorico" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spPRODOTTI_ORDINI_CATEGORIA_Filter" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtTitolo" Name="TITOLO" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="ddlCategoria" Name="chiaveCATEGORIA" PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="txtDInizio" Name="DATAINIZIO" PropertyName="Text" Type="DateTime" />
                            <asp:ControlParameter ControlID="txtDFine" Name="DATAFINE" PropertyName="Text" Type="DateTime" />
                            <asp:ControlParameter ControlID="txtNOrdine" Name="NUMEROORDINE" PropertyName="Text" Type="Int32" />
                            <asp:Parameter DefaultValue="1" Name="chiaveVenditore" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>

