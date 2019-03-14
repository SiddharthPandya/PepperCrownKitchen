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
    public partial class AddFood : System.Web.UI.Page
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
            string connectionString = ConfigurationManager.ConnectionStrings["PepperCrownKitchen"].ConnectionString;

            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionString);
            SqlDataAdapter adapter = new SqlDataAdapter("select * from Appetizer", conn);

            adapter.Fill(ds, "Appetizer");
            addFoodGridView.DataSource = ds;
            addFoodGridView.DataBind();

            DataSet ds2 = new DataSet();
            SqlDataAdapter adapter2 = new SqlDataAdapter("select * from Drinks", conn);

            adapter2.Fill(ds2, "Drinks");
            addDrinks.DataSource = ds2;
            addDrinks.DataBind();

            DataSet ds3 = new DataSet();
            SqlDataAdapter adapter3 = new SqlDataAdapter("select * from MainCourse", conn);

            adapter3.Fill(ds3, "MainCourse");
            addMainCourse.DataSource = ds3;
            addMainCourse.DataBind();

            DataSet ds4 = new DataSet();
            SqlDataAdapter adapter4 = new SqlDataAdapter("select * from Dessert", conn);

            adapter4.Fill(ds4, "Dessert");
            addDessert.DataSource = ds4;
            addDessert.DataBind();

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

        protected void nextButton_Click(object sender, EventArgs e)
        {
            TextBox txtappetizer0 = (TextBox)addFoodGridView.Rows[0].FindControl("quantity");
            TextBox txtappetizer1 = (TextBox)addFoodGridView.Rows[1].FindControl("quantity");
            TextBox txtappetizer2 = (TextBox)addFoodGridView.Rows[2].FindControl("quantity");
            TextBox txtappetizer3 = (TextBox)addFoodGridView.Rows[3].FindControl("quantity");

            TextBox txtMainCourse0 = (TextBox)addMainCourse.Rows[0].FindControl("quantityMainCourse");
            TextBox txtMainCourse1 = (TextBox)addMainCourse.Rows[1].FindControl("quantityMainCourse");
            TextBox txtMainCourse2 = (TextBox)addMainCourse.Rows[2].FindControl("quantityMainCourse");
            TextBox txtMainCourse3 = (TextBox)addMainCourse.Rows[3].FindControl("quantityMainCourse");

            TextBox txtDrinks0 = (TextBox)addDrinks.Rows[0].FindControl("quantityDrinks");
            TextBox txtDrinks1 = (TextBox)addDrinks.Rows[1].FindControl("quantityDrinks");
            TextBox txtDrinks2 = (TextBox)addDrinks.Rows[2].FindControl("quantityDrinks");
            TextBox txtDrinks3 = (TextBox)addDrinks.Rows[3].FindControl("quantityDrinks");
            TextBox txtDrinks4 = (TextBox)addDrinks.Rows[4].FindControl("quantityDrinks");
            TextBox txtDrinks5 = (TextBox)addDrinks.Rows[5].FindControl("quantityDrinks");
            TextBox txtDrinks6 = (TextBox)addDrinks.Rows[6].FindControl("quantityDrinks");

            TextBox txtDessert0 = (TextBox)addDessert.Rows[0].FindControl("quantityDessert");
            TextBox txtDessert1 = (TextBox)addDessert.Rows[1].FindControl("quantityDessert");
            TextBox txtDessert2 = (TextBox)addDessert.Rows[2].FindControl("quantityDessert");
            TextBox txtDessert3 = (TextBox)addDessert.Rows[3].FindControl("quantityDessert");
            TextBox txtDessert4 = (TextBox)addDessert.Rows[4].FindControl("quantityDessert");
            TextBox txtDessert5 = (TextBox)addDessert.Rows[5].FindControl("quantityDessert");

            if (txtappetizer0.Text == "0" && txtappetizer1.Text == "0" && txtappetizer2.Text == "0" && txtappetizer3.Text == "0" && txtMainCourse0.Text == "0" && txtMainCourse1.Text == "0" && txtMainCourse2.Text == "0" && txtMainCourse3.Text == "0" && txtDrinks0.Text == "0" && txtDrinks1.Text == "0" && txtDrinks2.Text == "0" && txtDrinks3.Text == "0" && txtDrinks4.Text == "0" && txtDrinks5.Text == "0" && txtDrinks6.Text == "0" && txtDessert0.Text == "0" && txtDessert1.Text == "0" && txtDessert2.Text == "0" && txtDessert3.Text == "0" && txtDessert4.Text == "0" && txtDessert5.Text == "0")
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Select Atleast 1 item to place an order')</script>");
            }
            else
                Response.Redirect("Payment.aspx");
            
        }
    }
}