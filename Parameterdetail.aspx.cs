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
    public partial class Parameterdetail : System.Web.UI.Page
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
            string qry = "Select ParameterId from Parameter";
            SqlDataAdapter da = new SqlDataAdapter(qry, cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Parameter");
            drpparameterid.DataSource = ds;
            drpparameterid.DataMember = "Parameter";
            drpparameterid.DataValueField = "ParameterId";
            drpparameterid.DataTextField = "ParameterId";
            drpparameterid.DataBind();
            drpparameterid.Items.Insert(0, new ListItem("", ""));
        }

        protected void txttoage_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            if (Session["flag"].ToString() == "new")
            {
                cmd.CommandText= "Insert into ParameterDetail(ParameterDetailId,ParameterId,Gender,Fromage,Toage,Minvalue,Maxvalue,Textvalue,Normalrange) values ( "+ txtparameterdetailid.Text +","+ drpparameterid.Text +",'"+ drpgender.Text +"',"+ txtfromage.Text +","+ txttoage.Text +","+ txtminvalue.Text +","+ txtmaxvalue.Text +",'"+ txttextvalue.Text +"','"+ txtnormalrange.Text+"')"; 
            }
            else if (Session["flag"].ToString() == "edit")
            {
                cmd.CommandText = "Update Parameter Detail set ParameterId=" + drpparameterid.Text + ",Gender='" + drpgender.Text + "',Fromage=" + txtfromage.Text + ",Toage=" + txttoage.Text + ",Minvalue=" + txtminvalue.Text + ",Maxvalue=" + txtmaxvalue.Text + ",Textvalue='" + txttextvalue.Text + "',Normalrange='" + txtnormalrange.Text + "' where Parameter Detail=" + txtparameterdetailid.Text; 
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
            string qry = "Select * from ParameterDetail Where ParameterDetailId =" + txtparameterdetailid.Text;
            SqlDataAdapter da = new SqlDataAdapter(qry, cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Parameter Detail");
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtparameterdetailid.Text = ds.Tables[0].Rows[0][0].ToString();
                drpparameterid.Text = ds.Tables[0].Rows[0][1].ToString();
                txtparameterid.Text = SearchData("Select ParameterName from Parameter where ParameterID=" + drpparameterid.Text);
                drpgender.Text = ds.Tables[0].Rows[0][2].ToString();
                txtfromage.Text = ds.Tables[0].Rows[0][3].ToString();
                txttoage.Text = ds.Tables[0].Rows[0][4].ToString();
                txtminvalue.Text = ds.Tables[0].Rows[0][5].ToString();
                txtmaxvalue.Text = ds.Tables[0].Rows[0][6].ToString();
                txttextvalue.Text = ds.Tables[0].Rows[0][7].ToString();
                txtnormalrange.Text = ds.Tables[0].Rows[0][8].ToString();
                
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

        protected void drpparameterid_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string qry = "Select ParameterName from Parameter where ParameterId=" + drpparameterid.Text;
                SqlDataAdapter da = new SqlDataAdapter(qry, cn);
                DataSet ds = new DataSet();
                da.Fill(ds, "Parameter");
                txtparameterid.Text = ds.Tables[0].Rows[0][0].ToString();

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
            txtparameterdetailid.Text = "";
            txtfromage.Text = "";
            txttoage.Text = "";
            txtminvalue.Text = "";
            txtmaxvalue.Text = "";
            txttextvalue.Text = "";
            txtnormalrange.Text = "";

        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "Delete from  Parameter Detail where ParameterDetailId=" + txtparameterdetailid.Text;
            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Write("<script>alert('Record Deleted')</script>)");
                txtparameterdetailid.Text = "";
                drpparameterid.Text = "";
                drpgender.Text = "";
                txtfromage.Text = "";
                txttoage.Text = "";
                txtminvalue.Text = "";
                txtmaxvalue.Text = "";
                txttextvalue.Text = "";
                txtnormalrange.Text = "";
            }
            catch (Exception ex)
            {
                lblmessage.Text = ex.Message;

            }
            Session["flag"] = "new";
        }
    }
}