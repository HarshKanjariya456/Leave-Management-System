using System;
using System.Web;

namespace LAB_5
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User_ID"] != null)
            {
                Response.Redirect("default.aspx");
                return;
            }

            if (!IsPostBack)
            {
                lblMessage.Text = "";

                HttpCookie cookie = Request.Cookies["User_ID"];

                if (cookie != null && !string.IsNullOrEmpty(cookie.Value))
                {
                    txtUserId.Text = cookie.Value;
                    chkRememberMe.Checked = true;
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string user_id = txtUserId.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (user_id == "92400120672" && password == "user@123")
            {
                Session["User_ID"] = user_id;

                if (chkRememberMe.Checked)
                {
                    HttpCookie cookie = new HttpCookie("User_ID");
                    cookie.Value = user_id;
                    cookie.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(cookie);
                }
                else
                {
                    HttpCookie cookie = new HttpCookie("User_ID");
                    cookie.Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies.Add(cookie);
                }

                Response.Redirect("default.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid User ID or Password.";
                Session.Clear();
                Session.Abandon();
            }
        }
    }
}
