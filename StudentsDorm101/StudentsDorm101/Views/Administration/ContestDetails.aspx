<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<StudentsDorm101.Data.Entities.ContestStudent>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>ContestDetails</title>
</head>
<body>
    <fieldset>
        <legend>ContestStudent</legend>
    
        <div class="display-label">
            <%: Html.Name("Prosecna ocena:") %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.avarageGrade) %>
        </div>
    
        <div class="display-label">
            <%: Html.Name("Prosecni prihod:") %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.avarageIncome) %>
        </div>
    
        <div class="display-label">
            <%: Html.Name("ESPB:") %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.ECTS) %>
        </div>
    
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
        </div>
    </fieldset>
    <p>
        <%: Html.ActionLink("Edit", "Edit", new { /* id=Model.PrimaryKey */ }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
</body>
</html>
