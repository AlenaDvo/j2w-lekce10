[#ftl]

[@c.page title="Učitel ${ucitel.celeJmeno}"]
    <h1>Učitel: <strong>${ucitel.celeJmeno}</strong></h1>
    [#if ucitel.getTrida()??]
        <p>Třídní učitel třídy: <a href="/tridy/${ucitel.trida.id}">${ucitel.trida}</a></p>
    [/#if]
[/@c.page]
