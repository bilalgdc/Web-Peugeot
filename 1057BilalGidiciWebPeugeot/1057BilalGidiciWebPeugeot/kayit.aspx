<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayit.aspx.cs" Inherits="_1057BilalGidiciWebPeugeot.kayit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Peugeot Kayıt</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body class="kayitbody">
    <form id="form1" runat="server">
      <div class="header">
			<div class="headerLogo">
			</div>
			<div class="headerUst">
                <div class="modelekleyazi">Peugeot Kayıt (Panel)</div>
				<div class="sagUst">
					<ul class="sagUstIc">
                        <asp:Panel ID="Panel2" runat="server">
                        <li><a href="#" style="background-position: -175px -140px; width: 15px;"></a></li>
						<li><a href="#" style="background-position: -242px -70px;width: 13px;"></a></li>
                       <li><a href="uyeGiris.aspx" style="background: none; width: 17px; margin-left: -8px;margin-right: 8px;"><img src="resimler/adam.png"></a></li>
                        </asp:Panel>
               			 
						
                       
					</ul>
                     <asp:Panel ID="Panel1" runat="server" Visible="false">           
                            <div class="yazi"><span>Hoşgeldin <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></span></div>          
                            <ul class="indexpanelul"> 
                                
                                <asp:Button ID="Buttonmodelekle" runat="server" Text="Model Ekle" OnClick="Buttonmodelekle_Click" />
                                <asp:Button ID="Buttonoturumkapat" runat="server" Text="Oturumu Kapat" OnClick="Buttonoturumkapat_Click" />       
                                <asp:Button ID="Buttongiriskaydol" runat="server" Text="Kayıt" OnClick="Buttongiriskaydol_Click" />
                                <asp:Button ID="Buttononecikan" runat="server" Text="Öne Çıkan" OnClick="Buttononecikan_Click" />
                            </ul>
                         
                        </asp:Panel>
				</div>
			</div>
			<div class="headerAlt">
				<ul class="menu">
					<li><a  href="modeller.aspx">MODELLER</a></li>
					<li><a href="#">TİCARİ ARAÇLAR</a></li>
					<li><a href="#">FİYATLAR VE KAMPANYALAR</a></li>
					<li><a href="#">PEUGEOT İKİNCİ EL</a></li>
					<li><a href="#">SATIŞ SONRASI HİZMETLERİ</a></li>
					<li><a href="bizarayalim.aspx">BİZ SİZİ ARAYALIM</a></li>
				</ul>
			</div>

		</div>
          <div class="tablogiris">
             <table>
            <tr>
                <td>Kullanıcı Adı :</td>
                <td><asp:TextBox ID="TextBoxkullaniciadi" runat="server" placeholder="kullanıcı adı" ></asp:TextBox></td>
            </tr>

             <tr>
                <td>Eposta :</td>
                <td><asp:TextBox ID="TextBoxEposta" runat="server" placeholder="xxx@xxx.com"></asp:TextBox></td>
            </tr>
                 
            <tr>
                <td>Şifre :</td>
                <td><asp:TextBox ID="TextBoxkullanicisifre" runat="server" placeholder="Şifre"></asp:TextBox></td>
            </tr>
              <tr>
                <td>Tel Numarası :</td>
                <td><asp:TextBox ID="TextBoxtelNo" runat="server" placeholder="0(xxx)xxx xx xx"></asp:TextBox></td>
            </tr>
                 <tr>
                    <td>
                         <asp:Button ID="ButtonKaydol" runat="server" Text="Kaydol" OnClick="ButtonKaydol_Click"  />
                         <asp:Button ID="ButtonGeri" runat="server" Text="Anasayfa" OnClick="ButtonGeri_Click" />                     
                  </td>
                </tr>
               

        </table>
              <asp:Label ID="Labeluyari" runat="server" Text=""></asp:Label>
        </div>


		
    </form>
</body>
</html>
