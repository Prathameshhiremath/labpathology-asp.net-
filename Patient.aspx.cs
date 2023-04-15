using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication1
{
    public partial class Patient : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["flag"] = "new";
            }
            cn.ConnectionString = "Data Source=DESKTOP-MLH6Q20;Initial Catalog=dbLab;Integrated Security=True;Pooling=False";
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            if (Session["flag"].ToString() == "new")
            {
                cmd.CommandText = "Insert into Patient(PatientId,Name,BirthDate,Gender,Mobile,Occupation,EmailId,Address) values (" + txtpatientid.Text + ",'" + txtpname.Text + "','" + txtbirthdate.Text + "','" + drpgender.Text + "','" + txtpmobile.Text + "','" + txtpemailid.Text + "','" + txtpaddress.Text + "','" + txtpoccupation.Text + "')";

            }
            else if (Session["flag"].ToString() == "new")
            {
                cmd.CommandText = "Update Patient set Name= '" + txtpname.Text + "',BirthDate=" + txtbirthdate.Text + ",Gender='" + drpgender.Text + "',Mobile='" + txtpmobile.Text + "',Occupation='" + txtpoccupation.Text + "',EmailId='" + txtpemailid.Text + "',Address='" + txtpaddress.Text + "' where PatientId = " + txtpatientid.Text;
            }
            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Write("<script>alert('Record Saved')</script>)");

            }
            catch (Exception ex)
            {

                lblmessage.Text = ex.Message;
            }
            Session["flag"] = "new";
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            string qry = "Select * from Patient Where PatientId = " + txtpatientid.Text;
            SqlDataAdapter da = new SqlDataAdapter(qry, cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Patient");
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtpatientid.Text = ds.Tables[0].Rows[0][0].ToString();
                txtpname.Text = ds.Tables[0].Rows[0][1].ToString();
                txtbirthdate.Text = ds.Tables[0].Rows[0][2].ToString();
                drpgender.Text = ds.Tables[0].Rows[0][3].ToString();
                txtpmobile.Text = ds.Tables[0].Rows[0][4].ToString();
                txtpoccupation.Text = ds.Tables[0].Rows[0][5].ToString();
                txtpemailid.Text = ds.Tables[0].Rows[0][6].ToString();
                txtpaddress.Text = ds.Tables[0].Rows[0][7].ToString();
            }
            else
            {
                lblmessage.Text = "Record not found";
            }
        }

        protected void btnedit_Click(object sender, EventArgs e)
        {
            Session["flag"] = "new";
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtpatientid.Text = "";
            txtpname.Text = "";
            txtbirthdate.Text = "";
            drpgender.Text = "";
            txtpmobile.Text = "";
            txtpoccupation.Text = "";
            txtpemailid.Text = "";
            txtpaddress.Text = "";
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "Delete from  Patient  where PatientId=" + txtpatientid.Text;
            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Write("<script>alert('Record Deleted')</script>)");
                txtpatientid.Text = "";
                txtpname.Text = "";
                txtbirthdate.Text = "";
                drpgender.Text = "";
                txtpmobile.Text = "";
                txtpoccupation.Text = "";
                txtpemailid.Text = "";
                txtpaddress.Text = "";
            }
            catch (Exception ex)
            {
                lblmessage.Text = ex.Message;

            }
            Session["flag"] = "new";
        }
    }
}