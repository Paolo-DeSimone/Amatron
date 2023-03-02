<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="testPaoloCarrello.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script>
        function AggiungiAlCarrello() {
            $.ajax({
                type: "POST",
                url: "/AMATRON.master.cs/AggiungiAlCarrello",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    /*alert(msg.d);*/
                    $('#txt1').val(msg.d);
                },
                error: function (req, status, err) {
                    alert(req, status, err);
                }
            });
        }
    </script>

</asp:Content>


<%--STRATEGIA PER RENDERE IL CARRELLO DINAMICO, stabilita con Kevin:

        Premessa:è necessario fare una vista che prenda i dati delle tabelle CARRELLO e PRODOTTI LA FACCIO IO, PAOLO.

        Quando uno clicca un qualsiasi bottone per aggiunere al carrello, scatta un onlick che attiva una funzione AJAX nella pagina del bottone.

        Questa funziona attiva un metodo C# in master.cs che fa 2 cose:

        1) scrive un record in DB nella tabella CARRELLO. Questa tabella ha 4 campi: chiave (autoincrementante),chiaveCLIENTE, chiavePRODOTTO e QTA.
           Gli ultimi 3 valori, saranno presi tramite session. chiaveCLIENTE e chiavePRODOTTO esistono già, QTA la creo io.

        2) aggiunge il prodotto al carrello nel sito di Amatron. 
        Ciò viene fatto utilizzando l'attributo InnerHtml del div con id carrelloProdotti in master
        es: carrelloProdotti.InnerHtml += "<div class="card mx-2 my-2">"
        Occhio a mettere il += e gli apici tra l'html che scrivo. Questo permette di scrivere HTML da C#

       Al pageload del master, caricheremo tutti i prodotti nel carrello facendo prima un select by key (key del cliente, ottenuta tramite session al login)
       dalla tabella CARRELLO. 
       Poi si userà la stessa strategia di prima con InnerHtml ma ci saranno delle variabili
       ES: carrelloProdotti.InnerHtml += "<div '"+VariabileTitoloProdotto+"'>"
     */--%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <button ID="testAddItem" onclick="AggiungiAlCarrello()">salva</button>
</asp:Content>

