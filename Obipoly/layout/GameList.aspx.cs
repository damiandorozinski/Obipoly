using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Obipoly.layout
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Damian\Documents\Git\Obipoly\Obipoly\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection connection = new SqlConnection(connectionString);
            String sqlQuery = "SELECT * FROM Games";
            SqlCommand command = new SqlCommand(sqlQuery, connection);
            SqlDataReader reader;
            connection.Open();
            reader = command.ExecuteReader();

            while (reader.Read())
            {
                TableRow r = new TableRow();
                
                TableCell tc = new TableCell();
                tc.BorderWidth = 1;
                tc.Controls.Add(new LiteralControl(reader["Id"].ToString()));
                r.Controls.Add(tc);
                tc = null;

                tc = new TableCell();
                tc.BorderWidth = 1;
                tc.Controls.Add(new LiteralControl(reader["State"].ToString()));
                r.Controls.Add(tc);
                tc = null;

                tc = new TableCell();
                tc.BorderWidth = 1;
                tc.Controls.Add(new LiteralControl(reader["Players"].ToString()));
                r.Controls.Add(tc);
                tc = null;

                tc = new TableCell();
                tc.BorderWidth = 1;
                tc.Controls.Add(new LiteralControl(reader["Player1"].ToString()+", "+reader["Player2"].ToString()+", "+reader["Player3"].ToString()+", "+reader["Player4"].ToString()));
                r.Controls.Add(tc);
                tc = null;

                tc = new TableCell();
                tc.BorderWidth = 1;
                tc.Controls.Add(new LiteralControl(reader["Template"].ToString()));
                r.Controls.Add(tc);
                tc = null;

                tc = new TableCell();
                tc.BorderWidth = 1;
                Button joinButton = new Button();
                joinButton.Text="Join!";
                joinButton.OnClientClick = "return confirm('Nie dołączysz')";
                tc.Controls.Add(joinButton);
                r.Controls.Add(tc);
                tc = null;

                GameListTable.Controls.Add(r);
            }
        }
        public void MakeGame()
        {
            
        }
    }
}