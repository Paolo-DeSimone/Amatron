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
        if (!IsPostBack)
        {
            Session["chiaveVenditore"] = null;
            DataTable dt = new DataTable();
            VENDITORI V = new VENDITORI();
            dt = V.SelectAll();
            grigliaVenditori.DataSource = dt;
            grigliaVenditori.DataBind();
            //grigliaVenditori.DataSourceID = "sdsVenditori";
            //grigliaVenditori.DataBind();
            Session["chiaveCorriere"] = null;
            DataTable DT = new DataTable();
            CORRIERI C = new CORRIERI();
            DT = C.CORRIERI_SelectAll();
            grigliaCorrieri.DataSource = DT;
            grigliaCorrieri.DataBind();
            //grigliaCorrieri.DataSourceID = "sdsCorrieri";
            //grigliaCorrieri.DataBind();
        }

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
        if (Session["chiaveVenditore"] == null)
        {
            string script = @"notifyError('Nessun venditore selezionato')"; //messaggio di errore
            ScriptManager.RegisterStartupScript(this, GetType(), "btnAbilitaVenditori_Click", script, true);
            return;
        }
        //istanzio l'oggetto V
        VENDITORI V = new VENDITORI();
        V.chiave = int.Parse(Session["chiaveVenditore"].ToString());
        DataTable dt = new DataTable();
        dt = V.SelectByKey();
        //prendo la chiave




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
        mail.Body = "Gentile " + V.ragionesociale + ";<br/>";
        mail.Body += "La sua richiesta per l'abilitazione &egrave; stata accettata.<br/>";
        mail.Body += "Da AMATRON, le auguriamo una buona giornata.";

        //controllo per vedere se già abilitato
        if (V.abilitato == true)
        {
            //error
            string script = @"notifyError('Venditore gia abilitato')"; //messaggio di errore
            ScriptManager.RegisterStartupScript(this, GetType(), "btnAbilitaVenditori_Click", script, true);
            return;

        }
        else
        {
            V.Abilita();
            //client.Send(mail); //mando mail
                               //error
            string script = @"notifySuccess('Venditore abilitato')"; //messaggio di successo
            ScriptManager.RegisterStartupScript(this, GetType(), "btnAbilitaVenditori_Click", script, true);

        }
        grigliaVenditori.DataSource = V.SelectAll();
        grigliaVenditori.DataBind();
        

    }
    protected void btnFiltraVenditori_Click(object sender, EventArgs e)
    {
        //if (txtFiltraVenditori.Text.Trim() == "")
        //{
        //    grigliaVenditori.DataSourceID = "sdsVenditori";
        //    grigliaVenditori.DataBind();
        //}
        //else grigliaVenditori.DataSourceID = "sdsVenditoriFiltra";
        //grigliaVenditori.DataBind();
        DataTable dt = new DataTable();
        VENDITORI V = new VENDITORI();
        V.venditore = txtFiltraVenditori.Text.Trim();
        dt = V.FiltraVenditori();

        grigliaVenditori.DataSource = dt;
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
        if (Session["chiaveCorriere"] == null)
        {
            string script = @"notifyError('Nessun corriere selezionato')"; //messaggio di errore
            ScriptManager.RegisterStartupScript(this, GetType(), "btnAbilitaCorrieri_Click", script, true);
            return;
        }
        //istanzio l'oggetto C
        CORRIERI C = new CORRIERI();
        //prendo la chiave
        
        C.chiave = int.Parse(Session["chiaveCorriere"].ToString());

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
        mail.To.Add(C.email); //destinatario // 
        mail.IsBodyHtml = true; //mail è scritta in html
        mail.Subject = "Richiesta ABILITAZIONE approvata"; //oggetto
                                                           //messaggio
        mail.Body = "Gentile " + C.ragionesociale + ";<br/>";
        mail.Body += "La sua richiesta per l'abilitazione &egrave; stata accettata.<br/>";
        mail.Body += "Da AMATRON, le auguriamo una buona giornata.";

        //controllo per vedere se già abilitato
        if (C.abilitato == true)
        {
            string script = @"notifyError('Corriere gia abilitato')"; //messaggio di errore
            ScriptManager.RegisterStartupScript(this, GetType(), "btnAbilitaCorrieri_Click", script, true);
            return;

        }
        else
        {

            C.CORRIERI_Abilita();
            //client.Send(mail); //mando mail
            string script = @"notifySuccess('Corriere abilitato')"; //messaggio di successo
            ScriptManager.RegisterStartupScript(this, GetType(), "btnAbilitaCorrieri_Click", script, true);

        }
        grigliaCorrieri.DataSource = C.CORRIERI_SelectAll();
        grigliaCorrieri.DataBind();
    }

    protected void btnFiltraCorrieri_Click(object sender, EventArgs e)
    {
        //if (txtFiltraCorrieri.Text.Trim() == "")
        //{
        //    grigliaCorrieri.DataSourceID = "sdsCorrieri";
        //    grigliaCorrieri.DataBind();
        //}
        //else grigliaCorrieri.DataSourceID = "sdsCorrieriFiltra";
        //grigliaCorrieri.DataBind();
        DataTable DT = new DataTable();
        CORRIERI C = new CORRIERI();
        C.corriere = txtFiltraCorrieri.Text.Trim();
        DT = C.FiltraCorrieri();

        grigliaCorrieri.DataSource = DT;
        grigliaCorrieri.DataBind();

    }



}