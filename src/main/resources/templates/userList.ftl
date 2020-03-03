<#import "parts/common.ftl" as c>

<@c.page>

    <div class="page-header">
        <h2>List of Users </h2>
    </div>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a  class="btn btn-outline-primary btn-sm" role="button" href="/user/add" >Add User</a>
    </nav>

    <table class="table">
        <thead>
        <tr>
            <th>Name</th>
            <th>Role</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td><a href="/user/${user.id}">edit</a></td>
            </tr>
        </#list>
        </tbody>
    </table>
</@c.page>
