<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xc="/xcommerce/1.0"  xmlns:p="/xcommerce/1.0/music"
                xmlns:c="/xcommerce/1.0/category">

  <xsl:output method="html" indent="yes"
              encoding="utf-8" media-type="text/xml" />


  <!--Breadcrum page name parameter - used to test wither or not to display breadcrum-->
  <xsl:param name="name" />


  <xsl:param name="category" />






  <!--Start: Define Product Listing region template-->
  <xsl:template match="xc:music">


  <div class="musicRegion">

    <div class="individualRegion" style="width: 100%; display: block;">
      <div class="sort">
        <label for="sort">View:</label>
        <select class="select-style" id="sort" name="sort" onchange="sort(this.selectedIndex);">
          <option>All</option>
          <option>Albums</option>
          <option>EP's</option>
          <option>Singles</option>
        </select>
      </div>
    </div>


    <ul>
      <xsl:attribute name="class">shelf</xsl:attribute>
      <!--
        allow for display of specific category, or if no category specified,
        just display ALL products
      -->

        <xsl:apply-templates select="p:music[p:category=$category or not($category)]" />

    </ul>
  </div>
  </xsl:template>
  <!--End: Define Product Listing region template-->





  <!-- START: Define shelf product template for easier extensibility in future. -->
  <xsl:template match="p:music">
    <li>
      <a>
        <xsl:attribute name="href">
          music.html?id=<xsl:value-of select="@p:id" />
        </xsl:attribute>
      <div class="itemWrap">

        <h2 style="display: inline-block;">
          <xsl:value-of select="p:name" />
        </h2>
        <h2 style="display: inline-block;color:#e84963;">
          <xsl:value-of select="p:category" />
        </h2>

        <img>
          <xsl:attribute name="alt">
            <xsl:value-of select="p:name" />
          </xsl:attribute>
          <xsl:attribute name="src">
            images/<xsl:value-of select="p:image" />
          </xsl:attribute>
        </img>

        <p><xsl:value-of select="p:description" /></p>
      </div>
      </a>
    </li>
  </xsl:template>
  <!-- END: Define shelf product template -->

</xsl:stylesheet>
