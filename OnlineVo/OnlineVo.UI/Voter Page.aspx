<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Voter Page.aspx.cs" Inherits="OnlineVo.UI.Voter_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <table align="center" style="width:50%">
        <tr>
            <td class="modal-sm" style="width: 271px; font-size: large;">
                <asp:LinkButton ID="ViewCandidates_Button" runat="server" OnClick="ViewCandidates_Button_Click">ViewCandidates </asp:LinkButton>
            </td>
            <td style="width: 256px; font-size: large;">
                <asp:LinkButton ID="Vote_Button" runat="server" OnClick="Vote_Button_Click">Vote</asp:LinkButton>
            </td>
            
            <td style="font-size: large;">
                <asp:LinkButton ID="Vlogoutlinkbutton" runat="server" OnClick="Clogoutlinkbutton_Click">Logout</asp:LinkButton>
            </td>
        </tr>
       
    </table>
    <table>
        <img src="images/introduction.jpg" style="width: 1224px; height: 652px; position: inherit;" />
    </table>
</asp:Content>
