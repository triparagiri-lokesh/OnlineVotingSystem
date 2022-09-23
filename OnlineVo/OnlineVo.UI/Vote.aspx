<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Vote.aspx.cs" Inherits="OnlineVo.UI.Vote1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <legend align="center">Cast Your Vote
    <br />
    <table align="center" style="width: 57%; border: 1px solid black; background-color: #ADADAD; height: 511px;">
        <tr>
            <td align="right" style="border: thin solid #000000; font-size: large; table-layout: auto; color: #FF3300; background-color: #C0C0C0; border-collapse: collapse; border-spacing: inherit; empty-cells: hide; caption-side: inherit;" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LogoutVlinkbutton" runat="server" OnClick="LogoutVlinkbutton_Click">Logout</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td align="center" style="border: thin solid #000000; width: 332px; font-size: large; table-layout: auto; color: #FF3300; background-color: #C0C0C0; border-collapse: collapse; border-spacing: inherit; empty-cells: hide; caption-side: inherit;">Candidate No</td>
            <td style="border: thin solid #000000; table-layout: auto; font-size: large; color: #FF3300; background-color: #C0C0C0; border-collapse: collapse; border-spacing: inherit; empty-cells: hide; caption-side: inherit;">
                &nbsp;&nbsp;
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Candidate_no" DataValueField="Candidate_name">
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="Requiredfieldvalidator" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="pls enter Candidate No"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Onlinevotingconn %>" SelectCommand="SELECT [Candidate_no], [Candidate_name], [Party_name] FROM [Candidate]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="center"style="border: thin solid #000000; table-layout: auto; font-size: large; color: #FF3300; background-color: #C0C0C0; border-collapse: collapse; border-spacing: inherit; empty-cells: hide; caption-side: inherit;" colspan="2">
                <asp:Button ID="Votebutton" runat="server" OnClick="Votebutton_Click1" Text="Vote" BackColor="#00CCFF" BorderStyle="Solid" Height="33px" Width="74px" />
                <br />
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
        </table>
    <br />
    
     </legend> 
    </asp:Content>
