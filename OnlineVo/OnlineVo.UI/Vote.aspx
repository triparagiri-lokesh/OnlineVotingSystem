<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Vote.aspx.cs" Inherits="OnlineVo.UI.Vote1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    

    <table align="center" style="width: 50%">
        <tr style="background-color: #FF3300">
            <td align="center"style="color: #000080; background-color: #FFFF99; font-size: large;"> Cast Your Vote<br />
                <table class="nav-justified">
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp; Candidate No</td>
                        <td align="left">
                            <asp:RadioButtonList ID="Voteradiobutton" runat="server" DataSourceID="SqlDataSource1" DataTextField="Candidate_no" DataValueField="Candidate_no">
                                
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Voteradiobutton" ErrorMessage="pls select Candidate No"></asp:RequiredFieldValidator>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Onlinevotingconn %>" SelectCommand="SELECT [Candidate_no] FROM [Candidate]"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
               
               
                <asp:Button ID="Votebutton" runat="server" BackColor="#FF9900" OnClick="Votebutton_Click" Text="Vote" />
                <br />
                <br />
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
