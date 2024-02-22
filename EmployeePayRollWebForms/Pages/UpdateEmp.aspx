<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateEmp.aspx.cs" Inherits="EmployeePayRollWebForms.Pages.UpdateEmp" %>

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

        </div>
    </nav>
    <br />
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-8 shadow-lg rounded-4" style="margin: 0px auto;">
                <br />
                <h1 class="text-primary text-center rounded-top">Update Details</h1>
                <hr />
                <br />
                <form id="form1" class="w-75 " style="margin: 0px auto;" runat="server">
                    <div>

                        <table class="w-100">
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="Name" CssClass="form-label" runat="server" Text="Name"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Style="font-size: small;" Display="Dynamic" ErrorMessage="RequiredFieldValidator" SetFocusOnError="True" ForeColor="#CC0000">Name is Required</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="ProfileImage" runat="server" Text="Profile Image"></asp:Label>
                                </td>
                                <td>
                                    <div>
                                        <asp:RadioButton ID="RadioButton1" runat="server" value="/Assets/rollimg1.png" />
                                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Assets/rollimg1.png" />
                                        <asp:RadioButton ID="RadioButton2" runat="server" value="/Assets/rollimg2.png" />
                                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Assets/rollimg2.png" />
                                        <asp:RadioButton ID="RadioButton3" runat="server" value="/Assets/rollimg5.png" />
                                        <asp:Image ID="Image3" runat="server" ImageUrl="~/Assets/rollimg5.png" />
                                        <asp:RadioButton ID="RadioButton4" runat="server" value="/Assets/rollimg4.png" />
                                        <asp:Image ID="Image4" runat="server" ImageUrl="~/Assets/rollimg4.png" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Gender" runat="server" Text="Gender"></asp:Label>
                                </td>
                                <td class="auto-style2">
                                    <asp:RadioButtonList ID="RadioButtonList2" CssClass="form-control border-0" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem style="margin-left: 10px;">Female</asp:ListItem>
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Style="font-size: small;" runat="server" ControlToValidate="RadioButtonList2" Display="Dynamic" ErrorMessage="RequiredFieldValidator" SetFocusOnError="True" ForeColor="Red">Gender is Required</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="Department" runat="server" Text="Department"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                        <asp:ListItem>IT</asp:ListItem>
                                        <asp:ListItem>HR</asp:ListItem>
                                        <asp:ListItem>Developer</asp:ListItem>
                                        <asp:ListItem>Sales</asp:ListItem>
                                        <asp:ListItem>SE</asp:ListItem>
                                        <asp:ListItem>Analyst</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="Salary" runat="server" EnableTheming="True" Text="Salary"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Style="font-size: small;" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="RequiredFieldValidator" SetFocusOnError="True" ForeColor="#CC0000">Salary is Required</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="StartDate" runat="server" Text="Start Date"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="DateTimeField" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Style="font-size: small;" runat="server" ControlToValidate="DateTimeField" Display="Dynamic" ErrorMessage="RequiredFieldValidator" SetFocusOnError="True" ForeColor="Red">Start Date is Required</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:Label ID="Notes" runat="server" Text="Notes"></asp:Label>
                                </td>
                                <td class="auto-style1">
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Style="font-size: small;" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="RequiredFieldValidator" SetFocusOnError="True" ForeColor="Red">Notes is Required</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <br />
                                    <asp:Button ID="CancelRegister" runat="server" Text="Cancel" CssClass="btn btn-secondary" OnClick="CancelRegister_Click" />
                                </td>
                                <td>
                                    <br />
                                    <asp:Button ID="SubmitRegister" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="SubmitRegister_Click" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </div>
                </form>
                <br />
                <br />
            </div>
        </div>
    </div>
    <br />
    <br />

    <div class="container body-content">
        
        <%if (Session["Update"]!=null) { %>
            <a href="EmployeeList.aspx" >&larr;back</a>
        <% }  else if (Session["Id"] != null) {  %>
        <a href="Employee.aspx" >&larr;back</a>
        <% } %>
        <br />
        <br />
        <hr />
        <footer>
            <p>&copy; <%: DateTime.Now.Year %> - My ASP.NET Application</p>
        </footer>
    </div>

</body>
</html>
