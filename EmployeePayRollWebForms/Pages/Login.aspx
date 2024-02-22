<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmployeePayRollWebForms.Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../bootstrap.css" />
</head>
<body>
    <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" runat="server" href="~/">Application name</a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target=".navbar-collapse" title="Toggle navigation" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse d-sm-inline-flex justify-content-between">
                <ul class="navbar-nav flex-grow-1">
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/">Home</a></li>
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/About">About</a></li>
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/Contact">Contact</a></li>
                </ul>

            </div>
            <div class="float-end me-2">

                <ul class="navbar-nav flex-grow-1 ">

                    <li class="nav-item"><a class="nav-link btn btn-primary btn-sm text-white" runat="server" href="~/Pages/Register.aspx">Register</a></li>

                </ul>

            </div>
        </div>
    </nav>
    <br />
    <br />
    <div class="container">
        <div class="row ">
            <div class="col-md-4 rounded-4 shadow-lg" style="margin: 0px auto; height: 350px; box-shadow: rgba(0, 0, 0, 0.67) 2px 2px 5px 5px;">
                <br />
                <h5 class="ms-3">Sign in to your account</h5>
                <br />
                <form id="form1" runat="server" class="col-11 ms-3">
                    <div class="form-group">
                        <asp:Label ID="Id" runat="server" Text="Id" CssClass="control-label"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <br />
                    <div class="form-group">
                        <asp:Label ID="Name" runat="server" Text="Name" CssClass="control-label"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <br />
                    <div class="form-group">
                        <asp:Button ID="ButtonLogin" runat="server" Text="Login" class="btn btn-primary" OnClick="Button1_Click" />
                    </div>
                </form>
            </div>
        </div>
    </div>

    <br />
    <br />
    <br />
    <br />

    <div class="container body-content">
        <a href="#">&larr;back</a>
        <br />
        <br />
        <hr />
        <footer>
            <p>&copy; <%: DateTime.Now.Year %> - My ASP.NET Application</p>
        </footer>
    </div>
</body>
</html>
