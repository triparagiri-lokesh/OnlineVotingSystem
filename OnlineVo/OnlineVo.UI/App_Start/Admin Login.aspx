<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin Login.aspx.cs" Inherits="OnlineVo.UI.App_Start.Admin_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />

    <table align="center" style="width: 50%; border: 1px solid #FFFFFF; background-color: #66AFE9">
        <tr>
            
            <td align="center" style="height: 32px">
                <br />
                <img alt="" src="../images/Admin%20login.png" style="width: 100px; height: 87px" /><br />
                <br />
                
                Admin Login<br />
&nbsp;<table align="center" style="width: 50%">
                    <tr>
                        <td style="height: 30px; width: 147px">&nbsp;&nbsp; User Name</td>
                        <td align="left"style="height: 30px">
                            <asp:TextBox ID="txtAusername" runat="server" style="margin-left: 0px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAusername" ErrorMessage="pls enter User Name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 27px; width: 147px">&nbsp;&nbsp; Password</td>
                        <td align="left"style="height: 27px">
                            <asp:TextBox ID="txtApassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtApassword" ErrorMessage="pls enter Password"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 30px; width: 147px"></td>
                        <td style="height: 30px">
                            <asp:Button ID="ALogin" runat="server" Text="Login" OnClick="Validate" />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 30px; width: 147px"></td>
                        <td style="height: 30px">
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

</asp:Content>
