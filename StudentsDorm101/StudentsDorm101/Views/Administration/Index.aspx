<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<StudentsDorm101.Data.Entities.RegistrationStudent>>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Index</title>
</head>
<body>
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
                <%: Html.Name("Potvrda o mesecnom prihodu") %>
            </th>
            <th>
                <%: Html.Name("Potvrda sa fakulteta") %>
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
                <%: Html.ActionLink(item.incomingDocumentName, "GetFile", new { id = item.incomingDocumentId }, new { target = "_blank" })%>
            </td>
            <td>
                <%: Html.ActionLink(item.facultyDocumentName, "GetFile", new { id = item.facultyDocumentId }, new { target = "_blank" })%>
            </td>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { /* id=item.PrimaryKey */ }) %> |
                <%: Html.ActionLink("Details", "Details", new { id = item.id }) %> |
                <%: Html.ActionLink("Delete", "Delete", new { /* id=item.PrimaryKey */ }) %>
            </td>
        </tr>
    <% } %>
    
    </table>
</body>
</html>
