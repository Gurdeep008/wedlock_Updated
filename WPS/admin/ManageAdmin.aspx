<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageAdmin.aspx.cs" Inherits="WPS.admin.ManageAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .abc {
            padding: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--OnRowEditing="" OnRowUpdating="" OnRowCancelingEdit=""--%>
    <div class="col-md-12">
        <h1>Admin Management</h1>
        <asp:GridView ID="gv_admin" runat="server" AutoGenerateColumns="False"
             BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" CellSpacing="2" ForeColor="Black">
            <Columns>
                <asp:BoundField HeaderText="Username" DataField="username" ItemStyle-CssClass="abc" HeaderStyle-CssClass="abc" />
                <asp:BoundField HeaderText="Password" DataField="pswd" ItemStyle-CssClass="abc" HeaderStyle-CssClass="abc" />
                <asp:BoundField HeaderText="Role name" DataField="role_name" ItemStyle-CssClass="abc" HeaderStyle-CssClass="abc" />
                <asp:CheckBoxField HeaderText="Active" DataField="active" HeaderStyle-CssClass="abc" />


                <%--<asp:TemplateField HeaderText="Active" HeaderStyle-CssClass="abc" ItemStyle-CssClass="abc">
                    <ItemTemplate>
                        <asp:CheckBox ID="id_active" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>--%>

                <%-- <asp:TemplateField HeaderText="">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnk" runat="server" Text="edit" CommandName="edit"></asp:LinkButton>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:LinkButton ID="lnk2" runat="server" Text="Update" CommandName="update"></asp:LinkButton>
                        <asp:LinkButton ID="lnk3" runat="server" Text="cancel" CommandName="cancel"></asp:LinkButton>
                    </EditItemTemplate>
                </asp:TemplateField>--%>
            </Columns>

            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="#f05759" ForeColor="#eeeeee" HorizontalAlign="Justify" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>

    </div>

</asp:Content>
