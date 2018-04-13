<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="WPS.UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .col-md-8 {
            /*border: 1px solid black;*/
        }

        .bgc {
            background-color: white;
            margin:20px 0px 20px 0px;
            box-shadow: 0px 0px 10px grey;
        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2 bgs">
            </div>
            <div class="col-md-8 bgc">

                <h1>User Registration</h1>
                <div class="form-group col-md-4">
                    <asp:Label runat="server" CssClass="lbl" Text="First name" AssociatedControlID="id_fname"></asp:Label>
                    <asp:TextBox ID="id_fname" runat="server" CssClass="form-control" placeholder="First name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="id_fname" ErrorMessage="*Enter first name." ForeColor="Red" ValidationGroup="vg_userreg"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group col-md-4">
                    <asp:Label runat="server" CssClass="lbl" Text="Last name" AssociatedControlID="id_lname"></asp:Label>
                    <asp:TextBox ID="id_lname" CssClass="form-control" runat="server" placeholder="Last name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="id_lname" ErrorMessage="*Enter last name." ForeColor="Red" ValidationGroup="vg_userreg"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group col-md-4">
                    <asp:Label runat="server" CssClass="lbl" Text="Choose a username" AssociatedControlID="id_uname"></asp:Label>
                    <asp:TextBox ID="id_uname" CssClass="form-control" placeholder="Username" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="id_uname" ErrorMessage="*Enter username." ForeColor="Red" ValidationGroup="vg_userreg"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group col-md-6">
                    <asp:Label runat="server" CssClass="lbl" Text="Email address" AssociatedControlID="id_email"></asp:Label>
                    <asp:TextBox ID="id_email" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="id_email" ErrorMessage="*Email is required" ForeColor="Red" ValidationGroup="vg_userreg" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="id_email" ErrorMessage="*Email is invalid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vg_userreg" Display="Dynamic" Enabled="False"></asp:RegularExpressionValidator>
                </div>

                <div class="form-group col-md-6">
                    <asp:Label runat="server" CssClass="lbl" Text="Mobile number" AssociatedControlID="id_contact"></asp:Label>
                    <asp:TextBox ID="id_contact" runat="server" CssClass="form-control" placeholder="Mobile number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="id_contact" ErrorMessage="*Contact is madatory" ForeColor="Red" ValidationGroup="vg_userreg" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="id_contact" Display="Dynamic" ErrorMessage="*10 digits only" ForeColor="Red" ValidationExpression="[0-9]{10}" ValidationGroup="vg_userreg" Enabled="False"></asp:RegularExpressionValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="id_contact" ErrorMessage="*Only numbers" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="vg_userreg" Display="Dynamic" Enabled="False"></asp:CompareValidator>

                    <%--<asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="id_contact" ErrorMessage="*Only numbers" ForeColor="Red" Operator="DataTypeCheck"  Type="Integer" ValidationGroup="vg_userreg" Display="Dynamic"></asp:CompareValidator>--%>
                </div>

                <div class="form-group col-md-6">
                    <asp:Label runat="server" CssClass="lbl" Text="Gender" AssociatedControlID="id_gender_DropDownList"></asp:Label>
                    <asp:DropDownList ID="id_gender_DropDownList" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Male" Value="M"></asp:ListItem>
                        <asp:ListItem Text="Female" Value="F"></asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="form-group col-md-6">
                    <asp:Label runat="server" CssClass="lbl" Text="Religion" AssociatedControlID="id_religion_DropDownList"></asp:Label>
                    <asp:DropDownList ID="id_religion_DropDownList" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="Hindu" Value="Hindu"></asp:ListItem>
                        <asp:ListItem Text="Muslim" Value="Muslim"></asp:ListItem>
                        <asp:ListItem Text="Sikh" Value="Sikh"></asp:ListItem>
                        <asp:ListItem Text="Christian" Value="Christian"></asp:ListItem>
                        <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="id_religion_DropDownList" ErrorMessage="*Select religion" ForeColor="Red" InitialValue="-1" ValidationGroup="vg_userreg"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group col-md-12">
                    <asp:Label runat="server" CssClass="lbl" Text="Address" AssociatedControlID="id_address"></asp:Label>
                    <asp:TextBox ID="id_address" runat="server" CssClass="form-control" TextMode="multiline" placeholder="Address"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="requiredfieldvalidator" runat="server" ControlToValidate="id_address" ErrorMessage="*address is madatory" ForeColor="red" ValidationGroup="vg_userreg"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group col-md-6">
                    <asp:Label runat="server" CssClass="lbl" Text="Choose a password" AssociatedControlID="id_password"></asp:Label>
                    <asp:TextBox ID="id_password" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="id_password" ErrorMessage="*Password is mandatory" ForeColor="Red" ValidationGroup="vg_userreg"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group col-md-6">
                    <asp:Label runat="server" CssClass="lbl" Text="Confirm password" AssociatedControlID="id_cpassword"></asp:Label>
                    <asp:TextBox ID="id_cpassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Confirm password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="id_cpassword" ControlToCompare="id_password" ErrorMessage="*Password mismatch" ForeColor="Red" Display="Dynamic" ValidationGroup="vg_userreg" Enabled="False"></asp:CompareValidator>
                </div>

                <div class="form-group col-md-12">
                    <asp:Button ID="regbtn" Width="200" OnClick="regbtn_Click" CssClass="form-control btn-primary pull-right" runat="server" Text="Register" ValidationGroup="vg_userreg" />
                </div>
                
                <div class="form-group col-md-12">
                    <br />
                    <br />
                </div>


            </div>

            <div class="col-md-2 bgs">
                <div class="form-group">
                    <h4>
                        <asp:Label runat="server" Text="Are you a Vendor?" AssociatedControlID="id_venderreg_btn"></asp:Label></h4>
                    <asp:Button runat="server" OnClick="id_venderreg_btn_Click" CssClass="form-control btn-primary" Text="Register now" ID="id_venderreg_btn" />
                </div>
                <div class="col-md-2">
                </div>

            </div>

        </div>

    </div>
</asp:Content>
