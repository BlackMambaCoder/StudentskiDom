using StudentsDorm101.Data.Entities;
using StudentsDorm101.Data.Enumerations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StudentsDorm101;
using System.IO;
using StudentsDorm101.Data.Services;

namespace StudentsDorm101.Views.Registration
{

    public partial class PrijavaZaKonkurs : System.Web.UI.Page
    {
        protected System.Web.UI.HtmlControls.HtmlInputFile File1;
        protected System.Web.UI.HtmlControls.HtmlInputButton Submit1;

        //private RegistrationController ctrl = new RegistrationController();

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (IsPostBack)
            //{
            //    Boolean fileOK = false;
            //    String path = Server.MapPath("~/UploadedDocument/");
            //    if (this._fileUploadFacultyDoc.HasFile)
            //    {
            //        String fileExtension =
            //            System.IO.Path.GetExtension(this._fileUploadFacultyDoc.FileName).ToLower();
            //    }

            //    try
            //    {
            //        this._fileUploadFacultyDoc.PostedFile.SaveAs(path
            //            + this._fileUploadFacultyDoc.FileName);
            //        //Label1.Text = "File uploaded!";
            //    }
            //    catch (Exception ex)
            //    {
            //        //Label1.Text = "File could not be uploaded.";
            //    }

            //    //

            //    if (this._fileUploadIncomingDoc.HasFile)
            //    {
            //        String fileExtension =
            //            System.IO.Path.GetExtension(this._fileUploadIncomingDoc.FileName).ToLower();
            //    }

            //    try
            //    {
            //        this._fileUploadIncomingDoc.PostedFile.SaveAs(path
            //            + this._fileUploadIncomingDoc.FileName);
            //        //Label1.Text = "File uploaded!";
            //    }
            //    catch (Exception ex)
            //    {
            //        //Label1.Text = "File could not be uploaded.";
            //    }
            //}

            //else
            //{
            //    //Response.Write("get");
            //}
        }

        /// <summary>
        /// This button handler generates a new instance of REGISTRATION_STUDENT and initializes
        /// the attributes with data from the "PRIJAVA_ZA_KONKURS.ASPX" page. If the files were choosen,
        /// they would be saved on the server as normal documents and been later in STUDENT_SERVICE
        /// stored to the database. At the end the user would be redirected to see details about
        /// the information which he saved to the database
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void _btnWriteNewStudent_Click(object sender, EventArgs e)
        {
            RegistrationStudent student = new RegistrationStudent();

            student.personalNumber = Int32.Parse(this._txtPersonalNumber.Text);

            var studentCheck = new StudentService().GetStudentByPersonalNo(student.personalNumber);

            if (studentCheck.name != null)
            {
                Response.Write("Vec postoji student sa istim JMBG");
            }
            else
            {
                student.name = this._txtName.Text;
                student.surname = this._txtSurname.Text;
                if (this._rBtnMale.Checked)
                    student.gender = EGender.male;

                else
                    student.gender = EGender.female;

                student.email = this._txtEMail.Text;
                student.phoneNumber = Int32.Parse(this._txtPhoneNumber.Text);

                student.faculty = this._txtFacultyName.Text;
                student.enrollYear = Int32.Parse(this._txtEnrollYear.Text);
                student.studyYear = Int32.Parse(this._txtStudyYear.Text);
                student.indexNumber = Int32.Parse(this._txtIndexNumber.Text);

                switch (this._dropDownDormName.SelectedIndex)
                {
                    case 0:
                        student.dorm = EDorm.pavilion1;
                        break;

                    case 1:
                        student.dorm = EDorm.pavilion2;
                        break;

                    case 2:
                        student.dorm = EDorm.pavilion3;
                        break;

                    default:
                        student.dorm = EDorm.pavilion4;
                        break;
                }

                if (this._fileUploadIncomingDoc.HasFile)
                {
                    student.incomingDocumentName = Server.MapPath("") + "\\TemporaryData";
                    student.incomingDocumentName += "\\";
                    student.incomingDocumentName += this._fileUploadIncomingDoc.PostedFile.FileName;
                    this._fileUploadIncomingDoc.PostedFile.SaveAs(student.incomingDocumentName);
                }

                if (this._fileUploadFacultyDoc.HasFile)
                {
                    student.facultyDocumentName = Server.MapPath("") + "\\TemporaryData";
                    student.facultyDocumentName += "\\";
                    student.facultyDocumentName += this._fileUploadFacultyDoc.PostedFile.FileName;
                    this._fileUploadFacultyDoc.PostedFile.SaveAs(student.facultyDocumentName);
                }

                new StudentService().AddNewStudent(student);

                File.Delete(student.incomingDocumentName);
                File.Delete(student.facultyDocumentName);

                student.incomingDocumentName = null;
                student.facultyDocumentName = null;

                Response.Redirect("Registration/Details/" + student.id.ToString());
            }
        }

        protected void _txtName_TextChanged(object sender, EventArgs e)
        {
        }

        protected void _txtName_TextChanged1(object sender, EventArgs e)
        {

        }
    }
}