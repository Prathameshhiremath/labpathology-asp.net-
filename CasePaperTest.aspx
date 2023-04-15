<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CasePaperTest.aspx.cs" Inherits="WebApplication1.CasePaperTest" %>

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
            width: 106px;
        }
        .auto-style4 {
            width: 106px;
            text-align: right;
        }
    </style>
</head>
<body bgcolor="336677">
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#00CCFF" Text="CASEPAPER TEST" BorderStyle="Double" Width="284px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblctid" runat="server" Text="CPT Id :" Font-Bold="True" Font-Names="Times New Roman"></asp:Label>
&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtcpid" runat="server" Width="53px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcpid" ErrorMessage="Id is mandatory" ForeColor="Red" ValidationGroup="save">*</asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnsearch" runat="server" BackColor="#3399FF" Font-Bold="True" Font-Names="Times New Roman" Text="Search" OnClick="btnsearch_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblcasepaperid" runat="server" Text="CasePaper Id :" Font-Bold="True" Font-Names="Times New Roman"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drpcasepaperid" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpcasepaperid_SelectedIndexChanged">
                        </asp:DropDownList>
                    &nbsp;
                        <asp:TextBox ID="txtcasepaperid" runat="server" OnTextChanged="txtcasepaperid_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lbltestid" runat="server" Text="Test Id :" Font-Bold="True" Font-Names="Times New Roman"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drptestid" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drptestid_SelectedIndexChanged">
                        </asp:DropDownList>
                    &nbsp;
                        <asp:TextBox ID="txttestid" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lbltestresult" runat="server" Text="Test Result :" Font-Bold="True" Font-Names="Times New Roman"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txttestresult" runat="server" Height="28px" Width="196px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblremark" runat="server" Text="Remarks :" Font-Bold="True" Font-Names="Times New Roman"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtremarks" runat="server" Height="34px" Width="229px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblmessage" runat="server" ForeColor="#00CC00" Text="-----------"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/CasePaperTestParameterDetails.aspx">CasePaperTestParameterDetail</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/HomePage.aspx">Go to HomePage</asp:HyperLink>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnsubmit" runat="server" BackColor="#3399FF" Font-Bold="True" Font-Names="Times New Roman" Text="Submit" OnClick="btnsubmit_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnreset" runat="server" BackColor="#3399FF" Font-Bold="True" Font-Names="Times New Roman" Text="Reset" Height="19px" OnClick="btnreset_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnedit" runat="server" BackColor="#3399FF" Font-Bold="True" Font-Names="Times New Roman" OnClick="btnedit_Click" Text="Edit" Width="50px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btndelete" runat="server" BackColor="#3399FF" Font-Bold="True" Font-Names="Times New Roman" OnClick="btndelete_Click" Text="Delete" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
