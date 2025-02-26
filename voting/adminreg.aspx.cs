using System;


namespace voting
{
    public partial class adminreg : System.Web.UI.Page
    {
     


            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {
                purchasePlanPopup.Visible = false;

                }
           
        }
        protected DateTime votingDate;

        
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string adminName = txtAdminName.Text;
            DateTime votingDate = this.
                votingDate;

            string message = $"Admin Name: {adminName} Date of Voting Day: {votingDate.ToShortDateString()}";
            string script = $"alert('{message}'); setTimeout(function() {{ window.location.href = 'dashboard.aspx'; }}, 100);";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
        }

        protected void rbLayout_CheckedChanged(object sender, EventArgs e)
        {
            if (rbMultiPosition.Checked)
            {
                purchasePlanPopup.Visible = true;
            }
            else
            {
                purchasePlanPopup.Visible = false;
            }
        }

     
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
            {
                txtDate.Text = Calendar1.SelectedDate.ToShortDateString();
                votingDate = Calendar1.SelectedDate;


            Calendar1.Visible = false; 
            }
      

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("subscription.aspx");
        }

       
    }

}
    

