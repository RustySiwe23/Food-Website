using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class MasterPage : System.Web.UI.MasterPage
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        string activePage = Request.RawUrl;
        if (activePage.Contains("Home.aspx"))
        {
            this.Menu2.Items[0].Selected = true;
        }
        if (activePage.Contains("Favourites.aspx"))
        {
            this.Menu2.Items[2].Selected = true;
        }
        if (activePage.Contains("Recipes.aspx"))
        {
            this.Menu2.Items[1].Selected = true;
        }
    }
}
