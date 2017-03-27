<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PatientHome.aspx.cs" Inherits="Donor_DonorHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="margin-left: 120px">
        &nbsp;</p>
<p style="margin-left: 120px; font-family: Arial, Helvetica, sans-serif; font-size: xx-large; background-color: #FFFFFF; color: #0000FF;">
        WELCOME TO PATIENT</p>
<p style="margin-left: 120px; font-family: Arial, Helvetica, sans-serif; font-size: xx-large; background-color: #FFFFFF; color: #0000FF;">
        &nbsp;</p>
    <div style="background-color: #008080">
    <p style="font-family: Arial, Helvetica, sans-serif; font-size: large; background-color: #008080;">
        &nbsp;</p>
        <p style="font-family: Arial, Helvetica, sans-serif; font-size: large; background-color: #008080;">
            &nbsp;</p>
        <p style="font-family: Arial, Helvetica, sans-serif; font-size: large; background-color: #008080;">
            &nbsp;<asp:Button ID="Button1" runat="server" Text="View Profile" Width="120px" BackColor="#FFCCFF" ForeColor="#6600FF" Height="30px" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Edit Profile" Width="120px" BackColor="#FFCCFF" ForeColor="#6600FF" Height="30px" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="margin-left: 27px" Text="search for blood" Width="120px" BackColor="#FFCCFF" ForeColor="#6600FF" Height="30px" />
    &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" style="margin-left: 27px" Text="Post Request" Width="120px" BackColor="#FFCCFF" ForeColor="#6600FF" Height="30px" />
    &nbsp;&nbsp;
    </p>
    <p>
        &nbsp;</p>
    <p>
    </p>
        </div>
</asp:Content>

