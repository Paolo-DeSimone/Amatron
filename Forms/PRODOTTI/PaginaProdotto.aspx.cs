using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    PRODOTTI P = new PRODOTTI();
    CARRELLO C = new CARRELLO();

    protected void Page_Load(object sender, EventArgs e)
    {
        //P.SELECTBYKEY(SessioneChiave Qui)
        //DataTable dt = new DataTable();

        //for(int i=0; i<int.Parse(dt.Rows[0]["qta"].ToString()); i++)
        //{
        //    ddlCarrello.Attributes.Add(i.ToString(), i.ToString()); 
        //}
    }

    protected void Aggiungi()
    {   
        C.QTA = int.Parse(ddlCarrello.SelectedValue.ToString()); 
        //C.QTA = C.INSERT(chiave, C.QTA);        
    }
}