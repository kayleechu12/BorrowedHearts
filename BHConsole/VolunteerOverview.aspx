﻿<%@ Page Title="Volunteer Overview" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VolunteerOverview.aspx.cs" Inherits="BHConsole.VolunteerOverview" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1>Volunteer Overview</h1>
        <hr />
        <div class="row">
            <div class="col">
                <h3>All Volunteers</h3>
                <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowSorting="True" AllowPaging="True" HeaderStyle-CssClass="text-info">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BHDBConnectionString %>" DeleteCommand="DELETE FROM [volunteer] WHERE [id] = @id" InsertCommand="INSERT INTO [volunteer] ([name], [phone], [email]) VALUES (@name, @phone, @email)" SelectCommand="SELECT name AS Name, phone AS Phone, email AS Email, id AS ID FROM volunteer" UpdateCommand="UPDATE [volunteer] SET [name] = @name, [phone] = @phone, [email] = @email WHERE [id] = @id">
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
                <h3>Clocked In Volunteers</h3>
                <asp:GridView ID="GridView4" CssClass="table table-condensed table-hover" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" EmptyDataText="There are no records to display right now.">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Time In" HeaderText="Time In" SortExpression="Time In" ReadOnly="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BHDBConnectionString %>" SelectCommand="SELECT name AS [Name], phone AS [Phone], email AS [Email], [Time In] FROM view_volunteer_clocks WHERE ([Time Out] IS NULL) ORDER BY [Time In]"></asp:SqlDataSource>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <h3>Volunteer Time Punches</h3>
                <asp:GridView ID="GridView5" CssClass="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" EmptyDataText="There are no data records to display." DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="Date" HeaderText="Date" ReadOnly="True" SortExpression="Date" />
                        <asp:BoundField DataField="Time In" HeaderText="Time In" SortExpression="Time In" ReadOnly="True" />
                        <asp:BoundField DataField="Time Out" HeaderText="Time Out" SortExpression="Time Out" ReadOnly="True" />
                        <asp:BoundField DataField="Hours" HeaderText="Hours" SortExpression="Hours" ReadOnly="True" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BHDBConnectionString %>" SelectCommand="SELECT date AS Date, [Time In], [Time Out], Hours, name AS Name FROM view_volunteer_clocks">
                </asp:SqlDataSource>

            </div>
        </div>
        <div class="row">
            <div class="col">
            </div>
        </div>
    </div>
</asp:Content>
