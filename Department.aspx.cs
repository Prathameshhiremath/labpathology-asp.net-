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
    public partial class Department : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Response.Write("<script>alert('hello')</script>)");
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
                cmd.CommandText = "Insert Into Department(DepartmentID,DepartmentName) values(" + txtdepartmentid.Text + ",'" + txtname.Text + "')";
            }
            else if (Session["flag"].ToString() == "edit")
            {
                cmd.CommandText = "Update  Department set DepartmentName= '" + txtname.Text + "' where departmentId="+txtdepartmentid.Text;
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
            string qry = "Select * from Department Where DepartmentId=" + txtdepartmentid.Text;
            SqlDataAdapter da = new SqlDataAdapter(qry, cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Department");
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtdepartmentid.Text = ds.Tables[0].Rows[0][0].ToString();
                txtname.Text = ds.Tables[0].Rows[0][1].ToString();
                
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

        protected void txtname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtdepartmentid.Text = "";
            txtname.Text = "";
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "Delete from  Department  where departmentId=" + txtdepartmentid.Text;
            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Write("<script>alert('Record Deleted')</script>)");
                txtdepartmentid.Text = "";
                txtname.Text = "";
            }
            catch (Exception ex)
            {
                lblmessage.Text = ex.Message;

            }
            Session["flag"] = "new";
        }
    }
}