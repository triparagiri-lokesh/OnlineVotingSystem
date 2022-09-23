<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin Page.aspx.cs" Inherits="OnlineVo.UI.Admin_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <table align="center" style="width: 49%">
        <tr style="text-align: center">
           
            <td style="font-size: large;">
                <asp:LinkButton ID="ViewVotersList_Button" runat="server" OnClick="ViewVotersLAV_Button_Click">View Voters List</asp:LinkButton>
            </td>
            <td style="font-size: large;">
                <asp:LinkButton ID="Candidatelistbutton" runat="server" OnClick="Candidatelistbutton_Click">CandidateList</asp:LinkButton>
            </td>
            <td style="font-size: large;">
                <asp:LinkButton ID="AddCandidate_Button" runat="server" OnClick="AddCandidate_Button_Click">Add Candidate</asp:LinkButton>
            </td>
            <td style="font-size: large;">
                
                <asp:LinkButton ID="Logoutlinkbutton" runat="server" OnClick="Logoutlinkbutton_Click">Logout</asp:LinkButton>
                
                <br />
            </td>
        </tr>
    </table>
    <img alt="" src="images/General-Election-piece.png" style="width: 1224px; height: 652px; position: inherit;" /><br />
</asp:Content>
