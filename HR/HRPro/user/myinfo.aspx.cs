using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_myinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblimgInfo.Text = string.Empty;
        if (!IsPostBack)
        {
            lblimgInfo.Text = "这是第一次加载";

        }
    }



    protected void btnUploadImg_Click(object sender, EventArgs e)
    {
        //定义保存路径  
        string savePath = "UploadFiles";
        string fullpath = string.Empty;
        try
        {
            //是否存在目录  
            if (!System.IO.Directory.Exists(Server.MapPath(savePath)))
            {
                //不存在创建文件夹   
                System.IO.Directory.CreateDirectory(Server.MapPath(savePath));
            }

            //上传文件  
            if (Fu.HasFile)
            {
                try
                {
                    fullpath = Server.MapPath(savePath) + "\\" + Fu.FileName;
                    Fu.SaveAs(fullpath);
                    myimg.ImageUrl = fullpath;
                }
                catch (Exception ex)
                {
                    lblimgInfo.Text = "发生错误：" + ex.Message.ToString();
                }
            }
            else
            {
                lblimgInfo.Text = "没有选择要上传的文件！";
            }
        }
        catch (Exception exo)
        {
            lblimgInfo.Text = exo.Message;
        }
    }
}