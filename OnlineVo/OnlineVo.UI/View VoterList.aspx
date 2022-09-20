<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View VoterList.aspx.cs" Inherits="OnlineVo.UI.VoterList_and_Approve_voters" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    
    <table align="center" class="nav-justified">
        <tr align="center">
            <td> View Voter List <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="VoterId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    <asp:BoundField DataField="VoterId" HeaderText="VoterId" ReadOnly="True" SortExpression="VoterId" />
                    <asp:BoundField DataField="VoterName" HeaderText="VoterName" SortExpression="VoterName" />
                    <asp:BoundField DataField="FatherName" HeaderText="FatherName" SortExpression="FatherName" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Dob" HeaderText="Dob" SortExpression="Dob" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Mobileno" HeaderText="Mobileno" SortExpression="Mobileno" />
                    <asp:BoundField DataField="VoterPassword" HeaderText="VoterPassword" SortExpression="VoterPassword" />
                   

                </Columns>
                <EmptyDataTemplate>
                    <asp:CheckBox ID="txtapprove" runat="server" Checked='True' Text="Approved" />
                </EmptyDataTemplate>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Onlinevotingconn %>" SelectCommand="SELECT [VoterId], [VoterName], [FatherName], [Gender], [Dob], [Email], [Mobileno], [VoterPassword] FROM [Voter]"></asp:SqlDataSource>
                <asp:LinkButton ID="viewvoterslinkbutton" runat="server" OnClick="viewvotersbutton_Click">Go to back</asp:LinkButton>
                <br />
                <table align="center" class="nav-justified">
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
</asp:Content>
