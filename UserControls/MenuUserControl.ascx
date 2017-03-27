<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MenuUserControl.ascx.cs" Inherits="UserControls_MenuUserControl" %>
<div style="text-align: center">
    <table width="100%" border="1" style="text-align:center">
        <tr>
            <td style="background-color: #ffd800; height: 27px;" colspan="7">
                <asp:Menu ID="Menu1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Gray" Orientation="Horizontal" StaticEnableDefaultPopOutImage="False" Width="100%">
                    <DynamicMenuItemStyle BackColor="Silver" ForeColor="Gold" />
                    <Items>
                        <asp:MenuItem NavigateUrl="~/Home.aspx" Text="Home" Value="Home"></asp:MenuItem>
                        <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                         <asp:MenuItem NavigateUrl="~/Home.aspx" Text="Join Us" Value="Home">
                            <asp:MenuItem Text="Donor Registration" Value="Donor Registration" NavigateUrl="~/DonorRegistration.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="Patient Registration" Value="Patient Registration" NavigateUrl="~/SeekerRegistration.aspx"></asp:MenuItem>
                         </asp:MenuItem>
                        <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/ContactUs.aspx" Text="Contact Us" Value="Home"></asp:MenuItem>
                        <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/AboutUs.aspx" Text="About Us" Value="Home"></asp:MenuItem>
                        <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/FeedBack.aspx" Text="Feed Back" Value="Home"></asp:MenuItem>
                        <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/FeedBack.aspx" Text="Member List" Value="Home">
                             </asp:MenuItem>
                        <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/AdminLogin.aspx" Text="Admin Login" Value="Home"></asp:MenuItem>
                    </Items>
                </asp:Menu>
            </td>
        </tr>
    </table>
</div>
