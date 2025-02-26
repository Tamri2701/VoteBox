using System;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data.SqlClient;

namespace voting
{
    public partial class userform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            CheckVotingTime();
            if (!IsPostBack)
            {
                BindGridView();

               
            }


        }

        private void BindGridView()
        {
           
            GridView1.DataBind();
        }


        

     
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "VoteClick")
            {
                // Get the index of the row where the vote button was clicked
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                // Update the vote
                UpdateVote(rowIndex);

                // Refresh the GridView after updating the database
                BindGridView();
            }
        }

        private void UpdateVote(int rowIndex)
        {
            // Update vote in the database
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["voteadminConnectionString3"].ConnectionString))
            {
                // Reset all votes to 0
                using (SqlCommand cmd = new SqlCommand("UPDATE Votes SET Vote = 0", con))
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                }

                // Set the vote to 1 for the selected row
                using (SqlCommand cmd = new SqlCommand("UPDATE Votes SET Vote = 1 WHERE VoteID = @VoteID", con))
                {
                    cmd.Parameters.AddWithValue("@VoteID", GridView1.DataKeys[rowIndex].Value);
                    cmd.ExecuteNonQuery();
                }

                // Get the name of the person voted for (adjust the column name as per your database)
                string votedPersonName = GridView1.Rows[rowIndex].Cells[1].Text;

                // Display the vote message
                lblVoteMessage.Text = $"You have voted for {votedPersonName}.";
                lblVoteMessage.Visible = true;
            }

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private void CheckVotingTime()
        {
            string startTime = Request.Cookies["StartTime"]?.Value;
            string endTime = Request.Cookies["EndTime"]?.Value;

            if (!string.IsNullOrEmpty(startTime) && !string.IsNullOrEmpty(endTime))
            {
                DateTime endDateTime = DateTime.Parse(endTime);

                if (DateTime.Now == endDateTime)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "TimeUpAlert", "alert('Your time is up. Thanks for voting.'); window.location.href = 'Index.aspx';", true);
                }
                else
                {
                    TimeSpan remainingTime = endDateTime - DateTime.Now;
                    lblRemainingTime.Text = $"You have {remainingTime.Hours} hours and {remainingTime.Minutes} minutes left to vote.";
                }
            }
            else
            {
                lblErrorMessage.Text = "Start time or end time not found in cookies.";
            }
        }

    }
}

        
      


