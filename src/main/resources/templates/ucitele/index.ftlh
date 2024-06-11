[#ftl]

[@c.page title="Seznam učitelů"]
    <h1>Seznam učitelů</h1>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Jméno</th>
            <th scope="col">Třídní ve třídě</th>
        </tr>
        </thead>
        <tbody>
        [#list ucitele as ucitel]
            <tr>
                <td><a href="/ucitele/${ucitel.id}">${ucitel.celeJmeno}</a></td>
                [#if ucitel.getTrida()??]
                    <td><a href="/tridy/${ucitel.getTrida().id}">${ucitel.getTrida()}</a></td>
                [/#if]
            </tr>
        [/#list]
        </tbody>
    </table>
[/@c.page]
