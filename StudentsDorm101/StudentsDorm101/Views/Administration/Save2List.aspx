<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<StudentsDorm101.Data.Entities.ContestStudent>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Save2List</title>
</head>
<body>
    <script src="<%: Url.Content("~/Scripts/jquery-1.7.1.min.js") %>"></script>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>"></script>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>"></script>
    
    <% using (Html.BeginForm()) { %>
        <%: Html.ValidationSummary(true) %>
    
        <fieldset>
            <legend>ContestStudent</legend>

            <div class="editor-label">
                <%: Html.Name("Ime:") %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.name) %>
                <%: Html.ValidationMessageFor(model => model.name) %>
            </div>
    
            <div class="editor-label">
                <%: Html.Name("Prezime:") %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.surname) %>
                <%: Html.ValidationMessageFor(model => model.surname) %>
            </div>
    
            <div class="editor-label">
                <%: Html.Name("JMBG:") %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.personalNumber) %>
                <%: Html.ValidationMessageFor(model => model.personalNumber) %>
            </div>
    
            <div class="editor-label">
                <%: Html.Name("ePosta:") %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.email) %>
                <%: Html.ValidationMessageFor(model => model.email) %>
            </div>
    
            <div class="editor-label">
                <%: Html.Name("Broj telefona:") %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.phoneNumber) %>
                <%: Html.ValidationMessageFor(model => model.phoneNumber) %>
            </div>
    
            <div class="editor-label">
                <%: Html.Name("Fakultet:") %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.faculty) %>
                <%: Html.ValidationMessageFor(model => model.faculty) %>
            </div>
    
            <div class="editor-label">
                <%: Html.Name("Godina upisa") %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.enrollYear) %>
                <%: Html.ValidationMessageFor(model => model.enrollYear) %>
            </div>
    
            <div class="editor-label">
                <%: Html.Name("Godina studije:") %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.studyYear) %>
                <%: Html.ValidationMessageFor(model => model.studyYear) %>
            </div>
    
            <div class="editor-label">
                <%: Html.Name("Broj Indeksa:") %>
            </div>
            <div class="editor-field">
                <%: Html.DisplayFor(model => model.indexNumber) %>
            </div>

            <p></p>

            <div class="editor-label">
                <%: Html.Name("Prosecna ocena:") %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.avarageGrade) %>
                <%: Html.ValidationMessageFor(model => model.avarageGrade) %>
            </div>
    
            <div class="editor-label">
                <%: Html.Name("Prosecni prihod:") %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.avarageIncome) %>
                <%: Html.ValidationMessageFor(model => model.avarageIncome) %>
            </div>
    
            <div class="editor-label">
                <%: Html.Name("ESP bodova:") %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.ECTS) %>
                <%: Html.ValidationMessageFor(model => model.ECTS) %>
            </div>
    
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>
    <% } %>
    
    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>
</body>
</html>
