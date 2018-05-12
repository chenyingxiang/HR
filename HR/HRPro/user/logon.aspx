<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logon.aspx.cs" Inherits="user_logon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Logon</title>
    <link type="text/css" rel="stylesheet" href="/layui-v2.2.6/layui/css/layui.css" />
    <script src="/layui-v2.2.6/layui/layui.js"></script>
    <script src="/myjs/pub.js"></script>
</head>
<body>
    <form id="form1" class="layui-form" style="font-size:12px;" runat="server">
        <div class="layui-main layui-card" style="margin-top: 150px; width: 800px; border: 1px solid #eee; border-radius: 3px;color:gray;">
            <div class="layui-card-header" style="background:#eee;border:1px solid #ddd;">请登录</div>
            <div class="layui-card-body">
                <div class="layui-form-item">输入用户名和密码登录</div>
                <div class="layui-form-item">
                    <div class="layui-form-label">用户名：</div>
                    <div class="layui-input-block">
                        <asp:TextBox ID="txtUser" runat="server" CssClass="layui-input"></asp:TextBox>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-form-label">用户密码：</div>
                    <div class="layui-input-block">
                        <asp:TextBox ID="txtPwd" runat="server" CssClass="layui-input" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                <div class="layui-form-item" style="text-align: center; padding: 10px;">
                    <asp:Button ID="btnReset" runat="server" CssClass="layui-btn layui-btn-primary" Width="150px" Text="重置" OnClick="btnReset_Click" />
                    <asp:Button ID="btnLogon" runat="server" CssClass="layui-btn layui-btn-normal" Width="150px" Text="登录" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
