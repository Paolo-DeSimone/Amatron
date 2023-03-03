using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PRODOTTI P = new PRODOTTI();
            DataTable dt = P.MAX20Novita();
            caroselNovita.InnerHtml = "";
            int caunt = dt.Rows.Count;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                caroselNovita.InnerHtml += "<div class=\"owl-item\">" +
                    "<a href = \"paginastupida.aspx?c=\">" +
                    "<div class=\"bbb_viewed_item discount d-flex flex-column align-items-center justify-content-center text-center\">" +
                    "<div class=\"bbb_viewed_image\">" +
                    "<h2>MAMMA</h2>" +
                    "</div>" +
                    "<div class=\"bbb_viewed_content text-center\">" +
                    "<div class=\"bbb_viewed_price\"></div>" +
                    "<div class=\"bbb_viewed_name\"></div>" +
                    "</div>" +
                    "<ul class=\"item_marks\">" +
                    "<li class=\"item_mark item_discount\">-25%</li>" +
                    "<li class=\"item_mark item_new\">new</li>" +
                    "</ul>" +
                    "</div>" +
                    "</a>" +
                    "</div>";
            }
            int a = 0;
        }
    }
}