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


    //protected void grigliaOrdini_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    //controllo di aver selezionato una riga
    //    if (grigliaOrdini.SelectedValue == null)
    //    {
    //        Session["chiaveORDINE"] = null;
    //        return;
    //    }
    //    //faccio la session per passare la chiave
    //    Session["chiaveORDINE"] = grigliaOrdini.SelectedValue.ToString();
    //    Session["NUMEROORDINE"] = grigliaOrdini.SelectedRow.Cells[6].Text; //cell del numero ordine
    //    Session["NOMINATIVO"] = grigliaOrdini.SelectedRow.Cells[].Text; //cell del nominativo
    //    Session["EMAIL"] = grigliaOrdini.SelectedRow.Cells[].Text; //cell dell'email 
    //    Session["GESTITO"] = grigliaOrdini.SelectedRow.Cells[7].Text; //cell della data emissione
    //}

    ////funzione per controllare se il l'ordine selezionato è già stato gestito o meno
    ////a seconda del contenuto della string restituta da controlloOrdine()
    ////l'accettazione/rifiuto dell'ordine va a buon fine o meno, e restituisce un alert con contenuto
    ////a seconda della situazione presentata
    //protected string controlloOrdine()
    //{
    //    //controlli formali
    //    ORDINI O = new ORDINI();
    //    //controllo per verificare se è stata selezionato un ordine dalla GridView
    //    if (Session["chiaveORDINE"] != null)
    //    {
    //        //controllo per vedere se è stato già gestito l'ordine
    //        //se l'ordine è già stato gestito, allora non lo vado a modificare
    //        //verifico se l'ordine è stato gestito
    //        if (O.gestito == true)
    //        {
    //            //verifico se all'ordine è 
    //            //questo controllo extra è necessario per essere sicuri di non andare a modificare un reso già gestito
    //            //&nbsp; è standard per nullbreakingspace (null) (workaround per variabili nella classe RESI settate male)
    //            if (R.dataemissione == "&nbsp;")
    //            {
    //                return "Ordine dichiarato.";
    //            }
    //            //return se è stato selezionato un ordine già gestito
    //            else
    //            {
    //                return "Ordine già gestito.";
    //            }
    //        }
    //        //return se l'ordine è stato già gestito
    //        else
    //        {
    //            return "Ordine già gestito.";
    //        }
    //    }
    //    //return se non è stato selezionato un ordine
    //    else
    //    {
    //        return "Ordine non selezionato.";
    //    }
    //}

    ////funzione per l'update sul db di RESI
    ////gli passo il valore bool accettazione che varia a seconda del button premuto dall'utente
    //protected void resoUpdate(bool accettazione)
    //{
    //    RESI R = new RESI();
    //    //preparo i dati per l'invio nel db
    //    R.chiave = int.Parse(Session["chiaveRESO"].ToString());
    //    R.dataemissione = DateTime.Now.ToString();
    //    R.accettazione = accettazione;
    //    //inizializzo la funzione
    //    R.Update();
    //}

    ////pulsante per accettazione del reso
    //protected void btnAccetta_Click(object sender, EventArgs e)
    //{
    //    //memorizzo nella stringa reso la string restituita da controlloReso()
    //    string reso = controlloReso();
    //    //se controllo reso restituisce reso dichiarato, cioè il reso non è stato gestito, allora Update del db
    //    if (reso == "Reso dichiarato.")
    //    {
    //        RESI R = new RESI();
    //        //accettazione = true perché è il button accetta
    //        R.accettazione = true;
    //        //passo in resoUpdate il valore di sopra
    //        resoUpdate(R.accettazione);
    //        //mando la mail al cliente
    //        mail(R.accettazione);
    //        DataBind();
    //    }
    //    //alert con il risultato di controlloReso() memorizzato nella string reso
    //    ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('" + reso + "');", true);
    //}

    //protected void btnRifiuta_Click(object sender, EventArgs e)
    //{
    //    //memorizzo nella stringa reso la string restituita da controlloReso()
    //    string reso = controlloReso();
    //    //se controllo reso restituisce reso dichiarato, cioè il reso non è stato gestito, allora Update del db
    //    if (reso == "Reso dichiarato.")
    //    {
    //        RESI R = new RESI();
    //        //accettazione = false perché è il button Rifiuta
    //        R.accettazione = false;
    //        //passo in resoUpdate il valore di sopra
    //        resoUpdate(R.accettazione);
    //        //mando la mail al cliente
    //        mail(R.accettazione);
    //        DataBind();
    //    }
    //    //alert con il risultato di controlloReso() memorizzato nella string reso
    //    ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('" + reso + "');", true);
    //}

    ////funzione per mandare una mail al cliente con la revisione del reso
    //protected void mail(bool accettazione)
    //{
    //    //mi preparo per inviare la mail al cliente
    //    SmtpClient client = new SmtpClient();

    //    //imposto il server di invio della mail
    //    client.Credentials = new NetworkCredential("generation@brovia.it", "!Pr0secc0!");
    //    client.Port = 25;
    //    client.Host = "brovia.it";
    //    client.EnableSsl = false;

    //    //imposto il messaggio
    //    MailMessage mail = new MailMessage();
    //    mail.From = new MailAddress("generation@brovia.it"); //mittente
    //    mail.To.Add("'" + Session["EMAIL"].ToString() + "'"); //destinatario, mi prendo la mail del cliente dalla row selezionata della GridView
    //    mail.IsBodyHtml = true; //mail è scritta in html

    //    mail.Body = "Gentile '" + Session["NOMINATIVO"].ToString() + "'; <br/>"; //messaggio, inserisco il nominativo del cliente dalla row selezionata della GridView

    //    //se è stata accettata
    //    if (accettazione == true)
    //    {
    //        mail.Subject = "Richiesta Reso AMATRON approvata"; //oggetto
    //                                                           //messaggio, mando il numero d'ordine gestito al cliente
    //        mail.Body += "La sua richiesta di reso per l'ordine '" + Session["NUMEROORDINE"].ToString() + "' &egrave; stata accettata. Ricever&agrave; il suo rimborso a breve.<br/>";
    //        mail.Body += "Da AMATRON, le auguriamo una buona giornata.";
    //    }
    //    //se è stata rifiutata
    //    else
    //    {
    //        //imposto il messaggio
    //        mail.Subject = "Richiesta Reso AMATRON rifiutata"; //oggetto
    //                                                           //messaggio, mando il numero d'ordine gestito al cliente
    //        mail.Body += "La sua richiesta di reso per l'ordine '" + Session["NUMEROORDINE"].ToString() + "' &egrave; stata rifiutata.<br/>";
    //        mail.Body += "Da AMATRON, le auguriamo una buona giornata.";
    //    }
    //    client.Send(mail); //mando mail
    //}
}