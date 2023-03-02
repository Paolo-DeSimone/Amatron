using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlTypes;
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
        //faccio la session per passare la chiave
        Session["chiaveVenditore"] = grigliaVenditori.SelectedValue.ToString();
        //faccio la session per passare il campo abilitato
    }

    protected void btnAbilitaVenditori_Click(object sender, EventArgs e)
    {
        
        //istanzio l'oggetto V
        VENDITORI V = new VENDITORI();
        //prendo la chiave
        V.chiave = int.Parse(Session["chiaveVenditore"].ToString());

        DataTable dt = new DataTable();
        dt = V.SelectByKey();
        V.abilitato = Convert.ToBoolean(dt.Rows[0]["ABILITATO"].ToString());
        V.email = dt.Rows[0]["EMAIL"].ToString();
        V.ragionesociale = dt.Rows[0]["RAGIONESOCIALE"].ToString();
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
        mail.To.Add(V.email); //destinatario // 
        mail.IsBodyHtml = true; //mail è scritta in html
        mail.Subject = "Richiesta ABILITAZIONE approvata"; //oggetto
                                                           //messaggio
        mail.Body = "Gentile "+V.ragionesociale+";<br/>";
        mail.Body += "La sua richiesta per l'abilitazione &egrave; stata accettata.<br/>";
        mail.Body += "Da AMATRON, le auguriamo una buona giornata.";

        //controllo per vedere se già abilitato
        if (V.abilitato == true)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Venditore già abilitato');", true);
            return;
            
        }
        else 
        {
            V.Abilita();
            client.Send(mail); //mando mail
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Venditore abilitato');", true);
            
        }
        grigliaVenditori.DataBind();


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
        //istanzio l'oggetto C
        CORRIERI C = new CORRIERI();
        C.chiave = Convert.ToInt32(chiave);

        DataTable dt = new DataTable();
        dt = C.CORRIERI_SelectByKey();
        C.abilitato = Convert.ToBoolean(dt.Rows[0]["ABILITATO"].ToString());
        C.email = dt.Rows[0]["EMAIL"].ToString();
        C.ragionesociale = dt.Rows[0]["RAGIONESOCIALE"].ToString();

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
        mail.To.Add("fera.marco92@gmail.com"); //destinatario // 
        mail.IsBodyHtml = true; //mail è scritta in html
        mail.Subject = "Richiesta ABILITAZIONE approvata"; //oggetto
                                                           //messaggio
        mail.Body = "Gentile "+C.ragionesociale+";<br/>";
        mail.Body += "La sua richiesta per l'abilitazione &egrave; stata accettata.<br/>";
        mail.Body += "Da AMATRON, le auguriamo una buona giornata.";

        //controllo per vedere se già abilitato
        if (C.abilitato == true)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Venditore già abilitato');", true);
            return;

        }
        else
        {
            
            C.CORRIERI_Abilita();
            client.Send(mail); //mando mail
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Venditore abilitato');", true);

        }
        grigliaCorrieri.DataBind();
    }
}