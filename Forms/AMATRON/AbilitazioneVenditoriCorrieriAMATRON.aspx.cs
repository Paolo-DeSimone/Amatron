using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void grigliaVenditori_SelectedIndexChanged(object sender, EventArgs e)
    {
        //controllo di aver selezionato una riga
        if (grigliaVenditori.SelectedValue == null)
        {
            Session["chiaveVenditore"] = null;
            return;
        }
        //faccio la sessio per passare la chiave
        Session["chiaveVenditore"] = grigliaVenditori.SelectedValue.ToString();
    }

    protected void btnAbilitaVenditori_Click(object sender, EventArgs e)
    {
        //prendo la chiave
        string chiave = Session["chiaveVenditore"].ToString();
        //istanzio l'oggetto AA
        VENDITORI V = new VENDITORI();
        V.chiave = Convert.ToInt32(chiave);
        //eseguo la procedure
        V.Abilita();
        grigliaVenditori.DataBind();

        //invio una mail al venditore con la conferma dell'abilitazione

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
        mail.To.Add("matteo.scarnera27@gmail.com"); //destinatario // ---!!! NECESSARIO JOIN PER RECUPERARE MAIL UTENTE !!!---
        mail.IsBodyHtml = true; //mail è scritta in html
        mail.Subject = "Richiesta ABILITAZIONE approvata"; //oggetto
                                                             //messaggio
        mail.Body = "Gentile Venditore;<br/>";
        mail.Body += "La sua richiesta per l'abilitazione è stata accettata.<br/>";
        mail.Body += "Da AMATRON, le auguriamo una buona giornata.";


        client.Send(mail); //mando mail
    }

    protected void grigliaCorrieri_SelectedIndexChanged(object sender, EventArgs e)
    {
        //controllo di aver selezionato una riga
        if (grigliaCorrieri.SelectedValue == null)
        {
            Session["chiaveCorriere"] = null;
            return;
        }
        //faccio la sessio per passare la chiave
        Session["chiaveCorriere"] = grigliaCorrieri.SelectedValue.ToString();
    }

    protected void btnAbilitaCorrieri_Click(object sender, EventArgs e)
    {
        //prendo la chiave
        string chiave = Session["chiaveCorriere"].ToString();
        //istanzio l'oggetto AA
        CORRIERI C = new CORRIERI();
        C.chiave = Convert.ToInt32(chiave);
        //eseguo la procedure
        C.CORRIERI_Abilita();
        grigliaCorrieri.DataBind();

        //invio una mail al venditore con la conferma dell'abilitazione

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
        mail.To.Add("matteo.scarnera27@gmail.com"); //destinatario // ---!!! NECESSARIO JOIN PER RECUPERARE MAIL UTENTE !!!---
        mail.IsBodyHtml = true; //mail è scritta in html
        mail.Subject = "Richiesta ABILITAZIONE approvata"; //oggetto
                                                           //messaggio
        mail.Body = "Gentile Corriere;<br/>";
        mail.Body += "La sua richiesta per l'abilitazione è stata accettata.<br/>";
        mail.Body += "Da AMATRON, le auguriamo una buona giornata.";


        client.Send(mail); //mando mail
    }
}  