using MongoDB.Bson;
using StudentsDorm101.Data;
using StudentsDorm101.Data.Entities;
using StudentsDorm101.Data.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StudentsDorm101.Controllers
{
    public class AdministrationController : Controller
    {
        //
        // GET: /Administration/

        public ActionResult Index()
        {
            IEnumerable<RegistrationStudent> students = new StudentService().GetAll();

            return View(students);
        }

        //
        // GET: /Administration/GetStudents
        public ActionResult GetStudents()
        {
            IEnumerable<RegistrationStudent> students = new StudentService().GetAll();

            return View(students);
        }

        //
        // GET: /Administration/PrijavaZaKonkurs
        public void PrijavaZaKonkurs()
        {
            Response.Redirect("PrijavaZaKonkurs.aspx");
        }

        //
        // GET: /Administration/Details
        public ActionResult Details(string id)
        {
            RegistrationStudent student = new StudentService().GetStudentById(id);
            Session["registrationStudent"] = student;
            return View(student);
        }

        //
        // GET: /Administration/Save2List
        public ActionResult Save2List()
        {
            RegistrationStudent rStudent = (RegistrationStudent)Session["registrationStudent"];
            ContestStudent cStudent = StudentsDorm101.Data.Converter.Registration2ContestStudent(rStudent);

            return View(cStudent);
        }

        //
        // POST: /Administration/Save2List
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Save2List(FormCollection formValues)
        {
            ContestStudent student = new ContestStudent();

            UpdateModel(student);

            student.SetCredit();

            new ContestStudentService().UploadContestStudent(student);

            ObjectId id = student.id;

            new StudentService().RemoveStudent(id);

            return RedirectToAction("ContestDetails", new { id = student.id });
        }

        //
        // GET: /Administration/GetFile
        public void GetFile(string id)
        {
            var stream = new StudentService().GetFile(id);

            var bytes = new byte[stream.Length];
            stream.Read(bytes, 0, (int)stream.Length);

            if (bytes != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", bytes.Length.ToString());
                Response.BinaryWrite(bytes);
            }
        }


        //
        // GET: /Administration/ContestDetails
        public ActionResult ContestDetails(string id)
        {
            ContestStudent student = new ContestStudentService().GetContestStudent(id);

            return View(student);
        }

        //
        // GET: /Administration/FinalList
        public ActionResult FinalList()
        {
            IEnumerable<ContestStudent> students = new ContestStudentService().GetContestStudentsArrangedByCredits();

            return View(students);
        }

        //
        // GET: /Administration/FinalListMoveIn
        public ActionResult FinalListMoveIn()
        {
            IEnumerable<ContestStudent> students = new ContestStudentService().GetContestStudents(120);

            return View();
        }
    }
}
