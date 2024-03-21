<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Uyelik.aspx.cs" Inherits="EtSite.Uyelik" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            width: 100%;

        }

        .auto-style3 {
            width: 18px;
        }

        .auto-style4 {
            width: 155px;
            height: 25px;
        }

        .auto-style5 {
            width: 18px;
            height: 25px;
        }

        .auto-style6 {
            height: 25px;
        }

        .auto-style10 {
            width: 155px;
            height: 27px;
        }

        .auto-style11 {
            width: 18px;
            height: 27px;
        }

        .auto-style12 {
            height: 27px;
        }

        .auto-style13 {
            width: 155px;
            height: 29px;
        }

        .auto-style14 {
            width: 18px;
            height: 29px;
        }

        .auto-style15 {
            height: 29px;
        }
        .auto-style19 {
            width: 155px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cntSlider" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cnticeriküst" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cnticerikorta" runat="server">
    <h2 class="callOut_Heading"><strong>Üyelik Başvurunuzu Yapın</strong></h2><br />
     <table class="auto-style1">
     
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">Firma/Yetkili Adı</td>
            <td class="auto-style3">:</td>
            <td>
                        <asp:TextBox ID="txtAd" runat="server" ValidationGroup="UyeOl" MaxLength="100" TabIndex="1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAd" ErrorMessage="*İsim Giriniz" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">E-Mail</td>
            <td class="auto-style3">:</td>
            <td>
                <asp:TextBox ID="txbmail" runat="server" MaxLength="50" TextMode="Email" TabIndex="2"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txbmail" ErrorMessage="* E-Mail Adresi Giriniz" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;<td class="auto-style19">Şifre<td class="auto-style3">:</td>
            <td>
                <asp:TextBox ID="txbsifre" runat="server" TextMode="Password" MaxLength="50" TabIndex="3"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txbsifre" ErrorMessage="*Şifre Giriniz" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;<td class="auto-style19">Şifre Tekrar<td class="auto-style3">:</td>
        
            <td>
                <asp:TextBox ID="txtsifret" runat="server" TextMode="Password" ValidationGroup="UyeOl" MaxLength="50" TabIndex="4"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txbsifre" ControlToValidate="txtsifret" ErrorMessage="*Sifreniz Aynı Değil" ForeColor="Red"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtsifret" ErrorMessage="*Şifrenizin Tekrarını Giriniz" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;<td class="auto-style19">Şehir<td class="auto-style3">:</td>
        
            <td>
                <asp:TextBox ID="txtSehir" runat="server" MaxLength="50" TabIndex="5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;<td class="auto-style10">Cep Telefonu<td class="auto-style11">:</td>
        
            <td class="auto-style12">
                <asp:TextBox ID="txtGsm" runat="server" CssClass="text" TabIndex="6" ValidationGroup="UyeOl" ></asp:TextBox>
                <asp:MaskedEditExtender ID="txtGsm_MaskedEditExtender" runat="server" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" Mask="(999)9999999" MaskType="Number" TargetControlID="txtGsm">
                </asp:MaskedEditExtender>
                Örnek : 5xx 1234567<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtGsm" ErrorMessage="*Size Ulaşabileceğimiz Bir GSM Numarası Giriniz" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
            <tr>
                <td class="auto-style4">&nbsp;<td class="auto-style4">İş Telefonu<td class="auto-style5">:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtTel" runat="server" CssClass="text" TabIndex="7" ValidationGroup="UyeOl"></asp:TextBox>
                    <asp:MaskedEditExtender ID="txtTel_MaskedEditExtender" runat="server" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" TargetControlID="txtTel" Mask="(999)9999999" MaskType="Number">
                    </asp:MaskedEditExtender>
                </td>
            </tr>
            
           <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">
                                            <asp:Button ID="btnUyeOl" runat="server" class="midnightblue" Height="43px" Text="Başvuruyu Tamamla" Width="165px" OnClick="btnUyeOl_Click" BackColor="#003399" BorderStyle="None" ForeColor="White" TabIndex="8" />

                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="UyeOl" />
                </td>
            </tr>
               </caption>
    </table>
    
       
     <table class="auto-style1">
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <tr>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>

                        <br />
                        <br />
                    </td>
                </tr>
            </tr>
        
    </table> 
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cnticerikalt" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cntAlt" runat="server">
</asp:Content>
