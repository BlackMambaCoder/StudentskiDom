using MongoDB.Bson;
using StudentsDorm101.Data.Entities;
using StudentsDorm101.Data.Services;
using StudentsDorm101.Views.Registration;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using StudentsDorm101.Data.Enumerations;

namespace StudentsDorm101.Controllers
{
    public class RegistrationController : Controller
    {
        //
        // GET: /Registration/

        public ActionResult Index()
        {
            IEnumerable<RegistrationStudent> students = new StudentService().GetAll();
            return View(students);
        }

        //
        // GET: /Registration/Details
        public ActionResult Details(string id)
        {
            RegistrationStudent student = new StudentService().GetStudentById(id);

            if (student.name == null)
            {
                return View("NotFound");
            }

            else
            {
                return View(student);
            }
        }

        //
        // GET: /Registration/Registration
        public ActionResult Registration()
        {
            RegistrationStudent student = new RegistrationStudent();

            //IEnumerable<string> Gender = new string[2];

            string[] Gender = { "female", "male" };
            string[] Dorm = { "pavilion1", "pavilion2", "pavilion3", "pavilion4" };

            ViewData["gender"] = new SelectList(Gender);
            ViewData["dorm"] = new SelectList(Dorm);

            //List<SelectListItem> items = new List<SelectListItem>();

            //items.Add(new SelectListItem { Text = "Paviljon 1", Value = "0" , Selected = true });
            //items.Add(new SelectListItem { Text = "Paviljon 2", Value = "1" });
            //items.Add(new SelectListItem { Text = "Paviljon 3", Value = "2" });
            //items.Add(new SelectListItem { Text = "Paviljon 4", Value = "3" });

            //ViewBag.Dorm = items;

            return View(student);
        }

        //
        // POST: /Registration/Registration
        [HttpPost]
        public ActionResult Registration(HttpPostedFileBase incomingDoc, HttpPostedFileBase facultyDoc)
        {
            RegistrationStudent student = new RegistrationStudent();

            UpdateModel(student);

            if (incomingDoc != null && incomingDoc.ContentLength > 0)
            {
                var fileName = Path.GetFileName(incomingDoc.FileName);
                student.incomingDocumentName = Path.Combine(Server.MapPath("\\TemporaryData"), fileName);
                incomingDoc.SaveAs(student.incomingDocumentName);
            }

            if (facultyDoc != null && facultyDoc.ContentLength > 0)
            {
                var fileName = Path.GetFileName(facultyDoc.FileName);
                student.facultyDocumentName = Path.Combine(Server.MapPath("\\TemporaryData"), fileName);
                facultyDoc.SaveAs(student.facultyDocumentName);
            }

            bool success = true;

            if (!new StudentService().AddNewStudent(student))
                success = false;

            System.IO.File.Delete(Path.Combine(Server.MapPath("\\TemporaryData"), student.incomingDocumentName));
            System.IO.File.Delete(Path.Combine(Server.MapPath("\\TemporaryData"), student.facultyDocumentName));

            //if (success)
                return RedirectToAction("Details", new { id = student.id });

            //else
            //    return RedirectToAction("StudentExists");
        }
    }
}
