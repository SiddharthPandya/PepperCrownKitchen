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
    public partial class MainCourseDetails : System.Web.UI.Page
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
            string MainCourseId = Request.QueryString["MainCourse_ID"];
            string connectionString = ConfigurationManager.ConnectionStrings["PepperCrownKitchen"].ConnectionString;
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionString);
            SqlDataAdapter adapter = new SqlDataAdapter("select * from MainCourse where MainCourse_ID = @MainCourse_ID", conn);
            adapter.SelectCommand.Parameters.Add("@MainCourse_ID", SqlDbType.Int);
            adapter.SelectCommand.Parameters["@MainCourse_ID"].Value = MainCourseId;

            adapter.Fill(ds, "MainCourse");

            DetailsView1.DataSource = ds;

            DetailsView1.DataBind();
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