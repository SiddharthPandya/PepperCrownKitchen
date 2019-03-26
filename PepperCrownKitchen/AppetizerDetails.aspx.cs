using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PepperCrownKitchen
{
    public partial class AppetizerDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
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