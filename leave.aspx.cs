using System;

namespace LAB_5
{
    public partial class Leave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User_ID"] == null)
            {
                Response.Redirect("login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                txtEmployeeId.Text = Session["User_ID"].ToString();

                if (Session["date"] != null)
                {
                    lbladte.Text = Session["date"].ToString();
                }
                else
                {
                    Response.Redirect("default.aspx");
                    return;
                }
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            Page.Validate();

            if (!Page.IsValid)
            {
                pnlSummary.Visible = false;
                return;
            }

            lblSummaryEmployeeId.Text = txtEmployeeId.Text;
            lblSummaryDate.Text = lbladte.Text;
            lblSummaryLeaveType.Text = ddlLeaveType.SelectedValue;
            lblSummaryReason.Text = string.IsNullOrWhiteSpace(txtreason.Text) ? "Not specified" : txtreason.Text.Trim();
            lblSummaryLoad.Text = txtLoadAdjusted.Text.Trim();

            pnlSummary.Visible = true;
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
    }
}
