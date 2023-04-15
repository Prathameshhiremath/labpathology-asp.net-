<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Parameter.aspx.cs" Inherits="WebApplication1.Parameter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: right;
            width: 171px;
        }
        .auto-style4 {
            width: 171px;
        }
        .auto-style5 {
            margin-left: 40px;
            width: 637px;
        }
        .auto-style6 {
            width: 637px;
        }
        .auto-style7 {
            width: 875px;
            height: 354px;
        }
    </style>
</head>
<body bgcolor="336677">
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style7">
                <tr>
                    <td class="auto-style2" colspan="2">
                        <strong>
                        <asp:Label ID="Label1" runat="server" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#3399FF" Text="PARAMETER" BorderStyle="Double" Width="233px"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblparameterid" runat="server" Font-Names="Times New Roman" Text="Parameter Id :" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtparameterid" runat="server" Width="83px"></asp:TextBox>
&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtparameterid" EnableViewState="False" ErrorMessage="Id is mandatory" ForeColor="Red" ValidationGroup="save">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnsearch" runat="server" BackColor="#3399FF" Font-Names="Times New Roman" Text="Search" Font-Bold="True" OnClick="btnsearch_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblparametername" runat="server" Font-Names="Times New Roman" Text=" Name :" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtparametername" runat="server" Width="222px" ValidationGroup="save"></asp:TextBox>
                    &nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtparametername" EnableViewState="False" ErrorMessage="Name is mandatory" ForeColor="Red" ValidationGroup="save">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblparameterid1" runat="server" Font-Names="Times New Roman" Text=" Result Type :" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem Value="2"></asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblmessage" runat="server" ForeColor="#33CC33" Text="------------"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/HomePage.aspx">Go to HomePage</asp:HyperLink>
                    </td>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnsubmit" runat="server" BackColor="#3399FF" Font-Names="Times New Roman" ForeColor="Black" Text="Submit" OnClick="btnsubmit_Click" Font-Bold="True" Width="59px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnreset" runat="server" BackColor="#3399FF" Font-Names="Times New Roman" Text="Reset" Font-Bold="True" Width="59px" OnClick="btnreset_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnedit" runat="server" BackColor="#3399FF" Font-Bold="True" Font-Names="Times New Roman" OnClick="btnedit_Click" Text="Edit" Width="59px" />
                    &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btndelete" runat="server" BackColor="#3399FF" Font-Bold="True" Font-Names="Times New Roman" OnClick="btndelete_Click" Text="Delete" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ParameterReport.aspx">Report</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
