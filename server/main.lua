local L0_1, L1_1, L2_1
L0_1 = {}
ownedgyms = L0_1
L0_1 = {}
gympassdata = L0_1
L0_1 = {}
gymonetimedata = L0_1
L0_1 = {}
gymusing = L0_1
L0_1 = {}
playerneeds = L0_1
L0_1 = {}
playersupplements = L0_1
L0_1 = {}
playershower = L0_1
L0_1 = {}
playerloaded = L0_1
ESX = nil
QBCore = nil
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = os
  L0_2 = L0_2.time
  L0_2 = L0_2()
  L1_2 = os
  L1_2 = L1_2.date
  L2_2 = "*t"
  L3_2 = L0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = Config
  L3_2 = L3_2.Gyms
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.gymowneable
    if L8_2 then
      L8_2 = ownedgyms
      L9_2 = {}
      L9_2.gymowned = false
      L9_2.gymownedidentifier = ""
      L9_2.gymclosed = false
      L9_2.gymbalance = 0
      L10_2 = {}
      L9_2.gymvisitorsdata = L10_2
      L8_2[L6_2] = L9_2
    end
  end
  L2_2 = MySQL
  L2_2 = L2_2.Async
  L2_2 = L2_2.fetchAll
  L3_2 = "SELECT * FROM owned_gyms"
  L4_2 = {}
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = ipairs
    L2_3 = A0_3
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = ownedgyms
      L8_3 = L6_3.gymid
      L7_3 = L7_3[L8_3]
      if nil ~= L7_3 then
        L7_3 = ownedgyms
        L8_3 = L6_3.gymid
        L7_3 = L7_3[L8_3]
        L8_3 = Config
        L8_3 = L8_3.Gyms
        L9_3 = L6_3.gymid
        L8_3 = L8_3[L9_3]
        L7_3.gymowned = true
        L9_3 = L6_3.identifier
        L7_3.gymownedidentifier = L9_3
        L9_3 = L6_3.gymbalance
        L7_3.gymbalance = L9_3
        L9_3 = L6_3.gymprice
        L8_3.gymprice = L9_3
        L9_3 = json
        L9_3 = L9_3.decode
        L10_3 = L6_3.gymvisitorsdata
        L9_3 = L9_3(L10_3)
        L7_3.gymvisitorsdata = L9_3
        L9_3 = L6_3.gymclosed
        L7_3.gymclosed = L9_3
      end
    end
  end
  L2_2(L3_2, L4_2, L5_2)
end
GymsOwnedBuild = L0_1
function L0_1(A0_2, A1_2)
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
round = L0_1
function L0_1(A0_2, ...)
  local L1_2, L2_2, L3_2
  L1_2 = string
  L1_2 = L1_2.format
  L2_2 = Language
  L3_2 = Config
  L3_2 = L3_2.Language
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2[A0_2]
  L3_2 = ...
  return L1_2(L2_2, L3_2)
end
LanguageFile2 = L0_1
function L0_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = tostring
  L2_2 = LanguageFile2
  L3_2 = A0_2
  L4_2, L5_2 = ...
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L2_2
  L2_2 = L2_2.gsub
  L4_2 = "^%l"
  L5_2 = string
  L5_2 = L5_2.upper
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2)
  return L1_2(L2_2, L3_2, L4_2, L5_2)
end
LanguageFile = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = os
  L2_2 = L2_2.time
  L2_2 = L2_2()
  L3_2 = false
  L4_2 = gymonetimedata
  L4_2 = L4_2[A0_2]
  if nil ~= L4_2 then
    L4_2 = gymonetimedata
    L4_2 = L4_2[A0_2]
    if nil ~= L4_2 then
      L4_2 = gymonetimedata
      L4_2 = L4_2[A0_2]
      L4_2 = L4_2[A1_2]
      if nil ~= L4_2 then
        L4_2 = gymonetimedata
        L4_2 = L4_2[A0_2]
        L4_2 = L4_2[A1_2]
        if L2_2 < L4_2 then
          L3_2 = true
        end
      end
    end
  end
  if false == L3_2 then
    L4_2 = gympassdata
    L4_2 = L4_2[A0_2]
    if nil ~= L4_2 then
      L4_2 = gympassdata
      L4_2 = L4_2[A0_2]
      L4_2 = L4_2[A1_2]
      if nil ~= L4_2 then
        L4_2 = gympassdata
        L4_2 = L4_2[A0_2]
        L4_2 = L4_2[A1_2]
        if L2_2 < L4_2 then
          L3_2 = true
        end
      end
    end
  end
  return L3_2
end
CheckGymAccess = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = playerneeds
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2[A1_2]
  L4_2 = Config
  L4_2 = L4_2.StatsMaxData
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.maxdata
  L3_2 = L3_2 / L4_2
  L3_2 = L3_2 * 100
  L4_2 = A2_2
  if L3_2 > 95.0 then
    L4_2 = L4_2 * 0.1
  elseif L3_2 > 90.0 then
    L4_2 = L4_2 * 0.15
  elseif L3_2 > 80.0 then
    L4_2 = L4_2 * 0.2
  elseif L3_2 > 70.0 then
    L4_2 = L4_2 * 0.3
  elseif L3_2 > 60.0 then
    L4_2 = L4_2 * 0.4
  elseif L3_2 > 50.0 then
    L4_2 = L4_2 * 0.5
  elseif L3_2 > 40.0 then
    L4_2 = L4_2 * 0.6
  elseif L3_2 > 30.0 then
    L4_2 = L4_2 * 0.7
  elseif L3_2 > 20.0 then
    L4_2 = L4_2 * 0.8
  elseif L3_2 > 10.0 then
    L4_2 = L4_2 * 0.9
  end
  return L4_2
end
CheckPlayerStatus = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if "add" == A2_2 then
    L3_2 = A1_2
    L4_2 = playersupplements
    L4_2 = L4_2[A0_2]
    if nil ~= L4_2 then
      L4_2 = os
      L4_2 = L4_2.time
      L4_2 = L4_2()
      L5_2 = playersupplements
      L5_2 = L5_2[A0_2]
      L5_2 = L5_2.protein
      if nil ~= L5_2 then
        L5_2 = playersupplements
        L5_2 = L5_2[A0_2]
        L5_2 = L5_2.protein
        if L4_2 < L5_2 then
          L5_2 = Config
          L5_2 = L5_2.Supplements
          L5_2 = L5_2.protein
          L5_2 = L5_2.increase
          L3_2 = L3_2 * L5_2
        end
      end
      L5_2 = playersupplements
      L5_2 = L5_2[A0_2]
      L5_2 = L5_2.creatine
      if nil ~= L5_2 then
        L5_2 = playersupplements
        L5_2 = L5_2[A0_2]
        L5_2 = L5_2.creatine
        if L4_2 < L5_2 then
          L5_2 = Config
          L5_2 = L5_2.Supplements
          L5_2 = L5_2.creatine
          L5_2 = L5_2.increase
          L3_2 = L3_2 * L5_2
        end
      end
      L5_2 = playersupplements
      L5_2 = L5_2[A0_2]
      L5_2 = L5_2.preworkout
      if nil ~= L5_2 then
        L5_2 = playersupplements
        L5_2 = L5_2[A0_2]
        L5_2 = L5_2.preworkout
        if L4_2 < L5_2 then
          L5_2 = Config
          L5_2 = L5_2.Supplements
          L5_2 = L5_2.preworkout
          L5_2 = L5_2.increase
          L3_2 = L3_2 * L5_2
        end
      end
      L5_2 = playersupplements
      L5_2 = L5_2[A0_2]
      L5_2 = L5_2.testosterone
      if nil ~= L5_2 then
        L5_2 = playersupplements
        L5_2 = L5_2[A0_2]
        L5_2 = L5_2.testosterone
        if L4_2 < L5_2 then
          L5_2 = Config
          L5_2 = L5_2.Supplements
          L5_2 = L5_2.testosterone
          L5_2 = L5_2.increase
          L3_2 = L3_2 * L5_2
        end
      end
    end
    return L3_2
  else
    L3_2 = A1_2
    L4_2 = playersupplements
    L4_2 = L4_2[A0_2]
    if nil ~= L4_2 then
      L4_2 = os
      L4_2 = L4_2.time
      L4_2 = L4_2()
      L5_2 = playersupplements
      L5_2 = L5_2[A0_2]
      L5_2 = L5_2.protein
      if nil ~= L5_2 then
        L5_2 = playersupplements
        L5_2 = L5_2[A0_2]
        L5_2 = L5_2.protein
        if L4_2 < L5_2 then
          L5_2 = Config
          L5_2 = L5_2.Supplements
          L5_2 = L5_2.protein
          L5_2 = L5_2.decrease
          L3_2 = L3_2 * L5_2
        end
      end
      L5_2 = playersupplements
      L5_2 = L5_2[A0_2]
      L5_2 = L5_2.creatine
      if nil ~= L5_2 then
        L5_2 = playersupplements
        L5_2 = L5_2[A0_2]
        L5_2 = L5_2.creatine
        if L4_2 < L5_2 then
          L5_2 = Config
          L5_2 = L5_2.Supplements
          L5_2 = L5_2.creatine
          L5_2 = L5_2.decrease
          L3_2 = L3_2 * L5_2
        end
      end
      L5_2 = playersupplements
      L5_2 = L5_2[A0_2]
      L5_2 = L5_2.preworkout
      if nil ~= L5_2 then
        L5_2 = playersupplements
        L5_2 = L5_2[A0_2]
        L5_2 = L5_2.preworkout
        if L4_2 < L5_2 then
          L5_2 = Config
          L5_2 = L5_2.Supplements
          L5_2 = L5_2.preworkout
          L5_2 = L5_2.decrease
          L3_2 = L3_2 * L5_2
        end
      end
      L5_2 = playersupplements
      L5_2 = L5_2[A0_2]
      L5_2 = L5_2.testosterone
      if nil ~= L5_2 then
        L5_2 = playersupplements
        L5_2 = L5_2[A0_2]
        L5_2 = L5_2.testosterone
        if L4_2 < L5_2 then
          L5_2 = Config
          L5_2 = L5_2.Supplements
          L5_2 = L5_2.testosterone
          L5_2 = L5_2.decrease
          L3_2 = L3_2 * L5_2
        end
      end
    end
    return L3_2
  end
end
CheckSuplements = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = playerloaded
  L2_2 = GetPlayerIdentifierRTX
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2[A0_2] = L2_2
  L1_2 = gymonetimedata
  L1_2 = L1_2[A0_2]
  if nil == L1_2 then
    L1_2 = gymonetimedata
    L2_2 = {}
    L1_2[A0_2] = L2_2
  end
  L1_2 = gympassdata
  L1_2 = L1_2[A0_2]
  if nil == L1_2 then
    L1_2 = gympassdata
    L2_2 = {}
    L1_2[A0_2] = L2_2
  end
  L1_2 = playersupplements
  L1_2 = L1_2[A0_2]
  if nil == L1_2 then
    L1_2 = playersupplements
    L2_2 = {}
    L2_2.protein = nil
    L2_2.creatine = nil
    L2_2.preworkout = nil
    L2_2.testosterone = nil
    L1_2[A0_2] = L2_2
  end
  L1_2 = Config
  L1_2 = L1_2.DifferentStatsSystem
  if false == L1_2 then
    L1_2 = playerneeds
    L1_2 = L1_2[A0_2]
    if nil == L1_2 then
      L1_2 = playerneeds
      L2_2 = {}
      L2_2.strenght = 0.0
      L2_2.condition = 0.0
      L2_2.swimming = 0.0
      L2_2.hygiene = 100.0
      L2_2.energy = 100.0
      L1_2[A0_2] = L2_2
    end
  end
end
PlayerDataReformated = L0_1
L0_1 = Config
L0_1 = L0_1.OwneableGyms
if L0_1 then
  L0_1 = Citizen
  L0_1 = L0_1.CreateThread
  function L1_1()
    local L0_2, L1_2
    L0_2 = GymsOwnedBuild
    L0_2()
  end
  L0_1(L1_1)
end
L0_1 = Config
L0_1 = L0_1.Showers
if L0_1 then
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:UseShower"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:UseShower"
  function L2_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
    L1_2 = source
    L2_2 = playershower
    L2_2 = L2_2[L1_2]
    if nil == L2_2 then
      L2_2 = Config
      L2_2 = L2_2.Showers
      L2_2 = L2_2[A0_2]
      L3_2 = L2_2.taken
      if false == L3_2 then
        L3_2 = playershower
        L3_2[L1_2] = true
        L2_2.taken = true
        L2_2.takenplayerid = L1_2
        L3_2 = TriggerClientEvent
        L4_2 = "rtx_gym:UseShower"
        L5_2 = L1_2
        L6_2 = A0_2
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = TriggerClientEvent
        L4_2 = "rtx_gym:ShowerHandler"
        L5_2 = -1
        L6_2 = A0_2
        L7_2 = true
        L3_2(L4_2, L5_2, L6_2, L7_2)
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:SHOWERComplete"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:SHOWERComplete"
  function L2_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
    L2_2 = source
    L3_2 = playershower
    L3_2 = L3_2[L2_2]
    if nil ~= L3_2 then
      L3_2 = playershower
      L3_2 = L3_2[L2_2]
      if true == L3_2 then
        L3_2 = Config
        L3_2 = L3_2.Showers
        L3_2 = L3_2[A1_2]
        L4_2 = L3_2.taken
        if true == L4_2 then
          L4_2 = L3_2.takenplayerid
          if L4_2 == L2_2 then
            if true == A0_2 then
              L4_2 = UpdateStats
              L5_2 = L2_2
              L6_2 = "hygiene"
              L7_2 = 100
              L4_2(L5_2, L6_2, L7_2)
            end
            L3_2.taken = false
            L3_2.takenplayerid = nil
            L4_2 = TriggerClientEvent
            L5_2 = "rtx_gym:ShowerHandler"
            L6_2 = -1
            L7_2 = A1_2
            L8_2 = false
            L4_2(L5_2, L6_2, L7_2, L8_2)
          end
        end
        L4_2 = playershower
        L4_2[L2_2] = nil
      end
    end
  end
  L0_1(L1_1, L2_1)
end
L0_1 = RegisterServerEvent
L1_1 = "rtx_gym:UseGym"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "rtx_gym:UseGym"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = source
  L4_2 = gymusing
  L4_2 = L4_2[L3_2]
  if nil == L4_2 then
    L4_2 = playerneeds
    L4_2 = L4_2[L3_2]
    if nil ~= L4_2 then
      L4_2 = gymonetimedata
      L4_2 = L4_2[L3_2]
      if nil ~= L4_2 then
        L4_2 = gympassdata
        L4_2 = L4_2[L3_2]
        if nil ~= L4_2 then
          L4_2 = playersupplements
          L4_2 = L4_2[L3_2]
          if nil ~= L4_2 then
            goto lbl_25
          end
        end
      end
    end
    L4_2 = PlayerDataReformated
    L5_2 = L3_2
    L4_2(L5_2)
    ::lbl_25::
    if "pushups" == A0_2 or "situps" == A0_2 or "yoga" == A0_2 then
      L4_2 = Config
      L4_2 = L4_2.Exercises
      L4_2 = L4_2[A0_2]
      L5_2 = true
      L6_2 = Config
      L6_2 = L6_2.DifferentStatsSystem
      if false == L6_2 then
        L6_2 = pairs
        L7_2 = L4_2.statsneed
        L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
        for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
          L12_2 = playerneeds
          L12_2 = L12_2[L3_2]
          L13_2 = tostring
          L14_2 = L10_2
          L13_2 = L13_2(L14_2)
          L12_2 = L12_2[L13_2]
          if L11_2 <= L12_2 then
          else
            L5_2 = false
          end
        end
      end
      if L5_2 then
        L6_2 = gymusing
        L6_2[L3_2] = true
        L6_2 = TriggerClientEvent
        L7_2 = "rtx_gym:UseGymTypes"
        L8_2 = L3_2
        L9_2 = A0_2
        L6_2(L7_2, L8_2, L9_2)
      else
        L6_2 = TriggerClientEvent
        L7_2 = "rtx_gym:Notify"
        L8_2 = L3_2
        L9_2 = Language
        L10_2 = Config
        L10_2 = L10_2.Language
        L9_2 = L9_2[L10_2]
        L9_2 = L9_2.noenergy
        L6_2(L7_2, L8_2, L9_2)
      end
    elseif nil ~= A1_2 then
      L4_2 = Config
      L4_2 = L4_2.Gyms
      L4_2 = L4_2[A1_2]
      L5_2 = true
      L6_2 = L4_2.gympayed
      if L6_2 then
        L6_2 = CheckGymAccess
        L7_2 = L3_2
        L8_2 = A1_2
        L6_2 = L6_2(L7_2, L8_2)
        L5_2 = L6_2
      end
      if L5_2 then
        L6_2 = false
        L7_2 = Config
        L7_2 = L7_2.OwneableGyms
        if true == L7_2 then
          L7_2 = L4_2.gymowneable
          if L7_2 then
            L7_2 = ownedgyms
            L7_2 = L7_2[A1_2]
            L6_2 = L7_2.gymclosed
          end
        end
        if false == L6_2 then
          L7_2 = Config
          L7_2 = L7_2.Gyms
          L7_2 = L7_2[A1_2]
          L7_2 = L7_2.exercises
          L7_2 = L7_2[A2_2]
          L8_2 = Config
          L8_2 = L8_2.Exercises
          L9_2 = L7_2.exercisetype
          L8_2 = L8_2[L9_2]
          L9_2 = true
          L10_2 = Config
          L10_2 = L10_2.DifferentStatsSystem
          if false == L10_2 then
            L10_2 = pairs
            L11_2 = L8_2.statsneed
            L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
            for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
              L16_2 = playerneeds
              L16_2 = L16_2[L3_2]
              L17_2 = tostring
              L18_2 = L14_2
              L17_2 = L17_2(L18_2)
              L16_2 = L16_2[L17_2]
              if L15_2 <= L16_2 then
              else
                L9_2 = false
              end
            end
          end
          if L9_2 then
            L10_2 = L7_2.status
            L10_2 = L10_2.taken
            if false == L10_2 then
              L10_2 = gymusing
              L10_2[L3_2] = true
              L10_2 = L7_2.status
              L10_2.taken = true
              L10_2 = L7_2.status
              L10_2.takenplayerid = L3_2
              L10_2 = TriggerClientEvent
              L11_2 = "rtx_gym:UseGym"
              L12_2 = L3_2
              L13_2 = A1_2
              L14_2 = A2_2
              L10_2(L11_2, L12_2, L13_2, L14_2)
              L10_2 = TriggerClientEvent
              L11_2 = "rtx_gym:GymHandler"
              L12_2 = -1
              L13_2 = A1_2
              L14_2 = A2_2
              L15_2 = true
              L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
            end
          else
            L10_2 = TriggerClientEvent
            L11_2 = "rtx_gym:Notify"
            L12_2 = L3_2
            L13_2 = Language
            L14_2 = Config
            L14_2 = L14_2.Language
            L13_2 = L13_2[L14_2]
            L13_2 = L13_2.noenergy
            L10_2(L11_2, L12_2, L13_2)
          end
        else
          L7_2 = TriggerClientEvent
          L8_2 = "rtx_gym:Notify"
          L9_2 = L3_2
          L10_2 = Language
          L11_2 = Config
          L11_2 = L11_2.Language
          L10_2 = L10_2[L11_2]
          L10_2 = L10_2.gymisclosed
          L7_2(L8_2, L9_2, L10_2)
        end
      else
        L6_2 = TriggerClientEvent
        L7_2 = "rtx_gym:Notify"
        L8_2 = L3_2
        L9_2 = Language
        L10_2 = Config
        L10_2 = L10_2.Language
        L9_2 = L9_2[L10_2]
        L9_2 = L9_2.youmustpayforentry
        L6_2(L7_2, L8_2, L9_2)
      end
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "rtx_gym:GymAdd"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "rtx_gym:GymAdd"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L2_2 = source
  L3_2 = gymusing
  L3_2 = L3_2[L2_2]
  if nil ~= L3_2 then
    L3_2 = playerneeds
    L3_2 = L3_2[L2_2]
    if nil ~= L3_2 then
      L3_2 = gymonetimedata
      L3_2 = L3_2[L2_2]
      if nil ~= L3_2 then
        L3_2 = gympassdata
        L3_2 = L3_2[L2_2]
        if nil ~= L3_2 then
          L3_2 = playersupplements
          L3_2 = L3_2[L2_2]
          if nil ~= L3_2 then
            goto lbl_25
          end
        end
      end
    end
    L3_2 = PlayerDataReformated
    L4_2 = L2_2
    L3_2(L4_2)
    ::lbl_25::
    L3_2 = gymusing
    L3_2 = L3_2[L2_2]
    if true == L3_2 then
      L3_2 = Config
      L3_2 = L3_2.Gyms
      L3_2 = L3_2[A0_2]
      L3_2 = L3_2.exercises
      L3_2 = L3_2[A1_2]
      L4_2 = L3_2.status
      L4_2 = L4_2.taken
      if true == L4_2 then
        L4_2 = L3_2.status
        L4_2 = L4_2.takenplayerid
        if L4_2 == L2_2 then
          L4_2 = true
          L5_2 = Config
          L5_2 = L5_2.Exercises
          L6_2 = L3_2.exercisetype
          L5_2 = L5_2[L6_2]
          L6_2 = Config
          L6_2 = L6_2.DifferentStatsSystem
          if false == L6_2 then
            L6_2 = pairs
            L7_2 = L5_2.statsneed
            L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
            for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
              L12_2 = playerneeds
              L12_2 = L12_2[L2_2]
              L13_2 = tostring
              L14_2 = L10_2
              L13_2 = L13_2(L14_2)
              L12_2 = L12_2[L13_2]
              if L11_2 <= L12_2 then
              else
                L4_2 = false
              end
            end
          end
          if L4_2 then
            L6_2 = pairs
            L7_2 = L5_2.statsadd
            L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
            for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
              L12_2 = Config
              L12_2 = L12_2.DifferentStatsSystem
              if false == L12_2 then
                L12_2 = tostring
                L13_2 = L10_2
                L12_2 = L12_2(L13_2)
                if "stress" == L12_2 then
                  L12_2 = RemoveStress
                  L13_2 = L2_2
                  L14_2 = L11_2.adddata
                  L12_2(L13_2, L14_2)
                else
                  L12_2 = playerneeds
                  L12_2 = L12_2[L2_2]
                  L13_2 = tostring
                  L14_2 = L10_2
                  L13_2 = L13_2(L14_2)
                  L12_2 = L12_2[L13_2]
                  L13_2 = Config
                  L13_2 = L13_2.StatsMaxData
                  L14_2 = tostring
                  L15_2 = L10_2
                  L14_2 = L14_2(L15_2)
                  L13_2 = L13_2[L14_2]
                  L13_2 = L13_2.maxdata
                  if L12_2 < L13_2 then
                    L12_2 = CheckPlayerStatus
                    L13_2 = L2_2
                    L14_2 = tostring
                    L15_2 = L10_2
                    L14_2 = L14_2(L15_2)
                    L15_2 = L11_2.adddata
                    L12_2 = L12_2(L13_2, L14_2, L15_2)
                    L13_2 = CheckSuplements
                    L14_2 = L2_2
                    L15_2 = L12_2
                    L16_2 = "add"
                    L13_2 = L13_2(L14_2, L15_2, L16_2)
                    L14_2 = AddStats
                    L15_2 = L2_2
                    L16_2 = tostring
                    L17_2 = L10_2
                    L16_2 = L16_2(L17_2)
                    L17_2 = L13_2
                    L14_2(L15_2, L16_2, L17_2)
                    L14_2 = Config
                    L14_2 = L14_2.DisableIncreaseStatsNotify
                    if false == L14_2 then
                      L14_2 = TriggerClientEvent
                      L15_2 = "rtx_gym:Notify"
                      L16_2 = L2_2
                      L17_2 = LanguageFile
                      L18_2 = "statadd"
                      L19_2 = Language
                      L20_2 = Config
                      L20_2 = L20_2.Language
                      L19_2 = L19_2[L20_2]
                      L20_2 = tostring
                      L21_2 = L10_2
                      L20_2 = L20_2(L21_2)
                      L19_2 = L19_2[L20_2]
                      L20_2 = round
                      L21_2 = L13_2
                      L22_2 = 2
                      L20_2, L21_2, L22_2 = L20_2(L21_2, L22_2)
                      L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
                      L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                    end
                  end
                end
              else
                L12_2 = AddStats
                L13_2 = L2_2
                L14_2 = tostring
                L15_2 = L10_2
                L14_2 = L14_2(L15_2)
                L15_2 = L11_2.adddata
                L12_2(L13_2, L14_2, L15_2)
                L12_2 = Config
                L12_2 = L12_2.DisableIncreaseStatsNotify
                if false == L12_2 then
                  L12_2 = TriggerClientEvent
                  L13_2 = "rtx_gym:Notify"
                  L14_2 = L2_2
                  L15_2 = LanguageFile
                  L16_2 = "statadd"
                  L17_2 = Language
                  L18_2 = Config
                  L18_2 = L18_2.Language
                  L17_2 = L17_2[L18_2]
                  L18_2 = tostring
                  L19_2 = L10_2
                  L18_2 = L18_2(L19_2)
                  L17_2 = L17_2[L18_2]
                  L18_2 = round
                  L19_2 = L11_2.adddata
                  L20_2 = 2
                  L18_2, L19_2, L20_2, L21_2, L22_2 = L18_2(L19_2, L20_2)
                  L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                end
              end
            end
            L6_2 = pairs
            L7_2 = L5_2.statsneedremove
            L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
            for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
              L12_2 = Config
              L12_2 = L12_2.DifferentStatsSystem
              if false == L12_2 then
                L12_2 = CheckSuplements
                L13_2 = L2_2
                L14_2 = L11_2
                L15_2 = "remove"
                L12_2 = L12_2(L13_2, L14_2, L15_2)
                L13_2 = RemoveStats
                L14_2 = L2_2
                L15_2 = tostring
                L16_2 = L10_2
                L15_2 = L15_2(L16_2)
                L16_2 = L12_2
                L13_2(L14_2, L15_2, L16_2)
              else
                L12_2 = RemoveStats
                L13_2 = L2_2
                L14_2 = tostring
                L15_2 = L10_2
                L14_2 = L14_2(L15_2)
                L15_2 = L11_2
                L12_2(L13_2, L14_2, L15_2)
              end
            end
          else
            L6_2 = TriggerClientEvent
            L7_2 = "rtx_gym:Notify"
            L8_2 = L2_2
            L9_2 = Language
            L10_2 = Config
            L10_2 = L10_2.Language
            L9_2 = L9_2[L10_2]
            L9_2 = L9_2.noenergy
            L6_2(L7_2, L8_2, L9_2)
            L6_2 = TriggerClientEvent
            L7_2 = "rtx_gym:GymStop"
            L8_2 = L2_2
            L9_2 = A0_2
            L10_2 = "energy"
            L6_2(L7_2, L8_2, L9_2, L10_2)
          end
          L6_2 = Config
          L6_2 = L6_2.Gyms
          L6_2 = L6_2[A0_2]
          L7_2 = L6_2.gympayed
          if L7_2 then
            L7_2 = CheckGymAccess
            L8_2 = L2_2
            L9_2 = A0_2
            L7_2 = L7_2(L8_2, L9_2)
            if false == L7_2 then
              L8_2 = TriggerClientEvent
              L9_2 = "rtx_gym:GymStop"
              L10_2 = L2_2
              L11_2 = A0_2
              L12_2 = "entry"
              L8_2(L9_2, L10_2, L11_2, L12_2)
            end
          end
        end
      end
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = Config
L0_1 = L0_1.ReducingStatsWhenNotExercising
if true == L0_1 then
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:GymNoExercise"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:GymNoExercise"
  function L2_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
    L1_2 = source
    L2_2 = playerneeds
    L2_2 = L2_2[L1_2]
    if nil ~= L2_2 then
      L2_2 = gymonetimedata
      L2_2 = L2_2[L1_2]
      if nil ~= L2_2 then
        L2_2 = gympassdata
        L2_2 = L2_2[L1_2]
        if nil ~= L2_2 then
          L2_2 = playersupplements
          L2_2 = L2_2[L1_2]
          if nil ~= L2_2 then
            goto lbl_21
          end
        end
      end
    end
    L2_2 = PlayerDataReformated
    L3_2 = L1_2
    L2_2(L3_2)
    ::lbl_21::
    if "strenght" == A0_2 then
      L2_2 = Config
      L2_2 = L2_2.ReduceStatsTime
      L2_2 = L2_2.strenght
      L2_2 = L2_2.decreasevalue
      L3_2 = Config
      L3_2 = L3_2.DisableDecreaseStatsNotify
      if false == L3_2 then
        L3_2 = TriggerClientEvent
        L4_2 = "rtx_gym:Notify"
        L5_2 = L1_2
        L6_2 = LanguageFile
        L7_2 = "noexercise"
        L8_2 = Language
        L9_2 = Config
        L9_2 = L9_2.Language
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2.strenght
        L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2)
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      end
      L3_2 = RemoveStats
      L4_2 = L1_2
      L5_2 = "strenght"
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
    elseif "condition" == A0_2 then
      L2_2 = Config
      L2_2 = L2_2.ReduceStatsTime
      L2_2 = L2_2.condition
      L2_2 = L2_2.decreasevalue
      L3_2 = Config
      L3_2 = L3_2.DisableDecreaseStatsNotify
      if false == L3_2 then
        L3_2 = TriggerClientEvent
        L4_2 = "rtx_gym:Notify"
        L5_2 = L1_2
        L6_2 = LanguageFile
        L7_2 = "noexercise"
        L8_2 = Language
        L9_2 = Config
        L9_2 = L9_2.Language
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2.condition
        L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2)
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      end
      L3_2 = RemoveStats
      L4_2 = L1_2
      L5_2 = "condition"
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
    elseif "water" == A0_2 then
      L2_2 = Config
      L2_2 = L2_2.ReduceStatsTime
      L2_2 = L2_2.water
      L2_2 = L2_2.decreasevalue
      L3_2 = Config
      L3_2 = L3_2.DisableDecreaseStatsNotify
      if false == L3_2 then
        L3_2 = TriggerClientEvent
        L4_2 = "rtx_gym:Notify"
        L5_2 = L1_2
        L6_2 = LanguageFile
        L7_2 = "noexercise"
        L8_2 = Language
        L9_2 = Config
        L9_2 = L9_2.Language
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2.swimming
        L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2)
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      end
      L3_2 = RemoveStats
      L4_2 = L1_2
      L5_2 = "swimming"
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
    end
  end
  L0_1(L1_1, L2_1)
end
L0_1 = RegisterServerEvent
L1_1 = "rtx_gym:GymTypesAdd"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "rtx_gym:GymTypesAdd"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L1_2 = source
  L2_2 = gymusing
  L2_2 = L2_2[L1_2]
  if nil ~= L2_2 then
    L2_2 = playerneeds
    L2_2 = L2_2[L1_2]
    if nil ~= L2_2 then
      L2_2 = gymonetimedata
      L2_2 = L2_2[L1_2]
      if nil ~= L2_2 then
        L2_2 = gympassdata
        L2_2 = L2_2[L1_2]
        if nil ~= L2_2 then
          L2_2 = playersupplements
          L2_2 = L2_2[L1_2]
          if nil ~= L2_2 then
            goto lbl_25
          end
        end
      end
    end
    L2_2 = PlayerDataReformated
    L3_2 = L1_2
    L2_2(L3_2)
    ::lbl_25::
    L2_2 = gymusing
    L2_2 = L2_2[L1_2]
    if true == L2_2 then
      L2_2 = true
      L3_2 = Config
      L3_2 = L3_2.Exercises
      L3_2 = L3_2[A0_2]
      L4_2 = Config
      L4_2 = L4_2.DifferentStatsSystem
      if false == L4_2 then
        L4_2 = pairs
        L5_2 = L3_2.statsneed
        L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
        for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
          L10_2 = playerneeds
          L10_2 = L10_2[L1_2]
          L11_2 = tostring
          L12_2 = L8_2
          L11_2 = L11_2(L12_2)
          L10_2 = L10_2[L11_2]
          if L9_2 <= L10_2 then
          else
            L2_2 = false
          end
        end
      end
      if L2_2 then
        L4_2 = 0.0
        L5_2 = pairs
        L6_2 = L3_2.statsadd
        L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
        for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
          L11_2 = Config
          L11_2 = L11_2.DifferentStatsSystem
          if false == L11_2 then
            L11_2 = tostring
            L12_2 = L9_2
            L11_2 = L11_2(L12_2)
            if "stress" == L11_2 then
              L11_2 = RemoveStress
              L12_2 = L1_2
              L13_2 = L10_2.adddata
              L11_2(L12_2, L13_2)
            else
              L11_2 = playerneeds
              L11_2 = L11_2[L1_2]
              L12_2 = tostring
              L13_2 = L9_2
              L12_2 = L12_2(L13_2)
              L11_2 = L11_2[L12_2]
              L12_2 = Config
              L12_2 = L12_2.StatsMaxData
              L13_2 = tostring
              L14_2 = L9_2
              L13_2 = L13_2(L14_2)
              L12_2 = L12_2[L13_2]
              L12_2 = L12_2.maxdata
              if L11_2 < L12_2 then
                L11_2 = CheckPlayerStatus
                L12_2 = L1_2
                L13_2 = tostring
                L14_2 = L9_2
                L13_2 = L13_2(L14_2)
                L14_2 = L10_2.adddata
                L11_2 = L11_2(L12_2, L13_2, L14_2)
                L12_2 = CheckSuplements
                L13_2 = L1_2
                L14_2 = L11_2
                L15_2 = "add"
                L12_2 = L12_2(L13_2, L14_2, L15_2)
                L13_2 = AddStats
                L14_2 = L1_2
                L15_2 = tostring
                L16_2 = L9_2
                L15_2 = L15_2(L16_2)
                L16_2 = L12_2
                L13_2(L14_2, L15_2, L16_2)
                L13_2 = Config
                L13_2 = L13_2.DisableIncreaseStatsNotify
                if false == L13_2 then
                  L13_2 = TriggerClientEvent
                  L14_2 = "rtx_gym:Notify"
                  L15_2 = L1_2
                  L16_2 = LanguageFile
                  L17_2 = "statadd"
                  L18_2 = Language
                  L19_2 = Config
                  L19_2 = L19_2.Language
                  L18_2 = L18_2[L19_2]
                  L19_2 = tostring
                  L20_2 = L9_2
                  L19_2 = L19_2(L20_2)
                  L18_2 = L18_2[L19_2]
                  L19_2 = round
                  L20_2 = L12_2
                  L21_2 = 2
                  L19_2, L20_2, L21_2 = L19_2(L20_2, L21_2)
                  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
                  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
                end
              end
            end
          else
            L11_2 = AddStats
            L12_2 = L1_2
            L13_2 = tostring
            L14_2 = L9_2
            L13_2 = L13_2(L14_2)
            L14_2 = L10_2.adddata
            L11_2(L12_2, L13_2, L14_2)
            L11_2 = Config
            L11_2 = L11_2.DisableIncreaseStatsNotify
            if false == L11_2 then
              L11_2 = TriggerClientEvent
              L12_2 = "rtx_gym:Notify"
              L13_2 = L1_2
              L14_2 = LanguageFile
              L15_2 = "statadd"
              L16_2 = Language
              L17_2 = Config
              L17_2 = L17_2.Language
              L16_2 = L16_2[L17_2]
              L17_2 = tostring
              L18_2 = L9_2
              L17_2 = L17_2(L18_2)
              L16_2 = L16_2[L17_2]
              L17_2 = round
              L18_2 = L10_2.adddata
              L19_2 = 2
              L17_2, L18_2, L19_2, L20_2, L21_2 = L17_2(L18_2, L19_2)
              L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
              L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
            end
          end
        end
        L5_2 = pairs
        L6_2 = L3_2.statsneedremove
        L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
        for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
          L11_2 = Config
          L11_2 = L11_2.DifferentStatsSystem
          if false == L11_2 then
            L11_2 = CheckSuplements
            L12_2 = L1_2
            L13_2 = L10_2
            L14_2 = "remove"
            L11_2 = L11_2(L12_2, L13_2, L14_2)
            L12_2 = RemoveStats
            L13_2 = L1_2
            L14_2 = tostring
            L15_2 = L9_2
            L14_2 = L14_2(L15_2)
            L15_2 = L11_2
            L12_2(L13_2, L14_2, L15_2)
          else
            L11_2 = RemoveStats
            L12_2 = L1_2
            L13_2 = tostring
            L14_2 = L9_2
            L13_2 = L13_2(L14_2)
            L14_2 = L10_2
            L11_2(L12_2, L13_2, L14_2)
          end
        end
      else
        L4_2 = TriggerClientEvent
        L5_2 = "rtx_gym:Notify"
        L6_2 = L1_2
        L7_2 = Language
        L8_2 = Config
        L8_2 = L8_2.Language
        L7_2 = L7_2[L8_2]
        L7_2 = L7_2.noenergy
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = TriggerClientEvent
        L5_2 = "rrtx_gym:GymStop2"
        L6_2 = L1_2
        L4_2(L5_2, L6_2)
      end
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "rtx_gym:UpdateLung"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "rtx_gym:UpdateLung"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L0_2 = source
  L1_2 = playerneeds
  L1_2 = L1_2[L0_2]
  if nil ~= L1_2 then
    L1_2 = gymonetimedata
    L1_2 = L1_2[L0_2]
    if nil ~= L1_2 then
      L1_2 = gympassdata
      L1_2 = L1_2[L0_2]
      if nil ~= L1_2 then
        L1_2 = playersupplements
        L1_2 = L1_2[L0_2]
        if nil ~= L1_2 then
          goto lbl_21
        end
      end
    end
  end
  L1_2 = PlayerDataReformated
  L2_2 = L0_2
  L1_2(L2_2)
  ::lbl_21::
  L1_2 = true
  L2_2 = Config
  L2_2 = L2_2.Exercises
  L2_2 = L2_2.swimming
  L3_2 = Config
  L3_2 = L3_2.DifferentStatsSystem
  if false == L3_2 then
    L3_2 = pairs
    L4_2 = L2_2.statsneed
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = playerneeds
      L9_2 = L9_2[L0_2]
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
    L3_2 = pairs
    L4_2 = L2_2.statsadd
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = Config
      L9_2 = L9_2.DifferentStatsSystem
      if false == L9_2 then
        L9_2 = playerneeds
        L9_2 = L9_2[L0_2]
        L10_2 = tostring
        L11_2 = L7_2
        L10_2 = L10_2(L11_2)
        L9_2 = L9_2[L10_2]
        L10_2 = Config
        L10_2 = L10_2.StatsMaxData
        L11_2 = tostring
        L12_2 = L7_2
        L11_2 = L11_2(L12_2)
        L10_2 = L10_2[L11_2]
        L10_2 = L10_2.maxdata
        if L9_2 < L10_2 then
          L9_2 = CheckPlayerStatus
          L10_2 = L0_2
          L11_2 = tostring
          L12_2 = L7_2
          L11_2 = L11_2(L12_2)
          L12_2 = L8_2.adddata
          L9_2 = L9_2(L10_2, L11_2, L12_2)
          L10_2 = CheckSuplements
          L11_2 = L0_2
          L12_2 = L9_2
          L13_2 = "add"
          L10_2 = L10_2(L11_2, L12_2, L13_2)
          L11_2 = AddStats
          L12_2 = L0_2
          L13_2 = tostring
          L14_2 = L7_2
          L13_2 = L13_2(L14_2)
          L14_2 = L10_2
          L11_2(L12_2, L13_2, L14_2)
          L11_2 = Config
          L11_2 = L11_2.DisableIncreaseStatsNotify
          if false == L11_2 then
            L11_2 = TriggerClientEvent
            L12_2 = "rtx_gym:Notify"
            L13_2 = L0_2
            L14_2 = LanguageFile
            L15_2 = "statadd"
            L16_2 = Language
            L17_2 = Config
            L17_2 = L17_2.Language
            L16_2 = L16_2[L17_2]
            L17_2 = tostring
            L18_2 = L7_2
            L17_2 = L17_2(L18_2)
            L16_2 = L16_2[L17_2]
            L17_2 = round
            L18_2 = L10_2
            L19_2 = 2
            L17_2, L18_2, L19_2 = L17_2(L18_2, L19_2)
            L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
            L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
          end
        end
      else
        L9_2 = AddStats
        L10_2 = L0_2
        L11_2 = tostring
        L12_2 = L7_2
        L11_2 = L11_2(L12_2)
        L12_2 = L8_2.adddata
        L9_2(L10_2, L11_2, L12_2)
        L9_2 = Config
        L9_2 = L9_2.DisableIncreaseStatsNotify
        if false == L9_2 then
          L9_2 = TriggerClientEvent
          L10_2 = "rtx_gym:Notify"
          L11_2 = L0_2
          L12_2 = LanguageFile
          L13_2 = "statadd"
          L14_2 = Language
          L15_2 = Config
          L15_2 = L15_2.Language
          L14_2 = L14_2[L15_2]
          L15_2 = tostring
          L16_2 = L7_2
          L15_2 = L15_2(L16_2)
          L14_2 = L14_2[L15_2]
          L15_2 = round
          L16_2 = L8_2.adddata
          L17_2 = 2
          L15_2, L16_2, L17_2, L18_2, L19_2 = L15_2(L16_2, L17_2)
          L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
        end
      end
    end
    L3_2 = pairs
    L4_2 = L2_2.statsneedremove
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = Config
      L9_2 = L9_2.DifferentStatsSystem
      if false == L9_2 then
        L9_2 = CheckSuplements
        L10_2 = L0_2
        L11_2 = L8_2
        L12_2 = "remove"
        L9_2 = L9_2(L10_2, L11_2, L12_2)
        L10_2 = RemoveStats
        L11_2 = L0_2
        L12_2 = tostring
        L13_2 = L7_2
        L12_2 = L12_2(L13_2)
        L13_2 = L9_2
        L10_2(L11_2, L12_2, L13_2)
      else
        L9_2 = RemoveStats
        L10_2 = L0_2
        L11_2 = tostring
        L12_2 = L7_2
        L11_2 = L11_2(L12_2)
        L12_2 = L8_2
        L9_2(L10_2, L11_2, L12_2)
      end
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = Config
L0_1 = L0_1.ConditionIncreaseByNormalRunning
if L0_1 then
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:UpdateCondition"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:UpdateCondition"
  function L2_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
    L0_2 = source
    L1_2 = playerneeds
    L1_2 = L1_2[L0_2]
    if nil ~= L1_2 then
      L1_2 = gymonetimedata
      L1_2 = L1_2[L0_2]
      if nil ~= L1_2 then
        L1_2 = gympassdata
        L1_2 = L1_2[L0_2]
        if nil ~= L1_2 then
          L1_2 = playersupplements
          L1_2 = L1_2[L0_2]
          if nil ~= L1_2 then
            goto lbl_21
          end
        end
      end
    end
    L1_2 = PlayerDataReformated
    L2_2 = L0_2
    L1_2(L2_2)
    ::lbl_21::
    L1_2 = true
    L2_2 = Config
    L2_2 = L2_2.Exercises
    L2_2 = L2_2.run
    L3_2 = Config
    L3_2 = L3_2.DifferentStatsSystem
    if false == L3_2 then
      L3_2 = pairs
      L4_2 = L2_2.statsneed
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = playerneeds
        L9_2 = L9_2[L0_2]
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
      L3_2 = pairs
      L4_2 = L2_2.statsadd
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = Config
        L9_2 = L9_2.DifferentStatsSystem
        if false == L9_2 then
          L9_2 = playerneeds
          L9_2 = L9_2[L0_2]
          L10_2 = tostring
          L11_2 = L7_2
          L10_2 = L10_2(L11_2)
          L9_2 = L9_2[L10_2]
          L10_2 = Config
          L10_2 = L10_2.StatsMaxData
          L11_2 = tostring
          L12_2 = L7_2
          L11_2 = L11_2(L12_2)
          L10_2 = L10_2[L11_2]
          L10_2 = L10_2.maxdata
          if L9_2 < L10_2 then
            L9_2 = CheckPlayerStatus
            L10_2 = L0_2
            L11_2 = tostring
            L12_2 = L7_2
            L11_2 = L11_2(L12_2)
            L12_2 = L8_2.adddata
            L9_2 = L9_2(L10_2, L11_2, L12_2)
            L10_2 = CheckSuplements
            L11_2 = L0_2
            L12_2 = L9_2
            L13_2 = "add"
            L10_2 = L10_2(L11_2, L12_2, L13_2)
            L11_2 = AddStats
            L12_2 = L0_2
            L13_2 = tostring
            L14_2 = L7_2
            L13_2 = L13_2(L14_2)
            L14_2 = L10_2
            L11_2(L12_2, L13_2, L14_2)
            L11_2 = Config
            L11_2 = L11_2.DisableIncreaseStatsNotify
            if false == L11_2 then
              L11_2 = TriggerClientEvent
              L12_2 = "rtx_gym:Notify"
              L13_2 = L0_2
              L14_2 = LanguageFile
              L15_2 = "statadd"
              L16_2 = Language
              L17_2 = Config
              L17_2 = L17_2.Language
              L16_2 = L16_2[L17_2]
              L17_2 = tostring
              L18_2 = L7_2
              L17_2 = L17_2(L18_2)
              L16_2 = L16_2[L17_2]
              L17_2 = round
              L18_2 = L10_2
              L19_2 = 2
              L17_2, L18_2, L19_2 = L17_2(L18_2, L19_2)
              L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
              L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
            end
          end
        else
          L9_2 = AddStats
          L10_2 = L0_2
          L11_2 = tostring
          L12_2 = L7_2
          L11_2 = L11_2(L12_2)
          L12_2 = L8_2.adddata
          L9_2(L10_2, L11_2, L12_2)
          L9_2 = Config
          L9_2 = L9_2.DisableIncreaseStatsNotify
          if false == L9_2 then
            L9_2 = TriggerClientEvent
            L10_2 = "rtx_gym:Notify"
            L11_2 = L0_2
            L12_2 = LanguageFile
            L13_2 = "statadd"
            L14_2 = Language
            L15_2 = Config
            L15_2 = L15_2.Language
            L14_2 = L14_2[L15_2]
            L15_2 = tostring
            L16_2 = L7_2
            L15_2 = L15_2(L16_2)
            L14_2 = L14_2[L15_2]
            L15_2 = round
            L16_2 = L8_2.adddata
            L17_2 = 2
            L15_2, L16_2, L17_2, L18_2, L19_2 = L15_2(L16_2, L17_2)
            L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
            L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
          end
        end
      end
      L3_2 = pairs
      L4_2 = L2_2.statsneedremove
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = Config
        L9_2 = L9_2.DifferentStatsSystem
        if false == L9_2 then
          L9_2 = CheckSuplements
          L10_2 = L0_2
          L11_2 = L8_2
          L12_2 = "remove"
          L9_2 = L9_2(L10_2, L11_2, L12_2)
          L10_2 = RemoveStats
          L11_2 = L0_2
          L12_2 = tostring
          L13_2 = L7_2
          L12_2 = L12_2(L13_2)
          L13_2 = L9_2
          L10_2(L11_2, L12_2, L13_2)
        else
          L9_2 = RemoveStats
          L10_2 = L0_2
          L11_2 = tostring
          L12_2 = L7_2
          L11_2 = L11_2(L12_2)
          L12_2 = L8_2
          L9_2(L10_2, L11_2, L12_2)
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
end
L0_1 = RegisterServerEvent
L1_1 = "rtx_gym:GYMTYPESComplete"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "rtx_gym:GYMTYPESComplete"
function L2_1()
  local L0_2, L1_2
  L0_2 = source
  L1_2 = gymusing
  L1_2 = L1_2[L0_2]
  if nil ~= L1_2 then
    L1_2 = gymusing
    L1_2 = L1_2[L0_2]
    if true == L1_2 then
      L1_2 = gymusing
      L1_2[L0_2] = nil
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "rtx_gym:GYMComplete"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "rtx_gym:GYMComplete"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = source
  L3_2 = gymusing
  L3_2 = L3_2[L2_2]
  if nil ~= L3_2 then
    L3_2 = gymusing
    L3_2 = L3_2[L2_2]
    if true == L3_2 then
      L3_2 = Config
      L3_2 = L3_2.Gyms
      L3_2 = L3_2[A0_2]
      L3_2 = L3_2.exercises
      L3_2 = L3_2[A1_2]
      L4_2 = L3_2.status
      L4_2 = L4_2.taken
      if true == L4_2 then
        L4_2 = L3_2.status
        L4_2 = L4_2.takenplayerid
        if L4_2 == L2_2 then
          L4_2 = L3_2.status
          L4_2.taken = false
          L4_2 = L3_2.status
          L4_2.takenplayerid = nil
          L4_2 = TriggerClientEvent
          L5_2 = "rtx_gym:GymHandler"
          L6_2 = -1
          L7_2 = A0_2
          L8_2 = A1_2
          L9_2 = false
          L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
        end
      end
      L4_2 = gymusing
      L4_2[L2_2] = nil
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "rtx_gym:OpenGymPayMenu"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "rtx_gym:OpenGymPayMenu"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  if nil ~= A0_2 then
    L2_2 = Config
    L2_2 = L2_2.Gyms
    L2_2 = L2_2[A0_2]
    L3_2 = L2_2.gympayed
    if L3_2 then
      L3_2 = L2_2.gymowneable
      if L3_2 then
        L3_2 = Config
        L3_2 = L3_2.OwneableGyms
        if true == L3_2 then
          L3_2 = ownedgyms
          L3_2 = L3_2[A0_2]
          if nil ~= L3_2 then
            L3_2 = ownedgyms
            L3_2 = L3_2[A0_2]
            L3_2 = L3_2.gymclosed
            if false == L3_2 then
              L3_2 = TriggerClientEvent
              L4_2 = "rtx_gym:OpenGymPayMenuClient"
              L5_2 = L1_2
              L6_2 = A0_2
              L7_2 = L2_2.gymprice
              L3_2(L4_2, L5_2, L6_2, L7_2)
            else
              L3_2 = TriggerClientEvent
              L4_2 = "rtx_gym:Notify"
              L5_2 = L1_2
              L6_2 = Language
              L7_2 = Config
              L7_2 = L7_2.Language
              L6_2 = L6_2[L7_2]
              L6_2 = L6_2.gymisclosed
              L3_2(L4_2, L5_2, L6_2)
            end
          else
            L3_2 = TriggerClientEvent
            L4_2 = "rtx_gym:OpenGymPayMenuClient"
            L5_2 = L1_2
            L6_2 = A0_2
            L7_2 = L2_2.gymprice
            L3_2(L4_2, L5_2, L6_2, L7_2)
          end
      end
      else
        L3_2 = TriggerClientEvent
        L4_2 = "rtx_gym:OpenGymPayMenuClient"
        L5_2 = L1_2
        L6_2 = A0_2
        L7_2 = L2_2.gymprice
        L3_2(L4_2, L5_2, L6_2, L7_2)
      end
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "rtx_gym:OpenBuyGymMenu"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "rtx_gym:OpenBuyGymMenu"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  if nil ~= A0_2 then
    L2_2 = Config
    L2_2 = L2_2.Gyms
    L2_2 = L2_2[A0_2]
    L3_2 = L2_2.gymowneable
    if L3_2 then
      L3_2 = Config
      L3_2 = L3_2.OwneableGyms
      if true == L3_2 then
        L3_2 = ownedgyms
        L3_2 = L3_2[A0_2]
        if nil ~= L3_2 then
          L3_2 = ownedgyms
          L3_2 = L3_2[A0_2]
          L3_2 = L3_2.gymowned
          if false == L3_2 then
            L3_2 = TriggerClientEvent
            L4_2 = "rtx_gym:OpenBuyGymMenuClient"
            L5_2 = L1_2
            L6_2 = A0_2
            L7_2 = L2_2.gymowneableprice
            L3_2(L4_2, L5_2, L6_2, L7_2)
          end
        end
      end
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = Config
L0_1 = L0_1.Framework
if "esx" == L0_1 then
  L0_1 = Config
  L0_1 = L0_1.ESXFramework
  L0_1 = L0_1.newversion
  if true == L0_1 then
    L0_1 = exports
    L1_1 = Config
    L1_1 = L1_1.ESXFramework
    L1_1 = L1_1.resourcename
    L0_1 = L0_1[L1_1]
    L1_1 = L0_1
    L0_1 = L0_1.getSharedObject
    L0_1 = L0_1(L1_1)
    ESX = L0_1
  else
    L0_1 = TriggerEvent
    L1_1 = Config
    L1_1 = L1_1.ESXFramework
    L1_1 = L1_1.getsharedobject
    function L2_1(A0_2)
      local L1_2
      ESX = A0_2
    end
    L0_1(L1_1, L2_1)
  end
  function L0_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
    L1_2 = false
    L2_2 = {}
    L2_2.strenght = 0.0
    L2_2.condition = 0.0
    L2_2.swimming = 0.0
    L2_2.hygiene = 100.0
    L2_2.energy = 100.0
    while false == L1_2 do
      L3_2 = Wait
      L4_2 = 5
      L3_2(L4_2)
      L3_2 = MySQL
      L3_2 = L3_2.Async
      L3_2 = L3_2.fetchScalar
      L4_2 = "SELECT 1 FROM gymstats WHERE identifier = @identifier"
      L5_2 = {}
      L5_2["@identifier"] = A0_2
      function L6_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3
        if A0_3 then
          L1_3 = MySQL
          L1_3 = L1_3.Async
          L1_3 = L1_3.fetchScalar
          L2_3 = "SELECT stats FROM gymstats WHERE identifier = @identifier"
          L3_3 = {}
          L4_3 = A0_2
          L3_3["@identifier"] = L4_3
          function L4_3(A0_4)
            local L1_4, L2_4
            if A0_4 then
              L1_4 = json
              L1_4 = L1_4.decode
              L2_4 = A0_4
              L1_4 = L1_4(L2_4)
              L2_2 = L1_4
              L1_4 = true
              L1_2 = L1_4
            else
              L1_4 = true
              L1_2 = L1_4
            end
          end
          L1_3(L2_3, L3_3, L4_3)
        else
          L1_3 = MySQL
          L1_3 = L1_3.Async
          L1_3 = L1_3.execute
          L2_3 = "INSERT INTO gymstats (identifier, stats) VALUES (@identifier,@stats)"
          L3_3 = {}
          L4_3 = A0_2
          L3_3["@identifier"] = L4_3
          L4_3 = json
          L4_3 = L4_3.encode
          L5_3 = L2_2
          L4_3 = L4_3(L5_3)
          L3_3["@stats"] = L4_3
          function L4_3(A0_4)
            local L1_4
            L1_4 = true
            L1_2 = L1_4
          end
          L1_3(L2_3, L3_3, L4_3)
        end
      end
      L3_2(L4_2, L5_2, L6_2)
    end
    return L2_2
  end
  GymStatsData = L0_1
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:GymSynchronize"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:GymSynchronize"
  function L2_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
    L0_2 = source
    L1_2 = ESX
    L1_2 = L1_2.GetPlayerFromId
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = playerloaded
      L2_2 = L2_2[L0_2]
      if nil == L2_2 then
        L2_2 = TriggerClientEvent
        L3_2 = "rtx_gym:PlayerLoadedClient"
        L4_2 = L0_2
        L5_2 = true
        L2_2(L3_2, L4_2, L5_2)
        L2_2 = playerloaded
        L3_2 = GetPlayerIdentifierRTX
        L4_2 = L0_2
        L3_2 = L3_2(L4_2)
        L2_2[L0_2] = L3_2
        L2_2 = gymonetimedata
        L3_2 = {}
        L2_2[L0_2] = L3_2
        L2_2 = gympassdata
        L3_2 = {}
        L2_2[L0_2] = L3_2
        L2_2 = playersupplements
        L3_2 = {}
        L3_2.protein = nil
        L3_2.creatine = nil
        L3_2.preworkout = nil
        L3_2.testosterone = nil
        L2_2[L0_2] = L3_2
        L2_2 = GymStatsData
        L3_2 = GetPlayerIdentifierRTX
        L4_2 = L0_2
        L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L3_2(L4_2)
        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        L3_2 = Config
        L3_2 = L3_2.DifferentStatsSystem
        if false == L3_2 then
          L3_2 = playerneeds
          L3_2[L0_2] = L2_2
          L3_2 = Config
          L3_2 = L3_2.OwneableGyms
          if true == L3_2 then
            L3_2 = ipairs
            L4_2 = Config
            L4_2 = L4_2.Gyms
            L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
            for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
              L9_2 = L8_2.gymowneable
              if L9_2 then
                L9_2 = ownedgyms
                L9_2 = L9_2[L7_2]
                if nil ~= L9_2 then
                  L9_2 = TriggerClientEvent
                  L10_2 = "rtx_gym:SynchronizeOwnedGym"
                  L11_2 = L0_2
                  L12_2 = L7_2
                  L13_2 = ownedgyms
                  L13_2 = L13_2[L7_2]
                  L13_2 = L13_2.gymowned
                  L9_2(L10_2, L11_2, L12_2, L13_2)
                  L9_2 = ownedgyms
                  L9_2 = L9_2[L7_2]
                  L9_2 = L9_2.gymownedidentifier
                  L10_2 = GetPlayerIdentifierRTX
                  L11_2 = L0_2
                  L10_2 = L10_2(L11_2)
                  if L9_2 == L10_2 then
                    L9_2 = TriggerClientEvent
                    L10_2 = "rtx_gym:SynchronizeYourOwnedGym"
                    L11_2 = L0_2
                    L12_2 = L7_2
                    L13_2 = true
                    L9_2(L10_2, L11_2, L12_2, L13_2)
                  end
                end
              end
            end
          end
        else
          L3_2 = Config
          L3_2 = L3_2.OwneableGyms
          if true == L3_2 then
            L3_2 = ipairs
            L4_2 = Config
            L4_2 = L4_2.Gyms
            L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
            for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
              L9_2 = L8_2.gymowneable
              if L9_2 then
                L9_2 = ownedgyms
                L9_2 = L9_2[L7_2]
                if nil ~= L9_2 then
                  L9_2 = TriggerClientEvent
                  L10_2 = "rtx_gym:SynchronizeOwnedGym"
                  L11_2 = L0_2
                  L12_2 = L7_2
                  L13_2 = ownedgyms
                  L13_2 = L13_2[L7_2]
                  L13_2 = L13_2.gymowned
                  L9_2(L10_2, L11_2, L12_2, L13_2)
                  L9_2 = ownedgyms
                  L9_2 = L9_2[L7_2]
                  L9_2 = L9_2.gymownedidentifier
                  L10_2 = GetPlayerIdentifierRTX
                  L11_2 = L0_2
                  L10_2 = L10_2(L11_2)
                  if L9_2 == L10_2 then
                    L9_2 = TriggerClientEvent
                    L10_2 = "rtx_gym:SynchronizeYourOwnedGym"
                    L11_2 = L0_2
                    L12_2 = L7_2
                    L13_2 = true
                    L9_2(L10_2, L11_2, L12_2, L13_2)
                  end
                end
              end
            end
          end
        end
        L3_2 = Config
        L3_2 = L3_2.DifferentStatsSystem
        if false == L3_2 then
          L3_2 = TriggerClientEvent
          L4_2 = "rtx_gym:SynchronizeStats"
          L5_2 = L0_2
          L6_2 = playerneeds
          L6_2 = L6_2[L0_2]
          L3_2(L4_2, L5_2, L6_2)
        end
        L3_2 = ipairs
        L4_2 = Config
        L4_2 = L4_2.Gyms
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
          L9_2 = L8_2.gympayed
          if L9_2 then
            L9_2 = MySQL
            L9_2 = L9_2.Async
            L9_2 = L9_2.fetchScalar
            L10_2 = "SELECT gymtime FROM gympass WHERE identifier = @identifier AND gymid = @gymid "
            L11_2 = {}
            L12_2 = GetPlayerIdentifierRTX
            L13_2 = L0_2
            L12_2 = L12_2(L13_2)
            L11_2["@identifier"] = L12_2
            L11_2["@gymid"] = L7_2
            function L12_2(A0_3)
              local L1_3, L2_3
              if A0_3 then
                L1_3 = gympassdata
                L2_3 = L0_2
                L1_3 = L1_3[L2_3]
                L2_3 = L7_2
                L1_3[L2_3] = A0_3
              end
            end
            L9_2(L10_2, L11_2, L12_2)
          end
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:GymBuyEntry"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:GymBuyEntry"
  function L2_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
    L2_2 = source
    if nil ~= A0_2 then
      L3_2 = playerneeds
      L3_2 = L3_2[L2_2]
      if nil ~= L3_2 then
        L3_2 = gymonetimedata
        L3_2 = L3_2[L2_2]
        if nil ~= L3_2 then
          L3_2 = gympassdata
          L3_2 = L3_2[L2_2]
          if nil ~= L3_2 then
            L3_2 = playersupplements
            L3_2 = L3_2[L2_2]
            if nil ~= L3_2 then
              goto lbl_23
            end
          end
        end
      end
      L3_2 = PlayerDataReformated
      L4_2 = L2_2
      L3_2(L4_2)
      ::lbl_23::
      L3_2 = ESX
      L3_2 = L3_2.GetPlayerFromId
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L4_2 = Config
        L4_2 = L4_2.Gyms
        L4_2 = L4_2[A0_2]
        L5_2 = L4_2.gymowneable
        if L5_2 then
          L5_2 = Config
          L5_2 = L5_2.OwneableGyms
          if true == L5_2 then
            L5_2 = ownedgyms
            L5_2 = L5_2[A0_2]
            if nil ~= L5_2 then
              L5_2 = ownedgyms
              L5_2 = L5_2[A0_2]
              L6_2 = L5_2.gymclosed
              if false == L6_2 then
                L6_2 = 0
                if "normal" == A1_2 then
                  L6_2 = L4_2.gymprice
                elseif "pass" == A1_2 then
                  L7_2 = round
                  L8_2 = L4_2.gymprice
                  L9_2 = Config
                  L9_2 = L9_2.GymPassMultipler
                  L8_2 = L8_2 * L9_2
                  L9_2 = 0
                  L7_2 = L7_2(L8_2, L9_2)
                  L6_2 = L7_2
                end
                L7_2 = GetMoneyRTX
                L8_2 = L2_2
                L7_2 = L7_2(L8_2)
                if L6_2 <= L7_2 then
                  L7_2 = RemoveMoneyRTX
                  L8_2 = L2_2
                  L9_2 = L6_2
                  L7_2(L8_2, L9_2)
                  if "normal" == A1_2 then
                    L7_2 = TriggerClientEvent
                    L8_2 = "rtx_gym:Notify"
                    L9_2 = L2_2
                    L10_2 = LanguageFile
                    L11_2 = "youboughtentry"
                    L12_2 = L4_2.gymname
                    L13_2 = L4_2.gymtime
                    L14_2 = L6_2
                    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
                    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
                    L7_2 = L4_2.gymtime
                    L7_2 = 60 * L7_2
                    L8_2 = os
                    L8_2 = L8_2.time
                    L8_2 = L8_2()
                    L8_2 = L8_2 + L7_2
                    L9_2 = gymonetimedata
                    L9_2 = L9_2[L2_2]
                    if nil == L9_2 then
                      L9_2 = gymonetimedata
                      L10_2 = {}
                      L9_2[L2_2] = L10_2
                    end
                    L9_2 = gymonetimedata
                    L9_2 = L9_2[L2_2]
                    L9_2[A0_2] = L8_2
                  elseif "pass" == A1_2 then
                    L7_2 = TriggerClientEvent
                    L8_2 = "rtx_gym:Notify"
                    L9_2 = L2_2
                    L10_2 = LanguageFile
                    L11_2 = "youboughtpass"
                    L12_2 = L4_2.gymname
                    L13_2 = L4_2.gympassdays
                    L14_2 = L6_2
                    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
                    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
                    L7_2 = L4_2.gympassdays
                    L7_2 = 86400 * L7_2
                    L8_2 = os
                    L8_2 = L8_2.time
                    L8_2 = L8_2()
                    L8_2 = L8_2 + L7_2
                    L9_2 = MySQL
                    L9_2 = L9_2.Async
                    L9_2 = L9_2.fetchScalar
                    L10_2 = "SELECT 1 FROM gympass WHERE identifier = @identifier AND gymid = @gymid "
                    L11_2 = {}
                    L12_2 = GetPlayerIdentifierRTX
                    L13_2 = L2_2
                    L12_2 = L12_2(L13_2)
                    L11_2["@identifier"] = L12_2
                    L11_2["@gymid"] = A0_2
                    function L12_2(A0_3)
                      local L1_3, L2_3, L3_3, L4_3, L5_3
                      if A0_3 then
                        L1_3 = MySQL
                        L1_3 = L1_3.Sync
                        L1_3 = L1_3.execute
                        L2_3 = "UPDATE gympass SET gymtime = @gymtime WHERE identifier = @identifier AND gymid = @gymid"
                        L3_3 = {}
                        L4_3 = GetPlayerIdentifierRTX
                        L5_3 = L2_2
                        L4_3 = L4_3(L5_3)
                        L3_3["@identifier"] = L4_3
                        L4_3 = A0_2
                        L3_3["@gymid"] = L4_3
                        L4_3 = L8_2
                        L3_3["@gymtime"] = L4_3
                        L1_3(L2_3, L3_3)
                        L1_3 = gympassdata
                        L2_3 = L2_2
                        L1_3 = L1_3[L2_3]
                        if nil == L1_3 then
                          L1_3 = gympassdata
                          L2_3 = L2_2
                          L3_3 = {}
                          L1_3[L2_3] = L3_3
                        end
                        L1_3 = gympassdata
                        L2_3 = L2_2
                        L1_3 = L1_3[L2_3]
                        L2_3 = A0_2
                        L3_3 = L8_2
                        L1_3[L2_3] = L3_3
                      else
                        L1_3 = MySQL
                        L1_3 = L1_3.Async
                        L1_3 = L1_3.execute
                        L2_3 = "INSERT INTO gympass (identifier, gymid, gymtime) VALUES (@identifier,@gymid,@gymtime)"
                        L3_3 = {}
                        L4_3 = GetPlayerIdentifierRTX
                        L5_3 = L2_2
                        L4_3 = L4_3(L5_3)
                        L3_3["@identifier"] = L4_3
                        L4_3 = A0_2
                        L3_3["@gymid"] = L4_3
                        L4_3 = L8_2
                        L3_3["@gymtime"] = L4_3
                        function L4_3(A0_4)
                          local L1_4, L2_4, L3_4
                          L1_4 = gympassdata
                          L2_4 = L2_2
                          L1_4 = L1_4[L2_4]
                          if nil == L1_4 then
                            L1_4 = gympassdata
                            L2_4 = L2_2
                            L3_4 = {}
                            L1_4[L2_4] = L3_4
                          end
                          L1_4 = gympassdata
                          L2_4 = L2_2
                          L1_4 = L1_4[L2_4]
                          L2_4 = A0_2
                          L3_4 = L8_2
                          L1_4[L2_4] = L3_4
                        end
                        L1_3(L2_3, L3_3, L4_3)
                      end
                    end
                    L9_2(L10_2, L11_2, L12_2)
                  end
                  L7_2 = L5_2.gymbalance
                  L7_2 = L7_2 + L6_2
                  L5_2.gymbalance = L7_2
                  L7_2 = ownedgyms
                  L7_2 = L7_2[A0_2]
                  L7_2 = L7_2.gymvisitorsdata
                  L7_2 = #L7_2
                  if L7_2 > 0 then
                    L8_2 = ownedgyms
                    L8_2 = L8_2[A0_2]
                    L8_2 = L8_2.gymvisitorsdata
                    L8_2 = L8_2[L7_2]
                    L9_2 = os
                    L9_2 = L9_2.date
                    L10_2 = "*t"
                    L11_2 = ownedgyms
                    L11_2 = L11_2[A0_2]
                    L11_2 = L11_2.gymvisitorsdata
                    L11_2 = L11_2[L7_2]
                    L11_2 = L11_2.earningstime
                    L9_2 = L9_2(L10_2, L11_2)
                    L10_2 = os
                    L10_2 = L10_2.time
                    L10_2 = L10_2()
                    L11_2 = os
                    L11_2 = L11_2.date
                    L12_2 = "*t"
                    L13_2 = L10_2
                    L11_2 = L11_2(L12_2, L13_2)
                    L12_2 = L9_2.month
                    L13_2 = L11_2.month
                    if L12_2 == L13_2 then
                      L12_2 = L9_2.day
                      L13_2 = L11_2.day
                      if L12_2 == L13_2 then
                        L12_2 = L9_2.year
                        L13_2 = L11_2.year
                        if L12_2 == L13_2 then
                          L12_2 = ownedgyms
                          L12_2 = L12_2[A0_2]
                          L12_2 = L12_2.gymvisitorsdata
                          L12_2 = L12_2[L7_2]
                          L13_2 = ownedgyms
                          L13_2 = L13_2[A0_2]
                          L13_2 = L13_2.gymvisitorsdata
                          L13_2 = L13_2[L7_2]
                          L13_2 = L13_2.earningsvalue
                          L13_2 = L13_2 + L6_2
                          L12_2.earningsvalue = L13_2
                      end
                    end
                    else
                      L12_2 = L7_2 + 1
                      L13_2 = ownedgyms
                      L13_2 = L13_2[A0_2]
                      L13_2 = L13_2.gymvisitorsdata
                      L14_2 = {}
                      L15_2 = os
                      L15_2 = L15_2.time
                      L15_2 = L15_2()
                      L14_2.earningstime = L15_2
                      L14_2.earningsvalue = L6_2
                      L13_2[L12_2] = L14_2
                    end
                  else
                    L8_2 = L7_2 + 1
                    L9_2 = ownedgyms
                    L9_2 = L9_2[A0_2]
                    L9_2 = L9_2.gymvisitorsdata
                    L10_2 = {}
                    L11_2 = os
                    L11_2 = L11_2.time
                    L11_2 = L11_2()
                    L10_2.earningstime = L11_2
                    L10_2.earningsvalue = L6_2
                    L9_2[L8_2] = L10_2
                  end
                  L8_2 = MySQL
                  L8_2 = L8_2.Sync
                  L8_2 = L8_2.execute
                  L9_2 = "UPDATE owned_gyms SET gymbalance = @gymbalance, gymvisitorsdata = @gymvisitorsdata  WHERE gymid = @gymid"
                  L10_2 = {}
                  L10_2["@gymid"] = A0_2
                  L11_2 = L5_2.gymbalance
                  L10_2["@gymbalance"] = L11_2
                  L11_2 = json
                  L11_2 = L11_2.encode
                  L12_2 = L5_2.gymvisitorsdata
                  L11_2 = L11_2(L12_2)
                  L10_2["@gymvisitorsdata"] = L11_2
                  L8_2(L9_2, L10_2)
                else
                  L7_2 = TriggerClientEvent
                  L8_2 = "rtx_gym:Notify"
                  L9_2 = L2_2
                  L10_2 = Language
                  L11_2 = Config
                  L11_2 = L11_2.Language
                  L10_2 = L10_2[L11_2]
                  L10_2 = L10_2.nomoneyenough
                  L7_2(L8_2, L9_2, L10_2)
                end
              else
                L6_2 = TriggerClientEvent
                L7_2 = "rtx_gym:Notify"
                L8_2 = L2_2
                L9_2 = Language
                L10_2 = Config
                L10_2 = L10_2.Language
                L9_2 = L9_2[L10_2]
                L9_2 = L9_2.gymisclosed
                L6_2(L7_2, L8_2, L9_2)
              end
            end
        end
        else
          L5_2 = 0
          if "normal" == A1_2 then
            L5_2 = L4_2.gymprice
          elseif "pass" == A1_2 then
            L6_2 = round
            L7_2 = L4_2.gymprice
            L8_2 = Config
            L8_2 = L8_2.GymPassMultipler
            L7_2 = L7_2 * L8_2
            L8_2 = 0
            L6_2 = L6_2(L7_2, L8_2)
            L5_2 = L6_2
          end
          L6_2 = GetMoneyRTX
          L7_2 = L2_2
          L6_2 = L6_2(L7_2)
          if L5_2 <= L6_2 then
            L6_2 = RemoveMoneyRTX
            L7_2 = L2_2
            L8_2 = L5_2
            L6_2(L7_2, L8_2)
            if "normal" == A1_2 then
              L6_2 = TriggerClientEvent
              L7_2 = "rtx_gym:Notify"
              L8_2 = L2_2
              L9_2 = LanguageFile
              L10_2 = "youboughtentry"
              L11_2 = L4_2.gymname
              L12_2 = L4_2.gymtime
              L13_2 = L5_2
              L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
              L6_2 = L4_2.gymtime
              L6_2 = 60 * L6_2
              L7_2 = os
              L7_2 = L7_2.time
              L7_2 = L7_2()
              L7_2 = L7_2 + L6_2
              L8_2 = gymonetimedata
              L8_2 = L8_2[L2_2]
              if nil == L8_2 then
                L8_2 = gymonetimedata
                L9_2 = {}
                L8_2[L2_2] = L9_2
              end
              L8_2 = gymonetimedata
              L8_2 = L8_2[L2_2]
              L8_2[A0_2] = L7_2
            elseif "pass" == A1_2 then
              L6_2 = TriggerClientEvent
              L7_2 = "rtx_gym:Notify"
              L8_2 = L2_2
              L9_2 = LanguageFile
              L10_2 = "youboughtpass"
              L11_2 = L4_2.gymname
              L12_2 = L4_2.gympassdays
              L13_2 = L5_2
              L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
              L6_2 = L4_2.gympassdays
              L6_2 = 86400 * L6_2
              L7_2 = os
              L7_2 = L7_2.time
              L7_2 = L7_2()
              L7_2 = L7_2 + L6_2
              L8_2 = MySQL
              L8_2 = L8_2.Async
              L8_2 = L8_2.fetchScalar
              L9_2 = "SELECT 1 FROM gympass WHERE identifier = @identifier AND gymid = @gymid "
              L10_2 = {}
              L11_2 = GetPlayerIdentifierRTX
              L12_2 = L2_2
              L11_2 = L11_2(L12_2)
              L10_2["@identifier"] = L11_2
              L10_2["@gymid"] = A0_2
              function L11_2(A0_3)
                local L1_3, L2_3, L3_3, L4_3, L5_3
                if A0_3 then
                  L1_3 = MySQL
                  L1_3 = L1_3.Sync
                  L1_3 = L1_3.execute
                  L2_3 = "UPDATE gympass SET gymtime = @gymtime WHERE identifier = @identifier AND gymid = @gymid"
                  L3_3 = {}
                  L4_3 = GetPlayerIdentifierRTX
                  L5_3 = L2_2
                  L4_3 = L4_3(L5_3)
                  L3_3["@identifier"] = L4_3
                  L4_3 = A0_2
                  L3_3["@gymid"] = L4_3
                  L4_3 = L7_2
                  L3_3["@gymtime"] = L4_3
                  L1_3(L2_3, L3_3)
                  L1_3 = gympassdata
                  L2_3 = L2_2
                  L1_3 = L1_3[L2_3]
                  if nil == L1_3 then
                    L1_3 = gympassdata
                    L2_3 = L2_2
                    L3_3 = {}
                    L1_3[L2_3] = L3_3
                  end
                  L1_3 = gympassdata
                  L2_3 = L2_2
                  L1_3 = L1_3[L2_3]
                  L2_3 = A0_2
                  L3_3 = L7_2
                  L1_3[L2_3] = L3_3
                else
                  L1_3 = MySQL
                  L1_3 = L1_3.Async
                  L1_3 = L1_3.execute
                  L2_3 = "INSERT INTO gympass (identifier, gymid, gymtime) VALUES (@identifier,@gymid,@gymtime)"
                  L3_3 = {}
                  L4_3 = GetPlayerIdentifierRTX
                  L5_3 = L2_2
                  L4_3 = L4_3(L5_3)
                  L3_3["@identifier"] = L4_3
                  L4_3 = A0_2
                  L3_3["@gymid"] = L4_3
                  L4_3 = L7_2
                  L3_3["@gymtime"] = L4_3
                  function L4_3(A0_4)
                    local L1_4, L2_4, L3_4
                    L1_4 = gympassdata
                    L2_4 = L2_2
                    L1_4 = L1_4[L2_4]
                    if nil == L1_4 then
                      L1_4 = gympassdata
                      L2_4 = L2_2
                      L3_4 = {}
                      L1_4[L2_4] = L3_4
                    end
                    L1_4 = gympassdata
                    L2_4 = L2_2
                    L1_4 = L1_4[L2_4]
                    L2_4 = A0_2
                    L3_4 = L7_2
                    L1_4[L2_4] = L3_4
                  end
                  L1_3(L2_3, L3_3, L4_3)
                end
              end
              L8_2(L9_2, L10_2, L11_2)
            end
          else
            L6_2 = TriggerClientEvent
            L7_2 = "rtx_gym:Notify"
            L8_2 = L2_2
            L9_2 = Language
            L10_2 = Config
            L10_2 = L10_2.Language
            L9_2 = L9_2[L10_2]
            L9_2 = L9_2.nomoneyenough
            L6_2(L7_2, L8_2, L9_2)
          end
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:GymBuy"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:GymBuy"
  function L2_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
    L1_2 = source
    if nil ~= A0_2 then
      L2_2 = playerneeds
      L2_2 = L2_2[L1_2]
      if nil ~= L2_2 then
        L2_2 = gymonetimedata
        L2_2 = L2_2[L1_2]
        if nil ~= L2_2 then
          L2_2 = gympassdata
          L2_2 = L2_2[L1_2]
          if nil ~= L2_2 then
            L2_2 = playersupplements
            L2_2 = L2_2[L1_2]
            if nil ~= L2_2 then
              goto lbl_23
            end
          end
        end
      end
      L2_2 = PlayerDataReformated
      L3_2 = L1_2
      L2_2(L3_2)
      ::lbl_23::
      L2_2 = ESX
      L2_2 = L2_2.GetPlayerFromId
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L3_2 = Config
        L3_2 = L3_2.Gyms
        L3_2 = L3_2[A0_2]
        L4_2 = L3_2.gymowneable
        if L4_2 then
          L4_2 = Config
          L4_2 = L4_2.OwneableGyms
          if true == L4_2 then
            L4_2 = ownedgyms
            L4_2 = L4_2[A0_2]
            if nil ~= L4_2 then
              L4_2 = ownedgyms
              L4_2 = L4_2[A0_2]
              L5_2 = L4_2.gymowned
              if false == L5_2 then
                L5_2 = GetMoneyRTX
                L6_2 = L1_2
                L5_2 = L5_2(L6_2)
                L6_2 = L3_2.gymowneableprice
                if L5_2 >= L6_2 then
                  L5_2 = RemoveMoneyRTX
                  L6_2 = L1_2
                  L7_2 = L3_2.gymowneableprice
                  L5_2(L6_2, L7_2)
                  L4_2.gymowned = true
                  L5_2 = TriggerClientEvent
                  L6_2 = "rtx_gym:SynchronizeOwnedGym"
                  L7_2 = -1
                  L8_2 = A0_2
                  L9_2 = true
                  L5_2(L6_2, L7_2, L8_2, L9_2)
                  L5_2 = TriggerClientEvent
                  L6_2 = "rtx_gym:SynchronizeYourOwnedGym"
                  L7_2 = L1_2
                  L8_2 = A0_2
                  L9_2 = true
                  L5_2(L6_2, L7_2, L8_2, L9_2)
                  L5_2 = TriggerClientEvent
                  L6_2 = "rtx_gym:GymBuyed"
                  L7_2 = -1
                  L8_2 = A0_2
                  L5_2(L6_2, L7_2, L8_2)
                  L4_2.gymowned = true
                  L5_2 = GetPlayerIdentifierRTX
                  L6_2 = L1_2
                  L5_2 = L5_2(L6_2)
                  L4_2.gymownedidentifier = L5_2
                  L5_2 = TriggerClientEvent
                  L6_2 = "rtx_gym:Notify"
                  L7_2 = L1_2
                  L8_2 = LanguageFile
                  L9_2 = "youboughtgym"
                  L10_2 = L3_2.gymname
                  L11_2 = L3_2.gymowneableprice
                  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2)
                  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
                  L5_2 = MySQL
                  L5_2 = L5_2.Async
                  L5_2 = L5_2.fetchScalar
                  L6_2 = "SELECT 1 FROM owned_gyms WHERE gymid = @gymid "
                  L7_2 = {}
                  L7_2["@gymid"] = A0_2
                  function L8_2(A0_3)
                    local L1_3, L2_3, L3_3, L4_3, L5_3
                    if A0_3 then
                      L1_3 = MySQL
                      L1_3 = L1_3.Sync
                      L1_3 = L1_3.execute
                      L2_3 = "UPDATE owned_gyms SET identifier = @identifier WHERE gymid = @gymid"
                      L3_3 = {}
                      L4_3 = GetPlayerIdentifierRTX
                      L5_3 = L1_2
                      L4_3 = L4_3(L5_3)
                      L3_3["@identifier"] = L4_3
                      L4_3 = A0_2
                      L3_3["@gymid"] = L4_3
                      L1_3(L2_3, L3_3)
                    else
                      L1_3 = MySQL
                      L1_3 = L1_3.Async
                      L1_3 = L1_3.execute
                      L2_3 = "INSERT INTO owned_gyms (identifier, gymid, gymprice, gymbalance, gymvisitorsdata) VALUES (@identifier,@gymid,@gymprice,@gymbalance,@gymvisitorsdata)"
                      L3_3 = {}
                      L4_3 = GetPlayerIdentifierRTX
                      L5_3 = L1_2
                      L4_3 = L4_3(L5_3)
                      L3_3["@identifier"] = L4_3
                      L4_3 = A0_2
                      L3_3["@gymid"] = L4_3
                      L4_3 = L3_2.gymprice
                      L3_3["@gymprice"] = L4_3
                      L3_3["@gymbalance"] = 0
                      L4_3 = json
                      L4_3 = L4_3.encode
                      L5_3 = {}
                      L4_3 = L4_3(L5_3)
                      L3_3["@gymvisitorsdata"] = L4_3
                      function L4_3(A0_4)
                        local L1_4
                      end
                      L1_3(L2_3, L3_3, L4_3)
                    end
                  end
                  L5_2(L6_2, L7_2, L8_2)
                else
                  L5_2 = TriggerClientEvent
                  L6_2 = "rtx_gym:Notify"
                  L7_2 = L1_2
                  L8_2 = Language
                  L9_2 = Config
                  L9_2 = L9_2.Language
                  L8_2 = L8_2[L9_2]
                  L8_2 = L8_2.nomoneyenoughgym
                  L5_2(L6_2, L7_2, L8_2)
                end
              end
            end
          end
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:GymOpenManagment"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:GymOpenManagment"
  function L2_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
    L1_2 = source
    if nil ~= A0_2 then
      L2_2 = Config
      L2_2 = L2_2.Gyms
      L2_2 = L2_2[A0_2]
      L3_2 = L2_2.gymowneable
      if L3_2 then
        L3_2 = Config
        L3_2 = L3_2.OwneableGyms
        if true == L3_2 then
          L3_2 = ESX
          L3_2 = L3_2.GetPlayerFromId
          L4_2 = L1_2
          L3_2 = L3_2(L4_2)
          if L3_2 then
            L4_2 = ownedgyms
            L4_2 = L4_2[A0_2]
            L4_2 = L4_2.gymownedidentifier
            L5_2 = GetPlayerIdentifierRTX
            L6_2 = L1_2
            L5_2 = L5_2(L6_2)
            if L4_2 == L5_2 then
              L4_2 = ownedgyms
              L4_2 = L4_2[A0_2]
              L5_2 = {}
              L6_2 = ipairs
              L7_2 = L4_2.gymvisitorsdata
              L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
              for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
                L12_2 = os
                L12_2 = L12_2.date
                L13_2 = "*t"
                L14_2 = L11_2.earningstime
                L12_2 = L12_2(L13_2, L14_2)
                L13_2 = table
                L13_2 = L13_2.insert
                L14_2 = L5_2
                L15_2 = {}
                L16_2 = ""
                L17_2 = L12_2.day
                L18_2 = "."
                L19_2 = L12_2.month
                L20_2 = ""
                L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2
                L15_2.earningstime = L16_2
                L16_2 = L11_2.earningsvalue
                L15_2.earningsvalue = L16_2
                L13_2(L14_2, L15_2)
              end
              L6_2 = TriggerClientEvent
              L7_2 = "rtx_gym:OpenGymMenu"
              L8_2 = L1_2
              L9_2 = A0_2
              L10_2 = L4_2.gymbalance
              L11_2 = L4_2.gymclosed
              L12_2 = L2_2.gymprice
              L13_2 = L5_2
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
            end
          end
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:ChangeEntryPrice"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:ChangeEntryPrice"
  function L2_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
    L2_2 = source
    if nil ~= A0_2 then
      L3_2 = Config
      L3_2 = L3_2.Gyms
      L3_2 = L3_2[A0_2]
      L4_2 = L3_2.gymowneable
      if L4_2 then
        L4_2 = Config
        L4_2 = L4_2.OwneableGyms
        if true == L4_2 then
          L4_2 = ESX
          L4_2 = L4_2.GetPlayerFromId
          L5_2 = L2_2
          L4_2 = L4_2(L5_2)
          if L4_2 then
            L5_2 = ownedgyms
            L5_2 = L5_2[A0_2]
            L5_2 = L5_2.gymownedidentifier
            L6_2 = GetPlayerIdentifierRTX
            L7_2 = L2_2
            L6_2 = L6_2(L7_2)
            if L5_2 == L6_2 then
              L5_2 = ownedgyms
              L5_2 = L5_2[A0_2]
              if A1_2 > 0 then
                L6_2 = Config
                L6_2 = L6_2.GymMaxPrice
                if A1_2 <= L6_2 then
                  L3_2.gymprice = A1_2
                  L6_2 = MySQL
                  L6_2 = L6_2.Sync
                  L6_2 = L6_2.execute
                  L7_2 = "UPDATE owned_gyms SET gymprice = @gymprice WHERE gymid = @gymid"
                  L8_2 = {}
                  L8_2["@gymid"] = A0_2
                  L8_2["@gymprice"] = A1_2
                  L6_2(L7_2, L8_2)
                  L6_2 = TriggerClientEvent
                  L7_2 = "rtx_gym:Notify"
                  L8_2 = L2_2
                  L9_2 = LanguageFile
                  L10_2 = "youchangedgymentry"
                  L11_2 = A1_2
                  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2)
                  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
                  L6_2 = TriggerClientEvent
                  L7_2 = "rtx_gym:GymMenuUpdate"
                  L8_2 = L2_2
                  L9_2 = A0_2
                  L10_2 = L5_2.gymbalance
                  L11_2 = L5_2.gymclosed
                  L12_2 = L3_2.gymprice
                  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
              end
              else
                L6_2 = TriggerClientEvent
                L7_2 = "rtx_gym:Notify"
                L8_2 = L2_2
                L9_2 = LanguageFile
                L10_2 = "minimumentryamount"
                L11_2 = Config
                L11_2 = L11_2.GymMaxPrice
                L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2)
                L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
              end
            end
          end
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:ManagmentWithdraw"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:ManagmentWithdraw"
  function L2_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
    L1_2 = source
    if nil ~= A0_2 then
      L2_2 = Config
      L2_2 = L2_2.Gyms
      L2_2 = L2_2[A0_2]
      L3_2 = L2_2.gymowneable
      if L3_2 then
        L3_2 = Config
        L3_2 = L3_2.OwneableGyms
        if true == L3_2 then
          L3_2 = ESX
          L3_2 = L3_2.GetPlayerFromId
          L4_2 = L1_2
          L3_2 = L3_2(L4_2)
          if L3_2 then
            L4_2 = ownedgyms
            L4_2 = L4_2[A0_2]
            L4_2 = L4_2.gymownedidentifier
            L5_2 = GetPlayerIdentifierRTX
            L6_2 = L1_2
            L5_2 = L5_2(L6_2)
            if L4_2 == L5_2 then
              L4_2 = ownedgyms
              L4_2 = L4_2[A0_2]
              L5_2 = L4_2.gymbalance
              if L5_2 > 0 then
                L5_2 = TriggerClientEvent
                L6_2 = "rtx_gym:Notify"
                L7_2 = L1_2
                L8_2 = LanguageFile
                L9_2 = "youwithdraw"
                L10_2 = L4_2.gymbalance
                L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2)
                L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
                L5_2 = AddMoneyRTX
                L6_2 = L1_2
                L7_2 = L4_2.gymbalance
                L5_2(L6_2, L7_2)
                L4_2.gymbalance = 0
                L5_2 = MySQL
                L5_2 = L5_2.Sync
                L5_2 = L5_2.execute
                L6_2 = "UPDATE owned_gyms SET gymbalance = @gymbalance WHERE gymid = @gymid"
                L7_2 = {}
                L7_2["@gymid"] = A0_2
                L7_2["@gymbalance"] = 0
                L5_2(L6_2, L7_2)
                L5_2 = TriggerClientEvent
                L6_2 = "rtx_gym:GymMenuUpdate"
                L7_2 = L1_2
                L8_2 = A0_2
                L9_2 = L4_2.gymbalance
                L10_2 = L4_2.gymclosed
                L11_2 = L2_2.gymprice
                L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
              else
                L5_2 = TriggerClientEvent
                L6_2 = "rtx_gym:Notify"
                L7_2 = L1_2
                L8_2 = Language
                L9_2 = Config
                L9_2 = L9_2.Language
                L8_2 = L8_2[L9_2]
                L8_2 = L8_2.nomoneywithdraw
                L5_2(L6_2, L7_2, L8_2)
              end
            end
          end
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:CloseStatus"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:CloseStatus"
  function L2_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
    L2_2 = source
    if nil ~= A0_2 then
      L3_2 = Config
      L3_2 = L3_2.Gyms
      L3_2 = L3_2[A0_2]
      L4_2 = L3_2.gymowneable
      if L4_2 then
        L4_2 = Config
        L4_2 = L4_2.OwneableGyms
        if true == L4_2 then
          L4_2 = ESX
          L4_2 = L4_2.GetPlayerFromId
          L5_2 = L2_2
          L4_2 = L4_2(L5_2)
          if L4_2 then
            L5_2 = ownedgyms
            L5_2 = L5_2[A0_2]
            L5_2 = L5_2.gymownedidentifier
            L6_2 = GetPlayerIdentifierRTX
            L7_2 = L2_2
            L6_2 = L6_2(L7_2)
            if L5_2 == L6_2 then
              L5_2 = ownedgyms
              L5_2 = L5_2[A0_2]
              L5_2.gymclosed = A1_2
              if A1_2 then
                L6_2 = TriggerClientEvent
                L7_2 = "rtx_gym:Notify"
                L8_2 = L2_2
                L9_2 = Language
                L10_2 = Config
                L10_2 = L10_2.Language
                L9_2 = L9_2[L10_2]
                L9_2 = L9_2.yourgymclosed
                L6_2(L7_2, L8_2, L9_2)
                L6_2 = TriggerClientEvent
                L7_2 = "rtx_gym:GymStop"
                L8_2 = -1
                L9_2 = A0_2
                L10_2 = "closed"
                L6_2(L7_2, L8_2, L9_2, L10_2)
              else
                L6_2 = TriggerClientEvent
                L7_2 = "rtx_gym:Notify"
                L8_2 = L2_2
                L9_2 = Language
                L10_2 = Config
                L10_2 = L10_2.Language
                L9_2 = L9_2[L10_2]
                L9_2 = L9_2.yourgymopened
                L6_2(L7_2, L8_2, L9_2)
              end
              L6_2 = MySQL
              L6_2 = L6_2.Sync
              L6_2 = L6_2.execute
              L7_2 = "UPDATE owned_gyms SET gymclosed = @gymclosed WHERE gymid = @gymid"
              L8_2 = {}
              L8_2["@gymid"] = A0_2
              L8_2["@gymclosed"] = A1_2
              L6_2(L7_2, L8_2)
              L6_2 = TriggerClientEvent
              L7_2 = "rtx_gym:GymMenuUpdate"
              L8_2 = L2_2
              L9_2 = A0_2
              L10_2 = L5_2.gymbalance
              L11_2 = L5_2.gymclosed
              L12_2 = L3_2.gymprice
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
            end
          end
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:SellGym"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:SellGym"
  function L2_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
    L1_2 = source
    if nil ~= A0_2 then
      L2_2 = Config
      L2_2 = L2_2.Gyms
      L2_2 = L2_2[A0_2]
      L3_2 = L2_2.gymowneable
      if L3_2 then
        L3_2 = Config
        L3_2 = L3_2.OwneableGyms
        if true == L3_2 then
          L3_2 = ESX
          L3_2 = L3_2.GetPlayerFromId
          L4_2 = L1_2
          L3_2 = L3_2(L4_2)
          if L3_2 then
            L4_2 = ownedgyms
            L4_2 = L4_2[A0_2]
            L4_2 = L4_2.gymownedidentifier
            L5_2 = GetPlayerIdentifierRTX
            L6_2 = L1_2
            L5_2 = L5_2(L6_2)
            if L4_2 == L5_2 then
              L4_2 = round
              L5_2 = L2_2.gymowneableprice
              L6_2 = Config
              L6_2 = L6_2.GymSellMultipler
              L5_2 = L5_2 * L6_2
              L6_2 = 0
              L4_2 = L4_2(L5_2, L6_2)
              L5_2 = ownedgyms
              L5_2 = L5_2[A0_2]
              L5_2.gymownedidentifier = ""
              L6_2 = TriggerClientEvent
              L7_2 = "rtx_gym:Notify"
              L8_2 = L1_2
              L9_2 = LanguageFile
              L10_2 = "yousoldgym"
              L11_2 = L4_2
              L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
              L6_2 = AddMoneyRTX
              L7_2 = L1_2
              L8_2 = L4_2
              L6_2(L7_2, L8_2)
              L6_2 = TriggerClientEvent
              L7_2 = "rtx_gym:SynchronizeYourOwnedGym"
              L8_2 = L1_2
              L9_2 = A0_2
              L10_2 = false
              L6_2(L7_2, L8_2, L9_2, L10_2)
              L6_2 = MySQL
              L6_2 = L6_2.Async
              L6_2 = L6_2.execute
              L7_2 = "DELETE FROM owned_gyms WHERE gymid = @gymid"
              L8_2 = {}
              L8_2["@gymid"] = A0_2
              function L9_2(A0_3)
                local L1_3, L2_3, L3_3, L4_3, L5_3
                L5_2.gymowned = false
                L5_2.gymbalance = 0
                L1_3 = Config
                L1_3 = L1_3.GymMaxPrice
                L2_2.gymprice = L1_3
                L5_2.gymclosed = false
                L1_3 = TriggerClientEvent
                L2_3 = "rtx_gym:SynchronizeOwnedGym"
                L3_3 = -1
                L4_3 = A0_2
                L5_3 = false
                L1_3(L2_3, L3_3, L4_3, L5_3)
              end
              L6_2(L7_2, L8_2, L9_2)
            end
          end
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:TransferGym"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:TransferGym"
  function L2_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
    L2_2 = source
    if nil ~= A0_2 then
      L3_2 = Config
      L3_2 = L3_2.Gyms
      L3_2 = L3_2[A0_2]
      L4_2 = L3_2.gymowneable
      if L4_2 then
        L4_2 = Config
        L4_2 = L4_2.OwneableGyms
        if true == L4_2 then
          L4_2 = ESX
          L4_2 = L4_2.GetPlayerFromId
          L5_2 = L2_2
          L4_2 = L4_2(L5_2)
          L5_2 = ESX
          L5_2 = L5_2.GetPlayerFromId
          L6_2 = A1_2
          L5_2 = L5_2(L6_2)
          if L4_2 and L5_2 then
            L6_2 = ownedgyms
            L6_2 = L6_2[A0_2]
            L6_2 = L6_2.gymownedidentifier
            L7_2 = GetPlayerIdentifierRTX
            L8_2 = L2_2
            L7_2 = L7_2(L8_2)
            if L6_2 == L7_2 then
              L6_2 = L3_2.gymowneableprice
              L7_2 = Config
              L7_2 = L7_2.GymSellMultipler
              L6_2 = L6_2 * L7_2
              L7_2 = ownedgyms
              L7_2 = L7_2[A0_2]
              L8_2 = GetPlayerIdentifierRTX
              L9_2 = A1_2
              L8_2 = L8_2(L9_2)
              L7_2.gymownedidentifier = L8_2
              L8_2 = TriggerClientEvent
              L9_2 = "rtx_gym:Notify"
              L10_2 = L2_2
              L11_2 = Language
              L12_2 = Config
              L12_2 = L12_2.Language
              L11_2 = L11_2[L12_2]
              L11_2 = L11_2.youtransfergym
              L8_2(L9_2, L10_2, L11_2)
              L8_2 = TriggerClientEvent
              L9_2 = "rtx_gym:Notify"
              L10_2 = L2_2
              L11_2 = LanguageFile
              L12_2 = "gymtransferredto"
              L13_2 = L3_2.gymname
              L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
              L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
              L8_2 = TriggerClientEvent
              L9_2 = "rtx_gym:SynchronizeYourOwnedGym"
              L10_2 = L2_2
              L11_2 = A0_2
              L12_2 = false
              L8_2(L9_2, L10_2, L11_2, L12_2)
              L8_2 = TriggerClientEvent
              L9_2 = "rtx_gym:SynchronizeYourOwnedGym"
              L10_2 = A1_2
              L11_2 = A0_2
              L12_2 = true
              L8_2(L9_2, L10_2, L11_2, L12_2)
              L8_2 = MySQL
              L8_2 = L8_2.Sync
              L8_2 = L8_2.execute
              L9_2 = "UPDATE owned_gyms SET identifier = @identifier WHERE gymid = @gymid"
              L10_2 = {}
              L11_2 = GetPlayerIdentifierRTX
              L12_2 = A1_2
              L11_2 = L11_2(L12_2)
              L10_2["@identifier"] = L11_2
              L10_2["@gymid"] = A0_2
              L8_2(L9_2, L10_2)
            end
          end
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = Config
  L0_1 = L0_1.DifferentStatsSystem
  if false == L0_1 then
    L0_1 = AddEventHandler
    L1_1 = "playerDropped"
    function L2_1()
      local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
      L0_2 = source
      L1_2 = playerneeds
      L1_2 = L1_2[L0_2]
      if nil ~= L1_2 then
        L1_2 = playerloaded
        L1_2 = L1_2[L0_2]
        if nil ~= L1_2 then
          L1_2 = MySQL
          L1_2 = L1_2.Async
          L1_2 = L1_2.fetchScalar
          L2_2 = "SELECT 1 FROM gymstats WHERE identifier = @identifier"
          L3_2 = {}
          L4_2 = playerloaded
          L4_2 = L4_2[L0_2]
          L3_2["@identifier"] = L4_2
          function L4_2(A0_3)
            local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
            if A0_3 then
              L1_3 = MySQL
              L1_3 = L1_3.Sync
              L1_3 = L1_3.execute
              L2_3 = "UPDATE gymstats SET stats = @stats WHERE identifier = @identifier"
              L3_3 = {}
              L4_3 = playerloaded
              L5_3 = L0_2
              L4_3 = L4_3[L5_3]
              L3_3["@identifier"] = L4_3
              L4_3 = json
              L4_3 = L4_3.encode
              L5_3 = playerneeds
              L6_3 = L0_2
              L5_3 = L5_3[L6_3]
              L4_3 = L4_3(L5_3)
              L3_3["@stats"] = L4_3
              L1_3(L2_3, L3_3)
            end
          end
          L1_2(L2_2, L3_2, L4_2)
        end
      end
      L1_2 = gymusing
      L1_2 = L1_2[L0_2]
      if nil ~= L1_2 then
        L1_2 = gymusing
        L1_2 = L1_2[L0_2]
        if true == L1_2 then
          L1_2 = ipairs
          L2_2 = Config
          L2_2 = L2_2.Gyms
          L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
          for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
            L7_2 = ipairs
            L8_2 = L6_2.exercises
            L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
            for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
              L13_2 = L12_2.status
              L13_2 = L13_2.taken
              if true == L13_2 then
                L13_2 = L12_2.status
                L13_2 = L13_2.takenplayerid
                if L13_2 == L0_2 then
                  L13_2 = L12_2.status
                  L13_2.taken = false
                  L13_2 = L12_2.status
                  L13_2.takenplayerid = nil
                  L13_2 = TriggerClientEvent
                  L14_2 = "rtx_gym:GymHandler"
                  L15_2 = -1
                  L16_2 = L5_2
                  L17_2 = L11_2
                  L18_2 = false
                  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
                end
              end
            end
          end
        end
      end
    end
    L0_1(L1_1, L2_1)
    function L0_1(A0_2)
      local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
      L1_2 = playerneeds
      L1_2 = L1_2[A0_2]
      if nil ~= L1_2 then
        L1_2 = ESX
        L1_2 = L1_2.GetPlayerFromId
        L2_2 = A0_2
        L1_2 = L1_2(L2_2)
        if L1_2 then
          L2_2 = MySQL
          L2_2 = L2_2.Async
          L2_2 = L2_2.fetchScalar
          L3_2 = "SELECT 1 FROM gymstats WHERE identifier = @identifier"
          L4_2 = {}
          L5_2 = GetPlayerIdentifierRTX
          L6_2 = A0_2
          L5_2 = L5_2(L6_2)
          L4_2["@identifier"] = L5_2
          function L5_2(A0_3)
            local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
            if A0_3 then
              L1_3 = MySQL
              L1_3 = L1_3.Sync
              L1_3 = L1_3.execute
              L2_3 = "UPDATE gymstats SET stats = @stats WHERE identifier = @identifier"
              L3_3 = {}
              L4_3 = GetPlayerIdentifierRTX
              L5_3 = A0_2
              L4_3 = L4_3(L5_3)
              L3_3["@identifier"] = L4_3
              L4_3 = json
              L4_3 = L4_3.encode
              L5_3 = playerneeds
              L6_3 = A0_2
              L5_3 = L5_3[L6_3]
              L4_3 = L4_3(L5_3)
              L3_3["@stats"] = L4_3
              L1_3(L2_3, L3_3)
            end
          end
          L2_2(L3_2, L4_2, L5_2)
        end
      end
    end
    SavePlayer = L0_1
  end
end
L0_1 = Config
L0_1 = L0_1.Framework
if "qbcore" == L0_1 then
  L0_1 = exports
  L1_1 = Config
  L1_1 = L1_1.QBCoreFrameworkResourceName
  L0_1 = L0_1[L1_1]
  L1_1 = L0_1
  L0_1 = L0_1.GetCoreObject
  L0_1 = L0_1(L1_1)
  QBCore = L0_1
  L0_1 = AddEventHandler
  L1_1 = "QBCore:Server:OnPlayerUnload"
  function L2_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2
    L1_2 = playerloaded
    L1_2[A0_2] = nil
    L1_2 = TriggerClientEvent
    L2_2 = "rtx_gym:PlayerLoadedClient"
    L3_2 = A0_2
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
  end
  L0_1(L1_1, L2_1)
  function L0_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
    L1_2 = false
    L2_2 = {}
    L2_2.strenght = 0.0
    L2_2.condition = 0.0
    L2_2.swimming = 0.0
    L2_2.hygiene = 100.0
    L2_2.energy = 100.0
    while false == L1_2 do
      L3_2 = Wait
      L4_2 = 5
      L3_2(L4_2)
      L3_2 = MySQL
      L3_2 = L3_2.Async
      L3_2 = L3_2.fetchScalar
      L4_2 = "SELECT 1 FROM gymstats WHERE identifier = @identifier"
      L5_2 = {}
      L5_2["@identifier"] = A0_2
      function L6_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3
        if A0_3 then
          L1_3 = MySQL
          L1_3 = L1_3.Async
          L1_3 = L1_3.fetchScalar
          L2_3 = "SELECT stats FROM gymstats WHERE identifier = @identifier"
          L3_3 = {}
          L4_3 = A0_2
          L3_3["@identifier"] = L4_3
          function L4_3(A0_4)
            local L1_4, L2_4
            if A0_4 then
              L1_4 = json
              L1_4 = L1_4.decode
              L2_4 = A0_4
              L1_4 = L1_4(L2_4)
              L2_2 = L1_4
              L1_4 = true
              L1_2 = L1_4
            else
              L1_4 = true
              L1_2 = L1_4
            end
          end
          L1_3(L2_3, L3_3, L4_3)
        else
          L1_3 = MySQL
          L1_3 = L1_3.Async
          L1_3 = L1_3.execute
          L2_3 = "INSERT INTO gymstats (identifier, stats) VALUES (@identifier,@stats)"
          L3_3 = {}
          L4_3 = A0_2
          L3_3["@identifier"] = L4_3
          L4_3 = json
          L4_3 = L4_3.encode
          L5_3 = L2_2
          L4_3 = L4_3(L5_3)
          L3_3["@stats"] = L4_3
          function L4_3(A0_4)
            local L1_4
            L1_4 = true
            L1_2 = L1_4
          end
          L1_3(L2_3, L3_3, L4_3)
        end
      end
      L3_2(L4_2, L5_2, L6_2)
    end
    return L2_2
  end
  GymStatsData = L0_1
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:GymSynchronize"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:GymSynchronize"
  function L2_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
    L0_2 = source
    L1_2 = QBCore
    L1_2 = L1_2.Functions
    L1_2 = L1_2.GetPlayer
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = playerloaded
      L2_2 = L2_2[L0_2]
      if nil == L2_2 then
        L2_2 = TriggerClientEvent
        L3_2 = "rtx_gym:PlayerLoadedClient"
        L4_2 = L0_2
        L5_2 = true
        L2_2(L3_2, L4_2, L5_2)
        L2_2 = playerloaded
        L3_2 = GetPlayerIdentifierRTX
        L4_2 = L0_2
        L3_2 = L3_2(L4_2)
        L2_2[L0_2] = L3_2
        L2_2 = gymonetimedata
        L3_2 = {}
        L2_2[L0_2] = L3_2
        L2_2 = gympassdata
        L3_2 = {}
        L2_2[L0_2] = L3_2
        L2_2 = playersupplements
        L3_2 = {}
        L3_2.protein = nil
        L3_2.creatine = nil
        L3_2.preworkout = nil
        L3_2.testosterone = nil
        L2_2[L0_2] = L3_2
        L2_2 = GymStatsData
        L3_2 = GetPlayerIdentifierRTX
        L4_2 = L0_2
        L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L3_2(L4_2)
        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        L3_2 = Config
        L3_2 = L3_2.DifferentStatsSystem
        if false == L3_2 then
          L3_2 = playerneeds
          L3_2[L0_2] = L2_2
          L3_2 = Config
          L3_2 = L3_2.OwneableGyms
          if true == L3_2 then
            L3_2 = ipairs
            L4_2 = Config
            L4_2 = L4_2.Gyms
            L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
            for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
              L9_2 = L8_2.gymowneable
              if L9_2 then
                L9_2 = ownedgyms
                L9_2 = L9_2[L7_2]
                if nil ~= L9_2 then
                  L9_2 = TriggerClientEvent
                  L10_2 = "rtx_gym:SynchronizeOwnedGym"
                  L11_2 = L0_2
                  L12_2 = L7_2
                  L13_2 = ownedgyms
                  L13_2 = L13_2[L7_2]
                  L13_2 = L13_2.gymowned
                  L9_2(L10_2, L11_2, L12_2, L13_2)
                  L9_2 = ownedgyms
                  L9_2 = L9_2[L7_2]
                  L9_2 = L9_2.gymownedidentifier
                  L10_2 = GetPlayerIdentifierRTX
                  L11_2 = L0_2
                  L10_2 = L10_2(L11_2)
                  if L9_2 == L10_2 then
                    L9_2 = TriggerClientEvent
                    L10_2 = "rtx_gym:SynchronizeYourOwnedGym"
                    L11_2 = L0_2
                    L12_2 = L7_2
                    L13_2 = true
                    L9_2(L10_2, L11_2, L12_2, L13_2)
                  end
                end
              end
            end
          end
        else
          L3_2 = Config
          L3_2 = L3_2.OwneableGyms
          if true == L3_2 then
            L3_2 = ipairs
            L4_2 = Config
            L4_2 = L4_2.Gyms
            L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
            for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
              L9_2 = L8_2.gymowneable
              if L9_2 then
                L9_2 = ownedgyms
                L9_2 = L9_2[L7_2]
                if nil ~= L9_2 then
                  L9_2 = TriggerClientEvent
                  L10_2 = "rtx_gym:SynchronizeOwnedGym"
                  L11_2 = L0_2
                  L12_2 = L7_2
                  L13_2 = ownedgyms
                  L13_2 = L13_2[L7_2]
                  L13_2 = L13_2.gymowned
                  L9_2(L10_2, L11_2, L12_2, L13_2)
                  L9_2 = ownedgyms
                  L9_2 = L9_2[L7_2]
                  L9_2 = L9_2.gymownedidentifier
                  L10_2 = GetPlayerIdentifierRTX
                  L11_2 = L0_2
                  L10_2 = L10_2(L11_2)
                  if L9_2 == L10_2 then
                    L9_2 = TriggerClientEvent
                    L10_2 = "rtx_gym:SynchronizeYourOwnedGym"
                    L11_2 = L0_2
                    L12_2 = L7_2
                    L13_2 = true
                    L9_2(L10_2, L11_2, L12_2, L13_2)
                  end
                end
              end
            end
          end
        end
        L3_2 = Config
        L3_2 = L3_2.DifferentStatsSystem
        if false == L3_2 then
          L3_2 = TriggerClientEvent
          L4_2 = "rtx_gym:SynchronizeStats"
          L5_2 = L0_2
          L6_2 = playerneeds
          L6_2 = L6_2[L0_2]
          L3_2(L4_2, L5_2, L6_2)
        end
        L3_2 = ipairs
        L4_2 = Config
        L4_2 = L4_2.Gyms
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
          L9_2 = L8_2.gympayed
          if L9_2 then
            L9_2 = MySQL
            L9_2 = L9_2.Async
            L9_2 = L9_2.fetchScalar
            L10_2 = "SELECT gymtime FROM gympass WHERE identifier = @identifier AND gymid = @gymid "
            L11_2 = {}
            L12_2 = GetPlayerIdentifierRTX
            L13_2 = L0_2
            L12_2 = L12_2(L13_2)
            L11_2["@identifier"] = L12_2
            L11_2["@gymid"] = L7_2
            function L12_2(A0_3)
              local L1_3, L2_3
              if A0_3 then
                L1_3 = gympassdata
                L2_3 = L0_2
                L1_3 = L1_3[L2_3]
                L2_3 = L7_2
                L1_3[L2_3] = A0_3
              end
            end
            L9_2(L10_2, L11_2, L12_2)
          end
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:GymBuyEntry"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:GymBuyEntry"
  function L2_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
    L2_2 = source
    if nil ~= A0_2 then
      L3_2 = playerneeds
      L3_2 = L3_2[L2_2]
      if nil ~= L3_2 then
        L3_2 = gymonetimedata
        L3_2 = L3_2[L2_2]
        if nil ~= L3_2 then
          L3_2 = gympassdata
          L3_2 = L3_2[L2_2]
          if nil ~= L3_2 then
            L3_2 = playersupplements
            L3_2 = L3_2[L2_2]
            if nil ~= L3_2 then
              goto lbl_23
            end
          end
        end
      end
      L3_2 = PlayerDataReformated
      L4_2 = L2_2
      L3_2(L4_2)
      ::lbl_23::
      L3_2 = QBCore
      L3_2 = L3_2.Functions
      L3_2 = L3_2.GetPlayer
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L4_2 = Config
        L4_2 = L4_2.Gyms
        L4_2 = L4_2[A0_2]
        L5_2 = L4_2.gymowneable
        if L5_2 then
          L5_2 = Config
          L5_2 = L5_2.OwneableGyms
          if true == L5_2 then
            L5_2 = ownedgyms
            L5_2 = L5_2[A0_2]
            if nil ~= L5_2 then
              L5_2 = ownedgyms
              L5_2 = L5_2[A0_2]
              L6_2 = L5_2.gymclosed
              if false == L6_2 then
                L6_2 = 0
                if "normal" == A1_2 then
                  L6_2 = L4_2.gymprice
                elseif "pass" == A1_2 then
                  L7_2 = round
                  L8_2 = L4_2.gymprice
                  L9_2 = Config
                  L9_2 = L9_2.GymPassMultipler
                  L8_2 = L8_2 * L9_2
                  L9_2 = 0
                  L7_2 = L7_2(L8_2, L9_2)
                  L6_2 = L7_2
                end
                L7_2 = GetMoneyRTX
                L8_2 = L2_2
                L7_2 = L7_2(L8_2)
                if L6_2 <= L7_2 then
                  L7_2 = RemoveMoneyRTX
                  L8_2 = L2_2
                  L9_2 = L6_2
                  L7_2(L8_2, L9_2)
                  if "normal" == A1_2 then
                    L7_2 = TriggerClientEvent
                    L8_2 = "rtx_gym:Notify"
                    L9_2 = L2_2
                    L10_2 = LanguageFile
                    L11_2 = "youboughtentry"
                    L12_2 = L4_2.gymname
                    L13_2 = L4_2.gymtime
                    L14_2 = L6_2
                    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
                    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
                    L7_2 = L4_2.gymtime
                    L7_2 = 60 * L7_2
                    L8_2 = os
                    L8_2 = L8_2.time
                    L8_2 = L8_2()
                    L8_2 = L8_2 + L7_2
                    L9_2 = gymonetimedata
                    L9_2 = L9_2[L2_2]
                    if nil == L9_2 then
                      L9_2 = gymonetimedata
                      L10_2 = {}
                      L9_2[L2_2] = L10_2
                    end
                    L9_2 = gymonetimedata
                    L9_2 = L9_2[L2_2]
                    L9_2[A0_2] = L8_2
                  elseif "pass" == A1_2 then
                    L7_2 = TriggerClientEvent
                    L8_2 = "rtx_gym:Notify"
                    L9_2 = L2_2
                    L10_2 = LanguageFile
                    L11_2 = "youboughtpass"
                    L12_2 = L4_2.gymname
                    L13_2 = L4_2.gympassdays
                    L14_2 = L6_2
                    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
                    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
                    L7_2 = L4_2.gympassdays
                    L7_2 = 86400 * L7_2
                    L8_2 = os
                    L8_2 = L8_2.time
                    L8_2 = L8_2()
                    L8_2 = L8_2 + L7_2
                    L9_2 = MySQL
                    L9_2 = L9_2.Async
                    L9_2 = L9_2.fetchScalar
                    L10_2 = "SELECT 1 FROM gympass WHERE identifier = @identifier AND gymid = @gymid "
                    L11_2 = {}
                    L12_2 = GetPlayerIdentifierRTX
                    L13_2 = L2_2
                    L12_2 = L12_2(L13_2)
                    L11_2["@identifier"] = L12_2
                    L11_2["@gymid"] = A0_2
                    function L12_2(A0_3)
                      local L1_3, L2_3, L3_3, L4_3, L5_3
                      if A0_3 then
                        L1_3 = MySQL
                        L1_3 = L1_3.Sync
                        L1_3 = L1_3.execute
                        L2_3 = "UPDATE gympass SET gymtime = @gymtime WHERE identifier = @identifier AND gymid = @gymid"
                        L3_3 = {}
                        L4_3 = GetPlayerIdentifierRTX
                        L5_3 = L2_2
                        L4_3 = L4_3(L5_3)
                        L3_3["@identifier"] = L4_3
                        L4_3 = A0_2
                        L3_3["@gymid"] = L4_3
                        L4_3 = L8_2
                        L3_3["@gymtime"] = L4_3
                        L1_3(L2_3, L3_3)
                        L1_3 = gympassdata
                        L2_3 = L2_2
                        L1_3 = L1_3[L2_3]
                        if nil == L1_3 then
                          L1_3 = gympassdata
                          L2_3 = L2_2
                          L3_3 = {}
                          L1_3[L2_3] = L3_3
                        end
                        L1_3 = gympassdata
                        L2_3 = L2_2
                        L1_3 = L1_3[L2_3]
                        L2_3 = A0_2
                        L3_3 = L8_2
                        L1_3[L2_3] = L3_3
                      else
                        L1_3 = MySQL
                        L1_3 = L1_3.Async
                        L1_3 = L1_3.execute
                        L2_3 = "INSERT INTO gympass (identifier, gymid, gymtime) VALUES (@identifier,@gymid,@gymtime)"
                        L3_3 = {}
                        L4_3 = GetPlayerIdentifierRTX
                        L5_3 = L2_2
                        L4_3 = L4_3(L5_3)
                        L3_3["@identifier"] = L4_3
                        L4_3 = A0_2
                        L3_3["@gymid"] = L4_3
                        L4_3 = L8_2
                        L3_3["@gymtime"] = L4_3
                        function L4_3(A0_4)
                          local L1_4, L2_4, L3_4
                          L1_4 = gympassdata
                          L2_4 = L2_2
                          L1_4 = L1_4[L2_4]
                          if nil == L1_4 then
                            L1_4 = gympassdata
                            L2_4 = L2_2
                            L3_4 = {}
                            L1_4[L2_4] = L3_4
                          end
                          L1_4 = gympassdata
                          L2_4 = L2_2
                          L1_4 = L1_4[L2_4]
                          L2_4 = A0_2
                          L3_4 = L8_2
                          L1_4[L2_4] = L3_4
                        end
                        L1_3(L2_3, L3_3, L4_3)
                      end
                    end
                    L9_2(L10_2, L11_2, L12_2)
                  end
                  L7_2 = L5_2.gymbalance
                  L7_2 = L7_2 + L6_2
                  L5_2.gymbalance = L7_2
                  L7_2 = ownedgyms
                  L7_2 = L7_2[A0_2]
                  L7_2 = L7_2.gymvisitorsdata
                  L7_2 = #L7_2
                  if L7_2 > 0 then
                    L8_2 = ownedgyms
                    L8_2 = L8_2[A0_2]
                    L8_2 = L8_2.gymvisitorsdata
                    L8_2 = L8_2[L7_2]
                    L9_2 = os
                    L9_2 = L9_2.date
                    L10_2 = "*t"
                    L11_2 = ownedgyms
                    L11_2 = L11_2[A0_2]
                    L11_2 = L11_2.gymvisitorsdata
                    L11_2 = L11_2[L7_2]
                    L11_2 = L11_2.earningstime
                    L9_2 = L9_2(L10_2, L11_2)
                    L10_2 = os
                    L10_2 = L10_2.time
                    L10_2 = L10_2()
                    L11_2 = os
                    L11_2 = L11_2.date
                    L12_2 = "*t"
                    L13_2 = L10_2
                    L11_2 = L11_2(L12_2, L13_2)
                    L12_2 = L9_2.month
                    L13_2 = L11_2.month
                    if L12_2 == L13_2 then
                      L12_2 = L9_2.day
                      L13_2 = L11_2.day
                      if L12_2 == L13_2 then
                        L12_2 = L9_2.year
                        L13_2 = L11_2.year
                        if L12_2 == L13_2 then
                          L12_2 = ownedgyms
                          L12_2 = L12_2[A0_2]
                          L12_2 = L12_2.gymvisitorsdata
                          L12_2 = L12_2[L7_2]
                          L13_2 = ownedgyms
                          L13_2 = L13_2[A0_2]
                          L13_2 = L13_2.gymvisitorsdata
                          L13_2 = L13_2[L7_2]
                          L13_2 = L13_2.earningsvalue
                          L13_2 = L13_2 + L6_2
                          L12_2.earningsvalue = L13_2
                      end
                    end
                    else
                      L12_2 = L7_2 + 1
                      L13_2 = ownedgyms
                      L13_2 = L13_2[A0_2]
                      L13_2 = L13_2.gymvisitorsdata
                      L14_2 = {}
                      L15_2 = os
                      L15_2 = L15_2.time
                      L15_2 = L15_2()
                      L14_2.earningstime = L15_2
                      L14_2.earningsvalue = L6_2
                      L13_2[L12_2] = L14_2
                    end
                  else
                    L8_2 = L7_2 + 1
                    L9_2 = ownedgyms
                    L9_2 = L9_2[A0_2]
                    L9_2 = L9_2.gymvisitorsdata
                    L10_2 = {}
                    L11_2 = os
                    L11_2 = L11_2.time
                    L11_2 = L11_2()
                    L10_2.earningstime = L11_2
                    L10_2.earningsvalue = L6_2
                    L9_2[L8_2] = L10_2
                  end
                  L8_2 = MySQL
                  L8_2 = L8_2.Sync
                  L8_2 = L8_2.execute
                  L9_2 = "UPDATE owned_gyms SET gymbalance = @gymbalance, gymvisitorsdata = @gymvisitorsdata  WHERE gymid = @gymid"
                  L10_2 = {}
                  L10_2["@gymid"] = A0_2
                  L11_2 = L5_2.gymbalance
                  L10_2["@gymbalance"] = L11_2
                  L11_2 = json
                  L11_2 = L11_2.encode
                  L12_2 = L5_2.gymvisitorsdata
                  L11_2 = L11_2(L12_2)
                  L10_2["@gymvisitorsdata"] = L11_2
                  L8_2(L9_2, L10_2)
                else
                  L7_2 = TriggerClientEvent
                  L8_2 = "rtx_gym:Notify"
                  L9_2 = L2_2
                  L10_2 = Language
                  L11_2 = Config
                  L11_2 = L11_2.Language
                  L10_2 = L10_2[L11_2]
                  L10_2 = L10_2.nomoneyenough
                  L7_2(L8_2, L9_2, L10_2)
                end
              else
                L6_2 = TriggerClientEvent
                L7_2 = "rtx_gym:Notify"
                L8_2 = L2_2
                L9_2 = Language
                L10_2 = Config
                L10_2 = L10_2.Language
                L9_2 = L9_2[L10_2]
                L9_2 = L9_2.gymisclosed
                L6_2(L7_2, L8_2, L9_2)
              end
            end
        end
        else
          L5_2 = 0
          if "normal" == A1_2 then
            L5_2 = L4_2.gymprice
          elseif "pass" == A1_2 then
            L6_2 = round
            L7_2 = L4_2.gymprice
            L8_2 = Config
            L8_2 = L8_2.GymPassMultipler
            L7_2 = L7_2 * L8_2
            L8_2 = 0
            L6_2 = L6_2(L7_2, L8_2)
            L5_2 = L6_2
          end
          L6_2 = GetMoneyRTX
          L7_2 = L2_2
          L6_2 = L6_2(L7_2)
          if L5_2 <= L6_2 then
            L6_2 = RemoveMoneyRTX
            L7_2 = L2_2
            L8_2 = L5_2
            L6_2(L7_2, L8_2)
            if "normal" == A1_2 then
              L6_2 = TriggerClientEvent
              L7_2 = "rtx_gym:Notify"
              L8_2 = L2_2
              L9_2 = LanguageFile
              L10_2 = "youboughtentry"
              L11_2 = L4_2.gymname
              L12_2 = L4_2.gymtime
              L13_2 = L5_2
              L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
              L6_2 = L4_2.gymtime
              L6_2 = 60 * L6_2
              L7_2 = os
              L7_2 = L7_2.time
              L7_2 = L7_2()
              L7_2 = L7_2 + L6_2
              L8_2 = gymonetimedata
              L8_2 = L8_2[L2_2]
              if nil == L8_2 then
                L8_2 = gymonetimedata
                L9_2 = {}
                L8_2[L2_2] = L9_2
              end
              L8_2 = gymonetimedata
              L8_2 = L8_2[L2_2]
              L8_2[A0_2] = L7_2
            elseif "pass" == A1_2 then
              L6_2 = TriggerClientEvent
              L7_2 = "rtx_gym:Notify"
              L8_2 = L2_2
              L9_2 = LanguageFile
              L10_2 = "youboughtpass"
              L11_2 = L4_2.gymname
              L12_2 = L4_2.gympassdays
              L13_2 = L5_2
              L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
              L6_2 = L4_2.gympassdays
              L6_2 = 86400 * L6_2
              L7_2 = os
              L7_2 = L7_2.time
              L7_2 = L7_2()
              L7_2 = L7_2 + L6_2
              L8_2 = MySQL
              L8_2 = L8_2.Async
              L8_2 = L8_2.fetchScalar
              L9_2 = "SELECT 1 FROM gympass WHERE identifier = @identifier AND gymid = @gymid "
              L10_2 = {}
              L11_2 = GetPlayerIdentifierRTX
              L12_2 = L2_2
              L11_2 = L11_2(L12_2)
              L10_2["@identifier"] = L11_2
              L10_2["@gymid"] = A0_2
              function L11_2(A0_3)
                local L1_3, L2_3, L3_3, L4_3, L5_3
                if A0_3 then
                  L1_3 = MySQL
                  L1_3 = L1_3.Sync
                  L1_3 = L1_3.execute
                  L2_3 = "UPDATE gympass SET gymtime = @gymtime WHERE identifier = @identifier AND gymid = @gymid"
                  L3_3 = {}
                  L4_3 = GetPlayerIdentifierRTX
                  L5_3 = L2_2
                  L4_3 = L4_3(L5_3)
                  L3_3["@identifier"] = L4_3
                  L4_3 = A0_2
                  L3_3["@gymid"] = L4_3
                  L4_3 = L7_2
                  L3_3["@gymtime"] = L4_3
                  L1_3(L2_3, L3_3)
                  L1_3 = gympassdata
                  L2_3 = L2_2
                  L1_3 = L1_3[L2_3]
                  if nil == L1_3 then
                    L1_3 = gympassdata
                    L2_3 = L2_2
                    L3_3 = {}
                    L1_3[L2_3] = L3_3
                  end
                  L1_3 = gympassdata
                  L2_3 = L2_2
                  L1_3 = L1_3[L2_3]
                  L2_3 = A0_2
                  L3_3 = L7_2
                  L1_3[L2_3] = L3_3
                else
                  L1_3 = MySQL
                  L1_3 = L1_3.Async
                  L1_3 = L1_3.execute
                  L2_3 = "INSERT INTO gympass (identifier, gymid, gymtime) VALUES (@identifier,@gymid,@gymtime)"
                  L3_3 = {}
                  L4_3 = GetPlayerIdentifierRTX
                  L5_3 = L2_2
                  L4_3 = L4_3(L5_3)
                  L3_3["@identifier"] = L4_3
                  L4_3 = A0_2
                  L3_3["@gymid"] = L4_3
                  L4_3 = L7_2
                  L3_3["@gymtime"] = L4_3
                  function L4_3(A0_4)
                    local L1_4, L2_4, L3_4
                    L1_4 = gympassdata
                    L2_4 = L2_2
                    L1_4 = L1_4[L2_4]
                    if nil == L1_4 then
                      L1_4 = gympassdata
                      L2_4 = L2_2
                      L3_4 = {}
                      L1_4[L2_4] = L3_4
                    end
                    L1_4 = gympassdata
                    L2_4 = L2_2
                    L1_4 = L1_4[L2_4]
                    L2_4 = A0_2
                    L3_4 = L7_2
                    L1_4[L2_4] = L3_4
                  end
                  L1_3(L2_3, L3_3, L4_3)
                end
              end
              L8_2(L9_2, L10_2, L11_2)
            end
          else
            L6_2 = TriggerClientEvent
            L7_2 = "rtx_gym:Notify"
            L8_2 = L2_2
            L9_2 = Language
            L10_2 = Config
            L10_2 = L10_2.Language
            L9_2 = L9_2[L10_2]
            L9_2 = L9_2.nomoneyenough
            L6_2(L7_2, L8_2, L9_2)
          end
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:GymBuy"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:GymBuy"
  function L2_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
    L1_2 = source
    if nil ~= A0_2 then
      L2_2 = QBCore
      L2_2 = L2_2.Functions
      L2_2 = L2_2.GetPlayer
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L3_2 = Config
        L3_2 = L3_2.Gyms
        L3_2 = L3_2[A0_2]
        L4_2 = L3_2.gymowneable
        if L4_2 then
          L4_2 = Config
          L4_2 = L4_2.OwneableGyms
          if true == L4_2 then
            L4_2 = ownedgyms
            L4_2 = L4_2[A0_2]
            if nil ~= L4_2 then
              L4_2 = ownedgyms
              L4_2 = L4_2[A0_2]
              L5_2 = L4_2.gymowned
              if false == L5_2 then
                L5_2 = GetMoneyRTX
                L6_2 = L1_2
                L5_2 = L5_2(L6_2)
                L6_2 = L3_2.gymowneableprice
                if L5_2 >= L6_2 then
                  L5_2 = RemoveMoneyRTX
                  L6_2 = L1_2
                  L7_2 = L3_2.gymowneableprice
                  L5_2(L6_2, L7_2)
                  L4_2.gymowned = true
                  L5_2 = TriggerClientEvent
                  L6_2 = "rtx_gym:SynchronizeOwnedGym"
                  L7_2 = -1
                  L8_2 = A0_2
                  L9_2 = true
                  L5_2(L6_2, L7_2, L8_2, L9_2)
                  L5_2 = TriggerClientEvent
                  L6_2 = "rtx_gym:SynchronizeYourOwnedGym"
                  L7_2 = L1_2
                  L8_2 = A0_2
                  L9_2 = true
                  L5_2(L6_2, L7_2, L8_2, L9_2)
                  L5_2 = TriggerClientEvent
                  L6_2 = "rtx_gym:GymBuyed"
                  L7_2 = -1
                  L8_2 = A0_2
                  L5_2(L6_2, L7_2, L8_2)
                  L4_2.gymowned = true
                  L5_2 = GetPlayerIdentifierRTX
                  L6_2 = L1_2
                  L5_2 = L5_2(L6_2)
                  L4_2.gymownedidentifier = L5_2
                  L5_2 = TriggerClientEvent
                  L6_2 = "rtx_gym:Notify"
                  L7_2 = L1_2
                  L8_2 = LanguageFile
                  L9_2 = "youboughtgym"
                  L10_2 = L3_2.gymname
                  L11_2 = L3_2.gymowneableprice
                  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2)
                  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
                  L5_2 = MySQL
                  L5_2 = L5_2.Async
                  L5_2 = L5_2.fetchScalar
                  L6_2 = "SELECT 1 FROM owned_gyms WHERE gymid = @gymid "
                  L7_2 = {}
                  L7_2["@gymid"] = A0_2
                  function L8_2(A0_3)
                    local L1_3, L2_3, L3_3, L4_3, L5_3
                    if A0_3 then
                      L1_3 = MySQL
                      L1_3 = L1_3.Sync
                      L1_3 = L1_3.execute
                      L2_3 = "UPDATE owned_gyms SET identifier = @identifier WHERE gymid = @gymid"
                      L3_3 = {}
                      L4_3 = GetPlayerIdentifierRTX
                      L5_3 = L1_2
                      L4_3 = L4_3(L5_3)
                      L3_3["@identifier"] = L4_3
                      L4_3 = A0_2
                      L3_3["@gymid"] = L4_3
                      L1_3(L2_3, L3_3)
                    else
                      L1_3 = MySQL
                      L1_3 = L1_3.Async
                      L1_3 = L1_3.execute
                      L2_3 = "INSERT INTO owned_gyms (identifier, gymid, gymprice, gymbalance, gymvisitorsdata) VALUES (@identifier,@gymid,@gymprice,@gymbalance,@gymvisitorsdata)"
                      L3_3 = {}
                      L4_3 = GetPlayerIdentifierRTX
                      L5_3 = L1_2
                      L4_3 = L4_3(L5_3)
                      L3_3["@identifier"] = L4_3
                      L4_3 = A0_2
                      L3_3["@gymid"] = L4_3
                      L4_3 = L3_2.gymprice
                      L3_3["@gymprice"] = L4_3
                      L3_3["@gymbalance"] = 0
                      L4_3 = json
                      L4_3 = L4_3.encode
                      L5_3 = {}
                      L4_3 = L4_3(L5_3)
                      L3_3["@gymvisitorsdata"] = L4_3
                      function L4_3(A0_4)
                        local L1_4
                      end
                      L1_3(L2_3, L3_3, L4_3)
                    end
                  end
                  L5_2(L6_2, L7_2, L8_2)
                else
                  L5_2 = TriggerClientEvent
                  L6_2 = "rtx_gym:Notify"
                  L7_2 = L1_2
                  L8_2 = Language
                  L9_2 = Config
                  L9_2 = L9_2.Language
                  L8_2 = L8_2[L9_2]
                  L8_2 = L8_2.nomoneyenoughgym
                  L5_2(L6_2, L7_2, L8_2)
                end
              end
            end
          end
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:GymOpenManagment"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:GymOpenManagment"
  function L2_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
    L1_2 = source
    if nil ~= A0_2 then
      L2_2 = Config
      L2_2 = L2_2.Gyms
      L2_2 = L2_2[A0_2]
      L3_2 = L2_2.gymowneable
      if L3_2 then
        L3_2 = Config
        L3_2 = L3_2.OwneableGyms
        if true == L3_2 then
          L3_2 = QBCore
          L3_2 = L3_2.Functions
          L3_2 = L3_2.GetPlayer
          L4_2 = L1_2
          L3_2 = L3_2(L4_2)
          if L3_2 then
            L4_2 = ownedgyms
            L4_2 = L4_2[A0_2]
            L4_2 = L4_2.gymownedidentifier
            L5_2 = GetPlayerIdentifierRTX
            L6_2 = L1_2
            L5_2 = L5_2(L6_2)
            if L4_2 == L5_2 then
              L4_2 = ownedgyms
              L4_2 = L4_2[A0_2]
              L5_2 = {}
              L6_2 = ipairs
              L7_2 = L4_2.gymvisitorsdata
              L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
              for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
                L12_2 = os
                L12_2 = L12_2.date
                L13_2 = "*t"
                L14_2 = L11_2.earningstime
                L12_2 = L12_2(L13_2, L14_2)
                L13_2 = table
                L13_2 = L13_2.insert
                L14_2 = L5_2
                L15_2 = {}
                L16_2 = ""
                L17_2 = L12_2.day
                L18_2 = "."
                L19_2 = L12_2.month
                L20_2 = ""
                L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2
                L15_2.earningstime = L16_2
                L16_2 = L11_2.earningsvalue
                L15_2.earningsvalue = L16_2
                L13_2(L14_2, L15_2)
              end
              L6_2 = TriggerClientEvent
              L7_2 = "rtx_gym:OpenGymMenu"
              L8_2 = L1_2
              L9_2 = A0_2
              L10_2 = L4_2.gymbalance
              L11_2 = L4_2.gymclosed
              L12_2 = L2_2.gymprice
              L13_2 = L5_2
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
            end
          end
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:ChangeEntryPrice"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:ChangeEntryPrice"
  function L2_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
    L2_2 = source
    if nil ~= A0_2 then
      L3_2 = Config
      L3_2 = L3_2.Gyms
      L3_2 = L3_2[A0_2]
      L4_2 = L3_2.gymowneable
      if L4_2 then
        L4_2 = Config
        L4_2 = L4_2.OwneableGyms
        if true == L4_2 then
          L4_2 = QBCore
          L4_2 = L4_2.Functions
          L4_2 = L4_2.GetPlayer
          L5_2 = L2_2
          L4_2 = L4_2(L5_2)
          if L4_2 then
            L5_2 = ownedgyms
            L5_2 = L5_2[A0_2]
            L5_2 = L5_2.gymownedidentifier
            L6_2 = GetPlayerIdentifierRTX
            L7_2 = L2_2
            L6_2 = L6_2(L7_2)
            if L5_2 == L6_2 then
              L5_2 = ownedgyms
              L5_2 = L5_2[A0_2]
              if A1_2 > 0 then
                L6_2 = Config
                L6_2 = L6_2.GymMaxPrice
                if A1_2 <= L6_2 then
                  L3_2.gymprice = A1_2
                  L6_2 = MySQL
                  L6_2 = L6_2.Sync
                  L6_2 = L6_2.execute
                  L7_2 = "UPDATE owned_gyms SET gymprice = @gymprice WHERE gymid = @gymid"
                  L8_2 = {}
                  L8_2["@gymid"] = A0_2
                  L8_2["@gymprice"] = A1_2
                  L6_2(L7_2, L8_2)
                  L6_2 = TriggerClientEvent
                  L7_2 = "rtx_gym:Notify"
                  L8_2 = L2_2
                  L9_2 = LanguageFile
                  L10_2 = "youchangedgymentry"
                  L11_2 = A1_2
                  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2)
                  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
                  L6_2 = TriggerClientEvent
                  L7_2 = "rtx_gym:GymMenuUpdate"
                  L8_2 = L2_2
                  L9_2 = A0_2
                  L10_2 = L5_2.gymbalance
                  L11_2 = L5_2.gymclosed
                  L12_2 = L3_2.gymprice
                  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
              end
              else
                L6_2 = TriggerClientEvent
                L7_2 = "rtx_gym:Notify"
                L8_2 = L2_2
                L9_2 = LanguageFile
                L10_2 = "minimumentryamount"
                L11_2 = Config
                L11_2 = L11_2.GymMaxPrice
                L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2)
                L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
              end
            end
          end
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:ManagmentWithdraw"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:ManagmentWithdraw"
  function L2_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
    L1_2 = source
    if nil ~= A0_2 then
      L2_2 = Config
      L2_2 = L2_2.Gyms
      L2_2 = L2_2[A0_2]
      L3_2 = L2_2.gymowneable
      if L3_2 then
        L3_2 = QBCore
        L3_2 = L3_2.Functions
        L3_2 = L3_2.GetPlayer
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L4_2 = ownedgyms
          L4_2 = L4_2[A0_2]
          L4_2 = L4_2.gymownedidentifier
          L5_2 = GetPlayerIdentifierRTX
          L6_2 = L1_2
          L5_2 = L5_2(L6_2)
          if L4_2 == L5_2 then
            L4_2 = ownedgyms
            L4_2 = L4_2[A0_2]
            L5_2 = L4_2.gymbalance
            if L5_2 > 0 then
              L5_2 = TriggerClientEvent
              L6_2 = "rtx_gym:Notify"
              L7_2 = L1_2
              L8_2 = LanguageFile
              L9_2 = "youwithdraw"
              L10_2 = L4_2.gymbalance
              L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2)
              L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
              L5_2 = L3_2.Functions
              L5_2 = L5_2.AddMoney
              L6_2 = "cash"
              L7_2 = L4_2.gymbalance
              L5_2(L6_2, L7_2)
              L4_2.gymbalance = 0
              L5_2 = MySQL
              L5_2 = L5_2.Sync
              L5_2 = L5_2.execute
              L6_2 = "UPDATE owned_gyms SET gymbalance = @gymbalance WHERE gymid = @gymid"
              L7_2 = {}
              L7_2["@gymid"] = A0_2
              L7_2["@gymbalance"] = 0
              L5_2(L6_2, L7_2)
              L5_2 = TriggerClientEvent
              L6_2 = "rtx_gym:GymMenuUpdate"
              L7_2 = L1_2
              L8_2 = A0_2
              L9_2 = L4_2.gymbalance
              L10_2 = L4_2.gymclosed
              L11_2 = L2_2.gymprice
              L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
            else
              L5_2 = TriggerClientEvent
              L6_2 = "rtx_gym:Notify"
              L7_2 = L1_2
              L8_2 = Language
              L9_2 = Config
              L9_2 = L9_2.Language
              L8_2 = L8_2[L9_2]
              L8_2 = L8_2.nomoneywithdraw
              L5_2(L6_2, L7_2, L8_2)
            end
          end
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:CloseStatus"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:CloseStatus"
  function L2_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
    L2_2 = source
    if nil ~= A0_2 then
      L3_2 = Config
      L3_2 = L3_2.Gyms
      L3_2 = L3_2[A0_2]
      L4_2 = L3_2.gymowneable
      if L4_2 then
        L4_2 = Config
        L4_2 = L4_2.OwneableGyms
        if true == L4_2 then
          L4_2 = QBCore
          L4_2 = L4_2.Functions
          L4_2 = L4_2.GetPlayer
          L5_2 = L2_2
          L4_2 = L4_2(L5_2)
          if L4_2 then
            L5_2 = ownedgyms
            L5_2 = L5_2[A0_2]
            L5_2 = L5_2.gymownedidentifier
            L6_2 = GetPlayerIdentifierRTX
            L7_2 = L2_2
            L6_2 = L6_2(L7_2)
            if L5_2 == L6_2 then
              L5_2 = ownedgyms
              L5_2 = L5_2[A0_2]
              L5_2.gymclosed = A1_2
              if A1_2 then
                L6_2 = TriggerClientEvent
                L7_2 = "rtx_gym:Notify"
                L8_2 = L2_2
                L9_2 = Language
                L10_2 = Config
                L10_2 = L10_2.Language
                L9_2 = L9_2[L10_2]
                L9_2 = L9_2.yourgymclosed
                L6_2(L7_2, L8_2, L9_2)
                L6_2 = TriggerClientEvent
                L7_2 = "rtx_gym:GymStop"
                L8_2 = -1
                L9_2 = A0_2
                L10_2 = "closed"
                L6_2(L7_2, L8_2, L9_2, L10_2)
              else
                L6_2 = TriggerClientEvent
                L7_2 = "rtx_gym:Notify"
                L8_2 = L2_2
                L9_2 = Language
                L10_2 = Config
                L10_2 = L10_2.Language
                L9_2 = L9_2[L10_2]
                L9_2 = L9_2.yourgymopened
                L6_2(L7_2, L8_2, L9_2)
              end
              L6_2 = MySQL
              L6_2 = L6_2.Sync
              L6_2 = L6_2.execute
              L7_2 = "UPDATE owned_gyms SET gymclosed = @gymclosed WHERE gymid = @gymid"
              L8_2 = {}
              L8_2["@gymid"] = A0_2
              L8_2["@gymclosed"] = A1_2
              L6_2(L7_2, L8_2)
              L6_2 = TriggerClientEvent
              L7_2 = "rtx_gym:GymMenuUpdate"
              L8_2 = L2_2
              L9_2 = A0_2
              L10_2 = L5_2.gymbalance
              L11_2 = L5_2.gymclosed
              L12_2 = L3_2.gymprice
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
            end
          end
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:SellGym"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:SellGym"
  function L2_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
    L1_2 = source
    if nil ~= A0_2 then
      L2_2 = Config
      L2_2 = L2_2.Gyms
      L2_2 = L2_2[A0_2]
      L3_2 = L2_2.gymowneable
      if L3_2 then
        L3_2 = Config
        L3_2 = L3_2.OwneableGyms
        if true == L3_2 then
          L3_2 = QBCore
          L3_2 = L3_2.Functions
          L3_2 = L3_2.GetPlayer
          L4_2 = L1_2
          L3_2 = L3_2(L4_2)
          if L3_2 then
            L4_2 = ownedgyms
            L4_2 = L4_2[A0_2]
            L4_2 = L4_2.gymownedidentifier
            L5_2 = GetPlayerIdentifierRTX
            L6_2 = L1_2
            L5_2 = L5_2(L6_2)
            if L4_2 == L5_2 then
              L4_2 = round
              L5_2 = L2_2.gymowneableprice
              L6_2 = Config
              L6_2 = L6_2.GymSellMultipler
              L5_2 = L5_2 * L6_2
              L6_2 = 0
              L4_2 = L4_2(L5_2, L6_2)
              L5_2 = ownedgyms
              L5_2 = L5_2[A0_2]
              L5_2.gymownedidentifier = ""
              L6_2 = TriggerClientEvent
              L7_2 = "rtx_gym:Notify"
              L8_2 = L1_2
              L9_2 = LanguageFile
              L10_2 = "yousoldgym"
              L11_2 = L4_2
              L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
              L6_2 = L3_2.Functions
              L6_2 = L6_2.AddMoney
              L7_2 = "cash"
              L8_2 = L4_2
              L6_2(L7_2, L8_2)
              L6_2 = TriggerClientEvent
              L7_2 = "rtx_gym:SynchronizeYourOwnedGym"
              L8_2 = L1_2
              L9_2 = A0_2
              L10_2 = false
              L6_2(L7_2, L8_2, L9_2, L10_2)
              L6_2 = MySQL
              L6_2 = L6_2.Async
              L6_2 = L6_2.execute
              L7_2 = "DELETE FROM owned_gyms WHERE gymid = @gymid"
              L8_2 = {}
              L8_2["@gymid"] = A0_2
              function L9_2(A0_3)
                local L1_3, L2_3, L3_3, L4_3, L5_3
                L5_2.gymowned = false
                L5_2.gymbalance = 0
                L1_3 = Config
                L1_3 = L1_3.GymMaxPrice
                L2_2.gymprice = L1_3
                L5_2.gymclosed = false
                L1_3 = TriggerClientEvent
                L2_3 = "rtx_gym:SynchronizeOwnedGym"
                L3_3 = -1
                L4_3 = A0_2
                L5_3 = false
                L1_3(L2_3, L3_3, L4_3, L5_3)
              end
              L6_2(L7_2, L8_2, L9_2)
            end
          end
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:TransferGym"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:TransferGym"
  function L2_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
    L2_2 = source
    if nil ~= A0_2 then
      L3_2 = Config
      L3_2 = L3_2.Gyms
      L3_2 = L3_2[A0_2]
      L4_2 = L3_2.gymowneable
      if L4_2 then
        L4_2 = Config
        L4_2 = L4_2.OwneableGyms
        if true == L4_2 then
          L4_2 = QBCore
          L4_2 = L4_2.Functions
          L4_2 = L4_2.GetPlayer
          L5_2 = L2_2
          L4_2 = L4_2(L5_2)
          L5_2 = QBCore
          L5_2 = L5_2.Functions
          L5_2 = L5_2.GetPlayer
          L6_2 = A1_2
          L5_2 = L5_2(L6_2)
          if L4_2 and L5_2 then
            L6_2 = ownedgyms
            L6_2 = L6_2[A0_2]
            L6_2 = L6_2.gymownedidentifier
            L7_2 = GetPlayerIdentifierRTX
            L8_2 = L2_2
            L7_2 = L7_2(L8_2)
            if L6_2 == L7_2 then
              L6_2 = L3_2.gymowneableprice
              L7_2 = Config
              L7_2 = L7_2.GymSellMultipler
              L6_2 = L6_2 * L7_2
              L7_2 = ownedgyms
              L7_2 = L7_2[A0_2]
              L8_2 = GetPlayerIdentifierRTX
              L9_2 = A1_2
              L8_2 = L8_2(L9_2)
              L7_2.gymownedidentifier = L8_2
              L8_2 = TriggerClientEvent
              L9_2 = "rtx_gym:Notify"
              L10_2 = L2_2
              L11_2 = Language
              L12_2 = Config
              L12_2 = L12_2.Language
              L11_2 = L11_2[L12_2]
              L11_2 = L11_2.youtransfergym
              L8_2(L9_2, L10_2, L11_2)
              L8_2 = TriggerClientEvent
              L9_2 = "rtx_gym:Notify"
              L10_2 = L2_2
              L11_2 = LanguageFile
              L12_2 = "gymtransferredto"
              L13_2 = L3_2.gymname
              L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
              L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
              L8_2 = TriggerClientEvent
              L9_2 = "rtx_gym:SynchronizeYourOwnedGym"
              L10_2 = L2_2
              L11_2 = A0_2
              L12_2 = false
              L8_2(L9_2, L10_2, L11_2, L12_2)
              L8_2 = TriggerClientEvent
              L9_2 = "rtx_gym:SynchronizeYourOwnedGym"
              L10_2 = A1_2
              L11_2 = A0_2
              L12_2 = true
              L8_2(L9_2, L10_2, L11_2, L12_2)
              L8_2 = MySQL
              L8_2 = L8_2.Sync
              L8_2 = L8_2.execute
              L9_2 = "UPDATE owned_gyms SET identifier = @identifier WHERE gymid = @gymid"
              L10_2 = {}
              L11_2 = GetPlayerIdentifierRTX
              L12_2 = A1_2
              L11_2 = L11_2(L12_2)
              L10_2["@identifier"] = L11_2
              L10_2["@gymid"] = A0_2
              L8_2(L9_2, L10_2)
            end
          end
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = Config
  L0_1 = L0_1.DifferentStatsSystem
  if false == L0_1 then
    L0_1 = AddEventHandler
    L1_1 = "playerDropped"
    function L2_1()
      local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
      L0_2 = source
      L1_2 = playerneeds
      L1_2 = L1_2[L0_2]
      if nil ~= L1_2 then
        L1_2 = playerloaded
        L1_2 = L1_2[L0_2]
        if nil ~= L1_2 then
          L1_2 = MySQL
          L1_2 = L1_2.Async
          L1_2 = L1_2.fetchScalar
          L2_2 = "SELECT 1 FROM gymstats WHERE identifier = @identifier"
          L3_2 = {}
          L4_2 = playerloaded
          L4_2 = L4_2[L0_2]
          L3_2["@identifier"] = L4_2
          function L4_2(A0_3)
            local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
            if A0_3 then
              L1_3 = MySQL
              L1_3 = L1_3.Sync
              L1_3 = L1_3.execute
              L2_3 = "UPDATE gymstats SET stats = @stats WHERE identifier = @identifier"
              L3_3 = {}
              L4_3 = playerloaded
              L5_3 = L0_2
              L4_3 = L4_3[L5_3]
              L3_3["@identifier"] = L4_3
              L4_3 = json
              L4_3 = L4_3.encode
              L5_3 = playerneeds
              L6_3 = L0_2
              L5_3 = L5_3[L6_3]
              L4_3 = L4_3(L5_3)
              L3_3["@stats"] = L4_3
              L1_3(L2_3, L3_3)
            end
          end
          L1_2(L2_2, L3_2, L4_2)
        end
      end
      L1_2 = gymusing
      L1_2 = L1_2[L0_2]
      if nil ~= L1_2 then
        L1_2 = gymusing
        L1_2 = L1_2[L0_2]
        if true == L1_2 then
          L1_2 = ipairs
          L2_2 = Config
          L2_2 = L2_2.Gyms
          L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
          for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
            L7_2 = ipairs
            L8_2 = L6_2.exercises
            L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
            for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
              L13_2 = L12_2.status
              L13_2 = L13_2.taken
              if true == L13_2 then
                L13_2 = L12_2.status
                L13_2 = L13_2.takenplayerid
                if L13_2 == L0_2 then
                  L13_2 = L12_2.status
                  L13_2.taken = false
                  L13_2 = L12_2.status
                  L13_2.takenplayerid = nil
                  L13_2 = TriggerClientEvent
                  L14_2 = "rtx_gym:GymHandler"
                  L15_2 = -1
                  L16_2 = L5_2
                  L17_2 = L11_2
                  L18_2 = false
                  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
                end
              end
            end
          end
        end
      end
    end
    L0_1(L1_1, L2_1)
    function L0_1(A0_2)
      local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
      L1_2 = playerneeds
      L1_2 = L1_2[A0_2]
      if nil ~= L1_2 then
        L1_2 = QBCore
        L1_2 = L1_2.Functions
        L1_2 = L1_2.GetPlayer
        L2_2 = A0_2
        L1_2 = L1_2(L2_2)
        if L1_2 then
          L2_2 = MySQL
          L2_2 = L2_2.Async
          L2_2 = L2_2.fetchScalar
          L3_2 = "SELECT 1 FROM gymstats WHERE identifier = @identifier"
          L4_2 = {}
          L5_2 = GetPlayerIdentifierRTX
          L6_2 = A0_2
          L5_2 = L5_2(L6_2)
          L4_2["@identifier"] = L5_2
          function L5_2(A0_3)
            local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
            if A0_3 then
              L1_3 = MySQL
              L1_3 = L1_3.Sync
              L1_3 = L1_3.execute
              L2_3 = "UPDATE gymstats SET stats = @stats WHERE identifier = @identifier"
              L3_3 = {}
              L4_3 = GetPlayerIdentifierRTX
              L5_3 = A0_2
              L4_3 = L4_3(L5_3)
              L3_3["@identifier"] = L4_3
              L4_3 = json
              L4_3 = L4_3.encode
              L5_3 = playerneeds
              L6_3 = A0_2
              L5_3 = L5_3[L6_3]
              L4_3 = L4_3(L5_3)
              L3_3["@stats"] = L4_3
              L1_3(L2_3, L3_3)
            end
          end
          L2_2(L3_2, L4_2, L5_2)
        end
      end
    end
    SavePlayer = L0_1
  end
end
L0_1 = Config
L0_1 = L0_1.Framework
if "standalone" == L0_1 then
  function L0_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
    L1_2 = false
    L2_2 = {}
    L2_2.strenght = 0.0
    L2_2.condition = 0.0
    L2_2.swimming = 0.0
    L2_2.hygiene = 100.0
    L2_2.energy = 100.0
    while false == L1_2 do
      L3_2 = Wait
      L4_2 = 5
      L3_2(L4_2)
      L3_2 = MySQL
      L3_2 = L3_2.Async
      L3_2 = L3_2.fetchScalar
      L4_2 = "SELECT 1 FROM gymstats WHERE identifier = @identifier"
      L5_2 = {}
      L5_2["@identifier"] = A0_2
      function L6_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3
        if A0_3 then
          L1_3 = MySQL
          L1_3 = L1_3.Async
          L1_3 = L1_3.fetchScalar
          L2_3 = "SELECT stats FROM gymstats WHERE identifier = @identifier"
          L3_3 = {}
          L4_3 = A0_2
          L3_3["@identifier"] = L4_3
          function L4_3(A0_4)
            local L1_4, L2_4
            if A0_4 then
              L1_4 = json
              L1_4 = L1_4.decode
              L2_4 = A0_4
              L1_4 = L1_4(L2_4)
              L2_2 = L1_4
              L1_4 = true
              L1_2 = L1_4
            else
              L1_4 = true
              L1_2 = L1_4
            end
          end
          L1_3(L2_3, L3_3, L4_3)
        else
          L1_3 = MySQL
          L1_3 = L1_3.Async
          L1_3 = L1_3.execute
          L2_3 = "INSERT INTO gymstats (identifier, stats) VALUES (@identifier,@stats)"
          L3_3 = {}
          L4_3 = A0_2
          L3_3["@identifier"] = L4_3
          L4_3 = json
          L4_3 = L4_3.encode
          L5_3 = L2_2
          L4_3 = L4_3(L5_3)
          L3_3["@stats"] = L4_3
          function L4_3(A0_4)
            local L1_4
            L1_4 = true
            L1_2 = L1_4
          end
          L1_3(L2_3, L3_3, L4_3)
        end
      end
      L3_2(L4_2, L5_2, L6_2)
    end
    return L2_2
  end
  GymStatsData = L0_1
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:GymSynchronize"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:GymSynchronize"
  function L2_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
    L0_2 = source
    L1_2 = playerloaded
    L1_2 = L1_2[L0_2]
    if nil == L1_2 then
      L1_2 = TriggerClientEvent
      L2_2 = "rtx_gym:PlayerLoadedClient"
      L3_2 = L0_2
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = playerloaded
      L2_2 = GetPlayerIdentifierRTX
      L3_2 = L0_2
      L2_2 = L2_2(L3_2)
      L1_2[L0_2] = L2_2
      L1_2 = gymonetimedata
      L2_2 = {}
      L1_2[L0_2] = L2_2
      L1_2 = gympassdata
      L2_2 = {}
      L1_2[L0_2] = L2_2
      L1_2 = playersupplements
      L2_2 = {}
      L2_2.protein = nil
      L2_2.creatine = nil
      L2_2.preworkout = nil
      L2_2.testosterone = nil
      L1_2[L0_2] = L2_2
      L1_2 = GetPlayerIdentifierRTX
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      L2_2 = GymStatsData
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L3_2 = Config
      L3_2 = L3_2.DifferentStatsSystem
      if false == L3_2 then
        L3_2 = playerneeds
        L3_2[L0_2] = L2_2
        L3_2 = Config
        L3_2 = L3_2.OwneableGyms
        if true == L3_2 then
          L3_2 = ipairs
          L4_2 = Config
          L4_2 = L4_2.Gyms
          L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
          for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
            L9_2 = L8_2.gymowneable
            if L9_2 then
              L9_2 = ownedgyms
              L9_2 = L9_2[L7_2]
              if nil ~= L9_2 then
                L9_2 = TriggerClientEvent
                L10_2 = "rtx_gym:SynchronizeOwnedGym"
                L11_2 = L0_2
                L12_2 = L7_2
                L13_2 = ownedgyms
                L13_2 = L13_2[L7_2]
                L13_2 = L13_2.gymowned
                L9_2(L10_2, L11_2, L12_2, L13_2)
                L9_2 = ownedgyms
                L9_2 = L9_2[L7_2]
                L9_2 = L9_2.gymownedidentifier
                if L9_2 == L1_2 then
                  L9_2 = TriggerClientEvent
                  L10_2 = "rtx_gym:SynchronizeYourOwnedGym"
                  L11_2 = L0_2
                  L12_2 = L7_2
                  L13_2 = true
                  L9_2(L10_2, L11_2, L12_2, L13_2)
                end
              end
            end
          end
        end
      else
        L3_2 = Config
        L3_2 = L3_2.OwneableGyms
        if true == L3_2 then
          L3_2 = ipairs
          L4_2 = Config
          L4_2 = L4_2.Gyms
          L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
          for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
            L9_2 = L8_2.gymowneable
            if L9_2 then
              L9_2 = ownedgyms
              L9_2 = L9_2[L7_2]
              if nil ~= L9_2 then
                L9_2 = TriggerClientEvent
                L10_2 = "rtx_gym:SynchronizeOwnedGym"
                L11_2 = L0_2
                L12_2 = L7_2
                L13_2 = ownedgyms
                L13_2 = L13_2[L7_2]
                L13_2 = L13_2.gymowned
                L9_2(L10_2, L11_2, L12_2, L13_2)
                L9_2 = ownedgyms
                L9_2 = L9_2[L7_2]
                L9_2 = L9_2.gymownedidentifier
                if L9_2 == L1_2 then
                  L9_2 = TriggerClientEvent
                  L10_2 = "rtx_gym:SynchronizeYourOwnedGym"
                  L11_2 = L0_2
                  L12_2 = L7_2
                  L13_2 = true
                  L9_2(L10_2, L11_2, L12_2, L13_2)
                end
              end
            end
          end
        end
      end
      L3_2 = Config
      L3_2 = L3_2.DifferentStatsSystem
      if false == L3_2 then
        L3_2 = TriggerClientEvent
        L4_2 = "rtx_gym:SynchronizeStats"
        L5_2 = L0_2
        L6_2 = playerneeds
        L6_2 = L6_2[L0_2]
        L3_2(L4_2, L5_2, L6_2)
      end
      L3_2 = ipairs
      L4_2 = Config
      L4_2 = L4_2.Gyms
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = L8_2.gympayed
        if L9_2 then
          L9_2 = MySQL
          L9_2 = L9_2.Async
          L9_2 = L9_2.fetchScalar
          L10_2 = "SELECT gymtime FROM gympass WHERE identifier = @identifier AND gymid = @gymid "
          L11_2 = {}
          L11_2["@identifier"] = L1_2
          L11_2["@gymid"] = L7_2
          function L12_2(A0_3)
            local L1_3, L2_3
            if A0_3 then
              L1_3 = gympassdata
              L2_3 = L0_2
              L1_3 = L1_3[L2_3]
              L2_3 = L7_2
              L1_3[L2_3] = A0_3
            end
          end
          L9_2(L10_2, L11_2, L12_2)
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:GymBuyEntry"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:GymBuyEntry"
  function L2_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
    L2_2 = source
    if nil ~= A0_2 then
      L3_2 = playerneeds
      L3_2 = L3_2[L2_2]
      if nil ~= L3_2 then
        L3_2 = gymonetimedata
        L3_2 = L3_2[L2_2]
        if nil ~= L3_2 then
          L3_2 = gympassdata
          L3_2 = L3_2[L2_2]
          if nil ~= L3_2 then
            L3_2 = playersupplements
            L3_2 = L3_2[L2_2]
            if nil ~= L3_2 then
              goto lbl_23
            end
          end
        end
      end
      L3_2 = PlayerDataReformated
      L4_2 = L2_2
      L3_2(L4_2)
      ::lbl_23::
      L3_2 = Config
      L3_2 = L3_2.Gyms
      L3_2 = L3_2[A0_2]
      L4_2 = L3_2.gymowneable
      if L4_2 then
        L4_2 = Config
        L4_2 = L4_2.OwneableGyms
        if true == L4_2 then
          L4_2 = ownedgyms
          L4_2 = L4_2[A0_2]
          if nil ~= L4_2 then
            L4_2 = ownedgyms
            L4_2 = L4_2[A0_2]
            L5_2 = L4_2.gymclosed
            if false == L5_2 then
              L5_2 = 0
              if "normal" == A1_2 then
                L5_2 = L3_2.gymprice
              elseif "pass" == A1_2 then
                L6_2 = round
                L7_2 = L3_2.gymprice
                L8_2 = Config
                L8_2 = L8_2.GymPassMultipler
                L7_2 = L7_2 * L8_2
                L8_2 = 0
                L6_2 = L6_2(L7_2, L8_2)
                L5_2 = L6_2
              end
              L6_2 = GetMoneyRTX
              L7_2 = L2_2
              L6_2 = L6_2(L7_2)
              if L5_2 <= L6_2 then
                L6_2 = RemoveMoneyRTX
                L7_2 = L2_2
                L8_2 = L5_2
                L6_2(L7_2, L8_2)
                if "normal" == A1_2 then
                  L6_2 = TriggerClientEvent
                  L7_2 = "rtx_gym:Notify"
                  L8_2 = L2_2
                  L9_2 = LanguageFile
                  L10_2 = "youboughtentry"
                  L11_2 = L3_2.gymname
                  L12_2 = L3_2.gymtime
                  L13_2 = L5_2
                  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
                  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
                  L6_2 = L3_2.gymtime
                  L6_2 = 60 * L6_2
                  L7_2 = os
                  L7_2 = L7_2.time
                  L7_2 = L7_2()
                  L7_2 = L7_2 + L6_2
                  L8_2 = gymonetimedata
                  L8_2 = L8_2[L2_2]
                  if nil == L8_2 then
                    L8_2 = gymonetimedata
                    L9_2 = {}
                    L8_2[L2_2] = L9_2
                  end
                  L8_2 = gymonetimedata
                  L8_2 = L8_2[L2_2]
                  L8_2[A0_2] = L7_2
                elseif "pass" == A1_2 then
                  L6_2 = TriggerClientEvent
                  L7_2 = "rtx_gym:Notify"
                  L8_2 = L2_2
                  L9_2 = LanguageFile
                  L10_2 = "youboughtpass"
                  L11_2 = L3_2.gymname
                  L12_2 = L3_2.gympassdays
                  L13_2 = L5_2
                  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
                  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
                  L6_2 = L3_2.gympassdays
                  L6_2 = 86400 * L6_2
                  L7_2 = os
                  L7_2 = L7_2.time
                  L7_2 = L7_2()
                  L7_2 = L7_2 + L6_2
                  L8_2 = GetPlayerIdentifierRTX
                  L9_2 = L2_2
                  L8_2 = L8_2(L9_2)
                  L9_2 = MySQL
                  L9_2 = L9_2.Async
                  L9_2 = L9_2.fetchScalar
                  L10_2 = "SELECT 1 FROM gympass WHERE identifier = @identifier AND gymid = @gymid "
                  L11_2 = {}
                  L11_2["@identifier"] = L8_2
                  L11_2["@gymid"] = A0_2
                  function L12_2(A0_3)
                    local L1_3, L2_3, L3_3, L4_3
                    if A0_3 then
                      L1_3 = MySQL
                      L1_3 = L1_3.Sync
                      L1_3 = L1_3.execute
                      L2_3 = "UPDATE gympass SET gymtime = @gymtime WHERE identifier = @identifier AND gymid = @gymid"
                      L3_3 = {}
                      L4_3 = L8_2
                      L3_3["@identifier"] = L4_3
                      L4_3 = A0_2
                      L3_3["@gymid"] = L4_3
                      L4_3 = L7_2
                      L3_3["@gymtime"] = L4_3
                      L1_3(L2_3, L3_3)
                      L1_3 = gympassdata
                      L2_3 = L2_2
                      L1_3 = L1_3[L2_3]
                      if nil == L1_3 then
                        L1_3 = gympassdata
                        L2_3 = L2_2
                        L3_3 = {}
                        L1_3[L2_3] = L3_3
                      end
                      L1_3 = gympassdata
                      L2_3 = L2_2
                      L1_3 = L1_3[L2_3]
                      L2_3 = A0_2
                      L3_3 = L7_2
                      L1_3[L2_3] = L3_3
                    else
                      L1_3 = MySQL
                      L1_3 = L1_3.Async
                      L1_3 = L1_3.execute
                      L2_3 = "INSERT INTO gympass (identifier, gymid, gymtime) VALUES (@identifier,@gymid,@gymtime)"
                      L3_3 = {}
                      L4_3 = L8_2
                      L3_3["@identifier"] = L4_3
                      L4_3 = A0_2
                      L3_3["@gymid"] = L4_3
                      L4_3 = L7_2
                      L3_3["@gymtime"] = L4_3
                      function L4_3(A0_4)
                        local L1_4, L2_4, L3_4
                        L1_4 = gympassdata
                        L2_4 = L2_2
                        L1_4 = L1_4[L2_4]
                        if nil == L1_4 then
                          L1_4 = gympassdata
                          L2_4 = L2_2
                          L3_4 = {}
                          L1_4[L2_4] = L3_4
                        end
                        L1_4 = gympassdata
                        L2_4 = L2_2
                        L1_4 = L1_4[L2_4]
                        L2_4 = A0_2
                        L3_4 = L7_2
                        L1_4[L2_4] = L3_4
                      end
                      L1_3(L2_3, L3_3, L4_3)
                    end
                  end
                  L9_2(L10_2, L11_2, L12_2)
                end
                L6_2 = L4_2.gymbalance
                L6_2 = L6_2 + L5_2
                L4_2.gymbalance = L6_2
                L6_2 = ownedgyms
                L6_2 = L6_2[A0_2]
                L6_2 = L6_2.gymvisitorsdata
                L6_2 = #L6_2
                if L6_2 > 0 then
                  L7_2 = ownedgyms
                  L7_2 = L7_2[A0_2]
                  L7_2 = L7_2.gymvisitorsdata
                  L7_2 = L7_2[L6_2]
                  L8_2 = os
                  L8_2 = L8_2.date
                  L9_2 = "*t"
                  L10_2 = ownedgyms
                  L10_2 = L10_2[A0_2]
                  L10_2 = L10_2.gymvisitorsdata
                  L10_2 = L10_2[L6_2]
                  L10_2 = L10_2.earningstime
                  L8_2 = L8_2(L9_2, L10_2)
                  L9_2 = os
                  L9_2 = L9_2.time
                  L9_2 = L9_2()
                  L10_2 = os
                  L10_2 = L10_2.date
                  L11_2 = "*t"
                  L12_2 = L9_2
                  L10_2 = L10_2(L11_2, L12_2)
                  L11_2 = L8_2.month
                  L12_2 = L10_2.month
                  if L11_2 == L12_2 then
                    L11_2 = L8_2.day
                    L12_2 = L10_2.day
                    if L11_2 == L12_2 then
                      L11_2 = L8_2.year
                      L12_2 = L10_2.year
                      if L11_2 == L12_2 then
                        L11_2 = ownedgyms
                        L11_2 = L11_2[A0_2]
                        L11_2 = L11_2.gymvisitorsdata
                        L11_2 = L11_2[L6_2]
                        L12_2 = ownedgyms
                        L12_2 = L12_2[A0_2]
                        L12_2 = L12_2.gymvisitorsdata
                        L12_2 = L12_2[L6_2]
                        L12_2 = L12_2.earningsvalue
                        L12_2 = L12_2 + L5_2
                        L11_2.earningsvalue = L12_2
                    end
                  end
                  else
                    L11_2 = L6_2 + 1
                    L12_2 = ownedgyms
                    L12_2 = L12_2[A0_2]
                    L12_2 = L12_2.gymvisitorsdata
                    L13_2 = {}
                    L14_2 = os
                    L14_2 = L14_2.time
                    L14_2 = L14_2()
                    L13_2.earningstime = L14_2
                    L13_2.earningsvalue = L5_2
                    L12_2[L11_2] = L13_2
                  end
                else
                  L7_2 = L6_2 + 1
                  L8_2 = ownedgyms
                  L8_2 = L8_2[A0_2]
                  L8_2 = L8_2.gymvisitorsdata
                  L9_2 = {}
                  L10_2 = os
                  L10_2 = L10_2.time
                  L10_2 = L10_2()
                  L9_2.earningstime = L10_2
                  L9_2.earningsvalue = L5_2
                  L8_2[L7_2] = L9_2
                end
                L7_2 = MySQL
                L7_2 = L7_2.Sync
                L7_2 = L7_2.execute
                L8_2 = "UPDATE owned_gyms SET gymbalance = @gymbalance, gymvisitorsdata = @gymvisitorsdata  WHERE gymid = @gymid"
                L9_2 = {}
                L9_2["@gymid"] = A0_2
                L10_2 = L4_2.gymbalance
                L9_2["@gymbalance"] = L10_2
                L10_2 = json
                L10_2 = L10_2.encode
                L11_2 = L4_2.gymvisitorsdata
                L10_2 = L10_2(L11_2)
                L9_2["@gymvisitorsdata"] = L10_2
                L7_2(L8_2, L9_2)
              else
                L6_2 = TriggerClientEvent
                L7_2 = "rtx_gym:Notify"
                L8_2 = L2_2
                L9_2 = Language
                L10_2 = Config
                L10_2 = L10_2.Language
                L9_2 = L9_2[L10_2]
                L9_2 = L9_2.nomoneyenough
                L6_2(L7_2, L8_2, L9_2)
              end
            else
              L5_2 = TriggerClientEvent
              L6_2 = "rtx_gym:Notify"
              L7_2 = L2_2
              L8_2 = Language
              L9_2 = Config
              L9_2 = L9_2.Language
              L8_2 = L8_2[L9_2]
              L8_2 = L8_2.gymisclosed
              L5_2(L6_2, L7_2, L8_2)
            end
          end
      end
      else
        L4_2 = 0
        if "normal" == A1_2 then
          L4_2 = L3_2.gymprice
        elseif "pass" == A1_2 then
          L5_2 = round
          L6_2 = L3_2.gymprice
          L7_2 = Config
          L7_2 = L7_2.GymPassMultipler
          L6_2 = L6_2 * L7_2
          L7_2 = 0
          L5_2 = L5_2(L6_2, L7_2)
          L4_2 = L5_2
        end
        L5_2 = GetMoneyRTX
        L6_2 = L2_2
        L5_2 = L5_2(L6_2)
        if L4_2 <= L5_2 then
          L5_2 = RemoveMoneyRTX
          L6_2 = L2_2
          L7_2 = L4_2
          L5_2(L6_2, L7_2)
          if "normal" == A1_2 then
            L5_2 = TriggerClientEvent
            L6_2 = "rtx_gym:Notify"
            L7_2 = L2_2
            L8_2 = LanguageFile
            L9_2 = "youboughtentry"
            L10_2 = L3_2.gymname
            L11_2 = L3_2.gymtime
            L12_2 = L4_2
            L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
            L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
            L5_2 = L3_2.gymtime
            L5_2 = 60 * L5_2
            L6_2 = os
            L6_2 = L6_2.time
            L6_2 = L6_2()
            L6_2 = L6_2 + L5_2
            L7_2 = gymonetimedata
            L7_2 = L7_2[L2_2]
            if nil == L7_2 then
              L7_2 = gymonetimedata
              L8_2 = {}
              L7_2[L2_2] = L8_2
            end
            L7_2 = gymonetimedata
            L7_2 = L7_2[L2_2]
            L7_2[A0_2] = L6_2
          elseif "pass" == A1_2 then
            L5_2 = TriggerClientEvent
            L6_2 = "rtx_gym:Notify"
            L7_2 = L2_2
            L8_2 = LanguageFile
            L9_2 = "youboughtpass"
            L10_2 = L3_2.gymname
            L11_2 = L3_2.gympassdays
            L12_2 = L4_2
            L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
            L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
            L5_2 = L3_2.gympassdays
            L5_2 = 86400 * L5_2
            L6_2 = os
            L6_2 = L6_2.time
            L6_2 = L6_2()
            L6_2 = L6_2 + L5_2
            L7_2 = GetPlayerIdentifierRTX
            L8_2 = L2_2
            L7_2 = L7_2(L8_2)
            L8_2 = MySQL
            L8_2 = L8_2.Async
            L8_2 = L8_2.fetchScalar
            L9_2 = "SELECT 1 FROM gympass WHERE identifier = @identifier AND gymid = @gymid "
            L10_2 = {}
            L10_2["@identifier"] = L7_2
            L10_2["@gymid"] = A0_2
            function L11_2(A0_3)
              local L1_3, L2_3, L3_3, L4_3
              if A0_3 then
                L1_3 = MySQL
                L1_3 = L1_3.Sync
                L1_3 = L1_3.execute
                L2_3 = "UPDATE gympass SET gymtime = @gymtime WHERE identifier = @identifier AND gymid = @gymid"
                L3_3 = {}
                L4_3 = L7_2
                L3_3["@identifier"] = L4_3
                L4_3 = A0_2
                L3_3["@gymid"] = L4_3
                L4_3 = L6_2
                L3_3["@gymtime"] = L4_3
                L1_3(L2_3, L3_3)
                L1_3 = gympassdata
                L2_3 = L2_2
                L1_3 = L1_3[L2_3]
                if nil == L1_3 then
                  L1_3 = gympassdata
                  L2_3 = L2_2
                  L3_3 = {}
                  L1_3[L2_3] = L3_3
                end
                L1_3 = gympassdata
                L2_3 = L2_2
                L1_3 = L1_3[L2_3]
                L2_3 = A0_2
                L3_3 = L6_2
                L1_3[L2_3] = L3_3
              else
                L1_3 = MySQL
                L1_3 = L1_3.Async
                L1_3 = L1_3.execute
                L2_3 = "INSERT INTO gympass (identifier, gymid, gymtime) VALUES (@identifier,@gymid,@gymtime)"
                L3_3 = {}
                L4_3 = L7_2
                L3_3["@identifier"] = L4_3
                L4_3 = A0_2
                L3_3["@gymid"] = L4_3
                L4_3 = L6_2
                L3_3["@gymtime"] = L4_3
                function L4_3(A0_4)
                  local L1_4, L2_4, L3_4
                  L1_4 = gympassdata
                  L2_4 = L2_2
                  L1_4 = L1_4[L2_4]
                  if nil == L1_4 then
                    L1_4 = gympassdata
                    L2_4 = L2_2
                    L3_4 = {}
                    L1_4[L2_4] = L3_4
                  end
                  L1_4 = gympassdata
                  L2_4 = L2_2
                  L1_4 = L1_4[L2_4]
                  L2_4 = A0_2
                  L3_4 = L6_2
                  L1_4[L2_4] = L3_4
                end
                L1_3(L2_3, L3_3, L4_3)
              end
            end
            L8_2(L9_2, L10_2, L11_2)
          end
        else
          L5_2 = TriggerClientEvent
          L6_2 = "rtx_gym:Notify"
          L7_2 = L2_2
          L8_2 = Language
          L9_2 = Config
          L9_2 = L9_2.Language
          L8_2 = L8_2[L9_2]
          L8_2 = L8_2.nomoneyenough
          L5_2(L6_2, L7_2, L8_2)
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:GymBuy"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:GymBuy"
  function L2_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
    L1_2 = source
    if nil ~= A0_2 then
      L2_2 = Config
      L2_2 = L2_2.Gyms
      L2_2 = L2_2[A0_2]
      L3_2 = L2_2.gymowneable
      if L3_2 then
        L3_2 = ownedgyms
        L3_2 = L3_2[A0_2]
        if nil ~= L3_2 then
          L3_2 = ownedgyms
          L3_2 = L3_2[A0_2]
          L4_2 = L3_2.gymowned
          if false == L4_2 then
            L4_2 = GetMoneyRTX
            L5_2 = L1_2
            L4_2 = L4_2(L5_2)
            L5_2 = L2_2.gymowneableprice
            if L4_2 >= L5_2 then
              L4_2 = RemoveMoneyRTX
              L5_2 = L1_2
              L6_2 = L2_2.gymowneableprice
              L4_2(L5_2, L6_2)
              L4_2 = GetPlayerIdentifierRTX
              L5_2 = L1_2
              L4_2 = L4_2(L5_2)
              L3_2.gymowned = true
              L5_2 = TriggerClientEvent
              L6_2 = "rtx_gym:SynchronizeOwnedGym"
              L7_2 = -1
              L8_2 = A0_2
              L9_2 = true
              L5_2(L6_2, L7_2, L8_2, L9_2)
              L5_2 = TriggerClientEvent
              L6_2 = "rtx_gym:SynchronizeYourOwnedGym"
              L7_2 = L1_2
              L8_2 = A0_2
              L9_2 = true
              L5_2(L6_2, L7_2, L8_2, L9_2)
              L5_2 = TriggerClientEvent
              L6_2 = "rtx_gym:GymBuyed"
              L7_2 = -1
              L8_2 = A0_2
              L5_2(L6_2, L7_2, L8_2)
              L3_2.gymowned = true
              L3_2.gymownedidentifier = L4_2
              L5_2 = TriggerClientEvent
              L6_2 = "rtx_gym:Notify"
              L7_2 = L1_2
              L8_2 = LanguageFile
              L9_2 = "youboughtgym"
              L10_2 = L2_2.gymname
              L11_2 = L2_2.gymowneableprice
              L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2)
              L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
              L5_2 = MySQL
              L5_2 = L5_2.Async
              L5_2 = L5_2.fetchScalar
              L6_2 = "SELECT 1 FROM owned_gyms WHERE gymid = @gymid "
              L7_2 = {}
              L7_2["@gymid"] = A0_2
              function L8_2(A0_3)
                local L1_3, L2_3, L3_3, L4_3, L5_3
                if A0_3 then
                  L1_3 = MySQL
                  L1_3 = L1_3.Sync
                  L1_3 = L1_3.execute
                  L2_3 = "UPDATE owned_gyms SET identifier = @identifier WHERE gymid = @gymid"
                  L3_3 = {}
                  L4_3 = L4_2
                  L3_3["@identifier"] = L4_3
                  L4_3 = A0_2
                  L3_3["@gymid"] = L4_3
                  L1_3(L2_3, L3_3)
                else
                  L1_3 = MySQL
                  L1_3 = L1_3.Async
                  L1_3 = L1_3.execute
                  L2_3 = "INSERT INTO owned_gyms (identifier, gymid, gymprice, gymbalance, gymvisitorsdata) VALUES (@identifier,@gymid,@gymprice,@gymbalance,@gymvisitorsdata)"
                  L3_3 = {}
                  L4_3 = L4_2
                  L3_3["@identifier"] = L4_3
                  L4_3 = A0_2
                  L3_3["@gymid"] = L4_3
                  L4_3 = L2_2.gymprice
                  L3_3["@gymprice"] = L4_3
                  L3_3["@gymbalance"] = 0
                  L4_3 = json
                  L4_3 = L4_3.encode
                  L5_3 = {}
                  L4_3 = L4_3(L5_3)
                  L3_3["@gymvisitorsdata"] = L4_3
                  function L4_3(A0_4)
                    local L1_4
                  end
                  L1_3(L2_3, L3_3, L4_3)
                end
              end
              L5_2(L6_2, L7_2, L8_2)
            else
              L4_2 = TriggerClientEvent
              L5_2 = "rtx_gym:Notify"
              L6_2 = L1_2
              L7_2 = Language
              L8_2 = Config
              L8_2 = L8_2.Language
              L7_2 = L7_2[L8_2]
              L7_2 = L7_2.nomoneyenoughgym
              L4_2(L5_2, L6_2, L7_2)
            end
          end
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:GymOpenManagment"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:GymOpenManagment"
  function L2_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
    L1_2 = source
    if nil ~= A0_2 then
      L2_2 = Config
      L2_2 = L2_2.Gyms
      L2_2 = L2_2[A0_2]
      L3_2 = GetPlayerIdentifierRTX
      L4_2 = L1_2
      L3_2 = L3_2(L4_2)
      L4_2 = L2_2.gymowneable
      if L4_2 then
        L4_2 = ownedgyms
        L4_2 = L4_2[A0_2]
        L4_2 = L4_2.gymownedidentifier
        if L4_2 == L3_2 then
          L4_2 = ownedgyms
          L4_2 = L4_2[A0_2]
          L5_2 = {}
          L6_2 = ipairs
          L7_2 = L4_2.gymvisitorsdata
          L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
          for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
            L12_2 = os
            L12_2 = L12_2.date
            L13_2 = "*t"
            L14_2 = L11_2.earningstime
            L12_2 = L12_2(L13_2, L14_2)
            L13_2 = table
            L13_2 = L13_2.insert
            L14_2 = L5_2
            L15_2 = {}
            L16_2 = ""
            L17_2 = L12_2.day
            L18_2 = "."
            L19_2 = L12_2.month
            L20_2 = ""
            L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2
            L15_2.earningstime = L16_2
            L16_2 = L11_2.earningsvalue
            L15_2.earningsvalue = L16_2
            L13_2(L14_2, L15_2)
          end
          L6_2 = TriggerClientEvent
          L7_2 = "rtx_gym:OpenGymMenu"
          L8_2 = L1_2
          L9_2 = A0_2
          L10_2 = L4_2.gymbalance
          L11_2 = L4_2.gymclosed
          L12_2 = L2_2.gymprice
          L13_2 = L5_2
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:ChangeEntryPrice"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:ChangeEntryPrice"
  function L2_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
    L2_2 = source
    if nil ~= A0_2 then
      L3_2 = Config
      L3_2 = L3_2.Gyms
      L3_2 = L3_2[A0_2]
      L4_2 = L3_2.gymowneable
      if L4_2 then
        L4_2 = GetPlayerIdentifierRTX
        L5_2 = L2_2
        L4_2 = L4_2(L5_2)
        L5_2 = ownedgyms
        L5_2 = L5_2[A0_2]
        L5_2 = L5_2.gymownedidentifier
        if L5_2 == L4_2 then
          L5_2 = ownedgyms
          L5_2 = L5_2[A0_2]
          if A1_2 > 0 then
            L6_2 = Config
            L6_2 = L6_2.GymMaxPrice
            if A1_2 <= L6_2 then
              L3_2.gymprice = A1_2
              L6_2 = MySQL
              L6_2 = L6_2.Sync
              L6_2 = L6_2.execute
              L7_2 = "UPDATE owned_gyms SET gymprice = @gymprice WHERE gymid = @gymid"
              L8_2 = {}
              L8_2["@gymid"] = A0_2
              L8_2["@gymprice"] = A1_2
              L6_2(L7_2, L8_2)
              L6_2 = TriggerClientEvent
              L7_2 = "rtx_gym:Notify"
              L8_2 = L2_2
              L9_2 = LanguageFile
              L10_2 = "youchangedgymentry"
              L11_2 = A1_2
              L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2)
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
              L6_2 = TriggerClientEvent
              L7_2 = "rtx_gym:GymMenuUpdate"
              L8_2 = L2_2
              L9_2 = A0_2
              L10_2 = L5_2.gymbalance
              L11_2 = L5_2.gymclosed
              L12_2 = L3_2.gymprice
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
          end
          else
            L6_2 = TriggerClientEvent
            L7_2 = "rtx_gym:Notify"
            L8_2 = L2_2
            L9_2 = LanguageFile
            L10_2 = "minimumentryamount"
            L11_2 = Config
            L11_2 = L11_2.GymMaxPrice
            L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2)
            L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
          end
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:ManagmentWithdraw"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:ManagmentWithdraw"
  function L2_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
    L1_2 = source
    if nil ~= A0_2 then
      L2_2 = Config
      L2_2 = L2_2.Gyms
      L2_2 = L2_2[A0_2]
      L3_2 = L2_2.gymowneable
      if L3_2 then
        L3_2 = GetPlayerIdentifierRTX
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        L4_2 = ownedgyms
        L4_2 = L4_2[A0_2]
        L4_2 = L4_2.gymownedidentifier
        if L4_2 == L3_2 then
          L4_2 = ownedgyms
          L4_2 = L4_2[A0_2]
          L5_2 = L4_2.gymbalance
          if L5_2 > 0 then
            L5_2 = TriggerClientEvent
            L6_2 = "rtx_gym:Notify"
            L7_2 = L1_2
            L8_2 = LanguageFile
            L9_2 = "youwithdraw"
            L10_2 = L4_2.gymbalance
            L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2)
            L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
            L5_2 = AddMoneyRTX
            L6_2 = L1_2
            L7_2 = L4_2.gymbalance
            L5_2(L6_2, L7_2)
            L4_2.gymbalance = 0
            L5_2 = MySQL
            L5_2 = L5_2.Sync
            L5_2 = L5_2.execute
            L6_2 = "UPDATE owned_gyms SET gymbalance = @gymbalance WHERE gymid = @gymid"
            L7_2 = {}
            L7_2["@gymid"] = A0_2
            L7_2["@gymbalance"] = 0
            L5_2(L6_2, L7_2)
            L5_2 = TriggerClientEvent
            L6_2 = "rtx_gym:GymMenuUpdate"
            L7_2 = L1_2
            L8_2 = A0_2
            L9_2 = L4_2.gymbalance
            L10_2 = L4_2.gymclosed
            L11_2 = L2_2.gymprice
            L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
          else
            L5_2 = TriggerClientEvent
            L6_2 = "rtx_gym:Notify"
            L7_2 = L1_2
            L8_2 = Language
            L9_2 = Config
            L9_2 = L9_2.Language
            L8_2 = L8_2[L9_2]
            L8_2 = L8_2.nomoneywithdraw
            L5_2(L6_2, L7_2, L8_2)
          end
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:CloseStatus"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:CloseStatus"
  function L2_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
    L2_2 = source
    if nil ~= A0_2 then
      L3_2 = Config
      L3_2 = L3_2.Gyms
      L3_2 = L3_2[A0_2]
      L4_2 = L3_2.gymowneable
      if L4_2 then
        L4_2 = GetPlayerIdentifierRTX
        L5_2 = L2_2
        L4_2 = L4_2(L5_2)
        L5_2 = ownedgyms
        L5_2 = L5_2[A0_2]
        L5_2 = L5_2.gymownedidentifier
        if L5_2 == L4_2 then
          L5_2 = ownedgyms
          L5_2 = L5_2[A0_2]
          L5_2.gymclosed = A1_2
          if A1_2 then
            L6_2 = TriggerClientEvent
            L7_2 = "rtx_gym:Notify"
            L8_2 = L2_2
            L9_2 = Language
            L10_2 = Config
            L10_2 = L10_2.Language
            L9_2 = L9_2[L10_2]
            L9_2 = L9_2.yourgymclosed
            L6_2(L7_2, L8_2, L9_2)
            L6_2 = TriggerClientEvent
            L7_2 = "rtx_gym:GymStop"
            L8_2 = -1
            L9_2 = A0_2
            L10_2 = "closed"
            L6_2(L7_2, L8_2, L9_2, L10_2)
          else
            L6_2 = TriggerClientEvent
            L7_2 = "rtx_gym:Notify"
            L8_2 = L2_2
            L9_2 = Language
            L10_2 = Config
            L10_2 = L10_2.Language
            L9_2 = L9_2[L10_2]
            L9_2 = L9_2.yourgymopened
            L6_2(L7_2, L8_2, L9_2)
          end
          L6_2 = MySQL
          L6_2 = L6_2.Sync
          L6_2 = L6_2.execute
          L7_2 = "UPDATE owned_gyms SET gymclosed = @gymclosed WHERE gymid = @gymid"
          L8_2 = {}
          L8_2["@gymid"] = A0_2
          L8_2["@gymclosed"] = A1_2
          L6_2(L7_2, L8_2)
          L6_2 = TriggerClientEvent
          L7_2 = "rtx_gym:GymMenuUpdate"
          L8_2 = L2_2
          L9_2 = A0_2
          L10_2 = L5_2.gymbalance
          L11_2 = L5_2.gymclosed
          L12_2 = L3_2.gymprice
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:SellGym"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:SellGym"
  function L2_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
    L1_2 = source
    if nil ~= A0_2 then
      L2_2 = Config
      L2_2 = L2_2.Gyms
      L2_2 = L2_2[A0_2]
      L3_2 = L2_2.gymowneable
      if L3_2 then
        L3_2 = GetPlayerIdentifierRTX
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        L4_2 = ownedgyms
        L4_2 = L4_2[A0_2]
        L4_2 = L4_2.gymownedidentifier
        if L4_2 == L3_2 then
          L4_2 = round
          L5_2 = L2_2.gymowneableprice
          L6_2 = Config
          L6_2 = L6_2.GymSellMultipler
          L5_2 = L5_2 * L6_2
          L6_2 = 0
          L4_2 = L4_2(L5_2, L6_2)
          L5_2 = ownedgyms
          L5_2 = L5_2[A0_2]
          L5_2.gymownedidentifier = ""
          L6_2 = TriggerClientEvent
          L7_2 = "rtx_gym:Notify"
          L8_2 = L1_2
          L9_2 = LanguageFile
          L10_2 = "yousoldgym"
          L11_2 = L4_2
          L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
          L6_2 = AddMoneyRTX
          L7_2 = L1_2
          L8_2 = L4_2
          L6_2(L7_2, L8_2)
          L6_2 = TriggerClientEvent
          L7_2 = "rtx_gym:SynchronizeYourOwnedGym"
          L8_2 = L1_2
          L9_2 = A0_2
          L10_2 = false
          L6_2(L7_2, L8_2, L9_2, L10_2)
          L6_2 = MySQL
          L6_2 = L6_2.Async
          L6_2 = L6_2.execute
          L7_2 = "DELETE FROM owned_gyms WHERE gymid = @gymid"
          L8_2 = {}
          L8_2["@gymid"] = A0_2
          function L9_2(A0_3)
            local L1_3, L2_3, L3_3, L4_3, L5_3
            L5_2.gymowned = false
            L5_2.gymbalance = 0
            L1_3 = Config
            L1_3 = L1_3.GymMaxPrice
            L2_2.gymprice = L1_3
            L5_2.gymclosed = false
            L1_3 = TriggerClientEvent
            L2_3 = "rtx_gym:SynchronizeOwnedGym"
            L3_3 = -1
            L4_3 = A0_2
            L5_3 = false
            L1_3(L2_3, L3_3, L4_3, L5_3)
          end
          L6_2(L7_2, L8_2, L9_2)
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = RegisterServerEvent
  L1_1 = "rtx_gym:TransferGym"
  L0_1(L1_1)
  L0_1 = AddEventHandler
  L1_1 = "rtx_gym:TransferGym"
  function L2_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
    L2_2 = source
    if nil ~= A0_2 then
      L3_2 = Config
      L3_2 = L3_2.Gyms
      L3_2 = L3_2[A0_2]
      L4_2 = L3_2.gymowneable
      if L4_2 then
        L4_2 = GetPlayerIdentifierRTX
        L5_2 = L2_2
        L4_2 = L4_2(L5_2)
        L5_2 = ownedgyms
        L5_2 = L5_2[A0_2]
        L5_2 = L5_2.gymownedidentifier
        if L5_2 == L4_2 then
          L5_2 = L3_2.gymowneableprice
          L6_2 = Config
          L6_2 = L6_2.GymSellMultipler
          L5_2 = L5_2 * L6_2
          L6_2 = ownedgyms
          L6_2 = L6_2[A0_2]
          L7_2 = GetPlayerIdentifierRTX
          L8_2 = A1_2
          L7_2 = L7_2(L8_2)
          L6_2.gymownedidentifier = L7_2
          L8_2 = TriggerClientEvent
          L9_2 = "rtx_gym:Notify"
          L10_2 = L2_2
          L11_2 = Language
          L12_2 = Config
          L12_2 = L12_2.Language
          L11_2 = L11_2[L12_2]
          L11_2 = L11_2.youtransfergym
          L8_2(L9_2, L10_2, L11_2)
          L8_2 = TriggerClientEvent
          L9_2 = "rtx_gym:Notify"
          L10_2 = L2_2
          L11_2 = LanguageFile
          L12_2 = "gymtransferredto"
          L13_2 = L3_2.gymname
          L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
          L8_2 = TriggerClientEvent
          L9_2 = "rtx_gym:SynchronizeYourOwnedGym"
          L10_2 = L2_2
          L11_2 = A0_2
          L12_2 = false
          L8_2(L9_2, L10_2, L11_2, L12_2)
          L8_2 = TriggerClientEvent
          L9_2 = "rtx_gym:SynchronizeYourOwnedGym"
          L10_2 = A1_2
          L11_2 = A0_2
          L12_2 = true
          L8_2(L9_2, L10_2, L11_2, L12_2)
          L8_2 = MySQL
          L8_2 = L8_2.Sync
          L8_2 = L8_2.execute
          L9_2 = "UPDATE owned_gyms SET identifier = @identifier WHERE gymid = @gymid"
          L10_2 = {}
          L10_2["@identifier"] = L7_2
          L10_2["@gymid"] = A0_2
          L8_2(L9_2, L10_2)
        end
      end
    end
  end
  L0_1(L1_1, L2_1)
  L0_1 = Config
  L0_1 = L0_1.DifferentStatsSystem
  if false == L0_1 then
    L0_1 = AddEventHandler
    L1_1 = "playerDropped"
    function L2_1()
      local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
      L0_2 = source
      L1_2 = playerneeds
      L1_2 = L1_2[L0_2]
      if nil ~= L1_2 then
        L1_2 = playerloaded
        L1_2 = L1_2[L0_2]
        if nil ~= L1_2 then
          L1_2 = MySQL
          L1_2 = L1_2.Async
          L1_2 = L1_2.fetchScalar
          L2_2 = "SELECT 1 FROM gymstats WHERE identifier = @identifier"
          L3_2 = {}
          L4_2 = playerloaded
          L4_2 = L4_2[L0_2]
          L3_2["@identifier"] = L4_2
          function L4_2(A0_3)
            local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
            if A0_3 then
              L1_3 = MySQL
              L1_3 = L1_3.Sync
              L1_3 = L1_3.execute
              L2_3 = "UPDATE gymstats SET stats = @stats WHERE identifier = @identifier"
              L3_3 = {}
              L4_3 = playerloaded
              L5_3 = L0_2
              L4_3 = L4_3[L5_3]
              L3_3["@identifier"] = L4_3
              L4_3 = json
              L4_3 = L4_3.encode
              L5_3 = playerneeds
              L6_3 = L0_2
              L5_3 = L5_3[L6_3]
              L4_3 = L4_3(L5_3)
              L3_3["@stats"] = L4_3
              L1_3(L2_3, L3_3)
            end
          end
          L1_2(L2_2, L3_2, L4_2)
        end
      end
      L1_2 = gymusing
      L1_2 = L1_2[L0_2]
      if nil ~= L1_2 then
        L1_2 = gymusing
        L1_2 = L1_2[L0_2]
        if true == L1_2 then
          L1_2 = ipairs
          L2_2 = Config
          L2_2 = L2_2.Gyms
          L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
          for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
            L7_2 = ipairs
            L8_2 = L6_2.exercises
            L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
            for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
              L13_2 = L12_2.status
              L13_2 = L13_2.taken
              if true == L13_2 then
                L13_2 = L12_2.status
                L13_2 = L13_2.takenplayerid
                if L13_2 == L0_2 then
                  L13_2 = L12_2.status
                  L13_2.taken = false
                  L13_2 = L12_2.status
                  L13_2.takenplayerid = nil
                  L13_2 = TriggerClientEvent
                  L14_2 = "rtx_gym:GymHandler"
                  L15_2 = -1
                  L16_2 = L5_2
                  L17_2 = L11_2
                  L18_2 = false
                  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
                end
              end
            end
          end
        end
      end
    end
    L0_1(L1_1, L2_1)
    function L0_1(A0_2)
      local L1_2, L2_2, L3_2, L4_2, L5_2
      L1_2 = playerneeds
      L1_2 = L1_2[A0_2]
      if nil ~= L1_2 then
        L1_2 = GetPlayerIdentifierRTX
        L2_2 = A0_2
        L1_2 = L1_2(L2_2)
        L2_2 = MySQL
        L2_2 = L2_2.Async
        L2_2 = L2_2.fetchScalar
        L3_2 = "SELECT 1 FROM gymstats WHERE identifier = @identifier"
        L4_2 = {}
        L4_2["@identifier"] = L1_2
        function L5_2(A0_3)
          local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
          if A0_3 then
            L1_3 = MySQL
            L1_3 = L1_3.Sync
            L1_3 = L1_3.execute
            L2_3 = "UPDATE gymstats SET stats = @stats WHERE identifier = @identifier"
            L3_3 = {}
            L4_3 = L1_2
            L3_3["@identifier"] = L4_3
            L4_3 = json
            L4_3 = L4_3.encode
            L5_3 = playerneeds
            L6_3 = A0_2
            L5_3 = L5_3[L6_3]
            L4_3 = L4_3(L5_3)
            L3_3["@stats"] = L4_3
            L1_3(L2_3, L3_3)
          end
        end
        L2_2(L3_2, L4_2, L5_2)
      end
    end
    SavePlayer = L0_1
  end
end
function L0_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "[RTX GYM SYSTEM] - Thank you for choosing us - Discord: https://discord.gg/P6KdaDpgAk Store: https://rtx.tebex.io"
  L0_2(L1_2)
end
authorized = L0_1
L0_1 = Citizen
L0_1 = L0_1.CreateThread
function L1_1()
  local L0_2, L1_2
  L0_2 = authorized
  L0_2()
end
L0_1(L1_1)
