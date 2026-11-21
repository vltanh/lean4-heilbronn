# Nine-core HA: INDEX

Complete literal rational proof records for the nine-point IRTT core.

```json
{
  "format": "n6-irtt-core-ha-v1",
  "labels": "ABCEFHQRS",
  "variables": [
    "a",
    "b",
    "c",
    "e",
    "f",
    "h",
    "u",
    "v",
    "r",
    "w",
    "j",
    "k"
  ],
  "extra": [
    "ARS+"
  ],
  "global_": "global.md",
  "nodes": {
    "r": {
      "parent": null,
      "depth": 0,
      "status": "split",
      "split": {
        "variable": "h",
        "value": "808677/1000000"
      },
      "table": "r.md"
    },
    "rm": {
      "parent": "r",
      "depth": 1,
      "status": "split",
      "split": {
        "variable": "r",
        "value": "907214/1000000"
      },
      "table": "rm.md"
    },
    "rp": {
      "parent": "r",
      "depth": 1,
      "status": "split",
      "split": {
        "variable": "r",
        "value": "853758/1000000"
      },
      "table": "rp.md"
    },
    "rmm": {
      "parent": "rm",
      "depth": 2,
      "status": "closed",
      "table": "rmm.md"
    },
    "rmp": {
      "parent": "rm",
      "depth": 2,
      "status": "closed",
      "table": "rmp.md"
    },
    "rpm": {
      "parent": "rp",
      "depth": 2,
      "status": "split",
      "split": {
        "variable": "u",
        "value": "891777/1000000"
      },
      "table": "rpm.md"
    },
    "rpp": {
      "parent": "rp",
      "depth": 2,
      "status": "split",
      "split": {
        "variable": "u",
        "value": "796556/1000000"
      },
      "table": "rpp.md"
    },
    "rpmm": {
      "parent": "rpm",
      "depth": 3,
      "status": "closed",
      "table": "rpmm.md"
    },
    "rpmp": {
      "parent": "rpm",
      "depth": 3,
      "status": "closed",
      "table": "rpmp.md"
    },
    "rppm": {
      "parent": "rpp",
      "depth": 3,
      "status": "closed",
      "table": "rppm.md"
    },
    "rppp": {
      "parent": "rpp",
      "depth": 3,
      "status": "split",
      "split": {
        "variable": "w",
        "value": "864889/1000000"
      },
      "table": "rppp.md"
    },
    "rpppm": {
      "parent": "rppp",
      "depth": 4,
      "status": "closed",
      "table": "rpppm.md"
    },
    "rpppp": {
      "parent": "rppp",
      "depth": 4,
      "status": "split",
      "split": {
        "variable": "e",
        "value": "552517/1000000"
      },
      "table": "rpppp.md"
    },
    "rppppm": {
      "parent": "rpppp",
      "depth": 5,
      "status": "split",
      "split": {
        "variable": "f",
        "value": "302905/1000000"
      },
      "table": "rppppm.md"
    },
    "rppppp": {
      "parent": "rpppp",
      "depth": 5,
      "status": "split",
      "split": {
        "variable": "b",
        "value": "154230/1000000"
      },
      "table": "rppppp.md"
    },
    "rppppmm": {
      "parent": "rppppm",
      "depth": 6,
      "status": "split",
      "split": {
        "variable": "b",
        "value": "159591/1000000"
      },
      "table": "rppppmm.md"
    },
    "rppppmp": {
      "parent": "rppppm",
      "depth": 6,
      "status": "closed",
      "table": "rppppmp.md"
    },
    "rpppppm": {
      "parent": "rppppp",
      "depth": 6,
      "status": "split",
      "split": {
        "variable": "v",
        "value": "308513/1000000"
      },
      "table": "rpppppm.md"
    },
    "rpppppp": {
      "parent": "rppppp",
      "depth": 6,
      "status": "split",
      "split": {
        "variable": "c",
        "value": "575337/1000000"
      },
      "table": "rpppppp.md"
    },
    "rppppmmm": {
      "parent": "rppppmm",
      "depth": 7,
      "status": "split",
      "split": {
        "variable": "j",
        "value": "642278/1000000"
      },
      "table": "rppppmmm.md"
    },
    "rppppmmp": {
      "parent": "rppppmm",
      "depth": 7,
      "status": "closed",
      "table": "rppppmmp.md"
    },
    "rpppppmm": {
      "parent": "rpppppm",
      "depth": 7,
      "status": "split",
      "split": {
        "variable": "c",
        "value": "595693/1000000"
      },
      "table": "rpppppmm.md"
    },
    "rpppppmp": {
      "parent": "rpppppm",
      "depth": 7,
      "status": "closed",
      "table": "rpppppmp.md"
    },
    "rppppppm": {
      "parent": "rpppppp",
      "depth": 7,
      "status": "split",
      "split": {
        "variable": "a",
        "value": "322940/1000000"
      },
      "table": "rppppppm.md"
    },
    "rppppppp": {
      "parent": "rpppppp",
      "depth": 7,
      "status": "split",
      "split": {
        "variable": "a",
        "value": "273629/1000000"
      },
      "table": "rppppppp.md"
    },
    "rppppmmmm": {
      "parent": "rppppmmm",
      "depth": 8,
      "status": "closed",
      "table": "rppppmmmm.md"
    },
    "rppppmmmp": {
      "parent": "rppppmmm",
      "depth": 8,
      "status": "closed",
      "table": "rppppmmmp.md"
    },
    "rpppppmmm": {
      "parent": "rpppppmm",
      "depth": 8,
      "status": "split",
      "split": {
        "variable": "j",
        "value": "647032/1000000"
      },
      "table": "rpppppmmm.md"
    },
    "rpppppmmp": {
      "parent": "rpppppmm",
      "depth": 8,
      "status": "split",
      "split": {
        "variable": "j",
        "value": "642543/1000000"
      },
      "table": "rpppppmmp.md"
    },
    "rppppppmm": {
      "parent": "rppppppm",
      "depth": 8,
      "status": "split",
      "split": {
        "variable": "j",
        "value": "654205/1000000"
      },
      "table": "rppppppmm.md"
    },
    "rppppppmp": {
      "parent": "rppppppm",
      "depth": 8,
      "status": "closed",
      "table": "rppppppmp.md"
    },
    "rpppppppm": {
      "parent": "rppppppp",
      "depth": 8,
      "status": "closed",
      "table": "rpppppppm.md"
    },
    "rpppppppp": {
      "parent": "rppppppp",
      "depth": 8,
      "status": "closed",
      "table": "rpppppppp.md"
    },
    "rpppppmmmm": {
      "parent": "rpppppmmm",
      "depth": 9,
      "status": "closed",
      "table": "rpppppmmmm.md"
    },
    "rpppppmmmp": {
      "parent": "rpppppmmm",
      "depth": 9,
      "status": "coordinate-products",
      "table": "rpppppmmmp.md"
    },
    "rpppppmmpm": {
      "parent": "rpppppmmp",
      "depth": 9,
      "status": "closed",
      "table": "rpppppmmpm.md"
    },
    "rpppppmmpp": {
      "parent": "rpppppmmp",
      "depth": 9,
      "status": "closed",
      "table": "rpppppmmpp.md"
    },
    "rppppppmmm": {
      "parent": "rppppppmm",
      "depth": 9,
      "status": "closed",
      "table": "rppppppmmm.md"
    },
    "rppppppmmp": {
      "parent": "rppppppmm",
      "depth": 9,
      "status": "closed",
      "table": "rppppppmmp.md"
    }
  }
}
```
