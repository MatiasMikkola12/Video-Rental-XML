<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <!-- Output a line return -->
        <xsl:text>&#10;</xsl:text>
        <!-- This loops through all the roles for each video whose genre is "action" -->
        <xsl:for-each select="/customers/customer/invoices/invoice/rentals/rental_item[../../paid= 'Yes']">
            
            <xsl:if test="item/rating = 'PG-13'">
            <xsl:text>&#39;</xsl:text>
                
            <xsl:value-of select="../../../../@customer_no"/>
            <xsl:text>&#39;&#44; &#39;</xsl:text>

            <xsl:value-of select="../../@invoice_no" />
            <xsl:text>&#39;&#44; &#39;</xsl:text>
                
            <xsl:value-of select="../../totalPrice" />
            <xsl:text>&#39;&#44; &#39;</xsl:text>
                
            <xsl:value-of select="../../rental_type" />
            <xsl:text>&#39;&#44; &#39;</xsl:text>
                
            <xsl:value-of select="../../invoice_date" />
            <xsl:text>&#39;&#44; &#39;</xsl:text>
                
            <xsl:value-of select="../../checkout_date" />
            <xsl:text>&#39;&#44; &#39;</xsl:text>
            
            <xsl:value-of select="../../organization/@organization_no" />
            <xsl:text>&#39;&#44; &#39;</xsl:text>
            
            <xsl:value-of select="../../employee/@employee_no" />
            <xsl:text>&#39;&#44; &#39;</xsl:text>
               
                <xsl:value-of select="item/@asin" />
                <xsl:text>&#39;&#44; &#39;</xsl:text>
                
                <xsl:value-of select="item/release_date" />
                <xsl:text>&#39;&#44; &#39;</xsl:text>
                
                <xsl:value-of select="item/due_date" />
                <xsl:text>&#39;&#44; &#39;</xsl:text>
                
                <xsl:value-of select="item/return_date" />
                <xsl:text>&#39; &#10;</xsl:text>
                
            </xsl:if>
            
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>