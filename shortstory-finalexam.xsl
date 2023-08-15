<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:clr="https://crystalrangel.000webhostapp.com/729/metadata"
xmlns:dc="http://purl.org/dc/elements/1.1/">
<xsl:output method="html" />
<xsl:template match="/">
<html> <head>
<style type="text/css">
	body {	background-color: aliceblue; 
			margin: 36pt; color: darkblue; 	
			font-family: Georgia; font-size: 13pt;}
</style>
<title>Andersen's Short Story</title></head>
<body bgcolor="aliceblue"><xsl:apply-templates />
</body></html>
</xsl:template>

<xsl:template match="clr:metadata">
<h1 align="center"><xsl:value-of select="clr:qualifieddc/dc:title" /></h1>
<h3 align="center"><xsl:value-of select="clr:qualifieddc/dc:creator" /></h3> 
</xsl:template>

<xsl:template match="clr:paragraph">
	<p align="justify"> <xsl:apply-templates select="clr:speech | text()" /></p>
</xsl:template>

<xsl:template match="clr:speech">
	<font color="purple"><xsl:value-of select="." /></font>
</xsl:template>

<xsl:template match="text()">
	<xsl:value-of select="." />
</xsl:template>

</xsl:stylesheet>