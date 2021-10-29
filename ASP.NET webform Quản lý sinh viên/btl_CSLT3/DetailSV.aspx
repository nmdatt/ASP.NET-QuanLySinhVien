<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DetailSV.aspx.cs" Inherits="btl_CSLT3.DetailSV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style26 {
            height: 30px;
            width: 130px;
        }
        .auto-style27 {
            width: 130px;
        }
        .auto-style30 {
            height: 30px;
            width: 259px;
        }
        .auto-style31 {
            height: 30px;
            width: 255px;
        }
        .auto-style32 {
            width: 255px;
        }
        .auto-style33 {
            width: 259px;
        }
        .auto-style34 {
            height: 40px;
        }
        .auto-style35 {
            width: 100%;
            margin-top: 0px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="auto-style34" colspan="4" align="center" style="background-color: #FF9933; font-size: x-large;">
                Thông tin sinh viên</h1>
        <table class="auto-style35">
        <tr>
            <td class="auto-style26">Mã sinh viên:</td>
            <td class="auto-style31">
                <asp:Label ID="lblmasv" runat="server"></asp:Label>
            </td>
            <td class="auto-style26">Tên lớp:</td>
            <td class="auto-style30">
                <asp:Label ID="lblLop" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style26">Họ và tên:</td>
            <td class="auto-style31">
                <asp:Label ID="lblhoten" runat="server"></asp:Label>
            </td>
            <td class="auto-style26">Giới tính:</td>
            <td class="auto-style30">
                <asp:Label ID="lblgt" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style26">Ngày sinh:</td>
            <td class="auto-style31">
                <asp:Label ID="lblngaysinh" runat="server"></asp:Label>
            </td>
            <td class="auto-style26">Quê quán:</td>
            <td class="auto-style30">
                <asp:Label ID="lblquequan" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style26">Hình ảnh:</td>
            <td class="auto-style31">
                <asp:Image ID="imgSV" runat="server" Width="100px" />
            </td>
            <td class="auto-style26">Ghi chú:</td>
            <td class="auto-style30">
                <asp:Label ID="lblghichu" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/QLSV.aspx">&lt;&lt; Back</asp:LinkButton>
            </td>
            <td class="auto-style32">
                
                    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Sửa thông tin sinh viên" Height="45px" Width="171px" />
            </td>
            <td class="auto-style27">
                
                    &nbsp;</td>
            <td class="auto-style33">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
