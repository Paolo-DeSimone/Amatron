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
        }
        else
        {
            litUtente.Text = "";
        }

    }

    public void caricaCarrello(int chiaveUSR)
    {
        CARRELLO c = new CARRELLO();

        // Seleziona tutti gli oggetti (item) in carrello ma solo per un certo utente, identificato grazie alla session.
        DataTable DT = c.SelectAllItemsInCart(1);

        // Dentro il div con id "carrelloProdotti" dentro AMATRON.master, fai comparire tutto quel che c'è in carrelloProdotti.InnerHtml (InnerHtml permette di scrivere codice HTML dentro il C#)
        // Uso un ciclo for che itera per il numero di row in DT ( DT.Rows.Count) così da far comparire in carrello ogni singolo oggetto della DT
        string s = "";
        

        for (int i = 0; i < DT.Rows.Count; i++)
        {
            string desc = DT.Rows[i]["DESCRIZIONEprodotto"].ToString();
            if (desc.Length > 50)
            {
                desc = desc.Substring(0, 50);
            }
            s +=
            "<div id=\"itemInCart\"class=\"card mx-1 my-1\">" +
            "<div class=\"card-body \" style=\"padding: 5px; color: rgb(0,0,0);\r\n font-weight: 600;\r\n\">" +
            "<div class=\"row\" style=\"margin: 0px; padding: 0px;\">" +
            "<div class=\"row\" style=\"margin: 0px; padding: 0px;\">" +
            "" +
            " <div class=\"col-sm-4\">" +
                "<a href=\"Forms/PRODOTTI/PaginaProdotto.aspx?c=" + DT.Rows[i]["chiavePRODOTTO"].ToString() + "\" class=\"w3-bar-item w3-button masterNoHover\">" +
                "<img src=\"/Img.ashx?c=" + DT.Rows[i]["chiavePRODOTTO"].ToString() + "\" class=\"w-50 h-50\" />" +
                "</a>" +
            "</div>" +
            "" +
            " <div class=\"col-sm-5\">" +
            "<p style=\"margin: 4px;\"></p>" +
            "" +
            "<div>" + //DIV di apertura
                "<div>" + DT.Rows[i]["TITOLOprodotto"] + "</div>" +
                "</div>" +
                "<div style=\"color: rgb(0,0,0);\r\n font-weight: 500;\r\n\">" + desc + "... </div>" +
                "</div>" + //DIV di chiusura
                "" +
                "<div style=\"padding: 0px;\" class=\"col-sm-3\">" +
            "<div>" + //DIV di apertura
            "" +
            "<button onclick=\"DiscardItemInCart(" + DT.Rows[i]["chiavePRODOTTO"].ToString() +")\" class=\"w3-bar-item w3-button w3-large masterNoHover\" style=\"padding: 0px; margin-left: 100px;\" >" +
                "<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" class=\"bi bi-trash3\" viewBox=\"0 0 16 16\">\r\n  " +
                "<path d=\"M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01" +
                " 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01" +
                " 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1" +
                " .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 " +
                "4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z\"/>\r\n</svg>" +
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
            string script = @"notifyError('Email o password errati riprova')";
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
        Response.Redirect("/Forms/PRODOTTI/RicercaProd.aspx?c=" + ddlCategorie.SelectedValue.ToString() + "&p=" + p);
    }
}
