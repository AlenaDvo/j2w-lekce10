[#ftl]

[@c.page title="Rodič ${rodic.celeJmeno}"]
    <h1>Rodič: <strong>${rodic.celeJmeno}</strong></h1>
    [#if rodic.email??]
        <p>E-mail: ${rodic.email}</p>
    [/#if]
    [#if rodic.telefon??]
        <p>Telefon: ${rodic.telefon}</p>
    [/#if]
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Jméno dítěte</th>
            <th scope="col">Třída dítěte</th>
            <th scope="col">Třídní dítěte</th>
        </tr>
        </thead>
        <tbody>
        [#list rodic.getDeti() as dite]
            <tr>
                <td><a href="/studenti/${dite.id}">${dite.celeJmeno}</a></td>
                <td><a href="/tridy/${dite.trida.id}">${dite.trida}</a></td>
                <td><a href="/ucitele/${dite.trida.tridniUcitel.id}">${dite.trida.tridniUcitel.celeJmeno}</a></td>
            </tr>
        [/#list]
        </tbody>
    </table>
[/@c.page]
