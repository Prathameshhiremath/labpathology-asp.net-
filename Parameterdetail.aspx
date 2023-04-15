<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Parameterdetail.aspx.cs" Inherits="WebApplication1.Parameterdetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 87%;
            height: 461px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            width: 177px;
        }
        .auto-style5 {
            height: 23px;
            width: 177px;
            text-align: right;
        }
        .auto-style6 {
            width: 177px;
            text-align: right;
        }
        .auto-style7 {
            width: 177px;
            height: 23px;
        }
    </style>
</head>
<body bgcolor="336677">
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Large" ForeColor="#0099FF" Text="PARAMETER DETAILS" BorderStyle="Double" Width="345px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblparameterdetailid" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Parameter Detail Id :" Font-Italic="False"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtparameterdetailid" runat="server" Width="90px"></asp:TextBox>
&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtparameterdetailid" ErrorMessage="Id is mandatory" ForeColor="Red" ValidationGroup="save">*</asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnsearch" runat="server" BackColor="#3399FF" Text="Search" Font-Bold="True" Font-Names="Times New Roman" OnClick="btnsearch_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblparameterid" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Parameter Id :"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drpparameterid" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpparameterid_SelectedIndexChanged">
                        </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtparameterid" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblgender" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Gender :"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drpgender" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblfromage" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="From Age :"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtfromage" runat="server" Width="43px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lbltoage" runat="server" Font-Bold="False" Font-Names="Times New Roman" Text="To Age :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txttoage" runat="server" OnTextChanged="txttoage_TextChanged" Width="43px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblminvalue" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Min Value :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtminvalue" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblmaxvalue" runat="server" Font-Bold="False" Font-Names="Times New Roman" Text="Max Value :"></asp:Label>
&nbsp;<asp:TextBox ID="txtmaxvalue" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lbltextvalue" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Text Value :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txttextvalue" runat="server" Height="28px" Width="223px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblnormalrange" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Normal Range :"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtnormalrange" runat="server" Width="225px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblmessage" runat="server" ForeColor="#33CC33" Text="-------------"></asp:Label>
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
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnsubmit" runat="server" BackColor="#3399FF" Text="Submit" Font-Bold="True" Font-Names="Times New Roman" Width="59px" OnClick="btnsubmit_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnreset" runat="server" BackColor="#3399FF" Text="Reset" Font-Bold="True" Font-Names="Times New Roman" Width="50px" OnClick="btnreset_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnedit" runat="server" BackColor="#3399FF" Font-Bold="True" Font-Names="Times New Roman" Text="Edit" Width="51px" OnClick="btnedit_Click" style="height: 25px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btndelete" runat="server" BackColor="#3399FF" Font-Bold="True" Font-Names="Times New Roman" OnClick="btndelete_Click" Text="Delete" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style3"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
