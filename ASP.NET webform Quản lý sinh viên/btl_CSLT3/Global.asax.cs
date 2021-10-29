using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace btl_CSLT3
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            //đặt điều kiện để vào các trang khác
            Session["trangthai"] = "islogout";
            //tăng số lượng người truy cập lên 1 khi có truy cập mới
            //Mở file SLTC.txt đọc giá trị của biến S
            System.IO.StreamReader sr;
            sr = new System.IO.StreamReader(Server.MapPath("\\Database\\SLTC.txt"));
            string S = sr.ReadLine();
            sr.Close();
            //newcount là số lượng truy cập mới sau khi được tăng lên +1
            long newCount = long.Parse(S) + 1;
            //dùng biến toàn cục để truyền giá trị sang trang khác 
            Session["LoginCount"] = newCount;
            //Lưu lại vào file SLTC và cập nhật 
            System.IO.StreamWriter sw;
            sw = new System.IO.StreamWriter(Server.MapPath("\\Database\\SLTC.txt"));
            sw.Write(newCount.ToString());
            sw.Close();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}