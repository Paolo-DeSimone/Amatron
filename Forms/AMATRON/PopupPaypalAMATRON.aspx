<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PopupPaypalAMATRON.aspx.cs" Inherits="AMATRON_PopupPaypalAMATRON" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <%--<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />--%>
    <title>Paypal</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="https://www.paypal.com/sdk/js?client-id=AS1opRAB52ZrlVeOFl3HPzDOLyC-5bvwy6_Lg7K8KzYOikL0ks9OtyobKZuexHozt1SpMtTrbkWkBoP5&currency=EUR"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="assets/css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <style>
        *{
            margin: 0 auto;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <%--  <div style="background-color: green; display: none"; id="transition">Grazie per il tuo pagamento!</div>
        <input type="text" id="payInput" />
        <button onclick="generatePayment(document.getElementById('payInput').value)">Paga</button>
        <div id="paypal-button-container"></div>--%>
        <div id="smart-button-container">
            <div style="text-align: center;">
                <div id="paypal-button-container"></div>
            </div>
        </div>
        <script src="https://www.paypal.com/sdk/js?client-id=sb&enable-funding=venmo&currency=EUR" data-sdk-integration-source="button-factory"></script>
        <script>
            function initPayPalButton() {
                paypal.Buttons({
                    style: {
                        shape: 'rect',
                        color: 'gold',
                        layout: 'vertical',
                        label: 'paypal',

                    },

                    createOrder: function (data, actions) {
                        return actions.order.create({
                            purchase_units: [{ "amount": { "currency_code": "EUR", "value": 1 } }]
                        });
                    },

                    onApprove: function (data, actions) {
                        return actions.order.capture().then(function (orderData) {

                            // Full available details
                            console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));

                            // Show a success message within this page, e.g.
                            const element = document.getElementById('paypal-button-container');
                            element.innerHTML = '';
                            element.innerHTML = '<h3>Thank you for your payment!</h3>';

                            // Or go to another URL:  actions.redirect('thank_you.html');

                        });
                    },

                    onError: function (err) {
                        console.log(err);
                    }
                }).render('#paypal-button-container');
            }
            initPayPalButton();
        </script>
        <div style="background-color: green; display: none;" id="transition">Grazie per il tuo pagamento!</div>
        <input type="text" id="payInput" />
        <button onclick="generatePayment(document.getElementById('payInput').value)">Paga</button>
        <div id="paypal-button-container"></div>
    </form>
</body>
</html>
