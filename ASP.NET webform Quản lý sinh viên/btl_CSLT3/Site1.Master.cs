using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using btl_CSLT3.Database;


namespace btl_CSLT3
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime ab = DateTime.Now;
            Lbdatetime.Text = ab.ToString();
            LblLogincount.Text = Session["Logincount"].ToString();
            if(Session["maGV"] != null)
            {
                Label2.Text = "Xin chào," + Session["maGV"].ToString();
                hldangnhap.Visible = false;
                lbdangxuat.Visible = true;
            }
            else 
            {
                Label2.Text = "";
                hldangnhap.Visible = true;
                lbdangxuat.Visible = false;
            }
        }

        protected void lbdangxuat_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("dangxuat.aspx");
        }
    }
}