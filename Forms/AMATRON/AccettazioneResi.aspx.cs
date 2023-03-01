using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AccettazioneResi : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void grigliaResi_SelectedIndexChanged(object sender, EventArgs e)
    {
        //controllo di aver selezionato una riga
        if (grigliaResi.SelectedValue == null)
        {
            Session["chiaveResi"] = null;
            return;
        }
        //faccio la session per passare la chiave
        Session["chiaveResi"] = grigliaResi.SelectedValue.ToString();
    }

    protected void btnInvia_Click(object sender, EventArgs e)
    {
        //controlli formali
        RESI R = new RESI();
        if (Session["chiaveResi"] != null)
        {
            //preparo i dati per l'invio nel db
            R.chiave = int.Parse(Session["chiaveResi"].ToString());
            R.accettazione = bool.Parse(ddlAccettaRifiuta.SelectedValue.ToString());
            R.dataemissione = DateTime.Now.ToString();

            //inizializzo la funzione
            R.Update();

            //invio una mail al cliente con l'esito della richiesta di reso

            //mi preparo per inviare la mail al cliente
            SmtpClient client = new SmtpClient();

            //imposto il server di invio della mail
            client.Credentials = new NetworkCredential("generation@brovia.it", "!Pr0secc0!");
            client.Port = 25;
            client.Host = "brovia.it";
            client.EnableSsl = false;

            //se è stata accettata
            if (R.accettazione == true)
            {
                //imposto il messaggio
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("generation@brovia.it"); //mittente
                mail.To.Add("matteo.scarnera27@gmail.com"); //destinatario // ---!!! NECESSARIO JOIN PER RECUPERARE MAIL UTENTE !!!---
                mail.IsBodyHtml = true; //mail è scritta in html
                mail.Subject = "Richiesta Reso AMATRON approvata"; //oggetto
                                                                   //messaggio
                mail.Body = "Gentile cliente;<br/>";
                mail.Body += "La sua richiesta di reso per l'ordine /*INSERIRE NUMERO ORDINE*/ è stata accettata. Riceverà il suo rimborso a breve.<br/>";
                mail.Body += "Da AMATRON, le auguriamo una buona giornata.";


                client.Send(mail); //mando mail
            }
            //se è stata rifiutata
            else
            {
                //imposto il messaggio
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("generation@brovia.it"); //mittente
                mail.To.Add("matteo.scarnera27@gmail.com"); //destinatario // ---!!! NECESSARIO JOIN PER RECUPERARE MAIL UTENTE !!!---
                mail.IsBodyHtml = true; //mail è scritta in html
                mail.Subject = "Richiesta Reso AMATRON rifiutata"; //oggetto
                                                                   //messaggio
                mail.Body = "Gentile cliente;<br/>";
                mail.Body += "La sua richiesta di reso per l'ordine /*INSERIRE NUMERO ORDINE*/ è stata rifiutata.<br/>";
                mail.Body += "Da AMATRON, le auguriamo una buona giornata.";


                client.Send(mail); //mando mail
            }
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Reso non selezionato.');", true);
            return;
        }
    }

}