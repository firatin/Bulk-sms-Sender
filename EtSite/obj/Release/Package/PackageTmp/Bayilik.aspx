<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Bayilik.aspx.cs" Inherits="EtSite.Bayilik" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 254px;
        }
        .auto-style2 {
            width: 117px;
        }
        .auto-style3 {
            width: 117px;
            height: 25px;
        }
        .auto-style4 {
            width: 254px;
            height: 25px;
        }
        .auto-style5 {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cntSlider" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cnticeriküst" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cnticerikorta" runat="server">
    <h2 class="callOut_Heading"><strong>Bayilik Başvurunuzu Yapın</strong></h2>
    <table class="sortable">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="lblAd" runat="server" Text="Firma / Yetkili Adı : "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txbAd" runat="server" MaxLength="100" ValidationGroup="bayiuye" TabIndex="1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txbAd" ErrorMessage="*Firma/Yetkili Adı Giriniz" ForeColor="Red" ValidationGroup="bayiuye"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="lblEmail" runat="server" Text="E-Mail : "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txbEmail" runat="server" MaxLength="50" TextMode="Email" ValidationGroup="bayiuye" TabIndex="2"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txbEmail" ErrorMessage="*E-Mail Giriniz" ForeColor="Red" ValidationGroup="bayiuye"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="lblEmail0" runat="server" Text="Şifre : "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txbPwd" runat="server" MaxLength="50" TextMode="Password" ValidationGroup="bayiuye" TabIndex="3"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txbPwd" ErrorMessage="*Sifrenizi Giriniz" ForeColor="Red" ValidationGroup="bayiuye"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="lblCep" runat="server" Text="Cep Telefonu : "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtGsm" runat="server" CssClass="text" TabIndex="4" ValidationGroup="bayiuye"></asp:TextBox>
                <asp:MaskedEditExtender ID="txtGsm_MaskedEditExtender" runat="server" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" Mask="(999)9999999" MaskType="Number" TargetControlID="txtGsm">
                </asp:MaskedEditExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtGsm" ErrorMessage="*Sizinle İletişim Kurabilmemiz İçin Telefon Giriniz" ForeColor="Red" ValidationGroup="bayiuye"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="lblİs" runat="server" Text="İş Telefonu : "></asp:Label>
            </td>
            <td>
                  <asp:TextBox ID="txtTel" runat="server" CssClass="text" TabIndex="5" ValidationGroup="bayiuye"></asp:TextBox>
                    <asp:MaskedEditExtender ID="txtTel_MaskedEditExtender" runat="server" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" TargetControlID="txtTel" Mask="(999)9999999" MaskType="Number">
                    </asp:MaskedEditExtender>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="lblweb" runat="server" Text="Web Adresi : "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txbweb" runat="server" MaxLength="100" ValidationGroup="bayiuye" TabIndex="6"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>
               
                    <asp:Button ID="btnGonder" runat="server" Height="43px" Text="Başvuruyu Tamamla" Width="165px" OnClick="btnGonder_Click" ValidationGroup="bayiuye" BackColor="#003399" BorderStyle="None" ForeColor="White" TabIndex="7" />
              
            </td>
        </tr>
    </table>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cnticerikalt" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cntAlt" runat="server">
</asp:Content>
