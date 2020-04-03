using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AD_Project
{
    public partial class Event_organize : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void submit_Click(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\SEM 4 PRACTICALS\AD\AD Project\App_Data\Database1.mdf;Integrated Security=True");
            sqlConnection.Open();

            SqlCommand sqlCommand = new SqlCommand("insert into Event (Event_name,Email1,Email2,Description,Host,Fee,Date,Time,Venue) values ('" + eventname.Text + "','" + mailto.Text + "','" + another.Text + "','" + description.Text + "','" + hostname.Text + "','" + fee.Text + "','" + date.Text + "','" + time.Text + "','" + venue.Text + "')", sqlConnection);
            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
            Response.Redirect("home.aspx");
        }
        protected void multiple_email_Click(object sender, EventArgs e)
        {
            another.Visible = true;
            multiple_email.Visible = false;
        }
    }
}