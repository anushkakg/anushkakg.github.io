<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"> 
    <xsl:template match="/"> 
        <html> <body> 
            <h1>Hotels</h1> 
            <table border="1"> 
                <tr bgcolor="yellow"> 
                    <td><b>Name </b></td> 
                    <td><b>Phone</b></td> 
                    <td><b>Address</b></td> 
                    <td><b>Rating</b></td> 
                </tr> 
                <xsl:for-each select="Hotels/Hotel"> 
                    <xsl:sort select="Name" /> 
                    <tr style="font-size: 10pt; font-family: verdana"> 
                        <td><xsl:value-of select="Name"/></td> 
                        <td><xsl:value-of select="Phone"/></td> 
                        <td><xsl:value-of select="Address"/></td> 
                        <td><xsl:value-of select="Rating"/></td> 
                    </tr> 
                </xsl:for-each> 
            </table> 
        </body> </html> 
    </xsl:template> 
</xsl:stylesheet>