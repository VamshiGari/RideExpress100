using RideXpress.BLL;
using RideXpress.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RideXpress_StarterKit
{
    public partial class EditReport : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["RideXpressConnectionString"].ToString();
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ReportBLL bll = new ReportBLL(connectionString);
                ReportViewModel report = bll.GetReportById(Convert.ToInt32(Request.QueryString["ReportID"]));

             //   DateTime DOI = report.DateOfIncident;
            //    DateTime DOR = report.DateOfReport;
                CarID.Text = report.CarID.ToString();
                //  DateOfIncident.Text = report.DateOfIncident.ToShortDateString("mm/dd/yyy");
                DateOfIncident.Text = report.DateOfIncident.ToShortDateString();
                ReportName.Text =  report.ReportName;
                ReportDescription.Text = report.ReportDescription;
                DateOfReport.Text = report.DateOfReport.ToShortDateString();
                string currentDate = DateTime.Today.ToShortDateString();
              
                FormatValidator.MaximumValue = DateTime.Today.ToShortDateString();
               


            }
        }

        protected void ReportEditButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                ReportBLL bll = new ReportBLL(connectionString);
                ReportViewModel report = new ReportViewModel();
                DateTime DOI = report.DateOfIncident;

                report.ReportID = Convert.ToInt32(Request.QueryString["ReportID"]);
                report.CarID = Convert.ToInt32(CarID.Text);
                report.DateOfIncident = DateTime.Parse(DateOfIncident.Text.ToString());
                report.ReportName = ReportName.Text;
                report.ReportDescription = ReportDescription.Text;
                report.DateOfReport = DateTime.Parse(DateTime.Now.ToShortDateString());
                bll.EditReport(report);
                Response.Redirect("~/Reports.aspx");
            }
        }

        
    }
}

