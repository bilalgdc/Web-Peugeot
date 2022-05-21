<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modelEkle.aspx.cs" Inherits="_1057BilalGidiciWebPeugeot.modelEkle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Model Ekle (Admins Panel)</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body class="modeleklebody">
    <form id="form1" runat="server">
        <div class="header">
			<div class="headerLogo"></div>
            <div class="modelekleyazi">Peugeot Model (Panel)</div>
            <asp:Button ID="Buttonanasayfamodelekle" runat="server" Text="Ana Sayfa" OnClick="Buttonanasayfamodelekle_Click" />
            <asp:Button ID="ButtonOnay" runat="server" Text="Onay" OnClick="ButtonOnay_Click" />
        </div>
          <div class="tablogiris">
             <table>
                 <tr>
                    <td>Araç Kategori</td>
                    <td>
                        <asp:DropDownList ID="DropDownListarackategori" runat="server"  Width="244px"></asp:DropDownList></td>
                </tr>

                 <tr>
                  <td>Model adı</td>
                    <td>
                        <asp:TextBox ID="TextBoxmodeladi" runat="server"  Width="244px"></asp:TextBox></td>
                </tr>

                  <tr>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" /></td>
                    <td>
                        <asp:Label ID="lblDurum" runat="server" Text=""></asp:Label></td>
                </tr>
                
               <tr>
                   <td> <h5 style="width:400px; position:absolute; margin-top:40px;">Kayıt İçin Sayfanın Sağ üst Köşesinde Onay Butonuna Tıklayınız.</h5></td>
               </tr>
                   



                 
        </table>
        </div>
    </form>
</body>
</html>
