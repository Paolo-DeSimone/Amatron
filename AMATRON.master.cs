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
            "<div class=\"card-body \">" +
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
            "<div>" + DT.Rows[i]["TITOLO"] + "</div>" +
            "</div>" +
            "<div>" + DT.Rows[i]["DESCRIZIONE"].ToString() + "</div>" +
            "</div>" + //DIV di chiusura
            "" +
            "<div style=\"padding: 0px;\" class=\"col-sm-3\">" +
            "" +
            "<div>" + //DIV di apertura
            "<div>Quantità:" + DT.Rows[i]["QTA"] + "</div>" +
            "</div>" +
            "<div>Prezzo:" + DT.Rows[i]["PREZZO"].ToString() + "€</div>" +
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



    [WebMethod/*(EnableSession = true)*/] 
    public static string Accedi(string USR, string PWD)
    {
        UTENTI U = new UTENTI();
        U.username = USR;
        U.password = PWD;
        DataTable DT = new DataTable();
        DT = U.Login();

        if (DT.Rows.Count != 0)
        {
            //HttpContext.Current.Session["chiaveUSR"] = DT.Rows[0]["chiave"];
            return "Benvenuto";
        }
        else
        {
            return "Utente non registrato";
        }
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
