<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<StudentsDorm101.Data.Entities.ContestStudent>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ContestDetails
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>ContestDetails</h2>

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
    </fieldset>
<p>
    <%: Html.ActionLink("Nazad u listu studenata", "GetStudents") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
