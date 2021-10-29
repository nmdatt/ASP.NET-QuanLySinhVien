<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Quanlylop.aspx.cs" Inherits="btl_CSLT3.Quanlylop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="border: thin inset #FF5050; text-align:center; font-family: Arial; font-size: x-large; font-style: oblique; font-variant: normal; text-transform: capitalize; color: #993300; background-color: #FF9900;">QUẢN LÝ LỚP CÁC HỆ ĐÀO TẠO HỌC VIỆN TÀI CHÍNH</h1>
    
    <asp:GridView ID="gvLop" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="791px" AllowPaging="True" DataKeyNames="malop" Height="377px" CellSpacing="2" OnRowCancelingEdit="gvLop_RowCancelingEdit" OnRowEditing="gvLop_RowEditing" OnRowUpdating="gvLop_RowUpdating" >
                <Columns>
                    <asp:TemplateField HeaderText="Mã Lớp">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("malop") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="khoa" HeaderText="Khóa" />
                    <asp:BoundField DataField="tenlop" HeaderText="Tên Lớp" />
                    <asp:BoundField DataField="tenkhoa" HeaderText="Tên Khoa" />
                    <asp:BoundField DataField="heDT" HeaderText="Hệ Đào Tạo" />
                    <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" HeaderText="Chức năng" ShowEditButton="True" ShowCancelButton="true" UpdateText="Cập nhật" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" BorderColor="Black" BorderStyle="Solid" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" BorderColor="Black" BorderStyle="Solid" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>  
    <asp:Button ID="btnLopAdd" runat="server" Text="Thêm Lớp" OnClick="btnLopAdd_Click" Height="35px" Width="121px"  />  
</asp:Content>
