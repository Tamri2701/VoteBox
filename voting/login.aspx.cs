using System;
using System.Data.SqlClient;

namespace voting
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSignIn_Click(object sender, EventArgs e)
        {
   
            if (!IsValid)
            {
                return;
            }

           
            using (SqlConnection conn = new SqlConnection(@"Data Source=TANIA\SQLEXPRESS;Initial Catalog=sindb;Integrated Security=True"))
            {
                conn.Open();

                string query = "SELECT AdminId, FirstName FROM admins WHERE Username = @Username AND Password = @Password";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            int adminId = reader.GetInt32(reader.GetOrdinal("AdminId"));
                            string adminName = reader.GetString(reader.GetOrdinal("FirstName"));

                            Session["AdminId"] = adminId;
                            Session["AdminName"] = adminName;
                            lblErrorMessage.Visible = false;
                            Response.Redirect("dashboard.aspx");
                        }
                        else
                        {
                            lblErrorMessage.Text = "Invalid username or password. Please register yourself first.";
                            lblErrorMessage.Visible = true;
                        }
                    }
                }
            }
        }
