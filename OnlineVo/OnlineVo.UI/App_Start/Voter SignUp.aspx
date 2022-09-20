<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Voter SignUp.aspx.cs" Inherits="OnlineVo.UI.App_Start.VoterRegistration" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <br />
    <table align="center" style="width: 50%; height: 46px;">
        <tr>
            <td align="center" style="font-size: medium; background-color: #808080;">
                <img alt="" src="../images/Signup.jpg" style="width: 100px; height: 101px" /><br />
                Voter Sign Up</td>
        </tr>
    </table>
    <br />
    <table align="center" style="width: 50%; border: 1px solid #000080; background-color: #FCF8E3">

        <tr>
            <td style="height: 48px">&nbsp;&nbsp;&nbsp; VoterId*</td>
            <td style="height: 48px">
                <asp:TextBox ID="txtId" runat="server" style="margin-bottom: 0"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtId" ErrorMessage="pls enter voterId" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 48px">&nbsp;&nbsp;&nbsp; Name*</td>
            <td style="height: 48px">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="pls enter Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 42px">&nbsp;&nbsp; Father Name</td>
            <td style="height: 42px">
                <asp:TextBox ID="txtfathername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtfathername" ErrorMessage="pls enter Father Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 46px">&nbsp;&nbsp; Gender</td>
            <td style="height: 46px" id="rlgender">
                <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ValidationGroup="Gender" ID="rlgender">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="height: 39px">&nbsp;&nbsp; Dob*</td>
            <td style="height: 39px">
                <asp:TextBox ID="txtDob" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDob" ErrorMessage="pls enter Dob"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 50px">&nbsp;&nbsp; Email</td>
            <td style="height: 50px">
                <asp:TextBox ID="txtemail" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtemail" ErrorMessage="pls enter Email"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 46px">&nbsp;&nbsp; Mobileno</td>
            <td style="height: 46px">
                <asp:TextBox ID="txtmobileno" runat="server" TextMode="Phone"></asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ControlToValidate="txtmobileno" ErrorMessage="Invalid Mobileno" ValidationExpression="[6789][0-9]{9}"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtmobileno" ErrorMessage="pls enter Mobileno"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 57px">&nbsp;&nbsp; Password*</td>
            <td style="height: 57px">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpassword" ErrorMessage="pls enter password"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpassword" ErrorMessage="Invalid Password" ValidationExpression="[0-9a-zA-Z]{6,8}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 71px">&nbsp;&nbsp; Confirm Password</td>
            <td style="height: 71px">
                <asp:TextBox ID="txtcpassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtcpassword" ErrorMessage="Password mismatch"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 54px"></td>
            <td style="height: 54px">
                <asp:Button ID="SignUp_Button" runat="server" Text="Sign Up" OnClick="SignUp_Button_Click" />
            </td>
        </tr>
        <tr>
            <td style="height: 54px">&nbsp;</td>
            <td style="height: 54px">
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

