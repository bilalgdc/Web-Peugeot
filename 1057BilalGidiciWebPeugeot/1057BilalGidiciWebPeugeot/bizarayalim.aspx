<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bizarayalim.aspx.cs" Inherits="_1057BilalGidiciWebPeugeot.bizarayalim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Biz Sizi Arayalım</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body class="bizarayalimbody">
    <form id="form1" runat="server">
          
        <div class="header">
			<div class="headerLogo">
			</div>
			<div class="headerUst">
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
                                <asp:Button ID="Buttonanasayfa" runat="server" Text="Ana Sayfa" OnClick="Buttonanasayfa_Click" />                  
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
                    <td>
                        <asp:DropDownList ID="DropDownListaracmodel" runat="server"  Width="244px"></asp:DropDownList></td>
                </tr>

                 <tr>
                    <td>
                        <asp:TextBox ID="TextBoxAdinizSoyadiniz"  Placeholder="Adınız ve Soyadınız" runat="server"  Width="240px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>
                        <asp:TextBox ID="TextBoxeposta" Placeholder="Eposta" runat="server"  Width="240px"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>
                        <asp:TextBox ID="TextBoxTelefon"  Placeholder="0(---)--- -- --" runat="server"  Width="240px"></asp:TextBox></td>
                </tr>
                 <tr>
                     <td>
                         <asp:Button ID="Buttononay" runat="server" Text="Onay" OnClick="Buttononay_Click" />
                     </td>
                 </tr>
                 

    </form>
</body>
</html>
