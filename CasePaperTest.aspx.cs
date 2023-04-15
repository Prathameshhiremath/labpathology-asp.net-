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
    public partial class CasePaperTest : System.Web.UI.Page
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
            string qry = "Select CasePaperID from CasePaper";
            SqlDataAdapter da = new SqlDataAdapter(qry, cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "CasePaper");
            drpcasepaperid.DataSource = ds;
            drpcasepaperid.DataMember = "CasePaper";
            drpcasepaperid.DataValueField = "CasePaperID";
            drpcasepaperid.DataTextField = "CasePaperID";
            drpcasepaperid.DataBind();
            drpcasepaperid.Items.Insert(0, new ListItem("", ""));

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


        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            if (Session["flag"].ToString() == "new")
            {
                cmd.CommandText = "Insert into CasePaperTest(CTId,CasePaperId,TestId,TestResult,Remark) values(" + txtcpid.Text + "," + drpcasepaperid.Text + "," + drptestid.Text + "," + txttestresult.Text + ",'" + txtremarks.Text + "')";

            }
            else if (Session["flag"].ToString() == "edit")
            {
                cmd.CommandText = "Update CasePaperTest set CasePaperId=" + drpcasepaperid.Text + ",TestId=" + drptestid.Text + ",TestResult=" + txttestresult.Text + ",Remark='" + txtremarks.Text + "' where CTId=" + txtcpid.Text;

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
            string qry = "Select * from CasePaperTest Where CTId=" + txtcpid.Text;
            SqlDataAdapter da = new SqlDataAdapter(qry, cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "CasePaperTest");
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtcpid.Text = ds.Tables[0].Rows[0][0].ToString();
                drpcasepaperid.Text = ds.Tables[0].Rows[0][1].ToString();
                drptestid.Text = ds.Tables[0].Rows[0][2].ToString();
                txttestresult.Text = ds.Tables[0].Rows[0][3].ToString();
                txtremarks.Text = ds.Tables[0].Rows[0][4].ToString();
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

        protected void txtcasepaperid_TextChanged(object sender, EventArgs e)
        {

        }

        protected void drpcasepaperid_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string qry = "Select P.Name from CasePaper c inner join Patient p on P.PatientId =c.PatientId   where c.CasePaperID= " + drpcasepaperid.Text;
                SqlDataAdapter da = new SqlDataAdapter(qry, cn);
                DataSet ds = new DataSet();
                da.Fill(ds, "CasePaer");
                txtcasepaperid.Text = ds.Tables[0].Rows[0][0].ToString();
            }
            catch (Exception)
            {


            }
        }

        protected void drptestid_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string qry = " Select TestName from Test where TestId=" + drptestid.Text;
                SqlDataAdapter da = new SqlDataAdapter(qry, cn);
                DataSet ds = new DataSet();
                da.Fill(ds, "Test");
                txttestid.Text = ds.Tables[0].Rows[0][0].ToString();
            }
            catch (Exception)
            {


            }

        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtcpid.Text = "";
            drpcasepaperid.Text = "";
            drptestid.Text = "";
            txttestresult.Text = "";
            txtremarks.Text = "";

        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "Delete from  CasePaperTest where CTId=" + txtcpid.Text;
            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Write("<script>alert('Record Deleted')</script>)");
                txtcpid.Text = "";
                drpcasepaperid.Text = "";
                drptestid.Text = "";
                txttestresult.Text = "";
                txtremarks.Text = "";
            }
            catch (Exception ex)
            {
                lblmessage.Text = ex.Message;

            }
            Session["flag"] = "new";
        }
    }
}