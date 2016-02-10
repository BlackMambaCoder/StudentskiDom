﻿using MongoDB.Bson;
using StudentsDorm101.Data.Entities;
using StudentsDorm101.Data.Services;
using StudentsDorm101.Views.Registration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

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
        // GET: /Registration/Create
        public ActionResult Create()
        {
            RegistrationStudent student = new RegistrationStudent();

            return View(student);
        }

        //
        // POST: /Registration/Create
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(RegistrationStudent student, PrijavaZaKonkurs form)
        {
            //RegistrationStudent student = new RegistrationStudent();

            UpdateModel(student);

            //if (form._fileUploadIncomingDoc.HasFile)
            //{
            //    student.incomingDocumentName = Server.MapPath("") + "\\TemporaryData";
            //    student.incomingDocumentName += "\\";
            //    student.incomingDocumentName += form._fileUploadIncomingDoc.PostedFile.FileName;
            //    form._fileUploadIncomingDoc.PostedFile.SaveAs(student.incomingDocumentName);
            //}

            //if (form._fileUploadFacultyDoc.HasFile)
            //{
            //    student.facultyDocumentName = Server.MapPath("") + "\\TemporaryData";
            //    student.facultyDocumentName += "\\";
            //    student.facultyDocumentName += form._fileUploadFacultyDoc.PostedFile.FileName;
            //    form._fileUploadFacultyDoc.PostedFile.SaveAs(student.facultyDocumentName);
            //}

            new StudentService().AddNewStudent(student);

            return RedirectToAction("Details", new { id = student.id });
        }

    }
}
