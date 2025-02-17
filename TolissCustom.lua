
print("[ *** IAN Toliss Custom Script - aircraft type is... ]" )
print(PLANE_ICAO)

-- ToLiss only
if PLANE_ICAO == "A319" or PLANE_ICAO == "A321" or PLANE_ICAO == "A21N" 
   or PLANE_ICAO == "A20N" or PLANE_ICAO == "A346" or PLANE_ICAO == "A339" then

print("[ *** IAN Toliss Custom Script loaded ]" )

-- file:///C:/Users/ian/Downloads/FlyWithLua_Manual_en-1.pdf   section 2.2.4
local cargodoors = dataref_table( "AirbusFBW/CargoDoorModeArray")
local paxdoors    = dataref_table( "AirbusFBW/PaxDoorModeArray")


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

create_command("ian/PaxClose", "Close all passenger doors", "PaxDoorsClose()", "", "")

create_command("ian/PaxGate1", "Open pax front left only for gate arrival", "PaxGate1()", "", "")
create_command("ian/PaxGate1R", "Open pax front left, and rear+stairs for gate arrival", "PaxGate1R()", "", "")
create_command("ian/PaxGateALL", "Open pax all + trucks for gate arrival", "PaxGateAll()", "", "")

create_command("ian/PaxStand1", "Open pax front left only for stand arrival", "PaxStand1()", "", "")
create_command("ian/PaxStand1R", "Open pax front left, and rear+stairs for stand arrival", "PaxStand1R()", "", "")
create_command("ian/PaxStandALL", "Open pax all + trucks for stand arrival", "PaxStandAll()", "", "")

create_command("ian/CargoOpen", "Open all cargo doors", "CargoDoorsOpen()", "", "")
create_command("ian/CargoClose", "Close all cargo doors", "CargoDoorsClose()", "", "")


end -- ToLiss only      