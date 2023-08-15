<?php 

	$xsl = new domDocument();
  $xsl->load("shortstory-finalexam.xsl"); 

  $proc = new xsltprocessor;
  $proc->importStylesheet($xsl); 
	
  $document = new domDocument();
  $document->load("Andersen-TheDryad-finalexam.xml");

  print $proc->transformToXml($document);

?> 