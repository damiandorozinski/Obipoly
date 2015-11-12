using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Obipoly.layout
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OnAuthenticate(object sender, AuthenticateEventArgs e) { 
            bool authenticated = false;

            authenticated = ValidateUser(loginControl.UserName, loginControl.Password);
            e.Authenticated = authenticated;
        }

        private bool ValidateUser(string Username, string Password) {
            char [] p = {'P','Z','o','b','i','1','2','P','Z','p','o','l','y'};
            System.Security.SecureString pass = new System.Security.SecureString();

            //SqlCredential credit = new SqlCredential("obipoly",)
            string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Dropbox\Obipoly\Obipoly\Obipoly\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection connection = new SqlConnection(connectionString);
            String sqlQuery = "SELECT Username, Password FROM Users";
            SqlCommand command = new SqlCommand(sqlQuery, connection);
            SqlDataReader reader;
            connection.Open();
            reader = command.ExecuteReader();

            while( reader.Read() ) {
                if (Username == reader["Username"].ToString() && SHA1.Encode(Password) == reader["Password"].ToString()) {
                    loginControl.FailureText = "";
                    return true;
                }
            }

            loginControl.FailureText = "Błąd logowania. Spróbuj ponownie.";
            return false;
        }
    }
}