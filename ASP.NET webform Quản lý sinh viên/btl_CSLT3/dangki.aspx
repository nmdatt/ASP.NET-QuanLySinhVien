<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="dangki.aspx.cs" Inherits="btl_CSLT3.dangki" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style27 {
            width: 466px;
        }
        .auto-style39 {
            height: 34px;
        }
        .auto-style44 {
            width: 466px;
            height: 16px;
        }
        .auto-style45 {
            height: 16px;
        }
        .auto-style46 {
            width: 466px;
            height: 32px;
        }
        .auto-style47 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td colspan="2" style="font-size: 35px; text-align: center; color: #0000FF;">
                <br />
                <b>Đăng ký&nbsp;</b></td>
        </tr>
        <tr>
            <td class="auto-style44"></td>
            <td class="auto-style45"></td>
        </tr>
        <tr>
            <td class="auto-style46" style="text-align: right; font-size: large;">Mã giảng viên:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style47">
                <asp:TextBox ID="magiangvien" runat="server" Width="224px" Height="19px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="magiangvien" ErrorMessage="(*)" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style46" style="text-align: right; font-size: large;">Tên giảng viên:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style47">
                <asp:TextBox ID="tengiangvien" runat="server" Width="224px" Height="19px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tengiangvien" ErrorMessage="(*)" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style46" style="text-align: right; font-size: large;">&nbsp; Mật khẩu:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style47">
                <asp:TextBox ID="matkhaudki" runat="server" TextMode="Password" Width="224px" Height="19px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="matkhaudki" ErrorMessage="(*)" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style46" style="text-align: right; font-size: large;">Xác nhận mật khẩu:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style47">
                <asp:TextBox ID="nhaplaimatkhau" runat="server" TextMode="Password" Width="224px" Height="19px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="nhaplaimatkhau" ErrorMessage="(*)" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style39" colspan="2" style="text-align: center">
                <asp:Label ID="lblthongbaodki" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">&nbsp;</td>
            <td colspan="2">
                <asp:Button ID="nutdangki" runat="server" Text="Đăng kí" Width="114px" OnClick="nutdangki_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
