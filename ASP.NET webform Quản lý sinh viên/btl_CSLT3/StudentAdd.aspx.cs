using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using btl_CSLT3.Database;

namespace btl_CSLT3
{
    public partial class StudentAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadLop();
            }
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

        protected void txtmaSV_TextChanged(object sender, EventArgs e)
        {
            RunData run = new RunData();
            string ktra = "SELECT COUNT(*) FROM tblSinhVien WHERE masv = '" + txtmaSV.Text + "' ";
            int val = run.GetNumber(ktra);
            if (val > 0)
            {
                Response.Write("<script>alert('mã sinh viên đã tồn tại');</script>");
                txtmaSV.Text = "";
                txtmaSV.Focus();
                return;
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (txtHoTen.Text != "" && txtmaSV.Text != "")
            {
                string _maSV = txtmaSV.Text.Trim();
                string _hoten = txtHoTen.Text;
                string _lop = ddlLop.SelectedValue;
                string _ngaysinh = txtngaysinh.Text;
                int _gioitinh = int.Parse(ddlgt.SelectedValue);
                string _hinhanh = uploadAnh.FileName;
                string _quequan = txtquequan.Text;
                string _ghichu = txtghichu.Text;

                string strSQL = "INSERT INTO tblSinhVien(maSV, tenSV, id_lop, gioitinh,ngaysinh, quequan,hinhanh , ghichu) " +
                                "VALUES ('" + _maSV + "', N'" + _hoten + "','" + _lop + "'," + _gioitinh + ",'" + _ngaysinh + "', " +
                                "N'" + _quequan + "',N'" + _hinhanh + "', N'" + _ghichu + "')";

                RunData run = new RunData();
                run.Execute(strSQL);

                if (uploadAnh.FileName != "")
                {
                    uploadAnh.PostedFile.SaveAs(Server.MapPath("Picture") + @"\" + _hinhanh);
                    Image1.ImageUrl = "Picture/" + _hinhanh;
                }
                lblThongbao.Text = "Thêm sinh viên thành công";
                //Response.Redirect("QLSV.aspx");
            }
            else
            {
                lblThongbao.Text = "Vui lòng nhập họ tên và mã sinh viên";
            }
        }

        
    }
}