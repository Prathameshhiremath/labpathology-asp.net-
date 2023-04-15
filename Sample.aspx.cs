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
    public partial class Sample : System.Web.UI.Page
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
                cmd.CommandText = "Insert into Sample(SampleId,SampleName) values (" + txtsampleid.Text + ",'" + txtsamplename.Text + "')";
            }
            else if (Session["flag"].ToString() == "edit")
            {
                cmd.CommandText = "Update Sample set SampleName= '" + txtsamplename.Text + "', where SampleId = " + txtsampleid.Text;
            }
            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Write("<script>('Record Saved')</script>)");
            }
            catch (Exception ex)
            {

                lblmessage.Text = ex.Message;
            }
            Session["flag"] = "new";
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            string qry = "Select * from Sample where SampleId = " + txtsampleid.Text;
            SqlDataAdapter da = new SqlDataAdapter(qry , cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Sample");
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtsampleid.Text = ds.Tables[0].Rows[0][0].ToString();
                txtsamplename.Text = ds.Tables[0].Rows[0][1].ToString();

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

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtsampleid.Text = "";
            txtsamplename.Text = "";
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "Delete from  Sample  where SampleId=" + txtsampleid.Text;
            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Write("<script>alert('Record Deleted')</script>)");
                txtsampleid.Text = "";
                txtsamplename.Text = "";
            }
            catch (Exception ex)
            {
                lblmessage.Text = ex.Message;

            }
            Session["flag"] = "new";
        }
    }
    }
