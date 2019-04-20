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
    public partial class EmployeeSide : System.Web.UI.Page
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
            SqlDataAdapter adapter = new SqlDataAdapter("select * from Customer", conn);

            adapter.Fill(ds, "Customer");
            customerDetails.DataSource = ds;
            customerDetails.DataBind();

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

        protected void customerDetails_SelectedIndexChanged(object sender, EventArgs e)
        {
            //int index = customerDetails.SelectedIndex;
            string ii = customerDetails.SelectedRow.Cells[0].Text;
            //int Id = Convert.ToInt32(customerDetails.DataKeys[index].Value);
            SqlConnection conn;
            SqlCommand comm;
            string connectionString = ConfigurationManager.ConnectionStrings["PepperCrownKitchen"].ConnectionString;
            conn = new SqlConnection(connectionString);
            comm = new SqlCommand("DELETE FROM Customer where CustomerID=@CustomerID", conn);
            comm.Parameters.Add("@CustomerID", System.Data.SqlDbType.Int);
            comm.Parameters["@CustomerID"].Value = ii;
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
                //errorLabel.Visible = true;
                //errorLabel.Text = "Customer Deleted!<br />";
            }
            catch
            {
                //errorLabel.Visible = true;
                //errorLabel.Text = "Error deleting customer!<br />";
            }
            finally
            {
                conn.Close();
                Response.Redirect("EmployeeSide.aspx");
            }
            BindList();
        }

    }
}