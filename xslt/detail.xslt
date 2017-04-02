<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xc="/xcommerce/1.0"  xmlns:p="/xcommerce/1.0/music"      xmlns:c="/xcommerce/1.0/category">

    <xsl:output method="html" indent="yes"
                encoding="utf-8" media-type="text/html" />

    <xsl:param name="id" />

    <xsl:template match="xc:music">

        <article id="detailView" class="musicDetail">
            <a id="anchor" name="anchor"/>

            <xsl:for-each select="p:music[@p:id=$id]">

                <h1>
                    <xsl:value-of select="p:name" />
                </h1>

                <div class="detailBody">
                    <p>
                        <xsl:attribute name="class">description</xsl:attribute>
                        <span class="label">Description</span>
                        <br />
                        <xsl:value-of select="p:description" />
                    </p>

                    <p>

                        <xsl:if test="p:trackList">
                            <!--
                              Only display tracklist if there is one
                            -->
                            <span class="label">Tracklist</span>
                            <ul class="playList">
                                <xsl:for-each select="p:trackList/p:track">
                                    <li >
                                        <xsl:if test="@p:embed">
                                            <xsl:attribute name="onclick">playSound(<xsl:value-of select="../../@p:id"/>, <xsl:value-of select="@p:number"/>);</xsl:attribute>
                                            <xsl:attribute name="class">hasEmbed</xsl:attribute>
                                        </xsl:if>
                                        <i class="fa fa-play" aria-hidden="true" >
                                            <xsl:attribute name="id">play<xsl:value-of select="@p:number"/></xsl:attribute>
                                        </i>
                                        <h3><xsl:value-of select="@p:name"/></h3><p class="time"><xsl:value-of select="@p:length"/></p>


                                        <div style="display:none !important;clear:both;" class="play">
                                            <xsl:attribute name="id">embed<xsl:value-of select="@p:number"/></xsl:attribute>
                                        </div>




                                    </li>
                                </xsl:for-each>
                            </ul>

                        </xsl:if>

                    </p>



                </div>

                <div class="detailImg">
                    <img>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="p:name" />
                        </xsl:attribute>
                        <xsl:attribute name="src">
                            images/<xsl:value-of select="p:image" />
                        </xsl:attribute>
                    </img>



                        <p>
                            <span class="label">Released: </span><xsl:value-of select="p:releaseDate" /><br />
                            <span class="label">Price: £</span><xsl:value-of select="p:price" /><br />
                            <button class="button" onclick="demo()">BUY</button>
                        </p>
                        <!-- Basic PayPal shopping basket functionality -->

                    <div style="clear:both;"></div>
                </div>

            </xsl:for-each>
            <div style="clear:both;"></div>
        </article>



    </xsl:template>
</xsl:stylesheet>
