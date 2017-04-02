<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xc="/xcommerce/1.0"  xmlns:p="/xcommerce/1.0/music"      xmlns:c="/xcommerce/1.0/category">

    <xsl:output method="html" indent="yes"
                encoding="utf-8" media-type="text/html" />

    <xsl:param name="id" />

    <xsl:template match="xc:music">


        <div class="moreItems">
            <h1 style="color:white;text-align:center;">MORE</h1>
            <div class="thumbs">

                <xsl:for-each select="p:music[not(@p:id=$id)]">
                    <img>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="p:name" />
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="p:name" />
                        </xsl:attribute>
                        <xsl:attribute name="onclick">detailSwitch(<xsl:value-of select="@p:id" />)
                        </xsl:attribute>
                        <xsl:attribute name="src">
                            images/<xsl:value-of select="p:image" />
                        </xsl:attribute>
                    </img>



                </xsl:for-each>

            </div>

        </div>

    </xsl:template>
</xsl:stylesheet>