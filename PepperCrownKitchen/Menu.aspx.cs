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
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindList();

            }
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

        private void BindList()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["PepperCrownKitchen"].ConnectionString;

            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionString);
            SqlDataAdapter adapter = new SqlDataAdapter("select * from Appetizer", conn);

            adapter.Fill(ds, "Appetizer");
            AppetizerGridView.DataSource = ds;
            AppetizerGridView.DataBind();

            DataSet ds2 = new DataSet();
            SqlDataAdapter adapter2 = new SqlDataAdapter("select * from Drinks", conn);

            adapter2.Fill(ds2, "Drinks");
            DrinksGridView.DataSource = ds2;
            DrinksGridView.DataBind();

            DataSet ds3 = new DataSet();
            SqlDataAdapter adapter3 = new SqlDataAdapter("select * from MainCourse", conn);

            adapter3.Fill(ds3, "MainCourse");
            MainCourseGridView.DataSource = ds3;
            MainCourseGridView.DataBind();

            DataSet ds4 = new DataSet();
            SqlDataAdapter adapter4 = new SqlDataAdapter("select * from Dessert", conn);

            adapter4.Fill(ds4, "Dessert");
            DessertGridView.DataSource = ds4;
            DessertGridView.DataBind();

        }

    }
}