using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AD_Project
{
    public partial class admin_access : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True; Connect Timeout = 30");
            sqlConnection.Open();

            SqlCommand sqlCommand = new SqlCommand("select Password from Admin where Username = '" + username.Text + "'", sqlConnection);
            SqlDataReader dr = sqlCommand.ExecuteReader();
            bool flag = false;
            while (dr.Read())
            {
                if (dr[0].Equals(password.Text))
                {
                    flag = true;
                    Response.Redirect("approve_event.aspx");
                }
            }
            if (!flag)
            {
                text.Visible = true;
                text.Text = "Access Denied";
            }
            sqlConnection.Close();
        }
    }
}