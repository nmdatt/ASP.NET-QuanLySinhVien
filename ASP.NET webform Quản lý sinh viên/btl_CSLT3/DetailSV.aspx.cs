using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using btl_CSLT3.Database;

namespace btl_CSLT3
{
    public partial class DetailSV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //lấy mã sinh viên trên thanh địa chỉ
            string _maSV = Request.QueryString["maSV"].ToString().Trim();

            //lấy data của sv có mã trên rồi gán 
            string strSQL = "SELECT maSV, tenSV, tenlop, gioitinh, ngaysinh, quequan, hinhanh, ghichu FROM tblSinhVien,tblLop WHERE "
                            + "maSV = '" + _maSV + "' AND tblSinhVien.id_lop=tblLop.id_lop";

            RunData run = new RunData();
            DataTable dt = run.GetData(strSQL);

            lblmasv.Text = _maSV;
            lblhoten.Text = dt.Rows[0][1].ToString();
            lblLop.Text = dt.Rows[0][2].ToString();
            lblgt.Text = bool.Parse(dt.Rows[0][3].ToString()) == true ? "Nam" : "Nữ";
            DateTime ns = DateTime.Parse(dt.Rows[0][4].ToString());
            lblngaysinh.Text = ns.ToShortDateString();
            lblquequan.Text = dt.Rows[0][5].ToString();
            lblghichu.Text = dt.Rows[0][7].ToString();
            imgSV.ImageUrl = "Picture/" + dt.Rows[0][6].ToString();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string _maSV = Request.QueryString["maSV"].ToString().Trim();
            Response.Redirect("UpdateSV.aspx?maSV=" + _maSV);
        }
    }
}