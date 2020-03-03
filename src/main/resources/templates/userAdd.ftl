<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <div class="page-header" xmlns="http://www.w3.org/1999/html">
        <h2>Add New User</h2>
    </div>
    <form action="/user/add" method="post">
        <div class="form-group row">
            <label class="col-sm-3 col-form-label"> User Name :</label>
            <div class="col-sm-4">
                <input type="text" name="username" value="<#if user??>${user.username}</#if>"
                       class="form-control ${(usernameError??)?string('is-invalid', '')}"
                       placeholder="User name"/>
                <#if usernameError??>
                    <div class="invalid-feedback">
                        ${usernameError}
                    </div>
                </#if>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label"> Password:</label>
            <div class="col-sm-4">
                <input type="password" name="password"
                       class="form-control ${(passwordError??)?string('is-invalid', '')}"
                       placeholder="Password"/>
                <#if passwordError??>
                    <div class="invalid-feedback">
                        ${passwordError}
                    </div>
                </#if>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label"> Password confirmation:</label>
            <div class="col-sm-4">
                <input type="password" name="password2"
                       class="form-control ${(password2Error??)?string('is-invalid', '')}"
                       placeholder="Retype password"/>
                <#if password2Error??>
                    <div class="invalid-feedback">
                        ${password2Error}
                    </div>
                </#if>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label"> Email:</label>
            <div class="col-sm-4">
                <input type="email" name="email"  value="<#if user??>${user.email}</#if>"
                       class="form-control ${(emailError??)?string('is-invalid', '')}"
                       placeholder="some@some.com"/>
                <#if emailError??>
                    <div class="invalid-feedback">
                        ${emailError}
                    </div>
                </#if>
            </div>
        </div>
        <#list roles as role>
            <div class="form-group row">
                <label class="col-sm-3 col-form-label"> ${role} </label>
                <div class="col-sm-4 ">
                    <input type="checkbox" class="form-check-input" name="${role}"/>
                </div>
            </div>
        </#list>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit"  class="btn btn-primary">Create</button>
    </form>


</@c.page>