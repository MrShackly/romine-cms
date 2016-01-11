<!DOCTYPE html>
<#include "../include/imports.ftl">
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <@hst.defineObjects/>
    <#if hstRequest.requestContext.cmsRequest>
      <link rel="stylesheet" href="<@hst.webfile  path="/css/cms-request.css"/>" type="text/css"/>
    </#if>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Clean Blog</title>

    <!-- Bootstrap Core CSS -->
    <link href="<@hst.webfile  path="/css/bootstrap.min.css"/>" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<@hst.webfile  path="/css/clean-blog.min.css"/>" rel="stylesheet">
	
	<link href="<@hst.webfile  path="/css/custom.css"/>" rel="stylesheet">
    
    <!-- Custom Fonts -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	<@hst.headContributions categoryExcludes="htmlBodyEnd, scripts" xhtml=true/>
</head>

<body>

	
	<@hst.include ref="menu"/>
 	
 	<#--<@hst.include ref="top"/>-->
 	
 	<@hst.include ref="main"/>
   	
	<@hst.include ref="footer"/>
        
	<script src="<@hst.webfile path="/js/jquery-2.1.0.min.js"/>"/></script>
	<script src="<@hst.webfile path="/js/bootstrap.min.js"/>"/></script>
	<script src="<@hst.webfile path="/js/clean-blog.min.js"/>"/></script>
	
	<@hst.headContributions categoryIncludes="htmlBodyEnd, scripts" xhtml=true/>

	<#if hstRequestContext.preview>
	<style>
		.hst-cmseditmenu{
			position:absolute;
		}
	</style>
	</#if>
</body>
</html>