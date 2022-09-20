<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddCandidate.aspx.cs" Inherits="OnlineVo.UI.AddCandidate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <table align="center">
        <legend align="center">Add Candidate</legend>
        
        <tr>
            <td style="background-color: #C0C0C0; height: 61px; width: 249px;">CandidateNo*</td>
            <td class="modal-sm" style="background-color: #C0C0C0; width: 392px; height: 61px;">
                <asp:TextBox ID="txtno" runat="server" Height="29px" Width="169px" style="margin-left: 4px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtno" ErrorMessage="pls enter Candidate no"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="background-color: #C0C0C0; height: 61px; width: 249px;">Candidatename*</td>
            <td class="modal-sm" style="background-color: #C0C0C0; width: 392px; height: 61px;">
                <asp:TextBox ID="txtname" runat="server" Height="31px" style="margin-bottom: 32" Width="169px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="pls enter Candidatename"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="background-color: #C0C0C0; height: 58px; width: 249px;">Partyname*</td>
            <td class="modal-sm" style="background-color: #C0C0C0; width: 392px; height: 58px;">
                <asp:TextBox ID="txtpartyname" runat="server" Height="28px" style="margin-bottom: 29" Width="170px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpartyname" ErrorMessage="pls enter Partyname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="background-color: #C0C0C0; width: 249px;">ContactNo</td>
            <td class="modal-sm" style="background-color: #C0C0C0; width: 392px;">
                <asp:TextBox ID="txtcontactno" runat="server" TextMode="Phone" Height="30px" style="margin-bottom: 22px" Width="169px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="background-color: #C0C0C0; height: 71px; width: 249px;"></td>
            <td class="modal-sm" style="background-color: #C0C0C0; width: 392px; height: 71px;">
                <asp:Button ID="Addbutton" runat="server" OnClick="Add_Candidate" Text="Add" BackColor="#009933" ForeColor="Black" Width="70px" />
            </td>
        </tr>
        <tr>
            <td style="background-color: #C0C0C0; height: 34px; width: 249px;"></td>
            <td class="modal-sm" style="background-color: #C0C0C0; width: 392px; height: 34px;">
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
                <br />
                <br />
                <asp:LinkButton ID="addcandidatelinkbutton" runat="server" OnClick="addcandidatelinkbutton_Click">Go to Back</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>
