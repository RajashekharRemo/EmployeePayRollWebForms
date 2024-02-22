<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="EmployeePayRollWebForms.Pages.LoginEmp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../bootstrap.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
</head>
<body>
    <form id="form1" runat="server">
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
                        <li class="nav-item mt-1">
                            <asp:Label ID="LoginUserName" runat="server" CssClass="text-white mt-3" Text="Label"></asp:Label>
                        </li>
                        <li class="nav-item">
                            <asp:Button ID="LogOutEmp" runat="server" Text="Logout" OnClick="LoginEmp_Click" CssClass="btn btn-primary ms-2 text-white" />
                            &nbsp;</li>

                    </ul>
                </div>
            </div>
        </nav>
        <br />
        <br />
        <br />
        <div class="container">
            <div class="row">
                <div>
                    <h4>Employee Details</h4>
                    <hr />
                    <dl class="row">
                        <dt class="col-sm-2">Id</dt>
                        <dd class="col-sm-10">
                            <asp:Label ID="Id" runat="server" Text="Label"></asp:Label>
                        </dd>
                        <dt class="col-sm-2">Name
                        </dt>
                        <dd class="col-sm-10">
                            <asp:Label ID="Names" runat="server" Text="Label"></asp:Label>
                        </dd>
                        <dt class="col-sm-2">ProfileImage
                        </dt>
                        <dd class="col-sm-10">

                            <asp:Image ID="Image1" runat="server" />

                        </dd>
                        <dt class="col-sm-2">Gender
                        </dt>
                        <dd class="col-sm-10">
                            <asp:Label ID="Gender" runat="server" Text="Label"></asp:Label>
                        </dd>
                        <dt class="col-sm-2">Department
                        </dt>
                        <dd class="col-sm-10">
                            <asp:Label ID="Department" runat="server" Text="Label"></asp:Label>
                        </dd>
                        <dt class="col-sm-2">Salary
                        </dt>
                        <dd class="col-sm-10">
                            <asp:Label ID="Salary" runat="server" Text="Label"></asp:Label>
                        </dd>
                        <dt class="col-sm-2">StartDate
                        </dt>
                        <dd class="col-sm-10">
                            <asp:Label ID="StartDate" runat="server" Text="Label"></asp:Label>
                        </dd>
                        <dt class="col-sm-2">Notes
                        </dt>
                        <dd class="col-sm-10">
                            <asp:Label ID="Notes" runat="server" Text="Label"></asp:Label>
                        </dd>
                    </dl>
                </div>
            </div>
            <br />
            <br />
            <asp:Button ID="Update" runat="server" Text="Update" OnClick="Update_Click" CssClass="btn btn-primary" />
        </div>
        <br />



    </form>


    <div class="container body-content">
        <a href="Login.aspx" >&larr;back</a>
        <br />
        <br />
        <hr />
        <footer>
            <p>&copy; <%: DateTime.Now.Year %>- My ASP.NET Application</p><span></span>
        </footer>
    </div>
</body>
</html>
