print("[ *** IAN Toliss Custom Script - Version 1.1 - 28 July 2025" )
print("[ *** IAN Toliss Custom Script - aircraft type is... ]" )
print(PLANE_ICAO)

-- ToLiss only
if PLANE_ICAO == "A319" or PLANE_ICAO == "A321" or PLANE_ICAO == "A21N" 
   or PLANE_ICAO == "A20N" or PLANE_ICAO == "A346" or PLANE_ICAO == "A339" then

print("[ *** IAN Toliss Custom Script loaded ]" )

-- file:///C:/Users/ian/Downloads/FlyWithLua_Manual_en-1.pdf   section 2.2.4
local cargodoors    = dataref_table( "AirbusFBW/CargoDoorModeArray")
local paxdoors       = dataref_table( "AirbusFBW/PaxDoorModeArray")
local dubrightness  = dataref_table( "AirbusFBW/DUBrightness")

--AirbusFBW/CabinLightLevel


function PaxDoorsClose()
         print("[ *** Toliss Custom/PaxDoorsClose]" )
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
         print("[ *** Toliss Custom/PaxGate1]" )
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
         print("[ *** Toliss Custom/PaxGate1R]" )
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
         print("[ *** Toliss Custom/PaxGateAll]" )
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
         print("[ *** Toliss Custom/PaxStand1]" )
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
         print("[ *** Toliss Custom/PaxStand1R]" )
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
         print("[ *** Toliss Custom/PaxStandAll]" )
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
         print("[ *** Toliss Custom/CargoDoorOpen]" )
         cargodoors[0]=2
         cargodoors[1]=2
         cargodoors[2]=2
end 

function CargoDoorsClose()
         print("[ *** Toliss Custom/CargoDoorClose]" )
         cargodoors[0]=0
         cargodoors[1]=0
         cargodoors[2]=0
end 

function DUBright()
         print("[ *** ian/DUBright]" )
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
      fcubrightnesdataref = XPLMFindDataRef( "AirbusFBW/FCUIntegralBrightness")   

      XPLMSetDataf( intbrightnesdataref, 1.0 )
      XPLMSetDataf( fcubrightnesdataref, 1.0 )

end

function IntegralMedium()
      print("[ *** ian/IntMed]" )

      intbrightnesdataref = XPLMFindDataRef( "AirbusFBW/PanelBrightnessLevel")  
      fcubrightnesdataref = XPLMFindDataRef( "AirbusFBW/FCUIntegralBrightness")   

      XPLMSetDataf( intbrightnesdataref, 0.5 )
      XPLMSetDataf( fcubrightnesdataref, 0.5 )

end

function IntegralDim()
      print("[ *** ian/IntDim]" )

      intbrightnesdataref = XPLMFindDataRef( "AirbusFBW/PanelBrightnessLevel")     
      fcubrightnesdataref = XPLMFindDataRef( "AirbusFBW/FCUIntegralBrightness")   

      XPLMSetDataf( intbrightnesdataref, 0.1 )
      XPLMSetDataf( fcubrightnesdataref, 0.1 )

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
      XPLMSetDataf( ohpbrightnesdataref, 0.1 )
end

function CabinLightsOFF()
      print("[ *** ian/CabinLightsOFF]" )

      cabinlights = XPLMFindDataRef( "AirbusFBW/CabinLightLevel")   
      XPLMSetDataf( cabinlights, 0.0 )
end

function CabinLightsTOLAND()
      print("[ *** ian/CabinLightsTOLAND]" )

      cabinlights = XPLMFindDataRef( "AirbusFBW/CabinLightLevel")   
      XPLMSetDataf( cabinlights, 0.25 )
end

function CabinLightsON()
      print("[ *** ian/CabinLightsON]" )

      cabinlights = XPLMFindDataRef( "AirbusFBW/CabinLightLevel")   
      XPLMSetDataf( cabinlights, 1 )
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

      XPLMSetDataf( panelflood, 0.05 )
      XPLMSetDataf( pedestalflood, 0.05 )
end

function FloodLightsBright()
      print("[ *** ian/FloodLightsBright]" )

      panelflood = XPLMFindDataRef( "AirbusFBW/PanelFloodBrightnessLevel")   
      pedestalflood = XPLMFindDataRef( "AirbusFBW/PedestalFloodBrightnessLevel")   

      XPLMSetDataf( panelflood, 1 )
      XPLMSetDataf( pedestalflood, 1 )
end

function RapidPowerOn()
      print("[ *** ian/RapidPowerOn]" )

      fuelohparray  = dataref_table( "AirbusFBW/FuelOHPArray")
      adirusarray  = dataref_table( "AirbusFBW/ADIRUSwitchArray")
      crewoxy = XPLMFindDataRef( "AirbusFBW/CrewOxySwitch")   

      command_once("toliss_airbus/eleccommands/Bat1Toggle")
      command_once("toliss_airbus/eleccommands/Bat2Toggle")
      command_once("toliss_airbus/eleccommands/ExtPowToggle")

      XPLMSetDataf( crewoxy, 1 )
      fuelohparray[0]=1
      fuelohparray[1]=1
      fuelohparray[2]=1
      fuelohparray[3]=1
      fuelohparray[4]=1

      adirusarray[0]=1
      adirusarray[1]=1
      adirusarray[2]=1      
end



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
create_command("ian/CabinLightsON", "Make all display units dim", "CabFBS/FBWinbLightsON()", "", "")


create_command("ian/FloodLightsOff", "Make all display units bright", "FloodLightsOff()", "", "")
create_command("ian/FloodLightsDim", "Make all display units medium brightness", "FloodLightsDim()", "", "")
create_command("ian/FloodLightsBright", "Make all display units dim", "FloodLightsBright()", "", "")

create_command("ian/RapidPowerOn", "Make all display units dim", "RapidPowerOn()", "", "")



end -- ToLiss only      