<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<StudentsDorm101.Data.Entities.RegistrationStudent>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Registration
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Registration</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>RegistrationStudent</legend>

        <div class="editor-label">
            <%: Html.Name("Potvrda primanja:") %>
        </div>
        <div>
            <input type="file" name="incoming" />
        </div>

        <div class="editor-label">
            <%: Html.Name("Potvrda fakulteta:") %>
        </div>
        <div>
            <input type="file" name="Faculty" />
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.name) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.name) %>
            <%: Html.ValidationMessageFor(model => model.name) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.surname) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.surname) %>
            <%: Html.ValidationMessageFor(model => model.surname) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.personalNumber) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.personalNumber) %>
            <%: Html.ValidationMessageFor(model => model.personalNumber) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.email) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.email) %>
            <%: Html.ValidationMessageFor(model => model.email) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.phoneNumber) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.phoneNumber) %>
            <%: Html.ValidationMessageFor(model => model.phoneNumber) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.faculty) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.faculty) %>
            <%: Html.ValidationMessageFor(model => model.faculty) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.enrollYear) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.enrollYear) %>
            <%: Html.ValidationMessageFor(model => model.enrollYear) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.studyYear) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.studyYear) %>
            <%: Html.ValidationMessageFor(model => model.studyYear) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.indexNumber) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.indexNumber) %>
            <%: Html.ValidationMessageFor(model => model.indexNumber) %>
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
