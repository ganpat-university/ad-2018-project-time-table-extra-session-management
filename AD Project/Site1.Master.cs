using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace AD_Project
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label mylab = new Label();
            if(!IsPostBack)
            {
                logout.Visible = false;
                SqlConnection sqlConnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True; Connect Timeout = 30");
                sqlConnection.Open();

                SqlCommand sqlCommand = new SqlCommand("select Event from Approve_event where Event is NOT NULL", sqlConnection);
                GridView1.DataSource = sqlCommand.ExecuteReader();
                GridView1.DataBind();
                sqlConnection.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            logout.Visible = true;
            contentcontainer.Style.Add(HtmlTextWriterStyle.Width,"150%");
            SqlConnection sqlConnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True; Connect Timeout = 30");
            sqlConnection.Open();

            SqlCommand sqlCommand = new SqlCommand("select password from login where email = '"+email.Text+"'", sqlConnection);
            SqlDataReader dr = sqlCommand.ExecuteReader();
            bool flag = false;
            while(dr.Read())
            {
                if(dr[0].Equals(password.Text))
                {
                    Session["username"] = email.Text;
                    flag = true;
                    commoncolumn.Visible = false;
                    logout.Visible.Equals(true);
                    Button1.CssClass = "new_css";
                }
                else
                {
                    error.Text = ("UserName or Password does not Exist");
                }
            }
            if(!flag)
            {
                Response.Redirect("home.aspx");
            }
            sqlConnection.Close(); 
        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
                e.Row.Attributes["style"] = "cursor:pointer";
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("email.aspx");
        }
            protected void button_Click(object sender, EventArgs e)
        {
            string a = "";
            Session["username"] = a;
            Response.Redirect("home.aspx");
            title_user.Visible = false;
        }

        protected void event_organize_Click(object sender, EventArgs e)
        {
            Response.Redirect("Event_organize.aspx");
            contentcontainer.Style.Add(HtmlTextWriterStyle.Width, "150%");
            commoncolumn.Visible = false;
            logout.Visible.Equals(true);
        }

        protected void approve_event_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_access.aspx");
        }
    }
}