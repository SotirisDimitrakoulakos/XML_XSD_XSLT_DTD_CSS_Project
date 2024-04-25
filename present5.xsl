<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <h1>Products with Offers</h1>
        <table border="1">
          <tr bgcolor="lightblue">
            <th>Product Name</th>
            <th>Product Code</th>
            <th>Offer Rate</th>
            <th>Final Value</th>
          </tr>
          <xsl:for-each select="Epipla_Diakosmisi_AE/product_list/product/start_value[offer_rate]">
			<xsl:if test="offer_rate >= '35%'">
			  <tr>
			    <td><xsl:value-of select="../product_identification/@product_name"/></td>
				<td><xsl:value-of select="../product_identification/@product_code"/></td>
				<td><xsl:value-of select="offer_rate"/></td>
				<td><xsl:value-of select="../Final_value"/></td>
			  </tr>
			</xsl:if>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>