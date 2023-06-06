return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.10.0",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 20,
  height = 23,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 18,
  nextobjectid = 159,
  properties = {
    ["border"] = "starwalkervalley",
    ["light"] = false,
    ["music"] = "starwalkervalley",
    ["name"] = "Test City - Starwalker Valley"
  },
  tilesets = {
    {
      name = "battleborder",
      firstgid = 1,
      filename = "../../../../../ultratestmod/scripts/world/tilesets/battleborder.tsx",
      exportfilename = "../../tilesets/battleborder.lua"
    },
    {
      name = "dw_city_alley",
      firstgid = 99,
      filename = "../../../../../ultratestmod/scripts/world/tilesets/dw_city_alley.tsx",
      exportfilename = "../../tilesets/dw_city_alley.lua"
    },
    {
      name = "city_alleyway",
      firstgid = 209,
      filename = "../../tilesets/city_alleyway.tsx",
      exportfilename = "../../tilesets/city_alleyway.lua"
    },
    {
      name = "dw_city_alley_2",
      firstgid = 524,
      filename = "../../tilesets/dw_city_alley_2.tsx",
      exportfilename = "../../tilesets/dw_city_alley_2.lua"
    },
    {
      name = "street_edges",
      firstgid = 634,
      filename = "../../tilesets/street_edges.tsx"
    },
    {
      name = "surface",
      firstgid = 844,
      filename = "../../tilesets/surface.tsx",
      exportfilename = "../../tilesets/surface.lua"
    },
    {
      name = "objects",
      firstgid = 1469,
      filename = "../../tilesets/objects.tsx",
      exportfilename = "../../tilesets/objects.lua"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 20,
      height = 23,
      id = 1,
      name = "tiles",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 844, 845, 845, 845, 845, 845, 845, 845, 845, 846, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 844, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 846, 0, 0, 0, 0,
        0, 0, 0, 844, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 846, 0, 0, 0,
        0, 0, 844, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 846, 0, 0,
        0, 0, 869, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 871, 0, 0,
        0, 0, 869, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 871, 0, 0,
        0, 0, 869, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 871, 0, 0,
        0, 0, 869, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 871, 0, 0,
        0, 0, 869, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 871, 0, 0,
        0, 0, 869, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 871, 0, 0,
        0, 0, 869, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 871, 0, 0,
        0, 0, 869, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 871, 0, 0,
        0, 0, 894, 895, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 895, 896, 0, 0,
        0, 0, 0, 0, 894, 870, 870, 870, 870, 870, 870, 870, 870, 870, 870, 896, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 894, 870, 870, 870, 870, 870, 870, 870, 870, 896, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 869, 870, 870, 870, 870, 870, 870, 871, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 894, 895, 895, 870, 870, 895, 895, 896, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 869, 871, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 869, 871, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "collision",
      class = "",
      visible = true,
      opacity = 0.5,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 115,
          name = "",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 840,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 116,
          name = "",
          type = "",
          shape = "rectangle",
          x = 440,
          y = 840,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 117,
          name = "",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 840,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 118,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 840,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 119,
          name = "",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 760,
          width = 40,
          height = 120,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 120,
          name = "",
          type = "",
          shape = "rectangle",
          x = 560,
          y = 760,
          width = 40,
          height = 120,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 121,
          name = "",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 720,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 122,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 720,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 123,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 680,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 124,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 680,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 125,
          name = "",
          type = "",
          shape = "rectangle",
          x = 720,
          y = 280,
          width = 40,
          height = 440,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 126,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 280,
          width = 40,
          height = 440,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 127,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 240,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 128,
          name = "",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 129,
          name = "",
          type = "",
          shape = "rectangle",
          x = 680,
          y = 240,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 130,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 131,
          name = "",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 160,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 132,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 160,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 133,
          name = "",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 120,
          width = 400,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 138,
          name = "",
          type = "",
          shape = "rectangle",
          x = 524,
          y = 370,
          width = 32,
          height = 30,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 141,
          name = "",
          type = "",
          shape = "rectangle",
          x = 124,
          y = 330,
          width = 32,
          height = 30,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 143,
          name = "",
          type = "",
          shape = "rectangle",
          x = 164,
          y = 610,
          width = 32,
          height = 30,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 139,
          name = "",
          type = "",
          shape = "rectangle",
          x = 604,
          y = 370,
          width = 32,
          height = 30,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 140,
          name = "",
          type = "",
          shape = "rectangle",
          x = 204,
          y = 330,
          width = 32,
          height = 30,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 142,
          name = "",
          type = "",
          shape = "rectangle",
          x = 524,
          y = 690,
          width = 32,
          height = 30,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 144,
          name = "",
          type = "",
          shape = "rectangle",
          x = 164,
          y = 250,
          width = 32,
          height = 30,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 145,
          name = "",
          type = "",
          shape = "rectangle",
          x = 564,
          y = 210,
          width = 32,
          height = 30,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "markers",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 114,
          name = "spawn",
          type = "",
          shape = "point",
          x = 400,
          y = 880,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
      name = "objects",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 146,
          name = "npc",
          type = "",
          shape = "point",
          x = 180,
          y = 480,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "og_smallwalker",
            ["cutscene"] = "starwalkervalley.smallwalker1"
          }
        },
        {
          id = 155,
          name = "npc",
          type = "",
          shape = "point",
          x = 610,
          y = 290,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "og_smallwalker",
            ["cutscene"] = "starwalkervalley.smallwalker2"
          }
        },
        {
          id = 148,
          name = "npc",
          type = "",
          shape = "point",
          x = 240,
          y = 480,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "og_starwalker",
            ["cutscene"] = "starwalkervalley.starwalker1"
          }
        },
        {
          id = 156,
          name = "npc",
          type = "",
          shape = "point",
          x = 290,
          y = 370,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "og_starwalker",
            ["cutscene"] = "starwalkervalley.starwalker2"
          }
        },
        {
          id = 157,
          name = "npc",
          type = "",
          shape = "point",
          x = 400,
          y = 200,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "og_bigwalker",
            ["cutscene"] = "starwalkervalley.bigwalker"
          }
        },
        {
          id = 149,
          name = "",
          type = "",
          shape = "rectangle",
          x = 124,
          y = 640,
          width = 110,
          height = 120,
          rotation = 0,
          gid = 1513,
          visible = true,
          properties = {}
        },
        {
          id = 150,
          name = "",
          type = "",
          shape = "rectangle",
          x = 484,
          y = 720,
          width = 110,
          height = 120,
          rotation = 0,
          gid = 1513,
          visible = true,
          properties = {}
        },
        {
          id = 151,
          name = "",
          type = "",
          shape = "rectangle",
          x = 124,
          y = 280,
          width = 110,
          height = 120,
          rotation = 0,
          gid = 1513,
          visible = true,
          properties = {}
        },
        {
          id = 152,
          name = "",
          type = "",
          shape = "rectangle",
          x = 524,
          y = 240,
          width = 110,
          height = 120,
          rotation = 0,
          gid = 1513,
          visible = true,
          properties = {}
        },
        {
          id = 153,
          name = "",
          type = "",
          shape = "rectangle",
          x = 84,
          y = 360,
          width = 190,
          height = 120,
          rotation = 0,
          gid = 1514,
          visible = true,
          properties = {}
        },
        {
          id = 154,
          name = "",
          type = "",
          shape = "rectangle",
          x = 484,
          y = 400,
          width = 190,
          height = 120,
          rotation = 0,
          gid = 1514,
          visible = true,
          properties = {}
        },
        {
          id = 158,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 900,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "cybercity/alley2",
            ["marker"] = "entryvalley"
          }
        }
      }
    }
  }
}
