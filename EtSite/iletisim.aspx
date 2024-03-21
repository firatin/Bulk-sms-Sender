<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="EtSite.iletisim1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .auto-style2 {
              width: 118px;
              height: 29px;
              font-weight: bold;
          }
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 118px;
        }
        .auto-style6 {
            width: 22px;
        }
        .auto-style7 {
            width: 118px;
            font-weight: bold;
        }
          .auto-style14 {
              width: 118px;
              font-weight: bold;
              height: 33px;
          }
          .auto-style15 {
              width: 22px;
              height: 33px;
          }
          .auto-style16 {
              height: 33px;
          }
          .auto-style17 {
              width: 118px;
              font-weight: bold;
              height: 35px;
          }
          .auto-style18 {
              width: 22px;
              height: 35px;
          }
          .auto-style19 {
              height: 35px;
          }
          </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cntSlider" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cnticeriküst" runat="server">                               
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cnticerikorta" runat="server">
        <h2 class="callOut_Heading"><strong>Bize Ulaşın</strong></h2>
    <div class="section_row clearfix">
				<div class="section_bg" style="color: #FF3300; font-size: larger; font-weight: bold">MERKEZ</div>
					<div class="section_inner">
    <table >
        <tr>
            <td class="auto-style2">Adres&nbsp; </td>
             <td>:</td>
            <td class="auto-style3">
                &nbsp;<asp:Label ID="lblAdres" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Tel</td>
             <td>:</td>
            <td class="auto-style3">
                <asp:Label ID="lblTel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Gsm</td>
             <td>:</td>
            <td class="auto-style3">
                <asp:Label ID="lblCep" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Fax</td>
             <td class="auto-style6">:</td>
            <td dir="ltr" rowspan="1" class="auto-style3">
                <asp:Label ID="lblFax" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">E-Mail</td>
             <td class="auto-style6">:</td>
            <td>
                <asp:Label ID="lblMail" runat="server"></asp:Label>
            </td>
        </tr>
         
        <tr>
            <td class="auto-style7">&nbsp;</td>
             <td class="auto-style6">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
         
        <tr>
            <td class="auto-style7" style="color: #FF3300; font-size: larger; font-weight: bold">ŞUBE</td>
             <td class="auto-style6">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
         
        <tr>
            <td class="auto-style7">Adres</td>
             <td class="auto-style6">:</td>
            <td>
                <asp:Label ID="lblAdres0" runat="server"></asp:Label>
            </td>
        </tr>
         
        <tr>
            <td class="auto-style7">Telefon</td>
             <td class="auto-style6">:</td>
            <td>
                <asp:Label ID="lblTel0" runat="server"></asp:Label>
            </td>
        </tr>
         
        <tr>
            <td class="auto-style7">Gsm</td>
             <td class="auto-style6">:</td>
            <td>
                <asp:Label ID="lblCep0" runat="server"></asp:Label>
            </td>
        </tr>
         
        <tr>
            <td class="auto-style7">Fax</td>
             <td class="auto-style6">:</td>
            <td>
                <asp:Label ID="lblFax0" runat="server"></asp:Label>
            </td>
        </tr>
         
        <tr>
            <td class="auto-style7">E-Mail</td>
             <td class="auto-style6">:</td>
            <td>
                <asp:Label ID="lblMail0" runat="server"></asp:Label>
            </td>
        </tr>
         
    </table><br />
    <table class="auto-style9">
         <tr>
             <td class="auto-style14">Ad ve Soyad</td>
             <td class="auto-style15">:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAd" ErrorMessage="*" ToolTip="Ad ve Soyadınızı giriniz" ValidationGroup="grbiletisim" ForeColor="Red"></asp:RequiredFieldValidator></td>
             <td class="auto-style16"><asp:TextBox ID="txtAd" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style14">E-mail</td>
             <td class="auto-style15">:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMail" ErrorMessage="*" ForeColor="Red" ToolTip="Mail adresinizi giriniz" ValidationGroup="grbiletisim"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMail" ErrorMessage="*" ForeColor="Red" ToolTip="Mail formatını kontrol ediniz." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="grbiletisim"></asp:RegularExpressionValidator>
             </td>
             <td class="auto-style16"> <asp:TextBox ID="txtMail" runat="server"></asp:TextBox> 
                                </td>
         </tr>
         <tr>
             <td class="auto-style14">Telefon</td>
             <td class="auto-style15">:<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTel" ErrorMessage="*" ForeColor="Red" ToolTip="Telefon numaranızı giriniz" ValidationGroup="grbiletisim"></asp:RequiredFieldValidator>
             </td>
             <td class="auto-style16">
        <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
            <td class="auto-style17" aria-orientation="horizontal" rowspan="0">Mesajınız<br />
                <br />
                <br />
             </td>
             <td class="auto-style18" style="text-align: justify">:<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMesaj" ErrorMessage="*" ForeColor="Red" ValidationGroup="grbiletisim"></asp:RequiredFieldValidator>
                            </td>
             <td style="text-align: justify" class="auto-style19">
                 <label for="mail" style="font-size: large; font-weight: bold; color: #FF0000">
                 <asp:TextBox ID="txtMesaj" runat="server" TextMode="MultiLine" Height="80px" Width="500px" MaxLength="250" ></asp:TextBox>
                 </label>
             </td>
         </tr>
         <tr>
             <td class="auto-style5">&nbsp;</td>
             <td class="auto-style6">&nbsp;</td>
             <td>
                     
                       <div class="callOut_Button">  <asp:Button ID="btnGonder" runat="server" Text="Mesajı Gönder" ValidationGroup="grbiletisim" OnClick="btnGonder_Click" Height="45px" Width="170px" BackColor="#003399" BorderStyle="None" ForeColor="White"/></td></div>
           
         </tr>
     </table>
                        </div></div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cnticerikalt" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cntAlt" runat="server">
</asp:Content>
