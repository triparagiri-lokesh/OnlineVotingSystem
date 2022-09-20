<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Voter Login.aspx.cs" Inherits="OnlineVo.UI.App_Start.Candidate_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <table align="center" style="width: 50%; border: 1px solid #000080; background-color: #E4B9B9">
        <tr>
            <td align="center" style="font-size: medium; color: #000080;">
                <br />
                <img alt="" src="../images/Voter%20login.png" style="width: 100px; height: 100px" /><br />
                <br />
               

                Voter Login<br />
                <br />
                <table align="center" class="nav-justified">
                    <tr>
                        <td align="left" style="width: 302px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VoterId</td>
                        <td align="left"style="height: 39px">
                            <asp:TextBox ID="txtVid" runat="server" OnDataBinding="Validate" Width="250px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtVid" ErrorMessage="pls enter User Name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left"style="height: 39px; width: 302px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password</td>
                        <td align="left"style="height: 39px">
                            <asp:TextBox ID="txtVpassword" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtVpassword" ErrorMessage="pls enter Password"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 45px; width: 302px;"></td>
                        <td align="left"style="height: 45px">
                            <asp:Button ID="VLogin" runat="server" Text="Login" OnClick="Validate" style="height: 26px; width: 53px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 302px"></td>
                        <td class="text-primary">
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
