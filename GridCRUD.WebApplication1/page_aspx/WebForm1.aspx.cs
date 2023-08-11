using Presentation.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GridCRUD.WebApplication1.page_aspx
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FllGrd();
            }
        }

        private void FllGrd()
        {
            grd1.DataSource = new ChartDS().GetDT5Row();
            grd1.DataBind();
        }

        protected void grd1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grd1.EditIndex = e.NewEditIndex;
            FllGrd();
        }

        protected void grd1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grd1.EditIndex = -1;
            FllGrd();
        }

        protected void grd1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            var txtCol = ((TextBox)grd1.Rows[e.RowIndex].FindControl("txtCol")).Text;
            grd1.EditIndex = -1;
            FllGrd();
        }
    }
}