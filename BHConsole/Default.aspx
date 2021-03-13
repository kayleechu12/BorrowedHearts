<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BHConsole.Dashboard" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="">Welcome to Borrowed Hearts!</h1>
        <hr />
        <div class="row">
            <div class="col-lg-6">
                <h2>Here to shop?</h2>
                <asp:Button ID="btn_shop" class="btn btn-primary btn-lg btn-huge btn-block" runat="server" Text="Shopper Form" PostBackUrl="~/ShopperCheckin.aspx" />
            </div>
            <div class="col-lg-6">
                <h2>Here to volunteer?</h2>
                <asp:Button ID="btn_volunteer" class="btn btn-success btn-lg btn-huge btn-block" runat="server" Text="Volunteer Clock In" PostBackUrl="~/VolunteerClockin.aspx" />
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-lg-4">
                <div class="card border-secondary mb-3" style="max-width: 35rem">
                    <div class="card-header">Mission Statement</div>
                    <div class="card-body">
                        <p class="card-text">
                            Our mission is to lead the efforts in which every foster family attains the rights to clothing, hygiene, development, and a loving support system.
                        </p>
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/e_for_everyone.png" CssClass="d-block user-select-none" Width="100%"/>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card border-secondary mb-3" style="max-width: 35rem" draggable="false">
                     <div class="card-header">Pancake Breakfast</div>
                    <div class="card-body">
                        <h6 class="card-subtitle text-muted">2020 Virtual Pancake Breakfast</h6>
                    </div>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/pancake_breakfast.png" CssClass="d-block user-select-none" Width="100%" preserveAspectRatio="xMidYMid slice"/>
                    <div class="card-body">
                        <asp:LinkButton ID="LinkButton1" class="btn btn-info btn-block" runat="server" href="https://www.borrowedheartsfoundation.org/fundraising-events.html">More Info</asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card border-secondary mb-3" style="max-width: 35rem">
                    <div class="card-header">Things & Stuff</div>
                    <div class="card-body">
                        <h5 class="card-title">In condimentum sem felis</h5>
                        <p class="card-text">
                            Nam euismod semper imperdiet. Aliquam ac tempus sem, non volutpat tellus. Curabitur eget elementum quam. Suspendisse sed felis id purus iaculis mattis.
                        </p>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Cras justo odio</li>
                        <li class="list-group-item">Dapibus ac facilisis in</li>
                        <li class="list-group-item">Vestibulum at eros</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
