<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<StudentsDorm101.Data.Entities.ContestStudent>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Save2List
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Save2List</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>ContestStudent</legend>

        <div class="editor-label">
            <%: Html.Name("Ime:") %>
        </div>
        <div class="editor-model">
            <%: Html.EditorFor(model => model.name) %>
        </div>
    
        <div class="editor-label">
            <%: Html.Name("Prezime:") %>
        </div>
        <div class="editor-model">
            <%: Html.EditorFor(model => model.surname) %>
        </div>
    
        <div class="editor-label">
            <%: Html.Name("JMBG:") %>
        </div>
        <div class="editor-model">
            <%: Html.EditorFor(model => model.personalNumber) %>
        </div>
    
        <div class="editor-label">
            <%: Html.Name("ePosta:") %>
        </div>
        <div class="editor-model">
            <%: Html.EditorFor(model => model.email) %>
        </div>
    
        <div class="editor-label">
            <%: Html.Name("Broj telefona:") %>
        </div>
        <div class="editor-model">
            <%: Html.EditorFor(model => model.phoneNumber) %>
        </div>
    
        <div class="editor-label">
            <%: Html.Name("Fakultet:") %>
        </div>
        <div class="editor-model">
            <%: Html.EditorFor(model => model.faculty) %>
        </div>
    
        <div class="editor-label">
            <%: Html.Name("Godina upisa") %>
        </div>
        <div class="editor-model">
            <%: Html.EditorFor(model => model.enrollYear) %>
        </div>
    
        <div class="editor-label">
            <%: Html.Name("Godina studije:") %>
        </div>
        <div class="editor-model">
            <%: Html.EditorFor(model => model.studyYear) %>
        </div>
    
        <div class="editor-label">
            <%: Html.Name("Broj Indeksa:") %>
        </div>
        <div class="editor-model">
            <%: Html.EditorFor(model => model.indexNumber) %>
        </div>

        <p></p>

        <div class="editor-label">
            <%: Html.Name("Prosecna ocena:") %>
        </div>
        <div class="editor-model">
            <%: Html.EditorFor(model => model.avarageGrade) %>
        </div>
    
        <p></p>

        <div class="editor-label">
            <%: Html.Name("Prosecni prihod:") %>
        </div>
        <div class="editor-model">
            <%: Html.EditorFor(model => model.avarageIncome) %>
        </div>
    
        <p></p>

        <div class="editor-label">
            <%: Html.Name("ESP bodova:") %>
        </div>
        <div class="editor-model">
            <%: Html.EditorFor(model => model.ECTS) %>
            <%: Html.ValidationMessageFor(model => model.ECTS) %>
        </div>
    
        <p>
            <input type="submit" value="Unesi" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Detalji studenta", "Details", new { id = Model.id })%> |
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
