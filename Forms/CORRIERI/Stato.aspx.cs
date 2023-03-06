using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void grdSTATO_SelectedIndexChanged(object sender, EventArgs e)
    {
        string chiave = grdSTATO.SelectedValue.ToString();

       SPEDIZIONI SPE = new SPEDIZIONI();
       SPE.chiave = int.Parse(chiave);
        
    }

    protected void btnStato_Click(object sender, EventArgs e)
    {
        string chiave = grdSTATO.SelectedValue.ToString();
        SPEDIZIONI SPE = new SPEDIZIONI();
        SPE.chiave = int.Parse(chiave);
    }
}