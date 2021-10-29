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
    public partial class Quanlylop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["trangthai"].ToString() == "islogout")
            {
                Response.Redirect("dangnhap.aspx");
            }
           else if (!IsPostBack)
            {
                LoadLop();
            }
        }
        private void LoadLop()
        {
            RunData run = new RunData();
            string strSQL = "SELECT * FROM tblLop";
            gvLop.DataSource = run.GetData(strSQL);
            gvLop.DataBind();
        }

        protected void gvLop_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvLop.EditIndex = e.NewEditIndex;
            LoadLop();
        }

        protected void gvLop_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvLop.EditIndex = -1;
            LoadLop();
        }

        protected void gvLop_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string _malop = gvLop.DataKeys[e.RowIndex].Value.ToString().Trim();


            string _khoa = ((TextBox)gvLop.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string _tenlop = ((TextBox)gvLop.Rows[e.RowIndex].Cells[2].Controls[0]).Text.Trim();
            string _tenkhoa = ((TextBox)gvLop.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string _heDT = ((TextBox)gvLop.Rows[e.RowIndex].Cells[4].Controls[0]).Text;


            string strSQL = "UPDATE tblLop SET khoa = N'" + _khoa + "',"
                            + " tenlop = N'" + _tenlop + "',"
                            + " tenkhoa= N'" + _tenkhoa + "', "
                            + "heDT= N'" + _heDT + "' WHERE malop=N'" + _malop + "'";

            RunData run = new RunData();
            run.Execute(strSQL);

            gvLop.EditIndex = -1;
            LoadLop();
        }

        protected void btnLopAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("LopAdd.aspx");
        }
    }
}