using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ASPMVC4
{
    public class CustomViewEngine : WebFormViewEngine
    {
        public CustomViewEngine()
        {
            var viewLocations = new[] {  
            "~/Views/{0}.aspx",  
            "~/Views/{0}.ascx",  
            "~/Views/User/{0}.aspx",  
            "~/Views/User/{0}.ascx", 
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