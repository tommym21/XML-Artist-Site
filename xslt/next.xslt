<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xc="/xcommerce/1.0"  xmlns:p="/xcommerce/1.0/product"   xmlns:c="/xcommerce/1.0/category">

    <xsl:output method="html" indent="yes"
                encoding="utf-8" media-type="text/html" />


    <xsl:param name="currentDate"  />

    <xsl:template match="xc:event">

<div>

    <xsl:for-each select="c:category" >
        <xsl:variable name="cat">
            <xsl:value-of select="@c:name" />
        </xsl:variable>

        <xsl:if test="$cat='Show'" >

            <xsl:for-each select="p:event" >
                <xsl:sort select="p:date" order="descending" />

                    <div class="dateField" >
                        <xsl:attribute name="data">
                            <xsl:value-of select="p:date" />
                        </xsl:attribute>

                    <h1><xsl:value-of select="p:title"/></h1>
                    <p class="clear"><xsl:value-of select="p:date" /></p>
                    <img class="clear recentImg">
                        <xsl:attribute name="src">
                            <xsl:value-of select="p:image"/>
                        </xsl:attribute>
                    </img>
                    <p class="clear"><xsl:value-of select="p:description"/></p>
                    </div>
                    <div class="clear"></div>


            </xsl:for-each>

        </xsl:if>

    </xsl:for-each>

</div>

    </xsl:template>
</xsl:stylesheet>