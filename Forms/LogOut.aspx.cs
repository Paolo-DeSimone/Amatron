using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms_LogOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Clear();

        foreach(String key in Session.Keys)
        {
            Session[key] = null;
        }

        Response.Redirect("/Forms/Homepage.aspx");
    }
}