<?xml version = "1.0"?>
<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
<xsl:output method = "html" omit-xml-declaration = "no" doctype-system = "http://www.w3c.org/TR/xhtml1/DTD/xhtml1-strict.dtd" 
doctype-public = "-//W3C//DTD XHTML 1.0 Strict//EN"/>
<xsl:template match = "/">
<html xmlns = "http://www.w3.org/1999/xhtml">
<head>
<title>DETAILS</title>
</head>
<body>
<style>
	body{
		background-color:green;
	}
</style>
   <p> <b>STUDENT DETAILS</b> </p>
	<table border = "2" bgcolor = "violet">
	<thead>
		<tr>
			<th>Student Name</th>
			<th>Reg Number</th>
			<th>Year</th>
			<th>Department</th>
		</tr>
	</thead>
	<xsl:for-each select = "/details/user">
		<tr>
			<td><xsl:value-of select = "name"/></td>
			<td><xsl:value-of select = "reg"/></td>
			<td><xsl:value-of select = "year"/></td>
			<td><xsl:value-of select = "dep"/></td>
		</tr>
	</xsl:for-each>
	</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>