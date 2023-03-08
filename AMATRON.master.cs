using Microsoft.SqlServer.Server;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class AMATRON : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
            dropdownAmatron.Visible = false;
            dropdownClienti.Visible = false;
            dropdownCorrieri.Visible = false;
            dropdownVenditori.Visible = false;
            iconaCarrello.Visible = false;
            accessIn.Visible = true;

            if (Session["chiaveUSR"] != null)
            {
                string tipoUSR = Session["tipoUSR"].ToString();
                switch (tipoUSR)
                {
                    case "A":
                        dropdownClienti.Visible = true;
                        iconaCarrello.Visible = true;
                        break;
                    case "B":
                        dropdownVenditori.Visible = true;
                        break;
                    case "C":
                        dropdownCorrieri.Visible = true;
                        break;
                    case "D":
                        dropdownAmatron.Visible = true;
                        break;
                }
                litUtente.Text = "Logged as " + Session["emailUSR"].ToString();
                accessIn.Visible = false;
                caricaCarrello(int.Parse(Session["chiaveUSR"].ToString()));
            } else
            {
                litUtente.Text = "";
            }

        }

    private void caricaCarrello(int chiaveUSR)
    {
        CARRELLO c = new CARRELLO();

        // Seleziona tutti gli oggetti (item) in carrello ma solo per un certo utente, identificato grazie alla session.
        DataTable DT = c.SelectAllItemsInCart(chiaveUSR);

        // Dentro il div con id "carrelloProdotti" dentro AMATRON.master, fai comparire tutto quel che c'è in carrelloProdotti.InnerHtml (InnerHtml permette di scrivere codice HTML dentro il C#)
        // Uso un ciclo for che itera per il numero di row in DT ( DT.Rows.Count) così da far comparire in carrello ogni singolo oggetto della DT
        string s = "";
        for (int i = 0; i < DT.Rows.Count; i++)
        {
            s +=
            "<div class=\"card mx-1 my-1\">" +
            "<div class=\"card-body \" style=\"padding: 5px; color: rgb(0,0,0);\r\n font-weight: 600;\r\n\">" +
            "<div class=\"row\" style=\"margin: 0px; padding: 0px;\">" +
            "<div class=\"row\" style=\"margin: 0px; padding: 0px;\">" +
            "" +
            " <div class=\"col-sm-4\">" +
            "<a href=\"Forms/PRODOTTI/PaginaProdotto.aspx?c="+ DT.Rows[i]["chiavePRODOTTO"].ToString() + "\" class=\"w3-bar-item w3-button\">" +
            "<img src=\"/Img.ashx?c=" + DT.Rows[i]["chiavePRODOTTO"].ToString() +"\" class=\"w-50 h-50\" />" +
            "</a>" +
            "</div>" +
            "" +
            " <div class=\"col-sm-5\">" +
            "<p style=\"margin: 4px;\"></p>" +
            "" +
            "<div>" + //DIV di apertura
            "<div>" + DT.Rows[i]["TITOLOprodotto"] + "</div>" +
            "</div>" +
            "<div>" + DT.Rows[i]["DESCRIZIONEprodotto"].ToString() + "</div>" +
            "</div>" + //DIV di chiusura
            "" +
            "<div style=\"padding: 0px;\" class=\"col-sm-3\">" +
            "<div>" + //DIV di apertura
            "" +
            "<button onclick=\"closeRightMenu()\"  class=\"w3-bar-item w3-button w3-large\" style=\"padding: 0px; margin-left: 100px;\" >" +
            "<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" class=\"bi bi-x-circle\">" +
            "<path d=\"M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z\" />" +
            "<path d=\"M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z\" />" +
            "</svg>" +
            "</button>" +
            "" +
            "<div>Quantità:" + DT.Rows[i]["QTAprodotto"] + "</div>" +
            "</div>" +
            "<div>Prezzo:" + DT.Rows[i]["PREZZOprodotto"].ToString() + "€</div>" +
            "</div>" + //DIV di chiusura
            "" +
            "" +
            "" +
            "</div>" +
            "</div>" +
            "</div>" +
            //"</div>" +
            "</div>";
        }
        litCarrello.Text = s;

    }



    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string EMAIL = txtEMAIL.Value.ToString();
        string PWD = txtPWD.Value.ToString();

        LOGIN login = new LOGIN();
        DataTable DT = login.Login(EMAIL, PWD);

        if (DT.Rows.Count != 0)
        {
            Session["chiaveUSR"] = DT.Rows[0]["chiave"];
            Session["emailUSR"] = DT.Rows[0]["EMAIL"];
            Session["pwdUSR"] = DT.Rows[0]["PWD"];
            Session["tipoUSR"] = DT.Rows[0]["TIPO"];

            // temporary fix
            dropdownAmatron.Visible = false;
            dropdownClienti.Visible = false;
            dropdownCorrieri.Visible = false;
            dropdownVenditori.Visible = false;
            //

            switch (DT.Rows[0]["TIPO"].ToString())
            {
                case "A":
                    dropdownClienti.Visible = true;
                    iconaCarrello.Visible = true;
                    break;
                case "B":
                    dropdownVenditori.Visible = true;
                    break;
                case "C":
                    dropdownCorrieri.Visible = true;
                    break;
                case "D":
                    dropdownAmatron.Visible = true;
                    break;
            }
            litUtente.Text = "Logged as " + Session["emailUSR"].ToString();
            accessIn.Visible = false;
            Response.Redirect("/Forms/Homepage.aspx");
        }
        else
        {
            string script = @"notifyError('Dati mancanti, riempire tutti i campi e riprovare')";
            ScriptManager.RegisterStartupScript(this, GetType(), "btnLogin_Click", script, true);
            return;
        }

    }

    //[WebMethod]
    //public static void AggiungiAlCarrello()
    //{
    //    // la session sarà una string e quindi bisognerà fare un parse perché i membri dato nella classe CARRELLO sono int
    //    int sessionChiaveCliente = 1;
    //    int sessionChiaveProdotto = 1;
    //    int sessionQTA = 1;

    //    CARRELLO cart = new CARRELLO();
    //    cart.chiaveCLIENTE = sessionChiaveCliente;
    //    cart.chiavePRODOTTO = sessionChiaveProdotto;
    //    cart.QTA = sessionQTA;
    //    cart.INSERT();
    //}


    protected void btnCerca_Click(object sender, EventArgs e)
    {
        //Session["searchTerm"] = searchBar.Value.ToString();
        string p = searchBar.Value.ToString() != "" ? searchBar.Value.ToString() : "*";
        Response.Redirect("/Forms/PRODOTTI/RicercaProd.aspx?c="+ ddlCategorie.SelectedValue.ToString() + "&p=" + p);
    }
}
