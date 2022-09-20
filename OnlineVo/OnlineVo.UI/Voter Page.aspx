<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Voter Page.aspx.cs" Inherits="OnlineVo.UI.Voter_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <table align="center" style="width: 39%">
        <tr>
            <td class="modal-sm" style="height: 24px; width: 237px;">
                <asp:LinkButton ID="CandidateList_Button" runat="server" OnClick="CandidateList_Button_Click">CandidateList </asp:LinkButton>
            </td>
            <td style="height: 24px; width: 180px;">
                <asp:LinkButton ID="Vote_Button" runat="server" OnClick="Vote_Button_Click">Vote</asp:LinkButton>
            </td>
            <td style="height: 24px;width:400px">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            </td>
            <td style="height: 24px;width:400px">
                <asp:LinkButton ID="Vlogoutlinkbutton" runat="server" OnClick="Clogoutlinkbutton_Click">Logout</asp:LinkButton>
            </td>
        </tr>
       
    </table>
    <table>
        <img src="images/introduction.jpg" style="width: 1224px; height: 652px" />
    </table>
</asp:Content>
