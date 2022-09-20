<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CandidateList.aspx.cs" Inherits="OnlineVo.UI.CandidateList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <table align="center" style="width: 50%">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Candidate_no" DataSourceID="SqlDataSource1" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Candidate_no" HeaderText="Candidate_no" ReadOnly="True" SortExpression="Candidate_no" />
                        <asp:BoundField DataField="Candidate_name" HeaderText="Candidate_name" SortExpression="Candidate_name" />
                        <asp:BoundField DataField="Party_name" HeaderText="Party_name" SortExpression="Party_name" />
                        <asp:BoundField DataField="Contactno" HeaderText="Contactno" SortExpression="Contactno" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Onlinevotingconn %>" DeleteCommand="DELETE FROM [Candidate] WHERE [Candidate_no] = @original_Candidate_no AND (([Candidate_name] = @original_Candidate_name) OR ([Candidate_name] IS NULL AND @original_Candidate_name IS NULL)) AND (([Party_name] = @original_Party_name) OR ([Party_name] IS NULL AND @original_Party_name IS NULL)) AND (([Contactno] = @original_Contactno) OR ([Contactno] IS NULL AND @original_Contactno IS NULL))" InsertCommand="INSERT INTO [Candidate] ([Candidate_no], [Candidate_name], [Party_name], [Contactno]) VALUES (@Candidate_no, @Candidate_name, @Party_name, @Contactno)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Candidate_no], [Candidate_name], [Party_name], [Contactno] FROM [Candidate]" UpdateCommand="UPDATE [Candidate] SET [Candidate_name] = @Candidate_name, [Party_name] = @Party_name, [Contactno] = @Contactno WHERE [Candidate_no] = @original_Candidate_no AND (([Candidate_name] = @original_Candidate_name) OR ([Candidate_name] IS NULL AND @original_Candidate_name IS NULL)) AND (([Party_name] = @original_Party_name) OR ([Party_name] IS NULL AND @original_Party_name IS NULL)) AND (([Contactno] = @original_Contactno) OR ([Contactno] IS NULL AND @original_Contactno IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Candidate_no" Type="Int32" />
                        <asp:Parameter Name="original_Candidate_name" Type="String" />
                        <asp:Parameter Name="original_Party_name" Type="String" />
                        <asp:Parameter Name="original_Contactno" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Candidate_no" Type="Int32" />
                        <asp:Parameter Name="Candidate_name" Type="String" />
                        <asp:Parameter Name="Party_name" Type="String" />
                        <asp:Parameter Name="Contactno" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Candidate_name" Type="String" />
                        <asp:Parameter Name="Party_name" Type="String" />
                        <asp:Parameter Name="Contactno" Type="String" />
                        <asp:Parameter Name="original_Candidate_no" Type="Int32" />
                        <asp:Parameter Name="original_Candidate_name" Type="String" />
                        <asp:Parameter Name="original_Party_name" Type="String" />
                        <asp:Parameter Name="original_Contactno" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="Candidatelistlinkbutton" runat="server" OnClick="LinkButton1_Click">Go to back</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>
