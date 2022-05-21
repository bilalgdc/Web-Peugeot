<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="_1057BilalGidiciWebPeugeot.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Peugeot | Motion & Emotion</title>	
	<link rel="stylesheet" type="text/css" href="style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="java.js"></script>
    <link rel="shortcut icon"  href="resimler/car.png">
</head>
<body>
    <form id="form1" runat="server">
<div class="main">

		<!---------------------------header--------------------bas ------------>
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
		<!-----------heaader--------------------sON ------------>


		<!-----------SLİDER--------------------Baş------------------------------------------ ------------>
		<div class="slider">
		<img src="resimler/slider1.png" class="parla" name="resim" alt="HondaFC5...">
		<img src="resimler/slider2.jpg" class="parla" name="resim" alt="HondaFC5...">
		<img src="resimler/slider3.png" class="parla" name="resim" alt="HondaFC5...">
		<img src="resimler/slider5.png" class="parla" name="resim" alt="HondaFC5...">
		<img src="resimler/slider6.png" class="parla" name="resim" alt="HondaFC5...">
		<div class="btnGeri" onclick="geri()" ></div>
		<div class="btnIleri" onclick="ileri()" ></div>
     </div>
     <div class="butonlar">
     <a class="buton"  onclick="slideGoster(1)"></a>
     <a class="buton"  onclick="slideGoster(2)"></a>
     <a class="buton"  onclick="slideGoster(3)"></a>
     <a class="buton"  onclick="slideGoster(4)"></a>
     <a class="buton"  onclick="slideGoster(5)"></a></div>


		<script type="text/javascript">

		    var slideNo = 1;
		    slideGoster(1)
		    function slideGoster(n) {
		        slideNo = n;
		        var diziResimler = document.getElementsByName("resim");
		        var dizibutonlar = document.getElementsByClassName("buton");
		        var adetResim = diziResimler.length;
		        if (n < 1) { slideNo = adetResim; }
		        if (n > adetResim) { slideNo = 1; }
		        for (var i = 0; i < adetResim; i++) {
		            diziResimler[i].style.display = "none";
		            dizibutonlar[i].style.background = "white";
		            dizibutonlar[i].style.opacity = "0.7";
		        }
		        diziResimler[slideNo - 1].style.display = "block";
		        dizibutonlar[slideNo - 1].style.background = "darkgrey";
		        dizibutonlar[slideNo - 1].style.opacity = "1";

		    }

		    function geri() {
		        slideNo--;
		        slideGoster(slideNo);
		        // body...
		    }
		    function ileri() {
		        slideNo++;
		        slideGoster(slideNo);
		    }

		    /*------------------ Web Başlık ------------------------*/
		    var title = document.title;
		    var alttitle = "Peugeot'un Seni Bekliyor .....";
		    window.onblur = function () { document.title = alttitle; };
		    window.onfocus = function () { document.title = title; };
		    /*-----------------------------------------------------*/
		</script>


		<div class="sliderAlti">
			<div class="alt1"><a href="#">Tüm Modeller</a></div>
			<div class="alt1"><a href="#">208</a></div>
			<div class="alt1"><a href="#">2008</a></div>
			<div class="alt1"><a href="#">301</a></div>
			<div class="alt1"><a href="#">308 Yeni</a></div>
			<div class="alt1"><a href="#">3008 SUV</a></div>
			<div class="alt1"><a href="#">508</a></div>
			<div class="alt1"><a href="#">5008 SUV</a></div>
			<div class="alt1"><a href="#">Expert</a></div>
			<div class="alt1"><a href="#">Traveller</a></div>
		</div>


             <div class="slider2">
             	<img src="resimler/slider22.jpg">
             	<button class="slider22buton">Yeni 508'i Keşfet</button>
             </div> 

             <div class="slider3">
             	<img src="resimler/slider33.png">
             	<button class="slider33buton">Keşfet</button>
             </div>

             <div class="dahafazlayazisi"><h2>DAHA FAZLASINI KEŞFEDİN</h2></div>

             <div class="daha">
             	<img src="resimler/daha1.jpg">
             	<img src="resimler/daha2.jpg">
             	<img src="resimler/daha3.jpg">
             	<button style="font-size: 10px; font-family: arial;">PEUGEOT ASSISTANCE HAKKINDA BİLGİ ALIN</button>
             	<button  style="font-size: 10px;font-family: arial;" >PEUGEOT KREDİ HAKKINDA BİLGİ ALIN</button>
             	<button style="font-size: 10px;font-family: arial;">FİKS MENÜLER HAKKINDA BİLGİ ALIN</button>	
             </div>

             <div class="oneyazisi"><h2>ÖNE ÇIKAN MODELLER</h2></div>

             <div class="araclaranadivi" style="height:450px;">
                <asp:Repeater ID="Repeateronecikan" runat="server">
                    <ItemTemplate>
                        <div class="arac1">
                            <div class="isim"><%#Eval("modelAdi")%></div>  
                            <div class="resim"><img src="resimler/<%#Eval("resim") %>" alt="Alternate Text" /></div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
    <!----------- ----------------------------------------------------------------------------------------------->
              <div class="haber">
             	<img src="resimler/slider44.png">
             	<button class="slider44buton">Keşfet</button>             	
             </div>

             <div class="servisyazisi"><h2>SERVİS RANDEVUSU ALIN</h2></div>

             <div class="servisresim">
             	<img src="resimler/slider55.png">
             	<button class="slider55buton">Keşfet</button>             	
             </div>



	

             <!-----------SLİDER--------------------sON ------------>

             <div class="footer">
             	<div class="footeric">
             		<p class="footerbaslik">YARDIM</p>
                    <hr>
             		<li><a href="#">İLETİŞİM</a></li>
             		<li><a href="#">SIKÇA SORULAN SORULAR</a></li>
             		<li><a href="#">PEUGEOT ASSISTANCE</a></li>
             		<li><a href="#">BAYİ ARAMA</a></li>
             		
             	</div>
             	<div class="footeric">
             		<p class="footerbaslik">PEUGEOT MODELLERİ</p>
                    <hr>
             		 <li><a href="#">HATCHBACK OTOMOBİLLER</a></li>
             		<li><a href="#">SUV OTOMOBİLLER</a></li>
             		<li><a href="#">SEDAN OTOMOBİLLER</a></li>
             		<li><a href="#">PEUGEOT SPOR OTOMOBİLLER</a></li>
             		<li><a href="#">TİCARİ ARAÇLAR</a></li>
             	</div>
             	<div class="footeric">
             		<p class="footerbaslik">MÜŞTERİ İLE İLETİŞİME GEÇİN.</p>
                    <hr>
             		<li><a href="#">0 (216) 579 94 44</a></li>

             		<div class="footersaglogo">
             			<div class="saglogoresim"><a href="https://google.com"><img src="resimler/face.png"></a></div>
             			<div class="saglogoresim"><a href="https://google.com"><img src="resimler/twitter.png"></a></div>
             			<div class="saglogoresim"><a href="https://google.com"><img src="resimler/youtube.png"></a></div>
             			<div class="saglogoresim"><a href="https://google.com"><img src="resimler/instagram.png"></a></div>            			
             		</div>
             	</div>

             	<button class="footersol"><font size="4px">PEUGEOT TEKNOLOJİLERİ</font></button>
             	<button class="footersag"><font size="4px">Satış Sonrası Hizmetleri</font></button>
             	<button class="footeralt"><font size="4px">Site Haritası</font></button>
             </div>

                 <div class="footerfooter">
                    <ul>
                     	<li><a href="#">YASAL BİLGİLER</a></li>
                     	<li><a href="#">KVK KORUNMASI VE İŞLENMESİ POLİTİKASI</a></li>
                     	<li><a href="#">BİLGİ TOPLUMU HİZMETLERİ</a></li>
                     	<li style="border:none"><a href="#">İNSAN KAYNAKLARI</a></li>
                    </ul>
                 </div> 
	</div>		
    </form>
</body>
</html>
