<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="testPaoloCarrello.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script>
        function AggiungiAlCarrello() {
            $.ajax({
                type: "POST",
                url: "/testPaoloCarrello.aspx/AggiungiAlCarrello",
                    //NON CAMBIARE I NOMI A,B,C SE NO NON FUNZIONA
                    <%--BISOGNA CAMBIARE I VALORI NELLA FUNZIONE JS E METTERCI LE SESSION DI chiaveCliente, chiaveProdotto E QTA per renderlo dinamico--%>
                    data: "{'a': '28', 'b' : '2', 'c' : '3'}",
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
     */--%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--BISOGNA CAMBIARE I VALORI NELLA FUNZIONE JS E METTERCI LE SESSION DI chiaveCliente, chiaveProdotto E QTA per renderlo dinamico--%>
    <button id="testAddItem" onclick="AggiungiAlCarrello()">Add to cart</button>
</asp:Content>

