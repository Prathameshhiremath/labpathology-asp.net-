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
    public partial class CasePaper : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.ConnectionString = "Data Source=DESKTOP-MLH6Q20;Initial Catalog=dbLab;Integrated Security=True;Pooling=False";
            if (!IsPostBack)
            {
                Session["flag"] = "new";
                filldropdown();
            }
        }

        private void filldropdown()
        {
            string qry = "Select PatientId from Patient";
            SqlDataAdapter da = new SqlDataAdapter(qry, cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Patient");
            drppatientid.DataSource = ds;
            drppatientid.DataMember = "Patient";
            drppatientid.DataValueField = "PatientId";
            drppatientid.DataTextField = "PatientId";
            drppatientid.DataBind();
            drppatientid.Items.Insert(0, new ListItem("", ""));

            qry = "Select DoctorId from Doctor";
            da = new SqlDataAdapter(qry, cn);
            ds = new DataSet();
            da.Fill(ds, "Doctor");
            drpdoctorid.DataSource = ds;
            drpdoctorid.DataMember = "Doctor";
            drpdoctorid.DataValueField = "DoctorId";
            drpdoctorid.DataTextField = "DoctorId";
            drpdoctorid.DataBind();
            drpdoctorid.Items.Insert(0, new ListItem("", ""));
        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            if (Session["flag"].ToString() == "new")
            {
                cmd.CommandText = "Insert into CasePaper(CasePaperID,CasePaperDate,DoctorId,PatientId,Symptoms,Diagnosis,Remark,Validity) values("+ txtcasepaperid.Text +",'"+  txtcasepaperdate.Text+"',"+  drpdoctorid.Text+","+ drppatientid.Text +",'"+ txtsymptoms.Text+"','"+ txtdiagnosis.Text +"','"+ txtremarks.Text +"','"+ txtvalidity.Text +"')";

            }
            else if (Session["flag"].ToString() == "edit")
            {
                cmd.CommandText = "Update CasePaper set CasePaperDate= "+ txtcasepaperid.Text +",DoctorId="+ drpdoctorid.Text +",PatientId="+ drppatientid.Text +",Symptoms='"+ txtsymptoms.Text +"',Diagnosis='"+ txtdiagnosis.Text +"',Remark='"+ txtremarks.Text +"',Validity='"+ txtvalidity.Text +"' where CasePaperID ="+txtcasepaperid.Text;
            }
            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Write("<script>alert('Record Saved')</script>");

            }
            catch (Exception ex)
            {

                lblmessage.Text = ex.Message;
            }
            Session["flag"] = "new";
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            string qry = "Select * from CasePaper Where CasePaperID =" + txtcasepaperid.Text;
            SqlDataAdapter da = new SqlDataAdapter(qry, cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "CasePaper");
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtcasepaperid.Text = ds.Tables[0].Rows[0][0].ToString();
                txtcasepaperdate.Text = ds.Tables[0].Rows[0][1].ToString();
                drpdoctorid.Text = ds.Tables[0].Rows[0][2].ToString();
                txtdoctorid.Text = SearchData("Select Name from Doctor where DoctorId=" + drpdoctorid.Text);
                drppatientid.Text = ds.Tables[0].Rows[0][3].ToString();
                txtpatientid.Text = SearchData("Select Name from Patient where PatientId=" + drppatientid.Text);
                txtsymptoms.Text = ds.Tables[0].Rows[0][4].ToString();
                txtdiagnosis.Text = ds.Tables[0].Rows[0][5].ToString();
                txtremarks.Text = ds.Tables[0].Rows[0][6].ToString();
                txtvalidity.Text = ds.Tables[0].Rows[0][7].ToString();

            }
            else
            {
                lblmessage.Text = "Record not found";
            }
        }

        protected void btnedit_Click(object sender, EventArgs e)
        {
            Session["flag"] = "edit";
        }

        protected void drpdoctorid_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string qry = "Select Name from Doctor where DoctorId=" + drpdoctorid.Text;
                SqlDataAdapter da = new SqlDataAdapter(qry, cn);
                DataSet ds = new DataSet();
                da.Fill(ds, "Doctor");
                txtdoctorid.Text = ds.Tables[0].Rows[0][0].ToString();
            }
            catch (Exception)
            {

                
            }
        }

        protected void drppatientid_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string qry = "Select Name from Patient where PatientId=" + drppatientid.Text;
                SqlDataAdapter da = new SqlDataAdapter(qry, cn);
                DataSet ds = new DataSet();
                da.Fill(ds, "Patient");
                txtpatientid.Text = ds.Tables[0].Rows[0][0].ToString();
            }
            catch (Exception)
            {

                
            }
        }
        protected string SearchData(string qry)
        {
            string result = "";
            try
            {

                SqlDataAdapter da = new SqlDataAdapter(qry, cn);
                DataSet ds = new DataSet();
                da.Fill(ds, "Temp");
                result = ds.Tables[0].Rows[0][0].ToString();
            }
            catch (Exception)
            {
            }
            return result;
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtcasepaperid.Text = "";
            txtcasepaperdate.Text = "";
            txtsymptoms.Text = "";
            txtdiagnosis.Text = "";
            txtremarks.Text = "";
            txtvalidity.Text = "";

        }

        protected void btndelete_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "Delete from  CasePaper where CasePaperID=" + txtcasepaperid.Text;
            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Write("<script>alert('Record Deleted')</script>)");
                txtcasepaperid.Text = "";
                txtcasepaperdate.Text = "";
                txtsymptoms.Text = "";
                txtdiagnosis.Text = "";
                txtremarks.Text = "";
                txtvalidity.Text = "";
            }
            catch (Exception ex)
            {
                lblmessage.Text = ex.Message;

            }
            Session["flag"] = "new";
        }
    }
}