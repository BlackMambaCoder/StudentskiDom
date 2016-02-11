<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<StudentsDorm101.Data.Entities.RegistrationStudent>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>RegistrationDetails</title>
</head>
<body>
    <fieldset>
        <legend>RegistrationStudent</legend>
    
        <div class="display-label">
        <%: Html.Name("Ime:") %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.name) %>
        </div>

        <p></p>
    
        <div class="display-label">
        <%: Html.Name("Prezime:") %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.surname) %>
        </div>

        <p></p>
    
        <div class="display-label">
        <%: Html.Name("JMBG:") %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.personalNumber) %>
        </div>

        <p></p>
    
        <div class="display-label">
        <%: Html.Name("ePosta:") %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.email) %>
        </div>

        <p></p>
    
        <div class="display-label">
        <%: Html.Name("Telefon:") %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.phoneNumber) %>
        </div>

        <p></p>
    
        <div class="display-label">
        <%: Html.Name("Fakultet:") %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.faculty) %>
        </div>

        <p></p>
    
        <div class="display-label">
        <%: Html.Name("Godina upisa:") %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.enrollYear) %>
        </div>

        <p></p>
    
        <div class="display-label">
        <%: Html.Name("Godina studije:") %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.studyYear) %>
        </div>

        <p></p>
    
        <div class="display-label">
        <%: Html.Name("Broj indeksa:") %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.indexNumber) %>
        </div>

        <p></p>
    </fieldset>
    <p>
        <%: Html.ActionLink("Edit", "Edit", new { /* id=Model.PrimaryKey */ }) %> |
        <%: Html.ActionLink("Facebook", "http://facebook.com") %>
    </p>

</body>
</html>
