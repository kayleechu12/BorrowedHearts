<%@ Page Title="Shopper Check In" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShopperCheckin.aspx.cs" Inherits="BHConsole.ShopperCheckin" %>




<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="Scripts/jquery.mask.js"></script>
    <div class="container">
        <h1>Hello Shopper!</h1>
        <hr />

        <%--Test to show that JQuery has loaded and is running--%> 
        <%--<script type="text/javascript">
            $(function () {

                alert("Hello World!");

            });
        </script>--%>
        
        

        <div class="row">
            <div class="col align-self-center">
                <fieldset>
                    <legend>Check In Form</legend>
                    <div class="form-group">
                        <small>Please fill in the information below and the store clerk will guide you in the right direction.</small>
                    </div>
                    <div class="bs-component">
                        <%--Name--%>
                        <div class="card border-primary">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="txt_name"><strong>Name</strong></label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" * Required Field" ControlToValidate="txt_name" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txt_name" class="form-control" runat="server" placeholder="First Last"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <%--Email--%>
                        <div class="card border-info">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="txt_email"><strong>Email</strong></label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" * Required Field" ControlToValidate="txt_email" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txt_email" Text=" * Invalid Email Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="text-danger"></asp:RegularExpressionValidator>                              
                                    <asp:TextBox ID="txt_email" runat="server" placeholder="JaneDoe@example.net" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <%--Phone--%>
                        <div class="card border-primary">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="txt_phone"><strong>Phone Number</strong></label>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txt_phone" CssClass="text-danger" ValidationExpression="^\(\d{3}\)\s\d{3}-\d{4}" Text=" * Invalid Phone Number"></asp:RegularExpressionValidator>
                                    <asp:TextBox ID="txt_phone" ClientIDMode="Static" CssClass="form-control" runat="server"></asp:TextBox>
                                    <script type="text/javascript">
                                        jQuery(function ($) {
                                            $("#txt_phone").mask("(999) 999-9999", { placeholder: "(###) ###-####" });
                                        });
                                    </script>
                                </div>
                            </div>
                        </div>
                        <br />
                        <%--Address--%>
                        <div class="card border-info">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="txt_address"><strong>Address</strong></label>
                                    <asp:TextBox ID="txt_address" class="form-control" runat="server" placeholder="1234 North Example Dr."></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <%--First time?--%>
                        <div class="card border-primary">
                            <div class="card-body">
                                <div class="form-group">
                                    <label><strong>Is this your first time visiting Borrowed Hearts?</strong></label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" Text=" * This field is required" CssClass="text-danger" ControlToValidate="rbl_firstTime"></asp:RequiredFieldValidator>
                                    <asp:RadioButtonList ID="rbl_firstTime" runat="server" CssClass="">
                                        <asp:ListItem Value="0">- No</asp:ListItem>
                                        <asp:ListItem Value="1">- Yes</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>
                        </div>
                        <br />
                        <%--Number of children--%>
                        <div class="card border-info">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="txt_numberOfChildren"><strong>Number of children you are shopping for?</strong></label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage=" * Required Field" ControlToValidate="txt_numberOfChildren" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txt_numberOfChildren" class="form-control" runat="server" placeholder="Enter number of children you're shopping for" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <%--case worker--%>
                        <div class="card border-primary">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="txt_caseWorker"><strong>Case Worker</strong></label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage=" * Required Field" ControlToValidate="txt_caseWorker" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txt_caseWorker" class="form-control" runat="server" placeholder="Enter name of case worker"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <%--relationship to children--%>
                        <div class="card border-info">
                            <div class="card-body">
                                <div class="form-group">
                                    <label><strong>Relationship to Children</strong></label> <%--Need to set as required field--%>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="rbl_relationship" Text=" * This field is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RadioButtonList ID="rbl_relationship" runat="server">
                                        <asp:ListItem Value="0">- Licensed Foster Parent</asp:ListItem>
                                        <asp:ListItem Value="1">- Relative or Kinship Placement</asp:ListItem>
                                        <asp:ListItem Value="2">- Caseworker</asp:ListItem>
                                        <asp:ListItem Value="3">- Ireland/Maglinger/Raintree</asp:ListItem>
                                        <asp:ListItem Value="4">- CASA</asp:ListItem>
                                        <asp:ListItem Value="5">- Other: (describe below)</asp:ListItem>
                                    </asp:RadioButtonList>
                                    <asp:TextBox ID="txt_other" CssClass="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="form-group">
                            <asp:Button ID="btn_checkin" class="btn btn-primary btn-lg btn-block" runat="server" Text="Submit" OnClick="btn_checkin_Click"/>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
</asp:Content>
