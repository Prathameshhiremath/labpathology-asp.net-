using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkdepartment_Click(object sender, EventArgs e)
        {
            Response.Redirect("Department.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {

        }

        protected void lnkpatient_Click(object sender, EventArgs e)
        {
            Response.Redirect("Patient.aspx");
        }

        protected void lnkdoctor_Click(object sender, EventArgs e)
        {
            Response.Redirect("Doctor.aspx");
        }

        protected void lnksample_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sample.aspx");
        }

        protected void lnkunit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Unit.aspx");
        }

        protected void lnkparameter_Click(object sender, EventArgs e)
        {
            Response.Redirect("Parameter.aspx");
        }

        protected void lnkmachine_Click(object sender, EventArgs e)
        {
            Response.Redirect("Machine.aspx");

        }

        protected void lnktest_Click(object sender, EventArgs e)
        {
            Response.Redirect("Test.aspx");
        }

        protected void lnkparameterdetail_Click(object sender, EventArgs e)
        {
            Response.Redirect("ParameterDetail.aspx");
        }

        protected void lnkbill_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bill.aspx");
        }

        protected void lnkcasepaper_Click(object sender, EventArgs e)
        {
            Response.Redirect("CasePaper.aspx");
        }

        protected void lnkcasepapertest_Click(object sender, EventArgs e)
        {
            Response.Redirect("CasePaperTest.aspx");
        }

        protected void lnktestmachine_Click(object sender, EventArgs e)
        {
            Response.Redirect("TestMachine.aspx");

        }

        protected void lnktestparameter_Click(object sender, EventArgs e)
        {
            Response.Redirect("TestParameter.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("DepartmentReport.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("TestReport.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("BillReport.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ParameterReport.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("CasePaperReport.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("MachineReport.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewData.aspx");
        }
    }
}