<#include "webfile://freemarker/include/imports.ftl">
<div class="container">
	<div class="row">
		<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
		<#if docs??>
			<#list docs>
				
				<#items as doc>
					<div class="post-preview">
						<a href="<@hst.link hippobean=doc/>">
							
	                        <h2 class="post-title">
	                            ${doc.title}
	                        </h2>
	                        <#if doc.subTitle??>
	                        <h3 class="post-subtitle">
	                            ${doc.subTitle}
	                        </h3>
	                    	</#if>
	                    	<p class="post-abstract">${doc.abstract}</p>
							<p class="post-meta">Posted by <a href="#">${doc.properties["hippostdpubwf:lastModifiedBy"]}</a> on ${doc.properties["hippostdpubwf:publicationDate"].getTime()?date}</p>
							<#--<ul><#list doc.properties?keys as key>
								<#attempt><li>${key} = ${doc.properties[key]} </li><#recover></#attempt>
							</#list></ul>-->
						</a>
					</div>
				</#items>
				
			<#else>
			
			</#list>
		</#if>
		</div>
	</div>
</div>