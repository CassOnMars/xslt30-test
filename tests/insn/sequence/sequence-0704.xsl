<?xml version="1.0" encoding="UTF-8"?>
<t:transform xmlns:t="http://www.w3.org/1999/XSL/Transform" version="2.0">
<!-- Purpose: test op:concatenate of three sequences, empty in middle -->

   <t:template match="/">
      <out>
         <t:text>(</t:text>
         <t:value-of select="for $i in ((1,2,3),(),(4,5,6)) return $i" separator=", "/>
         <t:text>)</t:text>
      </out>
   </t:template>
</t:transform>
