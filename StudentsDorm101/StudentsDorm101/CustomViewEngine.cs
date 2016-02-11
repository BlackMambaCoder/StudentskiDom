using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StudentsDorm101
{
    public class CustomViewEngine : WebFormViewEngine
    {
        public CustomViewEngine()
        {
            var viewLocations = new[] {  
            "{0}.aspx",  
            "{0}.ascx",  
            "~/Views/{0}.aspx",  
            "~/Views/{0}.ascx",  
            "~/Views/Account/{0}.aspx",  
            "~/Views/Account/{0}.ascx", 
            "~/Views/Administration/{0}.aspx",  
            "~/Views/Administration/{0}.ascx", 
            "~/Views/Home/{0}.aspx",  
            "~/Views/Home/{0}.ascx", 
            "~/Views/Shared/{0}.aspx",  
            "~/Views/Shared/{0}.ascx",
            "~/Views/Registration/{0}.aspx",  
            "~/Views/Registration/{0}.ascx"
            // etc
        };

            this.PartialViewLocationFormats = viewLocations;
            this.ViewLocationFormats = viewLocations;
        }
    }
}