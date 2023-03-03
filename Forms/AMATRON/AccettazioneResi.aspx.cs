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
            Session["chiaveRESO"] = null;
            return;
        }
        //faccio la session per passare la chiave
        Session["chiaveRESO"] = grigliaResi.SelectedValue.ToString();
        Session["NUMEROORDINE"] = grigliaResi.SelectedRow.Cells[5].Text; //cell del numero ordine
        Session["NOMINATIVO"] = grigliaResi.SelectedRow.Cells[6].Text; //cell del nominativo
        Session["EMAIL"] = grigliaResi.SelectedRow.Cells[7].Text; //cell dell'email 
        Session["DATAEMISSIONE"] = grigliaResi.SelectedRow.Cells[12].Text;
        string chiave = Session["chiaveRESO"].ToString();
    }

    protected void btnInvia_Click(object sender, EventArgs e)
    {
        //controlli formali
        RESI R = new RESI();
        R.dataemissione = Session["DATAEMISSIONE"].ToString();
        if (Session["chiaveRESO"] != null)
        {
            //controllo per vedere se è stato già dichiarato l'esito del reso
            //se il reso è stato già accettato/negato, allora non lo vado a modificare
            //---!!! IN PROGRESS !!! ---
            //verifico se il reso è stato accettato
            if (R.accettazione == false)
            {
                //verifico se il reso è stato già emesso, indipendentemente se è stato accettato o meno
                //&nbsp; è standard per nullbreakingspace (null)
                if (R.dataemissione == "&nbsp;")
                {
                    //preparo i dati per l'invio nel db
                    R.chiave = int.Parse(Session["chiaveRESO"].ToString());
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

                    //imposto il messaggio
                    MailMessage mail = new MailMessage();
                    mail.From = new MailAddress("generation@brovia.it"); //mittente
                    mail.To.Add("'" + Session["EMAIL"].ToString() + "'"); //destinatario // ---!!! NECESSARIO JOIN PER RECUPERARE MAIL UTENTE !!!---
                    mail.IsBodyHtml = true; //mail è scritta in html

                    mail.Body = "Gentile '" + Session["NOMINATIVO"].ToString() + "'; <br/>"; //messaggio

                    //se è stata accettata
                    if (R.accettazione == true)
                    {
                        mail.Subject = "Richiesta Reso AMATRON approvata"; //oggetto
                        //messaggio
                        mail.Body += "La sua richiesta di reso per l'ordine '" + Session["NUMEROORDINE"].ToString() + "' &egrave; stata accettata. Ricever&agrave; il suo rimborso a breve.<br/>";
                        mail.Body += "Da AMATRON, le auguriamo una buona giornata.";
                    }
                    //se è stata rifiutata
                    else
                    {
                        //imposto il messaggio
                        mail.Subject = "Richiesta Reso AMATRON rifiutata"; //oggetto
                        //messaggio
                        mail.Body += "La sua richiesta di reso per l'ordine '" + Session["NUMEROORDINE"].ToString() + "' &egrave; stata rifiutata.<br/>";
                        mail.Body += "Da AMATRON, le auguriamo una buona giornata.";
                    }
                    client.Send(mail); //mando mail
                    DataBind();
                }
                //return se è stato selezionato un reso già approvato/negato
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Esito reso già dichiarato.');", true);
                    return;
                }
            }
            //return se il reso è stato già gestito
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Reso già gestito.');", true);
                return;
            }
        }
        //return se non è stato selezionato un reso
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Reso non selezionato.');", true);
            return;
        }
        //alert con avvenuto successo del reso
        ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Reso accettato.');", true);
    }
}