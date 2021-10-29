using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace btl_CSLT3
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["trangthai"].ToString() == "islogout")
            {
                Response.Redirect("dangnhap.aspx");
            }
        }
        public string GT(object obj)
        {
            bool gt = bool.Parse(obj.ToString());
            return gt ? "Nam" : "Nữ";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }
    }
}