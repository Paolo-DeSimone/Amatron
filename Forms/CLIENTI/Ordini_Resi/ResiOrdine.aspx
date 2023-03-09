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
                                    <asp:GridView ID="grdreso" class="table" runat="server" CssClass="table table-bordered table-condensed"  AutoGenerateColumns="False">
                                        <Columns>
                                           
                                        </Columns>
                                        <SelectedRowStyle BackColor="LightGray" />
                                        <HeaderStyle BackColor="#B469FF" />
                                    </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </center>
    </div>
</asp:Content>

