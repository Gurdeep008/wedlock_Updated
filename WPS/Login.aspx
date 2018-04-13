<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WPS.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #id_login_remember_btn :hover {
            color: black;
        }

        .ico {
            color: #337ab7;
        }
    </style>
    <script type="text/javascript">

        function showPass() {
            var pf = document.getElementById("<%=id_login_password.ClientID %>").type;

            if (pf == "password") {
                document.getElementById("<%=id_login_password.ClientID %>").type = "text";
            }
            else if (pf == "text") {
                document.getElementById("<%=id_login_password.ClientID %>").type = "password";
            }
    }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 text-center">
                <h1>Login</h1>
            </div>
            <div class="col-md-6">
            </div>

        </div>
    </div>
    <div class="container">
        <div class="row">

            <div class="col-md-4">
            </div>

            <div class="col-md-4">
                <div class="input-group">
                    <span class="input-group-addon ico"><i class="glyphicon glyphicon-user"></i></span>
                    <asp:TextBox runat="server" ID="id_login_uname" CssClass="form-control" placeholder="User name / Email / Phone" required="required"></asp:TextBox>
                </div>
                <br />
                <div class="input-group">
                    <span class="input-group-addon ico"><i class="glyphicon glyphicon-lock"></i></span>
                    <asp:TextBox TextMode="Password" runat="server" ID="id_login_password" CssClass="form-control" placeholder="Password" required="required"></asp:TextBox>
                    <span id="id_login_remember_btn" title="Show password" class="input-group-addon ico" onclick="showPass();"><i class="glyphicon glyphicon-eye-open"></i></span>
                </div>
                <br />
                <div class="input-group">
                    <asp:Label ForeColor="Red" runat="server" ID="id_login_result" Text=""></asp:Label>
                </div>
                <br />
                <div class="form-group">
                    <asp:CheckBox ID="id_login_rememberme" runat="server" />
                    <asp:Label runat="server" Text="Keep me logged in" AssociatedControlID="id_login_rememberme"></asp:Label>
                </div>
                <div class="form-group">
                    <asp:Button runat="server" ID="id_login_btn" OnClick="id_login_btn_Click" Text="Login" CssClass="form-control btn-primary" />
                </div>
                <div class="form-group">
                    <a href="#">
                        <asp:Label runat="server" Text="Forgot password?"></asp:Label></a>
                </div>


                <%-- <div class="form-group">
                    <asp:Label runat="server" CssClass="lbl" Text="User name" AssociatedControlID="id_login_uname" required="required"></asp:Label>
                    <asp:TextBox ID="id_login_uname" runat="server" CssClass="form-control" placeholder="User name / Email / Phone"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" CssClass="lbl" Text="Password" AssociatedControlID="id_login_password" required="required"></asp:Label>
                    <asp:TextBox ID="id_login_password" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:CheckBox ID="id_login_rememberme" runat="server" />
                    <asp:label runat="server" Text="Keep me logged in" AssociatedControlID="id_login_rememberme"></asp:label>
                </div>
                <div class="form-group">
                    <asp:Button runat="server" Text="Login" CssClass="form-control btn-primary" />
                </div>
                 <div class="form-group">
                     <a href="#"><asp:Label runat="server" Text="Forgot password?"></asp:Label></a>
                </div>
               
            
            </div>--%>

                <div class="col-md-4">
                </div>

            </div>
        </div>
    </div>
</asp:Content>
