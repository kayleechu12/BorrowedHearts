<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BHConsole.Dashboard" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1><strong>Welcome to Borrowed Hearts!</strong></h1>
        <hr />
        <div class="row">
            <div class="col-lg-6">
                <h2>Here to shop?</h2>
                <asp:Button ID="btn_shop" CssClass="btn btn-primary btn-lg btn-block" runat="server" Text="Shopper Form" PostBackUrl="~/ShopperCheckin.aspx" Height="100px"/>
            </div>
            <div class="col-lg-6">
                <h2>Here to volunteer?</h2>
                <asp:Button ID="btn_volunteer" CssClass="btn btn-success btn-lg btn-block" runat="server" Text="Volunteer Clock In" PostBackUrl="~/VolunteerClockin.aspx"  Height="100px"/>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-lg-4">
                <div class="card border-primary mb-3" style="max-width: 35rem">
                    <div class="card-header">Mission Statement</div>
                    <div class="card-body">
                        <p class="card-text">
                            Our mission is to lead the efforts in which every foster family attains the rights to clothing, hygiene, development, and a loving support system.
                        </p>
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/e_for_everyone.png" CssClass="d-block user-select-none" Width="100%"/>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Thanks to our partners!</h5>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">The Isaiah 1:17 Project</li>
                            <li class="list-group-item">Hangers</li>
                            <li class="list-group-item">St. Vincent Early Learning</li>
                            <li class="list-group-item">YMCA Boxing</li>
                            <li class="list-group-item">Hillcrest, Ozanam Shelter</li>
                            <li class="list-group-item">The Dream Center</li>
                            <li class="list-group-item">United Methodist Youth Home</li>
                            <li class="list-group-item">Teacher Locker & Granted</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card border-secondary mb-3" style="max-width: 35rem" draggable="false">
                     <div class="card-header">Pancake Breakfast</div>
                    <div class="card-body">
                        <h6 class="card-subtitle text-muted">2020 Virtual Pancake Breakfast</h6>
                        <br />
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/pancake_breakfast.png" CssClass="d-block user-select-none" Width="100%" preserveAspectRatio="xMidYMid slice"/>
                    </div>
                    <div class="card-body">
                        <asp:LinkButton ID="LinkButton1" class="btn btn-info btn-block" runat="server" href="https://www.borrowedheartsfoundation.org/fundraising-events.html">More Info</asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card border-info mb-3" style="max-width: 35rem">
                    <div class="card-header">Birthday Cakes!</div>
                    
                    <div class="card-body">
                        <%--<h5 class="card-title"></h5>--%>
                        <asp:Image ID="Image3" runat="server" CssClass="d-block user-select-none" Width="100%" preserveAspectRatio="xMidYMid slice" ImageUrl="~/Images/Gayla-Cake-Logo.png" />
                        <p class="card-text">
                            We have partnered with GaylaCake who is providing free cakes to children in foster care. We also partnered with Balloons by JYS who will donate an arrangement monthly. If we receive more than 1 request there will be opportunities to sponsor balloon arrangements. Foster parents may fill out the request form below 1 month prior to the childs' birthday. 
                        </p>
                    </div>
                    <div class="card-body">
                        <asp:LinkButton ID="LinkButton2" class="btn btn-info btn-block" runat="server" href="https://docs.google.com/forms/d/e/1FAIpQLSc6aN11MJmWPk1GPf-vNMQz0I3t3JHwyiICUnX_lfdEUjrSFg/viewform">Birthday Request Form</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
