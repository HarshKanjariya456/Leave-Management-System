<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="LAB_5.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Leave Date Selection</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>
                <asp:Label ID="lblHello" runat="server"></asp:Label></h2>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Select Date"></asp:Label></td>
                    <td>
                        <asp:Calendar ID="CalSelectDate" runat="server" OnSelectionChanged="CalSelectDate_SelectionChanged"></asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSedate" runat="server" Text="Selected Date is:"></asp:Label></td>
                    <td>
                        <asp:Label ID="lblchoosedate" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="lblDateError" runat="server" ForeColor="Red"></asp:Label></td>
                </tr>
            </table>
            <br />
            <asp:Button ID="APleave" runat="server" Text="Apply Leave" OnClick="APleave_Click" />
            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
        </div>
    </form>
</body>
</html>
