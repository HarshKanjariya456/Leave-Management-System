using System;

namespace LAB_5
{
    public partial class Default : System.Web.UI.Page
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
                lblHello.Text = "Hello, " + Session["User_ID"].ToString();
                lblchoosedate.Text = "";
                lblDateError.Text = "";
            }
        }

        protected void CalSelectDate_SelectionChanged(object sender, EventArgs e)
        {
            DateTime dt = CalSelectDate.SelectedDate;

            if (dt != DateTime.MinValue)
            {
                lblchoosedate.Text = dt.ToString("dd/MM/yyyy");
                Session["date"] = dt.ToString("dd/MM/yyyy");
                lblDateError.Text = "";
            }
        }

        protected void APleave_Click(object sender, EventArgs e)
        {
            if (CalSelectDate.SelectedDate == DateTime.MinValue)
            {
                lblDateError.Text = "Please select a leave date before applying for leave.";
                return;
            }

            Session["date"] = CalSelectDate.SelectedDate.ToString("dd/MM/yyyy");
            Response.Redirect("leave.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
    }
}
