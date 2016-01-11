<#include "webfile://freemarker/include/imports.ftl">

<#function getSiteProperty property>
	<#return hstRequestContext.resolvedMount.mount.channelInfo.properties[property]>
</#function>