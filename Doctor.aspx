<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Doctor.aspx.cs" Inherits="WebApplication1.Doctor" %>

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
            width: 166px;
        }
        .auto-style4 {
            width: 166px;
            text-align: right;
        }
        .auto-style5 {
            width: 166px;
            text-align: right;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 166px;
            text-align: right;
            height: 28px;
        }
        .auto-style8 {
            height: 28px;
        }
        .auto-style9 {
            width: 166px;
            text-align: right;
            height: 30px;
        }
        .auto-style10 {
            height: 30px;
        }
    </style>
</head>
<body bgcolor="336677">
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:Label ID="Label4" runat="server" BackColor="White" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Large" ForeColor="#0099FF" Text="DOCTOR" BorderStyle="Double" Width="255px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lbldoctorid" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Doctor Id :"></asp:Label>
                    </td>
                    <td>&nbsp;&nbsp;
                        <asp:TextBox ID="txtdoctorid" runat="server" Width="87px"></asp:TextBox>
&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdoctorid" ErrorMessage="Id is mandatory" ForeColor="Red" ValidationGroup="save">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;
                        <asp:Button ID="btnsearch" runat="server" BackColor="#0099FF" Font-Names="Times New Roman" Text="Search" Font-Bold="True" OnClick="btnsearch_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="lbldocname" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Name :"></asp:Label>
                    </td>
                    <td class="auto-style10">&nbsp;&nbsp;
                        <asp:TextBox ID="txtdocname" runat="server" Width="152px" ValidationGroup="save"></asp:TextBox>
                    &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtdocname" ErrorMessage="Name is mandatory" ForeColor="Red" ValidationGroup="save">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lbldocgender" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Gender :"></asp:Label>
                    </td>
                    <td>&nbsp;&nbsp;
                        <asp:DropDownList ID="drpdocgender" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="lbldocmobile" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Mobile No. :"></asp:Label>
                    </td>
                    <td class="auto-style8">&nbsp;&nbsp;
                        <asp:TextBox ID="txtdocmobile" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lbldocaddress" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Address :"></asp:Label>
                    </td>
                    <td>&nbsp;&nbsp;
                        <asp:TextBox ID="txtdocaddress" runat="server" Height="30px" Width="274px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lbldocemailid" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Email Id :"></asp:Label>
                    </td>
                    <td>&nbsp;&nbsp;
                        <asp:TextBox ID="txtdocemailid" runat="server" Width="221px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lbldocspecialization" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Specialization :"></asp:Label>
                    </td>
                    <td class="auto-style6">&nbsp;&nbsp;
                        <asp:TextBox ID="txtdocspecialization" runat="server" Height="28px" TextMode="MultiLine" Width="217px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lbldocqualification" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Qualification :"></asp:Label>
                    </td>
                    <td>&nbsp;&nbsp;
                        <asp:TextBox ID="txtdocqualification" runat="server" Width="153px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblmessage" runat="server" Text="------------" ForeColor="#99FF33"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/HomePage.aspx">Go to HomePage</asp:HyperLink>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnsubmit" runat="server" BackColor="#0099FF" Font-Names="Times New Roman" Text="Submit" OnClick="btnsubmit_Click" Font-Bold="True" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnreset" runat="server" BackColor="#0099FF" Font-Names="Times New Roman" Text="Reset" Font-Bold="True" OnClick="btnreset_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="bbtnedit" runat="server" BackColor="#3399FF" Font-Bold="True" Font-Names="Times New Roman" OnClick="bbtnedit_Click" Text="Edit" Width="56px" />
                    &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btndelete" runat="server" BackColor="#3399FF" Font-Bold="True" Font-Names="Times New Roman" OnClick="btndelete_Click" Text="Delete" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
