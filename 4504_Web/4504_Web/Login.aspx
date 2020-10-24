<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_4504_Web.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--yazılan css dosyasını eğer masterPage yoksa sayfalar halinde ise Her sayfaya bu css dosyası link olarak sürüklenip bırakılır.--%>
    <link href="style.css" rel="stylesheet" />
    <title></title>
</head>
<body class="bodyBack">
    <form id="form1" runat="server">
        <div class="LoginPage">
            <div class="LoginUserDiv">
                <table>
                    <tr>
                        <td><b>E-Mail</b> </td>
                        <td>
                            <%--<asp:TextBox CssClass="txtStyle" required type="email" pattern="^[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([\.\-]?[a-zA-Z0-9]+)*)\.([A-Za-z]{2,})$" placeholder="E-Mail" runat="server" ID="txtKullaniciAdi" />--%>

                            <asp:TextBox CssClass="txtStyle" TextMode="Email" placeholder="E-Mail" runat="server" ID="txtEmail" />
                        </td>
                    </tr>
                    <tr>
                        <td><b>Şifre :</b></td>
                        <td>
                            <asp:TextBox CssClass="txtStyle" placeholder="Şifre Giriniz" runat="server" TextMode="Password" ID="txtsifre" EnableTheming="True" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp</td>
                        <td>
                            <table>
                                <tr>
                                    <td>
                                        <asp:Button CssClass="btnLoginGiris" Text="Giriş" ID="btnGiris" runat="server" ToolTip="Lütfen Giriş Yapınız" OnClick="btnGiris_Click" />
                                    </td>
                                    <td>
                                        <asp:Button Text="Uye Ol" CssClass="btnUyeOl" ID="btnUyeOl" runat="server" OnClick="btnUyeOl_Click" /></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
