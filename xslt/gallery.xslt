<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xc="/xcommerce/1.0"  xmlns:p="/xcommerce/1.0/images"  xmlns:c="/xcommerce/1.0/category" >

    <xsl:output method="html" indent="yes"
                encoding="utf-8" media-type="text/html" />

    <xsl:param name="id" />

    <xsl:template match="xc:image">





        <div class="galContainer">
            <div class="thumbWrap">
                <xsl:for-each select="c:category">

                    <h2 style="clear:both;margin-left: 20px"><xsl:value-of select="@c:name"/></h2>

                    <xsl:for-each select="p:image">

                        <a class="aThumb" href="#">
                            <img class="thumb" >
                                <xsl:attribute name="src"><xsl:value-of select="p:thumbnail"/></xsl:attribute>
                            </img>
                            <img class="big" >
                                <xsl:attribute name="src"><xsl:value-of select="p:src"/></xsl:attribute>
                            </img>
                        </a>

                    </xsl:for-each>
                    <br />
                </xsl:for-each>
            </div>

            <a class="aThumb" href="#">
                <img class="big featured" src="images/featured.jpg" />
            </a>
        </div>





    </xsl:template>

</xsl:stylesheet>