modGuid = "7c7880b6-0ce1-4a03-8b1e-cf12e52aef94"
subClassGuid = "db464043-3497-441a-9ae4-3849a0f41613"

if Ext.Mod.IsModLoaded("67fbbd53-7c7d-4cfa-9409-6d737b4d92a9") then
  local subClasses = {
    DarkRangerSubclass = {
      modGuid = modGuid,
      subClassGuid = subClassGuid,
      class = "ranger",
      subClassName = "DarkRanger"
    }
  }

  local function OnStatsLoaded()
    Mods.SubclassCompatibilityFramework.Api.InsertSubClasses(subClasses)
  end

  Ext.Events.StatsLoaded:Subscribe(OnStatsLoaded)
end