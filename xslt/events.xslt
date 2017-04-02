<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xc="/xcommerce/1.0"  xmlns:p="/xcommerce/1.0/product"
                xmlns:c="/xcommerce/1.0/category">

  <xsl:output method="html" indent="yes"
              encoding="utf-8" media-type="text/xml" />





  <!--Start: Define Product Listing region template-->
  <xsl:template match="xc:event">
    <div class="musicRegion">


      <ul>
        <xsl:attribute name="class">shelf</xsl:attribute>
        <!--
          allow for display of specific category, or if no category specified,
          just display ALL products
        -->

        <xsl:for-each select="c:category">
          <xsl:variable name="cat">
            <xsl:value-of select="@c:name" />
          </xsl:variable>


          <xsl:for-each select="p:event">

            <li style="cursor:auto;" >
              <xsl:attribute name="data">
                <xsl:value-of select="p:date" />
              </xsl:attribute>


                <div class="itemWrap">

                  <div>
                    <xsl:attribute name="class">
                      <xsl:value-of select="$cat" />
                    </xsl:attribute>
                    <p class="eventLeft">
                      <xsl:value-of select="$cat" />
                    </p>

                  </div>

                  <div class="eventRight">
                    <h2 style="display: inline-block;">
                      <xsl:value-of select="p:title" />
                    </h2>
                    <p style="display: inline-block;">
                      <xsl:value-of select="p:description" />
                    </p>



                    <xsl:if test="$cat = 'Show'">
                      <div class="evDeets">
                        <p>
                          <span class="label">Date: </span><xsl:value-of select="p:date" /><br />
                          <span class="label">Start: </span><xsl:value-of select="p:start" /><br />
                          <span class="label">End: </span><xsl:value-of select="p:end" /><br />
                          <br />
                          <xsl:value-of select="p:address" /><br />
                          <xsl:value-of select="p:city" /><br />
                          <xsl:value-of select="p:postCode" /><br /><br />
                          <button class="button" onclick="demo()">Buy Tickets</button>
                        </p>
                      </div>
                      <div class="evDeets">
                        <img class="ownHeight">
                          <xsl:attribute name="src">
                            <xsl:value-of select="p:image" />
                          </xsl:attribute>
                        </img>
                      </div>
                    </xsl:if>

                    <xsl:if test="$cat = 'News'">
                      <p><span class="label">Date: </span><xsl:value-of select="p:date" /><br /></p>
                      <button class="button">
                        <xsl:attribute name="onclick" >loadNews('<xsl:value-of select="p:media" />');</xsl:attribute>
                        VIEW</button>
                    </xsl:if>




                  </div>


                </div>


            </li>

          </xsl:for-each>
        </xsl:for-each>

      </ul>
    </div>
  </xsl:template>
  <!--End: Define Product Listing region template-->

</xsl:stylesheet>