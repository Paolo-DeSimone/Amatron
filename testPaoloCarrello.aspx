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

    In master.cs nel pageload c'è un metodo che restituisce una datatable e che andrà a prendere tutti gli elementi in carrello per un certo utente.
    Si può prendere dalla vista che ho fatto, per l'immagine ne parliamo dopo.

    Sempre nel pageload si può fare un loop che itera per il numero di elmenti della datatable del carrello con qualcosa tipo DT.Rows.Lenght
    Dentro questo loop, c'è l'inner html e nelle variabili metto cose tipo: DT.Rows[i]["Titolo"]
    Per quanto riguarda l'immagine, serve una sp che prenda la prima immagine caricata per un certo prodotto poi col gestore la si mostra in carrello.

    Ora si parla di quando sono nella pagina prodotto e clicco su aggiungi al carrello: non voglio ricaricare la pagina per poterlo vedere.
    Quindi bisognerà usare JS in qualche modo per aggiungere l'ultimo prodotto al carrello.

    PROBLEMI RISCONTRATI:
    lato DB funziona tutto, manca solo da prendere in qualche modo l'ultima immagine e presentarla bene, ma ci penso dopo.

    Inoltre non funziona l'AJAX del botton:, appare il popup object object e quindi nessun prodotto viene inserito in DB. In carrello rimangono sempre i due record di prova che ho.

     */--%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <button id="testAddItem" onclick="AggiungiAlCarrello()">salva</button>
</asp:Content>

