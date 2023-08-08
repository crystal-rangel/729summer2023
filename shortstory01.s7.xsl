<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:kbng="http://www.kwongbor.net/myTeaching"
xmlns:dc="http://purl.org/dc/elements/1.1/">
<xsl:output method="html" />
<xsl:template match="/">
<html> <head>
<style type="text/css">
	body {	background-color: aliceblue; 
			margin: 36pt; color: darkblue; 	
			font-family: Georgia; font-size: 13pt;}
</style>
<title>JAckson's Short Story</title></head>
<body bgcolor="aliceblue"><xsl:apply-templates />
</body></html>
</xsl:template>

<xsl:template match="kbng:metadata">
<h1 align="center"><xsl:value-of select="kbng:qualifieddc/dc:title" /></h1>
<h3 align="center"><xsl:value-of select="kbng:qualifieddc/dc:creator" /></h3> 
</xsl:template>

<xsl:template match="kbng:paragraph">
	<p align="justify"> <xsl:apply-templates select="kbng:speech | text()" /></p>
</xsl:template>

<xsl:template match="kbng:speech">
	<font color="purple"><xsl:value-of select="." /></font>
</xsl:template>

<xsl:template match="text()">
	<xsl:value-of select="." />
</xsl:template>

</xsl:stylesheet>