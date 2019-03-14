using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PepperCrownKitchen
{
    public partial class Setup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Dark_Click(object sender, EventArgs e)
        {
            Session["Theme"] = "Dark";
            Response.Redirect("Setup.aspx");
        }

        protected void Light_Click(object sender, EventArgs e)
        {
            Session["Theme"] = "Light";
            Response.Redirect("Setup.aspx");
        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            string SelectTheme = Session["Theme"] as string;
            if (SelectTheme == null)
            {
                SelectTheme = "Dark";
            }
            Page.Theme = SelectTheme;
        }
    }
}