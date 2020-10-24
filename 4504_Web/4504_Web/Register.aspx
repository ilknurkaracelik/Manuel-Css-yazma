<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="_4504_Web.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="style.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="RegisterPage">
            <div class="Registerdiv">
                <p>Üyelik bilgileri</p>
                <table>
                    <tr>
                        <td>Adi Soyadi :</td>
                        <td>
                            <asp:TextBox CssClass="txtStyle" runat="server" ID="txtAdiSoyadi" />
                        </td>
                    </tr>
                    <tr>
                        <td>E-Mail :</td>
                        <td>
                            <asp:TextBox CssClass="txtStyle" runat="server" ID="txtEmail" />
                        </td>
                    </tr>
                    <tr>
                        <td>Şifre :</td>
                        <td>
                            <asp:TextBox CssClass="txtStyle" runat="server" ID="txtSifre" />
                        </td>
                    </tr>
                    <tr>
                        <td>Medeni Hali</td>
                        <td>
                            <table>
                                <tr>
                                    <td>
                                        <asp:RadioButtonList ID="rdListMedeniHali" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Selected="True" Text="Evli" />
                                            <asp:ListItem Text="Bekar" />
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button Text="Kaydet" CssClass="btnLoginGiris" ID="btnKaydet" runat="server" OnClick="btnKaydet_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
