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
            <td style="color: #660066; width: 261px; font-weight: bold; font-size: large;" class="modal-sm">&nbsp;&nbsp;VoterId*</td>
            <td style="height: 48px">
                <asp:TextBox ID="txtId" runat="server" style="margin-bottom: 0" BackColor="#66FF33" BorderStyle="Solid"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtId" ErrorMessage="pls enter voterId" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #660066; width: 261px; font-weight: bold; font-size: large;" class="modal-sm">&nbsp;&nbsp;Name*</td>
            <td style="height: 48px">
                <asp:TextBox ID="txtname" runat="server" BackColor="#66FF33" BorderStyle="Solid"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="pls enter Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #660066; width: 261px; font-weight: bold; font-size: large;" class="modal-sm">&nbsp;&nbsp;Father Name</td>
            <td style="height: 48px">
                <asp:TextBox ID="txtfathername" runat="server" BackColor="#66FF33" BorderStyle="Solid"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtfathername" ErrorMessage="pls enter Father Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #660066; width: 261px; font-weight: bold; font-size: large;" class="modal-sm">&nbsp;&nbsp;Gender</td>
            <td style="height: 48px" id="rlgender">
                <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ValidationGroup="Gender" ID="rlgender" BackColor="#66FF33" BorderStyle="Solid">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="color: #660066; width: 261px; font-weight: bold; font-size: large;" class="modal-sm">&nbsp;&nbsp;Dob*</td>
            <td style="height: 48px">
                <asp:TextBox ID="txtDob" runat="server" TextMode="Date" BackColor="#66FF33" BorderStyle="Solid"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDob" ErrorMessage="pls enter Dob"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #660066; width: 261px; font-weight: bold; font-size: large;" class="modal-sm">&nbsp;&nbsp;Email</td>
            <td style="height: 48px">
                <asp:TextBox ID="txtemail" runat="server" TextMode="Email" BackColor="#66FF33" BorderStyle="Solid"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtemail" ErrorMessage="pls enter Email"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #660066; width: 261px; font-weight: bold; font-size: large;" class="modal-sm">&nbsp;&nbsp;Mobileno</td>
            <td style="height: 48px">
                <asp:TextBox ID="txtmobileno" runat="server" TextMode="Phone" BackColor="#66FF33" BorderStyle="Solid"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtmobileno" ErrorMessage="pls enter Mobileno"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ControlToValidate="txtmobileno" ErrorMessage="Invalid Mobileno" ValidationExpression="[6789][0-9]{9}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width:261px; color: #660066; font-weight: bold; font-size: large;" class="modal-sm">&nbsp;&nbsp;Password*</td>
            <td style="height: 48px">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" BackColor="#66FF33" BorderStyle="Solid"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpassword" ErrorMessage="pls enter password"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpassword" ErrorMessage="Invalid Password" ValidationExpression="[0-9a-zA-Z]{6,8}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #660066; width: 261px; font-weight: bold; font-size: large;" class="modal-sm">&nbsp;&nbsp;Confirm Password</td>
            <td style="height: 48px">
                <asp:TextBox ID="txtcpassword" runat="server" TextMode="Password" BackColor="#66FF33" BorderStyle="Solid"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtcpassword" ErrorMessage="Password mismatch"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #660066; width: 261px;" class="modal-sm"></td>
            <td style="height: 48px">
                <asp:Button ID="SignUp_Button" runat="server" Text="Sign Up" OnClick="SignUp_Button_Click" BackColor="#CC0099" BorderStyle="Solid" ForeColor="Black" />
            </td>
        </tr>
        <tr>
            <td style="color: #660066; width: 261px;" class="modal-sm">&nbsp;</td>
            <td style="height: 48px">
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

