using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class ReportAMATRON : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string valore = "12, 19, 3, 5, 2, 3, 4, 8, 23, 26, 3, 16";
            Text1.Value = valore;
        }
    }

    //public static string dataMensile()
    //{
    //    string valore = "12, 19, 3, 5, 2, 3, 4, 8, 23, 26, 3, 16";
    //    return valore;
    //}
}