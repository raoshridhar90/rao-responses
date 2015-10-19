<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
	<head>
	  <link href="xsl.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<h2> Football player league statistics for 2014-15 </h2>
	<table border="1">
		<tr>
			<th> Attacker Name </th>
			<th> Games Played </th>
			<th> Successful Passes </th>
			<th> Pass Completion </th>
			<th> Chances Created </th>
			<th> Assists </th>
			<th> Total Shots </th>
			<th> Goals Scored </th>
		</tr>
			<xsl:for-each select="player_statistics/team/attacker">
			<tr><xsl:value-of select="attacker_name"/>
				<td><xsl:value-of select="games_played"/></td>
				<td><xsl:value-of select="successful_passes"/></td>
				<td><xsl:value-of select="pass_completion"/></td>
				<td><xsl:value-of select="chances_created"/></td>
				<td><xsl:value-of select="assists"/></td>
				<td><xsl:value-of select="total_shots"/></td>
				<td><xsl:value-of select="goals_scored"/></td>
			</tr>
			</xsl:for-each>
	</table>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>