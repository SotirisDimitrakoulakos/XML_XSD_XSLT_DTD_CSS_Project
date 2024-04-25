<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
	    <xsl:element name="products_can_buy">
          <h1>Products that I can buy</h1>
          <table border="1">
            <tr bgcolor="lightblue">
              <th>Product Name</th>
              <th>Product Code</th>
              <th>Product Categories</th>
            </tr>
            <xsl:for-each select="Epipla_Diakosmisi_AE/product_list/product">
			  <xsl:if test="start_value/@can_reserved='yes'">
			    <tr>
			      <td><xsl:value-of select="product_identification/@product_name"/></td>
				  <td><xsl:value-of select="product_identification/@product_code"/></td>
				  <td><xsl:value-of select="@prod_class_id"/></td>
			    </tr>
			  </xsl:if>
            </xsl:for-each>
          </table>
		</xsl:element>
      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>