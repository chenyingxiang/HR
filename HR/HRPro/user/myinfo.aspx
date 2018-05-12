<%@ Page Title="" Language="C#" MasterPageFile="~/master/nav.master" AutoEventWireup="true" CodeFile="myinfo.aspx.cs" Inherits="user_myinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link type="text/css" rel="stylesheet" href="/layui-v2.2.6/layui/css/layui.css" />
    <script src="/layui-v2.2.6/layui/layui.js"></script>
    <script src="/myjs/pub.js"></script>
    <script>
        layui.use('upload', function () {
            var upload = layui.upload;
            //执行实例
            var uploadInst = upload.render({
                elem: '#uploadicon' //绑定元素
              , url: '/usericon/' //上传接口
              , done: function (res) {
                  //上传完毕回调

              }
              , error: function () {
                  //请求异常回调
              }
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <div class="layui-form layui-main">
        <div class="layui-container">
            <div class="layui-row">
                <div class="layui-col-md9">
                    other infos
                </div>
                <div id="myicon" class="layui-col-md3">
                    <div class="layui-form-item">
                        <asp:UpdatePanel runat="server">
                            <ContentTemplate>
                                <asp:Image ID="myimg" runat="server" Width="180px" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <div class="layui-form-item" style="line-height: 18px; height: 18px;">
                        <asp:UpdatePanel runat="server">
                            <ContentTemplate>
                                <asp:Label ID="lblimgInfo" runat="server" ForeColor="Red"></asp:Label>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <div class="layui-form-item">
                        <asp:FileUpload ID="Fu" runat="server" />
                        <asp:Button ID="btnUploadImg" runat="server" Text="上传头像" OnClick="btnUploadImg_Click" />

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

