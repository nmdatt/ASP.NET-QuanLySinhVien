using System;
using System.Data;
using btl_CSLT3.Database;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace btl_CSLT3
{
    public partial class dangki : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void nutdangki_Click(object sender, EventArgs e)
        {
            try
            {
                if (matkhaudki.Text != nhaplaimatkhau.Text)
                {
                    lblthongbaodki.Text = "Mật khẩu không khớp";
                }
                else if (matkhaudki.Text == nhaplaimatkhau.Text)
                {
                    RunData run = new RunData();
                    DataTable dt = new DataTable();
                    string sqlStr = "INSERT INTO tblTaiKhoan " +
                        "VALUES ('" + magiangvien.Text + "',N'" + tengiangvien.Text + "','" + matkhaudki.Text + "')";
                    dt = run.GetData(sqlStr);
                    lblthongbaodki.Text = "Đăng ký thành công";
                    magiangvien.Text = string.Empty;
                    tengiangvien.Text = string.Empty;
                    Response.Redirect("dangnhap.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}