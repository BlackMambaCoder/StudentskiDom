<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<StudentsDorm101.Data.Entities.RegistrationStudent>" %>



<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Registration
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Registration</h2>

    <form id="form" runat="server" enctype="multipart/form-data">

<% using (Html.BeginForm()) { %>

    <fieldset>
        <legend>RegistrationStudent</legend>

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
            <%: Html.Name("Pol:") %>
        </div>

        <div class="editor-field">
            <%: Html.DropDownList("gender", ViewData["gender"] as SelectList) %>
        </div>

        <div class="editor-label">
            <%: Html.Name("Dom:") %>
        </div>

        <div class="editor-field">
            <%: Html.DropDownList("dorm", ViewData["dorm"] as SelectList) %>
        </div>

        <div class="editor-label">
            <%: Html.Name("JMBG:") %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.personalNumber) %>
            <%: Html.ValidationMessageFor(model => model.personalNumber) %>
        </div>

        <div class="editor-label">
            <%: Html.Name("e-Posta:") %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.email) %>
            <%: Html.ValidationMessageFor(model => model.email) %>
        </div>

        <div class="editor-label">
            <%: Html.Name("Telefon:") %>
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
            <%: Html.Name("Godina upisa:") %>
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
            <%: Html.Name("Broj indeksa:") %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.indexNumber) %>
            <%: Html.ValidationMessageFor(model => model.indexNumber) %>
        </div>

        <div class="editor-label">
            <%: Html.Name("Potvrda primanja:") %>
        </div>
        <div>
            <input type="file" name="incomingDoc" id="Incoming" />
        </div>

        <div class="editor-label">
            <%: Html.Name("Potvrda fakulteta:") %>
        </div>
        <div>
            <input type="file" name="facultyDoc" id="Faculty" />
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% } %>
        </form>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
