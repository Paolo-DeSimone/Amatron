using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnModifica_Click(object sender, EventArgs e)
    {
        //leggo la pwd dal db in base all'utente loggato
        //select password from utenti...
        //invio la mail all'utente con la pass 
        //notify mail inviata
        //torna alla home
        if (txtEmail.Text.Trim() == "")
        {
            string scriptErr = @"notifyError('Riempi tutti i campi!')"; //messaggio di errore
            ScriptManager.RegisterStartupScript(this, GetType(), "btnModifica_Click", scriptErr, true);
            return;
        }

        LOGIN L = new LOGIN();
        DataTable dt = new DataTable();
        dt = L.RecuperaPassword(txtEmail.Text.Trim());

        if (dt.Rows.Count == 0)
        {
            string scriptErr = @"notifyError('Email non registrata!')"; //messaggio di errore
            ScriptManager.RegisterStartupScript(this, GetType(), "btnModifica_Click", scriptErr, true);
            return;
        }
        string password = dt.Rows[0]["PWD"].ToString();

        //mi preparo per inviare la mail al venditore
        SmtpClient client = new SmtpClient();

        //imposto il server di invio della mail
        client.Credentials = new NetworkCredential("generation@brovia.it", "!Pr0secc0!");
        client.Port = 25;
        client.Host = "brovia.it";
        client.EnableSsl = false;

        //imposto il messaggio
        MailMessage mail = new MailMessage();
        mail.From = new MailAddress("generation@brovia.it"); //mittente
        mail.To.Add(txtEmail.Text.Trim()); //destinatario // 
        mail.IsBodyHtml = true; //mail è scritta in html
        mail.Subject = "Recupera PASSWORD"; //oggetto
                                            //messaggio
        mail.Body = "Gentile Utente;<br/>";
        mail.Body += "La sua password &egrave; " + password + ";<br/>";
        mail.Body += "Da AMATRON, le auguriamo una buona giornata.";

        client.Send(mail); //mando mail
        string script = @"notifySuccess('Email inviata correttamente!')"; //messaggio di errore
        ScriptManager.RegisterStartupScript(this, GetType(), "btnModifica_Click", script, true);
        Response.Redirect("Forms/Homepage.aspx");




    }
}