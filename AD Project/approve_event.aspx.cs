using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AD_Project
{
    public partial class approve_event : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True; Connect Timeout = 30");
            sqlConnection.Open();

            SqlCommand sqlCommand = new SqlCommand("select * from Event", sqlConnection);
            GridView1.DataSource = sqlCommand.ExecuteReader();
            GridView1.DataBind();
            sqlConnection.Close();
        }
        protected void OnRowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
                e.Row.Attributes["style"] = "cursor:pointer";
            }
        }
        protected void OnSelectedIndexChanged(object sender, EventArgs e)
        {
            approved.Visible = true;
            SqlConnection sqlConnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True; Connect Timeout = 30");
            sqlConnection.Open();

            int index = GridView1.SelectedRow.RowIndex;
            string name = GridView1.SelectedRow.Cells[2].Text;
            string host = GridView1.SelectedRow.Cells[6].Text;
            string message = "Row Index: " + (index + 1) + "\\nEvent Name: " + name + "\\nHost: " + host + "\\nData Approved";            

            SqlCommand sqlCommand = new SqlCommand("insert into Approve_event (Event) values ('" + name + "')", sqlConnection);
            SqlCommand sqlCommand1 = new SqlCommand("delete from [Event] where Event_name = ('"+name+"')",sqlConnection);
            sqlCommand.ExecuteNonQuery();
            sqlCommand1.ExecuteNonQuery();
            sqlConnection.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
            Response.Redirect("approve_event.aspx");
        }
    }
}
