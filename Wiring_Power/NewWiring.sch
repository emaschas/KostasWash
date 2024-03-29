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
<layer number="97" name="Info" color="15" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Cable" color="5" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="Kostas">
<packages>
<package name="VALVE">
<pad name="P$1" x="0" y="0" drill="0.8" shape="square"/>
<pad name="P$2" x="0" y="-2.54" drill="0.8" shape="square"/>
</package>
<package name="RELAY">
<pad name="C" x="-1.27" y="0" drill="0.8" shape="square"/>
<pad name="R" x="-1.27" y="2.54" drill="0.8" shape="square"/>
<pad name="T" x="-1.27" y="-2.54" drill="0.8" shape="square"/>
<wire x1="1.27" y1="3.81" x2="-11.43" y2="3.81" width="0.127" layer="21"/>
<wire x1="-11.43" y1="3.81" x2="-11.43" y2="-3.81" width="0.127" layer="21"/>
<wire x1="-11.43" y1="-3.81" x2="1.27" y2="-3.81" width="0.127" layer="21"/>
<wire x1="1.27" y1="-3.81" x2="1.27" y2="3.81" width="0.127" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="0.635" y2="2.54" width="0.127" layer="22"/>
<wire x1="-3.175" y1="-2.54" x2="0.635" y2="-2.54" width="0.127" layer="22"/>
<wire x1="0.635" y1="-2.54" x2="0.635" y2="-1.27" width="0.127" layer="22"/>
<wire x1="-3.175" y1="0" x2="-0.381" y2="0" width="0.127" layer="22"/>
<wire x1="0.381" y1="1.27" x2="-0.381" y2="0" width="0.127" layer="22"/>
<wire x1="0.635" y1="2.54" x2="0.635" y2="1.27" width="0.127" layer="22"/>
<text x="-8.89" y="0" size="1.27" layer="21" rot="R90" align="center">&gt;NAME</text>
<wire x1="-10.795" y1="3.175" x2="-3.175" y2="3.175" width="0.127" layer="21"/>
<wire x1="-3.175" y1="3.175" x2="-3.175" y2="-3.175" width="0.127" layer="21"/>
<wire x1="-3.175" y1="-3.175" x2="-10.795" y2="-3.175" width="0.127" layer="21"/>
<wire x1="-10.795" y1="-3.175" x2="-10.795" y2="3.175" width="0.127" layer="21"/>
<text x="0.635" y="3.175" size="0.508" layer="21" rot="R90" align="center">NC</text>
<text x="0.635" y="-3.175" size="0.508" layer="21" rot="R90" align="center">NO</text>
<text x="0.635" y="0" size="0.508" layer="21" rot="R90" align="center">COM</text>
</package>
<package name="PS1">
<pad name="P$1" x="0" y="0" drill="0.8" shape="square"/>
<pad name="P$2" x="0" y="-2.54" drill="0.8" shape="square"/>
<pad name="P$3" x="0" y="-5.08" drill="0.8" shape="square"/>
<pad name="P$4" x="0" y="-7.62" drill="0.8" shape="square"/>
</package>
<package name="PS2">
<pad name="P$1" x="0" y="0" drill="0.8" shape="square"/>
<pad name="P$2" x="0" y="-2.54" drill="0.8" shape="square"/>
<pad name="P$3" x="0" y="-5.08" drill="0.8" shape="square"/>
<pad name="P$4" x="0" y="-7.62" drill="0.8" shape="square"/>
<pad name="P$5" x="0" y="-10.16" drill="0.8" shape="square"/>
<pad name="P$6" x="0" y="-12.7" drill="0.8" shape="square"/>
<pad name="P$7" x="0" y="-15.24" drill="0.8" shape="square"/>
<pad name="P$8" x="0" y="-17.78" drill="0.8" shape="square"/>
</package>
<package name="CABLE">
<description>Single Pin</description>
<pad name="P$1" x="0" y="0" drill="0.8" diameter="1.778" shape="square"/>
<text x="1.27" y="1.27" size="1.27" layer="25" rot="R90" align="center-left">&gt;NAME</text>
<pad name="P$2" x="0" y="-6.35" drill="0.002540625" diameter="0.254"/>
<wire x1="-1.27" y1="1.27" x2="1.27" y2="1.27" width="0.127" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="-3.81" width="0.127" layer="21"/>
<wire x1="1.27" y1="-3.81" x2="-1.27" y2="-3.81" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-3.81" x2="-1.27" y2="1.27" width="0.127" layer="21"/>
<polygon width="0" layer="17">
<vertex x="0.381" y="-2.54"/>
<vertex x="0.889" y="-2.54"/>
<vertex x="0.889" y="-3.429"/>
<vertex x="-0.889" y="-3.429"/>
<vertex x="-0.889" y="-2.54"/>
<vertex x="-0.381" y="-2.54" curve="90"/>
<vertex x="0" y="-2.921" curve="90"/>
</polygon>
<polygon width="0" layer="17">
<vertex x="-0.381" y="-2.54"/>
<vertex x="-0.889" y="-2.54"/>
<vertex x="-0.889" y="-1.651"/>
<vertex x="0.889" y="-1.651"/>
<vertex x="0.889" y="-2.54"/>
<vertex x="0.381" y="-2.54" curve="90"/>
<vertex x="0" y="-2.159" curve="90"/>
</polygon>
</package>
<package name="CAPACITOR">
<pad name="C1" x="-1.27" y="0" drill="0.8" shape="square"/>
<pad name="C2" x="1.27" y="0" drill="0.8" shape="square"/>
</package>
<package name="MOTOR-3">
<pad name="M1" x="-2.54" y="0" drill="0.8" shape="square"/>
<pad name="MC" x="0" y="0" drill="0.8" shape="square"/>
<pad name="M3" x="2.54" y="0" drill="0.8" shape="square"/>
</package>
<package name="MOTOR-2">
<pad name="M1" x="0" y="0" drill="0.8" shape="square"/>
<pad name="M3" x="2.54" y="0" drill="0.8" shape="square"/>
</package>
<package name="THERMOSTAT">
<pad name="T1" x="0" y="0" drill="0.8" shape="square"/>
<pad name="T2" x="2.54" y="0" drill="0.8" shape="square"/>
</package>
<package name="LOCK">
<pad name="L" x="0" y="0" drill="0.8" shape="square"/>
<pad name="N" x="2.54" y="0" drill="0.8" shape="square"/>
<pad name="C" x="5.08" y="0" drill="0.8" shape="square"/>
</package>
<package name="SWITCH">
<pad name="I1" x="0" y="0" drill="0.8" shape="square"/>
<pad name="I2" x="2.54" y="0" drill="0.8" shape="square"/>
<pad name="O1" x="5.08" y="0" drill="0.8" shape="square"/>
<pad name="O2" x="7.62" y="0" drill="0.8" shape="square"/>
</package>
<package name="HEATER">
<pad name="H1" x="0" y="0" drill="0.8" shape="square"/>
<pad name="H2" x="2.54" y="0" drill="0.8" shape="square"/>
</package>
<package name="DOMINO">
<description>Single Pin</description>
<pad name="P$1" x="0" y="0" drill="0.8" diameter="1.778" shape="square"/>
<text x="1.27" y="1.27" size="1.27" layer="25" rot="R90" align="center-left">&gt;NAME</text>
<pad name="P$2" x="0" y="-2.54" drill="0.8" diameter="1.778" shape="square"/>
<wire x1="-1.27" y1="1.27" x2="1.27" y2="1.27" width="0.127" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="-3.81" width="0.127" layer="21"/>
<wire x1="1.27" y1="-3.81" x2="-1.27" y2="-3.81" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-3.81" x2="-1.27" y2="1.27" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="VALVE">
<wire x1="7.62" y1="7.62" x2="7.62" y2="2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="2.54" x2="7.62" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="7.62" width="0.254" layer="94"/>
<wire x1="2.54" y1="7.62" x2="4.826" y2="7.62" width="0.254" layer="94"/>
<wire x1="4.826" y1="7.62" x2="5.334" y2="7.62" width="0.254" layer="94"/>
<wire x1="5.334" y1="7.62" x2="7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="12.7" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="10.16" x2="2.54" y2="12.7" width="0.254" layer="94"/>
<wire x1="2.54" y1="12.7" x2="2.54" y2="10.16" width="0.254" layer="94"/>
<wire x1="2.54" y1="10.16" x2="7.62" y2="12.7" width="0.254" layer="94"/>
<wire x1="7.62" y1="2.54" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="4.826" y1="11.176" x2="4.826" y2="7.62" width="0.254" layer="94"/>
<wire x1="5.334" y1="11.176" x2="5.334" y2="7.62" width="0.254" layer="94"/>
<pin name="P$1" x="0" y="0" visible="off" length="short"/>
<pin name="P$2" x="10.16" y="2.54" visible="off" length="short" rot="R180"/>
<text x="5.08" y="-5.08" size="1.778" layer="95" align="center">&gt;NAME</text>
</symbol>
<symbol name="RELAY">
<wire x1="0" y1="5.08" x2="12.7" y2="5.08" width="0.254" layer="94"/>
<wire x1="12.7" y1="5.08" x2="12.7" y2="-5.08" width="0.254" layer="94"/>
<wire x1="12.7" y1="-5.08" x2="0" y2="-5.08" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="0" y2="5.08" width="0.254" layer="94"/>
<pin name="C" x="-2.54" y="0" visible="off" length="middle"/>
<pin name="R" x="15.24" y="2.54" visible="off" length="middle" rot="R180"/>
<pin name="T" x="15.24" y="-2.54" visible="off" length="middle" rot="R180"/>
<wire x1="2.54" y1="0" x2="10.16" y2="2.54" width="0.254" layer="94"/>
<circle x="2.54" y="0" radius="0.254" width="0.508" layer="94"/>
<circle x="10.16" y="-2.54" radius="0.254" width="0.508" layer="94"/>
<circle x="10.16" y="2.54" radius="0.254" width="0.508" layer="94"/>
<text x="6.35" y="7.62" size="1.778" layer="95" align="center">&gt;NAME</text>
</symbol>
<symbol name="PS1">
<circle x="0" y="0" radius="10.16" width="0.254" layer="94"/>
<circle x="0" y="5.08" radius="0.254" width="0.508" layer="94"/>
<circle x="5.08" y="5.08" radius="0.254" width="0.508" layer="94"/>
<circle x="-5.08" y="-5.08" radius="0.254" width="0.508" layer="94"/>
<circle x="5.08" y="-5.08" radius="0.254" width="0.508" layer="94"/>
<pin name="P$1" x="0" y="12.7" visible="off" length="middle" rot="R270"/>
<pin name="P$2" x="5.08" y="12.7" visible="off" length="middle" rot="R270"/>
<pin name="P$3" x="-5.08" y="-12.7" visible="off" length="middle" rot="R90"/>
<pin name="P$4" x="5.08" y="-12.7" visible="off" length="middle" rot="R90"/>
<wire x1="0" y1="7.62" x2="0" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="5.08" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="7.62" width="0.1524" layer="94"/>
<wire x1="0" y1="5.08" x2="-5.08" y2="-5.08" width="0.1524" layer="94"/>
<text x="-12.7" y="0" size="1.778" layer="95" rot="R90" align="center">&gt;NAME</text>
<text x="-7.62" y="-12.7" size="1.27" layer="95" align="bottom-right">L1</text>
<text x="7.62" y="-12.7" size="1.27" layer="95">H1</text>
<text x="-2.54" y="12.7" size="1.27" layer="95" align="bottom-right">C1</text>
<text x="7.62" y="12.7" size="1.27" layer="95">HH1</text>
<text x="-0.508" y="5.08" size="1.27" layer="95" align="bottom-right">21</text>
<text x="-5.588" y="-5.08" size="1.27" layer="95" align="bottom-right">22</text>
<text x="4.572" y="-5.08" size="1.27" layer="95" align="bottom-right">23</text>
<text x="4.572" y="5.08" size="1.27" layer="95" align="bottom-right">24</text>
</symbol>
<symbol name="PS2">
<circle x="-10.16" y="5.08" radius="0.254" width="0.508" layer="94"/>
<circle x="-15.24" y="-5.08" radius="0.254" width="0.508" layer="94"/>
<circle x="-5.08" y="-5.08" radius="0.254" width="0.508" layer="94"/>
<pin name="P$1" x="-10.16" y="12.7" visible="off" length="middle" rot="R270"/>
<pin name="P$3" x="-15.24" y="-12.7" visible="off" length="middle" rot="R90"/>
<pin name="P$4" x="-5.08" y="-12.7" visible="off" length="middle" rot="R90"/>
<wire x1="-10.16" y1="7.62" x2="-10.16" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-15.24" y1="-5.08" x2="-15.24" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="5.08" x2="-15.24" y2="-5.08" width="0.1524" layer="94"/>
<text x="-22.86" y="0" size="1.778" layer="95" rot="R90" align="center">&gt;NAME</text>
<text x="-17.78" y="-12.7" size="1.27" layer="95" align="bottom-right">L2</text>
<text x="-7.62" y="-12.7" size="1.27" layer="95" align="bottom-right">H2</text>
<text x="-12.7" y="12.7" size="1.27" layer="95" align="bottom-right">C2</text>
<wire x1="10.16" y1="10.16" x2="10.16" y2="-10.16" width="0.254" layer="94" curve="-180"/>
<wire x1="-10.16" y1="-10.16" x2="-10.16" y2="10.16" width="0.254" layer="94" curve="-180"/>
<circle x="10.16" y="5.08" radius="0.254" width="0.508" layer="94"/>
<circle x="15.24" y="5.08" radius="0.254" width="0.508" layer="94"/>
<circle x="5.08" y="-5.08" radius="0.254" width="0.508" layer="94"/>
<circle x="15.24" y="-5.08" radius="0.254" width="0.508" layer="94"/>
<pin name="P$5" x="10.16" y="12.7" visible="off" length="middle" rot="R270"/>
<pin name="P$6" x="15.24" y="12.7" visible="off" length="middle" rot="R270"/>
<pin name="P$7" x="5.08" y="-12.7" visible="off" length="middle" rot="R90"/>
<pin name="P$8" x="15.24" y="-12.7" visible="off" length="middle" rot="R90"/>
<wire x1="10.16" y1="7.62" x2="10.16" y2="5.08" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="5.08" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="15.24" y1="-5.08" x2="15.24" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="15.24" y1="5.08" x2="15.24" y2="7.62" width="0.1524" layer="94"/>
<wire x1="10.16" y1="5.08" x2="5.08" y2="-5.08" width="0.1524" layer="94"/>
<text x="2.54" y="-12.7" size="1.27" layer="95" align="bottom-right">L3</text>
<text x="12.7" y="-12.7" size="1.27" layer="95" align="bottom-right">H3</text>
<text x="7.62" y="12.7" size="1.27" layer="95" align="bottom-right">C3</text>
<text x="17.78" y="12.7" size="1.27" layer="95">HH3</text>
<wire x1="-10.16" y1="10.16" x2="10.16" y2="10.16" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-10.16" x2="10.16" y2="-10.16" width="0.254" layer="94"/>
<circle x="-5.08" y="5.08" radius="0.254" width="0.508" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="7.62" width="0.1524" layer="94"/>
<pin name="P$2" x="-5.08" y="12.7" visible="off" length="middle" rot="R270"/>
<text x="-2.54" y="12.7" size="1.27" layer="95">HH2</text>
<text x="9.652" y="5.08" size="1.27" layer="95" align="bottom-right">11</text>
<text x="-5.588" y="5.08" size="1.27" layer="95" align="bottom-right">24</text>
<text x="-10.668" y="5.08" size="1.27" layer="95" align="bottom-right">21</text>
<text x="-15.748" y="-5.08" size="1.27" layer="95" align="bottom-right">22</text>
<text x="-5.588" y="-5.08" size="1.27" layer="95" align="bottom-right">23</text>
<text x="4.572" y="-5.08" size="1.27" layer="95" align="bottom-right">12</text>
<text x="14.732" y="-5.08" size="1.27" layer="95" align="bottom-right">13</text>
<text x="14.732" y="5.08" size="1.27" layer="95" align="bottom-right">14</text>
</symbol>
<symbol name="CABLE">
<description>Cable connection</description>
<pin name="PIN1" x="0" y="0" visible="off" length="short"/>
<text x="3.81" y="1.27" size="1.778" layer="95" rot="MR90" align="center-left">&gt;NAME</text>
<wire x1="3.302" y1="0.508" x2="4.318" y2="0.508" width="0.254" layer="94"/>
<wire x1="4.318" y1="0.508" x2="4.318" y2="0" width="0.254" layer="94"/>
<wire x1="4.318" y1="0" x2="4.318" y2="-0.508" width="0.254" layer="94"/>
<wire x1="4.318" y1="-0.508" x2="3.302" y2="-0.508" width="0.254" layer="94"/>
<pin name="PIN2" x="7.62" y="0" visible="off" length="short" rot="R180"/>
<wire x1="4.318" y1="0" x2="5.08" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="3.556" y2="0" width="0.254" layer="94"/>
</symbol>
<symbol name="CAPACITOR">
<pin name="C1" x="-7.62" y="0" visible="off" length="short"/>
<pin name="C2" x="7.62" y="0" visible="off" length="short" rot="R180"/>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="0" width="0.8128" layer="94"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-5.08" width="0.8128" layer="94"/>
<wire x1="1.27" y1="5.08" x2="1.27" y2="0" width="0.8128" layer="94"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-5.08" width="0.8128" layer="94"/>
<wire x1="-5.08" y1="0" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0" x2="5.08" y2="0" width="0.1524" layer="94"/>
<text x="0" y="7.62" size="1.778" layer="95" align="center">&gt;NAME</text>
</symbol>
<symbol name="MOTOR-3">
<circle x="0" y="0" radius="7.62" width="0.254" layer="94"/>
<text x="-10.16" y="0" size="1.778" layer="95" rot="R90" align="center">&gt;NAME</text>
<text x="0" y="0" size="3.048" layer="94" align="center">&gt;VALUE</text>
<pin name="M1" x="-5.08" y="10.16" visible="off" length="short" rot="R270"/>
<pin name="M2" x="5.08" y="10.16" visible="off" length="short" rot="R270"/>
<pin name="MC" x="0" y="-12.7" visible="off" length="short" rot="R90"/>
<wire x1="-5.08" y1="7.62" x2="-5.08" y2="5.842" width="0.1524" layer="94"/>
<wire x1="5.08" y1="7.62" x2="5.08" y2="5.842" width="0.1524" layer="94"/>
<wire x1="0" y1="-10.16" x2="0" y2="-7.62" width="0.1524" layer="94"/>
<circle x="0" y="-7.62" radius="0.254" width="0.508" layer="94"/>
<circle x="-5.08" y="5.588" radius="0.254" width="0.508" layer="94"/>
<circle x="5.08" y="5.588" radius="0.254" width="0.508" layer="94"/>
</symbol>
<symbol name="MOTOR-2">
<circle x="0" y="0" radius="7.62" width="0.254" layer="94"/>
<text x="-10.16" y="0" size="1.778" layer="95" rot="R90" align="center">&gt;NAME</text>
<text x="0" y="0" size="3.048" layer="94" align="center">&gt;VALUE</text>
<pin name="M1" x="0" y="12.7" visible="off" length="short" rot="R270"/>
<pin name="M2" x="0" y="-12.7" visible="off" length="short" rot="R90"/>
<wire x1="0" y1="10.16" x2="0" y2="7.62" width="0.1524" layer="94"/>
<wire x1="0" y1="-10.16" x2="0" y2="-7.62" width="0.1524" layer="94"/>
<circle x="0" y="-7.62" radius="0.254" width="0.508" layer="94"/>
<circle x="0" y="7.62" radius="0.254" width="0.508" layer="94"/>
</symbol>
<symbol name="THERMOSTAT">
<pin name="P$1" x="-7.62" y="0" visible="off" length="short"/>
<pin name="P$2" x="7.62" y="0" visible="off" length="short" rot="R180"/>
<circle x="-5.08" y="0" radius="0.254" width="0.508" layer="94"/>
<circle x="5.08" y="0" radius="0.254" width="0.508" layer="94"/>
<wire x1="-5.08" y1="0" x2="5.08" y2="0" width="0.254" layer="94" curve="-106.260205"/>
<text x="0" y="5.08" size="1.778" layer="95" align="center">&gt;NAME</text>
</symbol>
<symbol name="LOCK">
<pin name="L" x="-10.16" y="-5.08" visible="off" length="short"/>
<pin name="C" x="12.7" y="-5.08" visible="off" length="short" rot="R180"/>
<pin name="N" x="-2.54" y="12.7" visible="off" length="short" rot="R270"/>
<wire x1="-7.62" y1="-7.62" x2="10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="10.16" y2="-5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="10.16" y2="10.16" width="0.254" layer="94"/>
<wire x1="10.16" y1="10.16" x2="-2.54" y2="10.16" width="0.254" layer="94"/>
<wire x1="-2.54" y1="10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="10.16" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="-7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-3.81" y1="7.62" x2="-2.54" y2="7.62" width="0.254" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="-1.27" y2="7.62" width="0.254" layer="94"/>
<wire x1="-1.27" y1="7.62" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-3.81" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-3.81" y1="-2.54" x2="-3.81" y2="7.62" width="0.254" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="-2.54" y2="10.16" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="0" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="0" y1="-5.08" x2="5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="10.16" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-7.62" y2="-5.08" width="0.1524" layer="94"/>
<circle x="5.08" y="-5.08" radius="0.254" width="0.508" layer="94"/>
<circle x="0" y="-5.08" radius="0.254" width="0.508" layer="94"/>
<circle x="-2.54" y="-5.08" radius="0.254" width="0.508" layer="94"/>
<circle x="-2.54" y="-2.54" radius="0.254" width="0.508" layer="94"/>
<circle x="-2.54" y="7.62" radius="0.254" width="0.508" layer="94"/>
<text x="-10.16" y="-2.54" size="1.778" layer="95" align="center">L</text>
<text x="12.7" y="-2.54" size="1.778" layer="95" align="center">C</text>
<text x="0" y="12.7" size="1.778" layer="95" align="center">N</text>
</symbol>
<symbol name="SWITCH">
<pin name="IN1" x="-10.16" y="5.08" visible="off" length="short"/>
<pin name="IN2" x="-10.16" y="-5.08" visible="off" length="short"/>
<pin name="OUT1" x="10.16" y="5.08" visible="off" length="short" rot="R180"/>
<pin name="OUT2" x="10.16" y="-5.08" visible="off" length="short" rot="R180"/>
<circle x="-2.54" y="5.08" radius="0.254" width="0.508" layer="94"/>
<circle x="2.54" y="5.08" radius="0.254" width="0.508" layer="94"/>
<circle x="2.54" y="-5.08" radius="0.254" width="0.508" layer="94"/>
<circle x="-2.54" y="-5.08" radius="0.254" width="0.508" layer="94"/>
<wire x1="-2.54" y1="-3.556" x2="0" y2="-3.556" width="0.254" layer="94"/>
<wire x1="0" y1="-3.556" x2="2.54" y2="-3.556" width="0.254" layer="94"/>
<wire x1="-2.54" y1="6.604" x2="2.54" y2="6.604" width="0.254" layer="94"/>
<wire x1="1.27" y1="11.43" x2="0" y2="10.16" width="0.254" layer="94" curve="-90"/>
<wire x1="0" y1="10.16" x2="-1.27" y2="11.43" width="0.254" layer="94" curve="-90"/>
<wire x1="0" y1="10.16" x2="0" y2="-3.556" width="0.254" layer="94"/>
<wire x1="-7.62" y1="5.08" x2="-2.54" y2="5.08" width="0.1524" layer="94"/>
<wire x1="2.54" y1="5.08" x2="7.62" y2="5.08" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="7.62" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-7.62" y2="-5.08" width="0.1524" layer="94"/>
<text x="0" y="15.24" size="1.778" layer="95" align="center">&gt;NAME</text>
</symbol>
<symbol name="HEATER">
<pin name="P$1" x="-7.62" y="0" visible="off" length="short"/>
<pin name="P$2" x="7.62" y="0" visible="off" length="short" rot="R180"/>
<circle x="-5.08" y="0" radius="0.254" width="0.508" layer="94"/>
<circle x="5.08" y="0" radius="0.254" width="0.508" layer="94"/>
<text x="0" y="5.08" size="1.778" layer="95" align="center">&gt;NAME</text>
<wire x1="-5.08" y1="1.524" x2="5.08" y2="1.524" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.524" x2="5.08" y2="-1.524" width="0.254" layer="94"/>
<wire x1="5.08" y1="-1.524" x2="-5.08" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-1.524" x2="-5.08" y2="1.524" width="0.254" layer="94"/>
</symbol>
<symbol name="DOMINO">
<description>Cable connection</description>
<pin name="PIN1" x="0" y="0" visible="off" length="short"/>
<text x="1.27" y="1.27" size="1.778" layer="95" rot="MR90" align="center-left">&gt;NAME</text>
<pin name="PIN2" x="2.54" y="0" visible="off" length="short" rot="R180"/>
<circle x="1.27" y="0" radius="0.254" width="0.508" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VALVE">
<description>Electrovalve</description>
<gates>
<gate name="VALVE" symbol="VALVE" x="0" y="0"/>
</gates>
<devices>
<device name="" package="VALVE">
<connects>
<connect gate="VALVE" pin="P$1" pad="P$1"/>
<connect gate="VALVE" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RELAY">
<description>RELAY</description>
<gates>
<gate name="RELAY" symbol="RELAY" x="2.54" y="0"/>
</gates>
<devices>
<device name="" package="RELAY">
<connects>
<connect gate="RELAY" pin="C" pad="C"/>
<connect gate="RELAY" pin="R" pad="R"/>
<connect gate="RELAY" pin="T" pad="T"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PS1">
<description>PRESSURE SWITCH - SIMPLE</description>
<gates>
<gate name="G$1" symbol="PS1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PS1">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
<connect gate="G$1" pin="P$3" pad="P$3"/>
<connect gate="G$1" pin="P$4" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PS2">
<description>PRESSURE SWITCH - DOUBLE</description>
<gates>
<gate name="G$1" symbol="PS2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PS2">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$8"/>
<connect gate="G$1" pin="P$3" pad="P$2"/>
<connect gate="G$1" pin="P$4" pad="P$3"/>
<connect gate="G$1" pin="P$5" pad="P$4"/>
<connect gate="G$1" pin="P$6" pad="P$5"/>
<connect gate="G$1" pin="P$7" pad="P$6"/>
<connect gate="G$1" pin="P$8" pad="P$7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CABLE">
<description>CABLE CONNECTION&lt;br&gt;
MALE ON PCB&lt;br&gt;
FEMALE ON CABLE SIDE</description>
<gates>
<gate name="CABLE" symbol="CABLE" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="CABLE">
<connects>
<connect gate="CABLE" pin="PIN1" pad="P$1"/>
<connect gate="CABLE" pin="PIN2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CAPACITOR">
<gates>
<gate name="CAPA" symbol="CAPACITOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAPACITOR">
<connects>
<connect gate="CAPA" pin="C1" pad="C1"/>
<connect gate="CAPA" pin="C2" pad="C2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MOTOR-3">
<gates>
<gate name="M" symbol="MOTOR-3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MOTOR-3">
<connects>
<connect gate="M" pin="M1" pad="M1"/>
<connect gate="M" pin="M2" pad="M3"/>
<connect gate="M" pin="MC" pad="MC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MOTOR-2">
<description>MOTOR 2 PHASES</description>
<gates>
<gate name="M" symbol="MOTOR-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MOTOR-2">
<connects>
<connect gate="M" pin="M1" pad="M1"/>
<connect gate="M" pin="M2" pad="M3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="THERMOSTAT">
<description>THERMOSTAT</description>
<gates>
<gate name="G$1" symbol="THERMOSTAT" x="0" y="0"/>
</gates>
<devices>
<device name="" package="THERMOSTAT">
<connects>
<connect gate="G$1" pin="P$1" pad="T1"/>
<connect gate="G$1" pin="P$2" pad="T2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LOCK">
<description>DOOR LOCK</description>
<gates>
<gate name="G$1" symbol="LOCK" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LOCK">
<connects>
<connect gate="G$1" pin="C" pad="C"/>
<connect gate="G$1" pin="L" pad="L"/>
<connect gate="G$1" pin="N" pad="N"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SWITCH">
<description>POWER SWITCH</description>
<gates>
<gate name="G$1" symbol="SWITCH" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SWITCH">
<connects>
<connect gate="G$1" pin="IN1" pad="I1"/>
<connect gate="G$1" pin="IN2" pad="I2"/>
<connect gate="G$1" pin="OUT1" pad="O1"/>
<connect gate="G$1" pin="OUT2" pad="O2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="HEATER">
<description>HEATER</description>
<gates>
<gate name="H" symbol="HEATER" x="0" y="0"/>
</gates>
<devices>
<device name="" package="HEATER">
<connects>
<connect gate="H" pin="P$1" pad="H1"/>
<connect gate="H" pin="P$2" pad="H2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DOMINO">
<description>DOMINO</description>
<gates>
<gate name="G$1" symbol="DOMINO" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DOMINO">
<connects>
<connect gate="G$1" pin="PIN1" pad="P$1"/>
<connect gate="G$1" pin="PIN2" pad="P$2"/>
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
<class number="1" name="Cable" width="0" drill="0">
</class>
</classes>
<parts>
<part name="E5" library="Kostas" deviceset="CABLE" device=""/>
<part name="COLD_WATER_VALVE" library="Kostas" deviceset="VALVE" device=""/>
<part name="HOT_WATER_VALVE" library="Kostas" deviceset="VALVE" device=""/>
<part name="R04" library="Kostas" deviceset="RELAY" device=""/>
<part name="R05" library="Kostas" deviceset="RELAY" device=""/>
<part name="R01" library="Kostas" deviceset="RELAY" device=""/>
<part name="R02" library="Kostas" deviceset="RELAY" device=""/>
<part name="R03" library="Kostas" deviceset="RELAY" device=""/>
<part name="R06" library="Kostas" deviceset="RELAY" device=""/>
<part name="R07" library="Kostas" deviceset="RELAY" device=""/>
<part name="R08" library="Kostas" deviceset="RELAY" device=""/>
<part name="R09" library="Kostas" deviceset="RELAY" device=""/>
<part name="R10" library="Kostas" deviceset="RELAY" device=""/>
<part name="R11" library="Kostas" deviceset="RELAY" device=""/>
<part name="PRESSURE-SWITCH_HB" library="Kostas" deviceset="PS1" device=""/>
<part name="PRESSURE-SWITCH_HA" library="Kostas" deviceset="PS2" device=""/>
<part name="E9" library="Kostas" deviceset="CABLE" device=""/>
<part name="D4" library="Kostas" deviceset="CABLE" device=""/>
<part name="E12" library="Kostas" deviceset="CABLE" device=""/>
<part name="E11" library="Kostas" deviceset="CABLE" device=""/>
<part name="C10" library="Kostas" deviceset="CABLE" device=""/>
<part name="B7" library="Kostas" deviceset="CABLE" device=""/>
<part name="B6" library="Kostas" deviceset="CABLE" device=""/>
<part name="D2" library="Kostas" deviceset="CABLE" device=""/>
<part name="C6" library="Kostas" deviceset="CABLE" device=""/>
<part name="C2" library="Kostas" deviceset="CABLE" device=""/>
<part name="E2" library="Kostas" deviceset="CABLE" device=""/>
<part name="D6" library="Kostas" deviceset="CABLE" device=""/>
<part name="D10" library="Kostas" deviceset="CABLE" device=""/>
<part name="C12" library="Kostas" deviceset="CABLE" device=""/>
<part name="E7" library="Kostas" deviceset="CABLE" device=""/>
<part name="C11" library="Kostas" deviceset="CABLE" device=""/>
<part name="C8" library="Kostas" deviceset="CABLE" device=""/>
<part name="C7" library="Kostas" deviceset="CABLE" device=""/>
<part name="C1" library="Kostas" deviceset="CABLE" device=""/>
<part name="D11" library="Kostas" deviceset="CABLE" device=""/>
<part name="D3" library="Kostas" deviceset="CABLE" device=""/>
<part name="E4" library="Kostas" deviceset="CABLE" device=""/>
<part name="E6" library="Kostas" deviceset="CABLE" device=""/>
<part name="R12" library="Kostas" deviceset="RELAY" device=""/>
<part name="R13" library="Kostas" deviceset="RELAY" device=""/>
<part name="R14" library="Kostas" deviceset="RELAY" device=""/>
<part name="R15" library="Kostas" deviceset="RELAY" device=""/>
<part name="R16" library="Kostas" deviceset="RELAY" device=""/>
<part name="N1" library="Kostas" deviceset="CABLE" device=""/>
<part name="CAPACITOR" library="Kostas" deviceset="CAPACITOR" device=""/>
<part name="WASH_MOTOR" library="Kostas" deviceset="MOTOR-3" device="" value="MP"/>
<part name="SPIN_MOTOR" library="Kostas" deviceset="MOTOR-3" device="" value="MC"/>
<part name="PUMP" library="Kostas" deviceset="MOTOR-2" device="" value="CI"/>
<part name="THERMOSTAT" library="Kostas" deviceset="THERMOSTAT" device=""/>
<part name="U$1" library="Kostas" deviceset="LOCK" device=""/>
<part name="MAIN_SWITCH" library="Kostas" deviceset="SWITCH" device=""/>
<part name="HEATER" library="Kostas" deviceset="HEATER" device=""/>
<part name="X2" library="Kostas" deviceset="DOMINO" device=""/>
<part name="X1" library="Kostas" deviceset="DOMINO" device=""/>
<part name="X3" library="Kostas" deviceset="DOMINO" device=""/>
<part name="X4" library="Kostas" deviceset="DOMINO" device=""/>
<part name="X5" library="Kostas" deviceset="DOMINO" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="302.26" y="195.58" size="3.048" layer="95" align="center">NOT USED</text>
</plain>
<instances>
<instance part="E5" gate="CABLE" x="30.48" y="38.1" rot="R270"/>
<instance part="COLD_WATER_VALVE" gate="VALVE" x="71.12" y="50.8" rot="R90"/>
<instance part="HOT_WATER_VALVE" gate="VALVE" x="99.06" y="50.8" rot="R90"/>
<instance part="R04" gate="RELAY" x="66.04" y="93.98" rot="MR270"/>
<instance part="R05" gate="RELAY" x="93.98" y="93.98" rot="MR270"/>
<instance part="R01" gate="RELAY" x="27.94" y="137.16" rot="MR270"/>
<instance part="R02" gate="RELAY" x="63.5" y="137.16" rot="MR270"/>
<instance part="R03" gate="RELAY" x="83.82" y="137.16" rot="MR270"/>
<instance part="R06" gate="RELAY" x="134.62" y="93.98" rot="MR270"/>
<instance part="R07" gate="RELAY" x="200.66" y="185.42" rot="MR0"/>
<instance part="R08" gate="RELAY" x="218.44" y="185.42"/>
<instance part="R09" gate="RELAY" x="236.22" y="165.1" rot="MR270"/>
<instance part="R10" gate="RELAY" x="205.74" y="114.3" rot="MR270"/>
<instance part="R11" gate="RELAY" x="269.24" y="114.3" rot="MR270"/>
<instance part="PRESSURE-SWITCH_HB" gate="G$1" x="129.54" y="165.1"/>
<instance part="PRESSURE-SWITCH_HA" gate="G$1" x="78.74" y="165.1"/>
<instance part="E9" gate="CABLE" x="55.88" y="10.16" rot="R180"/>
<instance part="D4" gate="CABLE" x="203.2" y="76.2" rot="R270"/>
<instance part="E12" gate="CABLE" x="99.06" y="15.24" rot="R90"/>
<instance part="E11" gate="CABLE" x="165.1" y="15.24" rot="R90"/>
<instance part="C10" gate="CABLE" x="236.22" y="15.24" rot="R90"/>
<instance part="B7" gate="CABLE" x="119.38" y="35.56" rot="R270"/>
<instance part="B6" gate="CABLE" x="137.16" y="40.64" rot="R90"/>
<instance part="D2" gate="CABLE" x="213.36" y="76.2" rot="R270"/>
<instance part="C6" gate="CABLE" x="261.62" y="76.2" rot="R270"/>
<instance part="C2" gate="CABLE" x="271.78" y="76.2" rot="R270"/>
<instance part="E2" gate="CABLE" x="213.36" y="127"/>
<instance part="D6" gate="CABLE" x="259.08" y="127" rot="R180"/>
<instance part="D10" gate="CABLE" x="71.12" y="15.24" rot="R90"/>
<instance part="C12" gate="CABLE" x="137.16" y="76.2" rot="R270"/>
<instance part="E7" gate="CABLE" x="53.34" y="190.5"/>
<instance part="C11" gate="CABLE" x="180.34" y="182.88" rot="R180"/>
<instance part="C8" gate="CABLE" x="63.5" y="142.24" rot="R90"/>
<instance part="C7" gate="CABLE" x="83.82" y="142.24" rot="R90"/>
<instance part="C1" gate="CABLE" x="124.46" y="142.24" rot="R90"/>
<instance part="D11" gate="CABLE" x="134.62" y="142.24" rot="R90"/>
<instance part="D3" gate="CABLE" x="96.52" y="76.2" rot="R270"/>
<instance part="E4" gate="CABLE" x="68.58" y="76.2" rot="R270"/>
<instance part="E6" gate="CABLE" x="22.86" y="198.12" rot="R180"/>
<instance part="R12" gate="RELAY" x="307.34" y="182.88" rot="MR0"/>
<instance part="R13" gate="RELAY" x="307.34" y="167.64" rot="MR0"/>
<instance part="R14" gate="RELAY" x="307.34" y="152.4" rot="MR0"/>
<instance part="R15" gate="RELAY" x="307.34" y="137.16" rot="MR0"/>
<instance part="R16" gate="RELAY" x="307.34" y="121.92" rot="MR0"/>
<instance part="N1" gate="CABLE" x="99.06" y="40.64" rot="R90"/>
<instance part="CAPACITOR" gate="CAPA" x="236.22" y="127"/>
<instance part="WASH_MOTOR" gate="M" x="208.28" y="55.88"/>
<instance part="SPIN_MOTOR" gate="M" x="266.7" y="55.88"/>
<instance part="PUMP" gate="M" x="165.1" y="55.88"/>
<instance part="THERMOSTAT" gate="G$1" x="109.22" y="25.4" rot="MR0"/>
<instance part="U$1" gate="G$1" x="33.02" y="15.24"/>
<instance part="MAIN_SWITCH" gate="G$1" x="-15.24" y="88.9"/>
<instance part="HEATER" gate="H" x="137.16" y="58.42" rot="R90"/>
<instance part="X2" gate="G$1" x="269.24" y="121.92" rot="R90"/>
<instance part="X1" gate="G$1" x="205.74" y="121.92" rot="R90"/>
<instance part="X3" gate="G$1" x="208.28" y="198.12"/>
<instance part="X4" gate="G$1" x="86.36" y="111.76" rot="R90"/>
<instance part="X5" gate="G$1" x="86.36" y="106.68" rot="R270"/>
</instances>
<busses>
</busses>
<nets>
<net name="NEUTRAL" class="0">
<segment>
<wire x1="53.34" y1="190.5" x2="45.72" y2="190.5" width="0.3048" layer="91"/>
<wire x1="45.72" y1="190.5" x2="45.72" y2="198.12" width="0.3048" layer="91"/>
<junction x="45.72" y="198.12"/>
<wire x1="45.72" y1="198.12" x2="27.94" y2="198.12" width="0.3048" layer="91"/>
<wire x1="27.94" y1="198.12" x2="22.86" y2="198.12" width="0.3048" layer="91"/>
<junction x="27.94" y="198.12"/>
<wire x1="27.94" y1="139.7" x2="27.94" y2="198.12" width="0.3048" layer="91"/>
<wire x1="45.72" y1="198.12" x2="208.28" y2="198.12" width="0.3048" layer="91"/>
<pinref part="R01" gate="RELAY" pin="C"/>
<pinref part="E7" gate="CABLE" pin="PIN1"/>
<pinref part="E6" gate="CABLE" pin="PIN1"/>
<pinref part="X3" gate="G$1" pin="PIN1"/>
</segment>
</net>
<net name="LIVE" class="0">
<segment>
<wire x1="71.12" y1="10.16" x2="99.06" y2="10.16" width="0.3048" layer="91"/>
<wire x1="99.06" y1="10.16" x2="236.22" y2="10.16" width="0.3048" layer="91"/>
<wire x1="236.22" y1="10.16" x2="165.1" y2="10.16" width="0.3048" layer="91"/>
<wire x1="165.1" y1="10.16" x2="165.1" y2="15.24" width="0.3048" layer="91"/>
<junction x="236.22" y="10.16"/>
<wire x1="236.22" y1="15.24" x2="236.22" y2="10.16" width="0.3048" layer="91"/>
<pinref part="E11" gate="CABLE" pin="PIN1"/>
<pinref part="C10" gate="CABLE" pin="PIN1"/>
<pinref part="D10" gate="CABLE" pin="PIN1"/>
<wire x1="71.12" y1="15.24" x2="71.12" y2="10.16" width="0.3048" layer="91"/>
<pinref part="E9" gate="CABLE" pin="PIN1"/>
<wire x1="71.12" y1="10.16" x2="55.88" y2="10.16" width="0.3048" layer="91"/>
<junction x="71.12" y="10.16"/>
<pinref part="E12" gate="CABLE" pin="PIN1"/>
<wire x1="99.06" y1="15.24" x2="99.06" y2="10.16" width="0.3048" layer="91"/>
<junction x="99.06" y="10.16"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="0" y1="10.16" x2="0" y2="83.82" width="0.1524" layer="91"/>
<wire x1="0" y1="83.82" x2="-5.08" y2="83.82" width="0.1524" layer="91"/>
<wire x1="0" y1="10.16" x2="22.86" y2="10.16" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="L"/>
<pinref part="MAIN_SWITCH" gate="G$1" pin="OUT2"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="MAIN_SWITCH" gate="G$1" pin="IN1"/>
<wire x1="-33.02" y1="93.98" x2="-25.4" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="MAIN_SWITCH" gate="G$1" pin="IN2"/>
<wire x1="-33.02" y1="83.82" x2="-25.4" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<wire x1="208.28" y1="93.98" x2="261.62" y2="81.28" width="0.3048" layer="91"/>
<wire x1="261.62" y1="81.28" x2="261.62" y2="76.2" width="0.3048" layer="91"/>
<pinref part="R10" gate="RELAY" pin="T"/>
<wire x1="208.28" y1="99.06" x2="208.28" y2="93.98" width="0.3048" layer="91"/>
<pinref part="C6" gate="CABLE" pin="PIN1"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<wire x1="213.36" y1="81.28" x2="266.7" y2="93.98" width="0.3048" layer="91"/>
<wire x1="266.7" y1="93.98" x2="266.7" y2="99.06" width="0.3048" layer="91"/>
<pinref part="R11" gate="RELAY" pin="R"/>
<pinref part="D2" gate="CABLE" pin="PIN1"/>
<wire x1="213.36" y1="76.2" x2="213.36" y2="81.28" width="0.3048" layer="91"/>
</segment>
</net>
<net name="PHASE3" class="0">
<segment>
<wire x1="86.36" y1="109.22" x2="86.36" y2="106.68" width="0.3048" layer="91"/>
<wire x1="124.46" y1="142.24" x2="124.46" y2="109.22" width="0.3048" layer="91"/>
<wire x1="124.46" y1="109.22" x2="86.36" y2="109.22" width="0.3048" layer="91"/>
<junction x="86.36" y="109.22"/>
<pinref part="C1" gate="CABLE" pin="PIN1"/>
<pinref part="X4" gate="G$1" pin="PIN1"/>
<wire x1="86.36" y1="111.76" x2="86.36" y2="109.22" width="0.3048" layer="91"/>
<pinref part="X5" gate="G$1" pin="PIN1"/>
</segment>
</net>
<net name="C11-OVERFLOW" class="0">
<segment>
<wire x1="165.1" y1="68.58" x2="165.1" y2="182.88" width="0.1524" layer="91"/>
<wire x1="134.62" y1="182.88" x2="165.1" y2="182.88" width="0.1524" layer="91"/>
<junction x="165.1" y="182.88"/>
<pinref part="PRESSURE-SWITCH_HA" gate="G$1" pin="P$2"/>
<wire x1="172.72" y1="182.88" x2="165.1" y2="182.88" width="0.1524" layer="91"/>
<wire x1="73.66" y1="177.8" x2="73.66" y2="182.88" width="0.1524" layer="91"/>
<pinref part="PRESSURE-SWITCH_HB" gate="G$1" pin="P$2"/>
<wire x1="134.62" y1="182.88" x2="134.62" y2="177.8" width="0.1524" layer="91"/>
<wire x1="134.62" y1="182.88" x2="93.98" y2="182.88" width="0.1524" layer="91"/>
<junction x="134.62" y="182.88"/>
<pinref part="PRESSURE-SWITCH_HA" gate="G$1" pin="P$6"/>
<wire x1="93.98" y1="182.88" x2="93.98" y2="177.8" width="0.1524" layer="91"/>
<wire x1="73.66" y1="182.88" x2="93.98" y2="182.88" width="0.1524" layer="91"/>
<junction x="93.98" y="182.88"/>
<pinref part="C11" gate="CABLE" pin="PIN2"/>
<pinref part="PUMP" gate="M" pin="M1"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="R01" gate="RELAY" pin="T"/>
<pinref part="E5" gate="CABLE" pin="PIN1"/>
<wire x1="30.48" y1="121.92" x2="30.48" y2="38.1" width="0.3048" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="R10" gate="RELAY" pin="R"/>
<pinref part="D4" gate="CABLE" pin="PIN1"/>
<wire x1="203.2" y1="76.2" x2="203.2" y2="99.06" width="0.3048" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="R11" gate="RELAY" pin="T"/>
<pinref part="C2" gate="CABLE" pin="PIN1"/>
<wire x1="271.78" y1="76.2" x2="271.78" y2="99.06" width="0.3048" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="COLD_WATER_VALVE" gate="VALVE" pin="P$2"/>
<pinref part="E4" gate="CABLE" pin="PIN2"/>
<wire x1="68.58" y1="68.58" x2="68.58" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="E5" class="0">
<segment>
<pinref part="E5" gate="CABLE" pin="PIN2"/>
<pinref part="U$1" gate="G$1" pin="N"/>
<wire x1="30.48" y1="30.48" x2="30.48" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="HOT_WATER_VALVE" gate="VALVE" pin="P$2"/>
<wire x1="96.52" y1="60.96" x2="96.52" y2="68.58" width="0.1524" layer="91"/>
<pinref part="D3" gate="CABLE" pin="PIN2"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="PRESSURE-SWITCH_HA" gate="G$1" pin="P$3"/>
<wire x1="63.5" y1="152.4" x2="63.5" y2="149.86" width="0.1524" layer="91"/>
<pinref part="C8" gate="CABLE" pin="PIN2"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="PRESSURE-SWITCH_HA" gate="G$1" pin="P$7"/>
<pinref part="C7" gate="CABLE" pin="PIN2"/>
<wire x1="83.82" y1="149.86" x2="83.82" y2="152.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D11" class="0">
<segment>
<pinref part="PRESSURE-SWITCH_HB" gate="G$1" pin="P$4"/>
<wire x1="134.62" y1="152.4" x2="134.62" y2="149.86" width="0.1524" layer="91"/>
<pinref part="D11" gate="CABLE" pin="PIN2"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="R08" gate="RELAY" pin="T"/>
<pinref part="R09" gate="RELAY" pin="C"/>
<wire x1="233.68" y1="182.88" x2="236.22" y2="182.88" width="0.3048" layer="91"/>
<wire x1="236.22" y1="182.88" x2="236.22" y2="167.64" width="0.3048" layer="91"/>
</segment>
</net>
<net name="E11" class="0">
<segment>
<wire x1="165.1" y1="22.86" x2="165.1" y2="43.18" width="0.1524" layer="91"/>
<pinref part="E11" gate="CABLE" pin="PIN2"/>
<pinref part="PUMP" gate="M" pin="M2"/>
<wire x1="165.1" y1="43.18" x2="165.1" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="C10" class="0">
<segment>
<wire x1="236.22" y1="38.1" x2="266.7" y2="38.1" width="0.1524" layer="91"/>
<wire x1="236.22" y1="38.1" x2="236.22" y2="22.86" width="0.1524" layer="91"/>
<junction x="236.22" y="38.1"/>
<wire x1="208.28" y1="38.1" x2="236.22" y2="38.1" width="0.1524" layer="91"/>
<pinref part="C10" gate="CABLE" pin="PIN2"/>
<pinref part="WASH_MOTOR" gate="M" pin="MC"/>
<wire x1="208.28" y1="38.1" x2="208.28" y2="43.18" width="0.1524" layer="91"/>
<pinref part="SPIN_MOTOR" gate="M" pin="MC"/>
<wire x1="266.7" y1="43.18" x2="266.7" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D4" class="0">
<segment>
<pinref part="D4" gate="CABLE" pin="PIN2"/>
<pinref part="WASH_MOTOR" gate="M" pin="M1"/>
<wire x1="203.2" y1="66.04" x2="203.2" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D2" class="0">
<segment>
<pinref part="D2" gate="CABLE" pin="PIN2"/>
<pinref part="WASH_MOTOR" gate="M" pin="M2"/>
<wire x1="213.36" y1="68.58" x2="213.36" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D6" class="0">
<segment>
<pinref part="D6" gate="CABLE" pin="PIN2"/>
<pinref part="CAPACITOR" gate="CAPA" pin="C2"/>
<wire x1="243.84" y1="127" x2="251.46" y2="127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="1">
<segment>
<wire x1="220.98" y1="127" x2="228.6" y2="127" width="0.1524" layer="91"/>
<pinref part="E2" gate="CABLE" pin="PIN2"/>
<pinref part="CAPACITOR" gate="CAPA" pin="C1"/>
</segment>
</net>
<net name="D10" class="0">
<segment>
<pinref part="COLD_WATER_VALVE" gate="VALVE" pin="P$1"/>
<pinref part="D10" gate="CABLE" pin="PIN2"/>
<wire x1="71.12" y1="50.8" x2="71.12" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="C12" gate="CABLE" pin="PIN2"/>
<wire x1="137.16" y1="68.58" x2="137.16" y2="66.04" width="0.1524" layer="91"/>
<pinref part="HEATER" gate="H" pin="P$2"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="E7" gate="CABLE" pin="PIN2"/>
<pinref part="PRESSURE-SWITCH_HB" gate="G$1" pin="P$1"/>
<pinref part="PRESSURE-SWITCH_HA" gate="G$1" pin="P$5"/>
<wire x1="88.9" y1="190.5" x2="88.9" y2="177.8" width="0.1524" layer="91"/>
<pinref part="PRESSURE-SWITCH_HA" gate="G$1" pin="P$1"/>
<wire x1="68.58" y1="177.8" x2="68.58" y2="190.5" width="0.1524" layer="91"/>
<wire x1="88.9" y1="190.5" x2="68.58" y2="190.5" width="0.1524" layer="91"/>
<junction x="88.9" y="190.5"/>
<wire x1="88.9" y1="190.5" x2="129.54" y2="190.5" width="0.1524" layer="91"/>
<wire x1="129.54" y1="190.5" x2="129.54" y2="177.8" width="0.1524" layer="91"/>
<wire x1="60.96" y1="190.5" x2="68.58" y2="190.5" width="0.1524" layer="91"/>
<junction x="68.58" y="190.5"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="R02" gate="RELAY" pin="C"/>
<pinref part="C8" gate="CABLE" pin="PIN1"/>
<wire x1="63.5" y1="142.24" x2="63.5" y2="139.7" width="0.3048" layer="91"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="C7" gate="CABLE" pin="PIN1"/>
<pinref part="R03" gate="RELAY" pin="C"/>
<wire x1="83.82" y1="139.7" x2="83.82" y2="142.24" width="0.3048" layer="91"/>
</segment>
</net>
<net name="C1" class="0">
<segment>
<pinref part="PRESSURE-SWITCH_HB" gate="G$1" pin="P$3"/>
<wire x1="124.46" y1="152.4" x2="124.46" y2="149.86" width="0.1524" layer="91"/>
<pinref part="C1" gate="CABLE" pin="PIN2"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="R06" gate="RELAY" pin="C"/>
<pinref part="D11" gate="CABLE" pin="PIN1"/>
<wire x1="134.62" y1="142.24" x2="134.62" y2="96.52" width="0.3048" layer="91"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="R04" gate="RELAY" pin="T"/>
<wire x1="68.58" y1="78.74" x2="68.58" y2="76.2" width="0.3048" layer="91"/>
<pinref part="E4" gate="CABLE" pin="PIN1"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="E9" gate="CABLE" pin="PIN2"/>
<wire x1="48.26" y1="10.16" x2="45.72" y2="10.16" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="C"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="D3" gate="CABLE" pin="PIN1"/>
<pinref part="R05" gate="RELAY" pin="T"/>
<wire x1="96.52" y1="78.74" x2="96.52" y2="76.2" width="0.3048" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="R06" gate="RELAY" pin="T"/>
<wire x1="137.16" y1="78.74" x2="137.16" y2="76.2" width="0.3048" layer="91"/>
<pinref part="C12" gate="CABLE" pin="PIN1"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="R07" gate="RELAY" pin="T"/>
<wire x1="185.42" y1="182.88" x2="180.34" y2="182.88" width="0.3048" layer="91"/>
<pinref part="C11" gate="CABLE" pin="PIN1"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="E6" gate="CABLE" pin="PIN2"/>
<wire x1="15.24" y1="198.12" x2="0" y2="198.12" width="0.1524" layer="91"/>
<wire x1="0" y1="198.12" x2="0" y2="93.98" width="0.1524" layer="91"/>
<pinref part="MAIN_SWITCH" gate="G$1" pin="OUT1"/>
<wire x1="-5.08" y1="93.98" x2="0" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="B6" gate="CABLE" pin="PIN1"/>
<pinref part="B7" gate="CABLE" pin="PIN1"/>
<wire x1="99.06" y1="40.64" x2="99.06" y2="38.1" width="0.3048" layer="91"/>
<wire x1="99.06" y1="38.1" x2="119.38" y2="38.1" width="0.3048" layer="91"/>
<wire x1="137.16" y1="40.64" x2="137.16" y2="38.1" width="0.3048" layer="91"/>
<wire x1="137.16" y1="38.1" x2="119.38" y2="38.1" width="0.3048" layer="91"/>
<wire x1="119.38" y1="38.1" x2="119.38" y2="35.56" width="0.3048" layer="91"/>
<junction x="119.38" y="38.1"/>
<pinref part="N1" gate="CABLE" pin="PIN1"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="N1" gate="CABLE" pin="PIN2"/>
<pinref part="HOT_WATER_VALVE" gate="VALVE" pin="P$1"/>
<wire x1="99.06" y1="50.8" x2="99.06" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="C6" gate="CABLE" pin="PIN2"/>
<pinref part="SPIN_MOTOR" gate="M" pin="M1"/>
<wire x1="261.62" y1="68.58" x2="261.62" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="C2" gate="CABLE" pin="PIN2"/>
<pinref part="SPIN_MOTOR" gate="M" pin="M2"/>
<wire x1="271.78" y1="68.58" x2="271.78" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="B7" gate="CABLE" pin="PIN2"/>
<pinref part="THERMOSTAT" gate="G$1" pin="P$1"/>
<wire x1="119.38" y1="27.94" x2="119.38" y2="25.4" width="0.1524" layer="91"/>
<wire x1="119.38" y1="25.4" x2="116.84" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="E12" gate="CABLE" pin="PIN2"/>
<pinref part="THERMOSTAT" gate="G$1" pin="P$2"/>
<wire x1="99.06" y1="22.86" x2="99.06" y2="25.4" width="0.1524" layer="91"/>
<wire x1="99.06" y1="25.4" x2="101.6" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="HEATER" gate="H" pin="P$1"/>
<pinref part="B6" gate="CABLE" pin="PIN2"/>
<wire x1="137.16" y1="50.8" x2="137.16" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="E2" gate="CABLE" pin="PIN1"/>
<wire x1="205.74" y1="127" x2="213.36" y2="127" width="0.3048" layer="91"/>
<junction x="205.74" y="127"/>
<pinref part="X1" gate="G$1" pin="PIN2"/>
<wire x1="205.74" y1="124.46" x2="205.74" y2="127" width="0.3048" layer="91"/>
<wire x1="233.68" y1="142.24" x2="205.74" y2="142.24" width="0.3048" layer="91"/>
<wire x1="205.74" y1="142.24" x2="205.74" y2="127" width="0.3048" layer="91"/>
<pinref part="R09" gate="RELAY" pin="R"/>
<wire x1="233.68" y1="142.24" x2="233.68" y2="149.86" width="0.3048" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<junction x="269.24" y="127"/>
<wire x1="269.24" y1="124.46" x2="269.24" y2="127" width="0.3048" layer="91"/>
<wire x1="259.08" y1="127" x2="269.24" y2="127" width="0.3048" layer="91"/>
<pinref part="D6" gate="CABLE" pin="PIN1"/>
<pinref part="X2" gate="G$1" pin="PIN2"/>
<wire x1="238.76" y1="149.86" x2="238.76" y2="142.24" width="0.3048" layer="91"/>
<wire x1="238.76" y1="142.24" x2="269.24" y2="142.24" width="0.3048" layer="91"/>
<wire x1="269.24" y1="142.24" x2="269.24" y2="127" width="0.3048" layer="91"/>
<pinref part="R09" gate="RELAY" pin="T"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="PIN1"/>
<pinref part="R11" gate="RELAY" pin="C"/>
<wire x1="269.24" y1="116.84" x2="269.24" y2="121.92" width="0.3048" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="PIN1"/>
<pinref part="R10" gate="RELAY" pin="C"/>
<wire x1="205.74" y1="116.84" x2="205.74" y2="121.92" width="0.3048" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="R07" gate="RELAY" pin="C"/>
<wire x1="203.2" y1="185.42" x2="205.74" y2="185.42" width="0.3048" layer="91"/>
<pinref part="R08" gate="RELAY" pin="C"/>
<pinref part="X3" gate="G$1" pin="PIN2"/>
<wire x1="210.82" y1="198.12" x2="213.36" y2="198.12" width="0.3048" layer="91"/>
<wire x1="213.36" y1="198.12" x2="213.36" y2="185.42" width="0.3048" layer="91"/>
<wire x1="213.36" y1="185.42" x2="215.9" y2="185.42" width="0.3048" layer="91"/>
<wire x1="205.74" y1="185.42" x2="213.36" y2="185.42" width="0.3048" layer="91"/>
<junction x="213.36" y="185.42"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="R02" gate="RELAY" pin="T"/>
<wire x1="66.04" y1="121.92" x2="66.04" y2="119.38" width="0.3048" layer="91"/>
<wire x1="66.04" y1="119.38" x2="66.04" y2="116.84" width="0.3048" layer="91"/>
<wire x1="66.04" y1="116.84" x2="86.36" y2="116.84" width="0.3048" layer="91"/>
<pinref part="X4" gate="G$1" pin="PIN2"/>
<pinref part="R03" gate="RELAY" pin="T"/>
<wire x1="86.36" y1="116.84" x2="86.36" y2="114.3" width="0.3048" layer="91"/>
<wire x1="86.36" y1="121.92" x2="86.36" y2="116.84" width="0.3048" layer="91"/>
<junction x="86.36" y="116.84"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<wire x1="93.98" y1="96.52" x2="93.98" y2="101.6" width="0.3048" layer="91"/>
<pinref part="R05" gate="RELAY" pin="C"/>
<wire x1="86.36" y1="104.14" x2="86.36" y2="101.6" width="0.3048" layer="91"/>
<pinref part="R04" gate="RELAY" pin="C"/>
<wire x1="86.36" y1="101.6" x2="66.04" y2="101.6" width="0.3048" layer="91"/>
<wire x1="66.04" y1="101.6" x2="66.04" y2="96.52" width="0.3048" layer="91"/>
<wire x1="93.98" y1="101.6" x2="86.36" y2="101.6" width="0.3048" layer="91"/>
<junction x="86.36" y="101.6"/>
<pinref part="X5" gate="G$1" pin="PIN2"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
