<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="MLX90614ESF-BAA-000-TU">
<packages>
<package name="TO254P942H425-4">
<wire x1="-3.495" y1="2.929" x2="-4.202" y2="3.636" width="0.127" layer="21"/>
<wire x1="-4.202" y1="3.636" x2="-3.636" y2="4.202" width="0.127" layer="21"/>
<wire x1="-3.636" y1="4.202" x2="-2.929" y2="3.495" width="0.127" layer="21"/>
<wire x1="-2.929" y1="3.495" x2="-3.495" y2="2.929" width="0.127" layer="21" curve="-349.85"/>
<wire x1="-2.91" y1="3.83" x2="-3.617" y2="4.537" width="0.05" layer="39"/>
<wire x1="-3.617" y1="4.537" x2="-4.537" y2="3.617" width="0.05" layer="39"/>
<wire x1="-4.537" y1="3.617" x2="-3.83" y2="2.91" width="0.05" layer="39"/>
<wire x1="-2.91" y1="3.83" x2="-3.83" y2="2.91" width="0.05" layer="39" curve="-344.471"/>
<text x="-3" y="5" size="1.27" layer="25">&gt;NAME</text>
<text x="-3" y="-5" size="1.27" layer="27" align="top-left">&gt;VALUE</text>
<circle x="-5.2" y="0" radius="0.1" width="0.2" layer="21"/>
<wire x1="-3.495" y1="2.929" x2="-4.202" y2="3.636" width="0.127" layer="51"/>
<wire x1="-4.202" y1="3.636" x2="-3.636" y2="4.202" width="0.127" layer="51"/>
<wire x1="-3.636" y1="4.202" x2="-2.929" y2="3.495" width="0.127" layer="51"/>
<wire x1="-2.929" y1="3.495" x2="-3.495" y2="2.929" width="0.127" layer="51" curve="-349.85"/>
<circle x="-5.2" y="0" radius="0.1" width="0.2" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.69" diameter="1.09" shape="square"/>
<pad name="2" x="0" y="-2.54" drill="0.69" diameter="1.09"/>
<pad name="3" x="2.54" y="0" drill="0.69" diameter="1.09"/>
<pad name="4" x="0" y="2.54" drill="0.69" diameter="1.09"/>
</package>
</packages>
<symbols>
<symbol name="MLX90614ESF-BAA-000-TU">
<wire x1="10.16" y1="5.08" x2="10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="-10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-7.62" x2="-10.16" y2="5.08" width="0.254" layer="94"/>
<wire x1="-10.16" y1="5.08" x2="10.16" y2="5.08" width="0.254" layer="94"/>
<text x="-10.16" y="6.35" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="SCL/VZ" x="-15.24" y="0" length="middle" direction="in"/>
<pin name="SDA/PWM" x="-15.24" y="-2.54" length="middle"/>
<pin name="VDD" x="15.24" y="2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="VSS" x="15.24" y="-5.08" length="middle" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MLX90614ESF-BAA-000-TU" prefix="U">
<description>Temperature Sensor Digital, Infrared (IR) -40°C ~ 85°C 16 b TO-39  &lt;a href="https://pricing.snapeda.com/parts/MLX90614ESF-BAA-000-TU/Melexis/view-part?ref=eda"&gt;Check availability&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="MLX90614ESF-BAA-000-TU" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TO254P942H425-4">
<connects>
<connect gate="G$1" pin="SCL/VZ" pad="1"/>
<connect gate="G$1" pin="SDA/PWM" pad="2"/>
<connect gate="G$1" pin="VDD" pad="3"/>
<connect gate="G$1" pin="VSS" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="In Stock"/>
<attribute name="DESCRIPTION" value=" Temperature Sensor Digital, Infrared (IR) -40°C ~ 85°C 16 b TO-39 "/>
<attribute name="MF" value="Melexis"/>
<attribute name="MP" value="MLX90614ESF-BAA-000-TU"/>
<attribute name="PACKAGE" value="TO-39 Melexis"/>
<attribute name="PRICE" value="None"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/MLX90614ESF-BAA-000-TU/?ref=eda"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="MAXREFDES117">
<packages>
<package name="MODULE_MAXREFDES117">
<wire x1="-4.572" y1="6.096" x2="4.572" y2="6.096" width="0.127" layer="51"/>
<wire x1="4.572" y1="6.096" x2="6.096" y2="4.572" width="0.127" layer="51" curve="-90"/>
<wire x1="6.096" y1="4.572" x2="6.096" y2="-4.572" width="0.127" layer="51"/>
<wire x1="6.096" y1="-4.572" x2="4.572" y2="-6.096" width="0.127" layer="51" curve="-90"/>
<wire x1="4.572" y1="-6.096" x2="-4.572" y2="-6.096" width="0.127" layer="51"/>
<wire x1="-4.572" y1="-6.096" x2="-6.096" y2="-4.572" width="0.127" layer="51" curve="-90"/>
<wire x1="-6.096" y1="-4.572" x2="-6.096" y2="4.572" width="0.127" layer="51"/>
<wire x1="-6.096" y1="4.572" x2="-4.572" y2="6.096" width="0.127" layer="51" curve="-90"/>
<wire x1="6.096" y1="-1" x2="6.096" y2="-4.572" width="0.127" layer="21"/>
<wire x1="6.096" y1="-4.572" x2="4.572" y2="-6.096" width="0.127" layer="21" curve="-90"/>
<wire x1="4.572" y1="-6.096" x2="3.46" y2="-6.096" width="0.127" layer="21"/>
<wire x1="-3.46" y1="-6.096" x2="-4.572" y2="-6.096" width="0.127" layer="21"/>
<wire x1="-4.572" y1="-6.096" x2="-6.096" y2="-4.572" width="0.127" layer="21" curve="-90"/>
<wire x1="-6.096" y1="-4.572" x2="-6.096" y2="-1" width="0.127" layer="21"/>
<wire x1="-6.096" y1="1" x2="-6.096" y2="4.572" width="0.127" layer="21"/>
<wire x1="-6.096" y1="4.572" x2="-4.572" y2="6.096" width="0.127" layer="21" curve="-90"/>
<wire x1="-4.572" y1="6.096" x2="-3.46" y2="6.096" width="0.127" layer="21"/>
<wire x1="3.46" y1="6.096" x2="4.572" y2="6.096" width="0.127" layer="21"/>
<wire x1="4.572" y1="6.096" x2="6.096" y2="4.572" width="0.127" layer="21" curve="-90"/>
<wire x1="6.096" y1="4.572" x2="6.096" y2="1" width="0.127" layer="21"/>
<wire x1="-4.572" y1="6.346" x2="4.572" y2="6.346" width="0.05" layer="39"/>
<wire x1="4.572" y1="6.346" x2="6.346" y2="4.572" width="0.05" layer="39" curve="-90"/>
<wire x1="6.346" y1="4.572" x2="6.346" y2="-4.572" width="0.05" layer="39"/>
<wire x1="6.346" y1="-4.572" x2="4.572" y2="-6.346" width="0.05" layer="39" curve="-90"/>
<wire x1="4.572" y1="-6.346" x2="-4.572" y2="-6.346" width="0.05" layer="39"/>
<wire x1="-4.572" y1="-6.346" x2="-6.346" y2="-4.572" width="0.05" layer="39" curve="-90"/>
<wire x1="-6.346" y1="-4.572" x2="-6.346" y2="4.572" width="0.05" layer="39"/>
<wire x1="-6.346" y1="4.572" x2="-4.572" y2="6.346" width="0.05" layer="39" curve="-90"/>
<text x="-6" y="6.5" size="1.27" layer="25">&gt;NAME</text>
<text x="-6" y="-6.5" size="1.27" layer="27" align="top-left">&gt;VALUE</text>
<pad name="SCL" x="0" y="5.08" drill="1.2"/>
<pad name="SCL1" x="0" y="-5.08" drill="1.2"/>
<pad name="INT" x="-2.54" y="5.08" drill="1.2"/>
<pad name="SDA" x="2.54" y="5.08" drill="1.2"/>
<pad name="INT1" x="-2.54" y="-5.08" drill="1.2"/>
<pad name="SDA1" x="2.54" y="-5.08" drill="1.2"/>
<pad name="GND" x="-5.08" y="0" drill="1.2"/>
<pad name="VIN" x="5.08" y="0" drill="1.2"/>
</package>
</packages>
<symbols>
<symbol name="MAXREFDES117">
<wire x1="-10.16" y1="7.62" x2="10.16" y2="7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="7.62" x2="10.16" y2="-10.16" width="0.254" layer="94"/>
<wire x1="10.16" y1="-10.16" x2="-10.16" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-10.16" x2="-10.16" y2="7.62" width="0.254" layer="94"/>
<text x="-10.16" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<pin name="INT" x="15.24" y="0" length="middle" direction="out" rot="R180"/>
<pin name="SCL" x="-15.24" y="0" length="middle" direction="in" function="clk"/>
<pin name="SDA" x="-15.24" y="-2.54" length="middle"/>
<pin name="GND" x="15.24" y="-7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="VIN" x="15.24" y="5.08" length="middle" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MAXREFDES117" prefix="U">
<description>MAX1921, MAX14595, MAX30102 - Medical, Pulse Oximeter (PO or SpO2) Sensor Evaluation Board  &lt;a href="https://pricing.snapeda.com/parts/MAXREFDES117/Maxim%20Integrated%20Products/view-part?ref=eda"&gt;Check availability&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="MAXREFDES117" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MODULE_MAXREFDES117">
<connects>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="INT" pad="INT INT1"/>
<connect gate="G$1" pin="SCL" pad="SCL SCL1"/>
<connect gate="G$1" pin="SDA" pad="SDA SDA1"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="In Stock"/>
<attribute name="DESCRIPTION" value=" System Board, Heart-Rate And Pulse-Oximetry Monitor "/>
<attribute name="MF" value="Maxim Integrated Products"/>
<attribute name="MP" value="MAXREFDES117"/>
<attribute name="PACKAGE" value="None"/>
<attribute name="PRICE" value="None"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/MAXREFDES117/?ref=eda"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead" urn="urn:adsk.eagle:library:325">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X04" urn="urn:adsk.eagle:footprint:22258/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-5.1562" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
</package>
<package name="1X04/90" urn="urn:adsk.eagle:footprint:22259/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-5.08" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-5.715" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="6.985" y="-4.445" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-4.191" y1="0.635" x2="-3.429" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="3.429" y1="0.635" x2="4.191" y2="1.143" layer="21"/>
<rectangle x1="-4.191" y1="-2.921" x2="-3.429" y2="-1.905" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
<rectangle x1="3.429" y1="-2.921" x2="4.191" y2="-1.905" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="1X04" urn="urn:adsk.eagle:package:22407/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X04"/>
</packageinstances>
</package3d>
<package3d name="1X04/90" urn="urn:adsk.eagle:package:22404/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X04/90"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PINHD4" urn="urn:adsk.eagle:symbol:22257/1" library_version="4">
<wire x1="-6.35" y1="-5.08" x2="1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="1.27" y2="7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="7.62" x2="-6.35" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="7.62" x2="-6.35" y2="-5.08" width="0.4064" layer="94"/>
<text x="-6.35" y="8.255" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X4" urn="urn:adsk.eagle:component:22499/5" prefix="JP" uservalue="yes" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD4" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X04">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22407/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="91" constant="no"/>
</technology>
</technologies>
</device>
<device name="/90" package="1X04/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22404/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="9" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="VCC" urn="urn:adsk.eagle:symbol:26928/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VCC" urn="urn:adsk.eagle:component:26957/1" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0.7" drill="0.6">
<clearance class="0" value="0.3"/>
</class>
</classes>
<parts>
<part name="U1" library="MLX90614ESF-BAA-000-TU" deviceset="MLX90614ESF-BAA-000-TU" device=""/>
<part name="U2" library="MAXREFDES117" deviceset="MAXREFDES117" device=""/>
<part name="JP1" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X4" device="/90" package3d_urn="urn:adsk.eagle:package:22404/2" value="I2C1"/>
<part name="P+1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="G$1" x="35" y="48" smashed="yes">
<attribute name="NAME" x="24.84" y="54.35" size="1.778" layer="95"/>
<attribute name="VALUE" x="24.84" y="37.84" size="1.778" layer="96"/>
</instance>
<instance part="U2" gate="G$1" x="35" y="71" smashed="yes">
<attribute name="NAME" x="24.84" y="79.382" size="1.778" layer="95"/>
<attribute name="VALUE" x="24.84" y="58.3" size="1.778" layer="96"/>
</instance>
<instance part="JP1" gate="A" x="4.5" y="59.5" smashed="yes">
<attribute name="NAME" x="7.65" y="60.755" size="1.778" layer="95"/>
<attribute name="VALUE" x="-1.85" y="51.88" size="1.778" layer="96"/>
</instance>
<instance part="P+1" gate="VCC" x="-6" y="76.5" smashed="yes">
<attribute name="VALUE" x="-8.54" y="73.96" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND1" gate="1" x="-5.5" y="50" smashed="yes">
<attribute name="VALUE" x="-8.04" y="47.46" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="GND1" gate="1" pin="GND"/>
<pinref part="JP1" gate="A" pin="4"/>
<wire x1="-5.5" y1="52.54" x2="-5.5" y2="56.96" width="0.1524" layer="91"/>
<wire x1="-5.5" y1="56.96" x2="1.96" y2="56.96" width="0.1524" layer="91"/>
<label x="-11" y="53" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="GND"/>
<wire x1="50.24" y1="63.38" x2="57.5" y2="63.38" width="0.1524" layer="91"/>
<wire x1="57.5" y1="63.38" x2="57.5" y2="63.5" width="0.1524" layer="91"/>
<label x="54" y="63.5" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VSS"/>
<wire x1="50.24" y1="42.92" x2="57" y2="42.92" width="0.1524" layer="91"/>
<wire x1="57" y1="42.92" x2="57" y2="43" width="0.1524" layer="91"/>
<label x="52" y="43" size="1.778" layer="95"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="P+1" gate="VCC" pin="VCC"/>
<pinref part="JP1" gate="A" pin="1"/>
<wire x1="-6" y1="73.96" x2="-6" y2="64.58" width="0.1524" layer="91"/>
<wire x1="-6" y1="64.58" x2="1.96" y2="64.58" width="0.1524" layer="91"/>
<label x="-5.5" y="71" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="VIN"/>
<wire x1="50.24" y1="76.08" x2="57" y2="76.08" width="0.1524" layer="91"/>
<wire x1="57" y1="76.08" x2="57" y2="76" width="0.1524" layer="91"/>
<label x="53" y="76.5" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VDD"/>
<wire x1="50.24" y1="50.54" x2="50.24" y2="50.5" width="0.1524" layer="91"/>
<wire x1="50.24" y1="50.5" x2="55.5" y2="50.5" width="0.1524" layer="91"/>
<label x="52.5" y="50.5" size="1.778" layer="95"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="JP1" gate="A" pin="2"/>
<wire x1="1.96" y1="62.04" x2="1.96" y2="62" width="0.1524" layer="91"/>
<wire x1="1.96" y1="62" x2="-12" y2="62" width="0.1524" layer="91"/>
<label x="-12" y="62" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="SDA"/>
<wire x1="19.76" y1="68.46" x2="19.76" y2="68.5" width="0.1524" layer="91"/>
<wire x1="19.76" y1="68.5" x2="14.5" y2="68.5" width="0.1524" layer="91"/>
<label x="14" y="66.5" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="SDA/PWM"/>
<wire x1="19.76" y1="45.46" x2="14.5" y2="45.46" width="0.1524" layer="91"/>
<wire x1="14.5" y1="45.46" x2="14.5" y2="45.5" width="0.1524" layer="91"/>
<label x="14" y="45.5" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<pinref part="JP1" gate="A" pin="3"/>
<wire x1="1.96" y1="59.5" x2="-12" y2="59.5" width="0.1524" layer="91"/>
<label x="-12" y="59.5" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="SCL"/>
<wire x1="19.76" y1="71" x2="14.5" y2="71" width="0.1524" layer="91"/>
<label x="10.5" y="71" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="SCL/VZ"/>
<wire x1="19.76" y1="48" x2="14.5" y2="48" width="0.1524" layer="91"/>
<label x="14" y="48" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="104,1,50.24,50.54,U1,VDD,VCC,,,"/>
<approved hash="104,1,50.24,42.92,U1,VSS,GND,,,"/>
<approved hash="104,1,50.24,76.08,U2,VIN,VCC,,,"/>
</errors>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
