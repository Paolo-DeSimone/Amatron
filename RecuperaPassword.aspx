<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="RecuperaPassword.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <center>
            <h2>Recupera Password</h2>
            <p>metti qui la tua email per ricevere una nuova password</p>
        </center>
        <center>
            <div class="card" style="width: 400px;">
                <div class="card-header text-center">
                    <h4>Recupera Password</h4>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="lblEmail" Style="float: left;" runat="server" Text="Email:"></asp:Label>
                            <asp:TextBox ID="txtEmail" class="form-control form-control-sm" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="text-center mt-2" style="float: right;">
                        <asp:Button ID="btnModifica" runat="server" CssClass="btn masterButton" Text="Ricordami la password" OnClick="btnModifica_Click" />
                    </div>
                </div>
            </div>
        </center>
    </div>
</asp:Content>

