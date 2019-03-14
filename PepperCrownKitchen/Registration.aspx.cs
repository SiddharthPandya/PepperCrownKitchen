using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PepperCrownKitchen
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void ddlGender_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string FN = txtFirstName.Text;
            string LN = txtLastName.Text;
            string GN = ddlGender.SelectedValue;
            string EMID = txtEmailID.Text;
            string USNM = txtRegUsername.Text;
            string PASS = txtRegPassword.Text;
            string ADD = txtAddress.Text;
            string PRO = txtProvince.Text;
            string CTY = txtCity.Text;
            string PC = txtPostalCode.Text;
            string constring = ConfigurationManager.ConnectionStrings["PepperCrownKitchen"].ConnectionString;
            SqlConnection cn = new SqlConnection(constring);
            SqlCommand cmd = new SqlCommand("Insert into Customer values(@FN,@LN,@GN,@EMID,@USNM,@PASS,@ADD,@PRO,@CTY,@PC)", cn);
            cmd.Parameters.AddWithValue("@FN", FN);
            cmd.Parameters.AddWithValue("@LN", LN);
            cmd.Parameters.AddWithValue("@GN", GN);
            cmd.Parameters.AddWithValue("@EMID", EMID);
            cmd.Parameters.AddWithValue("@USNM", USNM);
            cmd.Parameters.AddWithValue("@PASS", PASS);
            cmd.Parameters.AddWithValue("@ADD", ADD);
            cmd.Parameters.AddWithValue("@PRO", PRO);
            cmd.Parameters.AddWithValue("@CTY", CTY);
            cmd.Parameters.AddWithValue("@PC", PC);
            cn.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Registeration Successful!')</script>");
            cn.Close();
            FormsAuthentication.RedirectFromLoginPage(USNM, false);
            Response.Redirect("Home.aspx");
        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            //FormsAuthentication.SignOut();
            string SelectTheme = Session["Theme"] as string;
            if (SelectTheme == null)
            {
                SelectTheme = "Dark";
            }
            Page.Theme = SelectTheme;
        }

    }
}