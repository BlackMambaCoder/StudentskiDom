<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page - My ASP.NET MVC Application
</asp:Content>

<asp:Content ID="indexFeatured" ContentPlaceHolderID="FeaturedContent" runat="server">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Studentski centar Niš.</h1>
                <h2><%: ViewBag.Message %></h2>
            </hgroup>
            <p>
                Novi način prijave na konkurs za stanovanje u jednim od studenskih domova Niš.
            </p>
        </div>
    </section>
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Kako da se prijavis:</h3>
    <ol class="round">
        <li class="one">
            <h5>Idi na "Prijava za konkurs"</h5>
            Tamo ćeš naći formu koju treba da popuniš sa tvojim ličnim podacima.
        </li>

        <li class="two">
            <h5>Pošalji dokumenata</h5>
            Pribavi sve dokumente koje ti trebaju i skeniraj ih. Potrebni, i jedini dozvoljeni format je pdf.
            Dokumenata koje ti trebaju možeš da pročitaš ovde.
            Kako da skeniraš i prebaciš u pdf možeš da pročitaš ovde.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245153">Learn more…</a>
        </li>

        <li class="three">
            <h5>Potvrdi svoje podatke</h5>
            Tvoji podaci će biti poslati u bazu gde će ih referenti pregledati i ubaciće te na spisak.
            Kasnije će biti objavljena konačna rang lista i dobićeš šifru sa kojom možeš da izabereš sobu.
            Za datum useljenja bićeš naknadno obavešten.
        </li>
    </ol>
</asp:Content>
