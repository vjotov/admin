<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <div class="page-header" xmlns="http://www.w3.org/1999/html">
        <h2>Add New User</h2>
    </div>

    <@l.login "/user/add" true />
</@c.page>