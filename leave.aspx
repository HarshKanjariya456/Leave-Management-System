<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="leave.aspx.cs" Inherits="LAB_5.Leave" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Leave Application</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>LEAVE APPLICATION</h2>
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblEmployeeId" runat="server" Text="Employee ID :"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtEmployeeId" runat="server" ReadOnly="true"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbldate" runat="server" Text="Leave Date :"></asp:Label></td>
                <td>
                    <asp:Label ID="lbladte" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblLeaveType" runat="server" Text="Leave Type :"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="ddlLeaveType" runat="server">
                        <asp:ListItem Text="-- Select Leave Type --" Value=""></asp:ListItem>
                        <asp:ListItem Text="Casual Leave" Value="Casual Leave"></asp:ListItem>
                        <asp:ListItem Text="Medical Leave" Value="Medical Leave"></asp:ListItem>
                        <asp:ListItem Text="Personal Leave" Value="Personal Leave"></asp:ListItem>
                        <asp:ListItem Text="Emergency Leave" Value="Emergency Leave"></asp:ListItem>
                        <asp:ListItem Text="On Duty Leave" Value="On Duty Leave"></asp:ListItem>
                        <asp:ListItem Text="Academic Leave" Value="Academic Leave"></asp:ListItem>
                        <asp:ListItem Text="Examination Leave" Value="Examination Leave"></asp:ListItem>
                        <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvLeaveType" runat="server" ControlToValidate="ddlLeaveType" InitialValue="" ErrorMessage="Please select a leave type." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblreason" runat="server" Text="Reason :"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtreason" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblLoadAdjusted" runat="server" Text="Load Adjusted With :"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtLoadAdjusted" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvLoadAdjusted" runat="server" ControlToValidate="txtLoadAdjusted" ErrorMessage="Please specify with whom the load is adjusted." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
        <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
        <br />
        <br />
        <asp:Panel ID="pnlSummary" runat="server" Visible="false">
            <h3>LEAVE APPLICATION SUMMARY</h3>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblSummaryEmployeeIdTitle" runat="server" Text="Employee ID :"></asp:Label></td>
                    <td>
                        <asp:Label ID="lblSummaryEmployeeId" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSummaryDateTitle" runat="server" Text="Leave Date :"></asp:Label></td>
                    <td>
                        <asp:Label ID="lblSummaryDate" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSummaryLeaveTypeTitle" runat="server" Text="Leave Type :"></asp:Label></td>
                    <td>
                        <asp:Label ID="lblSummaryLeaveType" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSummaryReasonTitle" runat="server" Text="Reason :"></asp:Label></td>
                    <td>
                        <asp:Label ID="lblSummaryReason" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSummaryLoadTitle" runat="server" Text="Load Adjusted With :"></asp:Label></td>
                    <td>
                        <asp:Label ID="lblSummaryLoad" runat="server"></asp:Label></td>
                </tr>
            </table>
        </asp:Panel>
    </form>
</body>
</html>
