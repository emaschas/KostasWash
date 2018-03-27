<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.7.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
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
<library name="Connectors">
<packages>
<package name="PIN">
<description>Single Pin</description>
<pad name="P$1" x="0" y="0" drill="0.8" diameter="1.778" shape="square"/>
<text x="1.27" y="0" size="1.27" layer="25" align="center-left">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="PIN">
<description>Single Pin</description>
<pin name="PIN1" x="0" y="0" visible="off" length="short"/>
<circle x="2.54" y="0" radius="0.254" width="0.508" layer="94"/>
<text x="3.81" y="0" size="1.27" layer="95" align="center-left">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="PIN">
<description>SINGLE PIN</description>
<gates>
<gate name="PIN" symbol="PIN" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PIN">
<connects>
<connect gate="PIN" pin="PIN1" pad="P$1"/>
</connects>
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
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="S1" library="Connectors" deviceset="PIN" device=""/>
<part name="S2" library="Connectors" deviceset="PIN" device=""/>
<part name=".S1" library="Connectors" deviceset="PIN" device=""/>
<part name=".S2" library="Connectors" deviceset="PIN" device=""/>
<part name="HA21" library="Connectors" deviceset="PIN" device=""/>
<part name="HA22" library="Connectors" deviceset="PIN" device=""/>
<part name="HA23" library="Connectors" deviceset="PIN" device=""/>
<part name="HA11" library="Connectors" deviceset="PIN" device=""/>
<part name="HA24" library="Connectors" deviceset="PIN" device=""/>
<part name="HA12" library="Connectors" deviceset="PIN" device=""/>
<part name="HA13" library="Connectors" deviceset="PIN" device=""/>
<part name="HB21" library="Connectors" deviceset="PIN" device=""/>
<part name="HB24" library="Connectors" deviceset="PIN" device=""/>
<part name="HB22" library="Connectors" deviceset="PIN" device=""/>
<part name="HB23" library="Connectors" deviceset="PIN" device=""/>
<part name="EVC1" library="Connectors" deviceset="PIN" device=""/>
<part name="EVC2" library="Connectors" deviceset="PIN" device=""/>
<part name="EVT1" library="Connectors" deviceset="PIN" device=""/>
<part name="EVT2" library="Connectors" deviceset="PIN" device=""/>
<part name="MCC" library="Connectors" deviceset="PIN" device=""/>
<part name="MC1" library="Connectors" deviceset="PIN" device=""/>
<part name="MC2" library="Connectors" deviceset="PIN" device=""/>
<part name="MPC" library="Connectors" deviceset="PIN" device=""/>
<part name="MP1" library="Connectors" deviceset="PIN" device=""/>
<part name="MP2" library="Connectors" deviceset="PIN" device=""/>
<part name="H1" library="Connectors" deviceset="PIN" device=""/>
<part name="H2" library="Connectors" deviceset="PIN" device=""/>
<part name="T1" library="Connectors" deviceset="PIN" device=""/>
<part name="T2" library="Connectors" deviceset="PIN" device=""/>
<part name="CI1" library="Connectors" deviceset="PIN" device=""/>
<part name="CI2" library="Connectors" deviceset="PIN" device=""/>
<part name="U$11" library="Connectors" deviceset="PIN" device=""/>
<part name="U$12" library="Connectors" deviceset="PIN" device=""/>
<part name="L3" library="Connectors" deviceset="PIN" device=""/>
<part name="L1" library="Connectors" deviceset="PIN" device=""/>
<part name="L2" library="Connectors" deviceset="PIN" device=""/>
<part name="EVT3" library="Connectors" deviceset="PIN" device=""/>
<part name="EVT4" library="Connectors" deviceset="PIN" device=""/>
<part name="EVT5" library="Connectors" deviceset="PIN" device=""/>
<part name="EVT6" library="Connectors" deviceset="PIN" device=""/>
<part name="EVT7" library="Connectors" deviceset="PIN" device=""/>
<part name="EVT8" library="Connectors" deviceset="PIN" device=""/>
<part name="EVT9" library="Connectors" deviceset="PIN" device=""/>
<part name="EVT10" library="Connectors" deviceset="PIN" device=""/>
<part name="EVT11" library="Connectors" deviceset="PIN" device=""/>
<part name="EVT12" library="Connectors" deviceset="PIN" device=""/>
<part name="EVT13" library="Connectors" deviceset="PIN" device=""/>
<part name="EVT14" library="Connectors" deviceset="PIN" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<circle x="73.66" y="71.12" radius="10.16" width="0.1524" layer="94"/>
<wire x1="22.86" y1="81.28" x2="22.86" y2="60.96" width="0.1524" layer="94" curve="180"/>
<wire x1="43.18" y1="60.96" x2="43.18" y2="81.28" width="0.1524" layer="94" curve="180"/>
<wire x1="22.86" y1="81.28" x2="43.18" y2="81.28" width="0.1524" layer="94"/>
<wire x1="43.18" y1="60.96" x2="22.86" y2="60.96" width="0.1524" layer="94"/>
<wire x1="17.78" y1="2.54" x2="17.78" y2="0.254" width="0.1524" layer="94"/>
<wire x1="17.78" y1="0.254" x2="17.78" y2="-0.254" width="0.1524" layer="94"/>
<wire x1="17.78" y1="-0.254" x2="17.78" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="17.78" y1="-2.54" x2="25.4" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="25.4" y1="-2.54" x2="27.94" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="27.94" y1="-2.54" x2="27.94" y2="2.54" width="0.1524" layer="94"/>
<wire x1="27.94" y1="2.54" x2="22.86" y2="2.54" width="0.1524" layer="94"/>
<wire x1="22.86" y1="2.54" x2="17.78" y2="2.54" width="0.1524" layer="94"/>
<wire x1="17.78" y1="0.254" x2="15.24" y2="0.254" width="0.1524" layer="94"/>
<wire x1="17.78" y1="-0.254" x2="15.24" y2="-0.254" width="0.1524" layer="94"/>
<wire x1="13.97" y1="2.54" x2="16.51" y2="2.54" width="0.1524" layer="94"/>
<wire x1="16.51" y1="2.54" x2="13.97" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="13.97" y1="-2.54" x2="16.51" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="16.51" y1="-2.54" x2="13.97" y2="2.54" width="0.1524" layer="94"/>
<wire x1="22.86" y1="7.62" x2="22.86" y2="2.54" width="0.1524" layer="94"/>
<wire x1="22.86" y1="2.54" x2="25.4" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="25.4" y1="-2.54" x2="25.4" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="45.72" y1="2.54" x2="45.72" y2="0.254" width="0.1524" layer="94"/>
<wire x1="45.72" y1="0.254" x2="45.72" y2="-0.254" width="0.1524" layer="94"/>
<wire x1="45.72" y1="-0.254" x2="45.72" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="45.72" y1="-2.54" x2="53.34" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="53.34" y1="-2.54" x2="55.88" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="55.88" y1="-2.54" x2="55.88" y2="2.54" width="0.1524" layer="94"/>
<wire x1="55.88" y1="2.54" x2="50.8" y2="2.54" width="0.1524" layer="94"/>
<wire x1="50.8" y1="2.54" x2="45.72" y2="2.54" width="0.1524" layer="94"/>
<wire x1="45.72" y1="0.254" x2="43.18" y2="0.254" width="0.1524" layer="94"/>
<wire x1="45.72" y1="-0.254" x2="43.18" y2="-0.254" width="0.1524" layer="94"/>
<wire x1="41.91" y1="2.54" x2="44.45" y2="2.54" width="0.1524" layer="94"/>
<wire x1="44.45" y1="2.54" x2="41.91" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="41.91" y1="-2.54" x2="44.45" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="44.45" y1="-2.54" x2="41.91" y2="2.54" width="0.1524" layer="94"/>
<wire x1="50.8" y1="7.62" x2="50.8" y2="2.54" width="0.1524" layer="94"/>
<wire x1="50.8" y1="2.54" x2="53.34" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="53.34" y1="-2.54" x2="53.34" y2="-7.62" width="0.1524" layer="94"/>
<circle x="114.3" y="0" radius="7.62" width="0.1524" layer="94"/>
<text x="114.3" y="0" size="3.048" layer="94" align="center">MC</text>
<circle x="144.78" y="0" radius="7.62" width="0.1524" layer="94"/>
<text x="144.78" y="0" size="3.048" layer="94" align="center">MP</text>
<wire x1="182.88" y1="58.42" x2="187.96" y2="58.42" width="0.1524" layer="94"/>
<wire x1="187.96" y1="58.42" x2="187.96" y2="38.1" width="0.1524" layer="94"/>
<wire x1="187.96" y1="38.1" x2="182.88" y2="38.1" width="0.1524" layer="94"/>
<wire x1="182.88" y1="38.1" x2="182.88" y2="58.42" width="0.1524" layer="94"/>
<text x="185.42" y="48.26" size="1.778" layer="94" rot="R90" align="center">HEATER</text>
<circle x="210.82" y="-2.54" radius="7.62" width="0.1524" layer="94"/>
<text x="210.82" y="-2.54" size="3.048" layer="94" align="center">CI</text>
<wire x1="185.42" y1="-12.7" x2="185.42" y2="-22.86" width="0.1524" layer="94" curve="-90"/>
<text x="182.88" y="-17.78" size="1.778" layer="94" rot="R90" align="center">THERMOSTAT</text>
<wire x1="-22.86" y1="-15.24" x2="-7.62" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="-15.24" x2="-7.62" y2="-30.48" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="-30.48" x2="-22.86" y2="-30.48" width="0.1524" layer="94"/>
<wire x1="-22.86" y1="-30.48" x2="-22.86" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="-20.32" y1="-27.94" x2="-10.16" y2="-25.4" width="0.1524" layer="94"/>
<wire x1="-20.32" y1="-17.78" x2="-20.32" y2="-19.05" width="0.1524" layer="94"/>
<wire x1="-20.32" y1="-19.05" x2="-21.336" y2="-19.05" width="0.1524" layer="94"/>
<wire x1="-21.336" y1="-19.05" x2="-21.336" y2="-25.654" width="0.1524" layer="94"/>
<wire x1="-21.336" y1="-25.654" x2="-20.32" y2="-25.654" width="0.1524" layer="94"/>
<wire x1="-20.32" y1="-25.654" x2="-19.304" y2="-25.654" width="0.1524" layer="94"/>
<wire x1="-19.304" y1="-25.654" x2="-19.304" y2="-19.05" width="0.1524" layer="94"/>
<wire x1="-19.304" y1="-19.05" x2="-20.32" y2="-19.05" width="0.1524" layer="94"/>
<wire x1="-20.32" y1="-27.94" x2="-20.32" y2="-25.654" width="0.1524" layer="94"/>
<wire x1="-50.8" y1="95.758" x2="-43.18" y2="95.758" width="0.1524" layer="94"/>
<wire x1="-50.8" y1="82.804" x2="-46.99" y2="82.804" width="0.1524" layer="94"/>
<wire x1="-46.99" y1="82.804" x2="-43.18" y2="82.804" width="0.1524" layer="94"/>
<wire x1="-46.99" y1="82.804" x2="-46.99" y2="99.06" width="0.1524" layer="94"/>
<wire x1="-45.72" y1="100.33" x2="-48.26" y2="100.33" width="0.1524" layer="94" curve="-180"/>
<wire x1="147.32" y1="30.48" x2="144.78" y2="22.86" width="0.1524" layer="94"/>
<wire x1="142.24" y1="33.02" x2="152.4" y2="33.02" width="0.1524" layer="94"/>
<wire x1="152.4" y1="33.02" x2="152.4" y2="20.32" width="0.1524" layer="94"/>
<wire x1="152.4" y1="20.32" x2="142.24" y2="20.32" width="0.1524" layer="94"/>
<wire x1="142.24" y1="20.32" x2="142.24" y2="33.02" width="0.1524" layer="94"/>
<wire x1="111.76" y1="30.48" x2="109.22" y2="22.86" width="0.1524" layer="94"/>
<wire x1="106.68" y1="33.02" x2="116.84" y2="33.02" width="0.1524" layer="94"/>
<wire x1="116.84" y1="33.02" x2="116.84" y2="20.32" width="0.1524" layer="94"/>
<wire x1="116.84" y1="20.32" x2="106.68" y2="20.32" width="0.1524" layer="94"/>
<wire x1="106.68" y1="20.32" x2="106.68" y2="33.02" width="0.1524" layer="94"/>
<wire x1="124.46" y1="40.64" x2="130.302" y2="40.64" width="0.1524" layer="94"/>
<wire x1="137.16" y1="40.64" x2="131.318" y2="40.64" width="0.1524" layer="94"/>
<wire x1="130.302" y1="43.18" x2="130.302" y2="40.64" width="0.1524" layer="94"/>
<wire x1="130.302" y1="40.64" x2="130.302" y2="38.1" width="0.1524" layer="94"/>
<wire x1="131.318" y1="43.18" x2="131.318" y2="40.64" width="0.1524" layer="94"/>
<wire x1="131.318" y1="40.64" x2="131.318" y2="38.1" width="0.1524" layer="94"/>
<text x="130.81" y="44.196" size="1.778" layer="94" align="bottom-center">CAPACITOR</text>
<wire x1="111.76" y1="55.88" x2="109.22" y2="48.26" width="0.1524" layer="94"/>
<wire x1="106.68" y1="58.42" x2="116.84" y2="58.42" width="0.1524" layer="94"/>
<wire x1="116.84" y1="58.42" x2="116.84" y2="45.72" width="0.1524" layer="94"/>
<wire x1="116.84" y1="45.72" x2="106.68" y2="45.72" width="0.1524" layer="94"/>
<wire x1="106.68" y1="45.72" x2="106.68" y2="58.42" width="0.1524" layer="94"/>
<wire x1="147.32" y1="55.88" x2="144.78" y2="48.26" width="0.1524" layer="94"/>
<wire x1="142.24" y1="58.42" x2="152.4" y2="58.42" width="0.1524" layer="94"/>
<wire x1="152.4" y1="58.42" x2="152.4" y2="45.72" width="0.1524" layer="94"/>
<wire x1="152.4" y1="45.72" x2="142.24" y2="45.72" width="0.1524" layer="94"/>
<wire x1="142.24" y1="45.72" x2="142.24" y2="58.42" width="0.1524" layer="94"/>
</plain>
<instances>
<instance part="S1" gate="PIN" x="-53.34" y="93.98"/>
<instance part="S2" gate="PIN" x="-53.34" y="81.28"/>
<instance part=".S1" gate="PIN" x="-40.64" y="93.98" rot="R180"/>
<instance part=".S2" gate="PIN" x="-40.64" y="81.28" rot="R180"/>
<instance part="HA21" gate="PIN" x="20.32" y="81.28" rot="R270"/>
<instance part="HA22" gate="PIN" x="17.78" y="63.5" rot="R90"/>
<instance part="HA23" gate="PIN" x="27.94" y="63.5" rot="R90"/>
<instance part="HA11" gate="PIN" x="40.64" y="81.28" rot="R270"/>
<instance part="HA24" gate="PIN" x="30.48" y="76.2" rot="R180"/>
<instance part="HA12" gate="PIN" x="38.1" y="63.5" rot="R90"/>
<instance part="HA13" gate="PIN" x="48.26" y="63.5" rot="R90"/>
<instance part="HB21" gate="PIN" x="71.12" y="81.28" rot="R270"/>
<instance part="HB24" gate="PIN" x="81.28" y="76.2" rot="R180"/>
<instance part="HB22" gate="PIN" x="68.58" y="63.5" rot="R90"/>
<instance part="HB23" gate="PIN" x="78.74" y="63.5" rot="R90"/>
<instance part="EVC1" gate="PIN" x="22.86" y="10.16" rot="R270"/>
<instance part="EVC2" gate="PIN" x="25.4" y="-10.16" rot="R90"/>
<instance part="EVT1" gate="PIN" x="50.8" y="10.16" rot="R270"/>
<instance part="EVT2" gate="PIN" x="53.34" y="-10.16" rot="R90"/>
<instance part="MCC" gate="PIN" x="114.3" y="-10.16" rot="R90"/>
<instance part="MC1" gate="PIN" x="109.22" y="8.382" rot="R270"/>
<instance part="MC2" gate="PIN" x="119.38" y="8.382" rot="R270"/>
<instance part="MPC" gate="PIN" x="144.78" y="-10.16" rot="R90"/>
<instance part="MP1" gate="PIN" x="139.7" y="8.382" rot="R270"/>
<instance part="MP2" gate="PIN" x="149.86" y="8.382" rot="R270"/>
<instance part="H1" gate="PIN" x="185.42" y="60.96" rot="R270"/>
<instance part="H2" gate="PIN" x="185.42" y="35.56" rot="R90"/>
<instance part="T1" gate="PIN" x="185.42" y="-10.16" rot="R270"/>
<instance part="T2" gate="PIN" x="185.42" y="-25.4" rot="R90"/>
<instance part="CI1" gate="PIN" x="210.82" y="7.62" rot="R270"/>
<instance part="CI2" gate="PIN" x="210.82" y="-12.7" rot="R90"/>
<instance part="U$11" gate="PIN" x="121.92" y="40.64"/>
<instance part="U$12" gate="PIN" x="139.7" y="40.64" rot="R180"/>
<instance part="L3" gate="PIN" x="-7.62" y="-27.94" rot="R180"/>
<instance part="L1" gate="PIN" x="-20.32" y="-15.24" rot="R270"/>
<instance part="L2" gate="PIN" x="-22.86" y="-27.94"/>
<instance part="EVT3" gate="PIN" x="147.32" y="33.02" rot="R270"/>
<instance part="EVT4" gate="PIN" x="144.78" y="20.32" rot="R90"/>
<instance part="EVT5" gate="PIN" x="149.86" y="20.32" rot="R90"/>
<instance part="EVT6" gate="PIN" x="111.76" y="33.02" rot="R270"/>
<instance part="EVT7" gate="PIN" x="109.22" y="20.32" rot="R90"/>
<instance part="EVT8" gate="PIN" x="114.3" y="20.32" rot="R90"/>
<instance part="EVT9" gate="PIN" x="111.76" y="58.42" rot="R270"/>
<instance part="EVT10" gate="PIN" x="109.22" y="45.72" rot="R90"/>
<instance part="EVT11" gate="PIN" x="114.3" y="45.72" rot="R90"/>
<instance part="EVT12" gate="PIN" x="147.32" y="58.42" rot="R270"/>
<instance part="EVT13" gate="PIN" x="144.78" y="45.72" rot="R90"/>
<instance part="EVT14" gate="PIN" x="149.86" y="45.72" rot="R90"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="HA21" gate="PIN" pin="PIN1"/>
<wire x1="20.32" y1="81.28" x2="20.32" y2="86.36" width="0.1524" layer="91"/>
<wire x1="20.32" y1="86.36" x2="40.64" y2="86.36" width="0.1524" layer="91"/>
<pinref part="HA11" gate="PIN" pin="PIN1"/>
<wire x1="40.64" y1="86.36" x2="40.64" y2="81.28" width="0.1524" layer="91"/>
<pinref part="HB21" gate="PIN" pin="PIN1"/>
<wire x1="71.12" y1="81.28" x2="71.12" y2="86.36" width="0.1524" layer="91"/>
<wire x1="71.12" y1="86.36" x2="40.64" y2="86.36" width="0.1524" layer="91"/>
<junction x="40.64" y="86.36"/>
<pinref part=".S1" gate="PIN" pin="PIN1"/>
<wire x1="-40.64" y1="93.98" x2="-20.32" y2="93.98" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="93.98" x2="20.32" y2="93.98" width="0.1524" layer="91"/>
<wire x1="20.32" y1="93.98" x2="20.32" y2="86.36" width="0.1524" layer="91"/>
<junction x="20.32" y="86.36"/>
<wire x1="-20.32" y1="93.98" x2="-20.32" y2="-15.24" width="0.1524" layer="91"/>
<junction x="-20.32" y="93.98"/>
<pinref part="L1" gate="PIN" pin="PIN1"/>
</segment>
</net>
<net name="OVERFLOW" class="0">
<segment>
<pinref part="HA24" gate="PIN" pin="PIN1"/>
<wire x1="30.48" y1="76.2" x2="33.02" y2="76.2" width="0.1524" layer="91"/>
<wire x1="33.02" y1="76.2" x2="33.02" y2="101.6" width="0.1524" layer="91"/>
<wire x1="33.02" y1="101.6" x2="83.82" y2="101.6" width="0.1524" layer="91"/>
<wire x1="83.82" y1="101.6" x2="83.82" y2="76.2" width="0.1524" layer="91"/>
<pinref part="HB24" gate="PIN" pin="PIN1"/>
<wire x1="83.82" y1="76.2" x2="81.28" y2="76.2" width="0.1524" layer="91"/>
<junction x="83.82" y="101.6"/>
<wire x1="83.82" y1="101.6" x2="231.14" y2="101.6" width="0.1524" layer="91"/>
<wire x1="231.14" y1="101.6" x2="231.14" y2="66.04" width="0.1524" layer="91"/>
<pinref part="CI1" gate="PIN" pin="PIN1"/>
<wire x1="210.82" y1="7.62" x2="210.82" y2="66.04" width="0.1524" layer="91"/>
<wire x1="210.82" y1="66.04" x2="210.82" y2="86.36" width="0.1524" layer="91"/>
<wire x1="231.14" y1="66.04" x2="210.82" y2="66.04" width="0.1524" layer="91"/>
<junction x="210.82" y="66.04"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="EVC2" gate="PIN" pin="PIN1"/>
<wire x1="25.4" y1="-10.16" x2="25.4" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-20.32" x2="53.34" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="EVT2" gate="PIN" pin="PIN1"/>
<wire x1="53.34" y1="-20.32" x2="53.34" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="53.34" y1="-20.32" x2="53.34" y2="-27.94" width="0.1524" layer="91"/>
<junction x="53.34" y="-20.32"/>
<pinref part="L3" gate="PIN" pin="PIN1"/>
<wire x1="-7.62" y1="-27.94" x2="53.34" y2="-27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="MCC" gate="PIN" pin="PIN1"/>
<wire x1="114.3" y1="-10.16" x2="114.3" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="114.3" y1="-25.4" x2="144.78" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="MPC" gate="PIN" pin="PIN1"/>
<wire x1="144.78" y1="-25.4" x2="144.78" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="144.78" y1="-25.4" x2="144.78" y2="-43.18" width="0.1524" layer="91"/>
<junction x="144.78" y="-25.4"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="T1" gate="PIN" pin="PIN1"/>
<pinref part="H2" gate="PIN" pin="PIN1"/>
<wire x1="185.42" y1="-10.16" x2="185.42" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="T2" gate="PIN" pin="PIN1"/>
<wire x1="185.42" y1="-25.4" x2="185.42" y2="-43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="CI2" gate="PIN" pin="PIN1"/>
<wire x1="210.82" y1="-12.7" x2="210.82" y2="-40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="H1" gate="PIN" pin="PIN1"/>
<wire x1="185.42" y1="60.96" x2="185.42" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="L2" gate="PIN" pin="PIN1"/>
<wire x1="-22.86" y1="-27.94" x2="-33.02" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="-27.94" x2="-33.02" y2="81.28" width="0.1524" layer="91"/>
<pinref part=".S2" gate="PIN" pin="PIN1"/>
<wire x1="-33.02" y1="81.28" x2="-40.64" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="S1" gate="PIN" pin="PIN1"/>
<wire x1="-53.34" y1="93.98" x2="-63.5" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="S2" gate="PIN" pin="PIN1"/>
<wire x1="-53.34" y1="81.28" x2="-63.5" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<wire x1="109.22" y1="7.62" x2="109.22" y2="8.382" width="0.1524" layer="91"/>
<pinref part="EVT7" gate="PIN" pin="PIN1"/>
<pinref part="MC1" gate="PIN" pin="PIN1"/>
<wire x1="109.22" y1="8.382" x2="109.22" y2="20.32" width="0.1524" layer="91"/>
<junction x="109.22" y="8.382"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="EVT8" gate="PIN" pin="PIN1"/>
<wire x1="114.3" y1="20.32" x2="114.3" y2="17.78" width="0.1524" layer="91"/>
<wire x1="114.3" y1="17.78" x2="139.7" y2="17.78" width="0.1524" layer="91"/>
<wire x1="139.7" y1="17.78" x2="139.7" y2="8.382" width="0.1524" layer="91"/>
<pinref part="MP1" gate="PIN" pin="PIN1"/>
<wire x1="139.7" y1="8.382" x2="139.7" y2="7.62" width="0.1524" layer="91"/>
<junction x="139.7" y="8.382"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="EVT5" gate="PIN" pin="PIN1"/>
<wire x1="149.86" y1="7.62" x2="149.86" y2="8.382" width="0.1524" layer="91"/>
<pinref part="MP2" gate="PIN" pin="PIN1"/>
<wire x1="149.86" y1="8.382" x2="149.86" y2="20.32" width="0.1524" layer="91"/>
<junction x="149.86" y="8.382"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<wire x1="119.38" y1="7.62" x2="119.38" y2="8.382" width="0.1524" layer="91"/>
<wire x1="119.38" y1="8.382" x2="119.38" y2="15.24" width="0.1524" layer="91"/>
<wire x1="119.38" y1="15.24" x2="144.78" y2="15.24" width="0.1524" layer="91"/>
<pinref part="EVT4" gate="PIN" pin="PIN1"/>
<wire x1="144.78" y1="15.24" x2="144.78" y2="20.32" width="0.1524" layer="91"/>
<pinref part="MC2" gate="PIN" pin="PIN1"/>
<junction x="119.38" y="8.382"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="U$12" gate="PIN" pin="PIN1"/>
<wire x1="139.7" y1="40.64" x2="147.32" y2="40.64" width="0.1524" layer="91"/>
<pinref part="EVT3" gate="PIN" pin="PIN1"/>
<wire x1="147.32" y1="40.64" x2="147.32" y2="33.02" width="0.1524" layer="91"/>
<pinref part="EVT14" gate="PIN" pin="PIN1"/>
<wire x1="149.86" y1="45.72" x2="149.86" y2="40.64" width="0.1524" layer="91"/>
<wire x1="149.86" y1="40.64" x2="147.32" y2="40.64" width="0.1524" layer="91"/>
<junction x="147.32" y="40.64"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="EVT6" gate="PIN" pin="PIN1"/>
<wire x1="111.76" y1="33.02" x2="111.76" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U$11" gate="PIN" pin="PIN1"/>
<wire x1="111.76" y1="40.64" x2="121.92" y2="40.64" width="0.1524" layer="91"/>
<pinref part="EVT10" gate="PIN" pin="PIN1"/>
<wire x1="109.22" y1="45.72" x2="109.22" y2="40.64" width="0.1524" layer="91"/>
<wire x1="109.22" y1="40.64" x2="111.76" y2="40.64" width="0.1524" layer="91"/>
<junction x="111.76" y="40.64"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="EVT12" gate="PIN" pin="PIN1"/>
<wire x1="147.32" y1="58.42" x2="147.32" y2="63.5" width="0.1524" layer="91"/>
<pinref part="EVT9" gate="PIN" pin="PIN1"/>
<wire x1="147.32" y1="63.5" x2="147.32" y2="83.82" width="0.1524" layer="91"/>
<wire x1="111.76" y1="58.42" x2="111.76" y2="63.5" width="0.1524" layer="91"/>
<wire x1="111.76" y1="63.5" x2="147.32" y2="63.5" width="0.1524" layer="91"/>
<junction x="147.32" y="63.5"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
