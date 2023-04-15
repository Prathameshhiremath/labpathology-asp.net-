<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Patient.aspx.cs" Inherits="WebApplication1.Patient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 80%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 152px;
        }
        .auto-style4 {
            width: 152px;
            text-align: right;
        }
        .auto-style5 {
            width: 152px;
            text-align: right;
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
        }
        .auto-style7 {
            width: 152px;
            height: 30px;
        }
        .auto-style8 {
            width: 152px;
            text-align: right;
            height: 36px;
        }
        .auto-style9 {
            height: 36px;
        }
        .auto-style10 {
            width: 152px;
            height: 34px;
        }
        .auto-style11 {
            height: 34px;
        }
    </style>
</head>
<body bgcolor="336677">
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:Label ID="Label1" runat="server" BorderColor="#0099FF" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Large" ForeColor="#0066FF" Text="PATIENT REGISTRATION" BorderStyle="Double" Width="407px"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblpatientid" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Patient Id :"></asp:Label>
                    </td>
                    <td>&nbsp;&nbsp;
                        <asp:TextBox ID="txtpatientid" runat="server" BorderColor="#003366" Width="69px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnsearch" runat="server" BackColor="#3399FF" Font-Names="Times New Roman" Text="Search" OnClick="btnsearch_Click" Font-Bold="True" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblpname" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Name :"></asp:Label>
                    </td>
                    <td>&nbsp;&nbsp;
                        <asp:TextBox ID="txtpname" runat="server" BorderColor="#003366" Width="361px" ValidationGroup="save"></asp:TextBox>
                    &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpname" ErrorMessage="Name is mandatory" ForeColor="Red" ValidationGroup="save">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="lblpbirthrate" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="BirthDate"></asp:Label>
                    </td>
                    <td class="auto-style9">&nbsp;&nbsp;
                        <asp:TextBox ID="txtbirthdate" runat="server" BorderColor="#003366" Width="149px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblpgender" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Gender"></asp:Label>
                    </td>
                    <td>&nbsp;&nbsp;
                        <asp:DropDownList ID="drpgender" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblmobile" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Mobile No. :"></asp:Label>
                    </td>
                    <td class="auto-style6">&nbsp;&nbsp;
                        <asp:TextBox ID="txtpmobile" runat="server" BorderColor="#003366" Width="148px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblpemailid" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Email Id :"></asp:Label>
                    </td>
                    <td>&nbsp;&nbsp;
                        <asp:TextBox ID="txtpemailid" runat="server" BorderColor="#003366" Width="360px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblpoccupation" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Occupation :"></asp:Label>
                    </td>
                    <td>&nbsp;&nbsp;
                        <asp:TextBox ID="txtpoccupation" runat="server" BorderColor="#003366" Width="356px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblpaddress" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Address  :"></asp:Label>
                    </td>
                    <td>&nbsp;&nbsp;
                        <asp:TextBox ID="txtpaddress" runat="server" BorderColor="#003366" BorderStyle="Groove" Height="38px" TextMode="MultiLine" Width="352px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblmessage" runat="server" Text="-----------" ForeColor="#009900"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/HomePage.aspx">Go to HomePage</asp:HyperLink>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnsubmit" runat="server" BackColor="#3399FF" Font-Names="Times New Roman" Text="Submit" OnClick="btnsubmit_Click" Width="62px" Font-Bold="True" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnreset" runat="server" BackColor="#3399FF" Font-Names="Times New Roman" Text="Reset" ForeColor="Black" Width="52px" Font-Bold="True" OnClick="btnreset_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnedit" runat="server" BackColor="#3399FF" Font-Bold="True" Font-Names="Times New Roman" OnClick="btnedit_Click" Text="Edit" Width="52px" />
                    &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btndelete" runat="server" BackColor="#3399FF" Font-Bold="True" Font-Names="Times New Roman" OnClick="btndelete_Click" Text="Delete" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpatientid" ErrorMessage="Id is mandatory" ForeColor="Red" ValidationGroup="save">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
