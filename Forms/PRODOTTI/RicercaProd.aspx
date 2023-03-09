<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="RicercaProd.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="/assets/css/styleCorrieri.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="text-align: center;" class="container">
        <h2>
            <svg style="width: 30px; height: 30px;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
            </svg>
            Risultato della ricerca:</h2>
    </div>

    <div style="clear: both; background-color: #ebebeb">
        <div class="d-flex justify-content-center align-items-center text-align-center">
            <span>
                <img style="width: 100px" src="/assets/images/carmine_banner.png" />
            </span>
            <span>
                <h3 class="masterColorText">Puoi accostare i tuoi prodotti con <img style="width:250px; height:80px;" src="../../assets/images/paypall.png" /> </h3>
            </span>
        </div>
    </div>
    
    <div class="container mt-5">
        <div id="lit" runat="server">
        </div>
    </div>
</asp:Content>