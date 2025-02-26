using System;

using System.Data.SqlClient;

namespace voting
{
    public partial class dashboard: System.Web.UI.Page
    {
 


            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {
                    // Check if the admin is logged in (you may need a better authentication mechanism)
                    if (Session["AdminName"] == null)
                    {
                        Response.Redirect("login.aspx"); // Redirect to login page if not logged in
                    }
                    else
                    {
                        // Fetch admin username from the database
                        string adminId = Session["AdminId"].ToString(); // Assuming you have AdminId in the session
                        
                        string query = "SELECT [Username] FROM [admins] WHERE [AdminId] = @AdminId";

                        using (SqlConnection connection = new SqlConnection(@"Data Source = TANIA\SQLEXPRESS; Initial Catalog = sindb; Integrated Security = True"))
                        {
                            using (SqlCommand command = new SqlCommand(query, connection))
                            {
                                command.Parameters.AddWithValue("@AdminId", adminId);
                                connection.Open();
                                SqlDataReader reader = command.ExecuteReader();
                                if (reader.HasRows)
                                {
                                    while (reader.Read())
                                    {
                                        string username = reader["Username"].ToString();
                                        lblAdminUsername.Text = username; // Set the admin username
                                    }
                                }
                                reader.Close();
                            }
                        }
                    }
                }
            }
        }
    }
