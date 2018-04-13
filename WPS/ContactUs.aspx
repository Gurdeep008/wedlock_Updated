<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="WPS.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #id_contact_send_btn {
            background-color: #f05759;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="row">
            <h1>Contact us</h1>
            <div class="col-md-8 block">

                <div class="col-md-4">

                    <div class="form-group">
                        <asp:Label runat="server" Text="Full name" AssociatedControlID="id_contact_fname"></asp:Label>
                        <asp:TextBox runat="server" ID="id_contact_fname" CssClass="form-control" placeholder="Full name" required="required"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" Text="Contact number" AssociatedControlID="id_contact_contact"></asp:Label>
                        <asp:TextBox runat="server" ID="id_contact_contact" CssClass="form-control" placeholder="Contact number" required="required"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" Text="Email address" AssociatedControlID="id_contact_email"></asp:Label>
                        <asp:TextBox runat="server" ID="id_contact_email" CssClass="form-control" placeholder="Email address" required="required"></asp:TextBox>
                    </div>
                </div>

                <div class="col-md-4">

                    <div class="form-group">
                        <asp:Label runat="server" Text="How can we help you?" AssociatedControlID="id_contact_msg"></asp:Label>
                        <asp:TextBox runat="server" TextMode="MultiLine" Rows="5" ID="id_contact_msg" CssClass="form-control" placeholder="Type message" required="required"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <asp:Button runat="server" Text="Send" Width="70" ID="id_contact_send_btn" CssClass="form-control btn-primary" />
                    </div>

                </div>
            </div>
            <div class="col-md-4 block">
                <h3>Address</h3>
                <p>
                    MY NAME IS ANTHONY GONSALWIS
                </p>
            </div>
        </div>



</asp:Content>
