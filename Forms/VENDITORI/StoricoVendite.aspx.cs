using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        GrigliaStoricoVendite.DataBind();

        if (!IsPostBack)
        {

        ddlCategoria.SelectedIndex = -1;
        }

        
    }
}