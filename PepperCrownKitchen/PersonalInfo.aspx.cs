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
    public partial class Contact : System.Web.UI.Page
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
            string getUsername = string.Empty;
            getUsername = Login.txtInput;

            string connectionString = ConfigurationManager.ConnectionStrings["PepperCrownKitchen"].ConnectionString;
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionString);

            SqlDataAdapter adapter = new SqlDataAdapter("select * from Customer where Username = @Username", conn);
            adapter.SelectCommand.Parameters.Add("@Username", SqlDbType.NVarChar, 50);
            adapter.SelectCommand.Parameters["@Username"].Value = getUsername;

            adapter.Fill(ds, "Customer");

            userDetailsView.DataSource = ds;

            userDetailsView.DataBind();
        }

        protected void userDetailsView_ModeChanging(object sender, DetailsViewModeEventArgs e)
        {
            userDetailsView.ChangeMode(e.NewMode);
            BindList();
        }

        protected void userDetailsView_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            TextBox txtNewFirstName = (TextBox)userDetailsView.FindControl("txtEditFirstName");
            TextBox txtNewLastName = (TextBox)userDetailsView.FindControl("txtEditLastName");
            DropDownList ddlNewGender = (DropDownList)userDetailsView.FindControl("ddlEditGender");
            TextBox txtNewEmailID = (TextBox)userDetailsView.FindControl("txtEditEmailID");
            TextBox txtNewUsername = (TextBox)userDetailsView.FindControl("txtEditUsername");
            TextBox txtNewPassword = (TextBox)userDetailsView.FindControl("txtEditPassword");
            TextBox txtNewAddress = (TextBox)userDetailsView.FindControl("txtEditAddress");
            TextBox txtNewProvince = (TextBox)userDetailsView.FindControl("txtEditProvince");
            TextBox txtNewCity = (TextBox)userDetailsView.FindControl("txtEditCity");
            TextBox txtNewPostalCode = (TextBox)userDetailsView.FindControl("txtEditPostalCode");

            string NewFirstName = txtNewFirstName.Text;
            string NewLastName = txtNewLastName.Text;
            string NewGender = ddlNewGender.Text;
            string NewEmailID = txtNewEmailID.Text;
            string NewUsername = txtNewUsername.Text;
            string NewPassword = txtNewPassword.Text;
            string NewAddress = txtNewAddress.Text;
            string NewProvince = txtNewProvince.Text;
            string NewCity = txtNewCity.Text;
            string NewPostalCode = txtNewPostalCode.Text;

            string getUsername = string.Empty;
            getUsername = Login.txtInput;

            SqlConnection conn;
            SqlCommand comm;
            string connectionString = ConfigurationManager.ConnectionStrings["PepperCrownKitchen"].ConnectionString;
            conn = new SqlConnection(connectionString);
            string sqlString = "update Customer set FirstName=@FirstName, LastName=@LastName, Gender=@Gender, EmailID=@EmailID, Username=@Username, Password=@Password, Address=@Address, Province=@Province, City=@City, PostalCode=@PostalCode where Username=@UN";

            comm = new SqlCommand(sqlString, conn);

            comm.Parameters.Add("@UN", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@UN"].Value = getUsername;

            comm.Parameters.Add("@FirstName", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@FirstName"].Value = NewFirstName;
            comm.Parameters.Add("@LastName", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@LastName"].Value = NewLastName;
            comm.Parameters.Add("@Gender", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@Gender"].Value = NewGender;
            comm.Parameters.Add("@EmailID", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@EmailID"].Value = NewEmailID;
            comm.Parameters.Add("@Username", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@Username"].Value = NewUsername;
            comm.Parameters.Add("@Password", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@Password"].Value = NewPassword;
            comm.Parameters.Add("@Address", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@Address"].Value = NewAddress;
            comm.Parameters.Add("@Province", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@Province"].Value = NewProvince;
            comm.Parameters.Add("@City", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@City"].Value = NewCity;
            comm.Parameters.Add("@PostalCode", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@PostalCode"].Value = NewPostalCode;

            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {

            }
            finally
            {
                conn.Close();
            }
            userDetailsView.ChangeMode(DetailsViewMode.ReadOnly);
            BindList();
        }
    }
}