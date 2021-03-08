<%@ Page Title="Shopper Check In" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShopperCheckin.aspx.cs" Inherits="BHConsole.ShopperCheckin" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1>Hello Shopper!</h1>
        <hr />
        <div class="row">
            <div class="col align-self-center">
                <fieldset>
                    <legend>Check In Form</legend>
                    <div class="form-group">
                        <small>Please fill in the information below and the store clerk will guide you in the right direction.</small>
                    </div>
                    <div class="bs-component">
                        <%--Name--%>
                        <div class="card">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="txt_name">Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" * Required Field" ControlToValidate="txt_name" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txt_name" class="form-control" runat="server" placeholder="Enter name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <%--Email--%>
                        <div class="card">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="txt_email">Email</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" * Required Field" ControlToValidate="txt_email" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txt_email" class="form-control" runat="server" placeholder="Enter email address"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <%--Phone--%>
                        <div class="card">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="txt_phone">Phone Number</label>
                                    <asp:TextBox ID="txt_phone" class="form-control" runat="server" placeholder="Enter phone number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <%--Address--%>
                        <div class="card">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="txt_address">Address</label>
                                    <asp:TextBox ID="txt_address" class="form-control" runat="server" placeholder="Enter address"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <%--First time?--%>
                        <div class="card">
                            <div class="card-body">
                                <div class="form-group">
                                    <label>Is this your first time visiting Borrowed Hearts?</label> <%--Need to set as required field--%>
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <asp:RadioButton ID="rb_firstYes" runat="server" CssClass="form-check-input" GroupName="firstTime" />
                                            Yes
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <asp:RadioButton ID="rb_firstNo" runat="server" CssClass="form-check-input" GroupName="firstTime" />
                                            No
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br />
                        <%--Number of children--%>
                        <div class="card">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="txt_numberOfChildren">Number of children you are shopping for?</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage=" * Required Field" ControlToValidate="txt_email" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txt_numberOfChildren" class="form-control" runat="server" placeholder="Enter number of children you're shopping for" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <%--case worker--%>
                        <div class="card">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="txt_caseWorker">Case Worker</label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage=" * Required Field" ControlToValidate="txt_caseWorker" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txt_caseWorker" class="form-control" runat="server" placeholder="Enter name of case worker"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <%--relationship to children--%>
                        <div class="card">
                            <div class="card-body">
                                <div class="form-group">
                                    <label>Relationship to Children</label> <%--Need to set as required field--%>
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <asp:RadioButton ID="rb_licensedFosterParent" runat="server" CssClass="form-check-input" GroupName="relationship" />
                                            Licenced Foster Parent
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <asp:RadioButton ID="rb_relativeKinship" runat="server" CssClass="form-check-input" GroupName="relationship" />
                                            Relative or Kinship Placement
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <asp:RadioButton ID="rb_caseworker" runat="server" CssClass="form-check-input" GroupName="relationship" />
                                            Caseworker
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <asp:RadioButton ID="rb_irelandMaglingerRaintree" runat="server" CssClass="form-check-input" GroupName="relationship" />
                                            Ireland/Maglinger/Raintree
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <asp:RadioButton ID="rb_casa" runat="server" CssClass="form-check-input" GroupName="relationship" />
                                            CASA
                                        </label>
                                    </div>
                                    
                                    <div class="form-check">
                                        <div class="row">
                                            <div class="col-1">
                                                <label class="form-check-label">
                                                    <asp:RadioButton ID="rb_other" runat="server" CssClass="form-check-input" GroupName="relationship"/>
                                                    Other:
                                                </label>
                                            </div>
                                            <div class="col-10">
                                                <asp:TextBox ID="txt_other" class="form-control form-control-sm" runat="server" placeholder=""></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
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
