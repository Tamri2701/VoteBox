using System;
using System.Data.SqlClient;


namespace voting
{
    public partial class singup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Read user input
           

            string firstName = txtFirstName.Text;
            string lastName = txtLastName.Text;
            string email = txtEmail.Text;
            string gender = rbMale.Checked ? "Male" : "Female";
            string Username = txtUsername.Text;
            string password = txtPassword.Text;

            // Establish the connection string
            string connectionString = @"Data Source=TANIA\SQLEXPRESS;Initial Catalog=sindb;Integrated Security=True";

            // Create a SqlConnection object
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Open the connection
                connection.Open();

                // Create a SqlCommand to insert data into the database
                string insertQuery = "INSERT INTO admins (FirstName, LastName, Email, Gender, Username, Password) " +
                                     "VALUES (@FirstName, @LastName, @Email, @Gender,@Username, @Password)";
                using (SqlCommand cmd = new SqlCommand(insertQuery, connection))
                {
                    // Add parameters to the query to prevent SQL injection
                    cmd.Parameters.AddWithValue("@FirstName", firstName);
                    cmd.Parameters.AddWithValue("@LastName", lastName);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Gender", gender);
                    cmd.Parameters.AddWithValue("@Username",Username);
                    cmd.Parameters.AddWithValue("@Password", password);

                    // Execute the query
                    cmd.ExecuteNonQuery();
                }
            }

            // Redirect to a success page or perform any other actions
            Response.Redirect("login.aspx");
        }

      
    }
}