<%@ Page Title="Volunteer Clock Out" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VolunteerClockout.aspx.cs" Inherits="BHConsole.VolunteerClockout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1>Volunteers</h1>
        <hr />
        <div class="row">
            <div class="col">
                <fieldset>
                    <legend>Volunteer Clock Out</legend>
                    <div class="form-group">
                        <small>Thank you for your help!</small>
                    </div>
                    <div class="bs-component">
                        <div class="form-group">
                            <asp:DropDownList ID="dd_clockedin" CssClass="form-control" runat="server" DataSourceID="BHDBsource" DataTextField="Name" DataValueField="Name" style="margin-bottom: 0"></asp:DropDownList>
                            <asp:SqlDataSource ID="BHDBsource" runat="server" ConnectionString="<%$ ConnectionStrings:BHDBConnectionString %>" SelectCommand="SELECT v.name
FROM ((dbo.volunteer_time_punch vtp
INNER JOIN dbo.volunteer v
ON vtp.volunteer_id = v.id)
INNER JOIN time_punch t
ON vtp.time_punch_id = t.id)
WHERE time_out IS NULL"></asp:SqlDataSource>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="btn_clockout" class="btn btn-primary btn-lg btn-block" runat="server" Text="Clock Out" OnClick="btn_clockout_Click" />
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
</asp:Content>
