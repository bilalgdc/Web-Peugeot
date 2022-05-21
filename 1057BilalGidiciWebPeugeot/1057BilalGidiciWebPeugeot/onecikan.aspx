<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="onecikan.aspx.cs" Inherits="_1057BilalGidiciWebPeugeot.onecikan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Öne Çıkan</title>
    <script src="java.js"></script>
    <link href="style.css" rel="stylesheet" />
</head>
<body class="onecikanbody">
    <form id="form1" runat="server">
       <div class="header">
			<div class="headerLogo"></div>
            <div class="modelekleyazi">Peugeot Öne Çıkan (Panel)</div>
           <asp:Button ID="Buttononecikananasayfa" runat="server" Text="Ana Sayfa" OnClick="Buttononecikananasayfa_Click" />
           <asp:Button ID="Buttononecikanonay" runat="server" Text="Onay" OnClick="Buttononecikanonay_Click" />
        </div>
          <div class="tablogiris">
             <table>
                 <tr>
                  <td>Model Kategori</td>
                    <td>
                        <asp:DropDownList ID="DropDownListaracmodel" runat="server" Width="244px"></asp:DropDownList>
                        </td>
                </tr>

                  <tr>
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
