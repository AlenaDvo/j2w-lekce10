[#ftl]

[@c.page title="Student ${student.celeJmeno}"]
    <h1>Student: <strong>${student.celeJmeno}</strong></h1>
    <p>Třída: <a href="/tridy/${student.getTrida().id}">${student.getTrida()}</a></p>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Rodič</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        [#list student.rodice as rodic]
            <tr>
                <td><a href="/rodice/${rodic.id}">${rodic.celeJmeno}</a></td>
            </tr>
        [/#list]
        </tbody>
    </table>
[/@c.page]
