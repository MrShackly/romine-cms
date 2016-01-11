<#include "../include/imports.ftl">


<@hst.setBundle basename="essentials.global"/>

<hr/>

<!-- Footer -->
<footer>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				<@hst.include ref="container"/>
				
				<@hst.include ref="menu"/>
				                   
                <small class="copyright"><@fmt.message key="footer.text" var="footer"/>${footer?html}</small>
            </div>
		</div>
	</div>
</footer>
