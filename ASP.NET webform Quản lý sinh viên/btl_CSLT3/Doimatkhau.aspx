<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Doimatkhau.aspx.cs" Inherits="btl_CSLT3.Doimatkhau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style26 {
            height: 56px;
        }
        .auto-style28 {
            width: 337px;
            height: 40px;
        }
        .auto-style30 {
            width: 337px;
            height: 37px;
        }
        .auto-style32 {
            height: 27px;
            width: 337px;
        }
        .auto-style33 {
            width: 395px;
        }
        .auto-style34 {
        width: 395px;
        height: 40px;
    }
    .auto-style35 {
        width: 395px;
        height: 37px;
    }
    .auto-style36 {
        height: 32px;
        width: 395px;
    }
    .auto-style37 {
        margin-top: 6px;
    }
    .auto-style38 {
        height: 32px;
        width: 337px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>&nbsp;</h1>
    <h1>&nbsp;</h1>
    <h1 class="auto-style26" style="font-size: 35px; color: #0000FF; text-align: center">Đổi mật khẩu</h1>
    <table>
        <Tr>
			<Td class="auto-style28" style="font-size: large; text-align: right">Mật khẩu cũ:&nbsp;&nbsp; &nbsp; </Td>
			<Td class="auto-style34">
                <asp:TextBox runat="server" ID="txtMatkhaucu" TextMode="Password" Height="19px" Width="236px"></asp:TextBox>
			    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMatkhaucu" ErrorMessage="(*)" ForeColor="Red"></asp:RequiredFieldValidator>
			</Td>
			
		</Tr>
		<Tr>
			<Td align="left" class="auto-style30" style="font-size: large; text-align: right">Mật khẩu mới:&nbsp;&nbsp;&nbsp; </Td>
            <Td align="left" class="auto-style35">
                <asp:TextBox runat="server" ID="txtMatkhaumoi" TextMode="Password" Height="19px" Width="236px"></asp:TextBox>
			    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMatkhaumoi" ErrorMessage="(*)" ForeColor="Red"></asp:RequiredFieldValidator>
			</Td>
		</Tr>
	    <Tr>
			<Td align="left" class="auto-style38" style="font-size: large; text-align: right">Xác nhận lại mật khẩu mới:&nbsp;&nbsp;&nbsp; </Td>
            <Td align="left" class="auto-style36">
                <asp:TextBox runat="server" ID="txtXacnhanlaimatkhau" TextMode="Password" Height="19px" Width="236px"></asp:TextBox>
			    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtXacnhanlaimatkhau" ErrorMessage="(*)" ForeColor="Red"></asp:RequiredFieldValidator>
			</Td>
		</Tr>
        <tr>
            <td class="auto-style32"></td>
            <td class="auto-style33">
                <asp:Button runat="server" Text="Xác nhận" ID="btnXacnhan" CssClass="auto-style37" OnClick="btnXacnhan_Click" />
                <asp:Label ID="lblthongbaodoimatkhau" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
       
    </table>
</asp:Content>
