<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/RideXpress.Master" AutoEventWireup="true" CodeBehind="EditReport.aspx.cs" Inherits="RideXpress_StarterKit.EditReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="first">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <h1>Edit Incident Report</h1>
                </div>
            </div>
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label ID="CarIDLabel" runat="server" Text="Ride"
                        AssociatedControlID="CarID" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:DropDownList ID="CarID" runat="server" CssClass="form-control"   Height="45px" Width="325px" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CarID" >
                            
                        </asp:DropDownList>
                        
                                              
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RideXpressConnectionString %>" SelectCommand="SELECT [CarID], [Name] FROM [Car]"></asp:SqlDataSource>
                        
                                              
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
                        <asp:TextBox ID="DateOfIncident" runat="server" CssClass="form-control" MaxLength="10" TextMode="DateTime" ></asp:TextBox>
                        
                        <div class="has-error">
                            <span class="help-block">
                                <span data-val-controltovalidate="ContentPlaceHolder1_DateOfIncident" data-val-errormessage="Please enter a valid date of when the incident occurred." data-val-display="Dynamic" data-val-validationgroup="AllValidators" id="ContentPlaceHolder1_DateOfIncidentRequired" data-val="true" data-val-evaluationfunction="RequiredFieldValidatorEvaluateIsValid" data-val-initialvalue="" style="display: none;"> </span>
                                <span data-val-controltovalidate="ContentPlaceHolder1_DateOfIncident" data-val-errormessage="Date Entry is not formatted correctly (mm/dd/yyyy)"" data-val-display="Dynamic" data-val-validationgroup="AllValidators" id="ContentPlaceHolder1_DateOfIncidentValidator" data-val="true" data-val-type="Date" data-val-dateorder="mdy" data-val-cutoffyear="2099" data-val-century="2000" data-val-evaluationfunction="RangeValidatorEvaluateIsValid" data-val-maximumvalue="12/14/2099" data-val-minimumvalue="1/1/2000" style="display: none;"></span>
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
                                <span data-val-controltovalidate="ContentPlaceHolder1_ReportDescription" data-val-errormessage="Please provide a Description of the Incident" data-val-display="Dynamic" data-val-validationgroup="AllValidators" id="ContentPlaceHolder1_ReportDescriptionRequired" data-val="true" data-val-evaluationfunction="RequiredFieldValidatorEvaluateIsValid" data-val-initialvalue="" style="display: none;">Please provide a Description of the Incident</span>
                            </span>
                        </div>
                    </div>
                </div>
                 <div class="form-group">
                    <div class="col-xs-4 col-xs-offset-4">
                        <asp:Button ID="ReportEditButton" runat="server" Text="Submit" CssClass="btn btn-success"
                            OnClick="ReportEditButton_Click" ValidationGroup="AllValidators" />
                        <asp:HyperLink CssClass="btn btn-default" NavigateUrl="~/Reports.aspx" runat="server" Text="Back" />
                    </div>
                </div>
            </div>
        </div>
    </section>
    <asp:TextBox ID="DateOfReport" runat="server" ReadOnly="True" TextMode="DateTime" Visible="False"></asp:TextBox>
</asp:Content>
