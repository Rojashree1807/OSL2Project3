<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="WebAppProject3.Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
            <h2>Courses Database</h2>
<p>
    <asp:Label ID="LblMsg" runat="server" Text="LblMsg"></asp:Label>
</p>
            <p>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="CourseId"  GridLines="None">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="CourseId" HeaderText="CourseId" ReadOnly="True" SortExpression="CourseId" />
                        <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
                        <asp:BoundField DataField="CourseCode" HeaderText="CourseCode" SortExpression="CourseCode" />
                        <asp:BoundField DataField="CreditHours" HeaderText="CreditHours" SortExpression="CreditHours" />
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolmanagementConnectionString4 %>" ProviderName="<%$ ConnectionStrings:SchoolmanagementConnectionString4.ProviderName %>" SelectCommand="SELECT [CourseId], [CourseName], [CourseCode], [CreditHours] FROM [Courses]"></asp:SqlDataSource>
</p>
</asp:Content>
