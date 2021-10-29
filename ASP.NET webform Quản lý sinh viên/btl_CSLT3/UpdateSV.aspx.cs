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
    public partial class UpdateSV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadLop();
            //lấy mã sinh viên trên thanh địa chỉ
            string _maSV = Request.QueryString["maSV"].ToString().Trim();

            //lấy data của sv có mã trên rồi gán 
            string strSQL = "SELECT maSV, tenSV, tenlop, gioitinh, ngaysinh, quequan, hinhanh, ghichu FROM tblSinhVien,tblLop WHERE "
                            + "maSV = '" + _maSV + "' AND tblSinhVien.id_lop=tblLop.id_lop";

            RunData run = new RunData();
            DataTable dt = run.GetData(strSQL);

            string stSQL = "SELECT tblSinhVien.id_lop,tenlop FROM tblLop,tblSinhVien " +
                    "WHERE tblLop.id_lop = tblSinhVien.id_lop AND tblSinhVien.maSV = '"+ _maSV +"'";
            RunData run1 = new RunData();
            DataTable dt2 = run1.GetData(stSQL);

            txtmasv.Text = _maSV;
            txthoten.Text = dt.Rows[0][1].ToString();
            
            ddlLop.SelectedValue = dt2.Rows[0][0].ToString();
            
            string _gt = dt.Rows[0][3].ToString();
            if (_gt == "True")
            {
                ddlgt.SelectedIndex = 0;
            }
            else ddlgt.SelectedIndex = 1;
            txtngaysinh.Text = dt.Rows[0][4].ToString();
            txtquequan.Text = dt.Rows[0][5].ToString();
            txtghichu.Text = dt.Rows[0][7].ToString();
            imgSV.ImageUrl = "Picture/" + dt.Rows[0][6].ToString();
        }

        private void LoadLop()
        {
            RunData run = new RunData();
            string strSQL = "SELECT id_lop, tenlop FROM tblLop";
            ddlLop.DataSource = run.GetData(strSQL);
            ddlLop.DataTextField = "tenlop";
            ddlLop.DataValueField = "id_lop";
            ddlLop.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string _masv = txtmasv.Text;

            string _hoten = txthoten.Text;
            string _ngaysinh = txtngaysinh.Text;
            string _quequan = txtquequan.Text;
            string _ghichu = txtghichu.Text;
            int _gt = int.Parse(ddlgt.SelectedValue);
            int _lop = int.Parse(ddlLop.SelectedValue);
            string _hinhanh = fulAnh.FileName;
            if (fulAnh.FileName != "")
            {
                fulAnh.PostedFile.SaveAs(Server.MapPath("Picture") + @"\" + _hinhanh);
                imgSV.ImageUrl = "Picture/" + _hinhanh;
            }

            string strSQL = "UPDATE tblSinhVien SET tenSV = N'" + _hoten + "',"
                            + " id_lop = " + _lop + ","
                            + " gioitinh=" + _gt + ", "
                            + "ngaysinh= '" + _ngaysinh + "', "
                            + "quequan=N'" + _quequan + "'," 
                            + "ghichu=N'" + _ghichu +"',"
                            + "hinhanh = '" +_hinhanh +"'"
                            +" WHERE maSV=N'" + _masv + "'";
            RunData run = new RunData();
            run.Execute(strSQL);

            Response.Write("<script>alert('chỉnh sửa thông tin sinh viên thành công');</script>");
            Response.Redirect("QLSV.aspx");
        }
    }
}