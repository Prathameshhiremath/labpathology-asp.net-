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
    public partial class Bill : System.Web.UI.Page
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
            drppatientid.DataTextField= "PatientId";
            drppatientid.DataBind();
            drppatientid.Items.Insert(0, new ListItem("", ""));


            qry = "Select TestId from Test";
             da = new SqlDataAdapter(qry, cn);
             ds = new DataSet();
            da.Fill(ds, "Test");
            drptestid.DataSource = ds;
            drptestid.DataMember = "Test";
            drptestid.DataValueField = "TestId";
            drptestid.DataTextField = "TestId";
            drptestid.DataBind();
            drptestid.Items.Insert(0, new ListItem("", ""));

            qry = "Select CasePaperID from CasePaper";
            da = new SqlDataAdapter(qry, cn);
            ds = new DataSet();
            da.Fill(ds, "CasePaper");
            drpcasepaperid.DataSource = ds;
            drpcasepaperid.DataMember = "CasePaper";
            drpcasepaperid.DataValueField = "CasePaperID";
            drpcasepaperid.DataTextField = "CasePaperID";
            drpcasepaperid.DataBind();
            drpcasepaperid.Items.Insert(0, new ListItem("", ""));

        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            if (Session["flag"].ToString() == "new")
            {
                cmd.CommandText = "Insert into Bill(BillId,BillDate,CasePaperId,PatientId,TestId,Amount) values(" + txtbillid.Text + "," + txtbilldate.Text + "," + drpcasepaperid.Text + "," + drppatientid.Text + "," + drptestid.Text + "," + txtamount.Text + ")";
            }
            else if (Session["flag"].ToString() == "edit")
            {
                cmd.CommandText = "Update Bill set BillDate=" + txtbilldate.Text + ",CasePaperId " + drpcasepaperid.Text + ",PatientId " + drppatientid.Text + ",TestId " + drptestid.Text + ",Amount" + txtamount.Text + ", where BillId = " + txtbillid.Text;
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

        protected void btnserch_Click(object sender, EventArgs e)
        {
            string qry = "Select * from Bill Where BillId =" + txtbillid.Text;
            SqlDataAdapter da = new SqlDataAdapter(qry, cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Bill");
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtbillid.Text = ds.Tables[0].Rows[0][0].ToString();
                txtbilldate.Text = ds.Tables[0].Rows[0][1].ToString();
                drpcasepaperid.Text = ds.Tables[0].Rows[0][2].ToString();
                txtcasepaperid.Text = SearchData("Select PatientName from Patient where PatientId=" + drpcasepaperid.Text);
                drppatientid.Text = ds.Tables[0].Rows[0][3].ToString();
                drptestid.Text = ds.Tables[0].Rows[0][4].ToString();
                txtamount.Text = ds.Tables[0].Rows[0][5].ToString();

            }
            else
            {
                lblmessage.Text = "record not found";
            }
        }

        protected void btnedit_Click(object sender, EventArgs e)
        {
            Session["flag"] = "edit";
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

        protected void drpcasepaperid_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string qry = "Select P.Name from CasePaper c inner join Patient p on P.PatientId =c.PatientId   where c.CasePaperID= " + drpcasepaperid.Text;
                SqlDataAdapter da = new SqlDataAdapter(qry, cn);
                DataSet ds = new DataSet();
                da.Fill(ds, "CasePaper");
                txtcasepaperid.Text = ds.Tables[0].Rows[0][0].ToString();
            }
            catch (Exception)
            {

                
            }
        }

        protected void drptestid_SelectedIndexChanged(object sender, EventArgs e)
        {
            string qry = "Select TestName,Rate from Test where TestId=" + drptestid.Text;
            SqlDataAdapter da = new SqlDataAdapter(qry, cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Test");
            txttestid.Text = ds.Tables[0].Rows[0][0].ToString();
            txtamount.Text = ds.Tables[0].Rows[0][1].ToString();
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
            txtbilldate.Text = "";
            txtbilldate.Text = "";
            txtamount.Text = "";

        }

        protected void btndelete_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "Delete from  Bill where BillId=" + txtbillid.Text;
            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Write("<script>alert('Record Deleted')</script>)");
                txtbillid.Text = "";
                txtbilldate.Text = "";
                txtamount.Text = "";
            }
            catch (Exception ex)
            {
                lblmessage.Text = ex.Message;

            }
            Session["flag"] = "new";
        }
    }
}