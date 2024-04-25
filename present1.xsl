<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <h1>Products</h1>
        <table border="1">
          <tr bgcolor="lightblue">
            <th>Product Name</th>
            <th>Product Code</th>
            <th>Manufacturer Country</th>
            <th>Certified</th>
          </tr>
          <xsl:apply-templates select="Epipla_Diakosmisi_AE/product_list/product"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="product">
    <tr>
      <td><xsl:value-of select="product_identification/@product_name"/></td>
      <td><xsl:value-of select="product_identification/@product_code"/></td>
      <td><xsl:value-of select="product_characteristics/manufacturer_country"/></td>
      <td><xsl:value-of select="product_characteristics/certified/@certificate"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>