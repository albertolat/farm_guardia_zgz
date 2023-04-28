<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">

        <br/>
        <xsl:apply-templates select="resultado/totalCount" />
        <br/>

        <div class="tarjetaH">
            <xsl:for-each select="//equipamiento">
                <section class="tarjeta">
                    <h3 class="titulo_tarjeta"><xsl:value-of select="./guardia/guardia/sector"></xsl:value-of></h3>
                    <br/>
                    <table border="1">
                        <tr><td><h4><xsl:value-of select="title"></xsl:value-of></h4></td></tr>                        
                        <tr><td><h4><xsl:value-of select="calle"></xsl:value-of></h4></td></tr>
                        <tr><td><h4><xsl:value-of select="telefonos"></xsl:value-of></h4></td></tr>
                        <xsl:if test="url">
                            <tr><td>
                                <br/>
                                <a target="blank">
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="url"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:value-of select="url"></xsl:value-of>
                                </a>
                            </td></tr>
                        </xsl:if>
                        </table>
                </section>
            </xsl:for-each>
        </div>
        <footer>
            <p>Alberto Latorre Casas -- Abril 2023 </p>
        </footer>
    </xsl:template>


    <xsl:template match="resultado/totalCount">  
        <h2 style="color:purple" align="center">Farmacias de guardia hoy:<xsl:value-of select="."></xsl:value-of></h2>
    </xsl:template>

</xsl:stylesheet>
