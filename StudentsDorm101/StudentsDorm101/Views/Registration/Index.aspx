<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<StudentsDorm101.Data.Entities.RegistrationStudent>>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Index</title>
</head>
<body>
    <p>
        <%: Html.ActionLink("Create New", "../PrijavaZaKonkurs.aspx") %>
    </p>
    <table>
        <tr>
            <th>
                <%: Html.Name("Prezime:") %>
            </th>
            <th>
                <%: Html.Name("Ime:") %>
            </th>
            
            <th></th>
        </tr>
    
    <% foreach (var item in Model) { %>
        <tr>
            <td>
                <%: Html.DisplayFor(modelItem => item.surname) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.name) %>
            </td>
            <td>
                <%: Html.ActionLink("Details", "Details", new { id = Model.First().id }) %>
            </td>
        </tr>
    <% } %>
    
    </table>
</body>
</html>
