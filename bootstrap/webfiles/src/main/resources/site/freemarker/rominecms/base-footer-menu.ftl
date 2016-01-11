<#include "../include/imports.ftl">
<@hst.cmseditmenu menu=menu/>
<#if menu??>
  <#if menu.siteMenuItems??>
    <ul class="list-inline text-center">
	  	<#list menu.siteMenuItems as item>
	  		  <li>
	  		  	<#if item.externaLink??>
	  		  		<a href="<@hst.link link=item.hstLink/>">
	  		  	<#elseif item.hstLink??>
	  		  		 <a href="${item.externalLink}">
	  		  	<#else>
	  		  		<a href="#">
	  		  	</#if>
		  		  <span class="fa-stack fa-lg">
                        <i class="fa fa-square fa-stack-2x"></i>
                        <i class="fa fa-${item.name?html} fa-stack-1x fa-inverse"></i>
                    </span>
		  		  </a>
	  		  </li>
	  	</#list>
  	</ul>
  </#if>
</#if>