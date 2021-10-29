<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="QLSV.aspx.cs" Inherits="btl_CSLT3.QLSV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
       .auto-style1 {
            margin-left: 0px;
            text-align: right;
        }
         .auto-style26 {
             height: 382px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="auto-style1">
            <h1 style="border: thin inset #FF5050; text-align:center; font-family: Arial; font-size: x-large; font-style: oblique; font-variant: normal; text-transform: capitalize; color: #993300; background-color: #FF9900;">QUẢN LÝ SINH VIÊN HỌC VIỆN TÀI CHÍNH</h1>
        </div>
        <div>
            <hr/>
        </div>
        <div class="auto-style26">

            <asp:GridView ID="gvSV" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="791px" AllowPaging="True" DataKeyNames="maSV" Height="377px" CellSpacing="2" OnRowCancelingEdit="gvSV_RowCancelingEdit" OnRowEditing="gvSV_RowEditing" OnRowUpdating="gvSV_RowUpdating" OnSelectedIndexChanging="gvSV_SelectedIndexChanging" OnPageIndexChanging="gvSV_PageIndexChanging" OnRowDataBound="gvSV_RowDataBound" OnRowDeleting="gvSV_RowDeleting" OnSelectedIndexChanged="gvSV_SelectedIndexChanged" >
                <Columns>
                    <asp:TemplateField HeaderText="Mã Sinh Viên">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("maSV") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="tenSV" HeaderText="Tên Sinh Viên" />
                    <asp:BoundField DataField="tenlop" HeaderText="Tên lớp" />
                    <asp:TemplateField HeaderText="Giới tính">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlGioiTinh" runat="server" Height="19px" Width="81px">
                                <asp:ListItem Value="1">Nam</asp:ListItem>
                                <asp:ListItem Value="0">Nữ</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# TranslateGT(Eval("gioitinh")) %>' ></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ngaysinh" HeaderText="Ngày Sinh" DataFormatString="{0:dd/MM/yyyy}" />
                    <asp:BoundField DataField="quequan" HeaderText="Quê Quán" />
                    <asp:CommandField CancelText="" DeleteText="Xóa" EditText="" HeaderText="Chức năng" ShowDeleteButton="True" ShowEditButton="True" UpdateText="" />
                    <asp:CommandField HeaderText="Xem chi tiết" SelectText="Xem " ShowSelectButton="True" />
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

        </div>
        <div>

            <asp:Button ID="Button1" runat="server" Text="Thêm sinh viên" PostBackUrl="~/StudentAdd.aspx" OnClick="Button1_Click" />

        </div>
</asp:Content>
