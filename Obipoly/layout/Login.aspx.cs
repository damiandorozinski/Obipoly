using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

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
            string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Damian\Documents\Git\Obipoly\Obipoly\App_Data\Database1.mdf;Integrated Security=True";
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

        protected void registerUser(object sender, EventArgs e)
        {

            if (rfvUsername.IsValid && rfvPassword.IsValid && cvConfirmPassword.IsValid)
            {

                int userId = 0;
                string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Damian\Documents\Git\Obipoly\Obipoly\App_Data\Database1.mdf;Integrated Security=True";
                SqlConnection connection = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand("Insert_User");
                SqlDataAdapter dataAdapter = new SqlDataAdapter();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Username", txbUsername.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", txbPassword.Text.Trim());
                cmd.Connection = connection;
                connection.Open();
                userId = Convert.ToInt32(cmd.ExecuteScalar());
                connection.Close();

                switch (userId)
                {
                    case -1:    //username already exists
                        lblRegistrationError.Text = "Nazwa użytkownika zajęta.";
                        break;
                    default:
                        lblRegistrationError.Text = "";
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + "Success" + "');", true);
                        break;
                }
            } 
        }
    }
}