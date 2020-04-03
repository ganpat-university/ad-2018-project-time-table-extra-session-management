using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AD_Project
{
    public partial class email : System.Web.UI.Page
    {
        public static int i;
        DataRow dataRow;
        DataTable dataTable = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True; Connect Timeout = 30");
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from Event", sqlConnection);
            
            sqlDataAdapter.Fill(dataTable);
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            text.Visible = true;
            text.Text = "Entry Code Has Been Sent";
            i = 0;
            dataRow = dataTable.Rows[i];

            string event_name = Convert.ToString(dataRow[1]);
            string description = Convert.ToString(dataRow[4]); 
            string host = Convert.ToString(dataRow[5]);
            string fee = Convert.ToString(dataRow[6]);
            string date = Convert.ToString(dataRow[7]);
            string time = Convert.ToString(dataRow[8]);
            string venue = Convert.ToString(dataRow[9]);

            SmtpClient smtpClient = new SmtpClient();
            smtpClient.Credentials = new System.Net.NetworkCredential("username", "password");
            smtpClient.UseDefaultCredentials = true;
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            //smtpClient.EnableSsl = true;
            MailMessage mailMessage = new MailMessage();

            mailMessage.Subject = "Please Find Entry Code Below";
            mailMessage.Body = "Event Name :" + event_name + "\nDescription :" + description +
                "\nHost :" + host + "\nFee :" + fee + "\nDate :" + date + "\nTime :" + time + "\nVenue :" + venue;

            mailMessage.From = new MailAddress("shahdeep1908@gmail.com", "Event Management");
            mailMessage.To.Add(new MailAddress(emailid.Text));

            smtpClient.Send(mailMessage);
        }
    }
}