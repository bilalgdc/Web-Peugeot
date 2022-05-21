<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uyeGiris.aspx.cs" Inherits="_1057BilalGidiciWebPeugeot.uyeGiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Uye Girişi</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body class="girisbody">
       <form id="form1" runat="server">
           	<div class="header">
			<div class="headerLogo">
			</div>
			<div class="headerUst">
				<div class="sagUst">
					<ul class="sagUstIc">
						<li><a href="#" style="background-position: -175px -140px; width: 15px;"></a></li>
						<li><a href="#" style="background-position: -242px -70px;width: 13px;"></a></li>
						<li><a href="uyeGiris.aspx" style="background: none; width: 17px; margin-left: -8px;margin-right: 8px;"><img src="resimler/adam.png"></a></li>
					</ul>
				</div>
			</div>
			<div class="headerAlt">
				<ul class="menu">
					<li><a  href="modeller.aspx">MODELLER</a></li>
					<li><a href="#">TİCARİ ARAÇLAR</a></li>
					<li><a href="#">FİYATLAR VE KAMPANYALAR</a></li>
					<li><a href="#">PEUGEOT İKİNCİ EL</a></li>
					<li><a href="#">SATIŞ SONRASI HİZMETLERİ</a></li>
					<li><a href="#">BİZ SİZİ ARAYALIM</a></li>
				</ul>
			</div>

		</div>

             <div class="tablogiris">
             <table>
            <tr>
                <td>Kullanıcı Adı :</td>
                <td><asp:TextBox ID="TextBoxkullaniciadi" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Şifre :</td>
                <td><asp:TextBox ID="TextBoxkullanicisifre" runat="server"></asp:TextBox></td>
            </tr>
                 <tr>
                    <td>
                        
                         <asp:Button ID="ButtonGiris" runat="server" Text="Giriş Yap" OnClick="ButtonGiris_Click1" />                        
                         <asp:Button ID="girisgeri" runat="server" Text="Geri" OnClick="ButtonGeri_Click" />
                        
                        
                  </td>
                </tr>
               

        </table>
        </div>
    
       
    </form>
</body>
</html>
