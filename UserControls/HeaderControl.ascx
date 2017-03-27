<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HeaderControl.ascx.cs" Inherits="Admin_UserControls_HeaderControl" %>
<%@ Register Src="MenuUserControl.ascx" TagName="MenuUserControl" TagPrefix="uc1" %>
<table width="100%" style="margin:0">
    <tr>
        <td colspan="3" style="height: 21px">
            <table width="100%">
                <tr>
                    <td align="center" style="font-weight: bold; font-size: 24pt; color: #ffffff; font-family: Arial;
                        height: 21px; background-color: #0000ff; width: 784px;">
                        BLOOD BANK MANAGEMENT SYSTEM</td>
                    <td style="height: 21px; background-color: #0000ff; width: 32px;" >
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="White" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
                    </td>
                    <td style="height: 21px; background-color: #0000ff; width: 22px;" >
                        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" ForeColor="White" Width="36px" NavigateUrl="~/SignUp.aspx">SignUp</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td style="height: 44px">
            <asp:Image ID="Image1" runat="server" Height="48px" ImageUrl="~/Images/images.jpg"
                Width="112px" /></td>
        <td style="font-size: 18pt; width: 132px; color: #ff0001; font-family: 'Arial Unicode MS';
            height: 44px; text-align: center">
            <strong><span>
                <asp:Label ID="Label1" runat="server" Font-Names="Colonna MT" Text="Donate Blood Save a Life"
                    Width="836px"></asp:Label></span></strong></td>
        <td style="height: 44px">
        </td>
    </tr>
    <tr>
        <td align="center" colspan="3">
            <uc1:MenuUserControl ID="MenuUserControl1" runat="server" OnLoad="MenuUserControl1_Load" />
        </td>
    </tr>
</table>
