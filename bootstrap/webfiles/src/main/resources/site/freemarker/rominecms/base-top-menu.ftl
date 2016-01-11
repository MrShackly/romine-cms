<#include "../include/imports.ftl">

<#-- @ftlvariable name="menu" type="org.hippoecm.hst.core.sitemenu.HstSiteMenu" -->
<#-- @ftlvariable name="editMode" type="java.lang.Boolean"-->


<!-- Navigation -->
    <nav class="navbar navbar-default navbar-custom navbar-fixed-top top-nav-no-header">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Romine.org</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				
				<#if menu??>
				  <#if menu.siteMenuItems??>
				  
	                <ul class="nav navbar-nav navbar-right">
	                	<@hst.cmseditmenu menu=menu/>
					  	<#list menu.siteMenuItems as item>
					  		  <li><a href="<@hst.link link=item.hstLink/>">${item.name?html}</a></li>
					  	</#list>
				  	</ul>
				  </#if>
				</#if>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>