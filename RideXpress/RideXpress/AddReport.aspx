<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/RideXpress.Master" AutoEventWireup="true" CodeBehind="AddReport.aspx.cs" Inherits="RideXpress_StarterKit.AddReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="first">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <h1>New Incident Report</h1>
                </div>
            </div>
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label ID="CarIDLabel" runat="server" Text="Ride"
                        AssociatedControlID="CarID" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:DropDownList ID="CarID" runat="server" CssClass="form-control" AppendDataBoundItems="true" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CarID" >                                                            
                              <Items>
                                      <asp:ListItem Text="--Select A Ride--" Value="0" />
                              </Items>             
                        </asp:DropDownList>
                        
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RideXpressConnectionString %>" SelectCommand="SELECT [Name], [CarID] FROM [Car]"></asp:SqlDataSource>
                        
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="RideRequired" runat="server" ErrorMessage="Ride is Required" InitialValue="0"
                                    ControlToValidate="CarID" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="DateOfIncidentLabel" runat="server" Text="Date Of Incident" 
                        AssociatedControlID="DateOfIncident" CssClass="col-xs-4 control-label" ></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="DateOfIncident" runat="server" CssClass="form-control" MaxLength="4" TextMode="Date"></asp:TextBox>
                      
                        <div class="has-error">
                            <span class="help-block">
                                 <asp:RequiredFieldValidator ID="DateOfIncidentRequired" runat="server" ErrorMessage="Date is Required" InitialValue=""
                                    ControlToValidate="DateOfIncident" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                                
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="DateOfIncident" Display="Dynamic"
                                    ValidationGroup="AllValidators" MinimumValue="01/01/1980"
                                     ErrorMessage="Future Date is not accepted"     Type="date"></asp:RangeValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="ReportNameLabel" runat="server" Text="Name Of Report" 
                        AssociatedControlID="ReportName" CssClass="col-xs-4 control-label" ></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="ReportName" runat="server" CssClass="form-control" MaxLength="40" ></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <span data-val-controltovalidate="ContentPlaceHolder1_ReportName" data-val-errormessage="Please provide a Name for the Report" data-val-display="Dynamic" data-val-validationgroup="AllValidators" id="ContentPlaceHolder1_ReportNameRequired" data-val="true" data-val-evaluationfunction="RequiredFieldValidatorEvaluateIsValid" data-val-initialvalue="" style="display: none;">Please provide a Name for the Report</span>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                   <asp:Label ID="DescriptionLabel" runat="server" Text="Description" 
                        AssociatedControlID="ReportDescription" CssClass="col-xs-4 control-label" ></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="ReportDescription" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" MaxLength="200" ></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <span data-val-controltovalidate="ContentPlaceHolder1_ReportDescription" data-val-errormessage="Please provide a Description of the Incident" data-val-display="Dynamic" data-val-validationgroup="AllValidators" id="ContentPlaceHolder1_ReportDescriptionRequired" data-val="true" data-val-evaluationfunction="RequiredFieldValidatorEvaluateIsValid" data-val-initialvalue="" style="display: none;">Please provide a Description of the Incident.</span>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-4 col-xs-offset-4">
                       <asp:Button ID="ReportAddButton" runat="server" Text="Submit" CssClass="btn btn-success"
                            OnClick="ReportAddButton_Click" ValidationGroup="AllValidators" />
                        <asp:HyperLink CssClass="btn btn-default" NavigateUrl="~/Reports.aspx" runat="server" Text="Back" />
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
