<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xc="/xcommerce/1.0"  xmlns:p="/xcommerce/1.0/music"      xmlns:c="/xcommerce/1.0/category">

    <xsl:output method="html" indent="yes"
                encoding="utf-8" media-type="text/html" />

    <xsl:template match="xc:music">

        <xsl:variable name="date">
            <xsl:for-each select="p:music" >
                <xsl:sort select="p:releaseDate" order="descending" />
                <xsl:if test="position() = 1">
                    <xsl:value-of select="p:releaseDate"/>
                </xsl:if>
            </xsl:for-each>
        </xsl:variable>

        <xsl:variable name="latest">
            <xsl:for-each select="p:music" >
                <xsl:sort select="p:releaseDate" order="descending" />
                <xsl:if test="position() = 1">
                    <xsl:value-of select="p:name"/>
                </xsl:if>
            </xsl:for-each>
        </xsl:variable>

        <xsl:variable name="image">
            <xsl:for-each select="p:music" >
                <xsl:sort select="p:releaseDate" order="descending" />
                <xsl:if test="position() = 1">
                    <xsl:value-of select="p:image"/>
                </xsl:if>
            </xsl:for-each>
        </xsl:variable>

        <xsl:variable name="description">
            <xsl:for-each select="p:music" >
                <xsl:sort select="p:releaseDate" order="descending" />
                <xsl:if test="position() = 1">
                    <xsl:value-of select="p:description"/>
                </xsl:if>
            </xsl:for-each>
        </xsl:variable>



        <div>
            <h1><xsl:value-of select="$latest"/></h1>
            <p class="clear"><xsl:value-of select="$date" /></p>
            <img class="clear recentImg">
                <xsl:attribute name="src">
                    images/<xsl:value-of select="$image"/>
                </xsl:attribute>
            </img>
            <p class="clear"><xsl:value-of select="$description"/></p>
            <div class="clear"></div>
        </div>

    </xsl:template>
</xsl:stylesheet>