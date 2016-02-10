<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrijavaZaKonkurs.aspx.cs" Inherits="StudentsDorm101.Views.Registration.PrijavaZaKonkurs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 502px;
            width: 480px;
        }
        .auto-style1 {
            width: 52%;
            height: 228px;
        }
        .auto-style3 {
            width: 101px;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            width: 54px;
        }
        .auto-style7 {
            width: 285px;
        }
        .auto-style8 {
            width: 235%;
        }
        .auto-style10 {
            width: 100%;
            height: 193px;
        }
        .auto-style11 {
            width: 117px;
            text-align: right;
        }
        .auto-style12 {
            width: 285px;
            height: 219px;
        }
        .auto-style13 {
            height: 219px;
        }
        .auto-style16 {
        }
        .auto-style17 {
        }
        .auto-style19 {
        }
        .auto-style20 {
            height: 23px;
        }
        .auto-style21 {
            width: 285px;
            height: 105px;
        }
        .auto-style22 {
            height: 105px;
        }
        .newStyle1 {
            height: 184px;
        }
        .auto-style23 {
            width: 117px;
            text-align: right;
            height: 37px;
        }
        .auto-style24 {
            height: 37px;
        }
        .auto-style25 {
            height: 23px;
            width: 128px;
        }
        .auto-style26 {
            text-align: left;
            width: 72px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
        <table class="auto-style1">
            <tr>
                <td class="auto-style21">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4" colspan="2">Lični podaci</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">Ime:</td>
                            <td class="auto-style5">
                                <asp:TextBox ID="_txtName" runat="server" OnTextChanged="_txtName_TextChanged1"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">Prezime:</td>
                            <td class="auto-style5">
                                <asp:TextBox ID="_txtSurname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">JMBG:</td>
                            <td class="auto-style5">
                                <asp:TextBox ID="_txtPersonalNumber" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">e-pošta:</td>
                            <td class="auto-style5">
                                <asp:TextBox ID="_txtEMail" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">Telefon:</td>
                            <td class="auto-style5">
                                <asp:TextBox ID="_txtPhoneNumber" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td class="auto-style5">
                                <table class="auto-style8">
                                    <tr>
                                        <td class="auto-style26">
                                            <asp:RadioButton ID="_rBtnFemale" runat="server" Text="Ž" />
                                            <asp:RadioButton ID="_rBtnMale" runat="server" Text="M" />
                                        </td>
                                        <td class="auto-style4">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style22">
                    <table class="newStyle1">
                        <tr>
                            <td colspan="2">Podaci studenta</td>
                        </tr>
                        <tr>
                            <td class="auto-style23">Broj indeksa:</td>
                            <td class="auto-style24">
                                <asp:TextBox ID="_txtIndexNumber" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">Godina studije:</td>
                            <td>
                                <asp:TextBox ID="_txtStudyYear" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">Godina upisa:</td>
                            <td>
                                <asp:TextBox ID="_txtEnrollYear" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">Fakultet:</td>
                            <td>
                                <asp:TextBox ID="_txtFacultyName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <table class="auto-style10">
                        <tr>
                            <td class="auto-style19" colspan="2">Podaci za konkurs</td>
                        </tr>
                        <tr>
                            <td class="auto-style16" colspan="2">Mesečni prihod:</td>
                        </tr>
                        <tr>
                            <td class="auto-style19" colspan="2">
                                <asp:FileUpload ID="_fileUploadIncomingDoc" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17" colspan="2">Potvrda fakulteta:</td>
                        </tr>
                        <tr>
                            <td class="auto-style20" colspan="2">
                                <asp:FileUpload ID="_fileUploadFacultyDoc" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style25">
                                Izaberi željeni dom:</td>
                            <td class="auto-style20">
                                <asp:DropDownList ID="_dropDownDormName" runat="server" Height="18px" style="text-align: center" Width="107px">
                                    <asp:ListItem>Paviljon1</asp:ListItem>
                                    <asp:ListItem>Paviljon2</asp:ListItem>
                                    <asp:ListItem>Paviljon3</asp:ListItem>
                                    <asp:ListItem>Paviljon4</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td>
                    <asp:Button ID="_btnWriteNewStudent" runat="server" OnClick="_btnWriteNewStudent_Click" style="text-align: center; margin-left: 143px" Text="Potvrdi" Width="101px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
