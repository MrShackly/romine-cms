<#include "webfile://freemarker/include/imports.ftl">
<#macro header heading subheading="" background="">
<@hst.link path="/images/home-bg.jpg" var="defaultImage"/>
<header class="intro-header" style="background-image: url('${background?has_content?then(background,defaultImage)}')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="site-heading">
                    <h1>${heading}</h1>
                    <#if subheading?has_content>
                    <hr class="small">
                    <span class="subheading">${subheading}</span>
                    </#if>
                </div>
            </div>
        </div>
    </div>
</header>
</#macro>