<#import "parts/common.ftl" as c>

<@c.page>
Settings

<table class="table">
    <thead>
    <tr>
        <th>Setting</th>
        <th>Value</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <#list settings as setting>
    <tr>
        <td>${setting.name}</td>
        <td>${setting.value}</td>
        <td></td>
    </tr>
    </#list>
    </tbody>
</table>
</@c.page>