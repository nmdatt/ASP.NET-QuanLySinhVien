using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using btl_CSLT3.Database;
using System.Data;

namespace btl_CSLT3
{
    public partial class QLSV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["trangthai"].ToString() == "islogout")
            {
                Response.Redirect("dangnhap.aspx");
            }
            else if(!IsPostBack)
            {
                LoadStudents();
            }
        }
        private void LoadStudents()
        {
            RunData run = new RunData();
            string strSQL = "SELECT maSV,tenSV,tenlop,gioitinh,ngaysinh,quequan FROM tblSinhVien, tblLop WHERE tblSinhVien.id_lop=tblLop.id_lop";
            gvSV.DataSource = run.GetData(strSQL);
            gvSV.DataBind();
        }
        public string TranslateGT(object obj)
        {
            bool gt = bool.Parse(obj.ToString());
            return gt ? "Nam" : "Nữ";
        }

        protected void gvSV_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvSV.EditIndex = e.NewEditIndex;
            LoadStudents();
        }

        protected void gvSV_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvSV.EditIndex = -1;
            LoadStudents();
        }

        protected void gvSV_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //lấy mã sinh viên cần sửa tại dòng hiện tại
            string _maSV = gvSV.DataKeys[e.RowIndex].Value.ToString().Trim();


            string _tenSV = ((TextBox)gvSV.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string _tenlop = ((TextBox)gvSV.Rows[e.RowIndex].Cells[2].Controls[0]).Text.Trim();
            string _gioitinh = ((DropDownList)gvSV.Rows[e.RowIndex].Cells[3].FindControl("ddlGioiTinh")).SelectedValue;
            string _ngaysinh = ((TextBox)gvSV.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string _quequan = ((TextBox)gvSV.Rows[e.RowIndex].Cells[5].Controls[0]).Text;


            string strSQL = "UPDATE tblSinhVien SET tenSV = N'" + _tenSV + "',"
                            + " tenlop = N'" + _tenlop + "',"
                            + " gioitinh=" + _gioitinh + ", "
                            + "ngaysinh= '" + _ngaysinh + "', "
                            + "quequan=N'" + _quequan + "' WHERE maSV=N'" + _maSV + "'";
            RunData run = new RunData();
            run.Execute(strSQL);

            gvSV.EditIndex = -1;
            LoadStudents();


        }

        protected void gvSV_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            string _maSV = gvSV.DataKeys[e.NewSelectedIndex].Value.ToString().Trim();
            Response.Redirect("DetailSV.aspx?maSV=" + _maSV);
        }

        protected void gvSV_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvSV.PageIndex = e.NewPageIndex;
            LoadStudents();
        }

        protected void gvSV_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string maSV = gvSV.DataKeys[e.RowIndex].Value.ToString().Trim();
            string strSQL = "DELETE FROM tblSinhVien WHERE maSV=N'" + maSV + "'";
            RunData run = new RunData();
            run.Execute(strSQL);
            LoadStudents();
        }

        protected void gvSV_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && gvSV.EditIndex == -1)
            {
                ((LinkButton)e.Row.Cells[6].Controls[2]).OnClientClick =
                    "return confirm('Bạn có chắc chắn muốn xoá không?')";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void gvSV_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}