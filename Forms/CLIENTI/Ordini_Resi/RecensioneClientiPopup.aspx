<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RecensioneClientiPopup.aspx.cs" Inherits="RecensioneClientiPopup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Recensione Prodotto</title>
    <link href="../assets/css/cssRecensioni.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

    <%--<script>
        $(document).ready(function () {
            var rating = 0;

            // Quando una stella viene cliccata, viene eseguita questa funzione
            $(".star").click(function () {
                // Prendiamo il valore della stella cliccata
                rating = $(this).data("value");

                // Rimuoviamo la classe "selected" da tutte le stelle e la aggiungiamo solo alla stella cliccata
                $(".star").removeClass("selected");
                $(this).addClass("selected");
            });

            // Quando il pulsante viene cliccato, viene eseguita questa funzione
            $("#submit-review").click(function () {
                // Memorizziamo la valutazione in un qualche database
                // (qui stiamo solo stampando la valutazione nella console per motivi di esempio)
                console.log("Valutazione memorizzata: " + rating + " stelle");
            });
        });


    </script>--%>


</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container d-flex justify-content-center mt-5">
                <div class="card text-center mb-5">
                    <br/>
                    <div>
                        <asp:Literal ID="ltlRecensione" runat="server"><h4>Scrivi la tua Recensione</h4> </asp:Literal>
                        <asp:TextBox ID="txtRecensione" class="resizedTextbox"  runat="server"></asp:TextBox>
                    </div>
                    <div class="rate py-3 text-white mt-3">
                        <h6 class="mb-0 text-dark">Lascia la tua recensione</h6>
                        <div class="rating">
                            <button oneclick="recensione()" class="btn btn-warning btn-block rating-submit" style="padding: 2px; height: 30px; margin-top: 10px;">Invia</button>
                            <input type="radio" name="rating" class="star" data-value="5" id="s5" />
                            <label for="5">☆</label>
                            <input type="radio" name="rating" class="star" data-value="4" id="s4" />
                            <label for="4">☆</label>
                            <input type="radio" name="rating" class="star" data-value="3" id="s3" />
                            <label for="3">☆</label>
                            <input type="radio" name="rating" class="star" data-value="2" id="s2" />
                            <label for="2">☆</label>
                            <input type="radio" name="rating" class="star" data-value="1" id="s1" />
                            <label for="1">☆</label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
