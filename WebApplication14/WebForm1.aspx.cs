using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication14.Entity;

namespace WebApplication14
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DBTeknikServisEntities db = new DBTeknikServisEntities();
        protected void Page_Load(object sender, EventArgs e)
        { 
            //var degerler = db.TBLURUNTAKIP.ToList();
            //Reperater1.DataSource = degerler;
            //Reperater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var degerler = db.TBLURUNTAKIP.Where(x => x.SERİNO == TextBox1.Text);
           var a= TextBox1.Text;

            Reperater1.DataSource = degerler.ToList();
            Reperater1.DataBind();
           

        }
    }
}