<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebApplication1.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 80px;
        }
        .auto-style2 {
            width: 86%;
            height: 321px;
        }
        .auto-style5 {
            width: 287px;
            height: 23px;
            text-align: center;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            width: 287px;
            text-align: center;
        }
        .auto-style9 {
            height: 23px;
            text-align: center;
        }
        .auto-style12 {
            height: 23px;
            width: 245px;
        }
        .auto-style13 {
            width: 245px;
        }
        .auto-style14 {
            width: 245px;
            text-align: center;
        }
        .auto-style15 {
            width: 245px;
            height: 23px;
            text-align: center;
        }
    </style>
</head>
<body bgcolor="336677" style="height: 334px; width: 990px;">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table align="center" class="auto-style2">
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="MASTERS" Font-Bold="True" Font-Names="Times New Roman" BorderStyle="Double"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" Text="TRANSACTION" Font-Bold="True" Font-Names="Times New Roman" BorderStyle="Double"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label3" runat="server" BorderStyle="Double" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" Text="REPORTS"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:LinkButton ID="lnkdepartment" runat="server" OnClick="lnkdepartment_Click" ForeColor="White">Department</asp:LinkButton>
                    </td>
                    <td class="auto-style14">
                        <asp:LinkButton ID="lnkbill" runat="server" OnClick="lnkbill_Click" ForeColor="White">Bill</asp:LinkButton>
                    </td>
                    <td class="auto-style7">
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ForeColor="White">Department</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:LinkButton ID="lnkpatient" runat="server" OnClick="lnkpatient_Click" ForeColor="White">Patient</asp:LinkButton>
                    </td>
                    <td class="auto-style15">
                        <asp:LinkButton ID="lnkcasepaper" runat="server" OnClick="lnkcasepaper_Click" ForeColor="White">CasePaper</asp:LinkButton>
                    </td>
                    <td class="auto-style9">
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" ForeColor="White">Test</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:LinkButton ID="lnkdoctor" runat="server" OnClick="lnkdoctor_Click" ForeColor="White">Doctot</asp:LinkButton>
                    </td>
                    <td class="auto-style15">
                        <asp:LinkButton ID="lnkcasepapertest" runat="server" OnClick="lnkcasepapertest_Click" ForeColor="White">CasePaperTest</asp:LinkButton>
                    </td>
                    <td class="auto-style9">
                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" ForeColor="White">Bill</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:LinkButton ID="lnksample" runat="server" OnClick="lnksample_Click" ForeColor="White">Sample</asp:LinkButton>
                    </td>
                    <td class="auto-style15">
                        <asp:LinkButton ID="lnktestmachine" runat="server" OnClick="lnktestmachine_Click" ForeColor="White">TestMachine</asp:LinkButton>
                    </td>
                    <td class="auto-style9">
                        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" ForeColor="White">Parameter</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:LinkButton ID="lnkunit" runat="server" OnClick="lnkunit_Click" ForeColor="White">Unit</asp:LinkButton>
                    </td>
                    <td class="auto-style15">
                        <asp:LinkButton ID="lnktestparameter" runat="server" OnClick="lnktestparameter_Click" ForeColor="White">TestParamter</asp:LinkButton>
                    </td>
                    <td class="auto-style9">
                        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" ForeColor="White">CasePaper</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:LinkButton ID="lnkparameter" runat="server" OnClick="lnkparameter_Click" ForeColor="White">Parameter</asp:LinkButton>
                    </td>
                    <td class="auto-style12"></td>
                    <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" ForeColor="White">Machine</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:LinkButton ID="lnkmachine" runat="server" OnClick="lnkmachine_Click" ForeColor="White">Machine</asp:LinkButton>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:LinkButton ID="lnktest" runat="server" OnClick="lnktest_Click" ForeColor="White">Test</asp:LinkButton>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:LinkButton ID="lnkparameterdetail" runat="server" OnClick="lnkparameterdetail_Click" ForeColor="White">ParameterDetail</asp:LinkButton>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>
                        <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click" ForeColor="White">ViewData</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
