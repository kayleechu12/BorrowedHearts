<%@ Page Title="Volunteer Overview" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VolunteerOverview.aspx.cs" Inherits="BHConsole.VolunteerOverview" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1>Volunteer Overview</h1>
        <hr />
        <div class="row">
            <div class="col">
                <h3>All Volunteers</h3>
                <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowSorting="True">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" InsertVisible="False" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BHDBConnectionString %>" DeleteCommand="DELETE FROM [volunteer] WHERE [id] = @id" InsertCommand="INSERT INTO [volunteer] ([name], [phone], [email]) VALUES (@name, @phone, @email)" SelectCommand="SELECT * FROM [volunteer]" UpdateCommand="UPDATE [volunteer] SET [name] = @name, [phone] = @phone, [email] = @email WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int64" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="id" Type="Int64" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <h3>All Time Punches</h3>
                <asp:GridView ID="GridView2" CssClass="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="time_in" HeaderText="time_in" SortExpression="time_in" />
                        <asp:BoundField DataField="time_out" HeaderText="time_out" SortExpression="time_out" />
                        <asp:BoundField DataField="time_punch_type" HeaderText="time_punch_type" SortExpression="time_punch_type" />
                        <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BHDBConnectionString %>" DeleteCommand="DELETE FROM [time_punch] WHERE [id] = @id" InsertCommand="INSERT INTO [time_punch] ([time_in], [time_out], [time_punch_type]) VALUES (@time_in, @time_out, @time_punch_type)" ProviderName="<%$ ConnectionStrings:BHDBConnectionString.ProviderName %>" SelectCommand="SELECT [id], [time_in], [time_out], [time_punch_type] FROM [time_punch]" UpdateCommand="UPDATE [time_punch] SET [time_in] = @time_in, [time_out] = @time_out, [time_punch_type] = @time_punch_type WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int64" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="time_in" Type="DateTime" />
                        <asp:Parameter Name="time_out" Type="DateTime" />
                        <asp:Parameter Name="time_punch_type" Type="Byte" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="time_in" Type="DateTime" />
                        <asp:Parameter Name="time_out" Type="DateTime" />
                        <asp:Parameter Name="time_punch_type" Type="Byte" />
                        <asp:Parameter Name="id" Type="Int64" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <h3>All Clocked In Volunteers</h3>
                <asp:GridView ID="GridView4" CssClass="table table-condensed table-hover" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource3" EmptyDataText="There are no records to display right now.">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="time_in" HeaderText="time_in" SortExpression="time_in" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BHDBConnectionString %>" SelectCommand="SELECT * FROM [view_clocked_in_volunteers]"></asp:SqlDataSource>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <h3>All Volunteer Time Punches</h3>
                <asp:GridView ID="GridView3" CssClass="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" EmptyDataText="There are no records to display right now.">
                    <Columns>
                        <asp:BoundField DataField="volunteer_id" HeaderText="volunteer_id" SortExpression="volunteer_id" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="time_punch_id" HeaderText="time_punch_id" SortExpression="time_punch_id" />
                        <asp:BoundField DataField="time_in" HeaderText="time_in" SortExpression="time_in" />
                        <asp:BoundField DataField="time_out" HeaderText="time_out" SortExpression="time_out" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:BHDBConnectionString %>" SelectCommand="SELECT * FROM [view_all_volunteer_clocks] ORDER BY [time_in]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
