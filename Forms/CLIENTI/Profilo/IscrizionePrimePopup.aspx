<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IscrizionePrimePopup.aspx.cs" Inherits="InscrizionePrimePopup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <link href="/assets/css/style.css" rel="stylesheet" />
</head>
<body class="colore">
    <form id="form1" runat="server">
        <div class="card colore bianco" >
            <img src="../../../assets/images/amatron-prime.png" />
            <div class="card-body">
                <h5 class="card-title">Amatron Prime</h5>
                <p class="card-text primeScritta">Amatron prime &egrave; un servizio che ti permetter&agrave; di avere uno sconto dell'<asp:Label ID="lblPrimepopup" runat="server" Text=""></asp:Label>% su ogni prodotto acquistato.</p>
                <h2 class="card-title">Iscrizione annuale gratuita! </h2>
                    <br /> 
                    
                <asp:Button ID="btnIscriviti" class="btn btn-secondary btnSalva" runat="server" Text="Iscriviti" OnClick="btnIscriviti_Click" />
            </div>
        </div>
    </form>
</body>
</html>

