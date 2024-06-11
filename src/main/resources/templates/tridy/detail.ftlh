[#ftl]

[@c.page title="Třída ${trida.nazev}"]
    <h1>Třída: <strong>${trida.nazev}</strong></h1>
    <p>Třídní učitel: <a href="/ucitele/${trida.tridniUcitel.id}">${trida.tridniUcitel.celeJmeno}</a></p>
    <p>Počet studentů: ${pocetStudentu}</p>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Jméno</th>
        </tr>
        </thead>
        <tbody>
        [#list trida.studenti as student]
            <tr>
                <td><a href="/studenti/${student.id}">${student.celeJmeno}</a></td>
            </tr>
        [/#list]
        </tbody>
    </table>
[/@c.page]
