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
    public partial class AddReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!Page.IsPostBack)
            {

                //YearValidator.MaximumValue = (DateTime.Now.Year + 1).ToString();
                RangeValidator1.MaximumValue = DateTime.Today.ToShortDateString();
                
                /* RangeValidator1.ControlToValidate = "DateOfIncident";
                 RangeValidator1.Type = ValidationDataType.Date;
                 RangeValidator1.MaximumValue = DateTime.Today.ToShortDateString(); */

            }
        }

        


        protected void ReportAddButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string connectionString = ConfigurationManager.ConnectionStrings["RideXpressConnectionString"].ToString();
                ReportBLL bll = new ReportBLL(connectionString);
                ReportViewModel report = new ReportViewModel();                          
                
                report.CarID = Convert.ToInt32(CarID.SelectedValue);
                report.DateOfIncident = Convert.ToDateTime(DateOfIncident.Text);
                report.ReportName = ReportName.Text;
                report.ReportDescription = ReportDescription.Text;                            
                bll.AddReport(report);
                Response.Redirect("~/Reports.aspx");
               
            }
        }
    }
}

