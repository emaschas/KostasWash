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
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="6" fill="9" visible="no" active="no"/>
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
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="no" active="yes"/>
<layer number="100" name="Muster" color="7" fill="1" visible="yes" active="yes"/>
<layer number="101" name="Patch_Top" color="7" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="7" fill="1" visible="yes" active="yes"/>
<layer number="251" name="SMDround" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="atmel">
<description>&lt;b&gt;AVR Devices&lt;/b&gt;&lt;p&gt;
Configurable logic, microcontrollers, nonvolatile memories&lt;p&gt;
Based on the following sources:&lt;p&gt;
&lt;ul&gt;
&lt;li&gt;www.atmel.com
&lt;li&gt;CD-ROM : Configurable Logic Microcontroller Nonvolatile Memory
&lt;li&gt;CadSoft download site, www.cadsoft.de or www.cadsoftusa.com , file at90smcu_v400.zip
&lt;li&gt;avr.lbr
&lt;/ul&gt;
&lt;author&gt;Revised by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL40">
<description>&lt;B&gt;Dual In Line&lt;/B&gt;</description>
<wire x1="-26.416" y1="-1.27" x2="-26.416" y2="-6.604" width="0.1524" layer="21"/>
<wire x1="-26.416" y1="1.27" x2="-26.416" y2="-1.27" width="0.1524" layer="21" curve="-180"/>
<wire x1="26.416" y1="-6.604" x2="26.416" y2="6.604" width="0.1524" layer="21"/>
<wire x1="-26.416" y1="6.604" x2="-26.416" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-26.416" y1="6.604" x2="26.416" y2="6.604" width="0.1524" layer="21"/>
<wire x1="-26.416" y1="-6.604" x2="26.416" y2="-6.604" width="0.1524" layer="21"/>
<pad name="1" x="-24.13" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-21.59" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-19.05" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-16.51" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="-13.97" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="-11.43" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="-8.89" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="-6.35" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="-3.81" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="-1.27" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="1.27" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="3.81" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="6.35" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="8.89" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="11.43" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="13.97" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="17" x="16.51" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="18" x="19.05" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="19" x="21.59" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="20" x="24.13" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="21" x="24.13" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="22" x="21.59" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="23" x="19.05" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="24" x="16.51" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="25" x="13.97" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="26" x="11.43" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="27" x="8.89" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="28" x="6.35" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="29" x="3.81" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="30" x="1.27" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="31" x="-1.27" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="32" x="-3.81" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="33" x="-6.35" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="34" x="-8.89" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="35" x="-11.43" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="36" x="-13.97" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="37" x="-16.51" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="38" x="-19.05" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="39" x="-21.59" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="40" x="-24.13" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<text x="-26.67" y="-6.35" size="1.778" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-21.59" y="-2.2352" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="32-I/O-M8535-P">
<wire x1="-15.24" y1="43.18" x2="15.24" y2="43.18" width="0.254" layer="94"/>
<wire x1="15.24" y1="43.18" x2="15.24" y2="-48.26" width="0.254" layer="94"/>
<wire x1="15.24" y1="-48.26" x2="-15.24" y2="-48.26" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-48.26" x2="-15.24" y2="43.18" width="0.254" layer="94"/>
<text x="-15.24" y="43.942" size="1.778" layer="95">&gt;NAME</text>
<text x="-15.24" y="-50.8" size="1.778" layer="96">&gt;VALUE</text>
<pin name="(ADC7)PA7" x="20.32" y="40.64" length="middle" rot="R180"/>
<pin name="(ADC6)PA6" x="20.32" y="38.1" length="middle" rot="R180"/>
<pin name="(ADC5)PA5" x="20.32" y="35.56" length="middle" rot="R180"/>
<pin name="(ADC4)PA4" x="20.32" y="33.02" length="middle" rot="R180"/>
<pin name="(ADC3)PA3" x="20.32" y="30.48" length="middle" rot="R180"/>
<pin name="(ADC2)PA2" x="20.32" y="27.94" length="middle" rot="R180"/>
<pin name="(ADC1)PA1" x="20.32" y="25.4" length="middle" rot="R180"/>
<pin name="(ADC0)PA0" x="20.32" y="22.86" length="middle" rot="R180"/>
<pin name="(SCK)PB7" x="20.32" y="17.78" length="middle" rot="R180"/>
<pin name="(MISO)PB6" x="20.32" y="15.24" length="middle" rot="R180"/>
<pin name="(MOSI)PB5" x="20.32" y="12.7" length="middle" rot="R180"/>
<pin name="(SS)PB4" x="20.32" y="10.16" length="middle" rot="R180"/>
<pin name="(AIN1/INT2)PB3" x="20.32" y="7.62" length="middle" rot="R180"/>
<pin name="(AIN0/OC0)PB2" x="20.32" y="5.08" length="middle" rot="R180"/>
<pin name="(T1)PB1" x="20.32" y="2.54" length="middle" rot="R180"/>
<pin name="(T0/XCK)PB0" x="20.32" y="0" length="middle" rot="R180"/>
<pin name="(TOSC2)PC7" x="20.32" y="-5.08" length="middle" rot="R180"/>
<pin name="(TOSC1)PC6" x="20.32" y="-7.62" length="middle" rot="R180"/>
<pin name="PC5" x="20.32" y="-10.16" length="middle" rot="R180"/>
<pin name="PC4" x="20.32" y="-12.7" length="middle" rot="R180"/>
<pin name="PC3" x="20.32" y="-15.24" length="middle" rot="R180"/>
<pin name="PC2" x="20.32" y="-17.78" length="middle" rot="R180"/>
<pin name="(SDA)PC1" x="20.32" y="-20.32" length="middle" rot="R180"/>
<pin name="(SCL)PC0" x="20.32" y="-22.86" length="middle" rot="R180"/>
<pin name="GND@1" x="-20.32" y="17.78" length="middle" direction="pwr"/>
<pin name="AVCC" x="-20.32" y="20.32" length="middle" direction="pwr"/>
<pin name="AREF" x="-20.32" y="22.86" length="middle" direction="pas"/>
<pin name="XTAL1" x="-20.32" y="27.94" length="middle"/>
<pin name="XTAL2" x="-20.32" y="33.02" length="middle"/>
<pin name="VCC" x="-20.32" y="12.7" length="middle" direction="pwr"/>
<pin name="GND" x="-20.32" y="10.16" length="middle" direction="pwr"/>
<pin name="RESET" x="-20.32" y="40.64" length="middle" direction="in" function="dot"/>
<pin name="(RXD)PD0" x="20.32" y="-45.72" length="middle" rot="R180"/>
<pin name="(TXD)PD1" x="20.32" y="-43.18" length="middle" rot="R180"/>
<pin name="(INT0)PD2" x="20.32" y="-40.64" length="middle" rot="R180"/>
<pin name="(INT1)PD3" x="20.32" y="-38.1" length="middle" rot="R180"/>
<pin name="(OC1B)PD4" x="20.32" y="-35.56" length="middle" rot="R180"/>
<pin name="(OC1A)PD5" x="20.32" y="-33.02" length="middle" rot="R180"/>
<pin name="(ICP)PD6" x="20.32" y="-30.48" length="middle" rot="R180"/>
<pin name="(OC2)PD7" x="20.32" y="-27.94" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MEGA8535-P" prefix="IC">
<description>&lt;b&gt;MICROCONTROLLER&lt;/b&gt;&lt;p&gt;
8 Kbytes FLASH&lt;br&gt;
512 bytes SRAM&lt;br&gt;
512 bytes EEPROM&lt;br&gt;
USART&lt;br&gt;
8-channel 10 bit ADC&lt;p&gt;
Source: avr.lbr</description>
<gates>
<gate name="G$1" symbol="32-I/O-M8535-P" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIL40">
<connects>
<connect gate="G$1" pin="(ADC0)PA0" pad="40"/>
<connect gate="G$1" pin="(ADC1)PA1" pad="39"/>
<connect gate="G$1" pin="(ADC2)PA2" pad="38"/>
<connect gate="G$1" pin="(ADC3)PA3" pad="37"/>
<connect gate="G$1" pin="(ADC4)PA4" pad="36"/>
<connect gate="G$1" pin="(ADC5)PA5" pad="35"/>
<connect gate="G$1" pin="(ADC6)PA6" pad="34"/>
<connect gate="G$1" pin="(ADC7)PA7" pad="33"/>
<connect gate="G$1" pin="(AIN0/OC0)PB2" pad="3"/>
<connect gate="G$1" pin="(AIN1/INT2)PB3" pad="4"/>
<connect gate="G$1" pin="(ICP)PD6" pad="20"/>
<connect gate="G$1" pin="(INT0)PD2" pad="16"/>
<connect gate="G$1" pin="(INT1)PD3" pad="17"/>
<connect gate="G$1" pin="(MISO)PB6" pad="7"/>
<connect gate="G$1" pin="(MOSI)PB5" pad="6"/>
<connect gate="G$1" pin="(OC1A)PD5" pad="19"/>
<connect gate="G$1" pin="(OC1B)PD4" pad="18"/>
<connect gate="G$1" pin="(OC2)PD7" pad="21"/>
<connect gate="G$1" pin="(RXD)PD0" pad="14"/>
<connect gate="G$1" pin="(SCK)PB7" pad="8"/>
<connect gate="G$1" pin="(SCL)PC0" pad="22"/>
<connect gate="G$1" pin="(SDA)PC1" pad="23"/>
<connect gate="G$1" pin="(SS)PB4" pad="5"/>
<connect gate="G$1" pin="(T0/XCK)PB0" pad="1"/>
<connect gate="G$1" pin="(T1)PB1" pad="2"/>
<connect gate="G$1" pin="(TOSC1)PC6" pad="28"/>
<connect gate="G$1" pin="(TOSC2)PC7" pad="29"/>
<connect gate="G$1" pin="(TXD)PD1" pad="15"/>
<connect gate="G$1" pin="AREF" pad="32"/>
<connect gate="G$1" pin="AVCC" pad="30"/>
<connect gate="G$1" pin="GND" pad="11"/>
<connect gate="G$1" pin="GND@1" pad="31"/>
<connect gate="G$1" pin="PC2" pad="24"/>
<connect gate="G$1" pin="PC3" pad="25"/>
<connect gate="G$1" pin="PC4" pad="26"/>
<connect gate="G$1" pin="PC5" pad="27"/>
<connect gate="G$1" pin="RESET" pad="9"/>
<connect gate="G$1" pin="VCC" pad="10"/>
<connect gate="G$1" pin="XTAL1" pad="13"/>
<connect gate="G$1" pin="XTAL2" pad="12"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="ATMEGA8535-16PU" constant="no"/>
<attribute name="OC_FARNELL" value="9171444" constant="no"/>
<attribute name="OC_NEWARK" value="01M6909" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2">
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
<symbol name="+05V">
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="0.635" x2="0" y2="1.905" width="0.1524" layer="94"/>
<circle x="0" y="1.27" radius="1.27" width="0.254" layer="94"/>
<text x="-1.905" y="3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<text x="-1.905" y="-3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+5V" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="+5V" symbol="+05V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="GND" symbol="GND" x="0" y="0"/>
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
<library name="Connectors">
<packages>
<package name="ISP">
<description>Connector for ISP programmer</description>
<pad name="MISO" x="0" y="0" drill="0.8" diameter="1.778" shape="square"/>
<pad name="SCK" x="0" y="-2.54" drill="0.8" diameter="1.778" shape="square"/>
<pad name="RESET" x="0" y="-5.08" drill="0.8" diameter="1.778" shape="square"/>
<pad name="VCC" x="2.54" y="0" drill="0.8" diameter="1.778" shape="square"/>
<pad name="MOSI" x="2.54" y="-2.54" drill="0.8" diameter="1.778" shape="square"/>
<pad name="GND" x="2.54" y="-5.08" drill="0.8" diameter="1.778" shape="square"/>
<wire x1="-1.27" y1="1.27" x2="3.81" y2="1.27" width="0.127" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-6.35" width="0.127" layer="21"/>
<wire x1="3.81" y1="-6.35" x2="-1.27" y2="-6.35" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-6.35" x2="-1.27" y2="-3.81" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-3.81" x2="-1.27" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="1.27" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.524" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-1.524" y1="-1.27" x2="-1.524" y2="1.524" width="0.127" layer="21"/>
<wire x1="-1.524" y1="1.524" x2="4.064" y2="1.524" width="0.127" layer="21"/>
<wire x1="4.064" y1="1.524" x2="4.064" y2="-6.604" width="0.127" layer="21"/>
<wire x1="4.064" y1="-6.604" x2="-1.524" y2="-6.604" width="0.127" layer="21"/>
<wire x1="-1.524" y1="-6.604" x2="-1.524" y2="-3.81" width="0.127" layer="21"/>
<wire x1="-1.524" y1="-3.81" x2="-1.27" y2="-3.81" width="0.127" layer="21"/>
<text x="4.318" y="0" size="0.762" layer="21" align="center-left">VCC</text>
<text x="4.318" y="-2.54" size="0.762" layer="21" align="center-left">MOSI</text>
<text x="4.318" y="-5.08" size="0.762" layer="21" align="center-left">GND</text>
<text x="-1.778" y="0" size="0.762" layer="21" align="center-right">MISO</text>
<text x="-1.778" y="-2.54" size="0.762" layer="21" align="center-right">SCK</text>
<text x="-1.778" y="-5.08" size="0.762" layer="21" align="center-right">RST</text>
<text x="1.27" y="1.778" size="1.016" layer="21" align="bottom-center">ISP</text>
</package>
<package name="RELAYS-16">
<description>Connector for ISP programmer</description>
<pad name="VCC1" x="0" y="0" drill="0.8" diameter="1.778" shape="square"/>
<pad name="1" x="0" y="-2.54" drill="0.8" diameter="1.778" shape="square"/>
<pad name="3" x="0" y="-5.08" drill="0.8" diameter="1.778" shape="square"/>
<pad name="VCC2" x="2.54" y="0" drill="0.8" diameter="1.778" shape="square"/>
<pad name="2" x="2.54" y="-2.54" drill="0.8" diameter="1.778" shape="square"/>
<pad name="4" x="2.54" y="-5.08" drill="0.8" diameter="1.778" shape="square"/>
<wire x1="-1.27" y1="1.27" x2="3.81" y2="1.27" width="0.127" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-24.13" width="0.127" layer="21"/>
<wire x1="3.81" y1="-24.13" x2="-1.27" y2="-24.13" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-24.13" x2="-1.27" y2="1.27" width="0.127" layer="21"/>
<text x="4.318" y="0" size="0.762" layer="21" align="center-left">VCC</text>
<text x="4.318" y="-2.54" size="0.762" layer="21" align="center-left">R2</text>
<text x="4.318" y="-5.08" size="0.762" layer="21" align="center-left">R4</text>
<text x="-1.778" y="0" size="0.762" layer="21" align="center-right">VCC</text>
<text x="-1.778" y="-2.54" size="0.762" layer="21" align="center-right">R1</text>
<text x="-1.778" y="-5.08" size="0.762" layer="21" align="center-right">R3</text>
<text x="1.27" y="1.778" size="1.016" layer="21" align="bottom-center">16 RELAYS</text>
<pad name="5" x="0" y="-7.62" drill="0.8" diameter="1.778" shape="square"/>
<pad name="7" x="0" y="-10.16" drill="0.8" diameter="1.778" shape="square"/>
<pad name="9" x="0" y="-12.7" drill="0.8" diameter="1.778" shape="square"/>
<pad name="11" x="0" y="-15.24" drill="0.8" diameter="1.778" shape="square"/>
<pad name="13" x="0" y="-17.78" drill="0.8" diameter="1.778" shape="square"/>
<pad name="15" x="0" y="-20.32" drill="0.8" diameter="1.778" shape="square"/>
<pad name="GND1" x="0" y="-22.86" drill="0.8" diameter="1.778" shape="square"/>
<pad name="6" x="2.54" y="-7.62" drill="0.8" diameter="1.778" shape="square"/>
<pad name="8" x="2.54" y="-10.16" drill="0.8" diameter="1.778" shape="square"/>
<pad name="10" x="2.54" y="-12.7" drill="0.8" diameter="1.778" shape="square"/>
<pad name="12" x="2.54" y="-15.24" drill="0.8" diameter="1.778" shape="square"/>
<pad name="14" x="2.54" y="-17.78" drill="0.8" diameter="1.778" shape="square"/>
<pad name="16" x="2.54" y="-20.32" drill="0.8" diameter="1.778" shape="square"/>
<pad name="GND2" x="2.54" y="-22.86" drill="0.8" diameter="1.778" shape="square"/>
<text x="-1.778" y="-7.62" size="0.762" layer="21" align="center-right">R5</text>
<text x="-1.778" y="-10.16" size="0.762" layer="21" align="center-right">R7</text>
<text x="-1.778" y="-12.7" size="0.762" layer="21" align="center-right">R9</text>
<text x="-1.778" y="-15.24" size="0.762" layer="21" align="center-right">R11</text>
<text x="-1.778" y="-17.78" size="0.762" layer="21" align="center-right">R13</text>
<text x="-1.778" y="-20.32" size="0.762" layer="21" align="center-right">R15</text>
<text x="-1.778" y="-22.86" size="0.762" layer="21" align="center-right">GND</text>
<text x="4.318" y="-22.86" size="0.762" layer="21" align="center-left">GND</text>
<text x="4.318" y="-20.32" size="0.762" layer="21" align="center-left">R16</text>
<text x="4.318" y="-17.78" size="0.762" layer="21" align="center-left">R14</text>
<text x="4.318" y="-15.24" size="0.762" layer="21" align="center-left">R12</text>
<text x="4.318" y="-7.62" size="0.762" layer="21" align="center-left">R6</text>
<text x="4.318" y="-10.16" size="0.762" layer="21" align="center-left">R8</text>
<text x="4.318" y="-12.7" size="0.762" layer="21" align="center-left">R10</text>
</package>
<package name="PIN">
<description>Single Pin</description>
<pad name="P$1" x="0" y="0" drill="0.8" diameter="1.778" shape="square"/>
<text x="1.27" y="0" size="1.27" layer="25" align="center-left">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="ISP">
<description>Connector for ISP programmer</description>
<pin name="RESET" x="0" y="-2.54" visible="pin" length="short" direction="out"/>
<pin name="MISO" x="0" y="-7.62" visible="pin" length="short" direction="in"/>
<pin name="MOSI" x="0" y="-5.08" visible="pin" length="short" direction="out"/>
<pin name="SCK" x="0" y="-10.16" visible="pin" length="short" direction="out"/>
<pin name="VCC" x="0" y="0" visible="pin" length="short" direction="pwr"/>
<pin name="GND" x="0" y="-12.7" visible="pin" length="short" direction="pwr"/>
<wire x1="2.54" y1="2.54" x2="12.7" y2="2.54" width="0.254" layer="94"/>
<wire x1="12.7" y1="2.54" x2="12.7" y2="-15.24" width="0.254" layer="94"/>
<wire x1="12.7" y1="-15.24" x2="2.54" y2="-15.24" width="0.254" layer="94"/>
<wire x1="2.54" y1="-15.24" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<text x="7.62" y="3.048" size="1.778" layer="94" align="bottom-center">ISP</text>
</symbol>
<symbol name="RELAYS-16">
<description>Connector for ISP programmer</description>
<pin name="VCC2" x="0" y="-2.54" visible="pin" length="short" direction="sup"/>
<pin name="R2" x="0" y="-7.62" visible="pin" length="short" direction="in"/>
<pin name="R1" x="0" y="-5.08" visible="pin" length="short" direction="in"/>
<pin name="R3" x="0" y="-10.16" visible="pin" length="short" direction="in"/>
<pin name="VCC1" x="0" y="0" visible="pin" length="short" direction="sup"/>
<pin name="GND2" x="0" y="-48.26" visible="pin" length="short" direction="sup"/>
<wire x1="2.54" y1="2.54" x2="12.7" y2="2.54" width="0.254" layer="94"/>
<wire x1="12.7" y1="2.54" x2="12.7" y2="-50.8" width="0.254" layer="94"/>
<wire x1="12.7" y1="-50.8" x2="2.54" y2="-50.8" width="0.254" layer="94"/>
<wire x1="2.54" y1="-50.8" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<text x="7.62" y="3.048" size="1.778" layer="94" align="bottom-center">16 RELAYS</text>
<pin name="R4" x="0" y="-12.7" visible="pin" length="short" direction="in"/>
<pin name="R5" x="0" y="-15.24" visible="pin" length="short" direction="in"/>
<pin name="R6" x="0" y="-17.78" visible="pin" length="short" direction="in"/>
<pin name="R7" x="0" y="-20.32" visible="pin" length="short" direction="in"/>
<pin name="R8" x="0" y="-22.86" visible="pin" length="short" direction="in"/>
<pin name="R9" x="0" y="-25.4" visible="pin" length="short" direction="in"/>
<pin name="R10" x="0" y="-27.94" visible="pin" length="short" direction="in"/>
<pin name="R11" x="0" y="-30.48" visible="pin" length="short" direction="in"/>
<pin name="R12" x="0" y="-33.02" visible="pin" length="short" direction="in"/>
<pin name="R13" x="0" y="-35.56" visible="pin" length="short" direction="in"/>
<pin name="R14" x="0" y="-38.1" visible="pin" length="short" direction="in"/>
<pin name="R15" x="0" y="-40.64" visible="pin" length="short" direction="in"/>
<pin name="R16" x="0" y="-43.18" visible="pin" length="short" direction="in"/>
<pin name="GND1" x="0" y="-45.72" visible="pin" length="short" direction="sup"/>
</symbol>
<symbol name="PIN">
<description>Single Pin</description>
<pin name="PIN1" x="0" y="0" visible="off" length="short"/>
<circle x="2.54" y="0" radius="0.254" width="0.508" layer="94"/>
<text x="3.81" y="0" size="1.27" layer="95" align="center-left">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ISP">
<description>&lt;b&gt;ISP&lt;/b&gt;&lt;br/&gt;AVR ISP 6 pins Connector</description>
<gates>
<gate name="RESET" symbol="ISP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ISP">
<connects>
<connect gate="RESET" pin="GND" pad="GND"/>
<connect gate="RESET" pin="MISO" pad="MISO"/>
<connect gate="RESET" pin="MOSI" pad="MOSI"/>
<connect gate="RESET" pin="RESET" pad="RESET"/>
<connect gate="RESET" pin="SCK" pad="SCK"/>
<connect gate="RESET" pin="VCC" pad="VCC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RELAYS-16">
<description>&lt;b&gt;ISP&lt;/b&gt;&lt;br/&gt;AVR ISP 6 pins Connector</description>
<gates>
<gate name="G$1" symbol="RELAYS-16" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RELAYS-16">
<connects>
<connect gate="G$1" pin="GND1" pad="GND1"/>
<connect gate="G$1" pin="GND2" pad="GND2"/>
<connect gate="G$1" pin="R1" pad="1"/>
<connect gate="G$1" pin="R10" pad="10"/>
<connect gate="G$1" pin="R11" pad="11"/>
<connect gate="G$1" pin="R12" pad="12"/>
<connect gate="G$1" pin="R13" pad="13"/>
<connect gate="G$1" pin="R14" pad="14"/>
<connect gate="G$1" pin="R15" pad="15"/>
<connect gate="G$1" pin="R16" pad="16"/>
<connect gate="G$1" pin="R2" pad="2"/>
<connect gate="G$1" pin="R3" pad="3"/>
<connect gate="G$1" pin="R4" pad="4"/>
<connect gate="G$1" pin="R5" pad="5"/>
<connect gate="G$1" pin="R6" pad="6"/>
<connect gate="G$1" pin="R7" pad="7"/>
<connect gate="G$1" pin="R8" pad="8"/>
<connect gate="G$1" pin="R9" pad="9"/>
<connect gate="G$1" pin="VCC1" pad="VCC1"/>
<connect gate="G$1" pin="VCC2" pad="VCC2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
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
<library name="Boutons">
<packages>
<package name="KY-40">
<pad name="SW" x="0" y="0" drill="0.8" shape="square"/>
<pad name="B" x="-2.54" y="0" drill="0.8" shape="square"/>
<pad name="A" x="-5.08" y="0" drill="0.8" shape="square"/>
<pad name="VCC" x="2.54" y="0" drill="0.8" shape="square"/>
<pad name="GND" x="5.08" y="0" drill="0.8" shape="square"/>
<wire x1="-7.62" y1="1.27" x2="7.62" y2="1.27" width="0.127" layer="21"/>
<wire x1="7.62" y1="1.27" x2="7.62" y2="-1.27" width="0.127" layer="21"/>
<wire x1="7.62" y1="-1.27" x2="-7.62" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-1.27" x2="-7.62" y2="1.27" width="0.127" layer="21"/>
<text x="-5.08" y="1.905" size="1.27" layer="21" rot="R90" align="center-left">A</text>
<text x="-2.54" y="1.905" size="1.27" layer="21" rot="R90" align="center-left">B</text>
<text x="0" y="1.905" size="1.27" layer="21" rot="R90" align="center-left">SW</text>
<text x="2.54" y="1.905" size="1.27" layer="21" rot="R90" align="center-left">VCC</text>
<text x="5.08" y="1.905" size="1.27" layer="21" rot="R90" align="center-left">GND</text>
</package>
</packages>
<symbols>
<symbol name="KY-40">
<pin name="A" x="-22.86" y="15.24" visible="pin" length="point" direction="out" rot="R180"/>
<pin name="B" x="-22.86" y="10.16" visible="pin" length="point" direction="out" rot="R180"/>
<pin name="GND" x="-22.86" y="-7.62" visible="pin" length="point" direction="pwr" rot="R180"/>
<pin name="VCC" x="-22.86" y="20.32" visible="pin" length="point" direction="pwr" rot="R180"/>
<pin name="SW" x="-22.86" y="5.08" visible="pin" length="point" direction="out" rot="R180"/>
<circle x="0" y="0" radius="7.62" width="0.0762" layer="94"/>
<wire x1="2.54" y1="5.08" x2="5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="7.62" x2="5.08" y2="15.24" width="0.254" layer="94"/>
<wire x1="5.08" y1="15.24" x2="-10.16" y2="15.24" width="0.254" layer="94"/>
<wire x1="-10.16" y1="15.24" x2="-22.86" y2="15.24" width="0.254" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="-22.86" y1="10.16" x2="-12.7" y2="10.16" width="0.254" layer="94"/>
<wire x1="-12.7" y1="10.16" x2="-5.08" y2="10.16" width="0.254" layer="94"/>
<wire x1="-5.08" y1="10.16" x2="-5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="-22.86" y1="20.32" x2="-12.7" y2="20.32" width="0.254" layer="94"/>
<wire x1="-12.7" y1="20.32" x2="-10.16" y2="20.32" width="0.254" layer="94"/>
<wire x1="-11.43" y1="2.54" x2="-11.43" y2="1.016" width="0.254" layer="94"/>
<wire x1="-11.43" y1="1.016" x2="-11.43" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-11.43" y1="-1.016" x2="-11.43" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-22.86" y1="5.08" x2="-10.16" y2="5.08" width="0.254" layer="94"/>
<wire x1="-10.16" y1="5.08" x2="-10.16" y2="2.54" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-2.54" x2="-10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="20.32" x2="-10.16" y2="18.796" width="0.254" layer="94"/>
<wire x1="-10.16" y1="18.796" x2="-9.652" y2="18.796" width="0.254" layer="94"/>
<wire x1="-9.652" y1="18.796" x2="-9.652" y2="17.018" width="0.254" layer="94"/>
<wire x1="-9.652" y1="17.018" x2="-10.16" y2="17.018" width="0.254" layer="94"/>
<wire x1="-10.16" y1="17.018" x2="-10.668" y2="17.018" width="0.254" layer="94"/>
<wire x1="-10.668" y1="17.018" x2="-10.668" y2="18.796" width="0.254" layer="94"/>
<wire x1="-10.668" y1="18.796" x2="-10.16" y2="18.796" width="0.254" layer="94"/>
<wire x1="-12.192" y1="18.796" x2="-12.192" y2="17.018" width="0.254" layer="94"/>
<wire x1="-12.192" y1="17.018" x2="-12.7" y2="17.018" width="0.254" layer="94"/>
<wire x1="-12.7" y1="17.018" x2="-13.208" y2="17.018" width="0.254" layer="94"/>
<wire x1="-13.208" y1="17.018" x2="-13.208" y2="18.796" width="0.254" layer="94"/>
<wire x1="-13.208" y1="18.796" x2="-12.7" y2="18.796" width="0.254" layer="94"/>
<wire x1="-12.7" y1="18.796" x2="-12.192" y2="18.796" width="0.254" layer="94"/>
<circle x="0" y="5.08" radius="0.254" width="0.254" layer="94"/>
<circle x="2.54" y="5.08" radius="0.254" width="0.254" layer="94"/>
<circle x="-2.54" y="5.08" radius="0.254" width="0.254" layer="94"/>
<circle x="-10.16" y="2.54" radius="0.254" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="0" y2="5.08" width="0.254" layer="94"/>
<wire x1="-12.7" y1="17.018" x2="-12.7" y2="15.748" width="0.254" layer="94"/>
<wire x1="-11.43" y1="1.016" x2="-12.192" y2="1.016" width="0.254" layer="94"/>
<wire x1="-12.192" y1="1.016" x2="-12.192" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-12.192" y1="-1.016" x2="-11.43" y2="-1.016" width="0.254" layer="94"/>
<circle x="-10.16" y="-2.54" radius="0.254" width="0.254" layer="94"/>
<circle x="0" y="0" radius="2.54" width="0.0762" layer="94"/>
<wire x1="-17.78" y1="22.86" x2="-17.78" y2="-12.7" width="0.127" layer="94"/>
<wire x1="-17.78" y1="-12.7" x2="10.16" y2="-12.7" width="0.127" layer="94"/>
<wire x1="10.16" y1="-12.7" x2="10.16" y2="22.86" width="0.127" layer="94"/>
<wire x1="10.16" y1="22.86" x2="-17.78" y2="22.86" width="0.127" layer="94"/>
<wire x1="-10.16" y1="15.24" x2="-10.16" y2="17.018" width="0.254" layer="94"/>
<wire x1="-12.7" y1="20.32" x2="-12.7" y2="18.796" width="0.254" layer="94"/>
<wire x1="-12.7" y1="10.16" x2="-12.7" y2="14.732" width="0.254" layer="94"/>
<wire x1="-22.86" y1="-7.62" x2="-10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-7.62" x2="-2.54" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-7.62" x2="0" y2="-5.08" width="0.254" layer="94"/>
<text x="0" y="20.32" size="1.778" layer="94" align="center-left">KY-40</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="KY-40" prefix="IC">
<description>&lt;b&gt;KY-40&lt;/b&gt;&lt;BR&gt;ROTATRY ENCODER WITH SWITCH</description>
<gates>
<gate name="G$1" symbol="KY-40" x="0" y="0"/>
</gates>
<devices>
<device name="" package="KY-40">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="B" pad="B"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="SW" pad="SW"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
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
<part name="IC1" library="atmel" deviceset="MEGA8535-P" device=""/>
<part name="SUPPLY1" library="supply2" deviceset="+5V" device=""/>
<part name="SUPPLY2" library="supply2" deviceset="+5V" device=""/>
<part name="SUPPLY5" library="supply2" deviceset="+5V" device=""/>
<part name="SUPPLY7" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY9" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY11" library="supply2" deviceset="GND" device=""/>
<part name="U$1" library="Connectors" deviceset="ISP" device=""/>
<part name="U$2" library="Connectors" deviceset="RELAYS-16" device=""/>
<part name="TX" library="Connectors" deviceset="PIN" device=""/>
<part name="RX" library="Connectors" deviceset="PIN" device=""/>
<part name="IC2" library="Boutons" deviceset="KY-40" device=""/>
<part name="SUPPLY3" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY4" library="supply2" deviceset="+5V" device=""/>
<part name="V+" library="Connectors" deviceset="PIN" device=""/>
<part name="GD" library="Connectors" deviceset="PIN" device=""/>
<part name="A" library="Connectors" deviceset="PIN" device=""/>
<part name="B" library="Connectors" deviceset="PIN" device=""/>
<part name="SW" library="Connectors" deviceset="PIN" device=""/>
<part name="V+." library="Connectors" deviceset="PIN" device=""/>
<part name="A." library="Connectors" deviceset="PIN" device=""/>
<part name="B." library="Connectors" deviceset="PIN" device=""/>
<part name="SW." library="Connectors" deviceset="PIN" device=""/>
<part name="GD." library="Connectors" deviceset="PIN" device=""/>
<part name="D5" library="Connectors" deviceset="PIN" device=""/>
<part name="D4" library="Connectors" deviceset="PIN" device=""/>
<part name="D4." library="Connectors" deviceset="PIN" device=""/>
<part name="D5." library="Connectors" deviceset="PIN" device=""/>
<part name="D7" library="Connectors" deviceset="PIN" device=""/>
<part name="D6" library="Connectors" deviceset="PIN" device=""/>
<part name="D6." library="Connectors" deviceset="PIN" device=""/>
<part name="D7." library="Connectors" deviceset="PIN" device=""/>
<part name="SUPPLY6" library="supply2" deviceset="GND" device=""/>
<part name="G" library="Connectors" deviceset="PIN" device=""/>
<part name="G." library="Connectors" deviceset="PIN" device=""/>
<part name="SUPPLY8" library="supply2" deviceset="+5V" device=""/>
<part name="+V" library="Connectors" deviceset="PIN" device=""/>
<part name="+V." library="Connectors" deviceset="PIN" device=""/>
<part name="EN" library="Connectors" deviceset="PIN" device=""/>
<part name="RS" library="Connectors" deviceset="PIN" device=""/>
<part name="EN." library="Connectors" deviceset="PIN" device=""/>
<part name="RS." library="Connectors" deviceset="PIN" device=""/>
<part name="LCD_VDD" library="Connectors" deviceset="PIN" device=""/>
<part name="LCD_DB4" library="Connectors" deviceset="PIN" device=""/>
<part name="LCD_RS" library="Connectors" deviceset="PIN" device=""/>
<part name="LCD_EN" library="Connectors" deviceset="PIN" device=""/>
<part name="LCD_DB6" library="Connectors" deviceset="PIN" device=""/>
<part name="LCD_DB7" library="Connectors" deviceset="PIN" device=""/>
<part name="LCD_VSS" library="Connectors" deviceset="PIN" device=""/>
<part name="LCD_DB5" library="Connectors" deviceset="PIN" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<wire x1="17.78" y1="-12.7" x2="25.4" y2="-12.7" width="0.254" layer="94"/>
<wire x1="25.4" y1="-12.7" x2="25.4" y2="-20.32" width="0.254" layer="94"/>
<wire x1="25.4" y1="-20.32" x2="17.78" y2="-20.32" width="0.254" layer="94"/>
<wire x1="17.78" y1="-20.32" x2="17.78" y2="-12.7" width="0.254" layer="94"/>
<wire x1="81.28" y1="66.04" x2="81.28" y2="43.18" width="0.1524" layer="94"/>
<wire x1="81.28" y1="43.18" x2="104.14" y2="43.18" width="0.1524" layer="94"/>
<wire x1="104.14" y1="43.18" x2="104.14" y2="66.04" width="0.1524" layer="94"/>
<wire x1="104.14" y1="66.04" x2="81.28" y2="66.04" width="0.1524" layer="94"/>
<text x="101.6" y="48.26" size="1.778" layer="94" rot="R90">LCD Display</text>
</plain>
<instances>
<instance part="IC1" gate="G$1" x="-22.86" y="48.26"/>
<instance part="SUPPLY1" gate="+5V" x="-60.96" y="99.06"/>
<instance part="SUPPLY2" gate="+5V" x="91.44" y="142.24"/>
<instance part="SUPPLY5" gate="+5V" x="-5.08" y="127"/>
<instance part="SUPPLY7" gate="GND" x="-60.96" y="48.26"/>
<instance part="SUPPLY9" gate="GND" x="91.44" y="83.82"/>
<instance part="SUPPLY11" gate="GND" x="38.1" y="114.3"/>
<instance part="U$1" gate="RESET" x="10.16" y="121.92" rot="R90"/>
<instance part="U$2" gate="G$1" x="99.06" y="137.16"/>
<instance part="TX" gate="PIN" x="22.86" y="-12.7" rot="R270"/>
<instance part="RX" gate="PIN" x="20.32" y="-12.7" rot="R270"/>
<instance part="IC2" gate="G$1" x="101.6" y="-2.54"/>
<instance part="SUPPLY3" gate="GND" x="45.72" y="0"/>
<instance part="SUPPLY4" gate="+5V" x="45.72" y="22.86"/>
<instance part="V+" gate="PIN" x="48.26" y="15.24"/>
<instance part="GD" gate="PIN" x="48.26" y="5.08"/>
<instance part="A" gate="PIN" x="48.26" y="12.7"/>
<instance part="B" gate="PIN" x="48.26" y="10.16"/>
<instance part="SW" gate="PIN" x="48.26" y="7.62"/>
<instance part="V+." gate="PIN" x="63.5" y="15.24" rot="R180"/>
<instance part="A." gate="PIN" x="63.5" y="12.7" rot="R180"/>
<instance part="B." gate="PIN" x="63.5" y="10.16" rot="R180"/>
<instance part="SW." gate="PIN" x="63.5" y="7.62" rot="R180"/>
<instance part="GD." gate="PIN" x="63.5" y="5.08" rot="R180"/>
<instance part="D5" gate="PIN" x="38.1" y="53.34"/>
<instance part="D4" gate="PIN" x="38.1" y="55.88"/>
<instance part="D4." gate="PIN" x="53.34" y="55.88" rot="R180"/>
<instance part="D5." gate="PIN" x="53.34" y="53.34" rot="R180"/>
<instance part="D7" gate="PIN" x="38.1" y="48.26"/>
<instance part="D6" gate="PIN" x="38.1" y="50.8"/>
<instance part="D6." gate="PIN" x="53.34" y="50.8" rot="R180"/>
<instance part="D7." gate="PIN" x="53.34" y="48.26" rot="R180"/>
<instance part="SUPPLY6" gate="GND" x="35.56" y="40.64"/>
<instance part="G" gate="PIN" x="38.1" y="45.72"/>
<instance part="G." gate="PIN" x="53.34" y="45.72" rot="R180"/>
<instance part="SUPPLY8" gate="+5V" x="35.56" y="68.58"/>
<instance part="+V" gate="PIN" x="38.1" y="63.5"/>
<instance part="+V." gate="PIN" x="53.34" y="63.5" rot="R180"/>
<instance part="EN" gate="PIN" x="38.1" y="58.42"/>
<instance part="RS" gate="PIN" x="38.1" y="60.96"/>
<instance part="EN." gate="PIN" x="53.34" y="58.42" rot="R180"/>
<instance part="RS." gate="PIN" x="53.34" y="60.96" rot="R180"/>
<instance part="LCD_VDD" gate="PIN" x="83.82" y="63.5"/>
<instance part="LCD_DB4" gate="PIN" x="83.82" y="55.88"/>
<instance part="LCD_RS" gate="PIN" x="83.82" y="60.96"/>
<instance part="LCD_EN" gate="PIN" x="83.82" y="58.42"/>
<instance part="LCD_DB6" gate="PIN" x="83.82" y="50.8"/>
<instance part="LCD_DB7" gate="PIN" x="83.82" y="48.26"/>
<instance part="LCD_VSS" gate="PIN" x="83.82" y="45.72"/>
<instance part="LCD_DB5" gate="PIN" x="83.82" y="53.34"/>
</instances>
<busses>
<bus name="A[1..8]">
<segment>
<wire x1="5.08" y1="96.52" x2="5.08" y2="71.12" width="0.762" layer="92"/>
<wire x1="66.04" y1="132.08" x2="66.04" y2="96.52" width="0.762" layer="92"/>
<wire x1="5.08" y1="96.52" x2="66.04" y2="96.52" width="0.762" layer="92"/>
</segment>
</bus>
<bus name="B[1..8]">
<segment>
<wire x1="71.12" y1="111.76" x2="71.12" y2="91.44" width="0.762" layer="92"/>
<wire x1="71.12" y1="91.44" x2="10.16" y2="91.44" width="0.762" layer="92"/>
<wire x1="10.16" y1="91.44" x2="10.16" y2="25.4" width="0.762" layer="92"/>
</segment>
</bus>
</busses>
<nets>
<net name="+5V" class="0">
<segment>
<pinref part="SUPPLY1" gate="+5V" pin="+5V"/>
<wire x1="-60.96" y1="96.52" x2="-60.96" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-40.64" y1="68.58" x2="-43.18" y2="68.58" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="VCC"/>
<wire x1="-43.18" y1="68.58" x2="-60.96" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="60.96" x2="-60.96" y2="60.96" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="60.96" x2="-60.96" y2="68.58" width="0.1524" layer="91"/>
<junction x="-60.96" y="68.58"/>
<pinref part="IC1" gate="G$1" pin="AVCC"/>
<junction x="-43.18" y="68.58"/>
</segment>
<segment>
<pinref part="SUPPLY5" gate="+5V" pin="+5V"/>
<wire x1="-5.08" y1="124.46" x2="-5.08" y2="119.38" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="119.38" x2="10.16" y2="119.38" width="0.1524" layer="91"/>
<pinref part="U$1" gate="RESET" pin="VCC"/>
<wire x1="10.16" y1="119.38" x2="10.16" y2="121.92" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="VCC2"/>
<wire x1="99.06" y1="134.62" x2="91.44" y2="134.62" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="VCC1"/>
<wire x1="99.06" y1="137.16" x2="91.44" y2="137.16" width="0.1524" layer="91"/>
<pinref part="SUPPLY2" gate="+5V" pin="+5V"/>
<wire x1="91.44" y1="137.16" x2="91.44" y2="139.7" width="0.1524" layer="91"/>
<wire x1="91.44" y1="134.62" x2="91.44" y2="137.16" width="0.1524" layer="91"/>
<junction x="91.44" y="137.16"/>
</segment>
<segment>
<pinref part="SUPPLY4" gate="+5V" pin="+5V"/>
<wire x1="45.72" y1="20.32" x2="45.72" y2="15.24" width="0.1524" layer="91"/>
<pinref part="V+" gate="PIN" pin="PIN1"/>
<wire x1="45.72" y1="15.24" x2="48.26" y2="15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY8" gate="+5V" pin="+5V"/>
<wire x1="35.56" y1="66.04" x2="35.56" y2="63.5" width="0.1524" layer="91"/>
<pinref part="+V" gate="PIN" pin="PIN1"/>
<wire x1="35.56" y1="63.5" x2="38.1" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="GND"/>
<pinref part="SUPPLY7" gate="GND" pin="GND"/>
<wire x1="-43.18" y1="58.42" x2="-53.34" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="58.42" x2="-60.96" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="58.42" x2="-60.96" y2="50.8" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="GND@1"/>
<wire x1="-43.18" y1="66.04" x2="-53.34" y2="66.04" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="66.04" x2="-53.34" y2="58.42" width="0.1524" layer="91"/>
<junction x="-53.34" y="58.42"/>
</segment>
<segment>
<pinref part="SUPPLY11" gate="GND" pin="GND"/>
<wire x1="38.1" y1="116.84" x2="38.1" y2="119.38" width="0.1524" layer="91"/>
<wire x1="38.1" y1="119.38" x2="22.86" y2="119.38" width="0.1524" layer="91"/>
<pinref part="U$1" gate="RESET" pin="GND"/>
<wire x1="22.86" y1="119.38" x2="22.86" y2="121.92" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="GND1"/>
<wire x1="99.06" y1="91.44" x2="91.44" y2="91.44" width="0.1524" layer="91"/>
<pinref part="SUPPLY9" gate="GND" pin="GND"/>
<wire x1="91.44" y1="91.44" x2="91.44" y2="88.9" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="GND2"/>
<wire x1="91.44" y1="88.9" x2="91.44" y2="86.36" width="0.1524" layer="91"/>
<wire x1="99.06" y1="88.9" x2="91.44" y2="88.9" width="0.1524" layer="91"/>
<junction x="91.44" y="88.9"/>
</segment>
<segment>
<pinref part="GD" gate="PIN" pin="PIN1"/>
<wire x1="48.26" y1="5.08" x2="45.72" y2="5.08" width="0.1524" layer="91"/>
<pinref part="SUPPLY3" gate="GND" pin="GND"/>
<wire x1="45.72" y1="5.08" x2="45.72" y2="2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY6" gate="GND" pin="GND"/>
<wire x1="35.56" y1="43.18" x2="35.56" y2="45.72" width="0.1524" layer="91"/>
<pinref part="G" gate="PIN" pin="PIN1"/>
<wire x1="35.56" y1="45.72" x2="38.1" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RESET" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RESET"/>
<wire x1="-43.18" y1="88.9" x2="-45.72" y2="88.9" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="88.9" x2="-45.72" y2="116.84" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="116.84" x2="12.7" y2="116.84" width="0.1524" layer="91"/>
<pinref part="U$1" gate="RESET" pin="RESET"/>
<wire x1="12.7" y1="116.84" x2="12.7" y2="121.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MOSI" class="0">
<segment>
<pinref part="U$1" gate="RESET" pin="MOSI"/>
<wire x1="15.24" y1="121.92" x2="15.24" y2="60.96" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="(MOSI)PB5"/>
<wire x1="15.24" y1="60.96" x2="-2.54" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MISO" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="(MISO)PB6"/>
<wire x1="-2.54" y1="63.5" x2="17.78" y2="63.5" width="0.1524" layer="91"/>
<pinref part="U$1" gate="RESET" pin="MISO"/>
<wire x1="17.78" y1="63.5" x2="17.78" y2="121.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCK" class="0">
<segment>
<pinref part="U$1" gate="RESET" pin="SCK"/>
<wire x1="20.32" y1="121.92" x2="20.32" y2="66.04" width="0.1524" layer="91"/>
<wire x1="20.32" y1="66.04" x2="-2.54" y2="66.04" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="(SCK)PB7"/>
</segment>
</net>
<net name="A1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="(ADC0)PA0"/>
<wire x1="-2.54" y1="71.12" x2="5.08" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="R1"/>
<wire x1="99.06" y1="132.08" x2="66.04" y2="132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A2" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="(ADC1)PA1"/>
<wire x1="-2.54" y1="73.66" x2="5.08" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="R2"/>
<wire x1="99.06" y1="129.54" x2="66.04" y2="129.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A3" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="(ADC2)PA2"/>
<wire x1="-2.54" y1="76.2" x2="5.08" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="R3"/>
<wire x1="99.06" y1="127" x2="66.04" y2="127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A4" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="(ADC3)PA3"/>
<wire x1="-2.54" y1="78.74" x2="5.08" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="R4"/>
<wire x1="99.06" y1="124.46" x2="66.04" y2="124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A5" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="(ADC4)PA4"/>
<wire x1="-2.54" y1="81.28" x2="5.08" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="R5"/>
<wire x1="99.06" y1="121.92" x2="66.04" y2="121.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A7" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="(ADC6)PA6"/>
<wire x1="-2.54" y1="86.36" x2="5.08" y2="86.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="R7"/>
<wire x1="99.06" y1="116.84" x2="66.04" y2="116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A8" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="(ADC7)PA7"/>
<wire x1="-2.54" y1="88.9" x2="5.08" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="R8"/>
<wire x1="99.06" y1="114.3" x2="66.04" y2="114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A6" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="(ADC5)PA5"/>
<wire x1="-2.54" y1="83.82" x2="5.08" y2="83.82" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="R6"/>
<wire x1="99.06" y1="119.38" x2="66.04" y2="119.38" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="(SCL)PC0"/>
<wire x1="-2.54" y1="25.4" x2="10.16" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="R9"/>
<wire x1="99.06" y1="111.76" x2="71.12" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B2" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="(SDA)PC1"/>
<wire x1="-2.54" y1="27.94" x2="10.16" y2="27.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="R10"/>
<wire x1="99.06" y1="109.22" x2="71.12" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B3" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PC2"/>
<wire x1="-2.54" y1="30.48" x2="10.16" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="R11"/>
<wire x1="99.06" y1="106.68" x2="71.12" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B4" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PC3"/>
<wire x1="-2.54" y1="33.02" x2="10.16" y2="33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="R12"/>
<wire x1="99.06" y1="104.14" x2="71.12" y2="104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B5" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PC4"/>
<wire x1="-2.54" y1="35.56" x2="10.16" y2="35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="R13"/>
<wire x1="99.06" y1="101.6" x2="71.12" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B6" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PC5"/>
<wire x1="-2.54" y1="38.1" x2="10.16" y2="38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="R14"/>
<wire x1="99.06" y1="99.06" x2="71.12" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B7" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="(TOSC1)PC6"/>
<wire x1="-2.54" y1="40.64" x2="10.16" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="R15"/>
<wire x1="99.06" y1="96.52" x2="71.12" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B8" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="(TOSC2)PC7"/>
<wire x1="-2.54" y1="43.18" x2="10.16" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="R16"/>
<wire x1="99.06" y1="93.98" x2="71.12" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RX" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="(RXD)PD0"/>
<wire x1="-2.54" y1="2.54" x2="20.32" y2="2.54" width="0.1524" layer="91"/>
<pinref part="RX" gate="PIN" pin="PIN1"/>
<wire x1="20.32" y1="2.54" x2="20.32" y2="-12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TX" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="(TXD)PD1"/>
<wire x1="-2.54" y1="5.08" x2="22.86" y2="5.08" width="0.1524" layer="91"/>
<pinref part="TX" gate="PIN" pin="PIN1"/>
<wire x1="22.86" y1="5.08" x2="22.86" y2="-12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="(AIN0/OC0)PB2"/>
<pinref part="D5" gate="PIN" pin="PIN1"/>
<wire x1="38.1" y1="53.34" x2="-2.54" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="(OC1B)PD4"/>
<pinref part="A" gate="PIN" pin="PIN1"/>
<wire x1="48.26" y1="12.7" x2="-2.54" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="(INT0)PD2"/>
<wire x1="-2.54" y1="7.62" x2="48.26" y2="7.62" width="0.1524" layer="91"/>
<pinref part="SW" gate="PIN" pin="PIN1"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="(AIN1/INT2)PB3"/>
<wire x1="-2.54" y1="55.88" x2="38.1" y2="55.88" width="0.1524" layer="91"/>
<pinref part="D4" gate="PIN" pin="PIN1"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="(INT1)PD3"/>
<wire x1="-2.54" y1="10.16" x2="48.26" y2="10.16" width="0.1524" layer="91"/>
<pinref part="B" gate="PIN" pin="PIN1"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="A"/>
<wire x1="78.74" y1="12.7" x2="63.5" y2="12.7" width="0.1524" layer="91"/>
<pinref part="A." gate="PIN" pin="PIN1"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="B"/>
<wire x1="71.12" y1="7.62" x2="78.74" y2="7.62" width="0.1524" layer="91"/>
<wire x1="71.12" y1="10.16" x2="71.12" y2="7.62" width="0.1524" layer="91"/>
<wire x1="63.5" y1="10.16" x2="71.12" y2="10.16" width="0.1524" layer="91"/>
<pinref part="B." gate="PIN" pin="PIN1"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="SW." gate="PIN" pin="PIN1"/>
<wire x1="63.5" y1="7.62" x2="68.58" y2="7.62" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="SW"/>
<wire x1="78.74" y1="2.54" x2="68.58" y2="2.54" width="0.1524" layer="91"/>
<wire x1="68.58" y1="2.54" x2="68.58" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="GND"/>
<wire x1="78.74" y1="-10.16" x2="66.04" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="GD." gate="PIN" pin="PIN1"/>
<wire x1="63.5" y1="5.08" x2="66.04" y2="5.08" width="0.1524" layer="91"/>
<wire x1="66.04" y1="5.08" x2="66.04" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="V+." gate="PIN" pin="PIN1"/>
<pinref part="IC2" gate="G$1" pin="VCC"/>
<wire x1="63.5" y1="15.24" x2="68.58" y2="15.24" width="0.1524" layer="91"/>
<wire x1="68.58" y1="15.24" x2="68.58" y2="17.78" width="0.1524" layer="91"/>
<wire x1="68.58" y1="17.78" x2="78.74" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="(OC1A)PD5"/>
<pinref part="D7" gate="PIN" pin="PIN1"/>
<wire x1="-2.54" y1="15.24" x2="30.48" y2="15.24" width="0.1524" layer="91"/>
<wire x1="30.48" y1="15.24" x2="30.48" y2="48.26" width="0.1524" layer="91"/>
<wire x1="30.48" y1="48.26" x2="38.1" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="D6" gate="PIN" pin="PIN1"/>
<pinref part="IC1" gate="G$1" pin="(ICP)PD6"/>
<wire x1="38.1" y1="50.8" x2="27.94" y2="50.8" width="0.1524" layer="91"/>
<wire x1="27.94" y1="50.8" x2="27.94" y2="17.78" width="0.1524" layer="91"/>
<wire x1="27.94" y1="17.78" x2="-2.54" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="+V." gate="PIN" pin="PIN1"/>
<pinref part="LCD_VDD" gate="PIN" pin="PIN1"/>
<wire x1="53.34" y1="63.5" x2="83.82" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="G." gate="PIN" pin="PIN1"/>
<pinref part="LCD_VSS" gate="PIN" pin="PIN1"/>
<wire x1="53.34" y1="45.72" x2="83.82" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="D7." gate="PIN" pin="PIN1"/>
<pinref part="LCD_DB7" gate="PIN" pin="PIN1"/>
<wire x1="53.34" y1="48.26" x2="83.82" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="D6." gate="PIN" pin="PIN1"/>
<pinref part="LCD_DB6" gate="PIN" pin="PIN1"/>
<wire x1="53.34" y1="50.8" x2="83.82" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="EN." gate="PIN" pin="PIN1"/>
<pinref part="LCD_EN" gate="PIN" pin="PIN1"/>
<wire x1="53.34" y1="58.42" x2="83.82" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="RS." gate="PIN" pin="PIN1"/>
<pinref part="LCD_RS" gate="PIN" pin="PIN1"/>
<wire x1="83.82" y1="60.96" x2="53.34" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="D4." gate="PIN" pin="PIN1"/>
<pinref part="LCD_DB4" gate="PIN" pin="PIN1"/>
<wire x1="83.82" y1="55.88" x2="53.34" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="D5." gate="PIN" pin="PIN1"/>
<wire x1="53.34" y1="53.34" x2="83.82" y2="53.34" width="0.1524" layer="91"/>
<pinref part="LCD_DB5" gate="PIN" pin="PIN1"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="(OC2)PD7"/>
<wire x1="-2.54" y1="20.32" x2="25.4" y2="20.32" width="0.1524" layer="91"/>
<wire x1="25.4" y1="20.32" x2="25.4" y2="58.42" width="0.1524" layer="91"/>
<pinref part="EN" gate="PIN" pin="PIN1"/>
<wire x1="25.4" y1="58.42" x2="38.1" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="(T0/XCK)PB0"/>
<wire x1="-2.54" y1="48.26" x2="22.86" y2="48.26" width="0.1524" layer="91"/>
<wire x1="22.86" y1="48.26" x2="22.86" y2="60.96" width="0.1524" layer="91"/>
<pinref part="RS" gate="PIN" pin="PIN1"/>
<wire x1="22.86" y1="60.96" x2="38.1" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
