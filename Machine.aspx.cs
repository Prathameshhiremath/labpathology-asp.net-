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
    public partial class Machine : System.Web.UI.Page
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
                cmd.CommandText = "Insert into Machine(MachineId,MachineName,MachineSerialNo,MachineDescription) values (" + txtmachineid.Text + ",'" + txtmachinename.Text + "'," + txtserialno.Text + ",'" + txtmachinedescription.Text + "')";
            }
            else if (Session["flag"].ToString() == "edit")
            {
                cmd.CommandText = "Update Machine set MachineName= '" + txtmachinename.Text + "',MachineSerialNo=" + txtserialno.Text + ",Machinedescription='" + txtmachinedescription.Text + "' where MachineId = " + txtmachineid.Text;
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

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            string qry = "Select * from Machine Where MachineId =" + txtmachineid.Text;
            SqlDataAdapter da = new SqlDataAdapter(qry, cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Machine");
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtmachineid.Text = ds.Tables[0].Rows[0][0].ToString();
                txtmachinename.Text = ds.Tables[0].Rows[0][1].ToString();
                txtserialno.Text = ds.Tables[0].Rows[0][2].ToString();
                txtmachinedescription.Text = ds.Tables[0].Rows[0][3].ToString();
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
            txtmachineid.Text = "";
            txtmachinename.Text = "";
            txtserialno.Text = "";
            txtmachinedescription.Text = "";


        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "Delete from  Machine where MachineId=" + txtmachineid.Text;
            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Write("<script>alert('Record Deleted')</script>)");
                txtmachineid.Text = "";
                txtmachinename.Text = "";
                txtserialno.Text = "";
                txtmachinedescription.Text = "";
            }
            catch (Exception ex)
            {
                lblmessage.Text = ex.Message;

            }
            Session["flag"] = "new";
        }
    }
}