﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AMATRON_PopupPaypalAMATRON : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void payInput_ValueChanged(object sender, EventArgs e)
    {
        int totaleCarrello = int.Parse(Session["TotaleCarrello"].ToString());

        
    }
    
}