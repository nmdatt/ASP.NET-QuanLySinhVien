<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateSV.aspx.cs" Inherits="btl_CSLT3.UpdateSV" %>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 align="center" style="background-color: #FF9933; font-size: x-large;">
        Chỉnh sửa thông tin sinh viên
    </h1>
    <div>

        <table style="width:100%;">
                <tr>
                <td class="auto-style26">Mã sinh viên:</td>
                <td class="auto-style31">
                    <asp:TextBox ID="txtmasv" runat="server" Width="215px" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style26">Tên lớp:</td>
                <td class="auto-style30">
                    <asp:DropDownList ID="ddlLop" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">Họ và tên:</td>
                <td class="auto-style31">
                    <asp:TextBox ID="txthoten" runat="server" Width="215px"></asp:TextBox>
                </td>
                <td class="auto-style26">Giới tính:</td>
                <td class="auto-style30">
                    <asp:DropDownList ID="ddlgt" runat="server">
                        <asp:ListItem Value="1">Nam</asp:ListItem>
                        <asp:ListItem Value="0">Nữ</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">Ngày sinh:</td>
                <td class="auto-style31">
                    <asp:TextBox ID="txtngaysinh" runat="server" Width="215px" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style26">Quê quán:</td>
                <td class="auto-style30">
                    <asp:TextBox ID="txtquequan" runat="server" Width="215px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">Hình ảnh:</td>
                <td class="auto-style31">
                    <asp:FileUpload ID="fulAnh" runat="server" />
                    <asp:Image ID="imgSV" runat="server" Width="100px" />
                </td>
                <td class="auto-style26">Ghi chú:</td>
                <td class="auto-style30">
                    <asp:TextBox ID="txtghichu" runat="server" Height="95px" Width="215px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">
                    &nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style27">
                    <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Lưu" />
                </td>
                <td class="auto-style33">
                    <asp:Button ID="btnHuy" runat="server" PostBackUrl="~/QLSV.aspx" Text="Hủy" />
                </td>
            </tr>
        </table>

    </div>
</asp:Content>
