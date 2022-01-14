# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Discmap.Repo.insert!(%Discmap.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Ankh-Morpork",
    filepath: "/images/mapfiles/am.png",
    map_id: "1"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "AM Assassins",
    filepath: "/images/mapfiles/am_assassins.png",
    map_id: "2"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "AM Buildings",
    filepath: "/images/mapfiles/am_buildings.png",
    map_id: "3"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "AM Cruets",
    filepath: "/images/mapfiles/am_cruets.png",
    map_id: "4"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "AM Docks",
    filepath: "/images/mapfiles/am_docks.png",
    map_id: "5"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "AM Guilds",
    filepath: "/images/mapfiles/am_guilds.png",
    map_id: "6"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "AM Isle of Gods",
    filepath: "/images/mapfiles/am_isle_gods.png",
    map_id: "7"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Shades Maze",
    filepath: "/images/mapfiles/am_shades.png",
    map_id: "8"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Temple of Small Gods",
    filepath: "/images/mapfiles/am_smallgods.png",
    map_id: "9"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "AM Temples",
    filepath: "/images/mapfiles/am_temples.png",
    map_id: "10"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "AM Thieves",
    filepath: "/images/mapfiles/am_thieves.png",
    map_id: "11"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Unseen University",
    filepath: "/images/mapfiles/am_uu.png",
    map_id: "12"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "AM Warriors",
    filepath: "/images/mapfiles/am_warriors.png",
    map_id: "13"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Pseudopolis Watch House",
    filepath: "/images/mapfiles/am_watch_house.png",
    map_id: "14"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Magpyr's Castle",
    filepath: "/images/mapfiles/magpyr.png",
    map_id: "15"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Bois",
    filepath: "/images/mapfiles/bois.png",
    map_id: "16"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Bes Pelargic",
    filepath: "/images/mapfiles/bp.png",
    map_id: "17"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "BP Buildings",
    filepath: "/images/mapfiles/bp_buildings.png",
    map_id: "18"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "BP Estates",
    filepath: "/images/mapfiles/bp_estates.png",
    map_id: "19"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "BP Wizards",
    filepath: "/images/mapfiles/bp_wizards.png",
    map_id: "20"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Brown Islands",
    filepath: "/images/mapfiles/brown_islands.png",
    map_id: "21"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Death's Domain",
    filepath: "/images/mapfiles/deaths_domain.png",
    map_id: "22"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Djelibeybi",
    filepath: "/images/mapfiles/djb.png",
    map_id: "23"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "IIL - DJB Wizards",
    filepath: "/images/mapfiles/djb_wizards.png",
    map_id: "24"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Ephebe",
    filepath: "/images/mapfiles/ephebe.png",
    map_id: "25"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Ephebe Underdocks",
    filepath: "/images/mapfiles/ephebe_under.png",
    map_id: "26"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Genua",
    filepath: "/images/mapfiles/genua.png",
    map_id: "27"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Genua Sewers",
    filepath: "/images/mapfiles/genua_sewers.png",
    map_id: "28"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "GRFLX Caves",
    filepath: "/images/mapfiles/grflx.png",
    map_id: "29"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Hashishim Caves",
    filepath: "/images/mapfiles/hashishim_caves.png",
    map_id: "30"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Klatch Region",
    filepath: "/images/mapfiles/klatch.png",
    map_id: "31"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Lancre Region",
    filepath: "/images/mapfiles/lancre_castle.png",
    map_id: "32"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Mano Rossa",
    filepath: "/images/mapfiles/mano_rossa.png",
    map_id: "33"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Monks of Cool",
    filepath: "/images/mapfiles/monks_cool.png",
    map_id: "34"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Netherworld",
    filepath: "/images/mapfiles/netherworld.png",
    map_id: "35"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Pumpkin Town",
    filepath: "/images/mapfiles/pumpkin_town.png",
    map_id: "37"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Ramtops Regions",
    filepath: "/images/mapfiles/ramtops.png",
    map_id: "38"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Sto-Lat",
    filepath: "/images/mapfiles/sl.png",
    map_id: "39"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Academy of Artificers",
    filepath: "/images/mapfiles/sl_aoa.png",
    map_id: "40"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Cabbage Warehouse",
    filepath: "/images/mapfiles/sl_cabbages.png",
    map_id: "41"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "AoA Library",
    filepath: "/images/mapfiles/sl_library.png",
    map_id: "42"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Sto-Lat Sewers",
    filepath: "/images/mapfiles/sl_sewers.png",
    map_id: "43"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Sprite Caves",
    filepath: "/images/mapfiles/sprite_caves.png",
    map_id: "44"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Sto Plains Region",
    filepath: "/images/mapfiles/sto_plains.png",
    map_id: "45"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Uberwald Region",
    filepath: "/images/mapfiles/uberwald.png",
    map_id: "46"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "UU Library",
    filepath: "/images/mapfiles/uu_library_full.png",
    map_id: "47"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Klatchian Farmsteads",
    filepath: "/images/mapfiles/farmsteads.png",
    map_id: "48"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "CTF Arena",
    filepath: "/images/mapfiles/ctf_arena.png",
    map_id: "49"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "PK Arena",
    filepath: "/images/mapfiles/pk_arena.png",
    map_id: "50"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "AM Post Office",
    filepath: "/images/mapfiles/am_postoffice.png",
    map_id: "51"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Ninja Guild",
    filepath: "/images/mapfiles/bp_ninjas.png",
    map_id: "52"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "The Travelling Shop",
    filepath: "/images/mapfiles/tshop.png",
    map_id: "53"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Slippery Hollow",
    filepath: "/images/mapfiles/slippery_hollow.png",
    map_id: "54"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "House of Magic - Creel",
    filepath: "/images/mapfiles/creel_guild.png",
    map_id: "55"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Special Areas",
    filepath: "/images/mapfiles/quow_specials.png",
    map_id: "56"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Skund Wolf Trail",
    filepath: "/images/mapfiles/skund_wolftrails.png",
    map_id: "57"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Medina",
    filepath: "/images/mapfiles/medina.png",
    map_id: "58"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Copperhead",
    filepath: "/images/mapfiles/copperhead.png",
    map_id: "59"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "The Citadel",
    filepath: "/images/mapfiles/ephebe_citadel.png",
    map_id: "60"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "AM Fools' Guild",
    filepath: "/images/mapfiles/am_fools.png",
    map_id: "61"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Thursday's Island",
    filepath: "/images/mapfiles/thursday.png",
    map_id: "62"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "SS Unsinkable",
    filepath: "/images/mapfiles/unsinkable.png",
    map_id: "63"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Passage Rooms",
    filepath: "/images/mapfiles/passages.png",
    map_id: "64"
  }
)
Discmap.Repo.insert!(
  %Discmap.Maps.Map{
    name: "Whole Disc",
    filepath: "/images/mapfiles/discwhole.png",
    map_id: "99"
  }
)
