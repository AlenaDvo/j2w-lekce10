[#ftl]

[@c.page title="Seznam rodičů"]
    <h1>Seznam rodičů</h1>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Jméno</th>
            <th scope="col">E-mail</th>
            <th scope="col">Telefon</th>
        </tr>
        </thead>
        <tbody>
        [#list rodice as rodic]
            <tr>
                <td><a href="/rodice/${rodic.id}">${rodic.celeJmeno}</a></td>
                [#if rodic.email??]
                    <td>${rodic.email}</td>
                [/#if]
                [#if rodic.telefon??]
                    <td>${rodic.telefon}</td>
                [/#if]
            </tr>
        [/#list]
        </tbody>
    </table>
[/@c.page]
