
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
                        <asp:TextBox ID="DateOfIncident" runat="server" CssClass="form-control" MaxLength="10"  TextMode="DateTime"   ></asp:TextBox>
                        
                        <div class="has-error">
                            <span class="help-block"> 
                               
                                   
                                
                                <asp:RangeValidator ID="FormatValidator" runat="server" ControlToValidate="DateOfIncident" Display="Dynamic"
                                    ValidationGroup="AllValidators" MinimumValue="01/01/1980" MaximumValue="Date.Today"
                                    ErrorMessage="Please enter a valid date (mm/dd/yyyy) for this past incident." Type="date"></asp:RangeValidator>   
                                <asp:RequiredFieldValidator ID="DateOfIncidentRequired" runat="server" ErrorMessage="Date is Required" InitialValue=""
                                    ControlToValidate="DateOfIncident" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>

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
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Report Name is Required" InitialValue=""
                                    ControlToValidate="ReportName" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>                            </span>
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
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Report Description is Required" InitialValue=""
                                    ControlToValidate="ReportDescription" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>                            </span>
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
