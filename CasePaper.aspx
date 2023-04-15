<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CasePaper.aspx.cs" Inherits="WebApplication1.CasePaper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 91%;
            height: 315px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 117px;
        }
        .auto-style4 {
            width: 117px;
            text-align: right;
        }
        .auto-style5 {
            width: 620px;
        }
        .auto-style6 {
            width: 117px;
            height: 23px;
        }
        .auto-style7 {
            width: 620px;
            height: 23px;
        }
        .auto-style8 {
            width: 117px;
            text-align: right;
            height: 32px;
        }
        .auto-style9 {
            width: 620px;
            height: 32px;
        }
        .auto-style10 {
            width: 117px;
            text-align: right;
            height: 48px;
        }
        .auto-style11 {
            width: 620px;
            height: 48px;
        }
        .auto-style12 {
            width: 117px;
            text-align: right;
            height: 56px;
        }
        .auto-style13 {
            width: 620px;
            height: 56px;
        }
        .auto-style14 {
            width: 117px;
            text-align: right;
            height: 35px;
        }
        .auto-style15 {
            width: 620px;
            height: 35px;
        }
        .auto-style16 {
            margin-left: 0px;
        }
    </style>
</head>
<body bgcolor="336677">
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Large" ForeColor="#00CCFF" Text="CASEPAPER" BorderStyle="Double" Width="254px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblcasepaperid" runat="server" Font-Names="Times New Roman" Text="CasePaper Id :" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style5">&nbsp;
                        <asp:TextBox ID="txtcasepaperid" runat="server"></asp:TextBox>
&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcasepaperid" ErrorMessage="Id is mandatory" ForeColor="Red">*</asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnsearch" runat="server" BackColor="#3399FF" Font-Bold="True" Font-Names="Times New Roman" Text="Search" OnClick="btnsearch_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblcasepaperdate" runat="server" Font-Names="Times New Roman" Text="CasePaper Date:"></asp:Label>
&nbsp;&nbsp;
                        <asp:TextBox ID="txtcasepaperdate" runat="server" Width="113px"></asp:TextBox>
&nbsp;
                        </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Label ID="lbldoctorid" runat="server" Font-Names="Times New Roman" Text="Doctor Id  :" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:DropDownList ID="drpdoctorid" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpdoctorid_SelectedIndexChanged">
                        </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtdoctorid" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblpatientid" runat="server" Font-Names="Times New Roman" Text="Patient Id :" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="drppatientid" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drppatientid_SelectedIndexChanged">
                        </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtpatientid" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="lblsymptoms" runat="server" Font-Names="Times New Roman" Text="Symptoms :" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtsymptoms" runat="server" Width="489px" Height="55px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lbldiagnosis" runat="server" Font-Names="Times New Roman" Text="Diagnosis :" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtdiagnosis" runat="server" Width="491px" Height="53px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="lblremarks" runat="server" Font-Names="Times New Roman" Text="Remarks :" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtremarks" runat="server" Height="30px" Width="214px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblvalidity" runat="server" Font-Names="Times New Roman" Text="Validity :" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtvalidity" runat="server" Height="27px" Width="149px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblmessage" runat="server" ForeColor="#33CC33" Text="---------"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RHome.aspx">Go to HomePage</asp:HyperLink>
                    </td>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnsubmit" runat="server" BackColor="#3399FF" Font-Bold="True" Font-Names="Times New Roman" Text="Submit" OnClick="btnsubmit_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnreset" runat="server" BackColor="#3399FF" Font-Bold="True" Font-Names="Times New Roman" Text="Reset" CssClass="auto-style16" Width="52px" OnClick="btnreset_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnedit" runat="server" BackColor="#3399FF" Font-Bold="True" Font-Names="Times New Roman" OnClick="btnedit_Click" Text="Edit" Width="51px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btndelete" runat="server" BackColor="#3399FF" Font-Bold="True" Font-Names="Times New Roman" OnClick="btndelete_Click" Text="Delete" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
