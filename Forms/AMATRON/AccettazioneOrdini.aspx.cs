using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void grigliaOrdini_SelectedIndexChanged(object sender, EventArgs e)
    {
        //memorizzo la chiave del row selezionato
        ORDINI O= new ORDINI();    
        O.chiave = int.Parse(grigliaOrdini.SelectedValue.ToString());
    }


    protected void btnInvia_Click(object sender, EventArgs e)
    {
        //controlli formali
        ORDINI O = new ORDINI();
        if (O.chiave.ToString() != null)
        {
            //preparo i dati per l'invio nel db

            //O.ACCETTAZIONE = bool.Parse(ddlAccettaRifiuta.SelectedValue.ToString());
            //O.DATAEMISSIONE = DateTime.Now.ToString();
            O.Update();

            //invio una mail al cliente con la conferma dell'ordine

            //mi preparo per inviare la mail al cliente
            SmtpClient client = new SmtpClient();

            //se è stata accettata
            if (O.ACCETTAZIONE == true)
            {

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
                mail.Subject = "Richiesta ORDINE AMATRON approvata"; //oggetto
                                                                   //messaggio
                mail.Body = "Gentile cliente;<br/>";
                mail.Body = "La sua richiesta per l'Ordine /*INSERIRE NUMERO ORDINE*/ è stata accettata. Riceverà il suo ordine a breve.<br/>";
                mail.Body = "Da AMATRON, le auguriamo una buona giornata.";


                client.Send(mail); //mando mail
            }
            //se è stata rifiutata
            else
            {
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
                mail.Subject = "Richiesta ORDINE AMATRON rifiutata"; //oggetto
                                                                   //messaggio
                mail.Body = "Gentile cliente;<br/>";
                mail.Body = "La sua richiesta per l'Ordine /*INSERIRE NUMERO ORDINE*/ è stata rifiutata.<br/>";
                mail.Body = "Da AMATRON, le auguriamo una buona giornata.";


                client.Send(mail); //mando mail
            }
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Ordine non selezionato.');", true);
            return;
        }
    }
}