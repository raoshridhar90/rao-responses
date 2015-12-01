<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>

      <body>
        <h2>Articles</h2>
        <table border="1">
          <tr>            
            <th>Question</th>
            <th>Response</th>
          </tr>

        <xsl:for-each select="articles/campus_life">
          <tr>            
            <td><xsl:value-of select="student_question"/></td>
            <td><xsl:for-each select="response">
              <ul>
                <xsl:for-each select= "paragraph">
                  <li><xsl:value-of select="."/></li>
                </xsl:for-each>
              </ul>
          </xsl:for-each></td>
          </tr>
        </xsl:for-each>

<!--        <xsl:for-each select="articles/academics">
          <tr>            
            <td><xsl:value-of select="student_question"/></td>
            <td><xsl:for-each select="response">
            <ul>
              <xsl:for-each select= "paragraph">
                <li><xsl:value-of select="."/></li>
              </xsl:for-each>
            </ul>
          </xsl:for-each></td>
          </tr>
        </xsl:for-each>
 
        <xsl:for-each select="articles/college_life">
          <tr>            
            <td><xsl:value-of select="student_question"/></td>
                    <td><xsl:for-each select="response">
            <ul>
              <xsl:for-each select= "paragraph">
                <li><xsl:value-of select="."/></li>
              </xsl:for-each>
            </ul>
          </xsl:for-each></td>
          </tr>
        </xsl:for-each>

        <xsl:for-each select="articles/unt_systems">
          <tr>
            <td><xsl:value-of select="student_question"/></td>
                    <td><xsl:for-each select="response">
            <ul>
              <xsl:for-each select= "paragraph">
                <li><xsl:value-of select="."/></li>
              </xsl:for-each>
            </ul>
          </xsl:for-each></td>
          </tr>
        </xsl:for-each> -->

        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
