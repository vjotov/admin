<#import "parts/common.ftl" as c>
<#macro editCell setting>
    <#switch setting.type>
        <#case "STRING">
            <input id="input-for-${setting.id}" type="text" class="form-control" name="newValue" value="${setting.value}">
            <#break >
        <#case "NUMERIC">
            <input id="input-for-${setting.id}" type="number" class="form-control" name="newValue" value="${setting.value}">
            <#break >
        <#case "BOOLEAN">
            <input id="input-for-${setting.id}" class ="form-control" type="checkbox" name="newValue" <#if setting.value == "on">checked</#if>>
            <#break >
        <#default >UNKNOWN TYPE!!!
    </#switch>
</#macro>

<@c.page>
Settings

<table class="table">
    <tbody>
    <#list settings as setting>
    <tr>
        <form action="/setting/${setting.id}" method="post">

            <td>
                <label for="input-for-${setting.id}">${setting.name}</label>
            </td>
            <td><@editCell setting></@editCell></td>
            <td>
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <button class="btn btn-primary" type="submit">Save</button>
            </td>
        </form>
    </tr>
    </#list>
    </tbody>
</table>
</@c.page>