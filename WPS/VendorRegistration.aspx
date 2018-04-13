<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VendorRegistration.aspx.cs" Inherits="WPS.VendorRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-2">
            </div>
            <div class="col-md-8">

                <h1>Vendor Registration</h1>
                <div class="form-group col-md-6">
                    <asp:Label runat="server" CssClass="lbl" Text="First name" AssociatedControlID="id_fname"></asp:Label>
                    <asp:TextBox ID="id_fname" runat="server" CssClass="form-control" placeholder="First name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="id_fname" ErrorMessage="*Enter first name." ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group col-md-6">
                    <asp:Label runat="server" CssClass="lbl" Text="Last name" AssociatedControlID="id_lname"></asp:Label>
                    <asp:TextBox ID="id_lname" CssClass="form-control" runat="server" placeholder="Last name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="id_lname" ErrorMessage="*Enter last name." ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group col-md-6">
                    <asp:Label runat="server" CssClass="lbl" Text="Vendor" AssociatedControlID="id_Vendor_DropDownList"></asp:Label>
                    <asp:DropDownList ID="id_Vendor_DropDownList" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Select Vendor" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="Hindu" Value="Hindu"></asp:ListItem>
                        <asp:ListItem Text="Muslim" Value="Muslim"></asp:ListItem>
                        <asp:ListItem Text="Sikh" Value="Sikh"></asp:ListItem>
                        <asp:ListItem Text="Christian" Value="Christian"></asp:ListItem>
                        <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="id_Vendor_DropDownList" ErrorMessage="*Select vendor" ForeColor="Red" InitialValue="-1"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group col-md-6">
                    <asp:Label runat="server" CssClass="lbl" Text="Vendor Experience" AssociatedControlID="id_Vendexp_DropDownList"></asp:Label>
                    <asp:DropDownList ID="id_Vendexp_DropDownList" runat="server" CssClass="form-control">
                        <asp:ListItem Text="--Select experience--" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="0-1" Value="0-1"></asp:ListItem>
                        <asp:ListItem Text="1-3" Value="1-3"></asp:ListItem>
                        <asp:ListItem Text="3-5" Value="3-5"></asp:ListItem>
                        <asp:ListItem Text="5+" Value="5+"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="id_Vendexp_DropDownList" ErrorMessage="*Select vendor experience" ForeColor="Red" InitialValue="-1"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group col-md-6">
                    <asp:Label runat="server" CssClass="lbl" Text="Services" AssociatedControlID="id_Services_DropDownList"></asp:Label>
                    <asp:DropDownList ID="id_Services_DropDownList" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Select Services" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="Invitation" Value="Invitation"></asp:ListItem>
                        <asp:ListItem Text="Decoration" Value="Decoration"></asp:ListItem>
                        <asp:ListItem Text="Venues" Value="Venues"></asp:ListItem>
                        <asp:ListItem Text="Outfits" Value="Outfits"></asp:ListItem>
                        <asp:ListItem Text="Photography" Value="Photography"></asp:ListItem>
                        <asp:ListItem Text="Makeup" Value="Makeup"></asp:ListItem>
                        <asp:ListItem Text="Jewellaries" Value="Jewellaries"></asp:ListItem>
                        <asp:ListItem Text="Catering" Value="Catering"></asp:ListItem>
                        <asp:ListItem Text="DJ Music" Value="DJ Music"></asp:ListItem>

                    </asp:DropDownList>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="id_Services_DropDownList" ErrorMessage="*Select services" ForeColor="Red" InitialValue="-1"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group col-md-6">
                    <asp:Label runat="server" CssClass="lbl" Text="Address" AssociatedControlID="id_addr"></asp:Label>
                    <asp:TextBox ID="id_addr" runat="server" CssClass="form-control" placeholder="Address"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="id_addr" ErrorMessage="*Enter address." ForeColor="Red"></asp:RequiredFieldValidator>
                </div>


                <div class="form-group col-md-6">
                    <asp:Label runat="server" CssClass="lbl" Text="Mobile number" AssociatedControlID="id_contact"></asp:Label>
                    <asp:TextBox ID="id_contact" runat="server" CssClass="form-control" placeholder="Mobile number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="id_contact" ErrorMessage="*Contact is madatory" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="id_contact" Display="Dynamic" ErrorMessage="*10 digits only" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="id_contact" ErrorMessage="*Only numbers" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" Display="Dynamic"></asp:CompareValidator>
                </div>

                <div class="form-group col-md-6">
                    <asp:Label runat="server" CssClass="lbl" Text="Email address" AssociatedControlID="id_email"></asp:Label>
                    <asp:TextBox ID="id_email" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="id_email" ErrorMessage="*Email is required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="id_email" ErrorMessage="*Email is invalid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
