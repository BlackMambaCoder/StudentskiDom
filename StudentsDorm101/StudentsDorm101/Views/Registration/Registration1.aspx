<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<StudentsDorm101.Data.Entities.RegistrationStudent>" %>

<script runat="server">

    protected void _btnRegistry_Click(object sender, EventArgs e)
    {
        StudentsDorm101.Data.Entities.RegistrationStudent student = new StudentsDorm101.Data.Entities.RegistrationStudent();
        
        Model.name = this._txtName.Text;
        Model.surname = this._txtSurname.Text;
        Model.personalNumber = Int32.Parse(this._txtPersonalNo.Text);
        Model.email = this._txtEMail.Text;
        Model.phoneNumber = Int32.Parse(this._txtPhoneNo.Text);

        if (this._dropDownGender.SelectedIndex == 0)
            Model.gender = StudentsDorm101.Data.Enumerations.EGender.female;

        else
            Model.gender = StudentsDorm101.Data.Enumerations.EGender.male;

        Model.indexNumber = Int32.Parse(this._txtIndex.Text);
        Model.studyYear = Int32.Parse(this._txtStudyYear.Text);
        Model.enrollYear = Int32.Parse(this._txtEnrollYear.Text);
        Model.faculty = this._txtFaculty.Text;

        if (this._fileUploadIncome.HasFile)
        {
            Model.incomingDocumentName = Server.MapPath("") + "\\TemporaryData";
            Model.incomingDocumentName += "\\";
            Model.incomingDocumentName += this._fileUploadIncome.PostedFile.FileName;
            this._fileUploadIncome.PostedFile.SaveAs(Model.incomingDocumentName);
        }

        if (this._fileUploadFaculty.HasFile)
        {
            Model.facultyDocumentName = Server.MapPath("") + "\\TemporaryData";
            Model.facultyDocumentName += "\\";
            Model.facultyDocumentName += this._fileUploadFaculty.PostedFile.FileName;
            this._fileUploadFaculty.PostedFile.SaveAs(Model.facultyDocumentName);
        }

        switch (this._dropDownDorm.SelectedIndex)
        {
            case 0:
                Model.dorm = StudentsDorm101.Data.Enumerations.EDorm.pavilion1;
                break;

            case 1:
                Model.dorm = StudentsDorm101.Data.Enumerations.EDorm.pavilion2;
                break;

            case 2:
                Model.dorm = StudentsDorm101.Data.Enumerations.EDorm.pavilion3;
                break;

            default:
                Model.dorm = StudentsDorm101.Data.Enumerations.EDorm.pavilion4;
                break;
        }
        
        Session["student"] = Model;

        Response.Redirect("Registration");
    }
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Registration
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">

<h2>Registration</h2>
    <fieldset>
        <legend>Prijava</legend>
        <table style="width: 52%; height: 195px">
            <tr>
                <td style="height: 154px; width: 237px">
                    <table style="width: 97%; height: 176px">
                        <tr>
                            <th colspan="2">Lični podaci</th>
                        </tr>
                        <tr>
                            <td style="width: 183px">Ime:</td>
                            <td>
                                <asp:TextBox ID="_txtName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 183px">Prezime:</td>
                            <td>
                                <asp:TextBox ID="_txtSurname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 183px">JMBG:</td>
                            <td>
                                <asp:TextBox ID="_txtPersonalNo" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 183px">e-Pošta:</td>
                            <td>
                                <asp:TextBox ID="_txtEMail" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 183px">Telefon:</td>
                            <td>
                                <asp:TextBox ID="_txtPhoneNo" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 183px; height: 23px;">Pol:</td>
                            <td style="height: 23px; ">
                                <asp:DropDownList ID="_dropDownGender" runat="server">
                                    <asp:ListItem Value="_female">Ž</asp:ListItem>
                                    <asp:ListItem Value="male">M</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="height: 154px">
                    <table style="width: 99%">
                        <tr>
                            <th colspan="2">Podaci o studentu:</th>
                        </tr>
                        <tr>
                            <td style="width: 271px; text-align: right;">Broj indeksa:</td>
                            <td style="width: 304px">
                                <asp:TextBox ID="_txtIndex" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 271px; text-align: right;">Godina studije:</td>
                            <td style="width: 304px">
                                <asp:TextBox ID="_txtStudyYear" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 271px; text-align: right;">Godina upisa:</td>
                            <td style="width: 304px">
                                <asp:TextBox ID="_txtEnrollYear" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 271px; text-align: right;">Fakultet:</td>
                            <td style="width: 304px">
                                <asp:TextBox ID="_txtFaculty" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 271px; text-align: right; height: 93px;"></td>
                            <td style="width: 304px; height: 93px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 271px; text-align: right;">&nbsp;</td>
                            <td style="width: 304px">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table style="width: 74%">
                        <tr>
                            <th style="width: 202px; text-align: right">Podaci za konkurs</th>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 202px; text-align: right">Dokument mesečnog prihoda:</td>
                            <td>
                                <asp:FileUpload ID="_fileUploadIncome" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 202px; text-align: right">Potvrda sa fakultet:</td>
                            <td>
                                <asp:FileUpload ID="_fileUploadFaculty" runat="server"  />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 202px; text-align: right">Željeni dom:</td>
                            <td>
                                <asp:DropDownList ID="_dropDownDorm" runat="server">
                                    <asp:ListItem Value="_dorm1">Paviljon 1</asp:ListItem>
                                    <asp:ListItem Value="_dorm2">Paviljon 2</asp:ListItem>
                                    <asp:ListItem Value="_dorm3">Paviljon 3</asp:ListItem>
                                    <asp:ListItem Value="_dorm4">Paviljon 4</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="_btnRegistry" runat="server" Text="Sačuvaj" OnClick="_btnRegistry_Click" />
                </td>
            </tr>
        </table>

        <% using (Html.BeginForm("FileUpload", "Registration", FormMethod.Post, new { enctype = "multipart/form-data" })) { %>

        <input type="file" name="file" />
        <input type="submit" value="OK" />

        <% } %>
    </fieldset>

    </form>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
