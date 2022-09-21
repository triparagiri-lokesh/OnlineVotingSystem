<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Vote.aspx.cs" Inherits="OnlineVo.UI.Vote1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <table align="center" style="width: 50%; border: 1px solid #D43F3A; background-color: #ADADAD">
        <tr>
            <td align="center" style="width: 354px">Cast Your Vote</td>
            <td align="right">
                <asp:LinkButton ID="LogoutVlinkbutton" runat="server" OnClick="LogoutVlinkbutton_Click">Logout</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 354px">Candidate No</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Candidate_no" DataValueField="Candidate_name">
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="Requiredfieldvalidator" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="pls enter Candidate No"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Onlinevotingconn %>" SelectCommand="SELECT [Candidate_no], [Candidate_name], [Party_name] FROM [Candidate]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 354px">&nbsp;</td>
            <td>
                <asp:Button ID="Votebutton" runat="server" OnClick="Votebutton_Click1" Text="Vote" BackColor="#009933" style="height: 26px" />
            </td>
        </tr>
        <tr>
            <td align="center"colspan="2">
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    

    </asp:Content>
