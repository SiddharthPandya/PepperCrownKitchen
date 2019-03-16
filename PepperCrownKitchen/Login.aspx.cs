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
    public partial class Login : System.Web.UI.Page
    {

        public static string txtInput = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

            FormsAuthentication.SignOut();
           
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            setImage();
        }

        private void setImage()
        {
            Random rand = new Random();
            int image = rand.Next(1, 3);
            Image1.ImageUrl = "~/Images/" + image.ToString() + ".jpg";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string constring = ConfigurationManager.ConnectionStrings["PepperCrownKitchen"].ConnectionString;
            SqlConnection cn = new SqlConnection(constring);
            SqlCommand cmd = new SqlCommand("Select Username, Password from Customer where Username=@CustId and Password=@Password", cn);
            cmd.Parameters.AddWithValue("@CustId", txtUsername.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            cn.Open();
            //if(txtUsername.Text=="username" && txtPassword.Text == "password")
            //{
            //    FormsAuthentication.RedirectFromLoginPage(txtUsername.Text, false);
            //    Response.Redirect("Home.aspx");
            //}
            if (cmd.ExecuteScalar() != null)
            {
                FormsAuthentication.RedirectFromLoginPage(txtUsername.Text, false);
                Response.Write("<script LANGUAGE='JavaScript' >alert('Log in Succesful')</script>");
                
                txtInput = txtUsername.Text;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Login Failed!Try Again!')</script>");
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            FormsAuthentication.RedirectFromLoginPage(txtUsername.Text, false);
            Response.Redirect("Registration.aspx");
        }

        protected void btnForgetPassword_Click(object sender, EventArgs e)
        {
            FormsAuthentication.RedirectFromLoginPage(txtUsername.Text, false);
            Response.Redirect("ForgetPassword.aspx");
        }

        protected void btnEmpLogin_Click(object sender, EventArgs e)
        {
            string constring = ConfigurationManager.ConnectionStrings["PepperCrownKitchen"].ConnectionString;
            SqlConnection cn = new SqlConnection(constring);
            SqlCommand cmd = new SqlCommand("Select Username, Password from Employee where Username=@CustId and Password=@Password", cn);
            cmd.Parameters.AddWithValue("@CustId", txtUsername.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            cn.Open();
            //if(txtUsername.Text=="username" && txtPassword.Text == "password")
            //{
            //    FormsAuthentication.RedirectFromLoginPage(txtUsername.Text, false);
            //    Response.Redirect("Home.aspx");
            //}
            if (cmd.ExecuteScalar() != null)
            {
                FormsAuthentication.RedirectFromLoginPage(txtUsername.Text, false);
                Response.Write("<script LANGUAGE='JavaScript' >alert('Log in Succesful')</script>");

                txtInput = txtUsername.Text;
                Response.Redirect("EmployeeSide.aspx");
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Login Failed!Try Again!')</script>");
            }
        }
    }
}