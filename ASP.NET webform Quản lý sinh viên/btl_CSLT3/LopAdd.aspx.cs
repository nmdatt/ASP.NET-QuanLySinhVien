using System;
using btl_CSLT3.Database;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace btl_CSLT3
{
    public partial class LopAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {


            if (ddlDT.SelectedIndex != 0 && ddlKhoa.SelectedIndex != 0 && ddlKhoahoc.SelectedIndex != 0 && tbxLop.Text != "" && tbxMalop.Text != "")
            {

                string _heDT = ddlDT.SelectedValue;
                string _khoa = ddlKhoa.SelectedValue;
                int _khoahoc = int.Parse(ddlKhoahoc.SelectedValue);
                string _malop = tbxMalop.Text.Trim();
                string _tenlop = tbxLop.Text;

                string strSQL = "INSERT INTO tblLop(malop, khoa, tenlop, tenkhoa, heDT) VALUES" +
                    "('" + _malop + "', '" + _khoahoc + "', N'" + _tenlop + "', N'" + _khoa + "', N'" + _heDT + "')";

                RunData run = new RunData();
                run.Execute(strSQL);

                Response.Redirect("Quanlylop.aspx");
            }
            else
            {
                lblThongBao.Text = " Vui lòng nhập thông tin lớp";
            }
        }
    }
}