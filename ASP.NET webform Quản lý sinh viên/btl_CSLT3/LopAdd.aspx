<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LopAdd.aspx.cs" Inherits="btl_CSLT3.LopAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style25 {
            width: 172px;
        }
        .auto-style26 {
            width: 116px;
        }
        .auto-style27 {
            width: 88px;
        }
        .auto-style28 {
            margin-left: 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="border: thin inset #FF5050; text-align:center; font-family: Arial; font-size: x-large; font-style: oblique; font-variant: normal; text-transform: capitalize; color: #993300; background-color: #FF9900;">QUẢN LÝ LỚP CÁC HỆ ĐÀO TẠO HỌC VIỆN TÀI CHÍNH</h1>
    <div>

        <table style="width:100%;">
            <tr>
                <td class="auto-style25">Hệ đào tạo:</td>
                <td class="auto-style26">&nbsp;<asp:DropDownList ID="ddlDT" runat="server" Height="31px" Width="178px">
                    <asp:ListItem Value="0">------------Hệ đào tạo------------</asp:ListItem>
                    <asp:ListItem>Chính quy</asp:ListItem>
                    <asp:ListItem>Chất lượng cao</asp:ListItem>
                    <asp:ListItem>Văn bằng 2</asp:ListItem>
                </asp:DropDownList></td>
                <td class="auto-style27">Khoa:</td>
                <td>
                    <asp:DropDownList ID="ddlKhoa" runat="server" Height="31px" Width="178px">
                        <asp:ListItem Value="0">---------------Khoa---------------</asp:ListItem>
                        <asp:ListItem>Kế toán</asp:ListItem>
                        <asp:ListItem>Tài chính - Ngân hàng</asp:ListItem>
                        <asp:ListItem>Quản trị Kinh doanh</asp:ListItem>
                        <asp:ListItem>Ngôn ngữ Anh</asp:ListItem>
                        <asp:ListItem>Hệ thống thông tin Kinh tế</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">Khóa:</td>
                <td class="auto-style26">
                    <asp:DropDownList ID="ddlKhoahoc" runat="server" CssClass="auto-style28" Height="31px" Width="178px">
                        <asp:ListItem Value="0">---------------Khóa---------------</asp:ListItem>
                        <asp:ListItem>55</asp:ListItem>
                        <asp:ListItem>56</asp:ListItem>
                        <asp:ListItem>57</asp:ListItem>
                        <asp:ListItem>58</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style27">Mã lớp:</td>
                <td>
                    <asp:TextBox ID="tbxMalop" runat="server" Height="20px" Width="178px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">Tên lớp:</td>
                <td class="auto-style26">
                    <asp:TextBox ID="tbxLop" runat="server" Height="20px" Width="272px"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Quanlylop.aspx" >&lt;&lt; Back</asp:LinkButton>
                </td>
                <td class="auto-style26">
                    <asp:Label ID="lblThongBao" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style27">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Lưu" Width="52px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
    <div>
    </div>
</asp:Content>
