﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<StudentsDorm101.Data.Entities.RegistrationStudent>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

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
                <%: Html.ActionLink("Details", "Details", new { id = item.id }) %>
            </td>
        </tr>
    <% } %>
    
    </table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
