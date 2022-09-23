<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddCandidate.aspx.cs" Inherits="OnlineVo.UI.AddCandidate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <table align="center" style="font-size: large; color: #006600; font-weight: normal">
        <legend align="center">Add Candidate</legend>
        
        <tr>
            <td style="background-color: #C0C0C0; height: 69px; font-size: medium;">&nbsp;&nbsp; CandidateNo*</td>
            <td class="modal-sm" style="background-color: #C0C0C0; height: 69px; font-size: medium;">
                <asp:TextBox ID="txtno" runat="server" Height="30px" Width="170px" BackColor="#FF99FF" BorderStyle="Solid" style="margin-bottom: 16"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtno" ErrorMessage="pls enter Candidate no"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="background-color: #C0C0C0; height: 69px; font-size: medium;">&nbsp;&nbsp; Candidatename*</td>
            <td class="modal-sm" style="background-color: #C0C0C0; height: 69px; font-size: medium;">
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="170px" BackColor="#FF99FF" BorderStyle="Solid"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="pls enter Candidatename"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="background-color: #C0C0C0; height: 67px; font-size: medium;">&nbsp;&nbsp; Partyname*</td>
            <td class="modal-sm" style="background-color: #C0C0C0; height: 67px; font-size: medium;">
                <asp:TextBox ID="txtpartyname" runat="server" Height="30px" style="margin-bottom: 29" Width="170px" BackColor="#FF99FF" BorderStyle="Solid"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpartyname" ErrorMessage="pls enter Partyname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            
            <td style="background-color: #C0C0C0; font-size: medium; height: 69px;">&nbsp;&nbsp; ContactNo</td>
            <td class="modal-sm" style="background-color: #C0C0C0; font-size: medium; height: 71px;">
                <asp:TextBox ID="txtcontactno" runat="server" TextMode="Phone" Height="30px" style="margin-bottom: 22px" Width="169px" BackColor="#FF99FF" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="background-color: #C0C0C0; height: 71px; width: 249px;"></td>
            <td class="modal-sm" style="background-color: #C0C0C0; width: 392px; height: 71px;">
                <asp:Button ID="Addbutton" runat="server" OnClick="Add_Candidate" Text="Add" BackColor="#009933" ForeColor="Black" Width="70px" BorderStyle="Solid" />
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
