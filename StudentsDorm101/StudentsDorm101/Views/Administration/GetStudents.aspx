<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<StudentsDorm101.Data.Entities.RegistrationStudent>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Lista prijavljenih studenata</h2>

<p>
    <%: Html.ActionLink("Lista registrovanih studenata", "FinalList") %> |
    <%: Html.ActionLink("Nazad", "Index") %> 
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
                <%: Html.ActionLink("Details", "Details", new { id = item.id })%>
            </td>
        </tr>
    <% } %>
    
    </table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
