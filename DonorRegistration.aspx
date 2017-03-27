<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DonorRegistration.aspx.cs" Inherits="DonorRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="font-family: Arial; font-size: large; font-weight: 100; font-style: normal; font-variant: normal; background-color: #C0C0C0"><p style="margin-left: 160px">
        &nbsp;</p>
    <p style="margin-left: 160px; font-family: Arial; font-size: xx-large; font-weight: 200; font-style: normal; text-transform: uppercase; color: #0000FF; height: 36px; width: 397px; font-variant: normal; background-color: #00FFFF;">
        DONOR REGISTRATION</p>
    
    <p style="margin-left: 40px">
        &nbsp;</p>
    <p style="margin-left: 40px">
        First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="name" runat="server" Width="139px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="*"></asp:RequiredFieldValidator>
    </p>
    <p style="margin-left: 40px">
        &nbsp;</p>
    <p style="margin-left: 40px">
        Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="last" runat="server" Width="140px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="last" ErrorMessage="*"></asp:RequiredFieldValidator>
    </p>
    <p style="margin-left: 40px">
        &nbsp;</p>
    <p style="margin-left: 40px">
        DOB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="dob" runat="server" Width="142px" OnTextChanged="Text_Changed" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="dob" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" OnSelectionChanged="Date_Changed">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>
    </p>
    <p style="margin-left: 40px">
        &nbsp;</p>
    <p style="margin-left: 40px">
        Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="age" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="age" ErrorMessage="&gt;=18"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="age" ErrorMessage="*" MaximumValue="60" MinimumValue="18"></asp:RangeValidator>
    </p>
    <p style="margin-left: 40px">
        &nbsp;</p>
    <p style="margin-left: 40px">
        Mobile No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="mobile" runat="server" Width="161px"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="mobile" ErrorMessage="should be 10 numbers"></asp:CustomValidator>
    </p>
    <p style="margin-left: 40px">
        Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButtonList ID="gender" runat="server">
        </asp:RadioButtonList>
&nbsp;&nbsp;</p>
    <p style="margin-left: 40px">
        Weight&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="weight" runat="server" Width="82px"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="weight" ErrorMessage="&gt;=55 " MaximumValue="55" MinimumValue="100"></asp:RangeValidator>
    </p>
        <p style="margin-left: 40px">
            &nbsp;Blood Group&nbsp;&nbsp;
        <asp:DropDownList ID="bloodlist" runat="server" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="margin-left: 0px" Width="134px">
        </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="bloodlist" ErrorMessage="choose blood group"></asp:RequiredFieldValidator>
        </p>
        <p style="margin-left: 40px">
        Country&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="country" runat="server" Width="138px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="country" ErrorMessage="*"></asp:RequiredFieldValidator>
    </p>
    <p style="margin-left: 40px">
        State&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="state" runat="server" Width="132px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="state" ErrorMessage="*"></asp:RequiredFieldValidator>
    </p>
    <p style="margin-left: 40px">
        City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="city" runat="server" Width="135px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="city" ErrorMessage="*"></asp:RequiredFieldValidator>
    </p>
    <p style="margin-left: 40px">
        ZipCode&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="zipcode" runat="server" Width="134px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="zipcode" ErrorMessage="*"></asp:RequiredFieldValidator>
    </p>
    <p style="margin-left: 40px">
        Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    <p style="margin-left: 40px">
        &nbsp;<asp:TextBox ID="address" runat="server" Height="79px" Rows="5" Width="215px" TextMode="MultiLine"></asp:TextBox>
    </p>
    <p style="margin-left: 40px">
        &nbsp;</p>
    <p style="margin-left: 40px">
        Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="email" runat="server" Width="179px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="not in email format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </p>
    <p style="margin-left: 40px">
        Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="username" runat="server" Width="176px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="username" ErrorMessage="Please enter the usename"></asp:RequiredFieldValidator>
    </p>
    <p style="margin-left: 40px">
        Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="password" runat="server" Width="170px" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="password" ErrorMessage="password"></asp:RequiredFieldValidator>
    </p>
    <p style="margin-left: 40px">
        Confirm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="confirm" runat="server" Width="155px" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="confirm" ErrorMessage="password doesn't match"></asp:CompareValidator>
    </p>
    <p style="margin-left: 80px">
        <asp:Label ID="Label2" runat="server" Text="Fill all the blanks"></asp:Label>
    </p>
        <p style="margin-left: 80px">
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </p>
    <p style="margin-left: 80px">
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" BackColor="#9933FF" BorderColor="#FF0066" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Cancel" BackColor="#9900FF" BorderColor="#FF5050" />
    </p>
    <p style="margin-left: 40px">
        &nbsp;</p>
    <p style="margin-left: 40px">
        &nbsp;</p>
    <p style="margin-left: 40px">
        &nbsp;</p>
    <p style="margin-left: 40px">
        &nbsp;</p>
    <p style="margin-left: 40px">
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

