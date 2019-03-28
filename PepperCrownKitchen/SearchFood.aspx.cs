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
    public partial class SearchFood : System.Web.UI.Page
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

        protected void searchSubmit_Click(object sender, EventArgs e)
        {
            string food = ddlFoodItem.SelectedValue;

            string connectionString = ConfigurationManager.ConnectionStrings["PepperCrownKitchen"].ConnectionString;
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionString);
            SqlDataAdapter adapter;
            adapter = new SqlDataAdapter("SELECT * FROM " + food, conn);
            //adapter.SelectCommand.Parameters.Add("@Item", SqlDbType.NVarChar);
            //adapter.SelectCommand.Parameters["@Item"].Value = food;

            adapter.Fill(ds, "Appetizer");
            searchGridView.DataSource = ds;
            searchGridView.DataBind();
        }

        protected void searchChef_Click(object sender, EventArgs e)
        {
            string chef = ddlChef.SelectedValue;

            string connectionString = ConfigurationManager.ConnectionStrings["PepperCrownKitchen"].ConnectionString;
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionString);
            SqlDataAdapter adapter;
            adapter = new SqlDataAdapter("SELECT * FROM MainCourse where Chef=@Chef", conn);
            adapter.SelectCommand.Parameters.Add("@Chef", SqlDbType.NVarChar);
            adapter.SelectCommand.Parameters["@Chef"].Value = chef;

            adapter.Fill(ds, "Chef");
            searchGridView.DataSource = ds;
            searchGridView.DataBind();
        }

    }
}