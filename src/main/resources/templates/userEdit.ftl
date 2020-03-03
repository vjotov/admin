<#import "parts/common.ftl" as c>

<@c.page>
    <div class="page-header" xmlns="http://www.w3.org/1999/html">
        <h2>Edit User - ${user.username}</h2>
    </div>
    <form action="/user" method="post">
        <input type="text" name="username" value="${user.username}"/>
        <#list roles as role>
            <div>
                <label><input type="checkbox"
                              name="${role}" ${user.roles?seq_contains(role)?string("checked", "")} />${role}</label>
            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId"/>
        <input type="hidden" value="${_csrf.token}" name="_csrf"/>
        <button type="submit">Save</button>
    </form>
</@c.page>
