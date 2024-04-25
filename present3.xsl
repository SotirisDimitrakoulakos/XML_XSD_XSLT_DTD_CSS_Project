<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <h1>Sorted Products with doses</h1>
        <table border="1">
          <tr bgcolor="lightblue">
            <th>Product Name</th>
            <th>Product Code</th>
            <th>Number of Doses</th>
            <th>Dose Amount</th>
            <th>Final Value</th>
          </tr>
          <xsl:for-each select="Epipla_Diakosmisi_AE/product_list/product[accept_doses]">
			<xsl:if test="Final_value > 150">
			  <xsl:sort select="Final_value" data-type="number" order="descending"/>
			  <tr>
			    <td><xsl:value-of select="product_identification/@product_name"/></td>
				<td><xsl:value-of select="product_identification/@product_code"/></td>
				<td><xsl:value-of select="Final_value/accept_doses/num_doses"/></td>
				<td><xsl:value-of select="Final_value/accept_doses/ammount_dose"/></td>
				<td><xsl:value-of select="Final_value"/></td>
			  </tr>
			</xsl:if>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>