<?php 

	$xsl = new domDocument();
  $xsl->load("shortstory01.xsl"); 

  $proc = new xsltprocessor;
  $proc->importStylesheet($xsl); 
	
  $document = new domDocument();
  $document->load("Jackson.TheLottery.Assignment7.xml");

  print $proc->transformToXml($document);

?> 