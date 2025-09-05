-- TolissXKeyPadHelper
-- Copyright (C) 2025  Ian Oliver
-- Version 1.5

-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.

-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.

-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.


print("[ *** IAN TolissXKeyPadHelper - Version 1.2 - 5 August 2025" )
print("[ *** - aircraft type is... ]" )
print(PLANE_ICAO)

-- ToLiss only
if PLANE_ICAO == "A319" or PLANE_ICAO == "A321" or PLANE_ICAO == "A21N" 
   or PLANE_ICAO == "A20N" or PLANE_ICAO == "A346" or PLANE_ICAO == "A339" then

print("[ *** IAN TolissXKeyPadHelper: Script loaded for selected aircraft type ]" )

-- file:///C:/Users/ian/Downloads/FlyWithLua_Manual_en-1.pdf   section 2.2.4

function PaxDoorsClose()
         print("[ *** ian/PaxDoorsClose]" )

         paxdoors       = dataref_table( "AirbusFBW/PaxDoorModeArray")
         paxdoors[0]=0
         paxdoors[1]=0
         paxdoors[2]=0
         paxdoors[3]=0
         paxdoors[4]=0
         paxdoors[5]=0
         paxdoors[6]=0
         paxdoors[7]=0
end 

function PaxGate1()
         print("[ *** ian/PaxGate1]" )

         paxdoors       = dataref_table( "AirbusFBW/PaxDoorModeArray")
         paxdoors[0]=2
         paxdoors[1]=0
         paxdoors[2]=0
         paxdoors[3]=0
         paxdoors[4]=0
         paxdoors[5]=0
         paxdoors[6]=0
         paxdoors[7]=0
end 

function PaxGate1R()
         print("[ *** ian/PaxGate1R]" )

         paxdoors       = dataref_table( "AirbusFBW/PaxDoorModeArray")
         paxdoors[0]=2
         paxdoors[1]=0
         paxdoors[2]=0
         paxdoors[3]=0
         paxdoors[4]=0
         paxdoors[5]=0
         paxdoors[6]=2
         paxdoors[7]=0
end 

function PaxGateAll()
         print("[ *** ian/PaxGateAll]" )

         paxdoors       = dataref_table( "AirbusFBW/PaxDoorModeArray")
         paxdoors[0]=2
         paxdoors[1]=2
         paxdoors[2]=0
         paxdoors[3]=0
         paxdoors[4]=0
         paxdoors[5]=0
         paxdoors[6]=2
         paxdoors[7]=2
end 




function PaxStand1()
         print("[ *** ian/PaxStand1]" )

         paxdoors       = dataref_table( "AirbusFBW/PaxDoorModeArray")
         paxdoors[0]=2
         paxdoors[1]=0
         paxdoors[2]=0
         paxdoors[3]=0
         paxdoors[4]=0
         paxdoors[5]=0
         paxdoors[6]=0
         paxdoors[7]=0
end 

function PaxStand1R()
         print("[ *** ian/PaxStand1R]" )

         paxdoors       = dataref_table( "AirbusFBW/PaxDoorModeArray")
         paxdoors[0]=2
         paxdoors[1]=0
         paxdoors[2]=0
         paxdoors[3]=0
         paxdoors[4]=0
         paxdoors[5]=0
         paxdoors[6]=2
         paxdoors[7]=0
end 

function PaxStandAll()
         print("[ *** ian/PaxStandAll]" )

         paxdoors       = dataref_table( "AirbusFBW/PaxDoorModeArray")
         paxdoors[0]=2
         paxdoors[1]=2
         paxdoors[2]=0
         paxdoors[3]=0
         paxdoors[4]=0
         paxdoors[5]=0
         paxdoors[6]=2
         paxdoors[7]=2
end 

function CargoDoorsOpen()
         print("[ *** ian/CargoDoorOpen]" )

         cargodoors    = dataref_table( "AirbusFBW/CargoDoorModeArray")
         cargodoors[0]=2
         cargodoors[1]=2
         cargodoors[2]=2
end 

function CargoDoorsClose()
         print("[ *** ian/CargoDoorClose]" )

         cargodoors    = dataref_table( "AirbusFBW/CargoDoorModeArray")
         cargodoors[0]=0
         cargodoors[1]=0
         cargodoors[2]=0
end 

function DUBright()
         print("[ *** ian/DUBright]" )

         dubrightness  = dataref_table( "AirbusFBW/DUBrightness")
         dubrightness[0]=1
         dubrightness[1]=1
         dubrightness[2]=1
         dubrightness[3]=1   
         dubrightness[4]=1
         dubrightness[5]=1
         dubrightness[6]=1
         dubrightness[7]=1
end 

function DUMedium()
         print("[ *** ian/DUMedium]" )

         dubrightness  = dataref_table( "AirbusFBW/DUBrightness")
         dubrightness[0]=0.5
         dubrightness[1]=0.5
         dubrightness[2]=0.5
         dubrightness[3]=0.5      
         dubrightness[4]=0.5
         dubrightness[5]=0.5            
         dubrightness[6]=0.5
         dubrightness[7]=0.5
end 

function DUDim()
         print("[ *** ian/DUDim]" )

         dubrightness  = dataref_table( "AirbusFBW/DUBrightness")
         dubrightness[0]=0.2
         dubrightness[1]=0.2
         dubrightness[2]=0.2
         dubrightness[3]=0.2      
         dubrightness[4]=0.2
         dubrightness[5]=0.2         
         dubrightness[6]=0.2
         dubrightness[7]=0.2
end 

function IntegralBright()
      print("[ *** ian/IntBright]" )  

      intbrightnesdataref = XPLMFindDataRef( "AirbusFBW/PanelBrightnessLevel")   
       fcurheostats  = dataref_table( "AirbusFBW/SupplLightLevelRehostats")

      XPLMSetDataf( intbrightnesdataref, 1.0 )
      fcurheostats[0]=1.0
      fcurheostats[1]=1.0
end

function IntegralMedium()
      print("[ *** ian/IntMed]" )

      intbrightnesdataref = XPLMFindDataRef( "AirbusFBW/PanelBrightnessLevel")  
       fcurheostats  = dataref_table( "AirbusFBW/SupplLightLevelRehostats")

      XPLMSetDataf( intbrightnesdataref, 0.5 )
      fcurheostats[0]=0.4
      fcurheostats[1]=0.6
end

function IntegralDim()
      print("[ *** ian/IntDim]" )

      intbrightnesdataref = XPLMFindDataRef( "AirbusFBW/PanelBrightnessLevel")     
       fcurheostats  = dataref_table( "AirbusFBW/SupplLightLevelRehostats")

      XPLMSetDataf( intbrightnesdataref, 0.1 )
      fcurheostats[0]=0.025
      fcurheostats[1]=0.1
end

function OHPBright()
      print("[ *** ian/OHPBright]" )

      ohpbrightnesdataref = XPLMFindDataRef( "AirbusFBW/OHPBrightnessLevel")
      XPLMSetDataf( ohpbrightnesdataref, 1.0 )
end

function OHPMedium()
      print("[ *** ian/OHPMed]" )

      ohpbrightnesdataref = XPLMFindDataRef( "AirbusFBW/OHPBrightnessLevel")   
      XPLMSetDataf( ohpbrightnesdataref, 0.5 )
end

function OHPDim()
      print("[ *** ian/OHPDim]" )

      ohpbrightnesdataref = XPLMFindDataRef( "AirbusFBW/OHPBrightnessLevel")   
      XPLMSetDataf( ohpbrightnesdataref, 0.025 )
end

function CabinLightsOFF()
      print("[ *** ian/CabinLightsOFF]" )

      cabinlights = XPLMFindDataRef( "AirbusFBW/cabinLightLevel_perc")   
      XPLMSetDataf( cabinlights, 0.0 )
end

function CabinLightsTOLAND()
      print("[ *** ian/CabinLightsTOLAND]" )

      cabinlights = XPLMFindDataRef( "AirbusFBW/cabinLightLevel_perc")   
      XPLMSetDataf( cabinlights, 1.0 )
end 

function CabinLightsMED()
      print("[ *** ian/CabinLightsMED]" )

      cabinlights = XPLMFindDataRef( "AirbusFBW/cabinLightLevel_perc")   
      XPLMSetDataf( cabinlights, 15.0 )
end

function CabinLightsON()
      print("[ *** ian/CabinLightsON]" )

      cabinlights = XPLMFindDataRef( "AirbusFBW/cabinLightLevel_perc")   
      XPLMSetDataf( cabinlights, 100.0 )
end


function FloodLightsOff()
      print("[ *** ian/FloodLightsOff]" )

      panelflood = XPLMFindDataRef( "AirbusFBW/PanelFloodBrightnessLevel")   
      pedestalflood = XPLMFindDataRef( "AirbusFBW/PedestalFloodBrightnessLevel")   

      XPLMSetDataf( panelflood, 0 )
      XPLMSetDataf( pedestalflood, 0 )
end

function FloodLightsDim()
      print("[ *** ian/FloodLightsDim]" )

      panelflood = XPLMFindDataRef( "AirbusFBW/PanelFloodBrightnessLevel")   
      pedestalflood = XPLMFindDataRef( "AirbusFBW/PedestalFloodBrightnessLevel")   

      XPLMSetDataf( panelflood, 0.1 )
      XPLMSetDataf( pedestalflood, 0.1 )
end

function FloodLightsBright()
      print("[ *** ian/FloodLightsBright]" )

      panelflood = XPLMFindDataRef( "AirbusFBW/PanelFloodBrightnessLevel")   
      pedestalflood = XPLMFindDataRef( "AirbusFBW/PedestalFloodBrightnessLevel")   

      XPLMSetDataf( panelflood, 1 )
      XPLMSetDataf( pedestalflood, 1 )
end

function BrightnessNight()
     print("[ *** ian/BrightnessNight ]" )


      command_once("toliss_airbus/lightcommands/DomeLightDown")  -- run twice to ensure dome lights off
      command_once("toliss_airbus/lightcommands/DomeLightDown")

   
     FloodLightsOff()
     CabinLightsMED()
     OHPDim()
     IntegralDim()
     DUBright()
end

function BrightnessNightDomeDim()
     print("[ *** ian/BrightnessNightDomeDim ]" )

      command_once("toliss_airbus/lightcommands/DomeLightDown")  -- run twice to ensure dome lights off
      command_once("toliss_airbus/lightcommands/DomeLightDown")
      command_once("toliss_airbus/lightcommands/DomeLightUp") -- and once up to ensure dome lights are dim

     FloodLightsOff()
     CabinLightsMED()
     OHPDim()
     IntegralDim()
     DUBright()
end

function PanelLightingOff()
         print("[ *** ian/PanelLightingOff]" )

      FloodLightsOff()
      ohpbrightnesdataref = XPLMFindDataRef( "AirbusFBW/OHPBrightnessLevel")   
      XPLMSetDataf( ohpbrightnesdataref, 0.00 )
      
      intbrightnesdataref = XPLMFindDataRef( "AirbusFBW/PanelBrightnessLevel")     
      fcurheostats  = dataref_table( "AirbusFBW/SupplLightLevelRehostats")

      XPLMSetDataf( intbrightnesdataref, 0 )
      fcurheostats[0]=0
      fcurheostats[1]=0   
end

function RapidPowerOn()
      print("[ *** ian/RapidPowerOn]" )

      fuelohparray  = dataref_table( "AirbusFBW/FuelOHPArray")
      adirusarray  = dataref_table( "AirbusFBW/ADIRUSwitchArray")
      ohpswitches = dataref_table( "AirbusFBW/OHPLightSwitches")
      crewoxy = XPLMFindDataRef( "AirbusFBW/CrewOxySwitch")   
      captpurs = XPLMFindDataRef( "ckpt/oh/capt/anim")

      command_once("toliss_airbus/eleccommands/Bat1Toggle")
      command_once("toliss_airbus/eleccommands/Bat2Toggle")
      command_once("toliss_airbus/eleccommands/ExtPowToggle")
      command_once("toliss_airbus/lightcommands/FSBSignOn")
      command_once("toliss_airbus/lightcommands/NSSignUp")  -- run twice to make sure Wifi is OFF
      command_once("toliss_airbus/lightcommands/NSSignUp")

      command_once("toliss_airbus/lightcommands/DomeLightUp") -- run twice to make sure dome is bright
      command_once("toliss_airbus/lightcommands/DomeLightUp") 

      XPLMSetDatai( crewoxy, 1 )
      fuelohparray[0]=1
      fuelohparray[1]=1
      fuelohparray[2]=1
      fuelohparray[3]=1
      fuelohparray[4]=1
      fuelohparray[5]=1
      fuelohparray[6]=1

      adirusarray[0]=1
      adirusarray[1]=1
      adirusarray[2]=1      

      XPLMSetDatai( captpurs, 1 )
      ohpswitches[9]=1 -- STBY Compass on
      ohpswitches[10]=1 -- Emergency Exits arm

      FloodLightsBright()
      CabinLightsMED()
end

function RapidPowerOff()
      print("[ *** ian/RapidPowerOff]" )

      fuelohparray  = dataref_table( "AirbusFBW/FuelOHPArray")
      adirusarray  = dataref_table( "AirbusFBW/ADIRUSwitchArray")
      ohpswitches = dataref_table( "AirbusFBW/OHPLightSwitches")
      crewoxy = XPLMFindDataRef( "AirbusFBW/CrewOxySwitch")   
      captpurs = XPLMFindDataRef( "ckpt/oh/capt/anim")

      command_once("toliss_airbus/eleccommands/Bat1Toggle")
      command_once("toliss_airbus/eleccommands/Bat2Toggle")
      command_once("toliss_airbus/eleccommands/ExtPowToggle")
      command_once("toliss_airbus/lightcommands/FSBSignOff")
      command_once("toliss_airbus/lightcommands/NSSignUp")  -- run twice to makesure Wifi is OFF
      command_once("toliss_airbus/lightcommands/NSSignUp")

      XPLMSetDatai( crewoxy, 0 )
      fuelohparray[0]=0
      fuelohparray[1]=0
      fuelohparray[2]=0
      fuelohparray[3]=0
      fuelohparray[4]=0
      fuelohparray[5]=0
      fuelohparray[6]=0

      adirusarray[0]=0
      adirusarray[1]=0
      adirusarray[2]=0     

      XPLMSetDatai( captpurs, 0 )
      ohpswitches[9]=0 -- STBY Compass off
      ohpswitches[10]=0 -- Emergency Exits off

      CabinLightsOFF() 
end

-- NB: AirbusFBW/WXPowerSwitch
-- This takes the value  "0" when SYS 1 is on
-- This takes the value  "1" when wx radar is off
-- This takes the value  "2" when SYS 2 is on

function WXRadarToggle()
     print("[ *** ian/WXRadarToggle]" )

      wxsys = XPLMFindDataRef( "AirbusFBW/WXPowerSwitch")
      gcs = XPLMFindDataRef( "ckpt/ped/radar/gcs/anim")
      multiscan = XPLMFindDataRef( "ckpt/ped/radar/manAuto/anim")
      val = XPLMGetDatai( wxsys )

      if  (val==0)                       -- sys1 on
      then 
          XPLMSetDatai( wxsys, 1 )   -- set to off
          XPLMSetDatai( gcs, 0 )  
          XPLMSetDatai( multiscan, 0 )  

      elseif (val==1)                  -- if off
      then 
          XPLMSetDatai( wxsys, 2 )   -- set sys2
          XPLMSetDatai( gcs, 1 )  
          XPLMSetDatai( multiscan, 1 )  
      elseif (val==2)                  -- if sys2 on
      then 
          XPLMSetDatai( wxsys, 0 )   -- set sys1
          XPLMSetDatai( gcs, 1 )  
          XPLMSetDatai( multiscan, 1 )  
      else
          XPLMSetDatai( wxsys, 1 )   -- should never get here, but if it does, then set to off (This is unreachable code)
           print("==========================================================================")
           print("ian/WXRadarToggle reached unreachable code. Inform the author immediately. WXRadar is set to off for Xplanes sanity!")
           print("You should raise an issue on the github page for this immediately: https://github.com/iolivergithub/TolissXKeyPadHelper")
           print("==========================================================================")
      end
end


-- function AreBrakesHot()
--          print("[ *** ian/AreBrakesHot]" )
--          b       = dataref_table( "AirbusFBW/BrakeTempArray")

--          if (b[0]>280 or b[1]>280 or b[2]>280 or b[3]>280) then
--             return 1
--          else
--             return 0
-- end


create_command("ian/PaxClose", "Close all passenger doors", "PaxDoorsClose()", "", "")

create_command("ian/PaxGate1", "Open pax front left only for gate arrival", "PaxGate1()", "", "")
create_command("ian/PaxGate1R", "Open pax front left, and rear+stairs for gate arrival", "PaxGate1R()", "", "")
create_command("ian/PaxGateALL", "Open pax all + trucks for gate arrival", "PaxGateAll()", "", "")

create_command("ian/PaxStand1", "Open pax front left only for stand arrival", "PaxStand1()", "", "")
create_command("ian/PaxStand1R", "Open pax front left, and rear+stairs for stand arrival", "PaxStand1R()", "", "")
create_command("ian/PaxStandALL", "Open pax all + trucks for stand arrival", "PaxStandAll()", "", "")

create_command("ian/CargoOpen", "Open all cargo doors", "CargoDoorsOpen()", "", "")
create_command("ian/CargoClose", "Close all cargo doors", "CargoDoorsClose()", "", "")

create_command("ian/DUBright", "Make all display units bright", "DUBright()", "", "")
create_command("ian/DUMedium", "Make all display units medium brightness", "DUMedium()", "", "")
create_command("ian/DUDim", "Make all display units dim", "DUDim()", "", "")

create_command("ian/IntegralBright", "Make all display units bright", "IntegralBright()", "", "")
create_command("ian/IntegralMedium", "Make all display units medium brightness", "IntegralMedium()", "", "")
create_command("ian/IntegralDim", "Make all display units dim", "IntegralDim()", "", "")

create_command("ian/OHPBright", "Make all display units bright", "OHPBright()", "", "")
create_command("ian/OHPMedium", "Make all display units medium brightness", "OHPMedium()", "", "")
create_command("ian/OHPDim", "Make all display units dim", "OHPDim()", "", "")

create_command("ian/CabinLightsOFF", "Make all display units bright", "CabinLightsOFF()", "", "")
create_command("ian/CabinLightsTOLAND", "Make all display units medium brightness", "CabinLightsTOLAND()", "", "")
create_command("ian/CabinLightsMED", "Make all display units medium brightness", "CabinLightsMED()", "", "")
create_command("ian/CabinLightsON", "Make all display units dim", "CabinLightsON()", "", "")


create_command("ian/FloodLightsOff", "Make all display units bright", "FloodLightsOff()", "", "")
create_command("ian/FloodLightsDim", "Make all display units medium brightness", "FloodLightsDim()", "", "")
create_command("ian/FloodLightsBright", "Make all display units dim", "FloodLightsBright()", "", "")

create_command("ian/RapidPowerOn", "Make all display units dim", "RapidPowerOn()", "", "")
create_command("ian/RapidPowerOff", "Make all display units dim", "RapidPowerOff()", "", "")

create_command("ian/BrightnessNight", "Make all display units dim", "BrightnessNight()", "", "")
create_command("ian/BrightnessNightDomeDim", "Make all display units dim", "BrightnessNightDomeDim()", "", "")

create_command("ian/PanelLightingOff", "Make all display units dim", "PanelLightingOff()", "", "")

create_command("ian/WXRadarToggle", "Make all display units dim", "WXRadarToggle()", "", "")

end -- ToLiss only      