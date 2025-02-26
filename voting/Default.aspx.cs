using System;
using System.Data;
using System.Web;

using System.Data.SqlClient;
using System.Web.UI.WebControls;
using ZXing;
using ZXing.Common;

using System.IO;
using System.Drawing.Imaging;



namespace voting
{
    public partial class CrudInGridView : System.Web.UI.Page

    {
        protected DateTime StartTime
        {
            get { return ViewState["StartTime"] != null ? (DateTime)ViewState["StartTime"] : DateTime.MinValue; }
            set { ViewState["StartTime"] = value; }
        }

        protected DateTime EndTime
        {
            get { return ViewState["EndTime"] != null ? (DateTime)ViewState["EndTime"] : DateTime.MinValue; }
            set { ViewState["EndTime"] = value; }
        }
        string connectionString = @"Data Source=TANIA\SQLEXPRESS;Initial Catalog=voteadmin;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateGridview();
                StartTime = DateTime.Now;
                EndTime = DateTime.Now.AddDays(1);

                // Display the default times in the TextBoxes
                txtStartTime.Text = StartTime.ToString("yyyy-MM-ddTHH:mm"); // Format for DateTimeLocal input type
                txtEndTime.Text = EndTime.ToString("yyyy-MM-ddTHH:mm");
            }
            if (DateTime.Now < StartTime || DateTime.Now > EndTime)
            {
                // Disable voting form or redirect to a different page
                Response.Redirect("userform.aspx"); // Redirect to a page indicating that voting is closed
            }
        }

        void PopulateGridview()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM votes", sqlCon);
                sqlDa.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                gvVotes.DataSource = dtbl;
                gvVotes.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                gvVotes.DataSource = dtbl;
                gvVotes.DataBind();
                gvVotes.Rows[0].Cells.Clear();
                gvVotes.Rows[0].Cells.Add(new TableCell());
                gvVotes.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                gvVotes.Rows[0].Cells[0].Text = "No Data Found ..!";
                gvVotes.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }


        protected void gvVotes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (SqlConnection sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        string query = "INSERT INTO Votes (FirstName, Question, Description, Email ) VALUES ( @FirstName, @Question, @Description, @Email)";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);

                        sqlCmd.Parameters.AddWithValue("@FirstName", (gvVotes.FooterRow.FindControl("txtFirstNameFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Question", (gvVotes.FooterRow.FindControl("txtquestionFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Description", (gvVotes.FooterRow.FindControl("txtdescriptionFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Email", (gvVotes.FooterRow.FindControl("txtEmailFooter") as TextBox).Text.Trim());
                       

                        sqlCmd.ExecuteNonQuery();
                        PopulateGridview();
                        lblSuccessMessage.Text = "New Record Added";
                        lblErrorMessage.Text = "";
                    }
                }
                else if (e.CommandName.Equals("Vote"))
                {
                    int rowIndex = Convert.ToInt32(e.CommandArgument);
                    int voteID = Convert.ToInt32(gvVotes.DataKeys[rowIndex].Values["VoteID"]);

                    PopulateGridview();
                    lblSuccessMessage.Text = "Vote Recorded";
                    lblErrorMessage.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }
        protected void gvVotes_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvVotes.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }

        protected void gvVotes_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvVotes.EditIndex = -1;
            PopulateGridview();
        }

        protected void gvVotes_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    string query = "UPDATE Votes SET FirstName=@FirstName, Question=@Question, Description=@Description, Email=@Email WHERE VoteID = @id";

                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@FirstName", (gvVotes.Rows[e.RowIndex].FindControl("txtFirstName") as TextBox).Text.Trim());

                    sqlCmd.Parameters.AddWithValue("@Question", (gvVotes.Rows[e.RowIndex].FindControl("txtquestion") as TextBox).Text.Trim());

                    sqlCmd.Parameters.AddWithValue("@Description", (gvVotes.Rows[e.RowIndex].FindControl("txtdescription") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Email", (gvVotes.Rows[e.RowIndex].FindControl("txtEmail") as TextBox).Text.Trim());
      
                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(gvVotes.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    gvVotes.EditIndex = -1;
                    PopulateGridview();
                    lblSuccessMessage.Text = "Selected Record Updated";
                    lblErrorMessage.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }
        protected void gvVotes_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    string query = "DELETE FROM Votes WHERE VoteID = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(gvVotes.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    PopulateGridview();
                    lblSuccessMessage.Text = "Selected Record Deleted";
                    lblErrorMessage.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void gvVotes_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    protected void btnFinalSubmit_Click(object sender, EventArgs e)
        {
           
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Submitted successfully');", true);
        }
        private byte[] GenerateQRCode(string data, int width = 300, int height = 300)
        {
            BarcodeWriter barcodeWriter = new BarcodeWriter
            {
                Format = BarcodeFormat.QR_CODE,
                Options = new EncodingOptions
                {
                    Width = width,
                    Height = height
                }
            };

            var bitmap = barcodeWriter.Write(data);

            using (MemoryStream stream = new MemoryStream())
            {
                bitmap.Save(stream, ImageFormat.Png); 
                return stream.ToArray();
            }
        }


        protected void btnGenerateQR_Click(object sender, EventArgs e)
        {
           
            string qrData = "https://localhost:44369/userform.aspx";
            byte[] qrCodeBytes = GenerateQRCode(qrData);

            
            string qrCodeBase64 = Convert.ToBase64String(qrCodeBytes);
            imgQRCode.ImageUrl = "data:image/png;base64," + qrCodeBase64;
            imgQRCode.Visible = true;
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string startTime = txtStartTime.Text;
            string endTime = txtEndTime.Text;

    
            HttpCookie startCookie = new HttpCookie("StartTime", startTime);
            HttpCookie endCookie = new HttpCookie("EndTime", endTime);

      
            startCookie.Expires = DateTime.Now.AddDays(1);
            endCookie.Expires = DateTime.Now.AddDays(1);

           
            Response.Cookies.Add(startCookie);
            Response.Cookies.Add(endCookie);

      
            lblSuccessMessage.Text = "Times have been successfully set.";
            lblErrorMessage.Text = "";

            txtStartTime.Text = "";
            txtEndTime.Text = "";


        }



    }

}









    

