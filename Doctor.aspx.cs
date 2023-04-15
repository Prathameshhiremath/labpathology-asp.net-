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
    public partial class Doctor : System.Web.UI.Page
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
                cmd.CommandText = "Insert into Doctor(DoctorId,Name,Gender,Mobile,Address,EmailId,Specilazation,Qualification) values(" + txtdoctorid.Text + ",'" + txtdocname.Text + "','" + drpdocgender.Text + "','" + txtdocmobile.Text + "','" + txtdocemailid.Text + "','" + txtdocspecialization.Text + "','" + txtdocqualification.Text + "','" + txtdocaddress.Text + "')";
            }
            else if (Session["flag"].ToString() == "edit")
            {
                cmd.CommandText = "Update Doctor set Name='" + txtdocname.Text + "',Gender='" + drpdocgender.Text + "',Mobile='" + txtdocmobile.Text + "',Address='" + txtdocaddress.Text + "',EmailId='" + txtdocemailid.Text + "',Specialization='" + txtdocspecialization.Text + "',Qualification='" + txtdocqualification.Text + "' where DoctorId =" + txtdoctorid.Text;
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
            string qry = "Select * from Doctor Where DoctorId =" + txtdoctorid.Text;
            SqlDataAdapter da = new SqlDataAdapter(qry, cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Doctor");
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtdoctorid.Text = ds.Tables[0].Rows[0][0].ToString();
                txtdocname.Text = ds.Tables[0].Rows[0][1].ToString();
                drpdocgender.Text = ds.Tables[0].Rows[0][2].ToString();
                txtdocmobile.Text = ds.Tables[0].Rows[0][3].ToString();
                txtdocaddress.Text = ds.Tables[0].Rows[0][4].ToString();
                txtdocemailid.Text = ds.Tables[0].Rows[0][5].ToString();
                txtdocspecialization.Text = ds.Tables[0].Rows[0][6].ToString();
                txtdocqualification.Text = ds.Tables[0].Rows[0][7].ToString();

            }
            else
            {
                lblmessage.Text = "Record not found";
            }

        }

        protected void bbtnedit_Click(object sender, EventArgs e)
        {
            Session["flag"] = "edit";
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtdoctorid.Text = "";
            txtdocname.Text = "";
            txtdocaddress.Text = "";
            txtdocemailid.Text = "";
            drpdocgender.Text = "";
            txtdocmobile.Text = "";
            txtdocqualification.Text = "";
            txtdocspecialization.Text = "";
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "Delete from  Doctor  where DoctorId=" + txtdoctorid.Text;
            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Write("<script>alert('Record Deleted')</script>)");
                txtdoctorid.Text = "";
                txtdocname.Text = "";
                txtdocmobile.Text = "";
                txtdocemailid.Text = "";
                txtdocaddress.Text = "";
                txtdocqualification.Text = "";
                drpdocgender.Text = "";
                txtdocspecialization.Text = "";
            }
            catch (Exception ex)
            {
                lblmessage.Text = ex.Message;

            }
            Session["flag"] = "new";
        }
    }
}