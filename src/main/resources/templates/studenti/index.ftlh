[#ftl]

[@c.page title="Seznam studentů"]
    <h1>Seznam studentů</h1>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Jméno</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        [#list studenti as student]
            <tr>
                <td>${student.getId()}</td>
                <td><a href="/studenti/${student.getId()}">${student.celeJmeno}</a></td>
                <td><a href="/tridy/${student.getTrida().getId()}">${student.getTrida()}</a></td>
            </tr>
        [/#list]
        </tbody>
    </table>
[/@c.page]
