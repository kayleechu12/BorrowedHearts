<%@ Page Title="Volunteer Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Volunteers.aspx.cs" Inherits="BHConsole.Volunteers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1>Volunteers</h1>
        <hr />
        <div class="row">
            <div class="col-lg-6">
                <asp:LinkButton ID="LinkButton1" CssClass="btn btn-success btn-lg btn-block" runat="server" PostBackUrl="~/VolunteerClockin.aspx">Clock In</asp:LinkButton>
            </div>
            <div class="col-lg-6">
                <asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger btn-lg btn-block" runat="server" PostBackUrl="~/VolunteerClockout.aspx">Clock Out</asp:LinkButton>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col">

            </div>
            <div class="col-lg-6">
                <asp:LinkButton ID="LinkButton3" CssClass="btn btn-info btn-lg btn-block" runat="server" PostBackUrl="~/VolunteerOverview.aspx">Overview (admin stuff)</asp:LinkButton>
            </div>
            <div class="col">

            </div>
        </div>
    </div>
</asp:Content>
