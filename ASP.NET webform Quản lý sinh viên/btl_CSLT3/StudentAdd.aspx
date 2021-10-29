<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="StudentAdd.aspx.cs" Inherits="btl_CSLT3.StudentAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style28 {
            width: 130px;
            height: 30px;
        }
        .auto-style29 {
            width: 255px;
            height: 30px;
        }
        .auto-style30 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1 style="border: thin inset #FF5050; text-align:center; font-family: Arial; font-size: x-large; font-style: oblique; font-variant: normal; text-transform: capitalize; color: #993300; background-color: #FF9900;">Thêm thông tin sinh viên</h1>
             <table style="width:100%;">
            <tr>
                <td class="auto-style28">Mã sinh viên:</td>
                <td class="auto-style29">
                    <asp:TextBox ID="txtmaSV" runat="server" Height="23px" Width="220px" OnTextChanged="txtmaSV_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style28">Tên lớp:</td>
                <td class="auto-style30">
                    <asp:DropDownList ID="ddlLop" runat="server">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">Họ và tên:</td>
                <td class="auto-style29">
                    <asp:TextBox ID="txtHoTen" runat="server" Height="23px" Width="220px"></asp:TextBox>
                </td>
                <td class="auto-style28">Giới tính:</td>
                <td class="auto-style30">
                    <asp:DropDownList ID="ddlgt" runat="server">
                        <asp:ListItem Value="1">Nam</asp:ListItem>
                        <asp:ListItem Value="0">Nữ</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">Ngày sinh:</td>
                <td class="auto-style29">
                    <asp:TextBox ID="txtngaysinh" runat="server" Height="23px" Width="220px" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style28">Quê quán:</td>
                <td class="auto-style30">
                    <asp:TextBox ID="txtquequan" runat="server" Height="23px" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">Hình ảnh:</td>
                <td class="auto-style29">
                    <asp:FileUpload ID="uploadAnh" runat="server" />
                </td>
                <td class="auto-style28">Ghi chú:</td>
                <td class="auto-style30">
                    <asp:TextBox ID="txtghichu" runat="server" Height="23px" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/QLSV.aspx">&lt;&lt; Back</asp:LinkButton>
                </td>
                <td class="auto-style29">
                    <asp:Image ID="Image1" runat="server" Width="50px" />
                </td>
                <td class="auto-style28">
                    <asp:Button ID="btnSave" runat="server" Text="Lưu"  Width="60px" OnClick="btnSave_Click" />
                </td>
                <td class="auto-style30">
                    <asp:Label ID="lblThongbao" runat="server" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>
