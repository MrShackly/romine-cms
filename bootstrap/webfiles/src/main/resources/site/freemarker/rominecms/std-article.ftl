<#include "../include/imports.ftl">

<@hst.link hippobean=document.image.original var="path"/>
<@html.header document.title document.subTitle path/>
<article>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				<@hst.html hippohtml=document.content/>		
			</div>
		</div>
	</div>
	<@hst.include ref="container"/>
</article>