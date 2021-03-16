<%@ Page Title="Volunteer Clock In" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VolunteerClockin.aspx.cs" Inherits="BHConsole.VolunteerClockin" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="Scripts/jquery.mask.js"></script>
    <div class="container">
        
        <h1>Volunteers</h1>
        <hr />

        <div class="row">
            <div class="col align-self-center">
                <fieldset>
                    <legend>Volunteer Clock In</legend>
                    <div class="form-group">
                        <small>We will never share your info with anyone else.</small>
                    </div>
                    <div class="bs-component">
                        <div class="form-group">
                            <label for="txt_name">Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" * Required Field" ControlToValidate="txt_name" CssClass="text-danger"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txt_name" class="form-control" runat="server" placeholder="First Last"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="txt_phone">Phone number</label>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txt_phone" CssClass="text-danger" ValidationExpression="^\(\d{3}\)\s\d{3}-\d{4}" Text=" * Invalid Phone Number"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txt_phone" ClientIDMode="Static" class="form-control" runat="server"></asp:TextBox>
                            <script type="text/javascript">
                                        jQuery(function ($) {
                                            $("#txt_phone").mask("(999) 999-9999", { placeholder: "(###) ###-####" });
                                        });
                            </script>
                        </div>
                        <div class="form-group">
                            <label for="txt_email">Email address</label><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txt_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="text-danger" Text=" * Invalid Email Format"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txt_email" class="form-control" runat="server" placeholder="JaneDoe@example.com"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="btn_clockin" class="btn btn-primary btn-lg btn-block" runat ="server" Text="Clock In" OnClick="btn_clockin_Click" />
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
</asp:Content>
