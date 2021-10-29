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
  
    public partial class dangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void nutdangnhap_Click(object sender, EventArgs e)
        {
            if (checklogin(tendangnhap.Text.Trim(), matkhau.Text.Trim()))
            {
                Session["trangthai"] = "islogin";
                Session["maGV"] = tendangnhap.Text;
                Response.Redirect("trangchu.aspx");
            }
            else
            {
                lblthongbao.Text = "Tên đăng nhập hoặc mật khẩu không chính xác";
                tendangnhap.Text = string.Empty;
                matkhau.Text = string.Empty;
                tendangnhap.Focus();
            }
        }
        private bool checklogin(string tendangnhap, string matkhau)
        {
            RunData run = new RunData();
            DataTable dt = new DataTable();

            string strSQL = "SELECT * FROM tblTaiKhoan WHERE maGV='" + tendangnhap +
                            "' AND matkhau='" + matkhau + "'";
            dt = run.GetData(strSQL);
            if (dt.Rows.Count > 0)
            {
                return true;
            }
            else return false;
        }
    }
}