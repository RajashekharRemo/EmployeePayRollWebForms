<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="EmployeeList.aspx.cs" Inherits="EmployeePayRollWebForms.Pages.EmployeeList" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../bootstrap.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
    <form id="form2" runat="server">
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

                        <li class="nav-item"><a class="nav-link btn btn-primary btn-sm text-white" runat="server" href="~/Pages/Login.aspx">Login</a></li>

                    </ul>
                </div>
            </div>
        </nav>
        <br />
        <br />
        <br />
        <div class="container">
            <div class="row ">
                <div class="col-9" style="margin: 0px auto;">
                </div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-striped table-hover table-dark text-center"
                    BackColor="White" BorderColor="#CCCCCC" OnRowCommand="GridView1_RowCommand" DataKeyNames="Id,Emp_Name" BorderStyle="None" BorderWidth="1px" CellPadding="3">

                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />

                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Student ID" SortExpression="StudentId" Visible="true" />
                        <asp:BoundField DataField="Emp_Name" HeaderText="Student Name" SortExpression="StudentName" Visible="true" />
                        <asp:BoundField DataField="Gender" HeaderText="Student Address" SortExpression="Student_Address" Visible="true" />
                        <asp:BoundField DataField="Department" HeaderText="Email" SortExpression="Email" Visible="true" />
                        <asp:BoundField DataField="Salary" HeaderText="Branch" SortExpression="Branch" Visible="true" />
                        <asp:BoundField DataField="StartDate" HeaderText="Registration Date" SortExpression="Reg_Date" Visible="true" />
                        <asp:BoundField DataField="Notes" HeaderText="Registration Date" SortExpression="Reg_Date" Visible="true" />

                        <asp:TemplateField HeaderText="Student Image" Visible="true">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProfileImage") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:ButtonField ButtonType="Button" CommandName="Details" Text="Details" ControlStyle-CssClass="btn btn-secondary btn-sm mt-2" />
                        <asp:ButtonField ButtonType="Button" CommandName="Update" Text="Update" ControlStyle-CssClass="btn btn-info btn-sm mt-2" />
                        <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Delete" ControlStyle-CssClass="btn btn-danger btn-sm mt-2" />
                    </Columns>

                </asp:GridView>
            </div>
        </div>

        <div class="container">
            <div class="row ">

                <div class="col-9" style="margin: 0px auto;">


                    <asp:GridView ID="GridView2" runat="server" CssClass="table table-bordered table-striped table-hover table-dark text-center">
                    </asp:GridView>


                </div>
            </div>
        </div>


        <div class="container">
            <asp:Label ID="SearchHere" runat="server" Text="Search Here"></asp:Label>
            <asp:TextBox ID="SearchInput" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />

            <br />
            <br />
            <asp:Label ID="DAteLabel" runat="server" Text="Search Here Dates"></asp:Label>
            <asp:TextBox ID="DateText" runat="server" TextMode="Date"></asp:TextBox>
            <asp:TextBox ID="DateText2" runat="server" TextMode="Date"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="SubmitDateRange" OnClick="Button2_Click" />

            <asp:GridView ID="GridView3" runat="server" CssClass="table table-bordered table-striped table-hover table-dark text-center">

                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />

                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Student ID" SortExpression="StudentId" Visible="true" />
                    <asp:BoundField DataField="Emp_Name" HeaderText="Student Name" SortExpression="StudentName" Visible="true" />
                    <asp:BoundField DataField="Gender" HeaderText="Student Address" SortExpression="Student_Address" Visible="true" />
                    <asp:BoundField DataField="Department" HeaderText="Email" SortExpression="Email" Visible="true" />
                    <asp:BoundField DataField="Salary" HeaderText="Branch" SortExpression="Branch" Visible="true" />
                    <asp:BoundField DataField="StartDate" HeaderText="Registration Date" SortExpression="Reg_Date" Visible="true" />
                    <asp:BoundField DataField="Notes" HeaderText="Registration Date" SortExpression="Reg_Date" Visible="true" />

                    <asp:TemplateField HeaderText="Student Image" Visible="true">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProfileImage") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>


                </Columns>
            </asp:GridView>


            <br />
            <br />
            <br />
            <br />

            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-striped table-hover table-dark text-center"
                BackColor="White" BorderColor="#CCCCCC" DataKeyNames="Id,Emp_Name" BorderStyle="None" BorderWidth="1px" CellPadding="3">

                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />

                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Student ID" SortExpression="StudentId" Visible="true" />
                    <asp:BoundField DataField="Emp_Name" HeaderText="Student Name" SortExpression="StudentName" Visible="true" />
                    <asp:BoundField DataField="Gender" HeaderText="Student Address" SortExpression="Student_Address" Visible="true" />
                    <asp:BoundField DataField="Department" HeaderText="Email" SortExpression="Email" Visible="true" />
                    <asp:BoundField DataField="Salary" HeaderText="Branch" SortExpression="Branch" Visible="true" />
                    <asp:BoundField DataField="StartDate" HeaderText="Registration Date" SortExpression="Reg_Date" Visible="true" />
                    <asp:BoundField DataField="Notes" HeaderText="Registration Date" SortExpression="Reg_Date" Visible="true" />

                    <asp:TemplateField HeaderText="Student Image" Visible="true">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProfileImage") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>


                </Columns>

            </asp:GridView>
        </div>





    </form>
    <br />
    <br />


    <div class="container body-content">
        <a href="#">&larr;back</a>
        <br />
        <br />
        <hr />
        <footer>
            <p>&copy; <%: DateTime.Now.Year %>- My ASP.NET Application</p>
        </footer>
    </div>
</body>

</html>
