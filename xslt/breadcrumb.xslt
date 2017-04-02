<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xc="/xcommerce/1.0"  xmlns:p="/xcommerce/1.0/music"
                xmlns:c="/xcommerce/1.0/category">

    <xsl:output method="html" indent="yes" encoding="utf-8" media-type="text/html" />

    <xsl:param name="id"  />


    <xsl:template match="xc:music">
        <ul>
            <li>
                <a>
                    <xsl:attribute name="href">music.html</xsl:attribute>Music
                </a>
            </li>



            <xsl:for-each select="p:music[@p:id=$id]">

                <li>
                    <xsl:value-of select="p:name" />
                </li>

            </xsl:for-each>

        </ul>
    </xsl:template>
</xsl:stylesheet>