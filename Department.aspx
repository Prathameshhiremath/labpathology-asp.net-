<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="WebApplication1.Department" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 76%;
            height: 342px;
            margin-left: 39px;
        }
        .auto-style2 {
            width: 162px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            width: 162px;
            text-align: right;
        }
        .auto-style5 {
            text-align: center;
        }
    </style>
</head>
<body bgcolor="336677">
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style5" colspan="2">
                        <asp:Label ID="Label1" runat="server" BorderColor="Aqua" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Large" ForeColor="#0099FF" Text="DEPARTMENT MASTER" BorderStyle="Double" Width="363px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lbldepartmentid" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Department ID :"></asp:Label>
                    </td>
                    <td>&nbsp;&nbsp;
                        <asp:TextBox ID="txtdepartmentid" runat="server" CssClass="auto-style3" Width="150px"></asp:TextBox>
&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdepartmentid" ErrorMessage="Id is mandatory" ForeColor="Red" ValidationGroup="save">*</asp:RequiredFieldValidator>
                        &nbsp;
                        <asp:Button ID="btnsearch" runat="server" BackColor="#3399FF" Font-Names="Times New Roman" Text="Search" OnClick="btnsearch_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblname" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Name :"></asp:Label>
                    </td>
                    <td>&nbsp;&nbsp;
                        <asp:TextBox ID="txtname" runat="server" CssClass="auto-style3" Width="189px" OnTextChanged="txtname_TextChanged" ValidationGroup="save"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="Name is mandatory" ForeColor="Red" ValidationGroup="save">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblmessage" runat="server" Font-Bold="True" Text="-----------" ForeColor="#99FF33"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/HomePage.aspx">Go to HomePage</asp:HyperLink>
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnsubmit" runat="server" BackColor="#0099FF" Text="Submit" OnClick="btnsubmit_Click" ValidationGroup="save" Font-Bold="True" Font-Names="Times New Roman" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnreset" runat="server" BackColor="#0099FF" Text="Reset" OnClick="btnreset_Click" Font-Bold="True" Font-Names="Times New Roman" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnedit" runat="server" BackColor="#0099FF" Font-Bold="True" Font-Names="Times New Roman" OnClick="btnedit_Click" Text="Edit" Width="51px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btndelete" runat="server" BackColor="#0099FF" Font-Bold="True" Font-Names="Times New Roman" OnClick="btndelete_Click" Text="Delete" Width="51px" style="height: 25px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DepartmentReport.aspx">Report</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <br />
                        .<asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="save" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
