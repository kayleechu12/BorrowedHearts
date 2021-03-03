<%@ Page Title="Volunteer Clock In" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VolunteerClockin.aspx.cs" Inherits="BHConsole.VolunteerClockin" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <hr />
        <h1>Volunteers</h1>
        <hr />

        <div class="row">
            <div class="col-lg-6">
                <fieldset>
                    <legend>Volunteer Clock In</legend>
                    <div class="form-group">
                        <small>We will never share your info with anyone else.</small>
                    </div>
                    <div class="bs-component">
                        <div class="form-group">
                            <label for="txt_name">Name</label>
                            <asp:TextBox ID="txt_name" class="form-control" runat="server" placeholder="Enter name"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="txt_phone">Phone number</label>
                            <asp:TextBox ID="txt_phone" class="form-control" runat="server" placeholder="Enter phone number"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="txt_email">Email address</label>
                            <asp:TextBox ID="txt_email" class="form-control" runat="server" placeholder="Enter email"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="btn_clockin" class="btn btn-primary btn-lg btn-block" runat ="server" Text="Clock In" OnClick="btn_clockin_Click" />
                        </div>
                    </div>
                </fieldset>
            </div>
            <div class="col-lg-6">
                <fieldset>
                    <legend>Volunteer Clock Out</legend>
                    <div class="form-group">
                        <small>Thank you for your help!.</small>
                    </div>
                    <div class="bs-component">
                        <div class="form-group">
                            <asp:DropDownList ID="dd_clockedin" class="btn_secondary" runat="server" DataSourceID="BHDBDataSource" DataTextField="Name" DataValueField="Name" Width="150px"></asp:DropDownList>
                            <asp:SqlDataSource ID="BHDBDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:BHDBConnectionString1 %>" SelectCommand="SELECT [Name] FROM [Volunteers] WHERE ([TimeClockOut] IS NULL) ORDER BY [TimeClockIn]"></asp:SqlDataSource>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="btn_clockout" class="btn btn-primary btn-lg" runat="server" Text="Clock Out" OnClick="btn_clockout_Click" />
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
        <div class="form-group">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="TimeClockIn" HeaderText="TimeClockIn" SortExpression="TimeClockIn" />
                    <asp:BoundField DataField="TimeClockOut" HeaderText="TimeClockOut" SortExpression="TimeClockOut" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BHDBConnectionString1 %>" DeleteCommand="DELETE FROM [Volunteers] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Volunteers] ([Name], [Phone], [Email], [TimeClockIn], [TimeClockOut]) VALUES (@Name, @Phone, @Email, @TimeClockIn, @TimeClockOut)" ProviderName="<%$ ConnectionStrings:BHDBConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [Name], [Phone], [Email], [TimeClockIn], [TimeClockOut] FROM [Volunteers]" UpdateCommand="UPDATE [Volunteers] SET [Name] = @Name, [Phone] = @Phone, [Email] = @Email, [TimeClockIn] = @TimeClockIn, [TimeClockOut] = @TimeClockOut WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="TimeClockIn" Type="DateTime" />
                    <asp:Parameter Name="TimeClockOut" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="TimeClockIn" Type="DateTime" />
                    <asp:Parameter Name="TimeClockOut" Type="DateTime" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </div>
</asp:Content>
