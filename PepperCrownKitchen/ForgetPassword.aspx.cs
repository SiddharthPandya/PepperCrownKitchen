using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Configuration;


namespace PepperCrownKitchen
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
        }

        protected void ButPwd_Click(object sender, EventArgs e)
        {
            string mainconn = "Data Source=PALAK\\SQLEXPRESS;Initial Catalog=PepperCrownKitchen;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlQuery = "select EmailID, Password from Customer where EmailID=@EmailID";
            SqlCommand sqlcomm = new SqlCommand(sqlQuery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@EmailID", TxtEmail.Text);
            sqlconn.Open();
            SqlDataReader dr = sqlcomm.ExecuteReader();
            if (dr.Read())
            {
                string username = dr["EmailID"].ToString();
                string password = dr["Password"].ToString();

                MailMessage mm = new MailMessage("lovejotsangha122@gmail.com", TxtEmail.Text);
                mm.Subject = "Your Password!";
                mm.Body = string.Format("Hello : {0} is your email id <br> your password is {1}", username, password);
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential nc = new NetworkCredential();
                nc.UserName = "sid.pandya66@gmail.com";
                password = "Black05Pole";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = nc;
                smtp.Port = 587;
                smtp.Send(mm);
                Labmsg.Text = "Your Password has been sent successfully";
            }
            else
            {
                Labmsg.Text = "Email ID does not Exit";
            }
        }
    }
}