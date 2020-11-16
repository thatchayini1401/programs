<?xml version = "1.0"?>
<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
<xsl:output method = "html" omit-xml-declaration = "no" doctype-system = "http://www.w3c.org/TR/xhtml1/DTD/xhtml1-strict.dtd" 
doctype-public = "-//W3C//DTD XHTML 1.0 Strict//EN"/>
<xsl:template match = "/">
<html xmlns = "http://www.w3.org/1999/xhtml">
<head>
<title>Book</title>
</head>
<body>
<style>
	body{
		background-color:violet;
	}
</style>
   <p> <b>Student Satus</b> </p>
	<table border = "2" bgcolor = "white">
	<thead>
		<tr>
			<th>Name</th>
			<th>Reg Number</th>
			<th>Renewal</th>
			<th>Return</th>
			<th>Pay Fine</th>
			<th>Pending</th>
		</tr>
	</thead>
	<xsl:for-each select = "/conditions/book">
		<tr>
			<td><xsl:value-of select = "@name"/></td>
			<td><xsl:value-of select = "@reg"/></td>
			<td><xsl:value-of select = "renewal"/></td>
			<td><xsl:value-of select = "return"/></td>
			<td><xsl:value-of select = "payfine"/></td>
			<td><xsl:value-of select = "pending"/></td>
		</tr>
	</xsl:for-each>
	</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>