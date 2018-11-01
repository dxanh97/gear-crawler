<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : laptop.xsl
    Created on : November 1, 2018, 12:40 PM
    Author     : dangxuananh1997
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html"/>
  <xsl:template match="/">
    <xsl:apply-templates/>
  </xsl:template>
  <xsl:template match="keyboard">
    <table>
      <tr>
        <th>Number of key</th>
        <td><xsl:value-of select="numberOfKey"/></td>
      </tr>
      <tr>
        <th>Press Force</th>
        <td><xsl:value-of select="pressForce"/></td>
      </tr>
      <tr>
        <th>Distance</th>
        <td><xsl:value-of select="distance"/></td>
      </tr>
      <tr>
        <th>LED</th>
        <td><xsl:value-of select="led"/></td>
      </tr>
      <tr>
        <th>Weight</th>
        <td><xsl:value-of select="weight"/></td>
      </tr>
      <tr>
        <th>Size</th>
        <td><xsl:value-of select="size"/></td>
      </tr>
      <tr>
        <th>Switches</th>
        <td><xsl:value-of select="switches"/></td>
      </tr>
      <tr>
        <th>Link</th>
        <td>
          <xsl:element name="a">
            <xsl:attribute name="href">
              <xsl:text><xsl:value-of select="product/productLink"/></xsl:text>
            </xsl:attribute>
            <xsl:value-of select="product/productLink"/>
          </xsl:element>
        </td>
      </tr>
    </table>
  </xsl:template>
  <xsl:template match="product" />
</xsl:stylesheet>
