using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
            if (Request.QueryString["msg"] == "success")
            {
                string script = @"notifySuccess('Registrato con successo!')";
                ScriptManager.RegisterStartupScript(this, GetType(), "ShowSuccessNotification", script, true);
                return;
            }
    }
}