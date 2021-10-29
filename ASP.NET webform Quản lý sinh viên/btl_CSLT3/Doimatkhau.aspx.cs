using System;
using btl_CSLT3.Database;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace btl_CSLT3
{
    public partial class Doimatkhau : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["trangthai"].ToString() == "islogout")
            {
                Response.Redirect("dangnhap.aspx");
            }
        }

        protected void btnXacnhan_Click(object sender, EventArgs e)
        {
            if (txtMatkhaumoi.Text != txtXacnhanlaimatkhau.Text)
            {
                lblthongbaodoimatkhau.Text = "Mật khẩu mới và xác nhận mật khẩu không giống nhau";
            }
            else if (txtMatkhaumoi.Text == txtXacnhanlaimatkhau.Text) {
                RunData run = new RunData();
                DataTable dt = new DataTable();
                string strSQL = "UPDATE tblTaiKhoan set matkhau= '" + txtXacnhanlaimatkhau.Text + "'where matkhau ='" + txtMatkhaucu.Text + "'";
                dt = run.GetData(strSQL);
                lblthongbaodoimatkhau.Text = "Đổi mật khẩu thành công";
            }
            }
        }
    }
