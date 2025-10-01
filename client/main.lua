local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1
L0_1 = IsDuplicityVersion
L0_1 = L0_1()
if L0_1 then
  L0_1 = GetPlayerPositionInRealTime27
  L0_1()
end
L0_1 = false
L1_1 = false
L2_1 = nil
usinggym = false
L3_1 = {}
L3_1.gymid = nil
L3_1.exerciseid = nil
L4_1 = false
L5_1 = false
L6_1 = {}
L6_1.gymid = nil
L6_1.exerciseid = nil
usinggym2 = false
L7_1 = ""
L8_1 = nil
L9_1 = nil
L10_1 = nil
L11_1 = nil
L12_1 = nil
L13_1 = false
L14_1 = {}
L15_1 = {}
L16_1 = nil
L17_1 = nil
L18_1 = nil
L19_1 = false
L20_1 = {}
L21_1 = false
L22_1 = {}
L22_1.strenght = 50.0
L22_1.condition = 25.0
L22_1.hygiene = 100.0
L22_1.swimming = 25.0
L22_1.energy = 100.0
playerneeds = L22_1
playerloaded = false
L22_1 = false
L23_1 = false
L24_1 = true
L25_1 = 100
function L26_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Config
  L1_2 = L1_2.DifferentStatsSystem
  if false == L1_2 then
    L1_2 = playerneeds
    L2_2 = tostring
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L1_2 = L1_2[L2_2]
    return L1_2
  else
    L1_2 = 0
    return L1_2
  end
end
GetStats = L26_1
function L26_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.DifferentStatsSystem
  if false == L0_2 then
    L0_2 = playerneeds
    return L0_2
  else
    L0_2 = {}
    return L0_2
  end
end
GetAllStats = L26_1
function L26_1()
  local L0_2, L1_2
  L0_2 = false
  L1_2 = usinggym
  if true == L1_2 then
    L0_2 = true
  else
    L1_2 = usinggym2
    if true == L1_2 then
      L0_2 = true
    end
  end
  return L0_2
end
IsPlayerExercise = L26_1
function L26_1()
  local L0_2, L1_2
  L0_2 = L21_1
  return L0_2
end
IsPlayerShowering = L26_1
function L26_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = ipairs
  L1_2 = Config
  L1_2 = L1_2.Gyms
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.gymblip
    L6_2 = L6_2.blip
    if L6_2 then
      L6_2 = L20_1
      L7_2 = AddBlipForCoord
      L8_2 = L5_2.gymcoords
      L8_2 = L8_2.x
      L9_2 = L5_2.gymcoords
      L9_2 = L9_2.y
      L10_2 = L5_2.gymcoords
      L10_2 = L10_2.z
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2[L4_2] = L7_2
      L6_2 = SetBlipSprite
      L7_2 = L20_1
      L7_2 = L7_2[L4_2]
      L8_2 = L5_2.gymblip
      L8_2 = L8_2.blipiconid
      L6_2(L7_2, L8_2)
      L6_2 = SetBlipDisplay
      L7_2 = L20_1
      L7_2 = L7_2[L4_2]
      L8_2 = L5_2.gymblip
      L8_2 = L8_2.blipdisplay
      L6_2(L7_2, L8_2)
      L6_2 = SetBlipScale
      L7_2 = L20_1
      L7_2 = L7_2[L4_2]
      L8_2 = L5_2.gymblip
      L8_2 = L8_2.blipscale
      L6_2(L7_2, L8_2)
      L6_2 = SetBlipColour
      L7_2 = L20_1
      L7_2 = L7_2[L4_2]
      L8_2 = L5_2.gymblip
      L8_2 = L8_2.blipcolor
      L6_2(L7_2, L8_2)
      L6_2 = SetBlipAsShortRange
      L7_2 = L20_1
      L7_2 = L7_2[L4_2]
      L8_2 = L5_2.gymblip
      L8_2 = L8_2.blipshortrange
      L6_2(L7_2, L8_2)
      L6_2 = BeginTextCommandSetBlipName
      L7_2 = "STRING"
      L6_2(L7_2)
      L6_2 = AddTextComponentSubstringPlayerName
      L7_2 = L5_2.gymname
      L6_2(L7_2)
      L6_2 = EndTextCommandSetBlipName
      L7_2 = L20_1
      L7_2 = L7_2[L4_2]
      L6_2(L7_2)
    end
  end
end
CreateGymBlips = L26_1
L26_1 = false
L27_1 = false
L28_1 = true
L29_1 = 100
function L30_1()
  local L0_2, L1_2, L2_2
  L0_2 = Config
  L0_2 = L0_2.GymReactionMinigame
  if L0_2 then
    L0_2 = L26_1
    if false == L0_2 then
      L0_2 = 100
      L29_1 = L0_2
      L0_2 = false
      L27_1 = L0_2
      L0_2 = true
      L28_1 = L0_2
      L0_2 = true
      L26_1 = L0_2
      L0_2 = SendNUIMessage
      L1_2 = {}
      L1_2.message = "gymprogressshow"
      L2_2 = Config
      L2_2 = L2_2.GymReactionMinigameKey
      L1_2.gymreactkey = L2_2
      L0_2(L1_2)
      while true do
        L0_2 = L26_1
        if true ~= L0_2 then
          break
        end
        L0_2 = L27_1
        if false ~= L0_2 then
          break
        end
        L0_2 = Citizen
        L0_2 = L0_2.Wait
        L1_2 = 0
        L0_2(L1_2)
        L0_2 = L28_1
        if true == L0_2 then
          L0_2 = Citizen
          L0_2 = L0_2.Wait
          L1_2 = 5
          L0_2(L1_2)
          L0_2 = L29_1
          L0_2 = L0_2 - 1
          L29_1 = L0_2
          L0_2 = L29_1
          if L0_2 < 0 then
            L0_2 = false
            L28_1 = L0_2
            L0_2 = 0
            L29_1 = L0_2
          end
        else
          L0_2 = L28_1
          if false == L0_2 then
            L0_2 = Citizen
            L0_2 = L0_2.Wait
            L1_2 = 5
            L0_2(L1_2)
            L0_2 = L29_1
            L0_2 = L0_2 + 1
            L29_1 = L0_2
            L0_2 = L29_1
            if L0_2 > 100 then
              L0_2 = true
              L28_1 = L0_2
              L0_2 = 100
              L29_1 = L0_2
            end
          end
        end
        L0_2 = SendNUIMessage
        L1_2 = {}
        L1_2.message = "gymprogressupdate"
        L2_2 = L29_1
        L1_2.progressbardata2 = L2_2
        L0_2(L1_2)
      end
      L0_2 = false
      L1_2 = L29_1
      if L1_2 <= 10 then
        L0_2 = true
      end
      L1_2 = SendNUIMessage
      L2_2 = {}
      L2_2.message = "gymprogresshide"
      L1_2(L2_2)
      L1_2 = false
      L26_1 = L1_2
      return L0_2
    else
      L0_2 = false
      return L0_2
    end
  else
    L0_2 = true
    return L0_2
  end
end
StartMinigameGym = L30_1
L30_1 = Config
L30_1 = L30_1.Framework
if "esx" == L30_1 then
  L30_1 = Config
  L30_1 = L30_1.PlayerLoadedEvent
  L30_1 = L30_1.customevent
  if true == L30_1 then
    L30_1 = RegisterNetEvent
    L31_1 = Config
    L31_1 = L31_1.PlayerLoadedEvent
    L31_1 = L31_1.esx
    L30_1(L31_1)
    L30_1 = AddEventHandler
    L31_1 = Config
    L31_1 = L31_1.PlayerLoadedEvent
    L31_1 = L31_1.esx
    function L32_1()
      local L0_2, L1_2, L2_2
      L0_2 = TriggerServerEvent
      L1_2 = "outlaw_gym:GymSynchronize"
      L0_2(L1_2)
      playerloaded = true
      L0_2 = {}
      L1_2 = GetGameTimer
      L1_2 = L1_2()
      L2_2 = Config
      L2_2 = L2_2.ReduceStatsTime
      L2_2 = L2_2.condition
      L2_2 = L2_2.decreasetime
      L2_2 = L2_2 * 60000
      L1_2 = L1_2 + L2_2
      L0_2.condition = L1_2
      L1_2 = GetGameTimer
      L1_2 = L1_2()
      L2_2 = Config
      L2_2 = L2_2.ReduceStatsTime
      L2_2 = L2_2.strenght
      L2_2 = L2_2.decreasetime
      L2_2 = L2_2 * 60000
      L1_2 = L1_2 + L2_2
      L0_2.strenght = L1_2
      L1_2 = GetGameTimer
      L1_2 = L1_2()
      L2_2 = Config
      L2_2 = L2_2.ReduceStatsTime
      L2_2 = L2_2.water
      L2_2 = L2_2.decreasetime
      L2_2 = L2_2 * 60000
      L1_2 = L1_2 + L2_2
      L0_2.water = L1_2
      latestexercises = L0_2
    end
    L30_1(L31_1, L32_1)
  else
    L30_1 = Citizen
    L30_1 = L30_1.CreateThread
    function L31_1()
      local L0_2, L1_2, L2_2
      while true do
        L0_2 = Citizen
        L0_2 = L0_2.Wait
        L1_2 = 1000
        L0_2(L1_2)
        L0_2 = NetworkIsSessionStarted
        L0_2 = L0_2()
        if L0_2 then
          L0_2 = NetworkIsPlayerActive
          L1_2 = PlayerId
          L1_2, L2_2 = L1_2()
          L0_2 = L0_2(L1_2, L2_2)
          if L0_2 then
            L0_2 = TriggerServerEvent
            L1_2 = "outlaw_gym:GymSynchronize"
            L0_2(L1_2)
            playerloaded = true
            L0_2 = {}
            L1_2 = GetGameTimer
            L1_2 = L1_2()
            L2_2 = Config
            L2_2 = L2_2.ReduceStatsTime
            L2_2 = L2_2.condition
            L2_2 = L2_2.decreasetime
            L2_2 = L2_2 * 60000
            L1_2 = L1_2 + L2_2
            L0_2.condition = L1_2
            L1_2 = GetGameTimer
            L1_2 = L1_2()
            L2_2 = Config
            L2_2 = L2_2.ReduceStatsTime
            L2_2 = L2_2.strenght
            L2_2 = L2_2.decreasetime
            L2_2 = L2_2 * 60000
            L1_2 = L1_2 + L2_2
            L0_2.strenght = L1_2
            L1_2 = GetGameTimer
            L1_2 = L1_2()
            L2_2 = Config
            L2_2 = L2_2.ReduceStatsTime
            L2_2 = L2_2.water
            L2_2 = L2_2.decreasetime
            L2_2 = L2_2 * 60000
            L1_2 = L1_2 + L2_2
            L0_2.water = L1_2
            latestexercises = L0_2
            return
          end
        end
      end
    end
    L30_1(L31_1)
  end
end
L30_1 = Config
L30_1 = L30_1.Framework
if "qbcore" == L30_1 then
  L30_1 = Config
  L30_1 = L30_1.PlayerLoadedEvent
  L30_1 = L30_1.customevent
  if true == L30_1 then
    L30_1 = RegisterNetEvent
    L31_1 = Config
    L31_1 = L31_1.PlayerLoadedEvent
    L31_1 = L31_1.qbcore
    L30_1(L31_1)
    L30_1 = AddEventHandler
    L31_1 = Config
    L31_1 = L31_1.PlayerLoadedEvent
    L31_1 = L31_1.qbcore
    function L32_1()
      local L0_2, L1_2, L2_2
      L0_2 = TriggerServerEvent
      L1_2 = "outlaw_gym:GymSynchronize"
      L0_2(L1_2)
      playerloaded = true
      L0_2 = {}
      L1_2 = GetGameTimer
      L1_2 = L1_2()
      L2_2 = Config
      L2_2 = L2_2.ReduceStatsTime
      L2_2 = L2_2.condition
      L2_2 = L2_2.decreasetime
      L2_2 = L2_2 * 60000
      L1_2 = L1_2 + L2_2
      L0_2.condition = L1_2
      L1_2 = GetGameTimer
      L1_2 = L1_2()
      L2_2 = Config
      L2_2 = L2_2.ReduceStatsTime
      L2_2 = L2_2.strenght
      L2_2 = L2_2.decreasetime
      L2_2 = L2_2 * 60000
      L1_2 = L1_2 + L2_2
      L0_2.strenght = L1_2
      L1_2 = GetGameTimer
      L1_2 = L1_2()
      L2_2 = Config
      L2_2 = L2_2.ReduceStatsTime
      L2_2 = L2_2.water
      L2_2 = L2_2.decreasetime
      L2_2 = L2_2 * 60000
      L1_2 = L1_2 + L2_2
      L0_2.water = L1_2
      latestexercises = L0_2
    end
    L30_1(L31_1, L32_1)
  else
    L30_1 = Citizen
    L30_1 = L30_1.CreateThread
    function L31_1()
      local L0_2, L1_2, L2_2
      while true do
        L0_2 = Citizen
        L0_2 = L0_2.Wait
        L1_2 = 1000
        L0_2(L1_2)
        L0_2 = NetworkIsSessionStarted
        L0_2 = L0_2()
        if L0_2 then
          L0_2 = NetworkIsPlayerActive
          L1_2 = PlayerId
          L1_2, L2_2 = L1_2()
          L0_2 = L0_2(L1_2, L2_2)
          if L0_2 then
            L0_2 = TriggerServerEvent
            L1_2 = "outlaw_gym:GymSynchronize"
            L0_2(L1_2)
            playerloaded = true
            L0_2 = {}
            L1_2 = GetGameTimer
            L1_2 = L1_2()
            L2_2 = Config
            L2_2 = L2_2.ReduceStatsTime
            L2_2 = L2_2.condition
            L2_2 = L2_2.decreasetime
            L2_2 = L2_2 * 60000
            L1_2 = L1_2 + L2_2
            L0_2.condition = L1_2
            L1_2 = GetGameTimer
            L1_2 = L1_2()
            L2_2 = Config
            L2_2 = L2_2.ReduceStatsTime
            L2_2 = L2_2.strenght
            L2_2 = L2_2.decreasetime
            L2_2 = L2_2 * 60000
            L1_2 = L1_2 + L2_2
            L0_2.strenght = L1_2
            L1_2 = GetGameTimer
            L1_2 = L1_2()
            L2_2 = Config
            L2_2 = L2_2.ReduceStatsTime
            L2_2 = L2_2.water
            L2_2 = L2_2.decreasetime
            L2_2 = L2_2 * 60000
            L1_2 = L1_2 + L2_2
            L0_2.water = L1_2
            latestexercises = L0_2
            return
          end
        end
      end
    end
    L30_1(L31_1)
  end
end
L30_1 = Config
L30_1 = L30_1.Framework
if "standalone" == L30_1 then
  L30_1 = Config
  L30_1 = L30_1.PlayerLoadedEvent
  L30_1 = L30_1.standaloneevent
  if true == L30_1 then
    L30_1 = RegisterNetEvent
    L31_1 = Config
    L31_1 = L31_1.PlayerLoadedEvent
    L31_1 = L31_1.standalone
    L30_1(L31_1)
    L30_1 = AddEventHandler
    L31_1 = Config
    L31_1 = L31_1.PlayerLoadedEvent
    L31_1 = L31_1.standalone
    function L32_1()
      local L0_2, L1_2, L2_2
      L0_2 = TriggerServerEvent
      L1_2 = "outlaw_gym:GymSynchronize"
      L0_2(L1_2)
      playerloaded = true
      L0_2 = {}
      L1_2 = GetGameTimer
      L1_2 = L1_2()
      L2_2 = Config
      L2_2 = L2_2.ReduceStatsTime
      L2_2 = L2_2.condition
      L2_2 = L2_2.decreasetime
      L2_2 = L2_2 * 60000
      L1_2 = L1_2 + L2_2
      L0_2.condition = L1_2
      L1_2 = GetGameTimer
      L1_2 = L1_2()
      L2_2 = Config
      L2_2 = L2_2.ReduceStatsTime
      L2_2 = L2_2.strenght
      L2_2 = L2_2.decreasetime
      L2_2 = L2_2 * 60000
      L1_2 = L1_2 + L2_2
      L0_2.strenght = L1_2
      L1_2 = GetGameTimer
      L1_2 = L1_2()
      L2_2 = Config
      L2_2 = L2_2.ReduceStatsTime
      L2_2 = L2_2.water
      L2_2 = L2_2.decreasetime
      L2_2 = L2_2 * 60000
      L1_2 = L1_2 + L2_2
      L0_2.water = L1_2
      latestexercises = L0_2
    end
    L30_1(L31_1, L32_1)
  else
    L30_1 = Citizen
    L30_1 = L30_1.CreateThread
    function L31_1()
      local L0_2, L1_2, L2_2
      while true do
        L0_2 = Citizen
        L0_2 = L0_2.Wait
        L1_2 = 1000
        L0_2(L1_2)
        L0_2 = NetworkIsSessionStarted
        L0_2 = L0_2()
        if L0_2 then
          L0_2 = NetworkIsPlayerActive
          L1_2 = PlayerId
          L1_2, L2_2 = L1_2()
          L0_2 = L0_2(L1_2, L2_2)
          if L0_2 then
            L0_2 = TriggerServerEvent
            L1_2 = "outlaw_gym:GymSynchronize"
            L0_2(L1_2)
            playerloaded = true
            L0_2 = {}
            L1_2 = GetGameTimer
            L1_2 = L1_2()
            L2_2 = Config
            L2_2 = L2_2.ReduceStatsTime
            L2_2 = L2_2.condition
            L2_2 = L2_2.decreasetime
            L2_2 = L2_2 * 60000
            L1_2 = L1_2 + L2_2
            L0_2.condition = L1_2
            L1_2 = GetGameTimer
            L1_2 = L1_2()
            L2_2 = Config
            L2_2 = L2_2.ReduceStatsTime
            L2_2 = L2_2.strenght
            L2_2 = L2_2.decreasetime
            L2_2 = L2_2 * 60000
            L1_2 = L1_2 + L2_2
            L0_2.strenght = L1_2
            L1_2 = GetGameTimer
            L1_2 = L1_2()
            L2_2 = Config
            L2_2 = L2_2.ReduceStatsTime
            L2_2 = L2_2.water
            L2_2 = L2_2.decreasetime
            L2_2 = L2_2 * 60000
            L1_2 = L1_2 + L2_2
            L0_2.water = L1_2
            latestexercises = L0_2
            return
          end
        end
      end
    end
    L30_1(L31_1)
  end
end
L30_1 = Citizen
L30_1 = L30_1.CreateThread
function L31_1()
  local L0_2, L1_2
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 1000
    L0_2(L1_2)
    L0_2 = NetworkIsSessionStarted
    L0_2 = L0_2()
    if L0_2 then
      L0_2 = NetworkIsPlayerActive
      L1_2 = PlayerId
      L1_2 = L1_2()
      L0_2 = L0_2(L1_2)
      if L0_2 then
        L0_2 = playerloaded
        if false == L0_2 then
          L0_2 = TriggerServerEvent
          L1_2 = "outlaw_gym:GymSynchronize"
          L0_2(L1_2)
        else
          return
        end
      end
    end
  end
end
L30_1(L31_1)
L30_1 = RegisterNetEvent
L31_1 = "outlaw_gym:PlayerLoadedClient"
L30_1(L31_1)
L30_1 = AddEventHandler
L31_1 = "outlaw_gym:PlayerLoadedClient"
function L32_1(A0_2)
  local L1_2
  playerloaded = A0_2
end
L30_1(L31_1, L32_1)
L30_1 = Citizen
L30_1 = L30_1.CreateThread
function L31_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 1000
    L0_2(L1_2)
    L0_2 = NetworkIsSessionStarted
    L0_2 = L0_2()
    if L0_2 then
      L0_2 = SendNUIMessage
      L1_2 = {}
      L1_2.message = "updateinterfacedata"
      L2_2 = Config
      L2_2 = L2_2.InterfaceColor
      L1_2.interfacecolordata = L2_2
      L2_2 = tostring
      L3_2 = GetCurrentResourceName
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L3_2()
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L1_2.gymresourcenamedata = L2_2
      L0_2(L1_2)
      L0_2 = CreateGymBlips
      L0_2()
      L0_2 = Config
      L0_2 = L0_2.Target
      if true == L0_2 then
        L0_2 = ipairs
        L1_2 = Config
        L1_2 = L1_2.Gyms
        L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
        for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
          L6_2 = ipairs
          L7_2 = L5_2.exercises
          L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
          for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
            L12_2 = vector3
            L13_2 = L11_2.coords
            L13_2 = L13_2.x
            L14_2 = L11_2.coords
            L14_2 = L14_2.y
            L15_2 = L11_2.coords
            L15_2 = L15_2.z
            L15_2 = L15_2 + 1.0
            L12_2 = L12_2(L13_2, L14_2, L15_2)
            L13_2 = Config
            L13_2 = L13_2.Targettype
            if "qtarget" == L13_2 then
              L13_2 = exports
              L14_2 = Config
              L14_2 = L14_2.TargetSystemsNames
              L14_2 = L14_2.qtarget
              L13_2 = L13_2[L14_2]
              L14_2 = L13_2
              L13_2 = L13_2.AddBoxZone
              L15_2 = "gymexerciseid-"
              L16_2 = L4_2
              L17_2 = "-"
              L18_2 = L10_2
              L19_2 = ""
              L15_2 = L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2
              L16_2 = L12_2
              L17_2 = 2.5
              L18_2 = 2.5
              L19_2 = {}
              L20_2 = "gymexerciseid-"
              L21_2 = L4_2
              L22_2 = "-"
              L23_2 = L10_2
              L24_2 = ""
              L20_2 = L20_2 .. L21_2 .. L22_2 .. L23_2 .. L24_2
              L19_2.name = L20_2
              L20_2 = L11_2.heading
              L19_2.heading = L20_2
              L19_2.debugPoly = false
              L20_2 = L12_2.z
              L20_2 = L20_2 - 1.5
              L19_2.minZ = L20_2
              L20_2 = L12_2.z
              L20_2 = L20_2 + 1.5
              L19_2.maxZ = L20_2
              L20_2 = {}
              L21_2 = {}
              L22_2 = {}
              L22_2.event = "outlaw_gym:UseExercise"
              L23_2 = Config
              L23_2 = L23_2.TargetIcons
              L23_2 = L23_2.exerciseicon
              L22_2.icon = L23_2
              L23_2 = Language
              L24_2 = Config
              L24_2 = L24_2.Language
              L23_2 = L23_2[L24_2]
              L23_2 = L23_2.exercise
              L22_2.label = L23_2
              L21_2[1] = L22_2
              L20_2.options = L21_2
              L21_2 = Config
              L21_2 = L21_2.GymExerciseDistance
              L20_2.distance = L21_2
              L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
            else
              L13_2 = Config
              L13_2 = L13_2.Targettype
              if "qbtarget" == L13_2 then
                L13_2 = exports
                L14_2 = Config
                L14_2 = L14_2.TargetSystemsNames
                L14_2 = L14_2.qbtarget
                L13_2 = L13_2[L14_2]
                L14_2 = L13_2
                L13_2 = L13_2.AddBoxZone
                L15_2 = "gymexerciseid-"
                L16_2 = L4_2
                L17_2 = "-"
                L18_2 = L10_2
                L19_2 = ""
                L15_2 = L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2
                L16_2 = L12_2
                L17_2 = 2.5
                L18_2 = 2.5
                L19_2 = {}
                L20_2 = "gymexerciseid-"
                L21_2 = L4_2
                L22_2 = "-"
                L23_2 = L10_2
                L24_2 = ""
                L20_2 = L20_2 .. L21_2 .. L22_2 .. L23_2 .. L24_2
                L19_2.name = L20_2
                L20_2 = L11_2.heading
                L19_2.heading = L20_2
                L19_2.debugPoly = false
                L20_2 = L12_2.z
                L20_2 = L20_2 - 1.5
                L19_2.minZ = L20_2
                L20_2 = L12_2.z
                L20_2 = L20_2 + 1.5
                L19_2.maxZ = L20_2
                L20_2 = {}
                L21_2 = {}
                L22_2 = {}
                L22_2.type = "client"
                function L23_2(A0_3)
                  local L1_3, L2_3
                  L1_3 = TriggerEvent
                  L2_3 = "outlaw_gym:UseExercise"
                  L1_3(L2_3)
                end
                L22_2.action = L23_2
                L23_2 = Config
                L23_2 = L23_2.TargetIcons
                L23_2 = L23_2.exerciseicon
                L22_2.icon = L23_2
                L23_2 = Language
                L24_2 = Config
                L24_2 = L24_2.Language
                L23_2 = L23_2[L24_2]
                L23_2 = L23_2.exercise
                L22_2.label = L23_2
                L21_2[1] = L22_2
                L20_2.options = L21_2
                L21_2 = Config
                L21_2 = L21_2.GymExerciseDistance
                L20_2.distance = L21_2
                L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
              else
                L13_2 = Config
                L13_2 = L13_2.Targettype
                if "oxtarget" == L13_2 then
                  L13_2 = exports
                  L14_2 = Config
                  L14_2 = L14_2.TargetSystemsNames
                  L14_2 = L14_2.oxtarget
                  L13_2 = L13_2[L14_2]
                  L14_2 = L13_2
                  L13_2 = L13_2.addBoxZone
                  L15_2 = {}
                  L16_2 = vec3
                  L17_2 = L12_2.x
                  L18_2 = L12_2.y
                  L19_2 = L12_2.z
                  L16_2 = L16_2(L17_2, L18_2, L19_2)
                  L15_2.coords = L16_2
                  L16_2 = vec3
                  L17_2 = 4
                  L18_2 = 4
                  L19_2 = 4
                  L16_2 = L16_2(L17_2, L18_2, L19_2)
                  L15_2.size = L16_2
                  L16_2 = L11_2.heading
                  L15_2.rotation = L16_2
                  L16_2 = {}
                  L17_2 = {}
                  L18_2 = "gymexerciseid-"
                  L19_2 = L4_2
                  L20_2 = "-"
                  L21_2 = L10_2
                  L22_2 = ""
                  L18_2 = L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2
                  L17_2.name = L18_2
                  L17_2.event = "outlaw_gym:UseExercise"
                  L18_2 = Config
                  L18_2 = L18_2.TargetIcons
                  L18_2 = L18_2.exerciseicon
                  L17_2.icon = L18_2
                  L18_2 = Language
                  L19_2 = Config
                  L19_2 = L19_2.Language
                  L18_2 = L18_2[L19_2]
                  L18_2 = L18_2.exercise
                  L17_2.label = L18_2
                  function L18_2(A0_3, A1_3, A2_3, A3_3)
                    local L4_3
                    L4_3 = true
                    return L4_3
                  end
                  L17_2.canInteract = L18_2
                  L16_2[1] = L17_2
                  L15_2.options = L16_2
                  L13_2(L14_2, L15_2)
                end
              end
            end
          end
        end
        L0_2 = ipairs
        L1_2 = Config
        L1_2 = L1_2.Gyms
        L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
        for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
          L6_2 = L5_2.gympayed
          if L6_2 then
            L6_2 = Config
            L6_2 = L6_2.Targettype
            if "qtarget" == L6_2 then
              L6_2 = exports
              L7_2 = Config
              L7_2 = L7_2.TargetSystemsNames
              L7_2 = L7_2.qtarget
              L6_2 = L6_2[L7_2]
              L7_2 = L6_2
              L6_2 = L6_2.AddBoxZone
              L8_2 = "gympay-"
              L9_2 = L4_2
              L10_2 = ""
              L8_2 = L8_2 .. L9_2 .. L10_2
              L9_2 = L5_2.gymcoords
              L10_2 = 2.5
              L11_2 = 2.5
              L12_2 = {}
              L13_2 = "gympay-"
              L14_2 = L4_2
              L15_2 = ""
              L13_2 = L13_2 .. L14_2 .. L15_2
              L12_2.name = L13_2
              L12_2.heading = 0.0
              L12_2.debugPoly = false
              L13_2 = L5_2.gymcoords
              L13_2 = L13_2.z
              L13_2 = L13_2 - 1.5
              L12_2.minZ = L13_2
              L13_2 = L5_2.gymcoords
              L13_2 = L13_2.z
              L13_2 = L13_2 + 1.5
              L12_2.maxZ = L13_2
              L13_2 = {}
              L14_2 = {}
              L15_2 = {}
              L15_2.event = "outlaw_gym:UseEntry"
              L16_2 = Config
              L16_2 = L16_2.TargetIcons
              L16_2 = L16_2.payicon
              L15_2.icon = L16_2
              L16_2 = Language
              L17_2 = Config
              L17_2 = L17_2.Language
              L16_2 = L16_2[L17_2]
              L16_2 = L16_2.entry
              L15_2.label = L16_2
              L14_2[1] = L15_2
              L13_2.options = L14_2
              L14_2 = Config
              L14_2 = L14_2.GymDistancePay
              L13_2.distance = L14_2
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
            else
              L6_2 = Config
              L6_2 = L6_2.Targettype
              if "qbtarget" == L6_2 then
                L6_2 = exports
                L7_2 = Config
                L7_2 = L7_2.TargetSystemsNames
                L7_2 = L7_2.qbtarget
                L6_2 = L6_2[L7_2]
                L7_2 = L6_2
                L6_2 = L6_2.AddBoxZone
                L8_2 = "gympay-"
                L9_2 = L4_2
                L10_2 = ""
                L8_2 = L8_2 .. L9_2 .. L10_2
                L9_2 = L5_2.gymcoords
                L10_2 = 2.5
                L11_2 = 2.5
                L12_2 = {}
                L13_2 = "gympay-"
                L14_2 = L4_2
                L15_2 = ""
                L13_2 = L13_2 .. L14_2 .. L15_2
                L12_2.name = L13_2
                L12_2.heading = 0.0
                L12_2.debugPoly = false
                L13_2 = L5_2.gymcoords
                L13_2 = L13_2.z
                L13_2 = L13_2 - 1.5
                L12_2.minZ = L13_2
                L13_2 = L5_2.gymcoords
                L13_2 = L13_2.z
                L13_2 = L13_2 + 1.5
                L12_2.maxZ = L13_2
                L13_2 = {}
                L14_2 = {}
                L15_2 = {}
                L15_2.type = "client"
                function L16_2(A0_3)
                  local L1_3, L2_3
                  L1_3 = TriggerEvent
                  L2_3 = "outlaw_gym:UseEntry"
                  L1_3(L2_3)
                end
                L15_2.action = L16_2
                L16_2 = Config
                L16_2 = L16_2.TargetIcons
                L16_2 = L16_2.payicon
                L15_2.icon = L16_2
                L16_2 = Language
                L17_2 = Config
                L17_2 = L17_2.Language
                L16_2 = L16_2[L17_2]
                L16_2 = L16_2.entry
                L15_2.label = L16_2
                L14_2[1] = L15_2
                L13_2.options = L14_2
                L14_2 = Config
                L14_2 = L14_2.GymDistancePay
                L13_2.distance = L14_2
                L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
              else
                L6_2 = Config
                L6_2 = L6_2.Targettype
                if "oxtarget" == L6_2 then
                  L6_2 = exports
                  L7_2 = Config
                  L7_2 = L7_2.TargetSystemsNames
                  L7_2 = L7_2.oxtarget
                  L6_2 = L6_2[L7_2]
                  L7_2 = L6_2
                  L6_2 = L6_2.addBoxZone
                  L8_2 = {}
                  L9_2 = vec3
                  L10_2 = L5_2.gymcoords
                  L10_2 = L10_2.x
                  L11_2 = L5_2.gymcoords
                  L11_2 = L11_2.y
                  L12_2 = L5_2.gymcoords
                  L12_2 = L12_2.z
                  L9_2 = L9_2(L10_2, L11_2, L12_2)
                  L8_2.coords = L9_2
                  L9_2 = vec3
                  L10_2 = 2
                  L11_2 = 2
                  L12_2 = 2
                  L9_2 = L9_2(L10_2, L11_2, L12_2)
                  L8_2.size = L9_2
                  L8_2.rotation = 0.0
                  L9_2 = {}
                  L10_2 = {}
                  L11_2 = "gympay-"
                  L12_2 = L4_2
                  L13_2 = ""
                  L11_2 = L11_2 .. L12_2 .. L13_2
                  L10_2.name = L11_2
                  L10_2.event = "outlaw_gym:UseEntry"
                  L11_2 = Config
                  L11_2 = L11_2.TargetIcons
                  L11_2 = L11_2.payicon
                  L10_2.icon = L11_2
                  L11_2 = Language
                  L12_2 = Config
                  L12_2 = L12_2.Language
                  L11_2 = L11_2[L12_2]
                  L11_2 = L11_2.entry
                  L10_2.label = L11_2
                  function L11_2(A0_3, A1_3, A2_3, A3_3)
                    local L4_3
                    L4_3 = true
                    return L4_3
                  end
                  L10_2.canInteract = L11_2
                  L9_2[1] = L10_2
                  L8_2.options = L9_2
                  L6_2(L7_2, L8_2)
                end
              end
            end
          end
        end
        L0_2 = ipairs
        L1_2 = Config
        L1_2 = L1_2.Gyms
        L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
        for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
          L6_2 = L5_2.gymowneable
          if L6_2 then
            L6_2 = Config
            L6_2 = L6_2.Targettype
            if "qtarget" == L6_2 then
              L6_2 = exports
              L7_2 = Config
              L7_2 = L7_2.TargetSystemsNames
              L7_2 = L7_2.qtarget
              L6_2 = L6_2[L7_2]
              L7_2 = L6_2
              L6_2 = L6_2.AddBoxZone
              L8_2 = "gymmanagment-"
              L9_2 = L4_2
              L10_2 = ""
              L8_2 = L8_2 .. L9_2 .. L10_2
              L9_2 = L5_2.gymmanagmentcoords
              L10_2 = 2.5
              L11_2 = 2.5
              L12_2 = {}
              L13_2 = "gymmanagment-"
              L14_2 = L4_2
              L15_2 = ""
              L13_2 = L13_2 .. L14_2 .. L15_2
              L12_2.name = L13_2
              L12_2.heading = 0.0
              L12_2.debugPoly = false
              L13_2 = L5_2.gymmanagmentcoords
              L13_2 = L13_2.z
              L13_2 = L13_2 - 1.5
              L12_2.minZ = L13_2
              L13_2 = L5_2.gymmanagmentcoords
              L13_2 = L13_2.z
              L13_2 = L13_2 + 1.5
              L12_2.maxZ = L13_2
              L13_2 = {}
              L14_2 = {}
              L15_2 = {}
              L15_2.event = "outlaw_gym:UseManagment"
              L16_2 = Config
              L16_2 = L16_2.TargetIcons
              L16_2 = L16_2.managmenticon
              L15_2.icon = L16_2
              L16_2 = Language
              L17_2 = Config
              L17_2 = L17_2.Language
              L16_2 = L16_2[L17_2]
              L16_2 = L16_2.managment
              L15_2.label = L16_2
              L14_2[1] = L15_2
              L13_2.options = L14_2
              L14_2 = Config
              L14_2 = L14_2.GymDistanceManagment
              L13_2.distance = L14_2
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
            else
              L6_2 = Config
              L6_2 = L6_2.Targettype
              if "qbtarget" == L6_2 then
                L6_2 = exports
                L7_2 = Config
                L7_2 = L7_2.TargetSystemsNames
                L7_2 = L7_2.qbtarget
                L6_2 = L6_2[L7_2]
                L7_2 = L6_2
                L6_2 = L6_2.AddBoxZone
                L8_2 = "gymmanagment-"
                L9_2 = L4_2
                L10_2 = ""
                L8_2 = L8_2 .. L9_2 .. L10_2
                L9_2 = L5_2.gymmanagmentcoords
                L10_2 = 2.5
                L11_2 = 2.5
                L12_2 = {}
                L13_2 = "gymmanagment-"
                L14_2 = L4_2
                L15_2 = ""
                L13_2 = L13_2 .. L14_2 .. L15_2
                L12_2.name = L13_2
                L12_2.heading = 0.0
                L12_2.debugPoly = false
                L13_2 = L5_2.gymmanagmentcoords
                L13_2 = L13_2.z
                L13_2 = L13_2 - 1.5
                L12_2.minZ = L13_2
                L13_2 = L5_2.gymmanagmentcoords
                L13_2 = L13_2.z
                L13_2 = L13_2 + 1.5
                L12_2.maxZ = L13_2
                L13_2 = {}
                L14_2 = {}
                L15_2 = {}
                L15_2.type = "client"
                function L16_2(A0_3)
                  local L1_3, L2_3
                  L1_3 = TriggerEvent
                  L2_3 = "outlaw_gym:UseManagment"
                  L1_3(L2_3)
                end
                L15_2.action = L16_2
                L16_2 = Config
                L16_2 = L16_2.TargetIcons
                L16_2 = L16_2.managmenticon
                L15_2.icon = L16_2
                L16_2 = Language
                L17_2 = Config
                L17_2 = L17_2.Language
                L16_2 = L16_2[L17_2]
                L16_2 = L16_2.managment
                L15_2.label = L16_2
                L14_2[1] = L15_2
                L13_2.options = L14_2
                L14_2 = Config
                L14_2 = L14_2.GymDistanceManagment
                L13_2.distance = L14_2
                L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
              else
                L6_2 = Config
                L6_2 = L6_2.Targettype
                if "oxtarget" == L6_2 then
                  L6_2 = exports
                  L7_2 = Config
                  L7_2 = L7_2.TargetSystemsNames
                  L7_2 = L7_2.oxtarget
                  L6_2 = L6_2[L7_2]
                  L7_2 = L6_2
                  L6_2 = L6_2.addBoxZone
                  L8_2 = {}
                  L9_2 = vec3
                  L10_2 = L5_2.gymmanagmentcoords
                  L10_2 = L10_2.x
                  L11_2 = L5_2.gymmanagmentcoords
                  L11_2 = L11_2.y
                  L12_2 = L5_2.gymmanagmentcoords
                  L12_2 = L12_2.z
                  L9_2 = L9_2(L10_2, L11_2, L12_2)
                  L8_2.coords = L9_2
                  L9_2 = vec3
                  L10_2 = 2
                  L11_2 = 2
                  L12_2 = 2
                  L9_2 = L9_2(L10_2, L11_2, L12_2)
                  L8_2.size = L9_2
                  L8_2.rotation = 0.0
                  L9_2 = {}
                  L10_2 = {}
                  L11_2 = "gymmanagment-"
                  L12_2 = L4_2
                  L13_2 = ""
                  L11_2 = L11_2 .. L12_2 .. L13_2
                  L10_2.name = L11_2
                  L10_2.event = "outlaw_gym:UseManagment"
                  L11_2 = Config
                  L11_2 = L11_2.TargetIcons
                  L11_2 = L11_2.managmenticon
                  L10_2.icon = L11_2
                  L11_2 = Language
                  L12_2 = Config
                  L12_2 = L12_2.Language
                  L11_2 = L11_2[L12_2]
                  L11_2 = L11_2.managment
                  L10_2.label = L11_2
                  function L11_2(A0_3, A1_3, A2_3, A3_3)
                    local L4_3
                    L4_3 = true
                    return L4_3
                  end
                  L10_2.canInteract = L11_2
                  L9_2[1] = L10_2
                  L8_2.options = L9_2
                  L6_2(L7_2, L8_2)
                end
              end
            end
          end
        end
        L0_2 = ipairs
        L1_2 = Config
        L1_2 = L1_2.Showers
        L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
        for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
          L6_2 = Config
          L6_2 = L6_2.Targettype
          if "qtarget" == L6_2 then
            L6_2 = exports
            L7_2 = Config
            L7_2 = L7_2.TargetSystemsNames
            L7_2 = L7_2.qtarget
            L6_2 = L6_2[L7_2]
            L7_2 = L6_2
            L6_2 = L6_2.AddBoxZone
            L8_2 = "gymshower-"
            L9_2 = L4_2
            L10_2 = ""
            L8_2 = L8_2 .. L9_2 .. L10_2
            L9_2 = L5_2.coords
            L10_2 = 2.5
            L11_2 = 2.5
            L12_2 = {}
            L13_2 = "gymshower-"
            L14_2 = L4_2
            L15_2 = ""
            L13_2 = L13_2 .. L14_2 .. L15_2
            L12_2.name = L13_2
            L13_2 = L5_2.heading
            L12_2.heading = L13_2
            L12_2.debugPoly = false
            L13_2 = L5_2.coords
            L13_2 = L13_2.z
            L13_2 = L13_2 - 1.5
            L12_2.minZ = L13_2
            L13_2 = L5_2.coords
            L13_2 = L13_2.z
            L13_2 = L13_2 + 1.5
            L12_2.maxZ = L13_2
            L13_2 = {}
            L14_2 = {}
            L15_2 = {}
            L15_2.event = "outlaw_gym:UseShowerTarget"
            L16_2 = Config
            L16_2 = L16_2.TargetIcons
            L16_2 = L16_2.showericon
            L15_2.icon = L16_2
            L16_2 = Language
            L17_2 = Config
            L17_2 = L17_2.Language
            L16_2 = L16_2[L17_2]
            L16_2 = L16_2.shower
            L15_2.label = L16_2
            L14_2[1] = L15_2
            L13_2.options = L14_2
            L14_2 = Config
            L14_2 = L14_2.GymShowerDistance
            L13_2.distance = L14_2
            L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
          else
            L6_2 = Config
            L6_2 = L6_2.Targettype
            if "qbtarget" == L6_2 then
              L6_2 = exports
              L7_2 = Config
              L7_2 = L7_2.TargetSystemsNames
              L7_2 = L7_2.qbtarget
              L6_2 = L6_2[L7_2]
              L7_2 = L6_2
              L6_2 = L6_2.AddBoxZone
              L8_2 = "gymshower-"
              L9_2 = L4_2
              L10_2 = ""
              L8_2 = L8_2 .. L9_2 .. L10_2
              L9_2 = L5_2.coords
              L10_2 = 2.5
              L11_2 = 2.5
              L12_2 = {}
              L13_2 = "gymshower-"
              L14_2 = L4_2
              L15_2 = ""
              L13_2 = L13_2 .. L14_2 .. L15_2
              L12_2.name = L13_2
              L13_2 = L5_2.heading
              L12_2.heading = L13_2
              L12_2.debugPoly = false
              L13_2 = L5_2.coords
              L13_2 = L13_2.z
              L13_2 = L13_2 - 1.5
              L12_2.minZ = L13_2
              L13_2 = L5_2.coords
              L13_2 = L13_2.z
              L13_2 = L13_2 + 1.5
              L12_2.maxZ = L13_2
              L13_2 = {}
              L14_2 = {}
              L15_2 = {}
              L15_2.type = "client"
              function L16_2(A0_3)
                local L1_3, L2_3
                L1_3 = TriggerEvent
                L2_3 = "outlaw_gym:UseShowerTarget"
                L1_3(L2_3)
              end
              L15_2.action = L16_2
              L16_2 = Config
              L16_2 = L16_2.TargetIcons
              L16_2 = L16_2.showericon
              L15_2.icon = L16_2
              L16_2 = Language
              L17_2 = Config
              L17_2 = L17_2.Language
              L16_2 = L16_2[L17_2]
              L16_2 = L16_2.shower
              L15_2.label = L16_2
              L14_2[1] = L15_2
              L13_2.options = L14_2
              L14_2 = Config
              L14_2 = L14_2.GymShowerDistance
              L13_2.distance = L14_2
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
            else
              L6_2 = Config
              L6_2 = L6_2.Targettype
              if "oxtarget" == L6_2 then
                L6_2 = exports
                L7_2 = Config
                L7_2 = L7_2.TargetSystemsNames
                L7_2 = L7_2.oxtarget
                L6_2 = L6_2[L7_2]
                L7_2 = L6_2
                L6_2 = L6_2.addBoxZone
                L8_2 = {}
                L9_2 = vec3
                L10_2 = L5_2.coords
                L10_2 = L10_2.x
                L11_2 = L5_2.coords
                L11_2 = L11_2.y
                L12_2 = L5_2.coords
                L12_2 = L12_2.z
                L9_2 = L9_2(L10_2, L11_2, L12_2)
                L8_2.coords = L9_2
                L9_2 = vec3
                L10_2 = 2
                L11_2 = 2
                L12_2 = 2
                L9_2 = L9_2(L10_2, L11_2, L12_2)
                L8_2.size = L9_2
                L9_2 = L5_2.heading
                L8_2.rotation = L9_2
                L9_2 = {}
                L10_2 = {}
                L11_2 = "gymshower-"
                L12_2 = L4_2
                L13_2 = ""
                L11_2 = L11_2 .. L12_2 .. L13_2
                L10_2.name = L11_2
                L10_2.event = "outlaw_gym:UseShowerTarget"
                L11_2 = Config
                L11_2 = L11_2.TargetIcons
                L11_2 = L11_2.showericon
                L10_2.icon = L11_2
                L11_2 = Language
                L12_2 = Config
                L12_2 = L12_2.Language
                L11_2 = L11_2[L12_2]
                L11_2 = L11_2.shower
                L10_2.label = L11_2
                function L11_2(A0_3, A1_3, A2_3, A3_3)
                  local L4_3
                  L4_3 = true
                  return L4_3
                end
                L10_2.canInteract = L11_2
                L9_2[1] = L10_2
                L8_2.options = L9_2
                L6_2(L7_2, L8_2)
              end
            end
          end
        end
      end
      return
    end
  end
end
L30_1(L31_1)
L30_1 = Citizen
L30_1 = L30_1.CreateThread
function L31_1()
  local L0_2, L1_2, L2_2, L3_2
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 1000
    L0_2(L1_2)
    L0_2 = NetworkIsSessionStarted
    L0_2 = L0_2()
    if L0_2 then
      L0_2 = SendNUIMessage
      L1_2 = {}
      L1_2.message = "updateinterfacedata"
      L2_2 = Config
      L2_2 = L2_2.InterfaceColor
      L1_2.interfacecolordata = L2_2
      L2_2 = tostring
      L3_2 = GetCurrentResourceName
      L3_2 = L3_2()
      L2_2 = L2_2(L3_2)
      L1_2.gymresourcenamedata = L2_2
      L0_2(L1_2)
    end
  end
end
L30_1(L31_1)
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = AddTextEntry
  L2_2 = "gtavclassicinteractionoutlawgym"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = BeginTextCommandDisplayHelp
  L2_2 = "gtavclassicinteractionoutlawgym"
  L1_2(L2_2)
  L1_2 = EndTextCommandDisplayHelp
  L2_2 = 0
  L3_2 = false
  L4_2 = true
  L5_2 = -1
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
ShowGtaClassicInteraction = L30_1
function L30_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 and A1_2 > 0 then
    L2_2 = 10
    L2_2 = L2_2 ^ A1_2
    L3_2 = math
    L3_2 = L3_2.floor
    L4_2 = A0_2 * L2_2
    L4_2 = L4_2 + 0.5
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2 / L2_2
    return L3_2
  end
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A0_2 + 0.5
  return L2_2(L3_2)
end
round = L30_1
function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L1_2 = ipairs
  L2_2 = GetActivePlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = GetPlayerPed
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = DoesEntityExist
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L0_2
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
    end
  end
  return L0_2
end
GetPlayers = L30_1
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  if nil == A0_2 then
    L1_2 = GetEntityCoords
    L2_2 = GetPlayerPed
    L3_2 = tonumber
    L4_2 = "-1"
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L3_2(L4_2)
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    A0_2 = L1_2
  end
  L1_2 = GetPlayerFromCoords
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = tonumber
  L3_2 = "-1"
  L2_2 = L2_2(L3_2)
  L3_2 = tonumber
  L4_2 = "-1"
  L3_2 = L3_2(L4_2)
  L4_2 = 1
  L5_2 = #L1_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L1_2[L7_2]
    L9_2 = PlayerId
    L9_2 = L9_2()
    if L8_2 ~= L9_2 then
      L8_2 = L1_2[L7_2]
      L9_2 = tonumber
      L10_2 = "-1"
      L9_2 = L9_2(L10_2)
      if L8_2 ~= L9_2 then
        L8_2 = GetEntityCoords
        L9_2 = GetPlayerPed
        L10_2 = L1_2[L7_2]
        L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2(L10_2)
        L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
        L9_2 = GetDistanceBetweenCoords
        L10_2 = L8_2.x
        L11_2 = L8_2.y
        L12_2 = L8_2.z
        L13_2 = A0_2.x
        L14_2 = A0_2.y
        L15_2 = A0_2.z
        L16_2 = true
        L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
        L10_2 = tonumber
        L11_2 = "-1"
        L10_2 = L10_2(L11_2)
        if L2_2 == L10_2 or L2_2 > L9_2 then
          L3_2 = L1_2[L7_2]
          L2_2 = L9_2
        end
      end
    end
  end
  L4_2 = L3_2
  L5_2 = L2_2
  return L4_2, L5_2
end
GetClosestPlayer = L30_1
function L30_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = GetPlayers
  L2_2 = L2_2()
  L3_2 = {}
  if nil == A0_2 then
    L4_2 = GetEntityCoords
    L5_2 = GetPlayerPed
    L6_2 = tonumber
    L7_2 = "-1"
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L6_2(L7_2)
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    A0_2 = L4_2
  end
  if nil == A1_2 then
    L4_2 = tonumber
    L5_2 = "5.0"
    L4_2 = L4_2(L5_2)
    A1_2 = L4_2
  end
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = GetPlayerPed
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    L11_2 = GetEntityCoords
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    L12_2 = GetDistanceBetweenCoords
    L13_2 = L11_2
    L14_2 = A0_2.x
    L15_2 = A0_2.y
    L16_2 = A0_2.z
    L17_2 = true
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
    if A1_2 >= L12_2 then
      L13_2 = table
      L13_2 = L13_2.insert
      L14_2 = L3_2
      L15_2 = L9_2
      L13_2(L14_2, L15_2)
    end
  end
  return L3_2
end
GetPlayerFromCoords = L30_1
function L30_1()
  local L0_2, L1_2
  L0_2 = true
  L1_2 = usinggym
  if true == L1_2 then
    L0_2 = false
  else
    L1_2 = usinggym2
    if true == L1_2 then
      L0_2 = false
    else
      L1_2 = L21_1
      if true == L1_2 then
        L0_2 = false
      end
    end
  end
  return L0_2
end
ActionPossible = L30_1
function L30_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Config
  L0_2 = L0_2.DifferentStatsSystem
  if false == L0_2 then
    L0_2 = playerneeds
    L0_2 = L0_2.strenght
    L1_2 = Config
    L1_2 = L1_2.StatsMaxData
    L1_2 = L1_2.strenght
    L1_2 = L1_2.maxdata
    L0_2 = L0_2 / L1_2
    L0_2 = L0_2 * 100
    L1_2 = GetHashKey
    L2_2 = "prop_barbell_10kg"
    L1_2 = L1_2(L2_2)
    if L0_2 > 95.0 then
      L2_2 = GetHashKey
      L3_2 = "prop_barbell_100kg"
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
    elseif L0_2 > 85.0 then
      L2_2 = GetHashKey
      L3_2 = "prop_barbell_80kg"
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
    elseif L0_2 > 70.0 then
      L2_2 = GetHashKey
      L3_2 = "prop_barbell_60kg"
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
    elseif L0_2 > 50.0 then
      L2_2 = GetHashKey
      L3_2 = "prop_barbell_50kg"
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
    elseif L0_2 > 35.0 then
      L2_2 = GetHashKey
      L3_2 = "prop_barbell_40kg"
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
    elseif L0_2 > 25.0 then
      L2_2 = GetHashKey
      L3_2 = "prop_barbell_30kg"
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
    elseif L0_2 > 15.0 then
      L2_2 = GetHashKey
      L3_2 = "prop_barbell_20kg"
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
    end
    return L1_2
  else
    L0_2 = GetHashKey
    L1_2 = "prop_barbell_100kg"
    return L0_2(L1_2)
  end
end
CheckDumbell = L30_1
function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = DoesEntityExist
  L2_2 = L18_1
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = DeleteEntity
    L2_2 = L18_1
    L1_2(L2_2)
    L1_2 = ActivateFrontendMenu
    L2_2 = GetHashKey
    L3_2 = "FE_MENU_VERSION_EMPTY_NO_BACKGROUND"
    L2_2 = L2_2(L3_2)
    L3_2 = true
    L4_2 = -1
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 50
    L1_2(L2_2)
    L1_2 = ClonePed
    L2_2 = L0_2
    L3_2 = false
    L4_2 = false
    L5_2 = true
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    L18_1 = L1_2
    L1_2 = GetEntityCoords
    L2_2 = L18_1
    L1_2 = L1_2(L2_2)
    L2_2 = SetEntityCoords
    L3_2 = L18_1
    L4_2 = L1_2.x
    L5_2 = L1_2.y
    L6_2 = L1_2.z
    L6_2 = L6_2 - 10.0
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = FreezeEntityPosition
    L3_2 = L18_1
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = SetEntityVisible
    L3_2 = L18_1
    L4_2 = false
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = NetworkSetEntityInvisibleToNetwork
    L3_2 = L18_1
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 50
    L2_2(L3_2)
    L2_2 = SetPedAsNoLongerNeeded
    L3_2 = L18_1
    L2_2(L3_2)
    L2_2 = GivePedToPauseMenu
    L3_2 = L18_1
    L4_2 = 4
    L2_2(L3_2, L4_2)
    L2_2 = SetPauseMenuPedLighting
    L3_2 = true
    L2_2(L3_2)
    L2_2 = SetMouseCursorVisibleInMenus
    L3_2 = false
    L2_2(L3_2)
    L2_2 = ReplaceHudColourWithRgba
    L3_2 = 117
    L4_2 = 0
    L5_2 = 0
    L6_2 = 0
    L7_2 = 0
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = SetPauseMenuPedSleepState
    L3_2 = true
    L2_2(L3_2)
    L2_2 = SetNuiFocus
    L3_2 = true
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L1_2 = SetFrontendActive
    L2_2 = true
    L1_2(L2_2)
    L1_2 = ActivateFrontendMenu
    L2_2 = GetHashKey
    L3_2 = "FE_MENU_VERSION_EMPTY_NO_BACKGROUND"
    L2_2 = L2_2(L3_2)
    L3_2 = true
    L4_2 = -1
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 50
    L1_2(L2_2)
    L1_2 = ClonePed
    L2_2 = L0_2
    L3_2 = false
    L4_2 = false
    L5_2 = true
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    L18_1 = L1_2
    L1_2 = GetEntityCoords
    L2_2 = L18_1
    L1_2 = L1_2(L2_2)
    L2_2 = SetEntityCoords
    L3_2 = L18_1
    L4_2 = L1_2.x
    L5_2 = L1_2.y
    L6_2 = L1_2.z
    L6_2 = L6_2 - 10.0
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = FreezeEntityPosition
    L3_2 = L18_1
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = SetEntityVisible
    L3_2 = L18_1
    L4_2 = false
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = NetworkSetEntityInvisibleToNetwork
    L3_2 = L18_1
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 50
    L2_2(L3_2)
    L2_2 = SetPedAsNoLongerNeeded
    L3_2 = L18_1
    L2_2(L3_2)
    L2_2 = GivePedToPauseMenu
    L3_2 = L18_1
    L4_2 = 1
    L2_2(L3_2, L4_2)
    L2_2 = SetPauseMenuPedLighting
    L3_2 = true
    L2_2(L3_2)
    L2_2 = SetMouseCursorVisibleInMenus
    L3_2 = false
    L2_2(L3_2)
    L2_2 = ReplaceHudColourWithRgba
    L3_2 = 117
    L4_2 = 0
    L5_2 = 0
    L6_2 = 0
    L7_2 = 0
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = SetPauseMenuPedSleepState
    L3_2 = true
    L2_2(L3_2)
    L2_2 = SetNuiFocus
    L3_2 = true
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
CreatePedScreen = L30_1
function L30_1()
  local L0_2, L1_2
  L0_2 = DoesEntityExist
  L1_2 = L18_1
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = DeleteEntity
    L1_2 = L18_1
    L0_2(L1_2)
    L0_2 = SetFrontendActive
    L1_2 = false
    L0_2(L1_2)
  end
end
DeletePedScreen = L30_1
function L30_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = false
  L5_2 = L0_1
  if false == L5_2 then
    if true == A3_2 then
      disablekeyboard = true
    end
    L5_2 = true
    L0_1 = L5_2
    L5_2 = SendNUIMessage
    L6_2 = {}
    L6_2.message = "progressshow"
    L6_2.progresstext = A1_2
    L5_2(L6_2)
    L5_2 = 0
    L6_2 = A0_2 / 100
    L6_2 = L6_2 * 1000
    L7_2 = false
    while L5_2 < 100 and false == L7_2 do
      if true == A2_2 then
        L8_2 = L1_1
        if true == L8_2 then
          L7_2 = true
          L8_2 = false
          L1_1 = L8_2
        end
      end
      L8_2 = Citizen
      L8_2 = L8_2.Wait
      L9_2 = L6_2
      L8_2(L9_2)
      if true == A2_2 then
        L8_2 = L1_1
        if true == L8_2 then
          L7_2 = true
          L8_2 = false
          L1_1 = L8_2
        end
      end
      L5_2 = L5_2 + 1
      L8_2 = SendNUIMessage
      L9_2 = {}
      L9_2.message = "progressupdate"
      L9_2.progressbardata = L5_2
      L8_2(L9_2)
    end
    L8_2 = false
    L0_1 = L8_2
    L8_2 = SendNUIMessage
    L9_2 = {}
    L9_2.message = "progresshide"
    L8_2(L9_2)
    if true == A3_2 then
      disablekeyboard = false
    end
    if false == L7_2 then
      L4_2 = true
    end
  end
  return L4_2
end
Progress = L30_1
L30_1 = Config
L30_1 = L30_1.DisablePlayerKeyboardWhenExercise
if L30_1 then
  function L30_1()
    local L0_2, L1_2, L2_2, L3_2
    L0_2 = DisableIdleCamera
    L1_2 = true
    L0_2(L1_2)
    L0_2 = HudWeaponWheelIgnoreSelection
    L0_2()
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 16
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 17
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 22
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 23
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 24
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 25
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 26
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 36
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 37
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 44
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 47
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 55
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 69
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 73
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 81
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 82
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 91
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 92
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 99
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 106
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 114
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 115
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 121
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 122
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 135
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 140
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 142
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 257
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 30
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = DisableControlAction
    L1_2 = 0
    L2_2 = 31
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
  end
  DisableControls = L30_1
  L30_1 = Citizen
  L30_1 = L30_1.CreateThread
  function L31_1()
    local L0_2, L1_2
    while true do
      L0_2 = Citizen
      L0_2 = L0_2.Wait
      L1_2 = 0
      L0_2(L1_2)
      L0_2 = playerloaded
      if true == L0_2 then
        L0_2 = usinggym
        if true ~= L0_2 then
          L0_2 = usinggym2
          if true ~= L0_2 then
            goto lbl_17
          end
        end
        L0_2 = DisableControls
        L0_2()
        goto lbl_26
        ::lbl_17::
        L0_2 = Citizen
        L0_2 = L0_2.Wait
        L1_2 = 1000
        L0_2(L1_2)
      else
        L0_2 = Citizen
        L0_2 = L0_2.Wait
        L1_2 = 1000
        L0_2(L1_2)
      end
      ::lbl_26::
    end
  end
  L30_1(L31_1)
end
function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L0_2 = usinggym
  if true == L0_2 then
    L0_2 = L5_1
    if false == L0_2 then
      L0_2 = L4_1
      if false == L0_2 then
        L0_2 = L3_1
        if nil ~= L0_2 then
          L0_2 = CheckDumbell
          L0_2()
          L0_2 = Config
          L0_2 = L0_2.Gyms
          L1_2 = L3_1.gymid
          L0_2 = L0_2[L1_2]
          L0_2 = L0_2.exercises
          L1_2 = L3_1.exerciseid
          L0_2 = L0_2[L1_2]
          L1_2 = true
          L2_2 = Config
          L2_2 = L2_2.Exercises
          L3_2 = L0_2.exercisetype
          L2_2 = L2_2[L3_2]
          L3_2 = Config
          L3_2 = L3_2.DifferentStatsSystem
          if false == L3_2 then
            L3_2 = pairs
            L4_2 = L2_2.statsneed
            L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
            for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
              L9_2 = playerneeds
              L10_2 = tostring
              L11_2 = L7_2
              L10_2 = L10_2(L11_2)
              L9_2 = L9_2[L10_2]
              if L8_2 <= L9_2 then
              else
                L1_2 = false
              end
            end
          end
          if L1_2 then
            L3_2 = L5_1
            if false ~= L3_2 then
              goto lbl_2531
            end
            L3_2 = SendNUIMessage
            L4_2 = {}
            L4_2.message = "hidegym"
            L3_2(L4_2)
            L3_2 = true
            L5_1 = L3_2
            L3_2 = PlayerPedId
            L3_2 = L3_2()
            L4_2 = GetEntityCoords
            L5_2 = L3_2
            L4_2 = L4_2(L5_2)
            L5_2 = L0_2.exercisetype
            if "bench" == L5_2 then
              L5_2 = StartMinigameGym
              L5_2 = L5_2()
              if true == L5_2 then
                L6_2 = "amb@prop_human_seat_muscle_bench_press@idle_a"
                while true do
                  L7_2 = HasAnimDictLoaded
                  L8_2 = L6_2
                  L7_2 = L7_2(L8_2)
                  if L7_2 then
                    break
                  end
                  L7_2 = RequestAnimDict
                  L8_2 = L6_2
                  L7_2(L8_2)
                  L7_2 = Citizen
                  L7_2 = L7_2.Wait
                  L8_2 = 5
                  L7_2(L8_2)
                end
                L7_2 = FreezeEntityPosition
                L8_2 = L3_2
                L9_2 = true
                L7_2(L8_2, L9_2)
                L7_2 = TaskPlayAnimAdvanced
                L8_2 = L3_2
                L9_2 = L6_2
                L10_2 = "idle_a"
                L11_2 = L0_2.coords
                L11_2 = L11_2.x
                L12_2 = L0_2.coords
                L12_2 = L12_2.y
                L13_2 = L0_2.coords
                L13_2 = L13_2.z
                L14_2 = 0.0
                L15_2 = 0.0
                L16_2 = L0_2.heading
                L17_2 = 8.0
                L18_2 = -1.0
                L19_2 = -1
                L20_2 = 14
                L21_2 = 0
                L22_2 = 0
                L23_2 = 0
                L24_2 = 0
                L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                while true do
                  L7_2 = GetEntityAnimCurrentTime
                  L8_2 = L3_2
                  L9_2 = L6_2
                  L10_2 = "idle_a"
                  L7_2 = L7_2(L8_2, L9_2, L10_2)
                  L8_2 = 0.2
                  if not (L7_2 < L8_2) then
                    break
                  end
                  L7_2 = GetEntityAnimCurrentTime
                  L8_2 = L3_2
                  L9_2 = L6_2
                  L10_2 = "idle_a"
                  L7_2 = L7_2(L8_2, L9_2, L10_2)
                  if 0.0 == L7_2 then
                    L7_2 = TaskPlayAnimAdvanced
                    L8_2 = L3_2
                    L9_2 = L6_2
                    L10_2 = "idle_a"
                    L11_2 = L0_2.coords
                    L11_2 = L11_2.x
                    L12_2 = L0_2.coords
                    L12_2 = L12_2.y
                    L13_2 = L0_2.coords
                    L13_2 = L13_2.z
                    L14_2 = 0.0
                    L15_2 = 0.0
                    L16_2 = L0_2.heading
                    L17_2 = 8.0
                    L18_2 = -1.0
                    L19_2 = -1
                    L20_2 = 14
                    L21_2 = 0
                    L22_2 = 0
                    L23_2 = 0
                    L24_2 = 0
                    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                  end
                  L7_2 = Citizen
                  L7_2 = L7_2.Wait
                  L8_2 = 5
                  L7_2(L8_2)
                end
                L7_2 = "amb@prop_human_seat_muscle_bench_press@base"
                while true do
                  L8_2 = HasAnimDictLoaded
                  L9_2 = L7_2
                  L8_2 = L8_2(L9_2)
                  if L8_2 then
                    break
                  end
                  L8_2 = RequestAnimDict
                  L9_2 = L7_2
                  L8_2(L9_2)
                  L8_2 = Citizen
                  L8_2 = L8_2.Wait
                  L9_2 = 5
                  L8_2(L9_2)
                end
                L8_2 = FreezeEntityPosition
                L9_2 = L3_2
                L10_2 = true
                L8_2(L9_2, L10_2)
                L8_2 = TaskPlayAnimAdvanced
                L9_2 = L3_2
                L10_2 = L7_2
                L11_2 = "base"
                L12_2 = L0_2.coords
                L12_2 = L12_2.x
                L13_2 = L0_2.coords
                L13_2 = L13_2.y
                L14_2 = L0_2.coords
                L14_2 = L14_2.z
                L15_2 = 0.0
                L16_2 = 0.0
                L17_2 = L0_2.heading
                L18_2 = 8.0
                L19_2 = 8.0
                L20_2 = -1
                L21_2 = 1
                L22_2 = 0
                L23_2 = 0
                L24_2 = 0
                L25_2 = 0
                L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
                L8_2 = TriggerServerEvent
                L9_2 = "outlaw_gym:GymAdd"
                L10_2 = L3_1.gymid
                L11_2 = L3_1.exerciseid
                L8_2(L9_2, L10_2, L11_2)
                L8_2 = Citizen
                L8_2 = L8_2.Wait
                L9_2 = 100
                L8_2(L9_2)
                L8_2 = false
                L5_1 = L8_2
                L8_2 = SendNUIMessage
                L9_2 = {}
                L9_2.message = "gymshow"
                L10_2 = Language
                L11_2 = Config
                L11_2 = L11_2.Language
                L10_2 = L10_2[L11_2]
                L10_2 = L10_2.benchpress
                L9_2.gymlabeltext = L10_2
                L8_2(L9_2)
                L8_2 = CheckDumbell
                L8_2 = L8_2()
                L9_2 = DoesEntityExist
                L10_2 = L8_1
                L9_2 = L9_2(L10_2)
                if not L9_2 then
                  goto lbl_2531
                end
                L9_2 = GetEntityModel
                L10_2 = L8_1
                L9_2 = L9_2(L10_2)
                if L9_2 == L8_2 then
                else
                  L10_2 = DeleteEntity
                  L11_2 = L8_1
                  L10_2(L11_2)
                  L10_2 = L8_2
                  L11_2 = RequestModel
                  L12_2 = L10_2
                  L11_2(L12_2)
                  while true do
                    L11_2 = HasModelLoaded
                    L12_2 = L10_2
                    L11_2 = L11_2(L12_2)
                    if L11_2 then
                      break
                    end
                    L11_2 = RequestModel
                    L12_2 = L10_2
                    L11_2(L12_2)
                    L11_2 = Citizen
                    L11_2 = L11_2.Wait
                    L12_2 = 5
                    L11_2(L12_2)
                  end
                  L11_2 = CreateObjectNoOffset
                  L12_2 = L10_2
                  L13_2 = L4_2.x
                  L14_2 = L4_2.y
                  L15_2 = L4_2.z
                  L16_2 = true
                  L17_2 = true
                  L18_2 = true
                  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
                  L8_1 = L11_2
                  L11_2 = AttachEntityToEntity
                  L12_2 = L8_1
                  L13_2 = L3_2
                  L14_2 = GetPedBoneIndex
                  L15_2 = L3_2
                  L16_2 = 28422
                  L14_2 = L14_2(L15_2, L16_2)
                  L15_2 = 0.0
                  L16_2 = 0.0
                  L17_2 = 0.0
                  L18_2 = 0.0
                  L19_2 = 0.0
                  L20_2 = 0.0
                  L21_2 = false
                  L22_2 = false
                  L23_2 = false
                  L24_2 = false
                  L25_2 = 2
                  L26_2 = true
                  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
                end
              else
                L6_2 = Notify
                L7_2 = Language
                L8_2 = Config
                L8_2 = L8_2.Language
                L7_2 = L7_2[L8_2]
                L7_2 = L7_2.exercisecanceled
                L6_2(L7_2)
                L6_2 = "amb@prop_human_seat_muscle_bench_press@base"
                while true do
                  L7_2 = HasAnimDictLoaded
                  L8_2 = L6_2
                  L7_2 = L7_2(L8_2)
                  if L7_2 then
                    break
                  end
                  L7_2 = RequestAnimDict
                  L8_2 = L6_2
                  L7_2(L8_2)
                  L7_2 = Citizen
                  L7_2 = L7_2.Wait
                  L8_2 = 5
                  L7_2(L8_2)
                end
                L7_2 = FreezeEntityPosition
                L8_2 = L3_2
                L9_2 = true
                L7_2(L8_2, L9_2)
                L7_2 = TaskPlayAnimAdvanced
                L8_2 = L3_2
                L9_2 = L6_2
                L10_2 = "base"
                L11_2 = L0_2.coords
                L11_2 = L11_2.x
                L12_2 = L0_2.coords
                L12_2 = L12_2.y
                L13_2 = L0_2.coords
                L13_2 = L13_2.z
                L14_2 = 0.0
                L15_2 = 0.0
                L16_2 = L0_2.heading
                L17_2 = 8.0
                L18_2 = 8.0
                L19_2 = -1
                L20_2 = 1
                L21_2 = 0
                L22_2 = 0
                L23_2 = 0
                L24_2 = 0
                L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                L7_2 = Citizen
                L7_2 = L7_2.Wait
                L8_2 = 100
                L7_2(L8_2)
                L7_2 = false
                L5_1 = L7_2
                L7_2 = SendNUIMessage
                L8_2 = {}
                L8_2.message = "gymshow"
                L9_2 = Language
                L10_2 = Config
                L10_2 = L10_2.Language
                L9_2 = L9_2[L10_2]
                L9_2 = L9_2.benchpress
                L8_2.gymlabeltext = L9_2
                L7_2(L8_2)
                L7_2 = CheckDumbell
                L7_2 = L7_2()
                L8_2 = DoesEntityExist
                L9_2 = L8_1
                L8_2 = L8_2(L9_2)
                if not L8_2 then
                  goto lbl_2531
                end
                L8_2 = GetEntityModel
                L9_2 = L8_1
                L8_2 = L8_2(L9_2)
                if L8_2 == L7_2 then
                else
                  L9_2 = DeleteEntity
                  L10_2 = L8_1
                  L9_2(L10_2)
                  L9_2 = L7_2
                  L10_2 = RequestModel
                  L11_2 = L9_2
                  L10_2(L11_2)
                  while true do
                    L10_2 = HasModelLoaded
                    L11_2 = L9_2
                    L10_2 = L10_2(L11_2)
                    if L10_2 then
                      break
                    end
                    L10_2 = RequestModel
                    L11_2 = L9_2
                    L10_2(L11_2)
                    L10_2 = Citizen
                    L10_2 = L10_2.Wait
                    L11_2 = 5
                    L10_2(L11_2)
                  end
                  L10_2 = CreateObjectNoOffset
                  L11_2 = L9_2
                  L12_2 = L4_2.x
                  L13_2 = L4_2.y
                  L14_2 = L4_2.z
                  L15_2 = true
                  L16_2 = true
                  L17_2 = true
                  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
                  L8_1 = L10_2
                  L10_2 = AttachEntityToEntity
                  L11_2 = L8_1
                  L12_2 = L3_2
                  L13_2 = GetPedBoneIndex
                  L14_2 = L3_2
                  L15_2 = 28422
                  L13_2 = L13_2(L14_2, L15_2)
                  L14_2 = 0.0
                  L15_2 = 0.0
                  L16_2 = 0.0
                  L17_2 = 0.0
                  L18_2 = 0.0
                  L19_2 = 0.0
                  L20_2 = false
                  L21_2 = false
                  L22_2 = false
                  L23_2 = false
                  L24_2 = 2
                  L25_2 = true
                  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
                end
              end
            else
              L5_2 = L0_2.exercisetype
              if "squat" == L5_2 then
                L5_2 = StartMinigameGym
                L5_2 = L5_2()
                if true == L5_2 then
                  L6_2 = "custom@rtxanimssquat"
                  while true do
                    L7_2 = HasAnimDictLoaded
                    L8_2 = L6_2
                    L7_2 = L7_2(L8_2)
                    if L7_2 then
                      break
                    end
                    L7_2 = RequestAnimDict
                    L8_2 = L6_2
                    L7_2(L8_2)
                    L7_2 = Citizen
                    L7_2 = L7_2.Wait
                    L8_2 = 5
                    L7_2(L8_2)
                  end
                  L7_2 = FreezeEntityPosition
                  L8_2 = L3_2
                  L9_2 = true
                  L7_2(L8_2, L9_2)
                  L7_2 = TaskPlayAnimAdvanced
                  L8_2 = L3_2
                  L9_2 = L6_2
                  L10_2 = "rtxsquat_clip"
                  L11_2 = L0_2.coords
                  L11_2 = L11_2.x
                  L12_2 = L0_2.coords
                  L12_2 = L12_2.y
                  L13_2 = L0_2.coords
                  L13_2 = L13_2.z
                  L14_2 = 0.0
                  L15_2 = 0.0
                  L16_2 = L0_2.heading
                  L17_2 = 8.0
                  L18_2 = -1.0
                  L19_2 = -1
                  L20_2 = 14
                  L21_2 = 0
                  L22_2 = 0
                  L23_2 = 0
                  L24_2 = 0
                  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                  L7_2 = Citizen
                  L7_2 = L7_2.Wait
                  L8_2 = 1700
                  L7_2(L8_2)
                  L7_2 = "custom@rtxanimssquatstart"
                  while true do
                    L8_2 = HasAnimDictLoaded
                    L9_2 = L7_2
                    L8_2 = L8_2(L9_2)
                    if L8_2 then
                      break
                    end
                    L8_2 = RequestAnimDict
                    L9_2 = L7_2
                    L8_2(L9_2)
                    L8_2 = Citizen
                    L8_2 = L8_2.Wait
                    L9_2 = 5
                    L8_2(L9_2)
                  end
                  L8_2 = FreezeEntityPosition
                  L9_2 = L3_2
                  L10_2 = true
                  L8_2(L9_2, L10_2)
                  L8_2 = TaskPlayAnimAdvanced
                  L9_2 = L3_2
                  L10_2 = L7_2
                  L11_2 = "rtxsquat_clip"
                  L12_2 = L0_2.coords
                  L12_2 = L12_2.x
                  L13_2 = L0_2.coords
                  L13_2 = L13_2.y
                  L14_2 = L0_2.coords
                  L14_2 = L14_2.z
                  L15_2 = 0.0
                  L16_2 = 0.0
                  L17_2 = L0_2.heading
                  L18_2 = 8.0
                  L19_2 = 8.0
                  L20_2 = -1
                  L21_2 = 1
                  L22_2 = 0
                  L23_2 = 0
                  L24_2 = 0
                  L25_2 = 0
                  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
                  L8_2 = TriggerServerEvent
                  L9_2 = "outlaw_gym:GymAdd"
                  L10_2 = L3_1.gymid
                  L11_2 = L3_1.exerciseid
                  L8_2(L9_2, L10_2, L11_2)
                  L8_2 = Citizen
                  L8_2 = L8_2.Wait
                  L9_2 = 100
                  L8_2(L9_2)
                  L8_2 = false
                  L5_1 = L8_2
                  L8_2 = SendNUIMessage
                  L9_2 = {}
                  L9_2.message = "gymshow"
                  L10_2 = Language
                  L11_2 = Config
                  L11_2 = L11_2.Language
                  L10_2 = L10_2[L11_2]
                  L10_2 = L10_2.squat
                  L9_2.gymlabeltext = L10_2
                  L8_2(L9_2)
                  L8_2 = CheckDumbell
                  L8_2 = L8_2()
                  L9_2 = DoesEntityExist
                  L10_2 = L8_1
                  L9_2 = L9_2(L10_2)
                  if not L9_2 then
                    goto lbl_2531
                  end
                  L9_2 = GetEntityModel
                  L10_2 = L8_1
                  L9_2 = L9_2(L10_2)
                  if L9_2 == L8_2 then
                  else
                    L10_2 = DeleteEntity
                    L11_2 = L8_1
                    L10_2(L11_2)
                    L10_2 = L8_2
                    L11_2 = RequestModel
                    L12_2 = L10_2
                    L11_2(L12_2)
                    while true do
                      L11_2 = HasModelLoaded
                      L12_2 = L10_2
                      L11_2 = L11_2(L12_2)
                      if L11_2 then
                        break
                      end
                      L11_2 = RequestModel
                      L12_2 = L10_2
                      L11_2(L12_2)
                      L11_2 = Citizen
                      L11_2 = L11_2.Wait
                      L12_2 = 5
                      L11_2(L12_2)
                    end
                    L11_2 = CreateObjectNoOffset
                    L12_2 = L10_2
                    L13_2 = L4_2.x
                    L14_2 = L4_2.y
                    L15_2 = L4_2.z
                    L16_2 = true
                    L17_2 = true
                    L18_2 = true
                    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
                    L8_1 = L11_2
                    L11_2 = AttachEntityToEntity
                    L12_2 = L8_1
                    L13_2 = L3_2
                    L14_2 = GetPedBoneIndex
                    L15_2 = L3_2
                    L16_2 = 28422
                    L14_2 = L14_2(L15_2, L16_2)
                    L15_2 = 0.034
                    L16_2 = 0.483
                    L17_2 = -0.049
                    L18_2 = -7.55
                    L19_2 = -0.6
                    L20_2 = -90.65
                    L21_2 = false
                    L22_2 = false
                    L23_2 = false
                    L24_2 = false
                    L25_2 = 2
                    L26_2 = true
                    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
                  end
                else
                  L6_2 = Notify
                  L7_2 = Language
                  L8_2 = Config
                  L8_2 = L8_2.Language
                  L7_2 = L7_2[L8_2]
                  L7_2 = L7_2.exercisecanceled
                  L6_2(L7_2)
                  L6_2 = "custom@rtxanimssquatstart"
                  while true do
                    L7_2 = HasAnimDictLoaded
                    L8_2 = L6_2
                    L7_2 = L7_2(L8_2)
                    if L7_2 then
                      break
                    end
                    L7_2 = RequestAnimDict
                    L8_2 = L6_2
                    L7_2(L8_2)
                    L7_2 = Citizen
                    L7_2 = L7_2.Wait
                    L8_2 = 5
                    L7_2(L8_2)
                  end
                  L7_2 = FreezeEntityPosition
                  L8_2 = L3_2
                  L9_2 = true
                  L7_2(L8_2, L9_2)
                  L7_2 = TaskPlayAnimAdvanced
                  L8_2 = L3_2
                  L9_2 = L6_2
                  L10_2 = "rtxsquat_clip"
                  L11_2 = L0_2.coords
                  L11_2 = L11_2.x
                  L12_2 = L0_2.coords
                  L12_2 = L12_2.y
                  L13_2 = L0_2.coords
                  L13_2 = L13_2.z
                  L14_2 = 0.0
                  L15_2 = 0.0
                  L16_2 = L0_2.heading
                  L17_2 = 8.0
                  L18_2 = 8.0
                  L19_2 = -1
                  L20_2 = 1
                  L21_2 = 0
                  L22_2 = 0
                  L23_2 = 0
                  L24_2 = 0
                  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                  L7_2 = Citizen
                  L7_2 = L7_2.Wait
                  L8_2 = 100
                  L7_2(L8_2)
                  L7_2 = false
                  L5_1 = L7_2
                  L7_2 = SendNUIMessage
                  L8_2 = {}
                  L8_2.message = "gymshow"
                  L9_2 = Language
                  L10_2 = Config
                  L10_2 = L10_2.Language
                  L9_2 = L9_2[L10_2]
                  L9_2 = L9_2.squat
                  L8_2.gymlabeltext = L9_2
                  L7_2(L8_2)
                  L7_2 = CheckDumbell
                  L7_2 = L7_2()
                  L8_2 = DoesEntityExist
                  L9_2 = L8_1
                  L8_2 = L8_2(L9_2)
                  if not L8_2 then
                    goto lbl_2531
                  end
                  L8_2 = GetEntityModel
                  L9_2 = L8_1
                  L8_2 = L8_2(L9_2)
                  if L8_2 == L7_2 then
                  else
                    L9_2 = DeleteEntity
                    L10_2 = L8_1
                    L9_2(L10_2)
                    L9_2 = L7_2
                    L10_2 = RequestModel
                    L11_2 = L9_2
                    L10_2(L11_2)
                    while true do
                      L10_2 = HasModelLoaded
                      L11_2 = L9_2
                      L10_2 = L10_2(L11_2)
                      if L10_2 then
                        break
                      end
                      L10_2 = RequestModel
                      L11_2 = L9_2
                      L10_2(L11_2)
                      L10_2 = Citizen
                      L10_2 = L10_2.Wait
                      L11_2 = 5
                      L10_2(L11_2)
                    end
                    L10_2 = CreateObjectNoOffset
                    L11_2 = L9_2
                    L12_2 = L4_2.x
                    L13_2 = L4_2.y
                    L14_2 = L4_2.z
                    L15_2 = true
                    L16_2 = true
                    L17_2 = true
                    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
                    L8_1 = L10_2
                    L10_2 = AttachEntityToEntity
                    L11_2 = L8_1
                    L12_2 = L3_2
                    L13_2 = GetPedBoneIndex
                    L14_2 = L3_2
                    L15_2 = 28422
                    L13_2 = L13_2(L14_2, L15_2)
                    L14_2 = 0.034
                    L15_2 = 0.483
                    L16_2 = -0.049
                    L17_2 = -7.55
                    L18_2 = -0.6
                    L19_2 = -90.65
                    L20_2 = false
                    L21_2 = false
                    L22_2 = false
                    L23_2 = false
                    L24_2 = 2
                    L25_2 = true
                    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
                  end
                end
              else
                L5_2 = L0_2.exercisetype
                if "chinups" == L5_2 then
                  L5_2 = StartMinigameGym
                  L5_2 = L5_2()
                  if true == L5_2 then
                    L6_2 = "amb@prop_human_muscle_chin_ups@male@base"
                    while true do
                      L7_2 = HasAnimDictLoaded
                      L8_2 = L6_2
                      L7_2 = L7_2(L8_2)
                      if L7_2 then
                        break
                      end
                      L7_2 = RequestAnimDict
                      L8_2 = L6_2
                      L7_2(L8_2)
                      L7_2 = Citizen
                      L7_2 = L7_2.Wait
                      L8_2 = 5
                      L7_2(L8_2)
                    end
                    L7_2 = FreezeEntityPosition
                    L8_2 = L3_2
                    L9_2 = true
                    L7_2(L8_2, L9_2)
                    L7_2 = TaskPlayAnimAdvanced
                    L8_2 = L3_2
                    L9_2 = L6_2
                    L10_2 = "base"
                    L11_2 = L0_2.coords
                    L11_2 = L11_2.x
                    L12_2 = L0_2.coords
                    L12_2 = L12_2.y
                    L13_2 = L0_2.coords
                    L13_2 = L13_2.z
                    L14_2 = 0.0
                    L15_2 = 0.0
                    L16_2 = L0_2.heading
                    L17_2 = 8.0
                    L18_2 = -1.0
                    L19_2 = -1
                    L20_2 = 14
                    L21_2 = 0
                    L22_2 = 0
                    L23_2 = 0
                    L24_2 = 0
                    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                    while true do
                      L7_2 = GetEntityAnimCurrentTime
                      L8_2 = L3_2
                      L9_2 = L6_2
                      L10_2 = "base"
                      L7_2 = L7_2(L8_2, L9_2, L10_2)
                      L8_2 = 0.22
                      if not (L7_2 < L8_2) then
                        break
                      end
                      L7_2 = GetEntityAnimCurrentTime
                      L8_2 = L3_2
                      L9_2 = L6_2
                      L10_2 = "base"
                      L7_2 = L7_2(L8_2, L9_2, L10_2)
                      if 0.0 == L7_2 then
                        L7_2 = TaskPlayAnimAdvanced
                        L8_2 = L3_2
                        L9_2 = L6_2
                        L10_2 = "base"
                        L11_2 = L0_2.coords
                        L11_2 = L11_2.x
                        L12_2 = L0_2.coords
                        L12_2 = L12_2.y
                        L13_2 = L0_2.coords
                        L13_2 = L13_2.z
                        L14_2 = 0.0
                        L15_2 = 0.0
                        L16_2 = L0_2.heading
                        L17_2 = 8.0
                        L18_2 = -1.0
                        L19_2 = -1
                        L20_2 = 14
                        L21_2 = 0
                        L22_2 = 0
                        L23_2 = 0
                        L24_2 = 0
                        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                      end
                      L7_2 = Citizen
                      L7_2 = L7_2.Wait
                      L8_2 = 5
                      L7_2(L8_2)
                    end
                    L7_2 = "amb@prop_human_muscle_chin_ups@male@idle_a"
                    while true do
                      L8_2 = HasAnimDictLoaded
                      L9_2 = L7_2
                      L8_2 = L8_2(L9_2)
                      if L8_2 then
                        break
                      end
                      L8_2 = RequestAnimDict
                      L9_2 = L7_2
                      L8_2(L9_2)
                      L8_2 = Citizen
                      L8_2 = L8_2.Wait
                      L9_2 = 5
                      L8_2(L9_2)
                    end
                    L8_2 = FreezeEntityPosition
                    L9_2 = L3_2
                    L10_2 = true
                    L8_2(L9_2, L10_2)
                    L8_2 = TaskPlayAnimAdvanced
                    L9_2 = L3_2
                    L10_2 = L7_2
                    L11_2 = "idle_a"
                    L12_2 = L0_2.coords
                    L12_2 = L12_2.x
                    L13_2 = L0_2.coords
                    L13_2 = L13_2.y
                    L14_2 = L0_2.coords
                    L14_2 = L14_2.z
                    L15_2 = 0.0
                    L16_2 = 0.0
                    L17_2 = L0_2.heading
                    L18_2 = 8.0
                    L19_2 = 8.0
                    L20_2 = -1
                    L21_2 = 1
                    L22_2 = 0
                    L23_2 = 0
                    L24_2 = 0
                    L25_2 = 0
                    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
                    L8_2 = TriggerServerEvent
                    L9_2 = "outlaw_gym:GymAdd"
                    L10_2 = L3_1.gymid
                    L11_2 = L3_1.exerciseid
                    L8_2(L9_2, L10_2, L11_2)
                    L8_2 = Citizen
                    L8_2 = L8_2.Wait
                    L9_2 = 100
                    L8_2(L9_2)
                    L8_2 = false
                    L5_1 = L8_2
                    L8_2 = SendNUIMessage
                    L9_2 = {}
                    L9_2.message = "gymshow"
                    L10_2 = Language
                    L11_2 = Config
                    L11_2 = L11_2.Language
                    L10_2 = L10_2[L11_2]
                    L10_2 = L10_2.chinups
                    L9_2.gymlabeltext = L10_2
                    L8_2(L9_2)
                  else
                    L6_2 = Notify
                    L7_2 = Language
                    L8_2 = Config
                    L8_2 = L8_2.Language
                    L7_2 = L7_2[L8_2]
                    L7_2 = L7_2.exercisecanceled
                    L6_2(L7_2)
                    L6_2 = "amb@prop_human_muscle_chin_ups@male@idle_a"
                    while true do
                      L7_2 = HasAnimDictLoaded
                      L8_2 = L6_2
                      L7_2 = L7_2(L8_2)
                      if L7_2 then
                        break
                      end
                      L7_2 = RequestAnimDict
                      L8_2 = L6_2
                      L7_2(L8_2)
                      L7_2 = Citizen
                      L7_2 = L7_2.Wait
                      L8_2 = 5
                      L7_2(L8_2)
                    end
                    L7_2 = FreezeEntityPosition
                    L8_2 = L3_2
                    L9_2 = true
                    L7_2(L8_2, L9_2)
                    L7_2 = TaskPlayAnimAdvanced
                    L8_2 = L3_2
                    L9_2 = L6_2
                    L10_2 = "idle_a"
                    L11_2 = L0_2.coords
                    L11_2 = L11_2.x
                    L12_2 = L0_2.coords
                    L12_2 = L12_2.y
                    L13_2 = L0_2.coords
                    L13_2 = L13_2.z
                    L14_2 = 0.0
                    L15_2 = 0.0
                    L16_2 = L0_2.heading
                    L17_2 = 8.0
                    L18_2 = 8.0
                    L19_2 = -1
                    L20_2 = 1
                    L21_2 = 0
                    L22_2 = 0
                    L23_2 = 0
                    L24_2 = 0
                    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                    L7_2 = Citizen
                    L7_2 = L7_2.Wait
                    L8_2 = 100
                    L7_2(L8_2)
                    L7_2 = false
                    L5_1 = L7_2
                    L7_2 = SendNUIMessage
                    L8_2 = {}
                    L8_2.message = "gymshow"
                    L9_2 = Language
                    L10_2 = Config
                    L10_2 = L10_2.Language
                    L9_2 = L9_2[L10_2]
                    L9_2 = L9_2.chinups
                    L8_2.gymlabeltext = L9_2
                    L7_2(L8_2)
                  end
                else
                  L5_2 = L0_2.exercisetype
                  if "barbell1" == L5_2 then
                    L5_2 = StartMinigameGym
                    L5_2 = L5_2()
                    if true == L5_2 then
                      L6_2 = "amb@world_human_muscle_free_weights@male@barbell@base"
                      while true do
                        L7_2 = HasAnimDictLoaded
                        L8_2 = L6_2
                        L7_2 = L7_2(L8_2)
                        if L7_2 then
                          break
                        end
                        L7_2 = RequestAnimDict
                        L8_2 = L6_2
                        L7_2(L8_2)
                        L7_2 = Citizen
                        L7_2 = L7_2.Wait
                        L8_2 = 5
                        L7_2(L8_2)
                      end
                      L7_2 = FreezeEntityPosition
                      L8_2 = L3_2
                      L9_2 = true
                      L7_2(L8_2, L9_2)
                      L7_2 = TaskPlayAnimAdvanced
                      L8_2 = L3_2
                      L9_2 = L6_2
                      L10_2 = "base"
                      L11_2 = L0_2.coords
                      L11_2 = L11_2.x
                      L12_2 = L0_2.coords
                      L12_2 = L12_2.y
                      L13_2 = L0_2.coords
                      L13_2 = L13_2.z
                      L14_2 = 0.0
                      L15_2 = 0.0
                      L16_2 = L0_2.heading
                      L17_2 = 8.0
                      L18_2 = -1.0
                      L19_2 = -1
                      L20_2 = 14
                      L21_2 = 0
                      L22_2 = 0
                      L23_2 = 0
                      L24_2 = 0
                      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                      while true do
                        L7_2 = GetEntityAnimCurrentTime
                        L8_2 = L3_2
                        L9_2 = L6_2
                        L10_2 = "base"
                        L7_2 = L7_2(L8_2, L9_2, L10_2)
                        L8_2 = 0.4
                        if not (L7_2 < L8_2) then
                          break
                        end
                        L7_2 = GetEntityAnimCurrentTime
                        L8_2 = L3_2
                        L9_2 = L6_2
                        L10_2 = "base"
                        L7_2 = L7_2(L8_2, L9_2, L10_2)
                        if 0.0 == L7_2 then
                          L7_2 = TaskPlayAnimAdvanced
                          L8_2 = L3_2
                          L9_2 = L6_2
                          L10_2 = "base"
                          L11_2 = L0_2.coords
                          L11_2 = L11_2.x
                          L12_2 = L0_2.coords
                          L12_2 = L12_2.y
                          L13_2 = L0_2.coords
                          L13_2 = L13_2.z
                          L14_2 = 0.0
                          L15_2 = 0.0
                          L16_2 = L0_2.heading
                          L17_2 = 8.0
                          L18_2 = -1.0
                          L19_2 = -1
                          L20_2 = 14
                          L21_2 = 0
                          L22_2 = 0
                          L23_2 = 0
                          L24_2 = 0
                          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                        end
                        L7_2 = Citizen
                        L7_2 = L7_2.Wait
                        L8_2 = 5
                        L7_2(L8_2)
                      end
                      L7_2 = "amb@world_human_muscle_free_weights@male@barbell@idle_a"
                      while true do
                        L8_2 = HasAnimDictLoaded
                        L9_2 = L7_2
                        L8_2 = L8_2(L9_2)
                        if L8_2 then
                          break
                        end
                        L8_2 = RequestAnimDict
                        L9_2 = L7_2
                        L8_2(L9_2)
                        L8_2 = Citizen
                        L8_2 = L8_2.Wait
                        L9_2 = 5
                        L8_2(L9_2)
                      end
                      L8_2 = FreezeEntityPosition
                      L9_2 = L3_2
                      L10_2 = true
                      L8_2(L9_2, L10_2)
                      L8_2 = TaskPlayAnimAdvanced
                      L9_2 = L3_2
                      L10_2 = L7_2
                      L11_2 = "idle_a"
                      L12_2 = L0_2.coords
                      L12_2 = L12_2.x
                      L13_2 = L0_2.coords
                      L13_2 = L13_2.y
                      L14_2 = L0_2.coords
                      L14_2 = L14_2.z
                      L15_2 = 0.0
                      L16_2 = 0.0
                      L17_2 = L0_2.heading
                      L18_2 = 8.0
                      L19_2 = 8.0
                      L20_2 = -1
                      L21_2 = 1
                      L22_2 = 0
                      L23_2 = 0
                      L24_2 = 0
                      L25_2 = 0
                      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
                      L8_2 = TriggerServerEvent
                      L9_2 = "outlaw_gym:GymAdd"
                      L10_2 = L3_1.gymid
                      L11_2 = L3_1.exerciseid
                      L8_2(L9_2, L10_2, L11_2)
                      L8_2 = Citizen
                      L8_2 = L8_2.Wait
                      L9_2 = 100
                      L8_2(L9_2)
                      L8_2 = false
                      L5_1 = L8_2
                      L8_2 = SendNUIMessage
                      L9_2 = {}
                      L9_2.message = "gymshow"
                      L10_2 = Language
                      L11_2 = Config
                      L11_2 = L11_2.Language
                      L10_2 = L10_2[L11_2]
                      L10_2 = L10_2.curl
                      L9_2.gymlabeltext = L10_2
                      L8_2(L9_2)
                    else
                      L6_2 = Notify
                      L7_2 = Language
                      L8_2 = Config
                      L8_2 = L8_2.Language
                      L7_2 = L7_2[L8_2]
                      L7_2 = L7_2.exercisecanceled
                      L6_2(L7_2)
                      L6_2 = "amb@world_human_muscle_free_weights@male@barbell@idle_a"
                      while true do
                        L7_2 = HasAnimDictLoaded
                        L8_2 = L6_2
                        L7_2 = L7_2(L8_2)
                        if L7_2 then
                          break
                        end
                        L7_2 = RequestAnimDict
                        L8_2 = L6_2
                        L7_2(L8_2)
                        L7_2 = Citizen
                        L7_2 = L7_2.Wait
                        L8_2 = 5
                        L7_2(L8_2)
                      end
                      L7_2 = FreezeEntityPosition
                      L8_2 = L3_2
                      L9_2 = true
                      L7_2(L8_2, L9_2)
                      L7_2 = TaskPlayAnimAdvanced
                      L8_2 = L3_2
                      L9_2 = L6_2
                      L10_2 = "idle_a"
                      L11_2 = L0_2.coords
                      L11_2 = L11_2.x
                      L12_2 = L0_2.coords
                      L12_2 = L12_2.y
                      L13_2 = L0_2.coords
                      L13_2 = L13_2.z
                      L14_2 = 0.0
                      L15_2 = 0.0
                      L16_2 = L0_2.heading
                      L17_2 = 8.0
                      L18_2 = 8.0
                      L19_2 = -1
                      L20_2 = 1
                      L21_2 = 0
                      L22_2 = 0
                      L23_2 = 0
                      L24_2 = 0
                      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                      L7_2 = Citizen
                      L7_2 = L7_2.Wait
                      L8_2 = 100
                      L7_2(L8_2)
                      L7_2 = false
                      L5_1 = L7_2
                      L7_2 = SendNUIMessage
                      L8_2 = {}
                      L8_2.message = "gymshow"
                      L9_2 = Language
                      L10_2 = Config
                      L10_2 = L10_2.Language
                      L9_2 = L9_2[L10_2]
                      L9_2 = L9_2.curl
                      L8_2.gymlabeltext = L9_2
                      L7_2(L8_2)
                    end
                  else
                    L5_2 = L0_2.exercisetype
                    if "barbell2" == L5_2 then
                      L5_2 = StartMinigameGym
                      L5_2 = L5_2()
                      if true == L5_2 then
                        L6_2 = "amb@world_human_muscle_free_weights@male@barbell@base"
                        while true do
                          L7_2 = HasAnimDictLoaded
                          L8_2 = L6_2
                          L7_2 = L7_2(L8_2)
                          if L7_2 then
                            break
                          end
                          L7_2 = RequestAnimDict
                          L8_2 = L6_2
                          L7_2(L8_2)
                          L7_2 = Citizen
                          L7_2 = L7_2.Wait
                          L8_2 = 5
                          L7_2(L8_2)
                        end
                        L7_2 = FreezeEntityPosition
                        L8_2 = L3_2
                        L9_2 = true
                        L7_2(L8_2, L9_2)
                        L7_2 = TaskPlayAnimAdvanced
                        L8_2 = L3_2
                        L9_2 = L6_2
                        L10_2 = "base"
                        L11_2 = L0_2.coords
                        L11_2 = L11_2.x
                        L12_2 = L0_2.coords
                        L12_2 = L12_2.y
                        L13_2 = L0_2.coords
                        L13_2 = L13_2.z
                        L14_2 = 0.0
                        L15_2 = 0.0
                        L16_2 = L0_2.heading
                        L17_2 = 8.0
                        L18_2 = -1.0
                        L19_2 = -1
                        L20_2 = 14
                        L21_2 = 0
                        L22_2 = 0
                        L23_2 = 0
                        L24_2 = 0
                        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                        while true do
                          L7_2 = GetEntityAnimCurrentTime
                          L8_2 = L3_2
                          L9_2 = L6_2
                          L10_2 = "base"
                          L7_2 = L7_2(L8_2, L9_2, L10_2)
                          L8_2 = 0.4
                          if not (L7_2 < L8_2) then
                            break
                          end
                          L7_2 = GetEntityAnimCurrentTime
                          L8_2 = L3_2
                          L9_2 = L6_2
                          L10_2 = "base"
                          L7_2 = L7_2(L8_2, L9_2, L10_2)
                          if 0.0 == L7_2 then
                            L7_2 = TaskPlayAnimAdvanced
                            L8_2 = L3_2
                            L9_2 = L6_2
                            L10_2 = "base"
                            L11_2 = L0_2.coords
                            L11_2 = L11_2.x
                            L12_2 = L0_2.coords
                            L12_2 = L12_2.y
                            L13_2 = L0_2.coords
                            L13_2 = L13_2.z
                            L14_2 = 0.0
                            L15_2 = 0.0
                            L16_2 = L0_2.heading
                            L17_2 = 8.0
                            L18_2 = -1.0
                            L19_2 = -1
                            L20_2 = 14
                            L21_2 = 0
                            L22_2 = 0
                            L23_2 = 0
                            L24_2 = 0
                            L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                          end
                          L7_2 = Citizen
                          L7_2 = L7_2.Wait
                          L8_2 = 5
                          L7_2(L8_2)
                        end
                        L7_2 = "amb@world_human_muscle_free_weights@male@barbell@idle_a"
                        while true do
                          L8_2 = HasAnimDictLoaded
                          L9_2 = L7_2
                          L8_2 = L8_2(L9_2)
                          if L8_2 then
                            break
                          end
                          L8_2 = RequestAnimDict
                          L9_2 = L7_2
                          L8_2(L9_2)
                          L8_2 = Citizen
                          L8_2 = L8_2.Wait
                          L9_2 = 5
                          L8_2(L9_2)
                        end
                        L8_2 = FreezeEntityPosition
                        L9_2 = L3_2
                        L10_2 = true
                        L8_2(L9_2, L10_2)
                        L8_2 = TaskPlayAnimAdvanced
                        L9_2 = L3_2
                        L10_2 = L7_2
                        L11_2 = "idle_a"
                        L12_2 = L0_2.coords
                        L12_2 = L12_2.x
                        L13_2 = L0_2.coords
                        L13_2 = L13_2.y
                        L14_2 = L0_2.coords
                        L14_2 = L14_2.z
                        L15_2 = 0.0
                        L16_2 = 0.0
                        L17_2 = L0_2.heading
                        L18_2 = 8.0
                        L19_2 = 8.0
                        L20_2 = -1
                        L21_2 = 1
                        L22_2 = 0
                        L23_2 = 0
                        L24_2 = 0
                        L25_2 = 0
                        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
                        L8_2 = TriggerServerEvent
                        L9_2 = "outlaw_gym:GymAdd"
                        L10_2 = L3_1.gymid
                        L11_2 = L3_1.exerciseid
                        L8_2(L9_2, L10_2, L11_2)
                        L8_2 = Citizen
                        L8_2 = L8_2.Wait
                        L9_2 = 100
                        L8_2(L9_2)
                        L8_2 = false
                        L5_1 = L8_2
                        L8_2 = SendNUIMessage
                        L9_2 = {}
                        L9_2.message = "gymshow"
                        L10_2 = Language
                        L11_2 = Config
                        L11_2 = L11_2.Language
                        L10_2 = L10_2[L11_2]
                        L10_2 = L10_2.barbell
                        L9_2.gymlabeltext = L10_2
                        L8_2(L9_2)
                      else
                        L6_2 = Notify
                        L7_2 = Language
                        L8_2 = Config
                        L8_2 = L8_2.Language
                        L7_2 = L7_2[L8_2]
                        L7_2 = L7_2.exercisecanceled
                        L6_2(L7_2)
                        L6_2 = "amb@world_human_muscle_free_weights@male@barbell@idle_a"
                        while true do
                          L7_2 = HasAnimDictLoaded
                          L8_2 = L6_2
                          L7_2 = L7_2(L8_2)
                          if L7_2 then
                            break
                          end
                          L7_2 = RequestAnimDict
                          L8_2 = L6_2
                          L7_2(L8_2)
                          L7_2 = Citizen
                          L7_2 = L7_2.Wait
                          L8_2 = 5
                          L7_2(L8_2)
                        end
                        L7_2 = FreezeEntityPosition
                        L8_2 = L3_2
                        L9_2 = true
                        L7_2(L8_2, L9_2)
                        L7_2 = TaskPlayAnimAdvanced
                        L8_2 = L3_2
                        L9_2 = L6_2
                        L10_2 = "idle_a"
                        L11_2 = L0_2.coords
                        L11_2 = L11_2.x
                        L12_2 = L0_2.coords
                        L12_2 = L12_2.y
                        L13_2 = L0_2.coords
                        L13_2 = L13_2.z
                        L14_2 = 0.0
                        L15_2 = 0.0
                        L16_2 = L0_2.heading
                        L17_2 = 8.0
                        L18_2 = 8.0
                        L19_2 = -1
                        L20_2 = 1
                        L21_2 = 0
                        L22_2 = 0
                        L23_2 = 0
                        L24_2 = 0
                        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                        L7_2 = Citizen
                        L7_2 = L7_2.Wait
                        L8_2 = 100
                        L7_2(L8_2)
                        L7_2 = false
                        L5_1 = L7_2
                        L7_2 = SendNUIMessage
                        L8_2 = {}
                        L8_2.message = "gymshow"
                        L9_2 = Language
                        L10_2 = Config
                        L10_2 = L10_2.Language
                        L9_2 = L9_2[L10_2]
                        L9_2 = L9_2.barbell
                        L8_2.gymlabeltext = L9_2
                        L7_2(L8_2)
                      end
                    else
                      L5_2 = L0_2.exercisetype
                      if "box" == L5_2 then
                        L5_2 = StartMinigameGym
                        L5_2 = L5_2()
                        if true == L5_2 then
                          L6_2 = "melee@unarmed@streamed_core"
                          while true do
                            L7_2 = HasAnimDictLoaded
                            L8_2 = L6_2
                            L7_2 = L7_2(L8_2)
                            if L7_2 then
                              break
                            end
                            L7_2 = RequestAnimDict
                            L8_2 = L6_2
                            L7_2(L8_2)
                            L7_2 = Citizen
                            L7_2 = L7_2.Wait
                            L8_2 = 5
                            L7_2(L8_2)
                          end
                          L7_2 = SetPedStealthMovement
                          L8_2 = L3_2
                          L9_2 = false
                          L7_2(L8_2, L9_2)
                          L7_2 = FreezeEntityPosition
                          L8_2 = L3_2
                          L9_2 = true
                          L7_2(L8_2, L9_2)
                          L7_2 = TaskPlayAnimAdvanced
                          L8_2 = L3_2
                          L9_2 = L6_2
                          L10_2 = "counter_attack_l"
                          L11_2 = L0_2.coords
                          L11_2 = L11_2.x
                          L12_2 = L0_2.coords
                          L12_2 = L12_2.y
                          L13_2 = L0_2.coords
                          L13_2 = L13_2.z
                          L14_2 = 0.0
                          L15_2 = 0.0
                          L16_2 = L0_2.heading
                          L17_2 = 8.0
                          L18_2 = -1.0
                          L19_2 = -1
                          L20_2 = 14
                          L21_2 = 0
                          L22_2 = 0
                          L23_2 = 0
                          L24_2 = 0
                          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                          L7_2 = Citizen
                          L7_2 = L7_2.Wait
                          L8_2 = 2000
                          L7_2(L8_2)
                          L7_2 = ClearPedTasks
                          L8_2 = L3_2
                          L7_2(L8_2)
                          L7_2 = FreezeEntityPosition
                          L8_2 = L3_2
                          L9_2 = true
                          L7_2(L8_2, L9_2)
                          L7_2 = SetEntityCoordsNoOffset
                          L8_2 = L3_2
                          L9_2 = L0_2.coords
                          L9_2 = L9_2.x
                          L10_2 = L0_2.coords
                          L10_2 = L10_2.y
                          L11_2 = L0_2.coords
                          L11_2 = L11_2.z
                          L7_2(L8_2, L9_2, L10_2, L11_2)
                          L7_2 = SetEntityHeading
                          L8_2 = L3_2
                          L9_2 = L0_2.heading
                          L7_2(L8_2, L9_2)
                          L7_2 = SetPedStealthMovement
                          L8_2 = L3_2
                          L9_2 = true
                          L7_2(L8_2, L9_2)
                          L7_2 = TriggerServerEvent
                          L8_2 = "outlaw_gym:GymAdd"
                          L9_2 = L3_1.gymid
                          L10_2 = L3_1.exerciseid
                          L7_2(L8_2, L9_2, L10_2)
                          L7_2 = Citizen
                          L7_2 = L7_2.Wait
                          L8_2 = 100
                          L7_2(L8_2)
                          L7_2 = false
                          L5_1 = L7_2
                          L7_2 = SendNUIMessage
                          L8_2 = {}
                          L8_2.message = "gymshow"
                          L9_2 = Language
                          L10_2 = Config
                          L10_2 = L10_2.Language
                          L9_2 = L9_2[L10_2]
                          L9_2 = L9_2.box
                          L8_2.gymlabeltext = L9_2
                          L7_2(L8_2)
                        else
                          L6_2 = Notify
                          L7_2 = Language
                          L8_2 = Config
                          L8_2 = L8_2.Language
                          L7_2 = L7_2[L8_2]
                          L7_2 = L7_2.exercisecanceled
                          L6_2(L7_2)
                          L6_2 = ClearPedTasks
                          L7_2 = L3_2
                          L6_2(L7_2)
                          L6_2 = FreezeEntityPosition
                          L7_2 = L3_2
                          L8_2 = true
                          L6_2(L7_2, L8_2)
                          L6_2 = SetEntityCoordsNoOffset
                          L7_2 = L3_2
                          L8_2 = L0_2.coords
                          L8_2 = L8_2.x
                          L9_2 = L0_2.coords
                          L9_2 = L9_2.y
                          L10_2 = L0_2.coords
                          L10_2 = L10_2.z
                          L6_2(L7_2, L8_2, L9_2, L10_2)
                          L6_2 = SetEntityHeading
                          L7_2 = L3_2
                          L8_2 = L0_2.heading
                          L6_2(L7_2, L8_2)
                          L6_2 = SetPedStealthMovement
                          L7_2 = L3_2
                          L8_2 = true
                          L6_2(L7_2, L8_2)
                          L6_2 = Citizen
                          L6_2 = L6_2.Wait
                          L7_2 = 100
                          L6_2(L7_2)
                          L6_2 = false
                          L5_1 = L6_2
                          L6_2 = SendNUIMessage
                          L7_2 = {}
                          L7_2.message = "gymshow"
                          L8_2 = Language
                          L9_2 = Config
                          L9_2 = L9_2.Language
                          L8_2 = L8_2[L9_2]
                          L8_2 = L8_2.box
                          L7_2.gymlabeltext = L8_2
                          L6_2(L7_2)
                        end
                      else
                        L5_2 = L0_2.exercisetype
                        if "run" ~= L5_2 then
                          goto lbl_2531
                        end
                        L5_2 = StartMinigameGym
                        L5_2 = L5_2()
                        if true == L5_2 then
                          L6_2 = "move_action@p_m_two@unarmed@core"
                          while true do
                            L7_2 = HasAnimDictLoaded
                            L8_2 = L6_2
                            L7_2 = L7_2(L8_2)
                            if L7_2 then
                              break
                            end
                            L7_2 = RequestAnimDict
                            L8_2 = L6_2
                            L7_2(L8_2)
                            L7_2 = Citizen
                            L7_2 = L7_2.Wait
                            L8_2 = 5
                            L7_2(L8_2)
                          end
                          L7_2 = FreezeEntityPosition
                          L8_2 = L3_2
                          L9_2 = true
                          L7_2(L8_2, L9_2)
                          L7_2 = TaskPlayAnimAdvanced
                          L8_2 = L3_2
                          L9_2 = L6_2
                          L10_2 = "run"
                          L11_2 = L0_2.coords
                          L11_2 = L11_2.x
                          L12_2 = L0_2.coords
                          L12_2 = L12_2.y
                          L13_2 = L0_2.coords
                          L13_2 = L13_2.z
                          L14_2 = 0.0
                          L15_2 = 0.0
                          L16_2 = L0_2.heading
                          L17_2 = 8.0
                          L18_2 = 8.0
                          L19_2 = -1
                          L20_2 = 1
                          L21_2 = 0
                          L22_2 = 0
                          L23_2 = 0
                          L24_2 = 0
                          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                          L7_2 = Citizen
                          L7_2 = L7_2.Wait
                          L8_2 = 5500
                          L7_2(L8_2)
                          L7_2 = ClearPedTasks
                          L8_2 = L3_2
                          L7_2(L8_2)
                          L7_2 = FreezeEntityPosition
                          L8_2 = L3_2
                          L9_2 = true
                          L7_2(L8_2, L9_2)
                          L7_2 = SetEntityCoordsNoOffset
                          L8_2 = L3_2
                          L9_2 = L0_2.coords
                          L9_2 = L9_2.x
                          L10_2 = L0_2.coords
                          L10_2 = L10_2.y
                          L11_2 = L0_2.coords
                          L11_2 = L11_2.z
                          L7_2(L8_2, L9_2, L10_2, L11_2)
                          L7_2 = SetEntityHeading
                          L8_2 = L3_2
                          L9_2 = L0_2.heading
                          L7_2(L8_2, L9_2)
                          L7_2 = TriggerServerEvent
                          L8_2 = "outlaw_gym:GymAdd"
                          L9_2 = L3_1.gymid
                          L10_2 = L3_1.exerciseid
                          L7_2(L8_2, L9_2, L10_2)
                          L7_2 = Citizen
                          L7_2 = L7_2.Wait
                          L8_2 = 100
                          L7_2(L8_2)
                          L7_2 = false
                          L5_1 = L7_2
                          L7_2 = SendNUIMessage
                          L8_2 = {}
                          L8_2.message = "gymshow"
                          L9_2 = Language
                          L10_2 = Config
                          L10_2 = L10_2.Language
                          L9_2 = L9_2[L10_2]
                          L9_2 = L9_2.treadmill
                          L8_2.gymlabeltext = L9_2
                          L7_2(L8_2)
                        else
                          L6_2 = Notify
                          L7_2 = Language
                          L8_2 = Config
                          L8_2 = L8_2.Language
                          L7_2 = L7_2[L8_2]
                          L7_2 = L7_2.exercisecanceled
                          L6_2(L7_2)
                          L6_2 = ClearPedTasks
                          L7_2 = L3_2
                          L6_2(L7_2)
                          L6_2 = FreezeEntityPosition
                          L7_2 = L3_2
                          L8_2 = true
                          L6_2(L7_2, L8_2)
                          L6_2 = SetEntityCoordsNoOffset
                          L7_2 = L3_2
                          L8_2 = L0_2.coords
                          L8_2 = L8_2.x
                          L9_2 = L0_2.coords
                          L9_2 = L9_2.y
                          L10_2 = L0_2.coords
                          L10_2 = L10_2.z
                          L6_2(L7_2, L8_2, L9_2, L10_2)
                          L6_2 = SetEntityHeading
                          L7_2 = L3_2
                          L8_2 = L0_2.heading
                          L6_2(L7_2, L8_2)
                          L6_2 = Citizen
                          L6_2 = L6_2.Wait
                          L7_2 = 100
                          L6_2(L7_2)
                          L6_2 = false
                          L5_1 = L6_2
                          L6_2 = SendNUIMessage
                          L7_2 = {}
                          L7_2.message = "gymshow"
                          L8_2 = Language
                          L9_2 = Config
                          L9_2 = L9_2.Language
                          L8_2 = L8_2[L9_2]
                          L8_2 = L8_2.treadmill
                          L7_2.gymlabeltext = L8_2
                          L6_2(L7_2)
                        end
                      end
                    end
                  end
                end
              end
            end
          else
            L3_2 = TriggerEvent
            L4_2 = "outlaw_gym:Notify"
            L5_2 = Language
            L6_2 = Config
            L6_2 = L6_2.Language
            L5_2 = L5_2[L6_2]
            L5_2 = L5_2.noenergy
            L3_2(L4_2, L5_2)
          end
      end
    end
  end
  else
    L0_2 = usinggym2
    if true == L0_2 then
      L0_2 = L5_1
      if false == L0_2 then
        L0_2 = L4_1
        if false == L0_2 then
          L0_2 = L7_1
          if "pushups" == L0_2 then
            L0_2 = SendNUIMessage
            L1_2 = {}
            L1_2.message = "hidegym"
            L0_2(L1_2)
            L0_2 = true
            L5_1 = L0_2
            L0_2 = PlayerPedId
            L0_2 = L0_2()
            L1_2 = GetEntityCoords
            L2_2 = L0_2
            L1_2 = L1_2(L2_2)
            L2_2 = GetEntityRotation
            L3_2 = L0_2
            L2_2 = L2_2(L3_2)
            L3_2 = StartMinigameGym
            L3_2 = L3_2()
            if true == L3_2 then
              L4_2 = "amb@world_human_push_ups@male@idle_a"
              while true do
                L5_2 = HasAnimDictLoaded
                L6_2 = L4_2
                L5_2 = L5_2(L6_2)
                if L5_2 then
                  break
                end
                L5_2 = RequestAnimDict
                L6_2 = L4_2
                L5_2(L6_2)
                L5_2 = Citizen
                L5_2 = L5_2.Wait
                L6_2 = 5
                L5_2(L6_2)
              end
              L5_2 = FreezeEntityPosition
              L6_2 = L0_2
              L7_2 = true
              L5_2(L6_2, L7_2)
              L5_2 = TaskPlayAnimAdvanced
              L6_2 = L0_2
              L7_2 = L4_2
              L8_2 = "idle_d"
              L9_2 = L1_2.x
              L10_2 = L1_2.y
              L11_2 = L1_2.z
              L12_2 = L2_2.x
              L13_2 = L2_2.y
              L14_2 = L2_2.z
              L15_2 = 8.0
              L16_2 = -1.0
              L17_2 = -1
              L18_2 = 14
              L19_2 = 0
              L20_2 = 0
              L21_2 = 0
              L22_2 = 0
              L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
              while true do
                L5_2 = GetEntityAnimCurrentTime
                L6_2 = L0_2
                L7_2 = L4_2
                L8_2 = "idle_d"
                L5_2 = L5_2(L6_2, L7_2, L8_2)
                L6_2 = 0.18
                if not (L5_2 < L6_2) then
                  break
                end
                L5_2 = GetEntityAnimCurrentTime
                L6_2 = L0_2
                L7_2 = L4_2
                L8_2 = "idle_d"
                L5_2 = L5_2(L6_2, L7_2, L8_2)
                if 0.0 == L5_2 then
                  L5_2 = TaskPlayAnimAdvanced
                  L6_2 = L0_2
                  L7_2 = L4_2
                  L8_2 = "idle_d"
                  L9_2 = L1_2.x
                  L10_2 = L1_2.y
                  L11_2 = L1_2.z
                  L12_2 = L2_2.x
                  L13_2 = L2_2.y
                  L14_2 = L2_2.z
                  L15_2 = 8.0
                  L16_2 = -1.0
                  L17_2 = -1
                  L18_2 = 14
                  L19_2 = 0
                  L20_2 = 0
                  L21_2 = 0
                  L22_2 = 0
                  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                end
                L5_2 = Citizen
                L5_2 = L5_2.Wait
                L6_2 = 5
                L5_2(L6_2)
              end
              L5_2 = FreezeEntityPosition
              L6_2 = L0_2
              L7_2 = true
              L5_2(L6_2, L7_2)
              L5_2 = TaskPlayAnimAdvanced
              L6_2 = L0_2
              L7_2 = L4_2
              L8_2 = "idle_a"
              L9_2 = L1_2.x
              L10_2 = L1_2.y
              L11_2 = L1_2.z
              L12_2 = L2_2.x
              L13_2 = L2_2.y
              L14_2 = L2_2.z
              L15_2 = 8.0
              L16_2 = 8.0
              L17_2 = -1
              L18_2 = 1
              L19_2 = 0
              L20_2 = 0
              L21_2 = 0
              L22_2 = 0
              L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
              L5_2 = TriggerServerEvent
              L6_2 = "outlaw_gym:GymTypesAdd"
              L7_2 = L7_1
              L5_2(L6_2, L7_2)
              L5_2 = Citizen
              L5_2 = L5_2.Wait
              L6_2 = 100
              L5_2(L6_2)
              L5_2 = false
              L5_1 = L5_2
              L5_2 = SendNUIMessage
              L6_2 = {}
              L6_2.message = "gymshow"
              L7_2 = Language
              L8_2 = Config
              L8_2 = L8_2.Language
              L7_2 = L7_2[L8_2]
              L7_2 = L7_2.pushups
              L6_2.gymlabeltext = L7_2
              L5_2(L6_2)
            else
              L4_2 = Notify
              L5_2 = Language
              L6_2 = Config
              L6_2 = L6_2.Language
              L5_2 = L5_2[L6_2]
              L5_2 = L5_2.exercisecanceled
              L4_2(L5_2)
              L4_2 = "amb@world_human_push_ups@male@idle_a"
              while true do
                L5_2 = HasAnimDictLoaded
                L6_2 = L4_2
                L5_2 = L5_2(L6_2)
                if L5_2 then
                  break
                end
                L5_2 = RequestAnimDict
                L6_2 = L4_2
                L5_2(L6_2)
                L5_2 = Citizen
                L5_2 = L5_2.Wait
                L6_2 = 5
                L5_2(L6_2)
              end
              L5_2 = FreezeEntityPosition
              L6_2 = L0_2
              L7_2 = true
              L5_2(L6_2, L7_2)
              L5_2 = TaskPlayAnimAdvanced
              L6_2 = L0_2
              L7_2 = L4_2
              L8_2 = "idle_a"
              L9_2 = L1_2.x
              L10_2 = L1_2.y
              L11_2 = L1_2.z
              L12_2 = L2_2.x
              L13_2 = L2_2.y
              L14_2 = L2_2.z
              L15_2 = 8.0
              L16_2 = 8.0
              L17_2 = -1
              L18_2 = 1
              L19_2 = 0
              L20_2 = 0
              L21_2 = 0
              L22_2 = 0
              L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
              L5_2 = Citizen
              L5_2 = L5_2.Wait
              L6_2 = 100
              L5_2(L6_2)
              L5_2 = false
              L5_1 = L5_2
              L5_2 = SendNUIMessage
              L6_2 = {}
              L6_2.message = "gymshow"
              L7_2 = Language
              L8_2 = Config
              L8_2 = L8_2.Language
              L7_2 = L7_2[L8_2]
              L7_2 = L7_2.pushups
              L6_2.gymlabeltext = L7_2
              L5_2(L6_2)
            end
          else
            L0_2 = L7_1
            if "situps" == L0_2 then
              L0_2 = SendNUIMessage
              L1_2 = {}
              L1_2.message = "hidegym"
              L0_2(L1_2)
              L0_2 = true
              L5_1 = L0_2
              L0_2 = PlayerPedId
              L0_2 = L0_2()
              L1_2 = GetEntityCoords
              L2_2 = L0_2
              L1_2 = L1_2(L2_2)
              L2_2 = GetEntityRotation
              L3_2 = L0_2
              L2_2 = L2_2(L3_2)
              L3_2 = StartMinigameGym
              L3_2 = L3_2()
              if true == L3_2 then
                L4_2 = "amb@world_human_sit_ups@male@base"
                while true do
                  L5_2 = HasAnimDictLoaded
                  L6_2 = L4_2
                  L5_2 = L5_2(L6_2)
                  if L5_2 then
                    break
                  end
                  L5_2 = RequestAnimDict
                  L6_2 = L4_2
                  L5_2(L6_2)
                  L5_2 = Citizen
                  L5_2 = L5_2.Wait
                  L6_2 = 5
                  L5_2(L6_2)
                end
                L5_2 = FreezeEntityPosition
                L6_2 = L0_2
                L7_2 = true
                L5_2(L6_2, L7_2)
                L5_2 = TaskPlayAnimAdvanced
                L6_2 = L0_2
                L7_2 = L4_2
                L8_2 = "base"
                L9_2 = L1_2.x
                L10_2 = L1_2.y
                L11_2 = L1_2.z
                L12_2 = L2_2.x
                L13_2 = L2_2.y
                L14_2 = L2_2.z
                L15_2 = 8.0
                L16_2 = -1.0
                L17_2 = -1
                L18_2 = 14
                L19_2 = 0
                L20_2 = 0
                L21_2 = 0
                L22_2 = 0
                L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                while true do
                  L5_2 = GetEntityAnimCurrentTime
                  L6_2 = L0_2
                  L7_2 = L4_2
                  L8_2 = "base"
                  L5_2 = L5_2(L6_2, L7_2, L8_2)
                  L6_2 = 0.22
                  if not (L5_2 < L6_2) then
                    break
                  end
                  L5_2 = GetEntityAnimCurrentTime
                  L6_2 = L0_2
                  L7_2 = L4_2
                  L8_2 = "base"
                  L5_2 = L5_2(L6_2, L7_2, L8_2)
                  if 0.0 == L5_2 then
                    L5_2 = TaskPlayAnimAdvanced
                    L6_2 = L0_2
                    L7_2 = L4_2
                    L8_2 = "base"
                    L9_2 = L1_2.x
                    L10_2 = L1_2.y
                    L11_2 = L1_2.z
                    L12_2 = L2_2.x
                    L13_2 = L2_2.y
                    L14_2 = L2_2.z
                    L15_2 = 8.0
                    L16_2 = -1.0
                    L17_2 = -1
                    L18_2 = 14
                    L19_2 = 0
                    L20_2 = 0
                    L21_2 = 0
                    L22_2 = 0
                    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                  end
                  L5_2 = Citizen
                  L5_2 = L5_2.Wait
                  L6_2 = 5
                  L5_2(L6_2)
                end
                L5_2 = "amb@world_human_sit_ups@male@idle_a"
                while true do
                  L6_2 = HasAnimDictLoaded
                  L7_2 = L5_2
                  L6_2 = L6_2(L7_2)
                  if L6_2 then
                    break
                  end
                  L6_2 = RequestAnimDict
                  L7_2 = L5_2
                  L6_2(L7_2)
                  L6_2 = Citizen
                  L6_2 = L6_2.Wait
                  L7_2 = 5
                  L6_2(L7_2)
                end
                L6_2 = FreezeEntityPosition
                L7_2 = L0_2
                L8_2 = true
                L6_2(L7_2, L8_2)
                L6_2 = TaskPlayAnimAdvanced
                L7_2 = L0_2
                L8_2 = L5_2
                L9_2 = "idle_b"
                L10_2 = L1_2.x
                L11_2 = L1_2.y
                L12_2 = L1_2.z
                L13_2 = L2_2.x
                L14_2 = L2_2.y
                L15_2 = L2_2.z
                L16_2 = 8.0
                L17_2 = 8.0
                L18_2 = -1
                L19_2 = 1
                L20_2 = 0
                L21_2 = 0
                L22_2 = 0
                L23_2 = 0
                L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
                L6_2 = TriggerServerEvent
                L7_2 = "outlaw_gym:GymTypesAdd"
                L8_2 = L7_1
                L6_2(L7_2, L8_2)
                L6_2 = Citizen
                L6_2 = L6_2.Wait
                L7_2 = 100
                L6_2(L7_2)
                L6_2 = false
                L5_1 = L6_2
                L6_2 = SendNUIMessage
                L7_2 = {}
                L7_2.message = "gymshow"
                L8_2 = Language
                L9_2 = Config
                L9_2 = L9_2.Language
                L8_2 = L8_2[L9_2]
                L8_2 = L8_2.situps
                L7_2.gymlabeltext = L8_2
                L6_2(L7_2)
              else
                L4_2 = Notify
                L5_2 = Language
                L6_2 = Config
                L6_2 = L6_2.Language
                L5_2 = L5_2[L6_2]
                L5_2 = L5_2.exercisecanceled
                L4_2(L5_2)
                L4_2 = "amb@world_human_sit_ups@male@idle_a"
                while true do
                  L5_2 = HasAnimDictLoaded
                  L6_2 = L4_2
                  L5_2 = L5_2(L6_2)
                  if L5_2 then
                    break
                  end
                  L5_2 = RequestAnimDict
                  L6_2 = L4_2
                  L5_2(L6_2)
                  L5_2 = Citizen
                  L5_2 = L5_2.Wait
                  L6_2 = 5
                  L5_2(L6_2)
                end
                L5_2 = FreezeEntityPosition
                L6_2 = L0_2
                L7_2 = true
                L5_2(L6_2, L7_2)
                L5_2 = TaskPlayAnimAdvanced
                L6_2 = L0_2
                L7_2 = L4_2
                L8_2 = "idle_b"
                L9_2 = L1_2.x
                L10_2 = L1_2.y
                L11_2 = L1_2.z
                L12_2 = L2_2.x
                L13_2 = L2_2.y
                L14_2 = L2_2.z
                L15_2 = 8.0
                L16_2 = 8.0
                L17_2 = -1
                L18_2 = 1
                L19_2 = 0
                L20_2 = 0
                L21_2 = 0
                L22_2 = 0
                L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                L5_2 = Citizen
                L5_2 = L5_2.Wait
                L6_2 = 100
                L5_2(L6_2)
                L5_2 = false
                L5_1 = L5_2
                L5_2 = SendNUIMessage
                L6_2 = {}
                L6_2.message = "gymshow"
                L7_2 = Language
                L8_2 = Config
                L8_2 = L8_2.Language
                L7_2 = L7_2[L8_2]
                L7_2 = L7_2.situps
                L6_2.gymlabeltext = L7_2
                L5_2(L6_2)
              end
            else
              L0_2 = L7_1
              if "yoga" == L0_2 then
                L0_2 = SendNUIMessage
                L1_2 = {}
                L1_2.message = "hidegym"
                L0_2(L1_2)
                L0_2 = true
                L5_1 = L0_2
                L0_2 = PlayerPedId
                L0_2 = L0_2()
                L1_2 = GetEntityCoords
                L2_2 = L0_2
                L1_2 = L1_2(L2_2)
                L2_2 = GetEntityRotation
                L3_2 = L0_2
                L2_2 = L2_2(L3_2)
                L3_2 = StartMinigameGym
                L3_2 = L3_2()
                if true == L3_2 then
                  L4_2 = "missfam5_yoga"
                  while true do
                    L5_2 = HasAnimDictLoaded
                    L6_2 = L4_2
                    L5_2 = L5_2(L6_2)
                    if L5_2 then
                      break
                    end
                    L5_2 = RequestAnimDict
                    L6_2 = L4_2
                    L5_2(L6_2)
                    L5_2 = Citizen
                    L5_2 = L5_2.Wait
                    L6_2 = 5
                    L5_2(L6_2)
                  end
                  L5_2 = FreezeEntityPosition
                  L6_2 = L0_2
                  L7_2 = true
                  L5_2(L6_2, L7_2)
                  L5_2 = TaskPlayAnimAdvanced
                  L6_2 = L0_2
                  L7_2 = L4_2
                  L8_2 = "start_to_a1"
                  L9_2 = L1_2.x
                  L10_2 = L1_2.y
                  L11_2 = L1_2.z
                  L12_2 = L2_2.x
                  L13_2 = L2_2.y
                  L14_2 = L2_2.z
                  L15_2 = 8.0
                  L16_2 = -1.0
                  L17_2 = -1
                  L18_2 = 14
                  L19_2 = 0
                  L20_2 = 0
                  L21_2 = 0
                  L22_2 = 0
                  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                  while true do
                    L5_2 = GetEntityAnimCurrentTime
                    L6_2 = L0_2
                    L7_2 = L4_2
                    L8_2 = "start_to_a1"
                    L5_2 = L5_2(L6_2, L7_2, L8_2)
                    L6_2 = 0.98
                    if not (L5_2 < L6_2) then
                      break
                    end
                    L5_2 = GetEntityAnimCurrentTime
                    L6_2 = L0_2
                    L7_2 = L4_2
                    L8_2 = "start_to_a1"
                    L5_2 = L5_2(L6_2, L7_2, L8_2)
                    if 0.0 == L5_2 then
                      L5_2 = TaskPlayAnimAdvanced
                      L6_2 = L0_2
                      L7_2 = L4_2
                      L8_2 = "start_to_a1"
                      L9_2 = L1_2.x
                      L10_2 = L1_2.y
                      L11_2 = L1_2.z
                      L12_2 = L2_2.x
                      L13_2 = L2_2.y
                      L14_2 = L2_2.z
                      L15_2 = 8.0
                      L16_2 = -1.0
                      L17_2 = -1
                      L18_2 = 14
                      L19_2 = 0
                      L20_2 = 0
                      L21_2 = 0
                      L22_2 = 0
                      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                    end
                    L5_2 = Citizen
                    L5_2 = L5_2.Wait
                    L6_2 = 5
                    L5_2(L6_2)
                  end
                  L5_2 = TaskPlayAnimAdvanced
                  L6_2 = L0_2
                  L7_2 = L4_2
                  L8_2 = "a1_to_a2"
                  L9_2 = L1_2.x
                  L10_2 = L1_2.y
                  L11_2 = L1_2.z
                  L12_2 = L2_2.x
                  L13_2 = L2_2.y
                  L14_2 = L2_2.z
                  L15_2 = 8.0
                  L16_2 = -1.0
                  L17_2 = -1
                  L18_2 = 14
                  L19_2 = 0
                  L20_2 = 0
                  L21_2 = 0
                  L22_2 = 0
                  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                  while true do
                    L5_2 = GetEntityAnimCurrentTime
                    L6_2 = L0_2
                    L7_2 = L4_2
                    L8_2 = "a1_to_a2"
                    L5_2 = L5_2(L6_2, L7_2, L8_2)
                    L6_2 = 0.98
                    if not (L5_2 < L6_2) then
                      break
                    end
                    L5_2 = GetEntityAnimCurrentTime
                    L6_2 = L0_2
                    L7_2 = L4_2
                    L8_2 = "a1_to_a2"
                    L5_2 = L5_2(L6_2, L7_2, L8_2)
                    if 0.0 == L5_2 then
                      L5_2 = TaskPlayAnimAdvanced
                      L6_2 = L0_2
                      L7_2 = L4_2
                      L8_2 = "a1_to_a2"
                      L9_2 = L1_2.x
                      L10_2 = L1_2.y
                      L11_2 = L1_2.z
                      L12_2 = L2_2.x
                      L13_2 = L2_2.y
                      L14_2 = L2_2.z
                      L15_2 = 8.0
                      L16_2 = -1.0
                      L17_2 = -1
                      L18_2 = 14
                      L19_2 = 0
                      L20_2 = 0
                      L21_2 = 0
                      L22_2 = 0
                      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                    end
                    L5_2 = Citizen
                    L5_2 = L5_2.Wait
                    L6_2 = 5
                    L5_2(L6_2)
                  end
                  L5_2 = TaskPlayAnimAdvanced
                  L6_2 = L0_2
                  L7_2 = L4_2
                  L8_2 = "a2_to_a3"
                  L9_2 = L1_2.x
                  L10_2 = L1_2.y
                  L11_2 = L1_2.z
                  L12_2 = L2_2.x
                  L13_2 = L2_2.y
                  L14_2 = L2_2.z
                  L15_2 = 8.0
                  L16_2 = -1.0
                  L17_2 = -1
                  L18_2 = 14
                  L19_2 = 0
                  L20_2 = 0
                  L21_2 = 0
                  L22_2 = 0
                  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                  while true do
                    L5_2 = GetEntityAnimCurrentTime
                    L6_2 = L0_2
                    L7_2 = L4_2
                    L8_2 = "a2_to_a3"
                    L5_2 = L5_2(L6_2, L7_2, L8_2)
                    L6_2 = 0.98
                    if not (L5_2 < L6_2) then
                      break
                    end
                    L5_2 = GetEntityAnimCurrentTime
                    L6_2 = L0_2
                    L7_2 = L4_2
                    L8_2 = "a2_to_a3"
                    L5_2 = L5_2(L6_2, L7_2, L8_2)
                    if 0.0 == L5_2 then
                      L5_2 = TaskPlayAnimAdvanced
                      L6_2 = L0_2
                      L7_2 = L4_2
                      L8_2 = "a2_to_a3"
                      L9_2 = L1_2.x
                      L10_2 = L1_2.y
                      L11_2 = L1_2.z
                      L12_2 = L2_2.x
                      L13_2 = L2_2.y
                      L14_2 = L2_2.z
                      L15_2 = 8.0
                      L16_2 = -1.0
                      L17_2 = -1
                      L18_2 = 14
                      L19_2 = 0
                      L20_2 = 0
                      L21_2 = 0
                      L22_2 = 0
                      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                    end
                    L5_2 = Citizen
                    L5_2 = L5_2.Wait
                    L6_2 = 5
                    L5_2(L6_2)
                  end
                  L5_2 = TaskPlayAnimAdvanced
                  L6_2 = L0_2
                  L7_2 = L4_2
                  L8_2 = "a3_to_b4"
                  L9_2 = L1_2.x
                  L10_2 = L1_2.y
                  L11_2 = L1_2.z
                  L12_2 = L2_2.x
                  L13_2 = L2_2.y
                  L14_2 = L2_2.z
                  L15_2 = 8.0
                  L16_2 = -1.0
                  L17_2 = -1
                  L18_2 = 14
                  L19_2 = 0
                  L20_2 = 0
                  L21_2 = 0
                  L22_2 = 0
                  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                  while true do
                    L5_2 = GetEntityAnimCurrentTime
                    L6_2 = L0_2
                    L7_2 = L4_2
                    L8_2 = "a3_to_b4"
                    L5_2 = L5_2(L6_2, L7_2, L8_2)
                    L6_2 = 0.98
                    if not (L5_2 < L6_2) then
                      break
                    end
                    L5_2 = GetEntityAnimCurrentTime
                    L6_2 = L0_2
                    L7_2 = L4_2
                    L8_2 = "a3_to_b4"
                    L5_2 = L5_2(L6_2, L7_2, L8_2)
                    if 0.0 == L5_2 then
                      L5_2 = TaskPlayAnimAdvanced
                      L6_2 = L0_2
                      L7_2 = L4_2
                      L8_2 = "a3_to_b4"
                      L9_2 = L1_2.x
                      L10_2 = L1_2.y
                      L11_2 = L1_2.z
                      L12_2 = L2_2.x
                      L13_2 = L2_2.y
                      L14_2 = L2_2.z
                      L15_2 = 8.0
                      L16_2 = -1.0
                      L17_2 = -1
                      L18_2 = 14
                      L19_2 = 0
                      L20_2 = 0
                      L21_2 = 0
                      L22_2 = 0
                      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                    end
                    L5_2 = Citizen
                    L5_2 = L5_2.Wait
                    L6_2 = 5
                    L5_2(L6_2)
                  end
                  L5_2 = TaskPlayAnimAdvanced
                  L6_2 = L0_2
                  L7_2 = L4_2
                  L8_2 = "b4_to_start"
                  L9_2 = L1_2.x
                  L10_2 = L1_2.y
                  L11_2 = L1_2.z
                  L12_2 = L2_2.x
                  L13_2 = L2_2.y
                  L14_2 = L2_2.z
                  L15_2 = 8.0
                  L16_2 = -1.0
                  L17_2 = -1
                  L18_2 = 14
                  L19_2 = 0
                  L20_2 = 0
                  L21_2 = 0
                  L22_2 = 0
                  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                  while true do
                    L5_2 = GetEntityAnimCurrentTime
                    L6_2 = L0_2
                    L7_2 = L4_2
                    L8_2 = "b4_to_start"
                    L5_2 = L5_2(L6_2, L7_2, L8_2)
                    L6_2 = 0.98
                    if not (L5_2 < L6_2) then
                      break
                    end
                    L5_2 = GetEntityAnimCurrentTime
                    L6_2 = L0_2
                    L7_2 = L4_2
                    L8_2 = "b4_to_start"
                    L5_2 = L5_2(L6_2, L7_2, L8_2)
                    if 0.0 == L5_2 then
                      L5_2 = TaskPlayAnimAdvanced
                      L6_2 = L0_2
                      L7_2 = L4_2
                      L8_2 = "b4_to_start"
                      L9_2 = L1_2.x
                      L10_2 = L1_2.y
                      L11_2 = L1_2.z
                      L12_2 = L2_2.x
                      L13_2 = L2_2.y
                      L14_2 = L2_2.z
                      L15_2 = 8.0
                      L16_2 = -1.0
                      L17_2 = -1
                      L18_2 = 14
                      L19_2 = 0
                      L20_2 = 0
                      L21_2 = 0
                      L22_2 = 0
                      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                    end
                    L5_2 = Citizen
                    L5_2 = L5_2.Wait
                    L6_2 = 5
                    L5_2(L6_2)
                  end
                  L5_2 = FreezeEntityPosition
                  L6_2 = L0_2
                  L7_2 = true
                  L5_2(L6_2, L7_2)
                  L5_2 = TaskPlayAnimAdvanced
                  L6_2 = L0_2
                  L7_2 = L4_2
                  L8_2 = "start_pose"
                  L9_2 = L1_2.x
                  L10_2 = L1_2.y
                  L11_2 = L1_2.z
                  L12_2 = L2_2.x
                  L13_2 = L2_2.y
                  L14_2 = L2_2.z
                  L15_2 = 8.0
                  L16_2 = 8.0
                  L17_2 = -1
                  L18_2 = 1
                  L19_2 = 0
                  L20_2 = 0
                  L21_2 = 0
                  L22_2 = 0
                  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                  L5_2 = TriggerServerEvent
                  L6_2 = "outlaw_gym:GymTypesAdd"
                  L7_2 = L7_1
                  L5_2(L6_2, L7_2)
                  L5_2 = Citizen
                  L5_2 = L5_2.Wait
                  L6_2 = 100
                  L5_2(L6_2)
                  L5_2 = false
                  L5_1 = L5_2
                  L5_2 = SendNUIMessage
                  L6_2 = {}
                  L6_2.message = "gymshow"
                  L7_2 = Language
                  L8_2 = Config
                  L8_2 = L8_2.Language
                  L7_2 = L7_2[L8_2]
                  L7_2 = L7_2.yoga
                  L6_2.gymlabeltext = L7_2
                  L5_2(L6_2)
                else
                  L4_2 = Notify
                  L5_2 = Language
                  L6_2 = Config
                  L6_2 = L6_2.Language
                  L5_2 = L5_2[L6_2]
                  L5_2 = L5_2.exercisecanceled
                  L4_2(L5_2)
                  L4_2 = "missfam5_yoga"
                  while true do
                    L5_2 = HasAnimDictLoaded
                    L6_2 = L4_2
                    L5_2 = L5_2(L6_2)
                    if L5_2 then
                      break
                    end
                    L5_2 = RequestAnimDict
                    L6_2 = L4_2
                    L5_2(L6_2)
                    L5_2 = Citizen
                    L5_2 = L5_2.Wait
                    L6_2 = 5
                    L5_2(L6_2)
                  end
                  L5_2 = FreezeEntityPosition
                  L6_2 = L0_2
                  L7_2 = true
                  L5_2(L6_2, L7_2)
                  L5_2 = TaskPlayAnimAdvanced
                  L6_2 = L0_2
                  L7_2 = L4_2
                  L8_2 = "start_pose"
                  L9_2 = L1_2.x
                  L10_2 = L1_2.y
                  L11_2 = L1_2.z
                  L12_2 = L2_2.x
                  L13_2 = L2_2.y
                  L14_2 = L2_2.z
                  L15_2 = 8.0
                  L16_2 = 8.0
                  L17_2 = -1
                  L18_2 = 1
                  L19_2 = 0
                  L20_2 = 0
                  L21_2 = 0
                  L22_2 = 0
                  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                  L5_2 = Citizen
                  L5_2 = L5_2.Wait
                  L6_2 = 100
                  L5_2(L6_2)
                  L5_2 = false
                  L5_1 = L5_2
                  L5_2 = SendNUIMessage
                  L6_2 = {}
                  L6_2.message = "gymshow"
                  L7_2 = Language
                  L8_2 = Config
                  L8_2 = L8_2.Language
                  L7_2 = L7_2[L8_2]
                  L7_2 = L7_2.yoga
                  L6_2.gymlabeltext = L7_2
                  L5_2(L6_2)
                end
              end
            end
          end
        end
      end
    end
  end
  ::lbl_2531::
end
GymAction = L30_1
function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L0_2 = usinggym
  if true == L0_2 then
    L0_2 = L5_1
    if false == L0_2 then
      L0_2 = L4_1
      if false == L0_2 then
        L0_2 = SendNUIMessage
        L1_2 = {}
        L1_2.message = "hidegym"
        L0_2(L1_2)
        L0_2 = true
        L4_1 = L0_2
        L0_2 = PlayerPedId
        L0_2 = L0_2()
        L1_2 = SetBlockingOfNonTemporaryEvents
        L2_2 = L0_2
        L3_2 = false
        L1_2(L2_2, L3_2)
        L1_2 = Config
        L1_2 = L1_2.Gyms
        L2_2 = L3_1.gymid
        L1_2 = L1_2[L2_2]
        L1_2 = L1_2.exercises
        L2_2 = L3_1.exerciseid
        L1_2 = L1_2[L2_2]
        L2_2 = DoesEntityExist
        L3_2 = L8_1
        L2_2 = L2_2(L3_2)
        if L2_2 then
          L2_2 = DeleteEntity
          L3_2 = L8_1
          L2_2(L3_2)
          L2_2 = nil
          L8_1 = L2_2
        end
        L2_2 = DoesEntityExist
        L3_2 = L9_1
        L2_2 = L2_2(L3_2)
        if L2_2 then
          L2_2 = DeleteEntity
          L3_2 = L9_1
          L2_2(L3_2)
          L2_2 = nil
          L9_1 = L2_2
        end
        L2_2 = FreezeEntityPosition
        L3_2 = L0_2
        L4_2 = false
        L2_2(L3_2, L4_2)
        L2_2 = ClearPedTasksImmediately
        L3_2 = L0_2
        L2_2(L3_2)
        L2_2 = SetPedStealthMovement
        L3_2 = L0_2
        L4_2 = false
        L2_2(L3_2, L4_2)
        disablekeyboard2 = false
        L2_2 = GetGroundZFor_3dCoord
        L3_2 = L1_2.coords
        L3_2 = L3_2.x
        L4_2 = L1_2.coords
        L4_2 = L4_2.y
        L5_2 = L1_2.coords
        L5_2 = L5_2.z
        L5_2 = L5_2 + 2.5
        L6_2 = 1
        L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
        L4_2 = GetInteriorFromEntity
        L5_2 = L0_2
        L4_2 = L4_2(L5_2)
        if 0 == L4_2 then
          L5_2 = SetEntityCoords
          L6_2 = L0_2
          L7_2 = L1_2.coords
          L7_2 = L7_2.x
          L8_2 = L1_2.coords
          L8_2 = L8_2.y
          L9_2 = L3_2
          L5_2(L6_2, L7_2, L8_2, L9_2)
        else
          L5_2 = L1_2.exercisetype
          if "barbell1" ~= L5_2 then
            L5_2 = L1_2.exercisetype
            if "barbell2" ~= L5_2 then
              L5_2 = L1_2.exercisetype
              if "run" ~= L5_2 then
                L5_2 = L1_2.exercisetype
                if "box" ~= L5_2 then
                  goto lbl_109
                end
              end
            end
          end
          L5_2 = SetEntityCoordsNoOffset
          L6_2 = L0_2
          L7_2 = L1_2.coords
          L7_2 = L7_2.x
          L8_2 = L1_2.coords
          L8_2 = L8_2.y
          L9_2 = L1_2.coords
          L9_2 = L9_2.z
          L5_2(L6_2, L7_2, L8_2, L9_2)
          goto lbl_118
          ::lbl_109::
          L5_2 = SetEntityCoords
          L6_2 = L0_2
          L7_2 = L1_2.coords
          L7_2 = L7_2.x
          L8_2 = L1_2.coords
          L8_2 = L8_2.y
          L9_2 = L1_2.coords
          L9_2 = L9_2.z
          L5_2(L6_2, L7_2, L8_2, L9_2)
        end
        ::lbl_118::
        L5_2 = SetEntityHeading
        L6_2 = L0_2
        L7_2 = L1_2.heading
        L5_2(L6_2, L7_2)
        L5_2 = TriggerServerEvent
        L6_2 = "outlaw_gym:GYMComplete"
        L7_2 = L3_1.gymid
        L8_2 = L3_1.exerciseid
        L5_2(L6_2, L7_2, L8_2)
        L5_2 = false
        L5_1 = L5_2
        usinggym = false
        L5_2 = {}
        L5_2.gymid = nil
        L5_2.exerciseid = nil
        L3_1 = L5_2
        L5_2 = false
        L4_1 = L5_2
    end
  end
  else
    L0_2 = usinggym2
    if true == L0_2 then
      L0_2 = L5_1
      if false == L0_2 then
        L0_2 = L4_1
        if false == L0_2 then
          L0_2 = PlayerPedId
          L0_2 = L0_2()
          L1_2 = GetEntityCoords
          L2_2 = L0_2
          L1_2 = L1_2(L2_2)
          L2_2 = GetEntityRotation
          L3_2 = L0_2
          L2_2 = L2_2(L3_2)
          L3_2 = SendNUIMessage
          L4_2 = {}
          L4_2.message = "hidegym"
          L3_2(L4_2)
          L3_2 = true
          L4_1 = L3_2
          L3_2 = FreezeEntityPosition
          L4_2 = L0_2
          L5_2 = false
          L3_2(L4_2, L5_2)
          L3_2 = L7_1
          if "pushups" == L3_2 then
            L3_2 = "amb@world_human_push_ups@male@exit"
            while true do
              L4_2 = HasAnimDictLoaded
              L5_2 = L3_2
              L4_2 = L4_2(L5_2)
              if L4_2 then
                break
              end
              L4_2 = RequestAnimDict
              L5_2 = L3_2
              L4_2(L5_2)
              L4_2 = Citizen
              L4_2 = L4_2.Wait
              L5_2 = 5
              L4_2(L5_2)
            end
            L4_2 = TaskPlayAnimAdvanced
            L5_2 = L0_2
            L6_2 = L3_2
            L7_2 = "exit"
            L8_2 = L1_2.x
            L9_2 = L1_2.y
            L10_2 = L1_2.z
            L11_2 = L2_2.x
            L12_2 = L2_2.y
            L13_2 = L2_2.z
            L14_2 = 8.0
            L15_2 = 8.0
            L16_2 = -1
            L17_2 = 0
            L18_2 = 0
            L19_2 = 0
            L20_2 = 0
            L21_2 = 0
            L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
          else
            L3_2 = L7_1
            if "situps" == L3_2 then
              L3_2 = "amb@world_human_sit_ups@male@exit"
              while true do
                L4_2 = HasAnimDictLoaded
                L5_2 = L3_2
                L4_2 = L4_2(L5_2)
                if L4_2 then
                  break
                end
                L4_2 = RequestAnimDict
                L5_2 = L3_2
                L4_2(L5_2)
                L4_2 = Citizen
                L4_2 = L4_2.Wait
                L5_2 = 5
                L4_2(L5_2)
              end
              L4_2 = TaskPlayAnimAdvanced
              L5_2 = L0_2
              L6_2 = L3_2
              L7_2 = "exit_flee"
              L8_2 = L1_2.x
              L9_2 = L1_2.y
              L10_2 = L1_2.z
              L11_2 = L2_2.x
              L12_2 = L2_2.y
              L13_2 = L2_2.z
              L14_2 = 8.0
              L15_2 = 8.0
              L16_2 = -1
              L17_2 = 0
              L18_2 = 0
              L19_2 = 0
              L20_2 = 0
              L21_2 = 0
              L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
            else
              L3_2 = L7_1
              if "yoga" == L3_2 then
                L3_2 = "missfam5_yoga"
                while true do
                  L4_2 = HasAnimDictLoaded
                  L5_2 = L3_2
                  L4_2 = L4_2(L5_2)
                  if L4_2 then
                    break
                  end
                  L4_2 = RequestAnimDict
                  L5_2 = L3_2
                  L4_2(L5_2)
                  L4_2 = Citizen
                  L4_2 = L4_2.Wait
                  L5_2 = 5
                  L4_2(L5_2)
                end
                L4_2 = TaskPlayAnimAdvanced
                L5_2 = L0_2
                L6_2 = L3_2
                L7_2 = "start_exit"
                L8_2 = L1_2.x
                L9_2 = L1_2.y
                L10_2 = L1_2.z
                L11_2 = L2_2.x
                L12_2 = L2_2.y
                L13_2 = L2_2.z
                L14_2 = 8.0
                L15_2 = 8.0
                L16_2 = -1
                L17_2 = 0
                L18_2 = 0
                L19_2 = 0
                L20_2 = 0
                L21_2 = 0
                L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
              end
            end
          end
          disablekeyboard2 = false
          L3_2 = TriggerServerEvent
          L4_2 = "outlaw_gym:GYMTYPESComplete"
          L3_2(L4_2)
          L3_2 = false
          L5_1 = L3_2
          usinggym2 = false
          L3_2 = ""
          L7_1 = L3_2
          L3_2 = false
          L4_1 = L3_2
        end
      end
    end
  end
end
GymStop = L30_1
L30_1 = RegisterNetEvent
L31_1 = "outlaw_gym:GymStop"
L30_1(L31_1)
L30_1 = AddEventHandler
L31_1 = "outlaw_gym:GymStop"
function L32_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = usinggym
  if true == L2_2 then
    L2_2 = L4_1
    if false == L2_2 then
      L2_2 = L3_1.gymid
      if L2_2 == A0_2 then
        while true do
          L2_2 = L5_1
          if true ~= L2_2 then
            break
          end
          L2_2 = Citizen
          L2_2 = L2_2.Wait
          L3_2 = 5
          L2_2(L3_2)
        end
        L2_2 = SendNUIMessage
        L3_2 = {}
        L3_2.message = "hidegym"
        L2_2(L3_2)
        L2_2 = true
        L4_1 = L2_2
        L2_2 = PlayerPedId
        L2_2 = L2_2()
        L3_2 = SetBlockingOfNonTemporaryEvents
        L4_2 = L2_2
        L5_2 = false
        L3_2(L4_2, L5_2)
        L3_2 = Config
        L3_2 = L3_2.Gyms
        L4_2 = L3_1.gymid
        L3_2 = L3_2[L4_2]
        L3_2 = L3_2.exercises
        L4_2 = L3_1.exerciseid
        L3_2 = L3_2[L4_2]
        L4_2 = DoesEntityExist
        L5_2 = L8_1
        L4_2 = L4_2(L5_2)
        if L4_2 then
          L4_2 = DeleteEntity
          L5_2 = L8_1
          L4_2(L5_2)
          L4_2 = nil
          L8_1 = L4_2
        end
        L4_2 = DoesEntityExist
        L5_2 = L9_1
        L4_2 = L4_2(L5_2)
        if L4_2 then
          L4_2 = DeleteEntity
          L5_2 = L9_1
          L4_2(L5_2)
          L4_2 = nil
          L9_1 = L4_2
        end
        L4_2 = FreezeEntityPosition
        L5_2 = L2_2
        L6_2 = false
        L4_2(L5_2, L6_2)
        L4_2 = ClearPedTasksImmediately
        L5_2 = L2_2
        L4_2(L5_2)
        L4_2 = SetPedStealthMovement
        L5_2 = L2_2
        L6_2 = false
        L4_2(L5_2, L6_2)
        disablekeyboard2 = false
        L4_2 = GetGroundZFor_3dCoord
        L5_2 = L3_2.coords
        L5_2 = L5_2.x
        L6_2 = L3_2.coords
        L6_2 = L6_2.y
        L7_2 = L3_2.coords
        L7_2 = L7_2.z
        L7_2 = L7_2 + 2.5
        L8_2 = 1
        L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
        L6_2 = GetInteriorFromEntity
        L7_2 = L2_2
        L6_2 = L6_2(L7_2)
        if 0 == L6_2 then
          L7_2 = SetEntityCoords
          L8_2 = L2_2
          L9_2 = L3_2.coords
          L9_2 = L9_2.x
          L10_2 = L3_2.coords
          L10_2 = L10_2.y
          L11_2 = L5_2
          L7_2(L8_2, L9_2, L10_2, L11_2)
        else
          L7_2 = SetEntityCoords
          L8_2 = L2_2
          L9_2 = L3_2.coords
          L9_2 = L9_2.x
          L10_2 = L3_2.coords
          L10_2 = L10_2.y
          L11_2 = L3_2.coords
          L11_2 = L11_2.z
          L7_2(L8_2, L9_2, L10_2, L11_2)
        end
        L7_2 = SetEntityHeading
        L8_2 = L2_2
        L9_2 = L3_2.heading
        L7_2(L8_2, L9_2)
        L7_2 = TriggerServerEvent
        L8_2 = "outlaw_gym:GYMComplete"
        L9_2 = L3_1.gymid
        L10_2 = L3_1.exerciseid
        L7_2(L8_2, L9_2, L10_2)
        L7_2 = false
        L5_1 = L7_2
        usinggym = false
        L7_2 = {}
        L7_2.gymid = nil
        L7_2.exerciseid = nil
        L3_1 = L7_2
        L7_2 = false
        L4_1 = L7_2
        if "closed" == A1_2 then
          L7_2 = Notify
          L8_2 = Language
          L9_2 = Config
          L9_2 = L9_2.Language
          L8_2 = L8_2[L9_2]
          L8_2 = L8_2.gymclosed
          L7_2(L8_2)
        elseif "entry" == A1_2 then
          L7_2 = Notify
          L8_2 = Language
          L9_2 = Config
          L9_2 = L9_2.Language
          L8_2 = L8_2[L9_2]
          L8_2 = L8_2.gymentryexpired
          L7_2(L8_2)
        elseif "energy" == A1_2 then
          L7_2 = Notify
          L8_2 = Language
          L9_2 = Config
          L9_2 = L9_2.Language
          L8_2 = L8_2[L9_2]
          L8_2 = L8_2.noenergy
          L7_2(L8_2)
        end
      end
    end
  end
end
L30_1(L31_1, L32_1)
L30_1 = RegisterNetEvent
L31_1 = "outlaw_gym:GymStop2"
L30_1(L31_1)
L30_1 = AddEventHandler
L31_1 = "outlaw_gym:GymStop2"
function L32_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L0_2 = usinggym2
  if true == L0_2 then
    L0_2 = L4_1
    if false == L0_2 then
      while true do
        L0_2 = L5_1
        if true ~= L0_2 then
          break
        end
        L0_2 = Citizen
        L0_2 = L0_2.Wait
        L1_2 = 5
        L0_2(L1_2)
      end
      L0_2 = PlayerPedId
      L0_2 = L0_2()
      L1_2 = GetEntityCoords
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      L2_2 = GetEntityRotation
      L3_2 = L0_2
      L2_2 = L2_2(L3_2)
      L3_2 = SetBlockingOfNonTemporaryEvents
      L4_2 = L0_2
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = SendNUIMessage
      L4_2 = {}
      L4_2.message = "hidegym"
      L3_2(L4_2)
      L3_2 = true
      L4_1 = L3_2
      L3_2 = FreezeEntityPosition
      L4_2 = L0_2
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = L7_1
      if "pushups" == L3_2 then
        L3_2 = "amb@world_human_push_ups@male@exit"
        while true do
          L4_2 = HasAnimDictLoaded
          L5_2 = L3_2
          L4_2 = L4_2(L5_2)
          if L4_2 then
            break
          end
          L4_2 = RequestAnimDict
          L5_2 = L3_2
          L4_2(L5_2)
          L4_2 = Citizen
          L4_2 = L4_2.Wait
          L5_2 = 5
          L4_2(L5_2)
        end
        L4_2 = TaskPlayAnimAdvanced
        L5_2 = L0_2
        L6_2 = L3_2
        L7_2 = "exit"
        L8_2 = L1_2.x
        L9_2 = L1_2.y
        L10_2 = L1_2.z
        L11_2 = L2_2.x
        L12_2 = L2_2.y
        L13_2 = L2_2.z
        L14_2 = 8.0
        L15_2 = 8.0
        L16_2 = -1
        L17_2 = 0
        L18_2 = 0
        L19_2 = 0
        L20_2 = 0
        L21_2 = 0
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      else
        L3_2 = L7_1
        if "situps" == L3_2 then
          L3_2 = "amb@world_human_sit_ups@male@exit"
          while true do
            L4_2 = HasAnimDictLoaded
            L5_2 = L3_2
            L4_2 = L4_2(L5_2)
            if L4_2 then
              break
            end
            L4_2 = RequestAnimDict
            L5_2 = L3_2
            L4_2(L5_2)
            L4_2 = Citizen
            L4_2 = L4_2.Wait
            L5_2 = 5
            L4_2(L5_2)
          end
          L4_2 = TaskPlayAnimAdvanced
          L5_2 = L0_2
          L6_2 = L3_2
          L7_2 = "exit_flee"
          L8_2 = L1_2.x
          L9_2 = L1_2.y
          L10_2 = L1_2.z
          L11_2 = L2_2.x
          L12_2 = L2_2.y
          L13_2 = L2_2.z
          L14_2 = 8.0
          L15_2 = 8.0
          L16_2 = -1
          L17_2 = 0
          L18_2 = 0
          L19_2 = 0
          L20_2 = 0
          L21_2 = 0
          L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        end
      end
      disablekeyboard2 = false
      L3_2 = TriggerServerEvent
      L4_2 = "outlaw_gym:GYMTYPESComplete"
      L3_2(L4_2)
      L3_2 = false
      L5_1 = L3_2
      usinggym2 = false
      L3_2 = ""
      L7_1 = L3_2
      L3_2 = false
      L4_1 = L3_2
      L3_2 = Notify
      L4_2 = Language
      L5_2 = Config
      L5_2 = L5_2.Language
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.noenergy
      L3_2(L4_2)
    end
  end
end
L30_1(L31_1, L32_1)
L30_1 = Config
L30_1 = L30_1.Showers
if L30_1 then
  L30_1 = RegisterNetEvent
  L31_1 = "outlaw_gym:UseShower"
  L30_1(L31_1)
  L30_1 = AddEventHandler
  L31_1 = "outlaw_gym:UseShower"
  function L32_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
    L1_2 = ActionPossible
    L1_2 = L1_2()
    if true == L1_2 then
      L1_2 = PlayerPedId
      L1_2 = L1_2()
      L2_2 = GetEntityCoords
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L3_2 = Config
      L3_2 = L3_2.Showers
      L3_2 = L3_2[A0_2]
      L4_2 = vector3
      L5_2 = L3_2.coords
      L5_2 = L5_2.x
      L6_2 = L3_2.coords
      L6_2 = L6_2.y
      L7_2 = L3_2.coords
      L7_2 = L7_2.z
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L5_2 = true
      L21_1 = L5_2
      L5_2 = FreezeEntityPosition
      L6_2 = L1_2
      L7_2 = true
      L5_2(L6_2, L7_2)
      L5_2 = SetEntityCoords
      L6_2 = L1_2
      L7_2 = L4_2.x
      L8_2 = L4_2.y
      L9_2 = L4_2.z
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = SetEntityHeading
      L6_2 = L1_2
      L7_2 = L3_2.heading
      L5_2(L6_2, L7_2)
      L5_2 = "mp_safehouseshower@female@"
      while true do
        L6_2 = HasAnimDictLoaded
        L7_2 = L5_2
        L6_2 = L6_2(L7_2)
        if L6_2 then
          break
        end
        L6_2 = RequestAnimDict
        L7_2 = L5_2
        L6_2(L7_2)
        L6_2 = Citizen
        L6_2 = L6_2.Wait
        L7_2 = 5
        L6_2(L7_2)
      end
      L6_2 = TaskPlayAnimAdvanced
      L7_2 = L1_2
      L8_2 = L5_2
      L9_2 = "shower_idle_a"
      L10_2 = L4_2.x
      L11_2 = L4_2.y
      L12_2 = L4_2.z
      L13_2 = 0.0
      L14_2 = 0.0
      L15_2 = L3_2.heading
      L16_2 = 5.5
      L17_2 = -1.0
      L18_2 = -1
      L19_2 = 15
      L20_2 = 0
      L21_2 = 0
      L22_2 = 0
      L23_2 = 0
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
      L6_2 = Progress
      L7_2 = Config
      L7_2 = L7_2.ShowerTime
      L8_2 = Language
      L9_2 = Config
      L9_2 = L9_2.Language
      L8_2 = L8_2[L9_2]
      L8_2 = L8_2.showering
      L9_2 = true
      L10_2 = false
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
      if true == L6_2 then
        L7_2 = FreezeEntityPosition
        L8_2 = L1_2
        L9_2 = false
        L7_2(L8_2, L9_2)
        L7_2 = ClearPedTasksImmediately
        L8_2 = L1_2
        L7_2(L8_2)
        L7_2 = TriggerServerEvent
        L8_2 = "outlaw_gym:SHOWERComplete"
        L9_2 = true
        L10_2 = A0_2
        L7_2(L8_2, L9_2, L10_2)
        L7_2 = Notify
        L8_2 = Language
        L9_2 = Config
        L9_2 = L9_2.Language
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2.showerdone
        L7_2(L8_2)
        L7_2 = false
        L21_1 = L7_2
      else
        L7_2 = FreezeEntityPosition
        L8_2 = L1_2
        L9_2 = false
        L7_2(L8_2, L9_2)
        L7_2 = ClearPedTasksImmediately
        L8_2 = L1_2
        L7_2(L8_2)
        L7_2 = TriggerServerEvent
        L8_2 = "outlaw_gym:SHOWERComplete"
        L9_2 = false
        L10_2 = A0_2
        L7_2(L8_2, L9_2, L10_2)
        L7_2 = Notify
        L8_2 = Language
        L9_2 = Config
        L9_2 = L9_2.Language
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2.showerexit
        L7_2(L8_2)
        L7_2 = false
        L21_1 = L7_2
      end
    end
  end
  L30_1(L31_1, L32_1)
  L30_1 = RegisterNetEvent
  L31_1 = "outlaw_gym:ShowerHandler"
  L30_1(L31_1)
  L30_1 = AddEventHandler
  L31_1 = "outlaw_gym:ShowerHandler"
  function L32_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
    L2_2 = Config
    L2_2 = L2_2.Showers
    L2_2 = L2_2[A0_2]
    if true == A1_2 then
      L2_2.taken = true
      L3_2 = DoesParticleFxLoopedExist
      L4_2 = L2_2.particlehandler
      L3_2 = L3_2(L4_2)
      if L3_2 then
      else
        L3_2 = PlayerPedId
        L3_2 = L3_2()
        L4_2 = GetEntityCoords
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        L5_2 = L2_2.coordsparticle
        L5_2 = L4_2 - L5_2
        L5_2 = #L5_2
        L6_2 = 200.0
        if not (L5_2 < L6_2) then
          goto lbl_80
        end
        L6_2 = "scr_mp_house"
        L7_2 = RequestNamedPtfxAsset
        L8_2 = L6_2
        L7_2(L8_2)
        while true do
          L7_2 = HasNamedPtfxAssetLoaded
          L8_2 = L6_2
          L7_2 = L7_2(L8_2)
          if L7_2 then
            break
          end
          L7_2 = Citizen
          L7_2 = L7_2.Wait
          L8_2 = 5
          L7_2(L8_2)
          L7_2 = RequestNamedPtfxAsset
          L8_2 = L6_2
          L7_2(L8_2)
        end
        L7_2 = SetPtfxAssetNextCall
        L8_2 = L6_2
        L7_2(L8_2)
        L7_2 = StartParticleFxLoopedAtCoord
        L8_2 = "ent_amb_shower"
        L9_2 = L2_2.coordsparticle
        L9_2 = L9_2.x
        L10_2 = L2_2.coordsparticle
        L10_2 = L10_2.y
        L11_2 = L2_2.coordsparticle
        L11_2 = L11_2.z
        L12_2 = -50.0
        L13_2 = 0.0
        L14_2 = 0.0
        L15_2 = 2.0
        L16_2 = true
        L17_2 = false
        L18_2 = false
        L19_2 = 0
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
        L2_2.particlehandler = L7_2
      end
    else
      L2_2.taken = false
      L3_2 = DoesParticleFxLoopedExist
      L4_2 = L2_2.particlehandler
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = RemoveParticleFxInRange
        L4_2 = L2_2.coordsparticle
        L4_2 = L4_2.x
        L5_2 = L2_2.coordsparticle
        L5_2 = L5_2.y
        L6_2 = L2_2.coordsparticle
        L6_2 = L6_2.z
        L7_2 = 2.0
        L3_2(L4_2, L5_2, L6_2, L7_2)
        L2_2.particlehandler = nil
      end
    end
    ::lbl_80::
  end
  L30_1(L31_1, L32_1)
end
L30_1 = RegisterNetEvent
L31_1 = "outlaw_gym:GymHandler"
L30_1(L31_1)
L30_1 = AddEventHandler
L31_1 = "outlaw_gym:GymHandler"
function L32_1(A0_2, A1_2)
  local L2_2
  L2_2 = Config
  L2_2 = L2_2.Gyms
  L2_2 = L2_2[A0_2]
  L2_2.taken = A1_2
end
L30_1(L31_1, L32_1)
L30_1 = RegisterNetEvent
L31_1 = "outlaw_gym:UseGym"
L30_1(L31_1)
L30_1 = AddEventHandler
L31_1 = "outlaw_gym:UseGym"
function L32_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  L2_2 = ActionPossible
  L2_2 = L2_2()
  if true == L2_2 then
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = SetBlockingOfNonTemporaryEvents
    L4_2 = L2_2
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = GetEntityCoords
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = Config
    L4_2 = L4_2.Gyms
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2.exercises
    L4_2 = L4_2[A1_2]
    L5_2 = vector3
    L6_2 = L4_2.coords
    L6_2 = L6_2.x
    L7_2 = L4_2.coords
    L7_2 = L7_2.y
    L8_2 = L4_2.coords
    L8_2 = L8_2.z
    L8_2 = L8_2 + 1.0
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = L3_2 - L5_2
    L6_2 = #L6_2
    L7_2 = false
    L8_2 = Config
    L8_2 = L8_2.Target
    if true == L8_2 then
      L8_2 = Config
      L8_2 = L8_2.GymExerciseDistance
      L8_2 = L8_2 + 10.0
      if L6_2 < L8_2 then
        L7_2 = true
      end
    else
      L8_2 = Config
      L8_2 = L8_2.GymExerciseDistance
      if L6_2 < L8_2 then
        L7_2 = true
      end
    end
    if true == L7_2 then
      usinggym = true
      L8_2 = {}
      L8_2.gymid = A0_2
      L8_2.exerciseid = A1_2
      L3_1 = L8_2
      disablekeyboard2 = true
      L8_2 = false
      L5_1 = L8_2
      L8_2 = FreezeEntityPosition
      L9_2 = L2_2
      L10_2 = true
      L8_2(L9_2, L10_2)
      L8_2 = L4_2.exercisetype
      if "bench" == L8_2 then
        L8_2 = CheckDumbell
        L8_2 = L8_2()
        L9_2 = L8_2
        L10_2 = "amb@prop_human_seat_muscle_bench_press@base"
        while true do
          L11_2 = HasAnimDictLoaded
          L12_2 = L10_2
          L11_2 = L11_2(L12_2)
          if L11_2 then
            break
          end
          L11_2 = RequestAnimDict
          L12_2 = L10_2
          L11_2(L12_2)
          L11_2 = Citizen
          L11_2 = L11_2.Wait
          L12_2 = 5
          L11_2(L12_2)
        end
        L11_2 = DoesEntityExist
        L12_2 = L8_1
        L11_2 = L11_2(L12_2)
        if L11_2 then
        else
          L11_2 = RequestModel
          L12_2 = L9_2
          L11_2(L12_2)
          while true do
            L11_2 = HasModelLoaded
            L12_2 = L9_2
            L11_2 = L11_2(L12_2)
            if L11_2 then
              break
            end
            L11_2 = RequestModel
            L12_2 = L9_2
            L11_2(L12_2)
            L11_2 = Citizen
            L11_2 = L11_2.Wait
            L12_2 = 5
            L11_2(L12_2)
          end
          L11_2 = CreateObjectNoOffset
          L12_2 = L9_2
          L13_2 = L3_2.x
          L14_2 = L3_2.y
          L15_2 = L3_2.z
          L16_2 = true
          L17_2 = true
          L18_2 = true
          L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
          L8_1 = L11_2
          L11_2 = AttachEntityToEntity
          L12_2 = L8_1
          L13_2 = L2_2
          L14_2 = GetPedBoneIndex
          L15_2 = L2_2
          L16_2 = 28422
          L14_2 = L14_2(L15_2, L16_2)
          L15_2 = 0.0
          L16_2 = 0.0
          L17_2 = 0.0
          L18_2 = 0.0
          L19_2 = 0.0
          L20_2 = 0.0
          L21_2 = false
          L22_2 = false
          L23_2 = false
          L24_2 = false
          L25_2 = 2
          L26_2 = true
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
        end
        L11_2 = SetEntityCoordsNoOffset
        L12_2 = L2_2
        L13_2 = L4_2.coords
        L13_2 = L13_2.x
        L14_2 = L4_2.coords
        L14_2 = L14_2.y
        L15_2 = L4_2.coords
        L15_2 = L15_2.z
        L11_2(L12_2, L13_2, L14_2, L15_2)
        L11_2 = SetEntityHeading
        L12_2 = L2_2
        L13_2 = L4_2.heading
        L11_2(L12_2, L13_2)
        L11_2 = TaskPlayAnimAdvanced
        L12_2 = L2_2
        L13_2 = L10_2
        L14_2 = "base"
        L15_2 = L4_2.coords
        L15_2 = L15_2.x
        L16_2 = L4_2.coords
        L16_2 = L16_2.y
        L17_2 = L4_2.coords
        L17_2 = L17_2.z
        L18_2 = 0.0
        L19_2 = 0.0
        L20_2 = L4_2.heading
        L21_2 = 8.0
        L22_2 = 8.0
        L23_2 = -1
        L24_2 = 1
        L25_2 = 0
        L26_2 = 0
        L27_2 = 0
        L28_2 = 0
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
        L11_2 = SendNUIMessage
        L12_2 = {}
        L12_2.message = "gymshow"
        L13_2 = Language
        L14_2 = Config
        L14_2 = L14_2.Language
        L13_2 = L13_2[L14_2]
        L13_2 = L13_2.benchpress
        L12_2.gymlabeltext = L13_2
        L11_2(L12_2)
        L11_2 = FreezeEntityPosition
        L12_2 = L2_2
        L13_2 = true
        L11_2(L12_2, L13_2)
      else
        L8_2 = L4_2.exercisetype
        if "squat" == L8_2 then
          L8_2 = GetEntityModel
          L9_2 = L2_2
          L8_2 = L8_2(L9_2)
          L9_2 = CheckDumbell
          L9_2 = L9_2()
          L10_2 = L9_2
          L11_2 = "custom@rtxanimssquatstart"
          while true do
            L12_2 = HasAnimDictLoaded
            L13_2 = L11_2
            L12_2 = L12_2(L13_2)
            if L12_2 then
              break
            end
            L12_2 = RequestAnimDict
            L13_2 = L11_2
            L12_2(L13_2)
            L12_2 = Citizen
            L12_2 = L12_2.Wait
            L13_2 = 5
            L12_2(L13_2)
          end
          L12_2 = DoesEntityExist
          L13_2 = L8_1
          L12_2 = L12_2(L13_2)
          if L12_2 then
          else
            L12_2 = RequestModel
            L13_2 = L10_2
            L12_2(L13_2)
            while true do
              L12_2 = HasModelLoaded
              L13_2 = L10_2
              L12_2 = L12_2(L13_2)
              if L12_2 then
                break
              end
              L12_2 = RequestModel
              L13_2 = L10_2
              L12_2(L13_2)
              L12_2 = Citizen
              L12_2 = L12_2.Wait
              L13_2 = 5
              L12_2(L13_2)
            end
            L12_2 = CreateObjectNoOffset
            L13_2 = L10_2
            L14_2 = L3_2.x
            L15_2 = L3_2.y
            L16_2 = L3_2.z
            L17_2 = true
            L18_2 = true
            L19_2 = true
            L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
            L8_1 = L12_2
            L12_2 = AttachEntityToEntity
            L13_2 = L8_1
            L14_2 = L2_2
            L15_2 = GetPedBoneIndex
            L16_2 = L2_2
            L17_2 = 28422
            L15_2 = L15_2(L16_2, L17_2)
            L16_2 = 0.034
            L17_2 = 0.483
            L18_2 = -0.049
            L19_2 = -7.55
            L20_2 = -0.6
            L21_2 = -90.65
            L22_2 = false
            L23_2 = false
            L24_2 = false
            L25_2 = false
            L26_2 = 2
            L27_2 = true
            L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
          end
          L12_2 = FreezeEntityPosition
          L13_2 = L2_2
          L14_2 = true
          L12_2(L13_2, L14_2)
          L12_2 = SetEntityCoordsNoOffset
          L13_2 = L2_2
          L14_2 = L4_2.coords
          L14_2 = L14_2.x
          L15_2 = L4_2.coords
          L15_2 = L15_2.y
          L16_2 = L4_2.coords
          L16_2 = L16_2.z
          L12_2(L13_2, L14_2, L15_2, L16_2)
          L12_2 = SetEntityHeading
          L13_2 = L2_2
          L14_2 = L4_2.heading
          L12_2(L13_2, L14_2)
          L12_2 = TaskPlayAnimAdvanced
          L13_2 = L2_2
          L14_2 = L11_2
          L15_2 = "rtxsquat_clip"
          L16_2 = L4_2.coords
          L16_2 = L16_2.x
          L17_2 = L4_2.coords
          L17_2 = L17_2.y
          L18_2 = L4_2.coords
          L18_2 = L18_2.z
          L19_2 = 0.0
          L20_2 = 0.0
          L21_2 = L4_2.heading
          L22_2 = 8.0
          L23_2 = 8.0
          L24_2 = -1
          L25_2 = 1
          L26_2 = 0
          L27_2 = 0
          L28_2 = 0
          L29_2 = 0
          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
          L12_2 = SendNUIMessage
          L13_2 = {}
          L13_2.message = "gymshow"
          L14_2 = Language
          L15_2 = Config
          L15_2 = L15_2.Language
          L14_2 = L14_2[L15_2]
          L14_2 = L14_2.squat
          L13_2.gymlabeltext = L14_2
          L12_2(L13_2)
          L12_2 = FreezeEntityPosition
          L13_2 = L2_2
          L14_2 = true
          L12_2(L13_2, L14_2)
        else
          L8_2 = L4_2.exercisetype
          if "chinups" == L8_2 then
            L8_2 = "amb@prop_human_muscle_chin_ups@male@idle_a"
            while true do
              L9_2 = HasAnimDictLoaded
              L10_2 = L8_2
              L9_2 = L9_2(L10_2)
              if L9_2 then
                break
              end
              L9_2 = RequestAnimDict
              L10_2 = L8_2
              L9_2(L10_2)
              L9_2 = Citizen
              L9_2 = L9_2.Wait
              L10_2 = 5
              L9_2(L10_2)
            end
            L9_2 = TaskPlayAnimAdvanced
            L10_2 = L2_2
            L11_2 = L8_2
            L12_2 = "idle_a"
            L13_2 = L4_2.coords
            L13_2 = L13_2.x
            L14_2 = L4_2.coords
            L14_2 = L14_2.y
            L15_2 = L4_2.coords
            L15_2 = L15_2.z
            L16_2 = 0.0
            L17_2 = 0.0
            L18_2 = L4_2.heading
            L19_2 = 8.0
            L20_2 = 8.0
            L21_2 = -1
            L22_2 = 1
            L23_2 = 0
            L24_2 = 0
            L25_2 = 0
            L26_2 = 0
            L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
            L9_2 = SendNUIMessage
            L10_2 = {}
            L10_2.message = "gymshow"
            L11_2 = Language
            L12_2 = Config
            L12_2 = L12_2.Language
            L11_2 = L11_2[L12_2]
            L11_2 = L11_2.chinups
            L10_2.gymlabeltext = L11_2
            L9_2(L10_2)
            L9_2 = FreezeEntityPosition
            L10_2 = L2_2
            L11_2 = true
            L9_2(L10_2, L11_2)
          else
            L8_2 = L4_2.exercisetype
            if "barbell1" == L8_2 then
              L8_2 = GetHashKey
              L9_2 = "prop_curl_bar_01"
              L8_2 = L8_2(L9_2)
              L9_2 = "amb@world_human_muscle_free_weights@male@barbell@idle_a"
              while true do
                L10_2 = HasAnimDictLoaded
                L11_2 = L9_2
                L10_2 = L10_2(L11_2)
                if L10_2 then
                  break
                end
                L10_2 = RequestAnimDict
                L11_2 = L9_2
                L10_2(L11_2)
                L10_2 = Citizen
                L10_2 = L10_2.Wait
                L11_2 = 5
                L10_2(L11_2)
              end
              L10_2 = DoesEntityExist
              L11_2 = L8_1
              L10_2 = L10_2(L11_2)
              if L10_2 then
              else
                L10_2 = RequestModel
                L11_2 = L8_2
                L10_2(L11_2)
                while true do
                  L10_2 = HasModelLoaded
                  L11_2 = L8_2
                  L10_2 = L10_2(L11_2)
                  if L10_2 then
                    break
                  end
                  L10_2 = RequestModel
                  L11_2 = L8_2
                  L10_2(L11_2)
                  L10_2 = Citizen
                  L10_2 = L10_2.Wait
                  L11_2 = 5
                  L10_2(L11_2)
                end
                L10_2 = CreateObjectNoOffset
                L11_2 = L8_2
                L12_2 = L3_2.x
                L13_2 = L3_2.y
                L14_2 = L3_2.z
                L15_2 = true
                L16_2 = true
                L17_2 = true
                L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
                L8_1 = L10_2
                L10_2 = AttachEntityToEntity
                L11_2 = L8_1
                L12_2 = L2_2
                L13_2 = GetPedBoneIndex
                L14_2 = L2_2
                L15_2 = 28422
                L13_2 = L13_2(L14_2, L15_2)
                L14_2 = 0.0
                L15_2 = 0.0
                L16_2 = 0.0
                L17_2 = 0.0
                L18_2 = 0.0
                L19_2 = 0.0
                L20_2 = false
                L21_2 = false
                L22_2 = false
                L23_2 = false
                L24_2 = 2
                L25_2 = true
                L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
              end
              L10_2 = FreezeEntityPosition
              L11_2 = L2_2
              L12_2 = true
              L10_2(L11_2, L12_2)
              L10_2 = SetEntityCoordsNoOffset
              L11_2 = L2_2
              L12_2 = L4_2.coords
              L12_2 = L12_2.x
              L13_2 = L4_2.coords
              L13_2 = L13_2.y
              L14_2 = L4_2.coords
              L14_2 = L14_2.z
              L10_2(L11_2, L12_2, L13_2, L14_2)
              L10_2 = SetEntityHeading
              L11_2 = L2_2
              L12_2 = L4_2.heading
              L10_2(L11_2, L12_2)
              L10_2 = TaskPlayAnimAdvanced
              L11_2 = L2_2
              L12_2 = L9_2
              L13_2 = "idle_a"
              L14_2 = L4_2.coords
              L14_2 = L14_2.x
              L15_2 = L4_2.coords
              L15_2 = L15_2.y
              L16_2 = L4_2.coords
              L16_2 = L16_2.z
              L17_2 = 0.0
              L18_2 = 0.0
              L19_2 = L4_2.heading
              L20_2 = 8.0
              L21_2 = 8.0
              L22_2 = -1
              L23_2 = 1
              L24_2 = 0
              L25_2 = 0
              L26_2 = 0
              L27_2 = 0
              L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
              L10_2 = SendNUIMessage
              L11_2 = {}
              L11_2.message = "gymshow"
              L12_2 = Language
              L13_2 = Config
              L13_2 = L13_2.Language
              L12_2 = L12_2[L13_2]
              L12_2 = L12_2.curl
              L11_2.gymlabeltext = L12_2
              L10_2(L11_2)
              L10_2 = FreezeEntityPosition
              L11_2 = L2_2
              L12_2 = true
              L10_2(L11_2, L12_2)
            else
              L8_2 = L4_2.exercisetype
              if "barbell2" == L8_2 then
                L8_2 = GetHashKey
                L9_2 = "prop_barbell_01"
                L8_2 = L8_2(L9_2)
                L9_2 = "amb@world_human_muscle_free_weights@male@barbell@idle_a"
                while true do
                  L10_2 = HasAnimDictLoaded
                  L11_2 = L9_2
                  L10_2 = L10_2(L11_2)
                  if L10_2 then
                    break
                  end
                  L10_2 = RequestAnimDict
                  L11_2 = L9_2
                  L10_2(L11_2)
                  L10_2 = Citizen
                  L10_2 = L10_2.Wait
                  L11_2 = 5
                  L10_2(L11_2)
                end
                L10_2 = DoesEntityExist
                L11_2 = L8_1
                L10_2 = L10_2(L11_2)
                if L10_2 then
                else
                  L10_2 = RequestModel
                  L11_2 = L8_2
                  L10_2(L11_2)
                  while true do
                    L10_2 = HasModelLoaded
                    L11_2 = L8_2
                    L10_2 = L10_2(L11_2)
                    if L10_2 then
                      break
                    end
                    L10_2 = RequestModel
                    L11_2 = L8_2
                    L10_2(L11_2)
                    L10_2 = Citizen
                    L10_2 = L10_2.Wait
                    L11_2 = 5
                    L10_2(L11_2)
                  end
                  L10_2 = CreateObjectNoOffset
                  L11_2 = L8_2
                  L12_2 = L3_2.x
                  L13_2 = L3_2.y
                  L14_2 = L3_2.z
                  L15_2 = true
                  L16_2 = true
                  L17_2 = true
                  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
                  L8_1 = L10_2
                  L10_2 = AttachEntityToEntity
                  L11_2 = L8_1
                  L12_2 = L2_2
                  L13_2 = GetPedBoneIndex
                  L14_2 = L2_2
                  L15_2 = 60309
                  L13_2 = L13_2(L14_2, L15_2)
                  L14_2 = 0.041
                  L15_2 = 0.032
                  L16_2 = 0.0
                  L17_2 = 64.9499997
                  L18_2 = -52.299
                  L19_2 = -40.5
                  L20_2 = false
                  L21_2 = false
                  L22_2 = false
                  L23_2 = false
                  L24_2 = 2
                  L25_2 = true
                  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
                end
                L10_2 = DoesEntityExist
                L11_2 = L9_1
                L10_2 = L10_2(L11_2)
                if L10_2 then
                else
                  L10_2 = RequestModel
                  L11_2 = L8_2
                  L10_2(L11_2)
                  while true do
                    L10_2 = HasModelLoaded
                    L11_2 = L8_2
                    L10_2 = L10_2(L11_2)
                    if L10_2 then
                      break
                    end
                    L10_2 = RequestModel
                    L11_2 = L8_2
                    L10_2(L11_2)
                    L10_2 = Citizen
                    L10_2 = L10_2.Wait
                    L11_2 = 5
                    L10_2(L11_2)
                  end
                  L10_2 = CreateObjectNoOffset
                  L11_2 = L8_2
                  L12_2 = L3_2.x
                  L13_2 = L3_2.y
                  L14_2 = L3_2.z
                  L15_2 = true
                  L16_2 = true
                  L17_2 = true
                  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
                  L9_1 = L10_2
                  L10_2 = AttachEntityToEntity
                  L11_2 = L9_1
                  L12_2 = L2_2
                  L13_2 = GetPedBoneIndex
                  L14_2 = L2_2
                  L15_2 = 28422
                  L13_2 = L13_2(L14_2, L15_2)
                  L14_2 = -0.261
                  L15_2 = -0.007
                  L16_2 = -0.047
                  L17_2 = -12.9
                  L18_2 = 134.75
                  L19_2 = -13.35
                  L20_2 = false
                  L21_2 = false
                  L22_2 = false
                  L23_2 = false
                  L24_2 = 2
                  L25_2 = true
                  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
                end
                L10_2 = FreezeEntityPosition
                L11_2 = L2_2
                L12_2 = true
                L10_2(L11_2, L12_2)
                L10_2 = SetEntityCoordsNoOffset
                L11_2 = L2_2
                L12_2 = L4_2.coords
                L12_2 = L12_2.x
                L13_2 = L4_2.coords
                L13_2 = L13_2.y
                L14_2 = L4_2.coords
                L14_2 = L14_2.z
                L10_2(L11_2, L12_2, L13_2, L14_2)
                L10_2 = SetEntityHeading
                L11_2 = L2_2
                L12_2 = L4_2.heading
                L10_2(L11_2, L12_2)
                L10_2 = TaskPlayAnimAdvanced
                L11_2 = L2_2
                L12_2 = L9_2
                L13_2 = "idle_a"
                L14_2 = L4_2.coords
                L14_2 = L14_2.x
                L15_2 = L4_2.coords
                L15_2 = L15_2.y
                L16_2 = L4_2.coords
                L16_2 = L16_2.z
                L17_2 = 0.0
                L18_2 = 0.0
                L19_2 = L4_2.heading
                L20_2 = 8.0
                L21_2 = 8.0
                L22_2 = -1
                L23_2 = 1
                L24_2 = 0
                L25_2 = 0
                L26_2 = 0
                L27_2 = 0
                L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
                L10_2 = SendNUIMessage
                L11_2 = {}
                L11_2.message = "gymshow"
                L12_2 = Language
                L13_2 = Config
                L13_2 = L13_2.Language
                L12_2 = L12_2[L13_2]
                L12_2 = L12_2.barbell
                L11_2.gymlabeltext = L12_2
                L10_2(L11_2)
                L10_2 = FreezeEntityPosition
                L11_2 = L2_2
                L12_2 = true
                L10_2(L11_2, L12_2)
              else
                L8_2 = L4_2.exercisetype
                if "box" == L8_2 then
                  L8_2 = FreezeEntityPosition
                  L9_2 = L2_2
                  L10_2 = true
                  L8_2(L9_2, L10_2)
                  L8_2 = FreezeEntityPosition
                  L9_2 = L2_2
                  L10_2 = true
                  L8_2(L9_2, L10_2)
                  L8_2 = SetEntityCoordsNoOffset
                  L9_2 = L2_2
                  L10_2 = L4_2.coords
                  L10_2 = L10_2.x
                  L11_2 = L4_2.coords
                  L11_2 = L11_2.y
                  L12_2 = L4_2.coords
                  L12_2 = L12_2.z
                  L8_2(L9_2, L10_2, L11_2, L12_2)
                  L8_2 = SetEntityHeading
                  L9_2 = L2_2
                  L10_2 = L4_2.heading
                  L8_2(L9_2, L10_2)
                  L8_2 = SetPedStealthMovement
                  L9_2 = L2_2
                  L10_2 = true
                  L8_2(L9_2, L10_2)
                  L8_2 = SendNUIMessage
                  L9_2 = {}
                  L9_2.message = "gymshow"
                  L10_2 = Language
                  L11_2 = Config
                  L11_2 = L11_2.Language
                  L10_2 = L10_2[L11_2]
                  L10_2 = L10_2.box
                  L9_2.gymlabeltext = L10_2
                  L8_2(L9_2)
                else
                  L8_2 = L4_2.exercisetype
                  if "run" == L8_2 then
                    L8_2 = FreezeEntityPosition
                    L9_2 = L2_2
                    L10_2 = true
                    L8_2(L9_2, L10_2)
                    L8_2 = FreezeEntityPosition
                    L9_2 = L2_2
                    L10_2 = true
                    L8_2(L9_2, L10_2)
                    L8_2 = SetEntityCoordsNoOffset
                    L9_2 = L2_2
                    L10_2 = L4_2.coords
                    L10_2 = L10_2.x
                    L11_2 = L4_2.coords
                    L11_2 = L11_2.y
                    L12_2 = L4_2.coords
                    L12_2 = L12_2.z
                    L8_2(L9_2, L10_2, L11_2, L12_2)
                    L8_2 = SetEntityHeading
                    L9_2 = L2_2
                    L10_2 = L4_2.heading
                    L8_2(L9_2, L10_2)
                    L8_2 = SendNUIMessage
                    L9_2 = {}
                    L9_2.message = "gymshow"
                    L10_2 = Language
                    L11_2 = Config
                    L11_2 = L11_2.Language
                    L10_2 = L10_2[L11_2]
                    L10_2 = L10_2.treadmill
                    L9_2.gymlabeltext = L10_2
                    L8_2(L9_2)
                  end
                end
              end
            end
          end
        end
      end
    else
      L8_2 = TriggerServerEvent
      L9_2 = "outlaw_gym:GYMComplete"
      L10_2 = A0_2
      L11_2 = A1_2
      L8_2(L9_2, L10_2, L11_2)
    end
  end
end
L30_1(L31_1, L32_1)
L30_1 = RegisterNetEvent
L31_1 = "outlaw_gym:UseGymTypes"
L30_1(L31_1)
L30_1 = AddEventHandler
L31_1 = "outlaw_gym:UseGymTypes"
function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L1_2 = ActionPossible
  L1_2 = L1_2()
  if true == L1_2 then
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = GetEntityCoords
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = GetEntityRotation
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L4_2 = SetBlockingOfNonTemporaryEvents
    L5_2 = L1_2
    L6_2 = true
    L4_2(L5_2, L6_2)
    usinggym2 = true
    L7_1 = A0_2
    disablekeyboard2 = true
    L4_2 = false
    L5_1 = L4_2
    L4_2 = FreezeEntityPosition
    L5_2 = L1_2
    L6_2 = true
    L4_2(L5_2, L6_2)
    if "pushups" == A0_2 then
      L4_2 = "amb@world_human_push_ups@male@idle_a"
      while true do
        L5_2 = HasAnimDictLoaded
        L6_2 = L4_2
        L5_2 = L5_2(L6_2)
        if L5_2 then
          break
        end
        L5_2 = RequestAnimDict
        L6_2 = L4_2
        L5_2(L6_2)
        L5_2 = Citizen
        L5_2 = L5_2.Wait
        L6_2 = 5
        L5_2(L6_2)
      end
      L5_2 = TaskPlayAnimAdvanced
      L6_2 = L1_2
      L7_2 = L4_2
      L8_2 = "idle_a"
      L9_2 = L2_2.x
      L10_2 = L2_2.y
      L11_2 = L2_2.z
      L12_2 = L3_2.x
      L13_2 = L3_2.y
      L14_2 = L3_2.z
      L15_2 = 8.0
      L16_2 = 8.0
      L17_2 = -1
      L18_2 = 1
      L19_2 = 0
      L20_2 = 0
      L21_2 = 0
      L22_2 = 0
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      L5_2 = SendNUIMessage
      L6_2 = {}
      L6_2.message = "gymshow"
      L7_2 = Language
      L8_2 = Config
      L8_2 = L8_2.Language
      L7_2 = L7_2[L8_2]
      L7_2 = L7_2.pushups
      L6_2.gymlabeltext = L7_2
      L5_2(L6_2)
      L5_2 = FreezeEntityPosition
      L6_2 = L1_2
      L7_2 = true
      L5_2(L6_2, L7_2)
    elseif "situps" == A0_2 then
      L4_2 = "amb@world_human_sit_ups@male@idle_a"
      while true do
        L5_2 = HasAnimDictLoaded
        L6_2 = L4_2
        L5_2 = L5_2(L6_2)
        if L5_2 then
          break
        end
        L5_2 = RequestAnimDict
        L6_2 = L4_2
        L5_2(L6_2)
        L5_2 = Citizen
        L5_2 = L5_2.Wait
        L6_2 = 5
        L5_2(L6_2)
      end
      L5_2 = TaskPlayAnimAdvanced
      L6_2 = L1_2
      L7_2 = L4_2
      L8_2 = "idle_b"
      L9_2 = L2_2.x
      L10_2 = L2_2.y
      L11_2 = L2_2.z
      L12_2 = L3_2.x
      L13_2 = L3_2.y
      L14_2 = L3_2.z
      L15_2 = 8.0
      L16_2 = 8.0
      L17_2 = -1
      L18_2 = 1
      L19_2 = 0
      L20_2 = 0
      L21_2 = 0
      L22_2 = 0
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      L5_2 = SendNUIMessage
      L6_2 = {}
      L6_2.message = "gymshow"
      L7_2 = Language
      L8_2 = Config
      L8_2 = L8_2.Language
      L7_2 = L7_2[L8_2]
      L7_2 = L7_2.situps
      L6_2.gymlabeltext = L7_2
      L5_2(L6_2)
      L5_2 = FreezeEntityPosition
      L6_2 = L1_2
      L7_2 = true
      L5_2(L6_2, L7_2)
    elseif "yoga" == A0_2 then
      L4_2 = "missfam5_yoga"
      while true do
        L5_2 = HasAnimDictLoaded
        L6_2 = L4_2
        L5_2 = L5_2(L6_2)
        if L5_2 then
          break
        end
        L5_2 = RequestAnimDict
        L6_2 = L4_2
        L5_2(L6_2)
        L5_2 = Citizen
        L5_2 = L5_2.Wait
        L6_2 = 5
        L5_2(L6_2)
      end
      L5_2 = TaskPlayAnimAdvanced
      L6_2 = L1_2
      L7_2 = L4_2
      L8_2 = "start_pose"
      L9_2 = L2_2.x
      L10_2 = L2_2.y
      L11_2 = L2_2.z
      L12_2 = L3_2.x
      L13_2 = L3_2.y
      L14_2 = L3_2.z
      L15_2 = 8.0
      L16_2 = 8.0
      L17_2 = -1
      L18_2 = 1
      L19_2 = 0
      L20_2 = 0
      L21_2 = 0
      L22_2 = 0
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      L5_2 = SendNUIMessage
      L6_2 = {}
      L6_2.message = "gymshow"
      L7_2 = Language
      L8_2 = Config
      L8_2 = L8_2.Language
      L7_2 = L7_2[L8_2]
      L7_2 = L7_2.yoga
      L6_2.gymlabeltext = L7_2
      L5_2(L6_2)
      L5_2 = FreezeEntityPosition
      L6_2 = L1_2
      L7_2 = true
      L5_2(L6_2, L7_2)
    end
  end
end
L30_1(L31_1, L32_1)
L30_1 = RegisterNetEvent
L31_1 = "outlaw_gym:Notify"
L30_1(L31_1)
L30_1 = AddEventHandler
L31_1 = "outlaw_gym:Notify"
function L32_1(A0_2)
  local L1_2, L2_2
  L1_2 = Notify
  L2_2 = A0_2
  L1_2(L2_2)
end
L30_1(L31_1, L32_1)
L30_1 = RegisterNetEvent
L31_1 = "outlaw_gym:OpenGymPayMenuClient"
L30_1(L31_1)
L30_1 = AddEventHandler
L31_1 = "outlaw_gym:OpenGymPayMenuClient"
function L32_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L13_1
  if false == L2_2 then
    L2_2 = true
    L13_1 = L2_2
    L11_1 = A0_2
    L2_2 = Config
    L2_2 = L2_2.Gyms
    L2_2 = L2_2[A0_2]
    L3_2 = SetNuiFocus
    L4_2 = true
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.message = "gymentryshow"
    L5_2 = L2_2.gymname
    L4_2.gymentrylabel = L5_2
    L5_2 = L2_2.gymtime
    L4_2.gymentryonetimeduration = L5_2
    L5_2 = L2_2.gympassdays
    L4_2.gymentrypasstimeduration = L5_2
    L4_2.gymentryonetimeprice = A1_2
    L5_2 = round
    L6_2 = Config
    L6_2 = L6_2.GymPassMultipler
    L6_2 = A1_2 * L6_2
    L7_2 = 0
    L5_2 = L5_2(L6_2, L7_2)
    L4_2.gymentrypasstimeprice = L5_2
    L3_2(L4_2)
  end
end
L30_1(L31_1, L32_1)
L30_1 = RegisterNetEvent
L31_1 = "outlaw_gym:SynchronizeOwnedGym"
L30_1(L31_1)
L30_1 = AddEventHandler
L31_1 = "outlaw_gym:SynchronizeOwnedGym"
function L32_1(A0_2, A1_2)
  local L2_2
  L2_2 = L14_1
  L2_2[A0_2] = A1_2
end
L30_1(L31_1, L32_1)
L30_1 = RegisterNetEvent
L31_1 = "outlaw_gym:SynchronizeYourOwnedGym"
L30_1(L31_1)
L30_1 = AddEventHandler
L31_1 = "outlaw_gym:SynchronizeYourOwnedGym"
function L32_1(A0_2, A1_2)
  local L2_2
  if false == A1_2 then
    L2_2 = L15_1
    L2_2[A0_2] = nil
  else
    L2_2 = L15_1
    L2_2[A0_2] = A1_2
  end
end
L30_1(L31_1, L32_1)
L30_1 = RegisterNetEvent
L31_1 = "outlaw_gym:OpenBuyGymMenuClient"
L30_1(L31_1)
L30_1 = AddEventHandler
L31_1 = "outlaw_gym:OpenBuyGymMenuClient"
function L32_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L13_1
  if false == L2_2 then
    L2_2 = true
    L13_1 = L2_2
    L16_1 = A0_2
    L2_2 = Config
    L2_2 = L2_2.Gyms
    L2_2 = L2_2[A0_2]
    L3_2 = SetNuiFocus
    L4_2 = true
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.message = "gymbuyshow"
    L5_2 = L2_2.gymname
    L4_2.gymbuylabel = L5_2
    L4_2.gymbuyprice = A1_2
    L3_2(L4_2)
  end
end
L30_1(L31_1, L32_1)
L30_1 = RegisterNetEvent
L31_1 = "outlaw_gym:GymBuyed"
L30_1(L31_1)
L30_1 = AddEventHandler
L31_1 = "outlaw_gym:GymBuyed"
function L32_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L16_1
  if L1_2 == A0_2 then
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.message = "hidegymbuy"
    L1_2(L2_2)
    L1_2 = false
    L13_1 = L1_2
    L1_2 = nil
    L16_1 = L1_2
    L1_2 = SetNuiFocus
    L2_2 = false
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L30_1(L31_1, L32_1)
L30_1 = RegisterNetEvent
L31_1 = "outlaw_gym:OpenGymMenu"
L30_1(L31_1)
L30_1 = AddEventHandler
L31_1 = "outlaw_gym:OpenGymMenu"
function L32_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L5_2 = L13_1
  if false == L5_2 then
    L5_2 = true
    L13_1 = L5_2
    L17_1 = A0_2
    L5_2 = Config
    L5_2 = L5_2.Gyms
    L5_2 = L5_2[A0_2]
    L6_2 = SetNuiFocus
    L7_2 = true
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = SendNUIMessage
    L7_2 = {}
    L7_2.message = "gymmanagmentshow"
    L7_2.gympriceoowneddata = A3_2
    L8_2 = Config
    L8_2 = L8_2.GymMaxPrice
    L7_2.gympricemaxdata = L8_2
    L7_2.gymowneddataclosed = A2_2
    L7_2.gymownedbalancedata = A1_2
    L6_2(L7_2)
    L6_2 = ipairs
    L7_2 = A4_2
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = SendNUIMessage
      L13_2 = {}
      L13_2.message = "updatevisitors"
      L14_2 = L11_2.earningstime
      L13_2.visitordata = L14_2
      L14_2 = L11_2.earningsvalue
      L13_2.visitordata2 = L14_2
      L12_2(L13_2)
    end
    L6_2 = SendNUIMessage
    L7_2 = {}
    L7_2.message = "updatevisitors2"
    L6_2(L7_2)
  end
end
L30_1(L31_1, L32_1)
L30_1 = RegisterNetEvent
L31_1 = "outlaw_gym:GymMenuUpdate"
L30_1(L31_1)
L30_1 = AddEventHandler
L31_1 = "outlaw_gym:GymMenuUpdate"
function L32_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = L13_1
  if true == L4_2 then
    L4_2 = L17_1
    if L4_2 == A0_2 then
      L4_2 = SendNUIMessage
      L5_2 = {}
      L5_2.message = "gymmanagmentupdate"
      L5_2.gympriceoowneddata = A3_2
      L5_2.gymowneddataclosed = A2_2
      L5_2.gymownedbalancedata = A1_2
      L4_2(L5_2)
    end
  end
end
L30_1(L31_1, L32_1)
L30_1 = Config
L30_1 = L30_1.DifferentStatsSystem
if false == L30_1 then
  L30_1 = RegisterNetEvent
  L31_1 = "outlaw_gym:UpdateStats"
  L30_1(L31_1)
  L30_1 = AddEventHandler
  L31_1 = "outlaw_gym:UpdateStats"
  function L32_1(A0_2, A1_2)
    local L2_2
    L2_2 = playerneeds
    L2_2[A0_2] = A1_2
  end
  L30_1(L31_1, L32_1)
  L30_1 = RegisterNetEvent
  L31_1 = "outlaw_gym:SynchronizeStats"
  L30_1(L31_1)
  L30_1 = AddEventHandler
  L31_1 = "outlaw_gym:SynchronizeStats"
  function L32_1(A0_2)
    local L1_2
    playerneeds = A0_2
  end
  L30_1(L31_1, L32_1)
  L30_1 = Config
  L30_1 = L30_1.ReducingStatsWhenNotExercising
  if true == L30_1 then
    L30_1 = RegisterNetEvent
    L31_1 = "outlaw_gym:ResetTimer"
    L30_1(L31_1)
    L30_1 = AddEventHandler
    L31_1 = "outlaw_gym:ResetTimer"
    function L32_1(A0_2)
      local L1_2, L2_2, L3_2
      if "strenght" == A0_2 then
        L1_2 = latestexercises
        L2_2 = GetGameTimer
        L2_2 = L2_2()
        L3_2 = Config
        L3_2 = L3_2.ReduceStatsTime
        L3_2 = L3_2.strenght
        L3_2 = L3_2.decreasetime
        L3_2 = L3_2 * 60000
        L2_2 = L2_2 + L3_2
        L1_2.strenght = L2_2
      elseif "condition" == A0_2 then
        L1_2 = latestexercises
        L2_2 = GetGameTimer
        L2_2 = L2_2()
        L3_2 = Config
        L3_2 = L3_2.ReduceStatsTime
        L3_2 = L3_2.condition
        L3_2 = L3_2.decreasetime
        L3_2 = L3_2 * 60000
        L2_2 = L2_2 + L3_2
        L1_2.condition = L2_2
      elseif "swimming" == A0_2 then
        L1_2 = latestexercises
        L2_2 = GetGameTimer
        L2_2 = L2_2()
        L3_2 = Config
        L3_2 = L3_2.ReduceStatsTime
        L3_2 = L3_2.water
        L3_2 = L3_2.decreasetime
        L3_2 = L3_2 * 60000
        L2_2 = L2_2 + L3_2
        L1_2.water = L2_2
      end
    end
    L30_1(L31_1, L32_1)
  end
end
L30_1 = false
L31_1 = RegisterNetEvent
L32_1 = "outlaw_gym:SupplementAnim"
L31_1(L32_1)
L31_1 = AddEventHandler
L32_1 = "outlaw_gym:SupplementAnim"
function L33_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L1_2 = L30_1
  if false == L1_2 then
    if "protein" == A0_2 then
      L1_2 = true
      L30_1 = L1_2
      L1_2 = PlayerPedId
      L1_2 = L1_2()
      L2_2 = GetEntityCoords
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L3_2 = GetHashKey
      L4_2 = "prop_ld_flow_bottle"
      L3_2 = L3_2(L4_2)
      L4_2 = RequestModel
      L5_2 = L3_2
      L4_2(L5_2)
      while true do
        L4_2 = HasModelLoaded
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        if L4_2 then
          break
        end
        L4_2 = RequestModel
        L5_2 = L3_2
        L4_2(L5_2)
        L4_2 = Citizen
        L4_2 = L4_2.Wait
        L5_2 = 5
        L4_2(L5_2)
      end
      L4_2 = CreateObject
      L5_2 = L3_2
      L6_2 = L2_2.x
      L7_2 = L2_2.y
      L8_2 = L2_2.z
      L8_2 = L8_2 + 0.2
      L9_2 = true
      L10_2 = true
      L11_2 = true
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L5_2 = GetPedBoneIndex
      L6_2 = L1_2
      L7_2 = 18905
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = AttachEntityToEntity
      L7_2 = L4_2
      L8_2 = L1_2
      L9_2 = L5_2
      L10_2 = 0.12
      L11_2 = 0.008
      L12_2 = 0.03
      L13_2 = 240.0
      L14_2 = -60.0
      L15_2 = 0.0
      L16_2 = true
      L17_2 = true
      L18_2 = false
      L19_2 = true
      L20_2 = 1
      L21_2 = true
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L6_2 = "mp_player_intdrink"
      while true do
        L7_2 = HasAnimDictLoaded
        L8_2 = L6_2
        L7_2 = L7_2(L8_2)
        if L7_2 then
          break
        end
        L7_2 = RequestAnimDict
        L8_2 = L6_2
        L7_2(L8_2)
        L7_2 = Citizen
        L7_2 = L7_2.Wait
        L8_2 = 5
        L7_2(L8_2)
      end
      L7_2 = TaskPlayAnim
      L8_2 = L1_2
      L9_2 = L6_2
      L10_2 = "loop_bottle"
      L11_2 = 8.0
      L12_2 = -8.0
      L13_2 = -1
      L14_2 = 49
      L15_2 = 0
      L16_2 = true
      L17_2 = true
      L18_2 = true
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L7_2 = Citizen
      L7_2 = L7_2.Wait
      L8_2 = 2500
      L7_2(L8_2)
      L7_2 = false
      L30_1 = L7_2
      L7_2 = ClearPedTasks
      L8_2 = L1_2
      L7_2(L8_2)
      L7_2 = DeleteObject
      L8_2 = L4_2
      L7_2(L8_2)
    elseif "creatine" == A0_2 then
      L1_2 = true
      L30_1 = L1_2
      L1_2 = PlayerPedId
      L1_2 = L1_2()
      L2_2 = GetEntityCoords
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L3_2 = GetHashKey
      L4_2 = "prop_cs_pills"
      L3_2 = L3_2(L4_2)
      L4_2 = RequestModel
      L5_2 = L3_2
      L4_2(L5_2)
      while true do
        L4_2 = HasModelLoaded
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        if L4_2 then
          break
        end
        L4_2 = RequestModel
        L5_2 = L3_2
        L4_2(L5_2)
        L4_2 = Citizen
        L4_2 = L4_2.Wait
        L5_2 = 5
        L4_2(L5_2)
      end
      L4_2 = CreateObject
      L5_2 = L3_2
      L6_2 = L2_2.x
      L7_2 = L2_2.y
      L8_2 = L2_2.z
      L8_2 = L8_2 + 0.2
      L9_2 = true
      L10_2 = true
      L11_2 = true
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L5_2 = GetPedBoneIndex
      L6_2 = L1_2
      L7_2 = 60309
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = AttachEntityToEntity
      L7_2 = L4_2
      L8_2 = L1_2
      L9_2 = L5_2
      L10_2 = 0.0
      L11_2 = 0.0
      L12_2 = 0.0
      L13_2 = -78.9
      L14_2 = 0.0
      L15_2 = 80.2
      L16_2 = true
      L17_2 = true
      L18_2 = false
      L19_2 = true
      L20_2 = 1
      L21_2 = true
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L6_2 = "mp_player_inteat@burger"
      while true do
        L7_2 = HasAnimDictLoaded
        L8_2 = L6_2
        L7_2 = L7_2(L8_2)
        if L7_2 then
          break
        end
        L7_2 = RequestAnimDict
        L8_2 = L6_2
        L7_2(L8_2)
        L7_2 = Citizen
        L7_2 = L7_2.Wait
        L8_2 = 5
        L7_2(L8_2)
      end
      L7_2 = TaskPlayAnim
      L8_2 = L1_2
      L9_2 = L6_2
      L10_2 = "mp_player_int_eat_burger"
      L11_2 = 8.0
      L12_2 = -8.0
      L13_2 = -1
      L14_2 = 49
      L15_2 = 0
      L16_2 = true
      L17_2 = true
      L18_2 = true
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L7_2 = Citizen
      L7_2 = L7_2.Wait
      L8_2 = 1000
      L7_2(L8_2)
      L7_2 = false
      L30_1 = L7_2
      L7_2 = ClearPedTasks
      L8_2 = L1_2
      L7_2(L8_2)
      L7_2 = DeleteObject
      L8_2 = L4_2
      L7_2(L8_2)
    elseif "preworkout" == A0_2 then
      L1_2 = true
      L30_1 = L1_2
      L1_2 = PlayerPedId
      L1_2 = L1_2()
      L2_2 = GetEntityCoords
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L3_2 = GetHashKey
      L4_2 = "prop_cs_pills"
      L3_2 = L3_2(L4_2)
      L4_2 = RequestModel
      L5_2 = L3_2
      L4_2(L5_2)
      while true do
        L4_2 = HasModelLoaded
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        if L4_2 then
          break
        end
        L4_2 = RequestModel
        L5_2 = L3_2
        L4_2(L5_2)
        L4_2 = Citizen
        L4_2 = L4_2.Wait
        L5_2 = 5
        L4_2(L5_2)
      end
      L4_2 = CreateObject
      L5_2 = L3_2
      L6_2 = L2_2.x
      L7_2 = L2_2.y
      L8_2 = L2_2.z
      L8_2 = L8_2 + 0.2
      L9_2 = true
      L10_2 = true
      L11_2 = true
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L5_2 = GetPedBoneIndex
      L6_2 = L1_2
      L7_2 = 60309
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = AttachEntityToEntity
      L7_2 = L4_2
      L8_2 = L1_2
      L9_2 = L5_2
      L10_2 = 0.0
      L11_2 = 0.0
      L12_2 = 0.0
      L13_2 = -78.9
      L14_2 = 0.0
      L15_2 = 80.2
      L16_2 = true
      L17_2 = true
      L18_2 = false
      L19_2 = true
      L20_2 = 1
      L21_2 = true
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L6_2 = "mp_player_inteat@burger"
      while true do
        L7_2 = HasAnimDictLoaded
        L8_2 = L6_2
        L7_2 = L7_2(L8_2)
        if L7_2 then
          break
        end
        L7_2 = RequestAnimDict
        L8_2 = L6_2
        L7_2(L8_2)
        L7_2 = Citizen
        L7_2 = L7_2.Wait
        L8_2 = 5
        L7_2(L8_2)
      end
      L7_2 = TaskPlayAnim
      L8_2 = L1_2
      L9_2 = L6_2
      L10_2 = "mp_player_int_eat_burger"
      L11_2 = 8.0
      L12_2 = -8.0
      L13_2 = -1
      L14_2 = 49
      L15_2 = 0
      L16_2 = true
      L17_2 = true
      L18_2 = true
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L7_2 = Citizen
      L7_2 = L7_2.Wait
      L8_2 = 1000
      L7_2(L8_2)
      L7_2 = false
      L30_1 = L7_2
      L7_2 = ClearPedTasks
      L8_2 = L1_2
      L7_2(L8_2)
      L7_2 = DeleteObject
      L8_2 = L4_2
      L7_2(L8_2)
    elseif "testosterone" == A0_2 then
      L1_2 = true
      L30_1 = L1_2
      L1_2 = PlayerPedId
      L1_2 = L1_2()
      L2_2 = GetEntityCoords
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L3_2 = GetHashKey
      L4_2 = "p_syringe_01_s"
      L3_2 = L3_2(L4_2)
      L4_2 = RequestModel
      L5_2 = L3_2
      L4_2(L5_2)
      while true do
        L4_2 = HasModelLoaded
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        if L4_2 then
          break
        end
        L4_2 = RequestModel
        L5_2 = L3_2
        L4_2(L5_2)
        L4_2 = Citizen
        L4_2 = L4_2.Wait
        L5_2 = 5
        L4_2(L5_2)
      end
      L4_2 = CreateObject
      L5_2 = L3_2
      L6_2 = L2_2.x
      L7_2 = L2_2.y
      L8_2 = L2_2.z
      L8_2 = L8_2 + 0.2
      L9_2 = true
      L10_2 = true
      L11_2 = true
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L5_2 = GetPedBoneIndex
      L6_2 = L1_2
      L7_2 = 18905
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = AttachEntityToEntity
      L7_2 = L4_2
      L8_2 = L1_2
      L9_2 = L5_2
      L10_2 = 0.14
      L11_2 = 0.03
      L12_2 = 0.02
      L13_2 = -50.0
      L14_2 = 130.0
      L15_2 = 0.0
      L15_2 = -L15_2
      L16_2 = true
      L17_2 = true
      L18_2 = false
      L19_2 = true
      L20_2 = 1
      L21_2 = true
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L6_2 = "mp_arresting"
      while true do
        L7_2 = HasAnimDictLoaded
        L8_2 = L6_2
        L7_2 = L7_2(L8_2)
        if L7_2 then
          break
        end
        L7_2 = RequestAnimDict
        L8_2 = L6_2
        L7_2(L8_2)
        L7_2 = Citizen
        L7_2 = L7_2.Wait
        L8_2 = 5
        L7_2(L8_2)
      end
      L7_2 = TaskPlayAnim
      L8_2 = L1_2
      L9_2 = L6_2
      L10_2 = "a_uncuff"
      L11_2 = 8.0
      L12_2 = -8.0
      L13_2 = -1
      L14_2 = 49
      L15_2 = 0
      L16_2 = true
      L17_2 = true
      L18_2 = true
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L7_2 = Citizen
      L7_2 = L7_2.Wait
      L8_2 = 5000
      L7_2(L8_2)
      L7_2 = false
      L30_1 = L7_2
      L7_2 = ClearPedTasks
      L8_2 = L1_2
      L7_2(L8_2)
      L7_2 = DeleteObject
      L8_2 = L4_2
      L7_2(L8_2)
    end
  end
end
L31_1(L32_1, L33_1)
L31_1 = Config
L31_1 = L31_1.Target
if L31_1 then
  L31_1 = RegisterNetEvent
  L32_1 = "outlaw_gym:UseExercise"
  L31_1(L32_1)
  L31_1 = AddEventHandler
  L32_1 = "outlaw_gym:UseExercise"
  function L33_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2
    L0_2 = ActionPossible
    L0_2 = L0_2()
    if true == L0_2 then
      L0_2 = L6_1.gymid
      if nil ~= L0_2 then
        L0_2 = L6_1.exerciseid
        if nil ~= L0_2 then
          L0_2 = TriggerServerEvent
          L1_2 = "outlaw_gym:UseGym"
          L2_2 = ""
          L3_2 = L6_1.gymid
          L4_2 = L6_1.exerciseid
          L0_2(L1_2, L2_2, L3_2, L4_2)
        end
      end
    end
  end
  L31_1(L32_1, L33_1)
  L31_1 = RegisterNetEvent
  L32_1 = "outlaw_gym:UseEntry"
  L31_1(L32_1)
  L31_1 = AddEventHandler
  L32_1 = "outlaw_gym:UseEntry"
  function L33_1()
    local L0_2, L1_2, L2_2
    L0_2 = L13_1
    if false == L0_2 then
      L0_2 = L10_1
      if nil ~= L0_2 then
        L0_2 = TriggerServerEvent
        L1_2 = "outlaw_gym:OpenGymPayMenu"
        L2_2 = L10_1
        L0_2(L1_2, L2_2)
      end
    end
  end
  L31_1(L32_1, L33_1)
  L31_1 = RegisterNetEvent
  L32_1 = "outlaw_gym:UseManagment"
  L31_1(L32_1)
  L31_1 = AddEventHandler
  L32_1 = "outlaw_gym:UseManagment"
  function L33_1()
    local L0_2, L1_2, L2_2
    L0_2 = L13_1
    if false == L0_2 then
      L0_2 = L12_1
      if nil ~= L0_2 then
        L1_2 = L12_1
        L0_2 = L14_1
        L0_2 = L0_2[L1_2]
        if nil ~= L0_2 then
          L1_2 = L12_1
          L0_2 = L14_1
          L0_2 = L0_2[L1_2]
          if false == L0_2 then
            L0_2 = TriggerServerEvent
            L1_2 = "outlaw_gym:OpenBuyGymMenu"
            L2_2 = L12_1
            L0_2(L1_2, L2_2)
          else
            L1_2 = L12_1
            L0_2 = L15_1
            L0_2 = L0_2[L1_2]
            if nil ~= L0_2 then
              L0_2 = TriggerServerEvent
              L1_2 = "outlaw_gym:GymOpenManagment"
              L2_2 = L12_1
              L0_2(L1_2, L2_2)
            end
          end
        end
      end
    end
  end
  L31_1(L32_1, L33_1)
  L31_1 = RegisterNetEvent
  L32_1 = "outlaw_gym:UseShowerTarget"
  L31_1(L32_1)
  L31_1 = AddEventHandler
  L32_1 = "outlaw_gym:UseShowerTarget"
  function L33_1()
    local L0_2, L1_2, L2_2
    L0_2 = ActionPossible
    L0_2 = L0_2()
    if true == L0_2 then
      L0_2 = L2_1
      if nil ~= L0_2 then
        L0_2 = TriggerServerEvent
        L1_2 = "outlaw_gym:UseShower"
        L2_2 = L2_1
        L0_2(L1_2, L2_2)
      end
    end
  end
  L31_1(L32_1, L33_1)
end
L31_1 = RegisterNUICallback
L32_1 = "payentry"
function L33_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L11_1
  if nil ~= L2_2 then
    L2_2 = A0_2.entrytype
    if nil ~= L2_2 then
      L2_2 = SendNUIMessage
      L3_2 = {}
      L3_2.message = "hidegymentry"
      L2_2(L3_2)
      L2_2 = TriggerServerEvent
      L3_2 = "outlaw_gym:GymBuyEntry"
      L4_2 = L11_1
      L5_2 = tostring
      L6_2 = A0_2.entrytype
      L5_2, L6_2 = L5_2(L6_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L2_2 = false
      L13_1 = L2_2
      L2_2 = nil
      L11_1 = L2_2
      L2_2 = SetNuiFocus
      L3_2 = false
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L31_1(L32_1, L33_1)
L31_1 = RegisterNUICallback
L32_1 = "buygym"
function L33_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L16_1
  if nil ~= L2_2 then
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.message = "hidegymbuy"
    L2_2(L3_2)
    L2_2 = TriggerServerEvent
    L3_2 = "outlaw_gym:GymBuy"
    L4_2 = L16_1
    L2_2(L3_2, L4_2)
    L2_2 = false
    L13_1 = L2_2
    L2_2 = nil
    L16_1 = L2_2
    L2_2 = SetNuiFocus
    L3_2 = false
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L31_1(L32_1, L33_1)
L31_1 = RegisterNUICallback
L32_1 = "changeentryprice"
function L33_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L17_1
  if nil ~= L2_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "outlaw_gym:ChangeEntryPrice"
    L4_2 = L17_1
    L5_2 = tonumber
    L6_2 = A0_2.entryprice
    L5_2, L6_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L31_1(L32_1, L33_1)
L31_1 = RegisterNUICallback
L32_1 = "managmentwithdraw"
function L33_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L17_1
  if nil ~= L2_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "outlaw_gym:ManagmentWithdraw"
    L4_2 = L17_1
    L2_2(L3_2, L4_2)
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L31_1(L32_1, L33_1)
L31_1 = RegisterNUICallback
L32_1 = "gymstatus"
function L33_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L17_1
  if nil ~= L2_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "outlaw_gym:CloseStatus"
    L4_2 = L17_1
    L5_2 = A0_2.statushandler
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L31_1(L32_1, L33_1)
L31_1 = RegisterNUICallback
L32_1 = "sellgym"
function L33_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L17_1
  if nil ~= L2_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "outlaw_gym:SellGym"
    L4_2 = L17_1
    L2_2(L3_2, L4_2)
    L2_2 = false
    L13_1 = L2_2
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.message = "hidegymmanagment"
    L2_2(L3_2)
    L2_2 = nil
    L17_1 = L2_2
    L2_2 = SetNuiFocus
    L3_2 = false
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L31_1(L32_1, L33_1)
L31_1 = RegisterNUICallback
L32_1 = "transfergym"
function L33_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L17_1
  if nil ~= L2_2 then
    L2_2 = GetClosestPlayer
    L2_2, L3_2 = L2_2()
    if -1 ~= L2_2 then
      L4_2 = Config
      L4_2 = L4_2.GymTransferMaxDistance
      if L3_2 < L4_2 then
        L4_2 = TriggerServerEvent
        L5_2 = "outlaw_gym:TransferGym"
        L6_2 = L17_1
        L7_2 = GetPlayerServerId
        L8_2 = L2_2
        L7_2, L8_2 = L7_2(L8_2)
        L4_2(L5_2, L6_2, L7_2, L8_2)
        L4_2 = false
        L13_1 = L4_2
        L4_2 = SendNUIMessage
        L5_2 = {}
        L5_2.message = "hidegymmanagment"
        L4_2(L5_2)
        L4_2 = nil
        L17_1 = L4_2
        L4_2 = SetNuiFocus
        L5_2 = false
        L6_2 = false
        L4_2(L5_2, L6_2)
    end
    else
      L4_2 = Notify
      L5_2 = Language
      L6_2 = Config
      L6_2 = L6_2.Language
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.noplayernearby
      L4_2(L5_2)
    end
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L31_1(L32_1, L33_1)
L31_1 = RegisterNUICallback
L32_1 = "quit"
function L33_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = L11_1
  if nil ~= L2_2 then
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.message = "hidegymentry"
    L2_2(L3_2)
    L2_2 = nil
    L11_1 = L2_2
  end
  L2_2 = L16_1
  if nil ~= L2_2 then
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.message = "hidegymbuy"
    L2_2(L3_2)
    L2_2 = nil
    L16_1 = L2_2
  end
  L2_2 = L17_1
  if nil ~= L2_2 then
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.message = "hidegymmanagment"
    L2_2(L3_2)
    L2_2 = nil
    L17_1 = L2_2
  end
  L2_2 = L19_1
  if true == L2_2 then
    L2_2 = Config
    L2_2 = L2_2.DisablePedInMyStats
    if false == L2_2 then
      L2_2 = ReplaceHudColourWithRgba
      L3_2 = 117
      L4_2 = 0
      L5_2 = 0
      L6_2 = 0
      L7_2 = 186
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
      L2_2 = DeletePedScreen
      L2_2()
    end
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.message = "hidestats"
    L2_2(L3_2)
    L2_2 = false
    L19_1 = L2_2
  end
  L2_2 = false
  L13_1 = L2_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L31_1(L32_1, L33_1)
L31_1 = Config
L31_1 = L31_1.Showers
if L31_1 then
  L31_1 = Citizen
  L31_1 = L31_1.CreateThread
  function L32_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
    while true do
      L0_2 = Citizen
      L0_2 = L0_2.Wait
      L1_2 = 0
      L0_2(L1_2)
      L0_2 = true
      L1_2 = PlayerPedId
      L1_2 = L1_2()
      L2_2 = GetEntityCoords
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L3_2 = false
      L4_2 = ipairs
      L5_2 = Config
      L5_2 = L5_2.Showers
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = L9_2.taken
        if false == L10_2 then
          L10_2 = vector3
          L11_2 = L9_2.coords
          L11_2 = L11_2.x
          L12_2 = L9_2.coords
          L12_2 = L12_2.y
          L13_2 = L9_2.coords
          L13_2 = L13_2.z
          L10_2 = L10_2(L11_2, L12_2, L13_2)
          L11_2 = L2_2 - L10_2
          L11_2 = #L11_2
          L12_2 = 200.0
          if L11_2 < L12_2 then
            L12_2 = DoesParticleFxLoopedExist
            L13_2 = L9_2.particlehandler
            L12_2 = L12_2(L13_2)
            if L12_2 then
              L12_2 = RemoveParticleFxInRange
              L13_2 = L9_2.coordsparticle
              L13_2 = L13_2.x
              L14_2 = L9_2.coordsparticle
              L14_2 = L14_2.y
              L15_2 = L9_2.coordsparticle
              L15_2 = L15_2.z
              L16_2 = 2.0
              L12_2(L13_2, L14_2, L15_2, L16_2)
              L9_2.particlehandler = nil
            end
          end
          L12_2 = false
          L13_2 = Config
          L13_2 = L13_2.Target
          if true == L13_2 then
            L13_2 = Config
            L13_2 = L13_2.GymShowerDistance
            L13_2 = L13_2 + 10.0
            if L11_2 < L13_2 then
              L12_2 = true
            end
          else
            L13_2 = Config
            L13_2 = L13_2.GymShowerDistance
            if L11_2 < L13_2 then
              L12_2 = true
            end
          end
          if L12_2 then
            L3_2 = true
            L2_1 = L8_2
            L13_2 = Config
            L13_2 = L13_2.Target
            if false == L13_2 then
              L0_2 = false
              L13_2 = L13_1
              if false == L13_2 then
                L13_2 = Config
                L13_2 = L13_2.Showers
                L14_2 = L2_1
                L13_2 = L13_2[L14_2]
                L14_2 = Config
                L14_2 = L14_2.GymInteractionSystem
                if 1 == L14_2 then
                  letSleep = false
                  L14_2 = SendNUIMessage
                  L15_2 = {}
                  L15_2.message = "infonotifyshow"
                  L16_2 = Language
                  L17_2 = Config
                  L17_2 = L17_2.Language
                  L16_2 = L16_2[L17_2]
                  L16_2 = L16_2.pressforshowerinteract
                  L15_2.infonotifytext = L16_2
                  L14_2(L15_2)
                else
                  L14_2 = Config
                  L14_2 = L14_2.GymInteractionSystem
                  if 2 == L14_2 then
                    letSleep = false
                    L14_2 = DrawText3D
                    L15_2 = L13_2.coords
                    L15_2 = L15_2.x
                    L16_2 = L13_2.coords
                    L16_2 = L16_2.y
                    L17_2 = L13_2.coords
                    L17_2 = L17_2.z
                    L18_2 = Language
                    L19_2 = Config
                    L19_2 = L19_2.Language
                    L18_2 = L18_2[L19_2]
                    L18_2 = L18_2.pressforshower
                    L14_2(L15_2, L16_2, L17_2, L18_2)
                  else
                    L14_2 = Config
                    L14_2 = L14_2.GymInteractionSystem
                    if 3 == L14_2 then
                      letSleep = false
                      L14_2 = ShowGtaClassicInteraction
                      L15_2 = Language
                      L16_2 = Config
                      L16_2 = L16_2.Language
                      L15_2 = L15_2[L16_2]
                      L15_2 = L15_2.pressforshowerinteractclassic
                      L14_2(L15_2)
                    end
                  end
                end
              else
                L13_2 = Config
                L13_2 = L13_2.GymInteractionSystem
                if 1 == L13_2 then
                  L13_2 = SendNUIMessage
                  L14_2 = {}
                  L14_2.message = "hidenotify"
                  L13_2(L14_2)
                end
              end
            end
          end
        else
          L10_2 = L9_2.coords
          L10_2 = L2_2 - L10_2
          L10_2 = #L10_2
          L11_2 = 200.0
          if L10_2 < L11_2 then
            L11_2 = DoesParticleFxLoopedExist
            L12_2 = L9_2.particlehandler
            L11_2 = L11_2(L12_2)
            if L11_2 then
            else
              L11_2 = "scr_mp_house"
              L12_2 = RequestNamedPtfxAsset
              L13_2 = L11_2
              L12_2(L13_2)
              while true do
                L12_2 = HasNamedPtfxAssetLoaded
                L13_2 = L11_2
                L12_2 = L12_2(L13_2)
                if L12_2 then
                  break
                end
                L12_2 = Citizen
                L12_2 = L12_2.Wait
                L13_2 = 5
                L12_2(L13_2)
                L12_2 = RequestNamedPtfxAsset
                L13_2 = L11_2
                L12_2(L13_2)
              end
              L12_2 = SetPtfxAssetNextCall
              L13_2 = L11_2
              L12_2(L13_2)
              L12_2 = StartParticleFxLoopedAtCoord
              L13_2 = "ent_amb_shower"
              L14_2 = L9_2.coordsparticle
              L14_2 = L14_2.x
              L15_2 = L9_2.coordsparticle
              L15_2 = L15_2.y
              L16_2 = L9_2.coordsparticle
              L16_2 = L16_2.z
              L17_2 = -50.0
              L18_2 = 0.0
              L19_2 = 0.0
              L20_2 = 2.0
              L21_2 = true
              L22_2 = false
              L23_2 = false
              L24_2 = 0
              L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
              L9_2.particlehandler = L12_2
            end
          end
        end
      end
      if false == L3_2 then
        L4_2 = L2_1
        if nil ~= L4_2 then
          L4_2 = nil
          L2_1 = L4_2
          L4_2 = Config
          L4_2 = L4_2.GymInteractionSystem
          if 1 == L4_2 then
            L4_2 = SendNUIMessage
            L5_2 = {}
            L5_2.message = "hidenotify"
            L4_2(L5_2)
          end
        end
      end
      if true == L0_2 then
        L4_2 = Citizen
        L4_2 = L4_2.Wait
        L5_2 = 500
        L4_2(L5_2)
      end
    end
  end
  L31_1(L32_1)
end
L31_1 = Citizen
L31_1 = L31_1.CreateThread
function L32_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = true
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = GetEntityCoords
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = false
    L4_2 = -1
    L5_2 = {}
    L5_2.gymid = nil
    L5_2.exerciseid = nil
    L6_2 = ipairs
    L7_2 = Config
    L7_2 = L7_2.Gyms
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = ipairs
      L13_2 = L11_2.exercises
      L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
      for L16_2, L17_2 in L12_2, L13_2, L14_2, L15_2 do
        L18_2 = vector3
        L19_2 = L17_2.coords
        L19_2 = L19_2.x
        L20_2 = L17_2.coords
        L20_2 = L20_2.y
        L21_2 = L17_2.coords
        L21_2 = L21_2.z
        L21_2 = L21_2 + 1.0
        L18_2 = L18_2(L19_2, L20_2, L21_2)
        L19_2 = L2_2 - L18_2
        L19_2 = #L19_2
        L20_2 = false
        L21_2 = Config
        L21_2 = L21_2.Target
        if true == L21_2 then
          L21_2 = Config
          L21_2 = L21_2.GymExerciseDistance
          L21_2 = L21_2 + 10.0
          if L19_2 < L21_2 then
            L20_2 = true
          end
        else
          L21_2 = Config
          L21_2 = L21_2.GymExerciseDistance
          if L19_2 < L21_2 then
            L20_2 = true
          end
        end
        if L20_2 and (-1 == L4_2 or L4_2 > L19_2) then
          L4_2 = L19_2
          L3_2 = true
          L21_2 = {}
          L21_2.gymid = L10_2
          L21_2.exerciseid = L16_2
          L5_2 = L21_2
        end
      end
    end
    if true == L3_2 then
      L6_2 = usinggym
      if false == L6_2 then
        L6_1 = L5_2
        L6_2 = Config
        L6_2 = L6_2.Target
        if false == L6_2 then
          L0_2 = false
          L6_2 = L13_1
          if false == L6_2 then
            L6_2 = Config
            L6_2 = L6_2.Gyms
            L7_2 = L6_1.gymid
            L6_2 = L6_2[L7_2]
            L6_2 = L6_2.exercises
            L7_2 = L6_1.exerciseid
            L6_2 = L6_2[L7_2]
            L7_2 = Config
            L7_2 = L7_2.GymInteractionSystem
            if 1 == L7_2 then
              letSleep = false
              L7_2 = SendNUIMessage
              L8_2 = {}
              L8_2.message = "infonotifyshow"
              L9_2 = Language
              L10_2 = Config
              L10_2 = L10_2.Language
              L9_2 = L9_2[L10_2]
              L9_2 = L9_2.pressforexerciseinteract
              L8_2.infonotifytext = L9_2
              L7_2(L8_2)
            else
              L7_2 = Config
              L7_2 = L7_2.GymInteractionSystem
              if 2 == L7_2 then
                letSleep = false
                L7_2 = DrawText3D
                L8_2 = L6_2.coords
                L8_2 = L8_2.x
                L9_2 = L6_2.coords
                L9_2 = L9_2.y
                L10_2 = L6_2.coords
                L10_2 = L10_2.z
                L11_2 = Language
                L12_2 = Config
                L12_2 = L12_2.Language
                L11_2 = L11_2[L12_2]
                L11_2 = L11_2.pressforexercise
                L7_2(L8_2, L9_2, L10_2, L11_2)
              else
                L7_2 = Config
                L7_2 = L7_2.GymInteractionSystem
                if 3 == L7_2 then
                  letSleep = false
                  L7_2 = ShowGtaClassicInteraction
                  L8_2 = Language
                  L9_2 = Config
                  L9_2 = L9_2.Language
                  L8_2 = L8_2[L9_2]
                  L8_2 = L8_2.pressforexerciseinteractclassic
                  L7_2(L8_2)
                end
              end
            end
          else
            L6_2 = Config
            L6_2 = L6_2.GymInteractionSystem
            if 1 == L6_2 then
              L6_2 = SendNUIMessage
              L7_2 = {}
              L7_2.message = "hidenotify"
              L6_2(L7_2)
            end
          end
        end
    end
    else
      L6_2 = L6_1.gymid
      if nil ~= L6_2 then
        L6_2 = {}
        L6_2.gymid = nil
        L6_2.exerciseid = nil
        L6_1 = L6_2
        L6_2 = Config
        L6_2 = L6_2.GymInteractionSystem
        if 1 == L6_2 then
          L6_2 = SendNUIMessage
          L7_2 = {}
          L7_2.message = "hidenotify"
          L6_2(L7_2)
        end
      end
    end
    if true == L0_2 then
      L6_2 = Citizen
      L6_2 = L6_2.Wait
      L7_2 = 500
      L6_2(L7_2)
    end
  end
end
L31_1(L32_1)
L31_1 = Citizen
L31_1 = L31_1.CreateThread
function L32_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetEntityCoords
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = true
    L3_2 = disablekeyboard
    if true == L3_2 then
      L2_2 = false
      L3_2 = DisableControlAction
      L4_2 = 0
      L5_2 = 1
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = DisableControlAction
      L4_2 = 0
      L5_2 = 2
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = DisableControlAction
      L4_2 = 0
      L5_2 = 106
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = DisableControlAction
      L4_2 = 0
      L5_2 = 30
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = DisableControlAction
      L4_2 = 0
      L5_2 = 31
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = DisableControlAction
      L4_2 = 0
      L5_2 = 36
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = DisableControlAction
      L4_2 = 0
      L5_2 = 21
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = DisableControlAction
      L4_2 = 0
      L5_2 = 73
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = DisableControlAction
      L4_2 = 0
      L5_2 = 63
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = DisableControlAction
      L4_2 = 0
      L5_2 = 64
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = DisableControlAction
      L4_2 = 0
      L5_2 = 71
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = DisableControlAction
      L4_2 = 0
      L5_2 = 72
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = DisableControlAction
      L4_2 = 0
      L5_2 = 75
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = DisablePlayerFiring
      L4_2 = PlayerId
      L4_2 = L4_2()
      L5_2 = true
      L3_2(L4_2, L5_2)
      L3_2 = DisableControlAction
      L4_2 = 0
      L5_2 = 24
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = DisableControlAction
      L4_2 = 0
      L5_2 = 25
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = DisableControlAction
      L4_2 = 1
      L5_2 = 37
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = DisableControlAction
      L4_2 = 0
      L5_2 = 47
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = DisableControlAction
      L4_2 = 0
      L5_2 = 58
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = DisableControlAction
      L4_2 = 0
      L5_2 = 140
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = DisableControlAction
      L4_2 = 0
      L5_2 = 141
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = DisableControlAction
      L4_2 = 0
      L5_2 = 142
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = DisableControlAction
      L4_2 = 0
      L5_2 = 143
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = DisableControlAction
      L4_2 = 0
      L5_2 = 263
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = DisableControlAction
      L4_2 = 0
      L5_2 = 264
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = DisableControlAction
      L4_2 = 0
      L5_2 = 257
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
    else
      L3_2 = disablekeyboard2
      if true == L3_2 then
        L3_2 = DisableControlAction
        L4_2 = 0
        L5_2 = 106
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = DisableControlAction
        L4_2 = 0
        L5_2 = 30
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = DisableControlAction
        L4_2 = 0
        L5_2 = 31
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = DisableControlAction
        L4_2 = 0
        L5_2 = 36
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = DisableControlAction
        L4_2 = 0
        L5_2 = 21
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = DisableControlAction
        L4_2 = 0
        L5_2 = 73
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = DisableControlAction
        L4_2 = 0
        L5_2 = 63
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = DisableControlAction
        L4_2 = 0
        L5_2 = 64
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = DisableControlAction
        L4_2 = 0
        L5_2 = 71
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = DisableControlAction
        L4_2 = 0
        L5_2 = 72
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = DisableControlAction
        L4_2 = 0
        L5_2 = 75
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = DisablePlayerFiring
        L4_2 = PlayerId
        L4_2 = L4_2()
        L5_2 = true
        L3_2(L4_2, L5_2)
        L3_2 = DisableControlAction
        L4_2 = 0
        L5_2 = 24
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = DisableControlAction
        L4_2 = 0
        L5_2 = 25
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = DisableControlAction
        L4_2 = 1
        L5_2 = 37
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = DisableControlAction
        L4_2 = 0
        L5_2 = 47
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = DisableControlAction
        L4_2 = 0
        L5_2 = 58
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = DisableControlAction
        L4_2 = 0
        L5_2 = 140
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = DisableControlAction
        L4_2 = 0
        L5_2 = 141
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = DisableControlAction
        L4_2 = 0
        L5_2 = 142
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = DisableControlAction
        L4_2 = 0
        L5_2 = 143
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = DisableControlAction
        L4_2 = 0
        L5_2 = 263
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = DisableControlAction
        L4_2 = 0
        L5_2 = 264
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = DisableControlAction
        L4_2 = 0
        L5_2 = 257
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
      end
    end
    if L2_2 then
      L3_2 = Citizen
      L3_2 = L3_2.Wait
      L4_2 = 1000
      L3_2(L4_2)
    end
  end
end
L31_1(L32_1)
L31_1 = Citizen
L31_1 = L31_1.CreateThread
function L32_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetEntityCoords
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = true
    L3_2 = false
    L4_2 = -1
    L5_2 = nil
    L6_2 = ipairs
    L7_2 = Config
    L7_2 = L7_2.Gyms
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = L11_2.gympayed
      if L12_2 then
        L12_2 = L11_2.gymcoords
        L12_2 = L1_2 - L12_2
        L12_2 = #L12_2
        if L12_2 < 20.0 then
          L13_2 = Config
          L13_2 = L13_2.GymEntryManagmentMarker
          if L13_2 then
            L2_2 = false
            L13_2 = DrawMarker
            L14_2 = Config
            L14_2 = L14_2.MarkerStyle
            L14_2 = L14_2.entry
            L14_2 = L14_2.markertype
            L15_2 = L11_2.gymcoords
            L15_2 = L15_2.x
            L16_2 = L11_2.gymcoords
            L16_2 = L16_2.y
            L17_2 = L11_2.gymcoords
            L17_2 = L17_2.z
            L17_2 = L17_2 - 1.0
            L18_2 = 0.0
            L19_2 = 0.0
            L20_2 = 0.0
            L21_2 = 0.0
            L22_2 = 0.0
            L23_2 = 0.0
            L24_2 = Config
            L24_2 = L24_2.MarkerStyle
            L24_2 = L24_2.entry
            L24_2 = L24_2.markersize
            L24_2 = L24_2.x
            L25_2 = Config
            L25_2 = L25_2.MarkerStyle
            L25_2 = L25_2.entry
            L25_2 = L25_2.markersize
            L25_2 = L25_2.y
            L26_2 = Config
            L26_2 = L26_2.MarkerStyle
            L26_2 = L26_2.entry
            L26_2 = L26_2.markersize
            L26_2 = L26_2.z
            L27_2 = Config
            L27_2 = L27_2.MarkerStyle
            L27_2 = L27_2.entry
            L27_2 = L27_2.markercolor
            L27_2 = L27_2.r
            L28_2 = Config
            L28_2 = L28_2.MarkerStyle
            L28_2 = L28_2.entry
            L28_2 = L28_2.markercolor
            L28_2 = L28_2.g
            L29_2 = Config
            L29_2 = L29_2.MarkerStyle
            L29_2 = L29_2.entry
            L29_2 = L29_2.markercolor
            L29_2 = L29_2.b
            L30_2 = 100
            L31_2 = false
            L32_2 = true
            L33_2 = 2
            L34_2 = false
            L35_2 = nil
            L36_2 = nil
            L37_2 = false
            L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
          end
          L13_2 = false
          L14_2 = Config
          L14_2 = L14_2.Target
          if true == L14_2 then
            L14_2 = Config
            L14_2 = L14_2.GymDistancePay
            L14_2 = L14_2 + 10.0
            if L12_2 < L14_2 then
              L13_2 = true
            end
          else
            L14_2 = Config
            L14_2 = L14_2.GymDistancePay
            if L12_2 < L14_2 then
              L13_2 = true
            end
          end
          if L13_2 and (-1 == L4_2 or L4_2 > L12_2) then
            L4_2 = L12_2
            L3_2 = true
            L5_2 = L10_2
          end
        end
      end
    end
    if L3_2 then
      L10_1 = L5_2
      L6_2 = Config
      L6_2 = L6_2.Target
      if false == L6_2 then
        L6_2 = L13_1
        if false == L6_2 then
          L6_2 = Config
          L6_2 = L6_2.Gyms
          L7_2 = L10_1
          L6_2 = L6_2[L7_2]
          L7_2 = Config
          L7_2 = L7_2.GymInteractionSystem
          if 1 == L7_2 then
            L2_2 = false
            L7_2 = SendNUIMessage
            L8_2 = {}
            L8_2.message = "infonotifyshow"
            L9_2 = Language
            L10_2 = Config
            L10_2 = L10_2.Language
            L9_2 = L9_2[L10_2]
            L9_2 = L9_2.pressforbuyentryinteract
            L8_2.infonotifytext = L9_2
            L7_2(L8_2)
          else
            L7_2 = Config
            L7_2 = L7_2.GymInteractionSystem
            if 2 == L7_2 then
              L2_2 = false
              L7_2 = DrawText3D
              L8_2 = L6_2.gymcoords
              L8_2 = L8_2.x
              L9_2 = L6_2.gymcoords
              L9_2 = L9_2.y
              L10_2 = L6_2.gymcoords
              L10_2 = L10_2.z
              L11_2 = Language
              L12_2 = Config
              L12_2 = L12_2.Language
              L11_2 = L11_2[L12_2]
              L11_2 = L11_2.pressforbuyentry
              L7_2(L8_2, L9_2, L10_2, L11_2)
            else
              L7_2 = Config
              L7_2 = L7_2.GymInteractionSystem
              if 3 == L7_2 then
                L2_2 = false
                L7_2 = ShowGtaClassicInteraction
                L8_2 = Language
                L9_2 = Config
                L9_2 = L9_2.Language
                L8_2 = L8_2[L9_2]
                L8_2 = L8_2.pressforbuyentryinteractclassic
                L7_2(L8_2)
              end
            end
          end
        else
          L6_2 = Config
          L6_2 = L6_2.GymInteractionSystem
          if 1 == L6_2 then
            L6_2 = SendNUIMessage
            L7_2 = {}
            L7_2.message = "hidenotify"
            L6_2(L7_2)
          end
        end
      end
    else
      L6_2 = Config
      L6_2 = L6_2.GymInteractionSystem
      if 1 == L6_2 then
        L6_2 = L10_1
        if nil ~= L6_2 then
          L6_2 = SendNUIMessage
          L7_2 = {}
          L7_2.message = "hidenotify"
          L6_2(L7_2)
        end
      end
      L6_2 = nil
      L10_1 = L6_2
    end
    if L2_2 then
      L6_2 = Citizen
      L6_2 = L6_2.Wait
      L7_2 = 1000
      L6_2(L7_2)
    end
  end
end
L31_1(L32_1)
L31_1 = Citizen
L31_1 = L31_1.CreateThread
function L32_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetEntityCoords
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = true
    L3_2 = false
    L4_2 = -1
    L5_2 = nil
    L6_2 = ipairs
    L7_2 = Config
    L7_2 = L7_2.Gyms
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = L11_2.gymowneable
      if L12_2 then
        L12_2 = L14_1
        L12_2 = L12_2[L10_2]
        if nil ~= L12_2 then
          L12_2 = L14_1
          L12_2 = L12_2[L10_2]
          if false ~= L12_2 then
            L12_2 = L15_1
            L12_2 = L12_2[L10_2]
            if nil == L12_2 then
              goto lbl_129
            end
          end
          L12_2 = L11_2.gymmanagmentcoords
          L12_2 = L1_2 - L12_2
          L12_2 = #L12_2
          if L12_2 < 20.0 then
            L13_2 = Config
            L13_2 = L13_2.GymEntryManagmentMarker
            if L13_2 then
              L2_2 = false
              L13_2 = DrawMarker
              L14_2 = Config
              L14_2 = L14_2.MarkerStyle
              L14_2 = L14_2.managment
              L14_2 = L14_2.markertype
              L15_2 = L11_2.gymmanagmentcoords
              L15_2 = L15_2.x
              L16_2 = L11_2.gymmanagmentcoords
              L16_2 = L16_2.y
              L17_2 = L11_2.gymmanagmentcoords
              L17_2 = L17_2.z
              L17_2 = L17_2 - 1.0
              L18_2 = 0.0
              L19_2 = 0.0
              L20_2 = 0.0
              L21_2 = 0.0
              L22_2 = 0.0
              L23_2 = 0.0
              L24_2 = Config
              L24_2 = L24_2.MarkerStyle
              L24_2 = L24_2.managment
              L24_2 = L24_2.markersize
              L24_2 = L24_2.x
              L25_2 = Config
              L25_2 = L25_2.MarkerStyle
              L25_2 = L25_2.managment
              L25_2 = L25_2.markersize
              L25_2 = L25_2.y
              L26_2 = Config
              L26_2 = L26_2.MarkerStyle
              L26_2 = L26_2.managment
              L26_2 = L26_2.markersize
              L26_2 = L26_2.z
              L27_2 = Config
              L27_2 = L27_2.MarkerStyle
              L27_2 = L27_2.managment
              L27_2 = L27_2.markercolor
              L27_2 = L27_2.r
              L28_2 = Config
              L28_2 = L28_2.MarkerStyle
              L28_2 = L28_2.managment
              L28_2 = L28_2.markercolor
              L28_2 = L28_2.g
              L29_2 = Config
              L29_2 = L29_2.MarkerStyle
              L29_2 = L29_2.managment
              L29_2 = L29_2.markercolor
              L29_2 = L29_2.b
              L30_2 = 100
              L31_2 = false
              L32_2 = true
              L33_2 = 2
              L34_2 = false
              L35_2 = nil
              L36_2 = nil
              L37_2 = false
              L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
            end
            L13_2 = false
            L14_2 = Config
            L14_2 = L14_2.Target
            if true == L14_2 then
              L14_2 = Config
              L14_2 = L14_2.GymDistanceManagment
              L14_2 = L14_2 + 10.0
              if L12_2 < L14_2 then
                L13_2 = true
              end
            else
              L14_2 = Config
              L14_2 = L14_2.GymDistanceManagment
              if L12_2 < L14_2 then
                L13_2 = true
              end
            end
            if L13_2 and (-1 == L4_2 or L4_2 > L12_2) then
              L4_2 = L12_2
              L3_2 = true
              L5_2 = L10_2
            end
          end
        end
      end
      ::lbl_129::
    end
    if L3_2 then
      L12_1 = L5_2
      L6_2 = L13_1
      if false == L6_2 then
        L6_2 = Config
        L6_2 = L6_2.Gyms
        L7_2 = L12_1
        L6_2 = L6_2[L7_2]
        L7_2 = Config
        L7_2 = L7_2.Target
        if false == L7_2 then
          L7_2 = Config
          L7_2 = L7_2.GymInteractionSystem
          if 1 == L7_2 then
            L2_2 = false
            L8_2 = L12_1
            L7_2 = L14_1
            L7_2 = L7_2[L8_2]
            if false == L7_2 then
              L7_2 = SendNUIMessage
              L8_2 = {}
              L8_2.message = "infonotifyshow"
              L9_2 = Language
              L10_2 = Config
              L10_2 = L10_2.Language
              L9_2 = L9_2[L10_2]
              L9_2 = L9_2.pressforbuygyminteract
              L8_2.infonotifytext = L9_2
              L7_2(L8_2)
            else
              L7_2 = SendNUIMessage
              L8_2 = {}
              L8_2.message = "infonotifyshow"
              L9_2 = Language
              L10_2 = Config
              L10_2 = L10_2.Language
              L9_2 = L9_2[L10_2]
              L9_2 = L9_2.pressformanagmentgyminteract
              L8_2.infonotifytext = L9_2
              L7_2(L8_2)
            end
          else
            L7_2 = Config
            L7_2 = L7_2.GymInteractionSystem
            if 2 == L7_2 then
              L2_2 = false
              L8_2 = L12_1
              L7_2 = L14_1
              L7_2 = L7_2[L8_2]
              if false == L7_2 then
                L7_2 = DrawText3D
                L8_2 = L6_2.gymmanagmentcoords
                L8_2 = L8_2.x
                L9_2 = L6_2.gymmanagmentcoords
                L9_2 = L9_2.y
                L10_2 = L6_2.gymmanagmentcoords
                L10_2 = L10_2.z
                L11_2 = Language
                L12_2 = Config
                L12_2 = L12_2.Language
                L11_2 = L11_2[L12_2]
                L11_2 = L11_2.pressforbuygym
                L7_2(L8_2, L9_2, L10_2, L11_2)
              else
                L7_2 = DrawText3D
                L8_2 = L6_2.gymmanagmentcoords
                L8_2 = L8_2.x
                L9_2 = L6_2.gymmanagmentcoords
                L9_2 = L9_2.y
                L10_2 = L6_2.gymmanagmentcoords
                L10_2 = L10_2.z
                L11_2 = Language
                L12_2 = Config
                L12_2 = L12_2.Language
                L11_2 = L11_2[L12_2]
                L11_2 = L11_2.pressformanagmentgym
                L7_2(L8_2, L9_2, L10_2, L11_2)
              end
            else
              L7_2 = Config
              L7_2 = L7_2.GymInteractionSystem
              if 3 == L7_2 then
                L2_2 = false
                L8_2 = L12_1
                L7_2 = L14_1
                L7_2 = L7_2[L8_2]
                if false == L7_2 then
                  L7_2 = ShowGtaClassicInteraction
                  L8_2 = Language
                  L9_2 = Config
                  L9_2 = L9_2.Language
                  L8_2 = L8_2[L9_2]
                  L8_2 = L8_2.pressforbuygyminteractclassic
                  L7_2(L8_2)
                else
                  L7_2 = ShowGtaClassicInteraction
                  L8_2 = Language
                  L9_2 = Config
                  L9_2 = L9_2.Language
                  L8_2 = L8_2[L9_2]
                  L8_2 = L8_2.pressformanagmentgyminteractclassic
                  L7_2(L8_2)
                end
              end
            end
          end
        end
      else
        L6_2 = Config
        L6_2 = L6_2.GymInteractionSystem
        if 1 == L6_2 then
          L6_2 = SendNUIMessage
          L7_2 = {}
          L7_2.message = "hidenotify"
          L6_2(L7_2)
        end
      end
    else
      L6_2 = Config
      L6_2 = L6_2.GymInteractionSystem
      if 1 == L6_2 then
        L6_2 = L12_1
        if nil ~= L6_2 then
          L6_2 = SendNUIMessage
          L7_2 = {}
          L7_2.message = "hidenotify"
          L6_2(L7_2)
        end
      end
      L6_2 = nil
      L12_1 = L6_2
    end
    if L2_2 then
      L6_2 = Citizen
      L6_2 = L6_2.Wait
      L7_2 = 1000
      L6_2(L7_2)
    end
  end
end
L31_1(L32_1)
L31_1 = Citizen
L31_1 = L31_1.CreateThread
function L32_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 1000
    L0_2(L1_2)
    L0_2 = CheckPlayerStatus
    L0_2 = L0_2()
    if false == L0_2 then
      L1_2 = IsPedSwimmingUnderWater
      L2_2 = PlayerPedId
      L2_2, L3_2, L4_2, L5_2 = L2_2()
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      if L1_2 then
        L1_2 = Config
        L1_2 = L1_2.DifferentStatsSystem
        if false == L1_2 then
          L1_2 = playerneeds
          L1_2 = L1_2.swimming
          if L1_2 < 100.0 then
            L2_2 = Citizen
            L2_2 = L2_2.Wait
            L3_2 = math
            L3_2 = L3_2.random
            L4_2 = Config
            L4_2 = L4_2.LungCapacityIncrease
            L4_2 = L4_2.mintime
            L5_2 = Config
            L5_2 = L5_2.LungCapacityIncrease
            L5_2 = L5_2.maxtime
            L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
            L2_2(L3_2, L4_2, L5_2)
            L2_2 = IsPedSwimmingUnderWater
            L3_2 = PlayerPedId
            L3_2, L4_2, L5_2 = L3_2()
            L2_2 = L2_2(L3_2, L4_2, L5_2)
            if L2_2 then
              L2_2 = TriggerServerEvent
              L3_2 = "outlaw_gym:UpdateLung"
              L2_2(L3_2)
            end
          end
        else
          L1_2 = Citizen
          L1_2 = L1_2.Wait
          L2_2 = math
          L2_2 = L2_2.random
          L3_2 = Config
          L3_2 = L3_2.LungCapacityIncrease
          L3_2 = L3_2.mintime
          L4_2 = Config
          L4_2 = L4_2.LungCapacityIncrease
          L4_2 = L4_2.maxtime
          L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2)
          L1_2(L2_2, L3_2, L4_2, L5_2)
          L1_2 = IsPedSwimmingUnderWater
          L2_2 = PlayerPedId
          L2_2, L3_2, L4_2, L5_2 = L2_2()
          L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
          if L1_2 then
            L1_2 = TriggerServerEvent
            L2_2 = "outlaw_gym:UpdateLung"
            L1_2(L2_2)
          end
        end
      end
    end
  end
end
L31_1(L32_1)
L31_1 = Citizen
L31_1 = L31_1.CreateThread
function L32_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 1000
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = usinggym
    if false == L1_2 then
      L1_2 = usinggym2
      if false == L1_2 then
        L1_2 = CheckPlayerStatus
        L1_2 = L1_2()
        if false == L1_2 then
          L2_2 = Config
          L2_2 = L2_2.DifferentStatsSystem
          if false == L2_2 then
            L2_2 = playerneeds
            L2_2 = L2_2.energy
            if L2_2 < 100.0 then
              L3_2 = Citizen
              L3_2 = L3_2.Wait
              L4_2 = math
              L4_2 = L4_2.random
              L5_2 = Config
              L5_2 = L5_2.EnergyRegenerate
              L5_2 = L5_2.mintime
              L6_2 = Config
              L6_2 = L6_2.EnergyRegenerate
              L6_2 = L6_2.maxtime
              L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
              L3_2(L4_2, L5_2, L6_2)
              L3_2 = usinggym
              if false == L3_2 then
                L3_2 = usinggym2
                if false == L3_2 then
                  L3_2 = TriggerServerEvent
                  L4_2 = "outlaw_gym:UpdateEnergy"
                  L3_2(L4_2)
                end
              end
            end
          else
            L2_2 = Citizen
            L2_2 = L2_2.Wait
            L3_2 = math
            L3_2 = L3_2.random
            L4_2 = Config
            L4_2 = L4_2.EnergyRegenerate
            L4_2 = L4_2.mintime
            L5_2 = Config
            L5_2 = L5_2.EnergyRegenerate
            L5_2 = L5_2.maxtime
            L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
            L2_2(L3_2, L4_2, L5_2, L6_2)
            L2_2 = usinggym
            if false == L2_2 then
              L2_2 = usinggym2
              if false == L2_2 then
                L2_2 = TriggerServerEvent
                L3_2 = "outlaw_gym:UpdateEnergy"
                L2_2(L3_2)
              end
            end
          end
        end
      end
    end
  end
end
L31_1(L32_1)
L31_1 = Config
L31_1 = L31_1.ConditionIncreaseByNormalRunning
if L31_1 then
  L31_1 = Citizen
  L31_1 = L31_1.CreateThread
  function L32_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
    while true do
      L0_2 = Citizen
      L0_2 = L0_2.Wait
      L1_2 = 1000
      L0_2(L1_2)
      L0_2 = PlayerPedId
      L0_2 = L0_2()
      L1_2 = CheckPlayerStatus
      L1_2 = L1_2()
      if false == L1_2 then
        L2_2 = IsPedSprinting
        L3_2 = L0_2
        L2_2 = L2_2(L3_2)
        if L2_2 then
          L2_2 = Config
          L2_2 = L2_2.DifferentStatsSystem
          if false == L2_2 then
            L2_2 = playerneeds
            L2_2 = L2_2.condition
            if L2_2 < 100.0 then
              L3_2 = Citizen
              L3_2 = L3_2.Wait
              L4_2 = math
              L4_2 = L4_2.random
              L5_2 = Config
              L5_2 = L5_2.ConditionIncrease
              L5_2 = L5_2.mintime
              L6_2 = Config
              L6_2 = L6_2.ConditionIncrease
              L6_2 = L6_2.maxtime
              L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
              L3_2(L4_2, L5_2, L6_2)
              L3_2 = PlayerPedId
              L3_2 = L3_2()
              L4_2 = IsPedSprinting
              L5_2 = L3_2
              L4_2 = L4_2(L5_2)
              if L4_2 then
                L4_2 = TriggerServerEvent
                L5_2 = "outlaw_gym:UpdateCondition"
                L4_2(L5_2)
              end
            end
          else
            L2_2 = Citizen
            L2_2 = L2_2.Wait
            L3_2 = math
            L3_2 = L3_2.random
            L4_2 = Config
            L4_2 = L4_2.ConditionIncrease
            L4_2 = L4_2.mintime
            L5_2 = Config
            L5_2 = L5_2.ConditionIncrease
            L5_2 = L5_2.maxtime
            L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
            L2_2(L3_2, L4_2, L5_2, L6_2)
            L2_2 = PlayerPedId
            L2_2 = L2_2()
            L3_2 = IsPedSprinting
            L4_2 = L2_2
            L3_2 = L3_2(L4_2)
            if L3_2 then
              L3_2 = TriggerServerEvent
              L4_2 = "outlaw_gym:UpdateCondition"
              L3_2(L4_2)
            end
          end
        end
      end
    end
  end
  L31_1(L32_1)
end
L31_1 = RegisterCommand
L32_1 = Config
L32_1 = L32_1.PushUpsCommand
function L33_1()
  local L0_2, L1_2, L2_2
  L0_2 = ActionPossible
  L0_2 = L0_2()
  if true == L0_2 then
    L0_2 = TriggerServerEvent
    L1_2 = "outlaw_gym:UseGym"
    L2_2 = "pushups"
    L0_2(L1_2, L2_2)
  end
end
L31_1(L32_1, L33_1)
L31_1 = RegisterCommand
L32_1 = Config
L32_1 = L32_1.SitUpsCommand
function L33_1()
  local L0_2, L1_2, L2_2
  L0_2 = ActionPossible
  L0_2 = L0_2()
  if true == L0_2 then
    L0_2 = TriggerServerEvent
    L1_2 = "outlaw_gym:UseGym"
    L2_2 = "situps"
    L0_2(L1_2, L2_2)
  end
end
L31_1(L32_1, L33_1)
L31_1 = RegisterCommand
L32_1 = Config
L32_1 = L32_1.YogaCommand
function L33_1()
  local L0_2, L1_2, L2_2
  L0_2 = ActionPossible
  L0_2 = L0_2()
  if true == L0_2 then
    L0_2 = TriggerServerEvent
    L1_2 = "outlaw_gym:UseGym"
    L2_2 = "yoga"
    L0_2(L1_2, L2_2)
  end
end
L31_1(L32_1, L33_1)
L31_1 = RegisterCommand
L32_1 = "gymaction"
function L33_1()
  local L0_2, L1_2
  L0_2 = usinggym
  if true == L0_2 then
    L0_2 = L5_1
    if false == L0_2 then
      L0_2 = L4_1
      if false == L0_2 then
        L0_2 = GymAction
        L0_2()
    end
  end
  else
    L0_2 = usinggym2
    if true == L0_2 then
      L0_2 = L5_1
      if false == L0_2 then
        L0_2 = L4_1
        if false == L0_2 then
          L0_2 = GymAction
          L0_2()
        end
      end
    end
  end
end
L31_1(L32_1, L33_1)
L31_1 = RegisterCommand
L32_1 = "gymstop"
function L33_1()
  local L0_2, L1_2
  L0_2 = usinggym
  if true == L0_2 then
    L0_2 = L5_1
    if false == L0_2 then
      L0_2 = L4_1
      if false == L0_2 then
        L0_2 = GymStop
        L0_2()
    end
  end
  else
    L0_2 = usinggym2
    if true == L0_2 then
      L0_2 = L5_1
      if false == L0_2 then
        L0_2 = L4_1
        if false == L0_2 then
          L0_2 = GymStop
          L0_2()
        end
      end
    end
  end
end
L31_1(L32_1, L33_1)
L31_1 = Config
L31_1 = L31_1.DifferentStatsSystem
if false == L31_1 then
  L31_1 = Config
  L31_1 = L31_1.OpenMyStatsViaCommand
  if L31_1 then
    L31_1 = RegisterCommand
    L32_1 = Config
    L32_1 = L32_1.MyStatsCommand
    function L33_1()
      local L0_2, L1_2, L2_2, L3_2
      L0_2 = L19_1
      if false == L0_2 then
        L0_2 = playerloaded
        if true == L0_2 then
          L0_2 = SendNUIMessage
          L1_2 = {}
          L1_2.message = "gymstatsshow"
          L2_2 = playerneeds
          L2_2 = L2_2.strenght
          L3_2 = Config
          L3_2 = L3_2.StatsMaxData
          L3_2 = L3_2.strenght
          L3_2 = L3_2.maxdata
          L2_2 = L2_2 / L3_2
          L2_2 = L2_2 * 100
          L1_2.strengthdata = L2_2
          L2_2 = playerneeds
          L2_2 = L2_2.condition
          L3_2 = Config
          L3_2 = L3_2.StatsMaxData
          L3_2 = L3_2.condition
          L3_2 = L3_2.maxdata
          L2_2 = L2_2 / L3_2
          L2_2 = L2_2 * 100
          L1_2.conditiondata = L2_2
          L2_2 = playerneeds
          L2_2 = L2_2.swimming
          L3_2 = Config
          L3_2 = L3_2.StatsMaxData
          L3_2 = L3_2.swimming
          L3_2 = L3_2.maxdata
          L2_2 = L2_2 / L3_2
          L2_2 = L2_2 * 100
          L1_2.swimmingdata = L2_2
          L2_2 = playerneeds
          L2_2 = L2_2.hygiene
          L2_2 = L2_2 / 100.0
          L2_2 = L2_2 * 100
          L1_2.hygienedata = L2_2
          L2_2 = playerneeds
          L2_2 = L2_2.energy
          L2_2 = L2_2 / 100.0
          L2_2 = L2_2 * 100
          L1_2.energydata = L2_2
          L0_2(L1_2)
          L0_2 = Config
          L0_2 = L0_2.DisablePedInMyStats
          if false == L0_2 then
            L0_2 = CreatePedScreen
            L0_2()
          end
          L0_2 = true
          L19_1 = L0_2
          L0_2 = true
          L13_1 = L0_2
          L0_2 = SetNuiFocus
          L1_2 = true
          L2_2 = true
          L0_2(L1_2, L2_2)
        end
      end
    end
    L31_1(L32_1, L33_1)
  end
  L31_1 = Config
  L31_1 = L31_1.OpenMyStatsViaEvent
  if L31_1 then
    L31_1 = RegisterNetEvent
    L32_1 = Config
    L32_1 = L32_1.MyStatsEvent
    L31_1(L32_1)
    L31_1 = AddEventHandler
    L32_1 = Config
    L32_1 = L32_1.MyStatsEvent
    function L33_1(A0_2)
      local L1_2, L2_2, L3_2, L4_2
      if nil == A0_2 then
        L1_2 = L19_1
        if false == L1_2 then
          L1_2 = playerloaded
          if true == L1_2 then
            L1_2 = SendNUIMessage
            L2_2 = {}
            L2_2.message = "gymstatsshow"
            L3_2 = playerneeds
            L3_2 = L3_2.strenght
            L4_2 = Config
            L4_2 = L4_2.StatsMaxData
            L4_2 = L4_2.strenght
            L4_2 = L4_2.maxdata
            L3_2 = L3_2 / L4_2
            L3_2 = L3_2 * 100
            L2_2.strengthdata = L3_2
            L3_2 = playerneeds
            L3_2 = L3_2.condition
            L4_2 = Config
            L4_2 = L4_2.StatsMaxData
            L4_2 = L4_2.condition
            L4_2 = L4_2.maxdata
            L3_2 = L3_2 / L4_2
            L3_2 = L3_2 * 100
            L2_2.conditiondata = L3_2
            L3_2 = playerneeds
            L3_2 = L3_2.swimming
            L4_2 = Config
            L4_2 = L4_2.StatsMaxData
            L4_2 = L4_2.swimming
            L4_2 = L4_2.maxdata
            L3_2 = L3_2 / L4_2
            L3_2 = L3_2 * 100
            L2_2.swimmingdata = L3_2
            L3_2 = playerneeds
            L3_2 = L3_2.hygiene
            L3_2 = L3_2 / 100.0
            L3_2 = L3_2 * 100
            L2_2.hygienedata = L3_2
            L3_2 = playerneeds
            L3_2 = L3_2.energy
            L3_2 = L3_2 / 100.0
            L3_2 = L3_2 * 100
            L2_2.energydata = L3_2
            L1_2(L2_2)
            L1_2 = Config
            L1_2 = L1_2.DisablePedInMyStats
            if false == L1_2 then
              L1_2 = CreatePedScreen
              L1_2()
            end
            L1_2 = true
            L19_1 = L1_2
            L1_2 = true
            L13_1 = L1_2
            L1_2 = SetNuiFocus
            L2_2 = true
            L3_2 = true
            L1_2(L2_2, L3_2)
          end
        end
      elseif false == A0_2 then
        L1_2 = Config
        L1_2 = L1_2.DisablePedInMyStats
        if false == L1_2 then
          L1_2 = DeletePedScreen
          L1_2()
        end
        L1_2 = SendNUIMessage
        L2_2 = {}
        L2_2.message = "hidestats"
        L1_2(L2_2)
        L1_2 = false
        L19_1 = L1_2
      else
        L1_2 = L19_1
        if false == L1_2 then
          L1_2 = playerloaded
          if true == L1_2 then
            L1_2 = SendNUIMessage
            L2_2 = {}
            L2_2.message = "gymstatsshow"
            L3_2 = playerneeds
            L3_2 = L3_2.strenght
            L4_2 = Config
            L4_2 = L4_2.StatsMaxData
            L4_2 = L4_2.strenght
            L4_2 = L4_2.maxdata
            L3_2 = L3_2 / L4_2
            L3_2 = L3_2 * 100
            L2_2.strengthdata = L3_2
            L3_2 = playerneeds
            L3_2 = L3_2.condition
            L4_2 = Config
            L4_2 = L4_2.StatsMaxData
            L4_2 = L4_2.condition
            L4_2 = L4_2.maxdata
            L3_2 = L3_2 / L4_2
            L3_2 = L3_2 * 100
            L2_2.conditiondata = L3_2
            L3_2 = playerneeds
            L3_2 = L3_2.swimming
            L4_2 = Config
            L4_2 = L4_2.StatsMaxData
            L4_2 = L4_2.swimming
            L4_2 = L4_2.maxdata
            L3_2 = L3_2 / L4_2
            L3_2 = L3_2 * 100
            L2_2.swimmingdata = L3_2
            L3_2 = playerneeds
            L3_2 = L3_2.hygiene
            L3_2 = L3_2 / 100.0
            L3_2 = L3_2 * 100
            L2_2.hygienedata = L3_2
            L3_2 = playerneeds
            L3_2 = L3_2.energy
            L3_2 = L3_2 / 100.0
            L3_2 = L3_2 * 100
            L2_2.energydata = L3_2
            L1_2(L2_2)
            L1_2 = Config
            L1_2 = L1_2.DisablePedInMyStats
            if false == L1_2 then
              L1_2 = CreatePedScreen
              L1_2()
            end
            L1_2 = true
            L19_1 = L1_2
            L1_2 = true
            L13_1 = L1_2
            L1_2 = SetNuiFocus
            L2_2 = true
            L3_2 = true
            L1_2(L2_2, L3_2)
          end
        end
      end
    end
    L31_1(L32_1, L33_1)
  end
end
L31_1 = Config
L31_1 = L31_1.Target
if false == L31_1 then
  L31_1 = RegisterCommand
  L32_1 = "opengympaymenu"
  function L33_1()
    local L0_2, L1_2, L2_2
    L0_2 = L13_1
    if false == L0_2 then
      L0_2 = L10_1
      if nil ~= L0_2 then
        L0_2 = TriggerServerEvent
        L1_2 = "outlaw_gym:OpenGymPayMenu"
        L2_2 = L10_1
        L0_2(L1_2, L2_2)
      end
    end
  end
  L31_1(L32_1, L33_1)
  L31_1 = RegisterKeyMapping
  L32_1 = "opengympaymenu"
  L33_1 = Language
  L34_1 = Config
  L34_1 = L34_1.Language
  L33_1 = L33_1[L34_1]
  L33_1 = L33_1.opengymentry
  L34_1 = "keyboard"
  L35_1 = Config
  L35_1 = L35_1.GymOpenEntryMenuKey
  L31_1(L32_1, L33_1, L34_1, L35_1)
  L31_1 = RegisterCommand
  L32_1 = "opengymmanagmentmenu"
  function L33_1()
    local L0_2, L1_2, L2_2
    L0_2 = L13_1
    if false == L0_2 then
      L0_2 = L12_1
      if nil ~= L0_2 then
        L1_2 = L12_1
        L0_2 = L14_1
        L0_2 = L0_2[L1_2]
        if nil ~= L0_2 then
          L1_2 = L12_1
          L0_2 = L14_1
          L0_2 = L0_2[L1_2]
          if false == L0_2 then
            L0_2 = TriggerServerEvent
            L1_2 = "outlaw_gym:OpenBuyGymMenu"
            L2_2 = L12_1
            L0_2(L1_2, L2_2)
          else
            L1_2 = L12_1
            L0_2 = L15_1
            L0_2 = L0_2[L1_2]
            if nil ~= L0_2 then
              L0_2 = TriggerServerEvent
              L1_2 = "outlaw_gym:GymOpenManagment"
              L2_2 = L12_1
              L0_2(L1_2, L2_2)
            end
          end
        end
      end
    end
  end
  L31_1(L32_1, L33_1)
  L31_1 = RegisterCommand
  L32_1 = "gymuse"
  function L33_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2
    L0_2 = ActionPossible
    L0_2 = L0_2()
    if true == L0_2 then
      L0_2 = L6_1.gymid
      if nil ~= L0_2 then
        L0_2 = L6_1.exerciseid
        if nil ~= L0_2 then
          L0_2 = TriggerServerEvent
          L1_2 = "outlaw_gym:UseGym"
          L2_2 = ""
          L3_2 = L6_1.gymid
          L4_2 = L6_1.exerciseid
          L0_2(L1_2, L2_2, L3_2, L4_2)
        end
      end
    end
  end
  L31_1(L32_1, L33_1)
  L31_1 = Config
  L31_1 = L31_1.Showers
  if L31_1 then
    L31_1 = RegisterCommand
    L32_1 = "outlawshower"
    function L33_1()
      local L0_2, L1_2, L2_2
      L0_2 = ActionPossible
      L0_2 = L0_2()
      if true == L0_2 then
        L0_2 = L2_1
        if nil ~= L0_2 then
          L0_2 = TriggerServerEvent
          L1_2 = "outlaw_gym:UseShower"
          L2_2 = L2_1
          L0_2(L1_2, L2_2)
        end
      end
    end
    L31_1(L32_1, L33_1)
  end
  L31_1 = RegisterKeyMapping
  L32_1 = "opengymmanagmentmenu"
  L33_1 = Language
  L34_1 = Config
  L34_1 = L34_1.Language
  L33_1 = L33_1[L34_1]
  L33_1 = L33_1.opengymmanagment
  L34_1 = "keyboard"
  L35_1 = Config
  L35_1 = L35_1.GymOpenManagmentMenuKey
  L31_1(L32_1, L33_1, L34_1, L35_1)
  L31_1 = RegisterKeyMapping
  L32_1 = "outlawshower"
  L33_1 = Language
  L34_1 = Config
  L34_1 = L34_1.Language
  L33_1 = L33_1[L34_1]
  L33_1 = L33_1.shower
  L34_1 = "keyboard"
  L35_1 = Config
  L35_1 = L35_1.GymExerciseShowerKey
  L31_1(L32_1, L33_1, L34_1, L35_1)
  L31_1 = RegisterKeyMapping
  L32_1 = "gymuse"
  L33_1 = Language
  L34_1 = Config
  L34_1 = L34_1.Language
  L33_1 = L33_1[L34_1]
  L33_1 = L33_1.gymexercise
  L34_1 = "keyboard"
  L35_1 = Config
  L35_1 = L35_1.GymExerciseKey
  L31_1(L32_1, L33_1, L34_1, L35_1)
end
L31_1 = RegisterKeyMapping
L32_1 = "gymaction"
L33_1 = Language
L34_1 = Config
L34_1 = L34_1.Language
L33_1 = L33_1[L34_1]
L33_1 = L33_1.gymexercise
L34_1 = "keyboard"
L35_1 = Config
L35_1 = L35_1.GymExerciseKey
L31_1(L32_1, L33_1, L34_1, L35_1)
L31_1 = RegisterKeyMapping
L32_1 = "gymstop"
L33_1 = Language
L34_1 = Config
L34_1 = L34_1.Language
L33_1 = L33_1[L34_1]
L33_1 = L33_1.gymexercisestop
L34_1 = "keyboard"
L35_1 = Config
L35_1 = L35_1.GymExerciseStopKey
L31_1(L32_1, L33_1, L34_1, L35_1)
L31_1 = Config
L31_1 = L31_1.GymReactionMinigame
if L31_1 then
  L31_1 = RegisterCommand
  L32_1 = "gymminigamepressactiongg"
  function L33_1()
    local L0_2, L1_2
    L0_2 = L26_1
    if true == L0_2 then
      L0_2 = L27_1
      if false == L0_2 then
        L0_2 = true
        L27_1 = L0_2
      end
    end
  end
  L31_1(L32_1, L33_1)
  L31_1 = RegisterKeyMapping
  L32_1 = "gymminigamepressactiongg"
  L33_1 = Language
  L34_1 = Config
  L34_1 = L34_1.Language
  L33_1 = L33_1[L34_1]
  L33_1 = L33_1.reactkey
  L34_1 = "keyboard"
  L35_1 = Config
  L35_1 = L35_1.GymReactionMinigameKey
  L31_1(L32_1, L33_1, L34_1, L35_1)
end
