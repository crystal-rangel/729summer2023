<?php 

	$xsl = new domDocument();
  $xsl->load("fairytale01.s7.xsl"); 

  $proc = new xsltprocessor;
  $proc->importStylesheet($xsl); 
	
  $document = new domDocument();
  $document->load("Andersen-UglyDuckling02.xml");

  print $proc->transformToXml($document);

?> 