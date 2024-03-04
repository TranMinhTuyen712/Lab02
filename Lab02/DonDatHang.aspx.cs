using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab02
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //khoi tao du lieu cho ddlBanh 
                ddlBanh.Items.Add(new ListItem("Bánh bao", "01"));
                ddlBanh.Items.Add(new ListItem("Bánh cam", "02"));
                ddlBanh.Items.Add(new ListItem("Bánh mì", "03"));
                ddlBanh.Items.Add(new ListItem("Bánh ú", "04"));
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            string data = $"{ddlBanh.SelectedItem.Text} ({txtSoLuong.Text})";
            lstBanh.Items.Add(data);
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            //int index = lstBanh.SelectedIndex;
            //lstBanh.Items.RemoveAt(index);
            for (int i = lstBanh.Items.Count -1; i >= 0; i--)
            {
                if (lstBanh.Items[i].Selected)
                {
                    lstBanh.Items.RemoveAt(i);  
                }
            }
        }
    }
}