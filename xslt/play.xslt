<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xc="/xcommerce/1.0"  xmlns:p="/xcommerce/1.0/music"      xmlns:c="/xcommerce/1.0/category">

    <xsl:output method="html" indent="yes"
                encoding="utf-8" media-type="text/html" />

    <xsl:param name="id" />
    <xsl:param name="number" />

    <xsl:template match="xc:music">
        <div style="display:none !important;clear:both;" class="play">
        <xsl:attribute name="id">embed<xsl:value-of select="$number"/></xsl:attribute>

            <xsl:for-each select="p:music[@p:id=$id]">



                                <xsl:for-each select="p:trackList/p:track[@p:number=$number]">


                                            <iframe width="100%" height="166" scrolling="no" frameborder="no" >
                                                <xsl:attribute name="src">https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/<xsl:value-of select="@p:embed"/>&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=false&amp;&amp;show_reposts=false&amp;show_artwork=false&amp;show_user=false
                                                </xsl:attribute>

                                            </iframe>


                                </xsl:for-each>




            </xsl:for-each>
            <div style="clear:both;"></div>
        </div>
    </xsl:template>
</xsl:stylesheet>
