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
    public partial class DrinksDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindList();
            }
        }

        private void BindList()
        {
            string DrinksId = Request.QueryString["Drinks_ID"];
            string connectionString = ConfigurationManager.ConnectionStrings["PepperCrownKitchen"].ConnectionString;
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionString);
            SqlDataAdapter adapter = new SqlDataAdapter("select * from Drinks where Drinks_ID = @Drinks_ID", conn);
            adapter.SelectCommand.Parameters.Add("@Drinks_ID", SqlDbType.Int);
            adapter.SelectCommand.Parameters["@Drinks_ID"].Value = DrinksId;

            adapter.Fill(ds, "Drinks");

            DrinksDetailsView.DataSource = ds;

            DrinksDetailsView.DataBind();
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