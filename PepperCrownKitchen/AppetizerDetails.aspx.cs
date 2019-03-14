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
            if (!IsPostBack)
            {
                BindList();
            }
        }

        private void BindList()
        {
            string AppetizerId = Request.QueryString["Appetizer_ID"];
            string connectionString = ConfigurationManager.ConnectionStrings["PepperCrownKitchen"].ConnectionString;
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionString);
            SqlDataAdapter adapter = new SqlDataAdapter("select * from Appetizer where Appetizer_ID = @Appetizer_ID", conn);
            adapter.SelectCommand.Parameters.Add("@Appetizer_ID", SqlDbType.Int);
            adapter.SelectCommand.Parameters["@Appetizer_ID"].Value = AppetizerId;

            adapter.Fill(ds, "Appetizer");

            AppetizerDetailsView.DataSource = ds;

            AppetizerDetailsView.DataBind();
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