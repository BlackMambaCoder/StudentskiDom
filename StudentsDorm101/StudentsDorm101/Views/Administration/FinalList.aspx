<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<StudentsDorm101.Data.Entities.ContestStudent>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    FinalList
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>FinalList</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table>
    <tr>
        <th>
            <%: Html.Name("Ime") %>
        </th>
        <th>
            <%: Html.Name("Prezime") %>
        </th>
        <th>
            <%: Html.Name("JMBG") %>
        </th>
        <th>
            <%: Html.Name("ePosta") %>
        </th>
        <th>
            <%: Html.Name("Telefon") %>
        </th>
        <th>
            <%: Html.Name("Fakultet") %>
        </th>
        <th>
            <%: Html.Name("Godina upisa") %>
        </th>
        <th>
            <%: Html.Name("Godina studije") %>
        </th>
        <th>
            <%: Html.Name("Broj indeksa") %>
        </th>
        <th>
            <%: Html.Name("Prosecna ocena") %>
        </th>
        <th>
            <%: Html.Name("Prosecni prihod") %>
        </th>
        <th>
            <%: Html.Name("ESPB") %>
        </th>
        <th>
            <%: Html.Name("Bodovi") %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.name) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.surname) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.personalNumber) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.email) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.phoneNumber) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.faculty) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.enrollYear) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.studyYear) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.indexNumber) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.avarageGrade) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.avarageIncome) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ECTS) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.credits) %>
        </td>
        <td>
            <%: Html.ActionLink("Details", "Details", new { /* id=item.PrimaryKey */ }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
