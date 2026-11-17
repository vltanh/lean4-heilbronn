# CA6pp

```n7-central-cef-packet
{
  "id": "CA6pp",
  "cell": "CA",
  "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "AFG-",
    "BFG+",
    "FGP+"
  ],
  "stages": [
    {
      "id": 0,
      "assumptions": [
        "AGO+",
        "AGP+",
        "DGP-"
      ],
      "initial_box": {
        "low": [
          "139/1000",
          "27/250",
          "13857/20000",
          "3/25",
          "129642/311765",
          "617/1000",
          "59/500",
          "613/1000",
          "139/1000",
          "27/250",
          "3/25",
          "27/250",
          "3/25"
        ],
        "high": [
          "137/200",
          "535/907",
          "883/1000",
          "141/200",
          "907/1000",
          "883/1000",
          "137/200",
          "1",
          "773/1000",
          "883/1000",
          "907/1000",
          "883/1000",
          "907/1000"
        ]
      },
      "known": {
        "ABC": 1,
        "ABD": 1,
        "ABE": 1,
        "ABF": 1,
        "ABH": 1,
        "ACD": 1,
        "ACE": 1,
        "ACF": 1,
        "ACH": 1,
        "ADE": 1,
        "ADF": 1,
        "ADH": 1,
        "AEF": 1,
        "AEH": 1,
        "AFH": 1,
        "BCD": 1,
        "BCE": 1,
        "BCF": 1,
        "BCH": 1,
        "BDE": 1,
        "BDF": 1,
        "BDH": 1,
        "BEF": 1,
        "BEH": 1,
        "BFH": 1,
        "CDE": 1,
        "CDF": 1,
        "CDH": 1,
        "CEF": 1,
        "CEH": 1,
        "CFH": 1,
        "DEF": 1,
        "DEH": 1,
        "DFH": 1,
        "EFH": 1,
        "ABG": 1,
        "BCG": 1,
        "CDG": 1,
        "DEG": 1,
        "EFG": 1,
        "FGH": -1,
        "AGH": 1,
        "CGH": -1,
        "ABO": 1,
        "BCO": 1,
        "CDO": 1,
        "DEO": 1,
        "EFO": 1,
        "FHO": 1,
        "AHO": -1,
        "CHO": -1,
        "CEO": 1,
        "ABP": 1,
        "BCP": 1,
        "CDP": 1,
        "DEP": 1,
        "EFP": 1,
        "FHP": 1,
        "AHP": -1,
        "CHP": -1,
        "CEP": 1,
        "HOP": -1,
        "EHP": 1,
        "ACG": 1,
        "BGH": 1,
        "DGO": -1,
        "COP": 1,
        "EOP": 1,
        "FOP": 1,
        "AGO": 1,
        "AGP": 1,
        "DGP": -1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DFG": 1,
        "DGH": -1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "GHO": -1,
        "GHP": -1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "CFP": 1,
        "DFP": 1,
        "ADO": 1,
        "ADP": 1,
        "BEO": 1,
        "BDO": 1,
        "BDP": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "ABCGO"
          ],
          "target": "ACO",
          "sign": 1,
          "deps": [
            "ABC",
            "AGO",
            "ABG",
            "ABO",
            "ACG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ABCGP"
          ],
          "target": "ACP",
          "sign": 1,
          "deps": [
            "ABC",
            "AGP",
            "ABG",
            "ABP",
            "ACG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAEGH"
          ],
          "target": "CEG",
          "sign": 1,
          "deps": [
            "ACE",
            "CGH",
            "ACG",
            "CEH",
            "ACH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAFGH"
          ],
          "target": "CFG",
          "sign": 1,
          "deps": [
            "ACF",
            "CGH",
            "ACG",
            "CFH",
            "ACH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAGHO"
          ],
          "target": "CGO",
          "sign": -1,
          "deps": [
            "ACG",
            "CHO",
            "ACH",
            "ACO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAGHP"
          ],
          "target": "CGP",
          "sign": -1,
          "deps": [
            "ACG",
            "CHP",
            "ACH",
            "ACP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "FCDEG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "CDF",
            "EFG",
            "CEF",
            "CFG",
            "DEF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFH"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "CDG",
            "FGH",
            "CFG",
            "CGH",
            "DFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCEFH"
          ],
          "target": "EGH",
          "sign": -1,
          "deps": [
            "CEG",
            "FGH",
            "CFG",
            "CGH",
            "EFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HABCO"
          ],
          "target": "BHO",
          "sign": -1,
          "deps": [
            "ABH",
            "CHO",
            "ACH",
            "AHO",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HABCP"
          ],
          "target": "BHP",
          "sign": -1,
          "deps": [
            "ABH",
            "CHP",
            "ACH",
            "AHP",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HACGO"
          ],
          "target": "GHO",
          "sign": -1,
          "deps": [
            "ACH",
            "AGH",
            "CHO",
            "AHO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HACGP"
          ],
          "target": "GHP",
          "sign": -1,
          "deps": [
            "ACH",
            "AGH",
            "CHP",
            "AHP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OCDEP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDO",
            "EOP",
            "CEO",
            "COP",
            "DEO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OCEFP"
          ],
          "target": "CFO",
          "sign": 1,
          "deps": [
            "CEO",
            "FOP",
            "EOP",
            "COP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ODEFP"
          ],
          "target": "DFO",
          "sign": 1,
          "deps": [
            "DEO",
            "FOP",
            "EOP",
            "DOP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PCEFO"
          ],
          "target": "CFP",
          "sign": 1,
          "deps": [
            "CEP",
            "FOP",
            "EOP",
            "COP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PDEFO"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FOP",
            "EOP",
            "DOP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GO",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACO",
            "CDO",
            "DGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GP",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACP",
            "CDP",
            "DGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "BCE",
            "OP",
            "EBC",
            [
              "fixed",
              "BCE"
            ]
          ],
          "target": "BEO",
          "sign": 1,
          "deps": [
            "BCO",
            "CEO",
            "BCP",
            "CEP",
            "EOP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BADEO"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "ABD",
            "BEO",
            "ABE",
            "ABO",
            "BDE"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DABCP"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "ABD",
            "CDP",
            "ACD",
            "ADP",
            "BCD"
          ],
          "area_stage": null
        }
      ],
      "initial": {
        "L_ABH": {
          "triangle": "ABH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ABH",
            "points": []
          }
        },
        "L_ACG": {
          "triangle": "ACG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACG",
            "points": []
          }
        },
        "L_ACH": {
          "triangle": "ACH",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACH",
            "points": [
              "G"
            ]
          }
        },
        "L_ACO": {
          "triangle": "ACO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACO",
            "points": [
              "G"
            ]
          }
        },
        "L_ACP": {
          "triangle": "ACP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACP",
            "points": [
              "G"
            ]
          }
        },
        "L_ADO": {
          "triangle": "ADO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ADO",
            "points": []
          }
        },
        "L_ADP": {
          "triangle": "ADP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ADP",
            "points": []
          }
        },
        "L_AHO": {
          "triangle": "AHO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HAO",
            "points": []
          }
        },
        "L_BCD": {
          "triangle": "BCD",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BCD",
            "points": []
          }
        },
        "L_BCG": {
          "triangle": "BCG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BCG",
            "points": []
          }
        },
        "L_BCO": {
          "triangle": "BCO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BCO",
            "points": []
          }
        },
        "L_BCP": {
          "triangle": "BCP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BCP",
            "points": []
          }
        },
        "L_BGH": {
          "triangle": "BGH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BGH",
            "points": []
          }
        },
        "L_CDE": {
          "triangle": "CDE",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CDE",
            "points": []
          }
        },
        "L_CFO": {
          "triangle": "CFO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CFO",
            "points": []
          }
        },
        "L_CFP": {
          "triangle": "CFP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CFP",
            "points": []
          }
        },
        "L_CGH": {
          "triangle": "CGH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GCH",
            "points": []
          }
        },
        "L_CHO": {
          "triangle": "CHO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HCO",
            "points": [
              "P"
            ]
          }
        },
        "L_CHP": {
          "triangle": "CHP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HCP",
            "points": []
          }
        },
        "L_COP": {
          "triangle": "COP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "COP",
            "points": []
          }
        },
        "L_DEF": {
          "triangle": "DEF",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DEF",
            "points": []
          }
        },
        "L_DEO": {
          "triangle": "DEO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DEO",
            "points": []
          }
        },
        "L_DEP": {
          "triangle": "DEP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DEP",
            "points": []
          }
        },
        "L_FHO": {
          "triangle": "FHO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FHO",
            "points": []
          }
        },
        "L_FHP": {
          "triangle": "FHP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FHP",
            "points": [
              "O"
            ]
          }
        },
        "L_FOP": {
          "triangle": "FOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FOP",
            "points": []
          }
        },
        "L_HOP": {
          "triangle": "HOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "OHP",
            "points": []
          }
        },
        "U_ACF": {
          "triangle": "ACF",
          "side": "hi",
          "value": "883/1000",
          "witness": {
            "kind": "vertices",
            "signed": "ACF",
            "used": [
              0,
              2,
              5
            ],
            "values": [
              "2563571/4000000",
              "13646137/20000000",
              "70079/100000",
              "14385617/20000000",
              "3292411/4000000",
              "423013/500000",
              "883/1000"
            ],
            "cell": "CA"
          }
        },
        "U_BCH": {
          "triangle": "BCH",
          "side": "hi",
          "value": "31/40",
          "witness": {
            "kind": "vertices",
            "signed": "BCH",
            "used": [
              1,
              2,
              7
            ],
            "values": [
              "1145267287/18140000000",
              "1868299/18140000",
              "162985053/907000000",
              "265881/907000",
              "7170261/20000000",
              "19003/40000",
              "11697/20000",
              "31/40"
            ],
            "cell": "CA"
          }
        },
        "U_CFH": {
          "triangle": "CFH",
          "side": "hi",
          "value": "883/1000",
          "witness": {
            "kind": "vertices",
            "signed": "CFH",
            "used": [
              2,
              5,
              7
            ],
            "values": [
              "617/1000",
              "12927079/20000000",
              "359971/500000",
              "16188239/20000000",
              "883/1000"
            ],
            "cell": "CA"
          }
        },
        "U_CHO": {
          "triangle": "CHO",
          "side": "hi",
          "value": "16371299/20000000",
          "witness": {
            "kind": "vertices",
            "signed": "HCO",
            "used": [
              2,
              7,
              9,
              10
            ],
            "values": [
              "-8363/12500",
              "-125427/250000",
              "-73823/200000",
              "-5507421/20000000",
              "25881/1000000",
              "871299/20000000",
              "2649/25000",
              "3994079/20000000",
              "2699019/10000000",
              "68323/250000",
              "162903/500000",
              "7449769/10000000",
              "800881/1000000",
              "16371299/20000000"
            ],
            "cell": "CA"
          }
        },
        "U_FHP": {
          "triangle": "FHP",
          "side": "hi",
          "value": "9713/12500",
          "witness": {
            "kind": "vertices",
            "signed": "FHP",
            "used": [
              5,
              7,
              11,
              12
            ],
            "values": [
              "-108903/500000",
              "-69801/500000",
              "57381/1000000",
              "82119/1000000",
              "160323/1000000",
              "345977/1000000",
              "95423/200000",
              "6787/12500",
              "322951/500000",
              "9713/12500"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "5": {
          "row": [
            "fan",
            "CFH",
            "CFO",
            "FHO",
            "CHO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "CFH",
            "point": "O"
          }
        },
        "6": {
          "row": [
            "fan",
            "CFH",
            "CFP",
            "FHP",
            "CHP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "CFH",
            "point": "P"
          }
        },
        "471": {
          "row": [
            "quad",
            "ACF",
            "AFH",
            "93/91"
          ],
          "witness": {
            "kind": "quad",
            "poly": "ACFH",
            "occupants": [
              "G",
              "O",
              "P"
            ]
          }
        },
        "1547": {
          "row": [
            "linear",
            {
              "BCH": "589/1000",
              "BCG": "-31/40"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "BCH",
            "point": "G",
            "line": "BC",
            "side": "upper",
            "outer_upper": {
              "triangle": "BCH",
              "ref": "U_BCH",
              "value": "31/40"
            },
            "fan_lower": [
              {
                "triangle": "CGH",
                "ref": "L_CGH",
                "value": "93/1000"
              },
              {
                "triangle": "BGH",
                "ref": "L_BGH",
                "value": "93/1000"
              },
              {
                "triangle": "BCG",
                "ref": "L_BCG",
                "value": "93/1000"
              }
            ],
            "residual": "62/125"
          }
        },
        "1640": {
          "row": [
            "linear",
            {
              "ACF": "-279/1000",
              "ACH": "-93/1000",
              "ACO": "883/1000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFH",
            "point": "O",
            "line": "AC",
            "side": "lower",
            "outer_upper": {
              "triangle": "CFH",
              "ref": "U_CFH",
              "value": "883/1000"
            },
            "fan_lower": [
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              },
              {
                "triangle": "CHO",
                "ref": "L_CHO",
                "value": "279/1000"
              },
              {
                "triangle": "CFO",
                "ref": "L_CFO",
                "value": "93/1000"
              }
            ],
            "residual": "209/500"
          }
        },
        "1646": {
          "row": [
            "linear",
            {
              "BCF": "-279/1000",
              "BCH": "-93/1000",
              "BCO": "883/1000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFH",
            "point": "O",
            "line": "BC",
            "side": "lower",
            "outer_upper": {
              "triangle": "CFH",
              "ref": "U_CFH",
              "value": "883/1000"
            },
            "fan_lower": [
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              },
              {
                "triangle": "CHO",
                "ref": "L_CHO",
                "value": "279/1000"
              },
              {
                "triangle": "CFO",
                "ref": "L_CFO",
                "value": "93/1000"
              }
            ],
            "residual": "209/500"
          }
        },
        "1657": {
          "row": [
            "linear",
            {
              "CFH": "511/1000",
              "CFO": "-883/1000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFH",
            "point": "O",
            "line": "CF",
            "side": "upper",
            "outer_upper": {
              "triangle": "CFH",
              "ref": "U_CFH",
              "value": "883/1000"
            },
            "fan_lower": [
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              },
              {
                "triangle": "CHO",
                "ref": "L_CHO",
                "value": "279/1000"
              },
              {
                "triangle": "CFO",
                "ref": "L_CFO",
                "value": "93/1000"
              }
            ],
            "residual": "209/500"
          }
        },
        "1697": {
          "row": [
            "linear",
            {
              "ACH": "-279/1000",
              "AFH": "-93/1000",
              "AHP": "883/1000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFH",
            "point": "P",
            "line": "AH",
            "side": "upper",
            "outer_upper": {
              "triangle": "CFH",
              "ref": "U_CFH",
              "value": "883/1000"
            },
            "fan_lower": [
              {
                "triangle": "FHP",
                "ref": "L_FHP",
                "value": "279/1000"
              },
              {
                "triangle": "CHP",
                "ref": "L_CHP",
                "value": "93/1000"
              },
              {
                "triangle": "CFP",
                "ref": "L_CFP",
                "value": "93/1000"
              }
            ],
            "residual": "209/500"
          }
        },
        "1709": {
          "row": [
            "linear",
            {
              "CFH": "511/1000",
              "CFP": "-883/1000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFH",
            "point": "P",
            "line": "CF",
            "side": "upper",
            "outer_upper": {
              "triangle": "CFH",
              "ref": "U_CFH",
              "value": "883/1000"
            },
            "fan_lower": [
              {
                "triangle": "FHP",
                "ref": "L_FHP",
                "value": "279/1000"
              },
              {
                "triangle": "CHP",
                "ref": "L_CHP",
                "value": "93/1000"
              },
              {
                "triangle": "CFP",
                "ref": "L_CFP",
                "value": "93/1000"
              }
            ],
            "residual": "209/500"
          }
        },
        "1787": {
          "row": [
            "linear",
            {
              "FHO": "-93/1000",
              "CFO": "12651299/20000000",
              "FOP": "-16371299/20000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "HCO",
            "point": "P",
            "line": "FO",
            "side": "upper",
            "outer_upper": {
              "triangle": "CHO",
              "ref": "U_CHO",
              "value": "16371299/20000000"
            },
            "fan_lower": [
              {
                "triangle": "COP",
                "ref": "L_COP",
                "value": "93/1000"
              },
              {
                "triangle": "HOP",
                "ref": "L_HOP",
                "value": "93/1000"
              },
              {
                "triangle": "CHP",
                "ref": "L_CHP",
                "value": "93/1000"
              }
            ],
            "residual": "10791299/20000000"
          }
        },
        "1826": {
          "row": [
            "linear",
            {
              "CFP": "1847/3125",
              "CHP": "-93/1000",
              "COP": "-9713/12500"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "FHP",
            "point": "O",
            "line": "CP",
            "side": "lower",
            "outer_upper": {
              "triangle": "FHP",
              "ref": "U_FHP",
              "value": "9713/12500"
            },
            "fan_lower": [
              {
                "triangle": "HOP",
                "ref": "L_HOP",
                "value": "93/1000"
              },
              {
                "triangle": "FOP",
                "ref": "L_FOP",
                "value": "93/1000"
              },
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              }
            ],
            "residual": "12451/25000"
          }
        }
      },
      "updates": [
        {
          "id": "T0013",
          "relation": 5,
          "rule": "sub",
          "triangle": "CFO",
          "side": "hi",
          "value": "511/1000",
          "sources": [
            "U_CFH",
            "L_FHO",
            "L_CHO"
          ]
        },
        {
          "id": "T0016",
          "relation": 6,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "511/1000",
          "sources": [
            "U_CFH",
            "L_FHP",
            "L_CHP"
          ]
        },
        {
          "id": "T0038",
          "relation": 471,
          "rule": "quad",
          "triangle": "AFH",
          "side": "lo",
          "value": "69489/500000",
          "sources": [
            "U_ACF"
          ]
        },
        {
          "id": "T0066",
          "relation": 1697,
          "rule": "linear",
          "triangle": "AHP",
          "side": "lo",
          "value": "12849/125000",
          "sources": [
            "L_ACH",
            "T0038"
          ]
        },
        {
          "id": "T0075",
          "relation": 1787,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "67009/500000",
          "sources": [
            "L_FHO",
            "L_FOP"
          ]
        },
        {
          "id": "T0077",
          "relation": 1826,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "1369/10000",
          "sources": [
            "L_CHP",
            "L_COP"
          ]
        }
      ],
      "physical": {
        "8": {
          "name": "AREA_LO_ABH",
          "terms": [
            [
              [
                1,
                7
              ],
              "1"
            ],
            [
              [
                0,
                1
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ABH",
            "side": "lo",
            "reference": "L_ABH",
            "value": "93/1000"
          }
        },
        "16": {
          "name": "AREA_LO_ACH",
          "terms": [
            [
              [
                2,
                7
              ],
              "1"
            ],
            [
              [
                0,
                2
              ],
              "-1"
            ],
            [
              [],
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACH",
            "side": "lo",
            "reference": "L_ACH",
            "value": "279/1000"
          }
        },
        "30": {
          "name": "AREA_LO_BCD",
          "terms": [
            [
              [
                2,
                3
              ],
              "1"
            ],
            [
              [
                1,
                3
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCD",
            "side": "lo",
            "reference": "L_BCD",
            "value": "93/1000"
          }
        },
        "50": {
          "name": "AREA_LO_CDE",
          "terms": [
            [
              [
                4
              ],
              "1"
            ],
            [
              [
                2,
                4
              ],
              "-1"
            ],
            [
              [
                3
              ],
              "-1"
            ],
            [
              [
                2,
                3
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CDE",
            "side": "lo",
            "reference": "L_CDE",
            "value": "93/1000"
          }
        },
        "62": {
          "name": "AREA_LO_DEF",
          "terms": [
            [
              [
                4,
                5
              ],
              "-1"
            ],
            [
              [
                4
              ],
              "1"
            ],
            [
              [
                3,
                5
              ],
              "1"
            ],
            [
              [
                3
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DEF",
            "side": "lo",
            "reference": "L_DEF",
            "value": "93/1000"
          }
        },
        "84": {
          "name": "AREA_LO_CGH",
          "terms": [
            [
              [
                6,
                7
              ],
              "-1"
            ],
            [
              [
                2,
                7
              ],
              "1"
            ],
            [
              [
                2,
                8
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CGH",
            "side": "lo",
            "reference": "L_CGH",
            "value": "93/1000"
          }
        },
        "88": {
          "name": "AREA_LO_BCO",
          "terms": [
            [
              [
                2,
                10
              ],
              "1"
            ],
            [
              [
                1,
                10
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCO",
            "side": "lo",
            "reference": "L_BCO",
            "value": "93/1000"
          }
        },
        "92": {
          "name": "AREA_LO_DEO",
          "terms": [
            [
              [
                4,
                9
              ],
              "-1"
            ],
            [
              [
                4
              ],
              "1"
            ],
            [
              [
                3,
                9
              ],
              "1"
            ],
            [
              [
                3
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DEO",
            "side": "lo",
            "reference": "L_DEO",
            "value": "93/1000"
          }
        },
        "98": {
          "name": "AREA_LO_AHO",
          "terms": [
            [
              [
                7,
                9
              ],
              "1"
            ],
            [
              [
                0,
                9
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AHO",
            "side": "lo",
            "reference": "L_AHO",
            "value": "93/1000"
          }
        },
        "100": {
          "name": "AREA_LO_CHO",
          "terms": [
            [
              [
                2,
                10
              ],
              "1"
            ],
            [
              [
                7,
                9
              ],
              "1"
            ],
            [
              [
                2,
                7
              ],
              "-1"
            ],
            [
              [],
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CHO",
            "side": "lo",
            "reference": "L_CHO",
            "value": "279/1000"
          }
        },
        "106": {
          "name": "AREA_LO_BCP",
          "terms": [
            [
              [
                2,
                12
              ],
              "1"
            ],
            [
              [
                1,
                12
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCP",
            "side": "lo",
            "reference": "L_BCP",
            "value": "93/1000"
          }
        },
        "110": {
          "name": "AREA_LO_DEP",
          "terms": [
            [
              [
                4,
                11
              ],
              "-1"
            ],
            [
              [
                4
              ],
              "1"
            ],
            [
              [
                3,
                11
              ],
              "1"
            ],
            [
              [
                3
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DEP",
            "side": "lo",
            "reference": "L_DEP",
            "value": "93/1000"
          }
        },
        "114": {
          "name": "AREA_LO_FHP",
          "terms": [
            [
              [
                5,
                12
              ],
              "-1"
            ],
            [
              [
                7,
                11
              ],
              "-1"
            ],
            [
              [
                5,
                7
              ],
              "1"
            ],
            [
              [
                11
              ],
              "1"
            ],
            [
              [],
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FHP",
            "side": "lo",
            "reference": "L_FHP",
            "value": "279/1000"
          }
        },
        "116": {
          "name": "AREA_LO_AHP",
          "terms": [
            [
              [
                7,
                11
              ],
              "1"
            ],
            [
              [
                0,
                11
              ],
              "-1"
            ],
            [
              [],
              "-12849/125000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AHP",
            "side": "lo",
            "reference": "T0066",
            "value": "12849/125000"
          }
        },
        "126": {
          "name": "AREA_LO_ACG",
          "terms": [
            [
              [
                2,
                8
              ],
              "1"
            ],
            [
              [
                0,
                2
              ],
              "-1"
            ],
            [
              [
                0,
                6
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACG",
            "side": "lo",
            "reference": "L_ACG",
            "value": "93/1000"
          }
        },
        "132": {
          "name": "AREA_LO_COP",
          "terms": [
            [
              [
                9,
                12
              ],
              "1"
            ],
            [
              [
                2,
                12
              ],
              "-1"
            ],
            [
              [
                10,
                11
              ],
              "-1"
            ],
            [
              [
                2,
                10
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "COP",
            "side": "lo",
            "reference": "L_COP",
            "value": "93/1000"
          }
        },
        "136": {
          "name": "AREA_LO_FOP",
          "terms": [
            [
              [
                9,
                12
              ],
              "1"
            ],
            [
              [
                9
              ],
              "-1"
            ],
            [
              [
                5,
                12
              ],
              "-1"
            ],
            [
              [
                10,
                11
              ],
              "-1"
            ],
            [
              [
                5,
                10
              ],
              "1"
            ],
            [
              [
                11
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FOP",
            "side": "lo",
            "reference": "L_FOP",
            "value": "93/1000"
          }
        },
        "144": {
          "name": "AREA_LO_ACO",
          "terms": [
            [
              [
                2,
                10
              ],
              "1"
            ],
            [
              [
                0,
                2
              ],
              "-1"
            ],
            [
              [
                0,
                9
              ],
              "1"
            ],
            [
              [],
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACO",
            "side": "lo",
            "reference": "L_ACO",
            "value": "279/1000"
          }
        },
        "146": {
          "name": "AREA_LO_ACP",
          "terms": [
            [
              [
                2,
                12
              ],
              "1"
            ],
            [
              [
                0,
                2
              ],
              "-1"
            ],
            [
              [
                0,
                11
              ],
              "1"
            ],
            [
              [],
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACP",
            "side": "lo",
            "reference": "L_ACP",
            "value": "279/1000"
          }
        },
        "172": {
          "name": "AREA_LO_CFO",
          "terms": [
            [
              [
                5,
                10
              ],
              "1"
            ],
            [
              [
                2,
                10
              ],
              "-1"
            ],
            [
              [
                9
              ],
              "-1"
            ],
            [
              [
                2
              ],
              "1"
            ],
            [
              [],
              "-67009/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFO",
            "side": "lo",
            "reference": "T0075",
            "value": "67009/500000"
          }
        },
        "173": {
          "name": "AREA_HI_CFO",
          "terms": [
            [
              [],
              "511/1000"
            ],
            [
              [
                5,
                10
              ],
              "-1"
            ],
            [
              [
                2,
                10
              ],
              "1"
            ],
            [
              [
                9
              ],
              "1"
            ],
            [
              [
                2
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFO",
            "side": "hi",
            "reference": "T0013",
            "value": "511/1000"
          }
        },
        "176": {
          "name": "AREA_LO_CFP",
          "terms": [
            [
              [
                5,
                12
              ],
              "1"
            ],
            [
              [
                2,
                12
              ],
              "-1"
            ],
            [
              [
                11
              ],
              "-1"
            ],
            [
              [
                2
              ],
              "1"
            ],
            [
              [],
              "-1369/10000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "lo",
            "reference": "T0077",
            "value": "1369/10000"
          }
        },
        "177": {
          "name": "AREA_HI_CFP",
          "terms": [
            [
              [],
              "511/1000"
            ],
            [
              [
                5,
                12
              ],
              "-1"
            ],
            [
              [
                2,
                12
              ],
              "1"
            ],
            [
              [
                11
              ],
              "1"
            ],
            [
              [
                2
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "hi",
            "reference": "T0016",
            "value": "511/1000"
          }
        },
        "180": {
          "name": "AREA_LO_ADO",
          "terms": [
            [
              [
                10
              ],
              "1"
            ],
            [
              [
                0
              ],
              "-1"
            ],
            [
              [
                3,
                9
              ],
              "-1"
            ],
            [
              [
                0,
                9
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ADO",
            "side": "lo",
            "reference": "L_ADO",
            "value": "93/1000"
          }
        },
        "182": {
          "name": "AREA_LO_ADP",
          "terms": [
            [
              [
                12
              ],
              "1"
            ],
            [
              [
                0
              ],
              "-1"
            ],
            [
              [
                3,
                11
              ],
              "-1"
            ],
            [
              [
                0,
                11
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ADP",
            "side": "lo",
            "reference": "L_ADP",
            "value": "93/1000"
          }
        },
        "200": {
          "name": "EL",
          "terms": [
            [
              [
                2,
                7
              ],
              "1"
            ],
            [
              [],
              "-270723/500000"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "EL"
          }
        },
        "205": {
          "name": "Central_g",
          "terms": [
            [
              [
                2,
                6,
                7
              ],
              "1"
            ],
            [
              [
                1,
                6,
                7
              ],
              "-1"
            ],
            [
              [
                2
              ],
              "-93/1000"
            ],
            [
              [
                1
              ],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "Central_g"
          }
        },
        "206": {
          "name": "Central_z",
          "terms": [
            [
              [
                2,
                7,
                8
              ],
              "1"
            ],
            [
              [
                0,
                2,
                8
              ],
              "-1"
            ],
            [
              [
                7
              ],
              "-93/1000"
            ],
            [
              [
                0
              ],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "Central_z"
          }
        },
        "1057": {
          "name": "LINEAR_1547",
          "terms": [
            [
              [
                2,
                7
              ],
              "589/1000"
            ],
            [
              [
                1,
                7
              ],
              "-589/1000"
            ],
            [
              [
                2,
                8
              ],
              "-31/40"
            ],
            [
              [
                1,
                8
              ],
              "31/40"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1547
          }
        },
        "1150": {
          "name": "LINEAR_1640",
          "terms": [
            [
              [
                2
              ],
              "-279/1000"
            ],
            [
              [
                0,
                2
              ],
              "-511/1000"
            ],
            [
              [
                0,
                5
              ],
              "-279/1000"
            ],
            [
              [
                2,
                7
              ],
              "-93/1000"
            ],
            [
              [
                2,
                10
              ],
              "883/1000"
            ],
            [
              [
                0,
                9
              ],
              "883/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1640
          }
        },
        "1156": {
          "name": "LINEAR_1646",
          "terms": [
            [
              [
                2
              ],
              "-279/1000"
            ],
            [
              [
                1
              ],
              "279/1000"
            ],
            [
              [
                2,
                7
              ],
              "-93/1000"
            ],
            [
              [
                1,
                7
              ],
              "93/1000"
            ],
            [
              [
                2,
                10
              ],
              "883/1000"
            ],
            [
              [
                1,
                10
              ],
              "-883/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1646
          }
        },
        "1167": {
          "name": "LINEAR_1657",
          "terms": [
            [
              [
                5,
                7
              ],
              "511/1000"
            ],
            [
              [
                2,
                7
              ],
              "-511/1000"
            ],
            [
              [
                2
              ],
              "-93/250"
            ],
            [
              [
                5,
                10
              ],
              "-883/1000"
            ],
            [
              [
                2,
                10
              ],
              "883/1000"
            ],
            [
              [
                9
              ],
              "883/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1657
          }
        },
        "1219": {
          "name": "LINEAR_1709",
          "terms": [
            [
              [
                5,
                7
              ],
              "511/1000"
            ],
            [
              [
                2,
                7
              ],
              "-511/1000"
            ],
            [
              [
                2
              ],
              "-93/250"
            ],
            [
              [
                5,
                12
              ],
              "-883/1000"
            ],
            [
              [
                2,
                12
              ],
              "883/1000"
            ],
            [
              [
                11
              ],
              "883/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1709
          }
        }
      },
      "coordinate": {
        "low": [
          "139/1000",
          "108013/1000000",
          "13857/20000",
          "120187/1000000",
          "42297/100000",
          "617/1000",
          "118963/1000000",
          "307011/500000",
          "69759/500000",
          "112707/500000",
          "190319/500000",
          "30899/125000",
          "5346/15625"
        ],
        "high": [
          "683603/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "26631/40000",
          "1/1",
          "379813/500000",
          "358877/500000",
          "907/1000",
          "359233/500000",
          "683603/1000000"
        ],
        "steps": [
          {
            "factor": 8,
            "target": "b",
            "old": [
              "27/250",
              "535/907"
            ],
            "lines": [
              [
                "237/500",
                "-93/1000"
              ],
              [
                "-9/125",
                "-93/1000"
              ],
              [
                "861/1000",
                "-93/1000"
              ],
              [
                "63/200",
                "-93/1000"
              ]
            ],
            "raw": [
              "31/287",
              "535/907"
            ],
            "new": [
              "108013/1000000",
              "535/907"
            ]
          },
          {
            "factor": 16,
            "target": "a",
            "old": [
              "139/1000",
              "137/200"
            ],
            "lines": [
              [
                "-13857/20000",
                "2914341/20000000"
              ],
              [
                "-883/1000",
                "262279/1000000"
              ],
              [
                "-13857/20000",
                "8277/20000"
              ],
              [
                "-883/1000",
                "151/250"
              ]
            ],
            "raw": [
              "139/1000",
              "604/883"
            ],
            "new": [
              "139/1000",
              "10688/15625"
            ]
          },
          {
            "factor": 30,
            "target": "d",
            "old": [
              "3/25",
              "141/200"
            ],
            "lines": [
              [
                "584837/1000000",
                "-93/1000"
              ],
              [
                "1868299/18140000",
                "-93/1000"
              ],
              [
                "774987/1000000",
                "-93/1000"
              ],
              [
                "265881/907000",
                "-93/1000"
              ]
            ],
            "raw": [
              "31000/258329",
              "141/200"
            ],
            "new": [
              "60001/500000",
              "141/200"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "13857/20000",
              "883/1000"
            ],
            "lines": [
              [
                "-9222957647/31176500000",
                "6323543147/31176500000"
              ],
              [
                "3606093/12470600",
                "-11914647/31176500"
              ],
              [
                "-393499/500000",
                "346999/500000"
              ],
              [
                "-101/500",
                "109/1000"
              ]
            ],
            "raw": [
              "13857/20000",
              "346999/393499"
            ],
            "new": [
              "13857/20000",
              "88183/100000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "60001/500000",
              "141/200"
            ],
            "lines": [
              [
                "-6143/20000",
                "108253953/3117650000"
              ],
              [
                "-11817/100000",
                "-683717493/15588250000"
              ],
              [
                "-6143/20000",
                "3711701/20000000"
              ],
              [
                "-11817/100000",
                "1418019/100000000"
              ]
            ],
            "raw": [
              "60001/500000",
              "3711701/6143000"
            ],
            "new": [
              "60001/500000",
              "604217/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "129642/311765",
              "907/1000"
            ],
            "lines": [
              [
                "6143/20000",
                "-1298586143/10000000000"
              ],
              [
                "11817/100000",
                "-5359031817/50000000000"
              ],
              [
                "6143/20000",
                "-5571705031/20000000000"
              ],
              [
                "11817/100000",
                "-16440032289/100000000000"
              ]
            ],
            "raw": [
              "1298586143/3071500000",
              "907/1000"
            ],
            "new": [
              "84557/200000",
              "907/1000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "617/1000",
              "883/1000"
            ],
            "lines": [
              [
                "-302783/1000000",
                "209783/1000000"
              ],
              [
                "22679/125000",
                "-4288/15625"
              ],
              [
                "-393499/500000",
                "346999/500000"
              ]
            ],
            "raw": [
              "617/1000",
              "346999/393499"
            ],
            "new": [
              "617/1000",
              "88183/100000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "59/500",
              "137/200"
            ],
            "lines": [
              [
                "-613/1000",
                "2354109/10000000"
              ],
              [
                "-613/1000",
                "16249371/50000000"
              ],
              [
                "-1/1",
                "10070877/20000000"
              ],
              [
                "-1/1",
                "66625563/100000000"
              ],
              [
                "-613/1000",
                "-12741/62500"
              ],
              [
                "-613/1000",
                "-36577/156250"
              ],
              [
                "-1/1",
                "1285539/20000000"
              ],
              [
                "-1/1",
                "10717541/100000000"
              ]
            ],
            "raw": [
              "59/500",
              "66625563/100000000"
            ],
            "new": [
              "59/500",
              "41641/62500"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "139/1000",
              "773/1000"
            ],
            "lines": [
              [
                "-13857/20000",
                "5187661/20000000"
              ],
              [
                "-88183/100000",
                "37522779/100000000"
              ],
              [
                "-13857/20000",
                "-38348939/500000000"
              ],
              [
                "-88183/100000",
                "19573431/500000000"
              ],
              [
                "-13857/20000",
                "9637/20000"
              ],
              [
                "-88183/100000",
                "67083/100000"
              ],
              [
                "-13857/20000",
                "-33203/500000"
              ],
              [
                "-88183/100000",
                "61287/500000"
              ]
            ],
            "raw": [
              "139/1000",
              "67083/88183"
            ],
            "new": [
              "139/1000",
              "30429/40000"
            ]
          },
          {
            "factor": 88,
            "target": "y",
            "old": [
              "3/25",
              "907/1000"
            ],
            "lines": [
              [
                "584837/1000000",
                "-93/1000"
              ],
              [
                "1868299/18140000",
                "-93/1000"
              ],
              [
                "773817/1000000",
                "-93/1000"
              ],
              [
                "26481981/90700000",
                "-93/1000"
              ]
            ],
            "raw": [
              "31000/257939",
              "907/1000"
            ],
            "new": [
              "120183/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 92,
            "target": "x",
            "old": [
              "27/250",
              "883/1000"
            ],
            "lines": [
              [
                "-302783/1000000",
                "209783/1000000"
              ],
              [
                "22679/125000",
                "-4288/15625"
              ],
              [
                "-393499/500000",
                "346999/500000"
              ]
            ],
            "raw": [
              "27/250",
              "346999/393499"
            ],
            "new": [
              "27/250",
              "88183/100000"
            ]
          },
          {
            "factor": 98,
            "target": "x",
            "old": [
              "27/250",
              "88183/100000"
            ],
            "lines": [
              [
                "237/500",
                "-93/1000"
              ],
              [
                "-8879/125000",
                "-93/1000"
              ],
              [
                "861/1000",
                "-93/1000"
              ],
              [
                "4937/15625",
                "-93/1000"
              ]
            ],
            "raw": [
              "31/287",
              "88183/100000"
            ],
            "new": [
              "108013/1000000",
              "88183/100000"
            ]
          },
          {
            "factor": 100,
            "target": "y",
            "old": [
              "120183/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "13857/20000",
                "-637505081/1000000000"
              ],
              [
                "88183/100000",
                "-753349821/1000000000"
              ],
              [
                "13857/20000",
                "-863837/1000000"
              ],
              [
                "88183/100000",
                "-1052817/1000000"
              ],
              [
                "13857/20000",
                "-8157763/50000000"
              ],
              [
                "88183/100000",
                "-279/1000"
              ],
              [
                "13857/20000",
                "-4501/50000"
              ]
            ],
            "raw": [
              "9002/69285",
              "907/1000"
            ],
            "new": [
              "129927/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 106,
            "target": "v",
            "old": [
              "3/25",
              "907/1000"
            ],
            "lines": [
              [
                "584837/1000000",
                "-93/1000"
              ],
              [
                "1868299/18140000",
                "-93/1000"
              ],
              [
                "773817/1000000",
                "-93/1000"
              ],
              [
                "26481981/90700000",
                "-93/1000"
              ]
            ],
            "raw": [
              "31000/257939",
              "907/1000"
            ],
            "new": [
              "120183/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 110,
            "target": "u",
            "old": [
              "27/250",
              "883/1000"
            ],
            "lines": [
              [
                "-302783/1000000",
                "209783/1000000"
              ],
              [
                "22679/125000",
                "-4288/15625"
              ],
              [
                "-393499/500000",
                "346999/500000"
              ]
            ],
            "raw": [
              "27/250",
              "346999/393499"
            ],
            "new": [
              "27/250",
              "88183/100000"
            ]
          },
          {
            "factor": 114,
            "target": "v",
            "old": [
              "120183/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "-617/1000",
                "141017/1000000"
              ],
              [
                "-88183/100000",
                "30335779/100000000"
              ],
              [
                "-617/1000",
                "169/500"
              ],
              [
                "-88183/100000",
                "60283/100000"
              ],
              [
                "-617/1000",
                "44048921/100000000"
              ]
            ],
            "raw": [
              "120183/1000000",
              "44048921/61700000"
            ],
            "new": [
              "120183/1000000",
              "713921/1000000"
            ]
          },
          {
            "factor": 116,
            "target": "u",
            "old": [
              "27/250",
              "88183/100000"
            ],
            "lines": [
              [
                "237/500",
                "-12849/125000"
              ],
              [
                "-8879/125000",
                "-12849/125000"
              ],
              [
                "861/1000",
                "-12849/125000"
              ],
              [
                "4937/15625",
                "-12849/125000"
              ]
            ],
            "raw": [
              "4283/35875",
              "88183/100000"
            ],
            "new": [
              "59693/500000",
              "88183/100000"
            ]
          },
          {
            "factor": 126,
            "target": "z",
            "old": [
              "139/1000",
              "30429/40000"
            ],
            "lines": [
              [
                "13857/20000",
                "-3458083/20000000"
              ],
              [
                "13857/20000",
                "-37985609/78125000"
              ],
              [
                "88183/100000",
                "-19917237/100000000"
              ],
              [
                "88183/100000",
                "-240423501/390625000"
              ],
              [
                "13857/20000",
                "-48348283/500000000"
              ],
              [
                "13857/20000",
                "-217170209/1953125000"
              ],
              [
                "88183/100000",
                "-61482393/500000000"
              ],
              [
                "88183/100000",
                "-469647489/1953125000"
              ]
            ],
            "raw": [
              "61482393/440915000",
              "30429/40000"
            ],
            "new": [
              "69721/500000",
              "30429/40000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "129927/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "13857/20000",
                "-360292343/1000000000"
              ],
              [
                "13857/20000",
                "-1326264107/1953125000"
              ],
              [
                "88183/100000",
                "-386560563/1000000000"
              ],
              [
                "88183/100000",
                "-1578741387/1953125000"
              ],
              [
                "13857/20000",
                "-12636589/50000000"
              ],
              [
                "13857/20000",
                "-58488919/390625000"
              ],
              [
                "88183/100000",
                "-279/1000"
              ]
            ],
            "raw": [
              "233955676/1082578125",
              "907/1000"
            ],
            "new": [
              "216109/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 146,
            "target": "v",
            "old": [
              "120183/1000000",
              "713921/1000000"
            ],
            "lines": [
              [
                "13857/20000",
                "-44838937/125000000"
              ],
              [
                "13857/20000",
                "-1311069779/1953125000"
              ],
              [
                "88183/100000",
                "-96244929/250000000"
              ],
              [
                "88183/100000",
                "-1563547059/1953125000"
              ],
              [
                "13857/20000",
                "-12636589/50000000"
              ],
              [
                "13857/20000",
                "-58488919/390625000"
              ],
              [
                "88183/100000",
                "-279/1000"
              ]
            ],
            "raw": [
              "233955676/1082578125",
              "713921/1000000"
            ],
            "new": [
              "216109/1000000",
              "713921/1000000"
            ]
          },
          {
            "factor": 172,
            "target": "x",
            "old": [
              "108013/1000000",
              "88183/100000"
            ],
            "lines": [
              [
                "-1/1",
                "10848802647/20000000000"
              ],
              [
                "-1/1",
                "69057985353/100000000000"
              ],
              [
                "-1/1",
                "29983613941/50000000000"
              ],
              [
                "-1/1",
                "186953/250000"
              ],
              [
                "-1/1",
                "9800721/20000000"
              ],
              [
                "-1/1",
                "50761119/100000000"
              ],
              [
                "-1/1",
                "36511843/50000000"
              ]
            ],
            "raw": [
              "108013/1000000",
              "186953/250000"
            ],
            "new": [
              "108013/1000000",
              "186953/250000"
            ]
          },
          {
            "factor": 173,
            "target": "x",
            "old": [
              "108013/1000000",
              "186953/250000"
            ],
            "lines": [
              [
                "1/1",
                "-3309162647/20000000000"
              ],
              [
                "1/1",
                "-31359785353/100000000000"
              ],
              [
                "1/1",
                "-11134513941/50000000000"
              ],
              [
                "1/1",
                "-37083/100000"
              ],
              [
                "1/1",
                "-2261081/20000000"
              ],
              [
                "1/1",
                "-13062919/100000000"
              ],
              [
                "1/1",
                "-17662743/50000000"
              ]
            ],
            "raw": [
              "2261081/20000000",
              "186953/250000"
            ],
            "new": [
              "56527/500000",
              "186953/250000"
            ]
          },
          {
            "factor": 176,
            "target": "u",
            "old": [
              "59693/500000",
              "88183/100000"
            ],
            "lines": [
              [
                "-1/1",
                "10791162647/20000000000"
              ],
              [
                "-1/1",
                "68769785353/100000000000"
              ],
              [
                "-1/1",
                "29839513941/50000000000"
              ],
              [
                "-1/1",
                "74493/100000"
              ],
              [
                "-1/1",
                "10035981843/20000000000"
              ],
              [
                "-1/1",
                "55586230157/100000000000"
              ],
              [
                "-1/1",
                "34543339529/50000000000"
              ]
            ],
            "raw": [
              "59693/500000",
              "74493/100000"
            ],
            "new": [
              "59693/500000",
              "74493/100000"
            ]
          },
          {
            "factor": 177,
            "target": "u",
            "old": [
              "59693/500000",
              "74493/100000"
            ],
            "lines": [
              [
                "1/1",
                "-3309162647/20000000000"
              ],
              [
                "1/1",
                "-31359785353/100000000000"
              ],
              [
                "1/1",
                "-11134513941/50000000000"
              ],
              [
                "1/1",
                "-37083/100000"
              ],
              [
                "1/1",
                "-2553981843/20000000000"
              ],
              [
                "1/1",
                "-18176230157/100000000000"
              ],
              [
                "1/1",
                "-15838339529/50000000000"
              ]
            ],
            "raw": [
              "2553981843/20000000000",
              "74493/100000"
            ],
            "new": [
              "127699/1000000",
              "74493/100000"
            ]
          },
          {
            "factor": 180,
            "target": "y",
            "old": [
              "216109/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "1/1",
                "-57463050027/250000000000"
              ],
              [
                "1/1",
                "-35663307619/50000000000"
              ],
              [
                "1/1",
                "-142297321359/500000000000"
              ],
              [
                "1/1",
                "-76800859499/100000000000"
              ],
              [
                "1/1",
                "-27224133453/125000000000"
              ],
              [
                "1/1",
                "-8881089941/25000000000"
              ],
              [
                "1/1",
                "-144973713801/250000000000"
              ],
              [
                "1/1",
                "-35867269261/50000000000"
              ]
            ],
            "raw": [
              "27224133453/125000000000",
              "907/1000"
            ],
            "new": [
              "217793/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 182,
            "target": "v",
            "old": [
              "216109/1000000",
              "713921/1000000"
            ],
            "lines": [
              [
                "1/1",
                "-114786987199/500000000000"
              ],
              [
                "1/1",
                "-70500593303/100000000000"
              ],
              [
                "1/1",
                "-291407745683/1000000000000"
              ],
              [
                "1/1",
                "-153367940863/200000000000"
              ],
              [
                "1/1",
                "-10892390993/50000000000"
              ],
              [
                "1/1",
                "-3568691321/10000000000"
              ],
              [
                "1/1",
                "-57855409981/100000000000"
              ],
              [
                "1/1",
                "-14351508241/20000000000"
              ]
            ],
            "raw": [
              "10892390993/50000000000",
              "713921/1000000"
            ],
            "new": [
              "217847/1000000",
              "713921/1000000"
            ]
          },
          {
            "factor": 200,
            "target": "h",
            "old": [
              "613/1000",
              "1/1"
            ],
            "lines": [
              [
                "13857/20000",
                "-270723/500000"
              ],
              [
                "88183/100000",
                "-270723/500000"
              ]
            ],
            "raw": [
              "270723/440915",
              "1/1"
            ],
            "new": [
              "307001/500000",
              "1/1"
            ]
          },
          {
            "factor": 205,
            "target": "g",
            "old": [
              "59/500",
              "41641/62500"
            ],
            "lines": [
              [
                "179545543837/500000000000",
                "-74480259/1000000000"
              ],
              [
                "573569661299/9070000000000",
                "-2163951807/18140000000"
              ],
              [
                "237562592817/500000000000",
                "-92055399/1000000000"
              ],
              [
                "8129994648981/45350000000000",
                "-12413824233/90700000000"
              ],
              [
                "584837/1000000",
                "-74480259/1000000000"
              ],
              [
                "1868299/18140000",
                "-2163951807/18140000000"
              ],
              [
                "773817/1000000",
                "-92055399/1000000000"
              ],
              [
                "26481981/90700000",
                "-12413824233/90700000000"
              ]
            ],
            "raw": [
              "30685133/257939000",
              "41641/62500"
            ],
            "new": [
              "59481/500000",
              "41641/62500"
            ]
          },
          {
            "factor": 206,
            "target": "z",
            "old": [
              "69721/500000",
              "30429/40000"
            ],
            "lines": [
              [
                "3291051357/10000000000",
                "-35014593/500000000"
              ],
              [
                "-97040571/2000000000",
                "-60358581/500000000"
              ],
              [
                "20943550683/50000000000",
                "-35014593/500000000"
              ],
              [
                "-617545549/10000000000",
                "-60358581/500000000"
              ],
              [
                "11930877/20000000",
                "-105927/1000000"
              ],
              [
                "68412009/312500000",
                "-2447109/15625000"
              ],
              [
                "75925563/100000000",
                "-105927/1000000"
              ],
              [
                "435359471/1562500000",
                "-2447109/15625000"
              ]
            ],
            "raw": [
              "3530900/25308521",
              "30429/40000"
            ],
            "new": [
              "69757/500000",
              "30429/40000"
            ]
          },
          {
            "factor": 1057,
            "target": "z",
            "old": [
              "69757/500000",
              "30429/40000"
            ],
            "lines": [
              [
                "-18129947/40000000",
                "105752325319993/500000000000000"
              ],
              [
                "-57917269/725600000",
                "337832530505111/9070000000000000"
              ],
              [
                "-23988327/40000000",
                "139924367169213/500000000000000"
              ],
              [
                "-820941411/3628000000",
                "4788566848249809/45350000000000000"
              ],
              [
                "-18129947/40000000",
                "344468993/1000000000"
              ],
              [
                "-57917269/725600000",
                "1100428111/18140000000"
              ],
              [
                "-23988327/40000000",
                "455778213/1000000000"
              ],
              [
                "-820941411/3628000000",
                "15597886809/90700000000"
              ]
            ],
            "raw": [
              "69757/500000",
              "19/25"
            ],
            "new": [
              "69757/500000",
              "19/25"
            ]
          },
          {
            "factor": 1150,
            "target": "y",
            "old": [
              "217793/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "12235731/20000000",
                "-2921328104221/10000000000000"
              ],
              [
                "12235731/20000000",
                "-131128527021869/250000000000000"
              ],
              [
                "77865589/100000000",
                "-18453623097619/50000000000000"
              ],
              [
                "77865589/100000000",
                "-163521708729679/250000000000000"
              ],
              [
                "12235731/20000000",
                "-3024031826521/10000000000000"
              ],
              [
                "12235731/20000000",
                "-143763892592429/250000000000000"
              ],
              [
                "77865589/100000000",
                "-18967141709119/50000000000000"
              ],
              [
                "77865589/100000000",
                "-176157074300239/250000000000000"
              ],
              [
                "12235731/20000000",
                "-79251152713/250000000000"
              ],
              [
                "12235731/20000000",
                "-1073019352573/1953125000000"
              ],
              [
                "77865589/100000000",
                "-50091028909/125000000000"
              ],
              [
                "77865589/100000000",
                "-1339341023903/1953125000000"
              ],
              [
                "12235731/20000000",
                "-163637491541/500000000000"
              ],
              [
                "12235731/20000000",
                "-1171733146093/1953125000000"
              ],
              [
                "77865589/100000000",
                "-205499301751/500000000000"
              ],
              [
                "77865589/100000000",
                "-1438054817423/1953125000000"
              ],
              [
                "12235731/20000000",
                "-2142245177761/10000000000000"
              ],
              [
                "12235731/20000000",
                "-35280028397357/250000000000000"
              ],
              [
                "77865589/100000000",
                "-14558208465319/50000000000000"
              ],
              [
                "77865589/100000000",
                "-67673210105167/250000000000000"
              ],
              [
                "12235731/20000000",
                "-2244948900061/10000000000000"
              ],
              [
                "12235731/20000000",
                "-47915393967917/250000000000000"
              ],
              [
                "77865589/100000000",
                "-15071727076819/50000000000000"
              ],
              [
                "77865589/100000000",
                "-80308575675727/250000000000000"
              ],
              [
                "12235731/20000000",
                "-119548159103/500000000000"
              ],
              [
                "12235731/20000000",
                "-324202957069/1953125000000"
              ],
              [
                "77865589/100000000",
                "-161409969313/500000000000"
              ],
              [
                "77865589/100000000",
                "-590524628399/1953125000000"
              ],
              [
                "12235731/20000000",
                "-62341672609/250000000000"
              ],
              [
                "12235731/20000000",
                "-422916750589/1953125000000"
              ],
              [
                "77865589/100000000",
                "-41636288857/125000000000"
              ],
              [
                "77865589/100000000",
                "-689238421919/1953125000000"
              ]
            ],
            "raw": [
              "35280028397357/152946637500000",
              "907/1000"
            ],
            "new": [
              "57667/250000",
              "907/1000"
            ]
          },
          {
            "factor": 1156,
            "target": "y",
            "old": [
              "57667/250000",
              "907/1000"
            ],
            "lines": [
              [
                "516411071/1000000000",
                "-98282497076841/500000000000000"
              ],
              [
                "1649708017/18140000000",
                "-313969689000807/9070000000000000"
              ],
              [
                "683280411/1000000000",
                "-130040792631981/500000000000000"
              ],
              [
                "23383589223/90700000000",
                "-4450325851855233/45350000000000000"
              ],
              [
                "516411071/1000000000",
                "-54389841/250000000"
              ],
              [
                "1649708017/18140000000",
                "-173751807/4535000000"
              ],
              [
                "683280411/1000000000",
                "-71964981/250000000"
              ],
              [
                "23383589223/90700000000",
                "-2462824233/22675000000"
              ]
            ],
            "raw": [
              "168051093/441500000",
              "907/1000"
            ],
            "new": [
              "95159/250000",
              "907/1000"
            ]
          },
          {
            "factor": 1167,
            "target": "x",
            "old": [
              "56527/500000",
              "186953/250000"
            ],
            "lines": [
              [
                "883/1000",
                "-2560452129689/10000000000000"
              ],
              [
                "883/1000",
                "-16106135946311/50000000000000"
              ],
              [
                "883/1000",
                "-6549081351067/25000000000000"
              ],
              [
                "883/1000",
                "-8201019/25000000"
              ],
              [
                "883/1000",
                "-1355031222751/5000000000000"
              ],
              [
                "883/1000",
                "-9358977661249/25000000000000"
              ],
              [
                "883/1000",
                "-2808598726253/12500000000000"
              ],
              [
                "883/1000",
                "-2207916945687/10000000000000"
              ],
              [
                "883/1000",
                "-9951759362313/50000000000000"
              ],
              [
                "883/1000",
                "-8744931683061/25000000000000"
              ],
              [
                "883/1000",
                "-4715054523/20000000000"
              ],
              [
                "883/1000",
                "-25127157477/100000000000"
              ],
              [
                "883/1000",
                "-15626095569/50000000000"
              ]
            ],
            "raw": [
              "9951759362313/44150000000000",
              "186953/250000"
            ],
            "new": [
              "225407/1000000",
              "186953/250000"
            ]
          },
          {
            "factor": 1219,
            "target": "u",
            "old": [
              "127699/1000000",
              "74493/100000"
            ],
            "lines": [
              [
                "883/1000",
                "-5338961915557/20000000000000"
              ],
              [
                "883/1000",
                "-36019009472443/100000000000000"
              ],
              [
                "883/1000",
                "-11739938052671/50000000000000"
              ],
              [
                "883/1000",
                "-8201019/25000000"
              ],
              [
                "883/1000",
                "-5638182547183/20000000000000"
              ],
              [
                "883/1000",
                "-41242648224817/100000000000000"
              ],
              [
                "883/1000",
                "-9876170255549/50000000000000"
              ],
              [
                "883/1000",
                "-4674465335743/20000000000000"
              ],
              [
                "883/1000",
                "-24418572476257/100000000000000"
              ],
              [
                "883/1000",
                "-15878915101229/50000000000000"
              ],
              [
                "883/1000",
                "-4973685967369/20000000000000"
              ],
              [
                "883/1000",
                "-29642211228631/100000000000000"
              ],
              [
                "883/1000",
                "-14015147304107/50000000000000"
              ]
            ],
            "raw": [
              "9876170255549/44150000000000",
              "74493/100000"
            ],
            "new": [
              "44739/200000",
              "74493/100000"
            ]
          },
          {
            "factor": 16,
            "target": "a",
            "old": [
              "139/1000",
              "10688/15625"
            ],
            "lines": [
              [
                "-13857/20000",
                "1464112857/10000000000"
              ],
              [
                "-88183/100000",
                "13122269183/50000000000"
              ],
              [
                "-13857/20000",
                "8277/20000"
              ],
              [
                "-88183/100000",
                "60283/100000"
              ]
            ],
            "raw": [
              "139/1000",
              "60283/88183"
            ],
            "new": [
              "139/1000",
              "683613/1000000"
            ]
          },
          {
            "factor": 30,
            "target": "d",
            "old": [
              "60001/500000",
              "604217/1000000"
            ],
            "lines": [
              [
                "584837/1000000",
                "-93/1000"
              ],
              [
                "1868299/18140000",
                "-93/1000"
              ],
              [
                "773817/1000000",
                "-93/1000"
              ],
              [
                "26481981/90700000",
                "-93/1000"
              ]
            ],
            "raw": [
              "31000/257939",
              "604217/1000000"
            ],
            "new": [
              "120183/1000000",
              "604217/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "13857/20000",
              "88183/100000"
            ],
            "lines": [
              [
                "-151301/500000",
                "104801/500000"
              ],
              [
                "22679/125000",
                "-4288/15625"
              ],
              [
                "-786817/1000000",
                "693817/1000000"
              ],
              [
                "-302783/1000000",
                "209783/1000000"
              ]
            ],
            "raw": [
              "13857/20000",
              "693817/786817"
            ],
            "new": [
              "13857/20000",
              "881803/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "84557/200000",
              "907/1000"
            ],
            "lines": [
              [
                "6143/20000",
                "-2598284169/20000000000"
              ],
              [
                "118197/1000000",
                "-107205270051/1000000000000"
              ],
              [
                "6143/20000",
                "-5571705031/20000000000"
              ],
              [
                "118197/1000000",
                "-164416636749/1000000000000"
              ]
            ],
            "raw": [
              "2598284169/6143000000",
              "907/1000"
            ],
            "new": [
              "211483/500000",
              "907/1000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "617/1000",
              "88183/100000"
            ],
            "lines": [
              [
                "-302783/1000000",
                "209783/1000000"
              ],
              [
                "181251/1000000",
                "-274251/1000000"
              ],
              [
                "-786817/1000000",
                "693817/1000000"
              ]
            ],
            "raw": [
              "617/1000",
              "693817/786817"
            ],
            "new": [
              "617/1000",
              "881803/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "59481/500000",
              "41641/62500"
            ],
            "lines": [
              [
                "-307001/500000",
                "589372527/2500000000"
              ],
              [
                "-307001/500000",
                "40675617733/125000000000"
              ],
              [
                "-1/1",
                "5031877251/10000000000"
              ],
              [
                "-1/1",
                "332889568129/500000000000"
              ],
              [
                "-307001/500000",
                "-1941547143/10000000000"
              ],
              [
                "-307001/500000",
                "-110870737197/500000000000"
              ],
              [
                "-1/1",
                "18321/250000"
              ],
              [
                "-1/1",
                "1482909/12500000"
              ]
            ],
            "raw": [
              "59481/500000",
              "332889568129/500000000000"
            ],
            "new": [
              "59481/500000",
              "33289/50000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "69757/500000",
              "19/25"
            ],
            "lines": [
              [
                "-13857/20000",
                "2026315467/7812500000"
              ],
              [
                "-881803/1000000",
                "187692949841/500000000000"
              ],
              [
                "-13857/20000",
                "-3818948293/50000000000"
              ],
              [
                "-881803/1000000",
                "19819277023/500000000000"
              ],
              [
                "-13857/20000",
                "60111/125000"
              ],
              [
                "-881803/1000000",
                "669841/1000000"
              ],
              [
                "-13857/20000",
                "-6593/100000"
              ],
              [
                "-881803/1000000",
                "123023/1000000"
              ]
            ],
            "raw": [
              "69757/500000",
              "669841/881803"
            ],
            "new": [
              "69757/500000",
              "759627/1000000"
            ]
          },
          {
            "factor": 114,
            "target": "v",
            "old": [
              "217847/1000000",
              "713921/1000000"
            ],
            "lines": [
              [
                "-617/1000",
                "18618505661/100000000000"
              ],
              [
                "-881803/1000000",
                "43596828527/125000000000"
              ],
              [
                "-617/1000",
                "169/500"
              ],
              [
                "-881803/1000000",
                "602803/1000000"
              ],
              [
                "-617/1000",
                "19369036207/50000000000"
              ],
              [
                "-881803/1000000",
                "274985147873/500000000000"
              ]
            ],
            "raw": [
              "217847/1000000",
              "602803/881803"
            ],
            "new": [
              "217847/1000000",
              "683603/1000000"
            ]
          },
          {
            "factor": 126,
            "target": "z",
            "old": [
              "69757/500000",
              "759627/1000000"
            ],
            "lines": [
              [
                "13857/20000",
                "-1349769/7812500"
              ],
              [
                "13857/20000",
                "-7583082771/15625000000"
              ],
              [
                "881803/1000000",
                "-199034899/1000000000"
              ],
              [
                "881803/1000000",
                "-614488024533/1000000000000"
              ],
              [
                "13857/20000",
                "-9676273/100000000"
              ],
              [
                "13857/20000",
                "-11150540391/100000000000"
              ],
              [
                "881803/1000000",
                "-123027197/1000000000"
              ],
              [
                "881803/1000000",
                "-240676131099/1000000000000"
              ]
            ],
            "raw": [
              "123027197/881803000",
              "759627/1000000"
            ],
            "new": [
              "139517/1000000",
              "759627/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "225407/1000000",
              "186953/250000"
            ],
            "lines": [
              [
                "-782153/1000000",
                "7299472149/50000000000"
              ],
              [
                "-782153/1000000",
                "189096458547/1000000000000"
              ],
              [
                "-782153/1000000",
                "88252759/250000000"
              ],
              [
                "-782153/1000000",
                "535500817859/1000000000000"
              ],
              [
                "-782153/1000000",
                "5860295469/12500000000"
              ],
              [
                "-782153/1000000",
                "511930653087/1000000000000"
              ],
              [
                "-782153/1000000",
                "401485891/1000000000"
              ],
              [
                "-782153/1000000",
                "583975672859/1000000000000"
              ],
              [
                "-316397/1000000",
                "-7069100451/50000000000"
              ],
              [
                "-316397/1000000",
                "-221608579521/1000000000000"
              ],
              [
                "-316397/1000000",
                "2051237/31250000"
              ],
              [
                "-316397/1000000",
                "124795779791/1000000000000"
              ],
              [
                "-316397/1000000",
                "2268152319/12500000000"
              ],
              [
                "-316397/1000000",
                "101225615019/1000000000000"
              ],
              [
                "-316397/1000000",
                "114114439/1000000000"
              ],
              [
                "-316397/1000000",
                "173270634791/1000000000000"
              ]
            ],
            "raw": [
              "225407/1000000",
              "583975672859/782153000000"
            ],
            "new": [
              "225407/1000000",
              "373313/500000"
            ]
          },
          {
            "factor": 146,
            "target": "v",
            "old": [
              "217847/1000000",
              "683603/1000000"
            ],
            "lines": [
              [
                "13857/20000",
                "-68842509/200000000"
              ],
              [
                "13857/20000",
                "-119944091403/200000000000"
              ],
              [
                "881803/1000000",
                "-92619253/250000000"
              ],
              [
                "881803/1000000",
                "-182222796051/250000000000"
              ],
              [
                "13857/20000",
                "-3397011/12500000"
              ],
              [
                "13857/20000",
                "-3042467937/12500000000"
              ],
              [
                "881803/1000000",
                "-298025347/1000000000"
              ],
              [
                "881803/1000000",
                "-372568162149/1000000000000"
              ]
            ],
            "raw": [
              "298025347/881803000",
              "683603/1000000"
            ],
            "new": [
              "84493/250000",
              "683603/1000000"
            ]
          },
          {
            "factor": 176,
            "target": "u",
            "old": [
              "44739/200000",
              "74493/100000"
            ],
            "lines": [
              [
                "-1/1",
                "2651574119/5000000000"
              ],
              [
                "-1/1",
                "163851750121/250000000000"
              ],
              [
                "-1/1",
                "154952705829/250000000000"
              ],
              [
                "-1/1",
                "744903/1000000"
              ],
              [
                "-1/1",
                "10081974249/20000000000"
              ],
              [
                "-1/1",
                "563882874791/1000000000000"
              ],
              [
                "-1/1",
                "685118837659/1000000000000"
              ]
            ],
            "raw": [
              "44739/200000",
              "744903/1000000"
            ],
            "new": [
              "44739/200000",
              "744903/1000000"
            ]
          },
          {
            "factor": 200,
            "target": "h",
            "old": [
              "307001/500000",
              "1/1"
            ],
            "lines": [
              [
                "13857/20000",
                "-270723/500000"
              ],
              [
                "881803/1000000",
                "-270723/500000"
              ]
            ],
            "raw": [
              "541446/881803",
              "1/1"
            ],
            "new": [
              "614021/1000000",
              "1/1"
            ]
          },
          {
            "factor": 205,
            "target": "g",
            "old": [
              "59481/500000",
              "33289/50000"
            ],
            "lines": [
              [
                "359102199577/1000000000000",
                "-74480259/1000000000"
              ],
              [
                "1147174820279/18140000000000",
                "-2163951807/18140000000"
              ],
              [
                "47512330959/100000000000",
                "-11506611/125000000"
              ],
              [
                "162589887795741/907000000000000",
                "-124135964853/907000000000"
              ],
              [
                "584837/1000000",
                "-74480259/1000000000"
              ],
              [
                "1868299/18140000",
                "-2163951807/18140000000"
              ],
              [
                "77379/100000",
                "-11506611/125000000"
              ],
              [
                "264795321/907000000",
                "-124135964853/907000000000"
              ]
            ],
            "raw": [
              "3835537/32241250",
              "33289/50000"
            ],
            "new": [
              "118963/1000000",
              "33289/50000"
            ]
          },
          {
            "factor": 206,
            "target": "z",
            "old": [
              "139517/1000000",
              "759627/1000000"
            ],
            "lines": [
              [
                "6582365997/20000000000",
                "-70030953/1000000000"
              ],
              [
                "-120542043/2500000000",
                "-60339981/500000000"
              ],
              [
                "418874942863/1000000000000",
                "-70030953/1000000000"
              ],
              [
                "-7670804297/125000000000",
                "-60339981/500000000"
              ],
              [
                "11930877/20000000",
                "-105927/1000000"
              ],
              [
                "4384174659/20000000000",
                "-156576009/1000000000"
              ],
              [
                "759232383/1000000000",
                "-105927/1000000"
              ],
              [
                "278991005761/1000000000000",
                "-156576009/1000000000"
              ]
            ],
            "raw": [
              "35309000/253077461",
              "759627/1000000"
            ],
            "new": [
              "69759/500000",
              "759627/1000000"
            ]
          },
          {
            "factor": 1156,
            "target": "y",
            "old": [
              "95159/250000",
              "907/1000"
            ],
            "lines": [
              [
                "516411071/1000000000",
                "-196566027560661/1000000000000000"
              ],
              [
                "1649708017/18140000000",
                "-627942679285947/18140000000000000"
              ],
              [
                "68325657/100000000",
                "-26007387779187/100000000000000"
              ],
              [
                "233814268443/907000000000",
                "-88998754124003913/907000000000000000"
              ],
              [
                "516411071/1000000000",
                "-54389841/250000000"
              ],
              [
                "1649708017/18140000000",
                "-173751807/4535000000"
              ],
              [
                "68325657/100000000",
                "-7196247/25000000"
              ],
              [
                "233814268443/907000000000",
                "-24625964853/226750000000"
              ]
            ],
            "raw": [
              "336103953/883000000",
              "907/1000"
            ],
            "new": [
              "190319/500000",
              "907/1000"
            ]
          },
          {
            "factor": 1167,
            "target": "x",
            "old": [
              "225407/1000000",
              "373313/500000"
            ],
            "lines": [
              [
                "883/1000",
                "-5120916308909/20000000000000"
              ],
              [
                "883/1000",
                "-322115381613731/1000000000000000"
              ],
              [
                "883/1000",
                "-261961149831719/1000000000000000"
              ],
              [
                "883/1000",
                "-82007679/250000000"
              ],
              [
                "883/1000",
                "-2710061105991/10000000000000"
              ],
              [
                "883/1000",
                "-187171936275369/500000000000000"
              ],
              [
                "883/1000",
                "-112346477024181/500000000000000"
              ],
              [
                "883/1000",
                "-4415848619927/20000000000000"
              ],
              [
                "883/1000",
                "-199040866619993/1000000000000000"
              ],
              [
                "883/1000",
                "-349782280376357/1000000000000000"
              ],
              [
                "883/1000",
                "-4715054523/20000000000"
              ],
              [
                "883/1000",
                "-251269357557/1000000000000"
              ],
              [
                "883/1000",
                "-312514084593/1000000000000"
              ]
            ],
            "raw": [
              "199040866619993/883000000000000",
              "373313/500000"
            ],
            "new": [
              "112707/500000",
              "373313/500000"
            ]
          },
          {
            "factor": 1219,
            "target": "u",
            "old": [
              "44739/200000",
              "744903/1000000"
            ],
            "lines": [
              [
                "883/1000",
                "-1035613577047/4000000000000"
              ],
              [
                "883/1000",
                "-66418318098073/200000000000000"
              ],
              [
                "883/1000",
                "-50968503954277/200000000000000"
              ],
              [
                "883/1000",
                "-82007679/250000000"
              ],
              [
                "883/1000",
                "-1369318447077/5000000000000"
              ],
              [
                "883/1000",
                "-96080020356843/250000000000000"
              ],
              [
                "883/1000",
                "-54393580997007/250000000000000"
              ],
              [
                "883/1000",
                "-2357545679397/10000000000000"
              ],
              [
                "883/1000",
                "-125637893751723/500000000000000"
              ],
              [
                "883/1000",
                "-156254748218127/500000000000000"
              ],
              [
                "883/1000",
                "-5014297261867/20000000000000"
              ],
              [
                "883/1000",
                "-303504278440453/1000000000000000"
              ],
              [
                "883/1000",
                "-275241300652897/1000000000000000"
              ]
            ],
            "raw": [
              "54393580997007/220750000000000",
              "744903/1000000"
            ],
            "new": [
              "246403/1000000",
              "744903/1000000"
            ]
          },
          {
            "factor": 16,
            "target": "a",
            "old": [
              "139/1000",
              "683613/1000000"
            ],
            "lines": [
              [
                "-13857/20000",
                "2928488997/20000000000"
              ],
              [
                "-881803/1000000",
                "262445559863/1000000000000"
              ],
              [
                "-13857/20000",
                "8277/20000"
              ],
              [
                "-881803/1000000",
                "602803/1000000"
              ]
            ],
            "raw": [
              "139/1000",
              "602803/881803"
            ],
            "new": [
              "139/1000",
              "683603/1000000"
            ]
          },
          {
            "factor": 30,
            "target": "d",
            "old": [
              "120183/1000000",
              "604217/1000000"
            ],
            "lines": [
              [
                "584837/1000000",
                "-93/1000"
              ],
              [
                "1868299/18140000",
                "-93/1000"
              ],
              [
                "77379/100000",
                "-93/1000"
              ],
              [
                "264795321/907000000",
                "-93/1000"
              ]
            ],
            "raw": [
              "3100/25793",
              "604217/1000000"
            ],
            "new": [
              "120187/1000000",
              "604217/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "13857/20000",
              "881803/1000000"
            ],
            "lines": [
              [
                "-302779/1000000",
                "209779/1000000"
              ],
              [
                "181251/1000000",
                "-274251/1000000"
              ],
              [
                "-786813/1000000",
                "693813/1000000"
              ],
              [
                "-302783/1000000",
                "209783/1000000"
              ]
            ],
            "raw": [
              "13857/20000",
              "231271/262271"
            ],
            "new": [
              "13857/20000",
              "440901/500000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "211483/500000",
              "907/1000"
            ],
            "lines": [
              [
                "6143/20000",
                "-2598308741/20000000000"
              ],
              [
                "59099/500000",
                "-53602931513/500000000000"
              ],
              [
                "6143/20000",
                "-5571705031/20000000000"
              ],
              [
                "59099/500000",
                "-82208620483/500000000000"
              ]
            ],
            "raw": [
              "2598308741/6143000000",
              "907/1000"
            ],
            "new": [
              "42297/100000",
              "907/1000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "617/1000",
              "881803/1000000"
            ],
            "lines": [
              [
                "-302783/1000000",
                "209783/1000000"
              ],
              [
                "181247/1000000",
                "-274247/1000000"
              ],
              [
                "-786813/1000000",
                "693813/1000000"
              ]
            ],
            "raw": [
              "617/1000",
              "231271/262271"
            ],
            "new": [
              "617/1000",
              "440901/500000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "33289/50000"
            ],
            "lines": [
              [
                "-614021/1000000",
                "4715188071/20000000000"
              ],
              [
                "-614021/1000000",
                "162708847203/500000000000"
              ],
              [
                "-1/1",
                "5031849537/10000000000"
              ],
              [
                "-1/1",
                "166443687141/250000000000"
              ],
              [
                "-614021/1000000",
                "-1938831171/10000000000"
              ],
              [
                "-614021/1000000",
                "-55348915503/250000000000"
              ],
              [
                "-1/1",
                "1470848661/20000000000"
              ],
              [
                "-1/1",
                "59480696073/500000000000"
              ]
            ],
            "raw": [
              "118963/1000000",
              "166443687141/250000000000"
            ],
            "new": [
              "118963/1000000",
              "26631/40000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "69759/500000",
              "759627/1000000"
            ],
            "lines": [
              [
                "-13857/20000",
                "259378669627/1000000000000"
              ],
              [
                "-440901/500000",
                "375399165619/1000000000000"
              ],
              [
                "-13857/20000",
                "-3055015257/40000000000"
              ],
              [
                "-440901/500000",
                "39645114567/1000000000000"
              ],
              [
                "-13857/20000",
                "480887/1000000"
              ],
              [
                "-440901/500000",
                "669839/1000000"
              ],
              [
                "-13857/20000",
                "-2637/40000"
              ],
              [
                "-440901/500000",
                "123027/1000000"
              ]
            ],
            "raw": [
              "69759/500000",
              "669839/881802"
            ],
            "new": [
              "69759/500000",
              "379813/500000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "246403/1000000",
              "744903/1000000"
            ],
            "lines": [
              [
                "-190319/500000",
                "3186189627/250000000000"
              ],
              [
                "-190319/500000",
                "1040329227/50000000000"
              ],
              [
                "-190319/500000",
                "47224955143/250000000000"
              ],
              [
                "-190319/500000",
                "49240411651/250000000000"
              ],
              [
                "-907/1000",
                "2948708361/7812500000"
              ],
              [
                "-907/1000",
                "15154801527/31250000000"
              ],
              [
                "-907/1000",
                "34599358267/62500000000"
              ],
              [
                "-907/1000",
                "41319294433/62500000000"
              ],
              [
                "-190319/500000",
                "-18601951701/125000000000"
              ],
              [
                "-190319/500000",
                "-6439420509/31250000000"
              ],
              [
                "-190319/500000",
                "51871618307/250000000000"
              ],
              [
                "-190319/500000",
                "37560157637/250000000000"
              ],
              [
                "-907/1000",
                "53968574523/250000000000"
              ],
              [
                "-907/1000",
                "64521402009/250000000000"
              ],
              [
                "-907/1000",
                "17880512029/31250000000"
              ],
              [
                "-907/1000",
                "76798461859/125000000000"
              ]
            ],
            "raw": [
              "246403/1000000",
              "41319294433/56687500000"
            ],
            "new": [
              "246403/1000000",
              "728897/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "112707/500000",
              "373313/500000"
            ],
            "lines": [
              [
                "-165507/250000",
                "42968788443/500000000000"
              ],
              [
                "-165507/250000",
                "48617809509/500000000000"
              ],
              [
                "-165507/250000",
                "56201151/200000000"
              ],
              [
                "-165507/250000",
                "3372543027/7812500000"
              ],
              [
                "-165507/250000",
                "192388012857/500000000000"
              ],
              [
                "-165507/250000",
                "198037033923/500000000000"
              ],
              [
                "-165507/250000",
                "325877697/1000000000"
              ],
              [
                "-165507/250000",
                "29784840591/62500000000"
              ],
              [
                "-316397/1000000",
                "-63658375057/500000000000"
              ],
              [
                "-316397/1000000",
                "-51885622011/250000000000"
              ],
              [
                "-316397/1000000",
                "16937857/250000000"
              ],
              [
                "-316397/1000000",
                "63453700197/500000000000"
              ],
              [
                "-316397/1000000",
                "85760849357/500000000000"
              ],
              [
                "-316397/1000000",
                "5705997549/62500000000"
              ],
              [
                "-316397/1000000",
                "11262337/100000000"
              ],
              [
                "-316397/1000000",
                "85889671197/500000000000"
              ]
            ],
            "raw": [
              "112707/500000",
              "9928280197/13792250000"
            ],
            "new": [
              "112707/500000",
              "143969/200000"
            ]
          },
          {
            "factor": 146,
            "target": "v",
            "old": [
              "84493/250000",
              "683603/1000000"
            ],
            "lines": [
              [
                "13857/20000",
                "-341056133/1000000000"
              ],
              [
                "13857/20000",
                "-584192508541/1000000000000"
              ],
              [
                "440901/500000",
                "-367320461/1000000000"
              ],
              [
                "440901/500000",
                "-713360662597/1000000000000"
              ],
              [
                "13857/20000",
                "-273989467/1000000000"
              ],
              [
                "13857/20000",
                "-254358162659/1000000000000"
              ],
              [
                "440901/500000",
                "-60050759/200000000"
              ],
              [
                "440901/500000",
                "-76705263343/200000000000"
              ]
            ],
            "raw": [
              "60050759/176360400",
              "683603/1000000"
            ],
            "new": [
              "681/2000",
              "683603/1000000"
            ]
          },
          {
            "factor": 200,
            "target": "h",
            "old": [
              "614021/1000000",
              "1/1"
            ],
            "lines": [
              [
                "13857/20000",
                "-270723/500000"
              ],
              [
                "440901/500000",
                "-270723/500000"
              ]
            ],
            "raw": [
              "90241/146967",
              "1/1"
            ],
            "new": [
              "307011/500000",
              "1/1"
            ]
          },
          {
            "factor": 1219,
            "target": "u",
            "old": [
              "246403/1000000",
              "728897/1000000"
            ],
            "lines": [
              [
                "883/1000",
                "-2587341188307/10000000000000"
              ],
              [
                "883/1000",
                "-82875060272271/250000000000000"
              ],
              [
                "883/1000",
                "-15954013858851/62500000000000"
              ],
              [
                "883/1000",
                "-41003793/125000000"
              ],
              [
                "883/1000",
                "-10947775009/40000000000"
              ],
              [
                "883/1000",
                "-383728399477/1000000000000"
              ],
              [
                "883/1000",
                "-54499079937/250000000000"
              ],
              [
                "883/1000",
                "-4715092133981/20000000000000"
              ],
              [
                "883/1000",
                "-125637920336993/500000000000000"
              ],
              [
                "883/1000",
                "-39063638753133/125000000000000"
              ],
              [
                "883/1000",
                "-5014297261867/20000000000000"
              ],
              [
                "883/1000",
                "-151751999530951/500000000000000"
              ],
              [
                "883/1000",
                "-34405151003931/125000000000000"
              ]
            ],
            "raw": [
              "54499079937/220750000000",
              "728897/1000000"
            ],
            "new": [
              "246881/1000000",
              "728897/1000000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "246881/1000000",
              "728897/1000000"
            ],
            "lines": [
              [
                "-190319/500000",
                "115630803/10000000000"
              ],
              [
                "-190319/500000",
                "4786808919/250000000000"
              ],
              [
                "-190319/500000",
                "899584179/5000000000"
              ],
              [
                "-190319/500000",
                "23437623897/125000000000"
              ],
              [
                "-907/1000",
                "5878953/15625000"
              ],
              [
                "-907/1000",
                "4832943/10000000"
              ],
              [
                "-907/1000",
                "217842699/400000000"
              ],
              [
                "-907/1000",
                "1303296111/2000000000"
              ],
              [
                "-190319/500000",
                "-18601951701/125000000000"
              ],
              [
                "-190319/500000",
                "-6439420509/31250000000"
              ],
              [
                "-190319/500000",
                "37835780257/200000000000"
              ],
              [
                "-190319/500000",
                "26386611721/200000000000"
              ],
              [
                "-907/1000",
                "53968574523/250000000000"
              ],
              [
                "-907/1000",
                "64521402009/250000000000"
              ],
              [
                "-907/1000",
                "110773762597/200000000000"
              ],
              [
                "-907/1000",
                "596080122929/1000000000000"
              ]
            ],
            "raw": [
              "246881/1000000",
              "1303296111/1814000000"
            ],
            "new": [
              "246881/1000000",
              "359233/500000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "112707/500000",
              "143969/200000"
            ],
            "lines": [
              [
                "-1319/2000",
                "42336927961/500000000000"
              ],
              [
                "-1319/2000",
                "47651239299/500000000000"
              ],
              [
                "-1319/2000",
                "279490433/1000000000"
              ],
              [
                "-1319/2000",
                "214750383/500000000"
              ],
              [
                "-1319/2000",
                "94188921173/250000000000"
              ],
              [
                "-1319/2000",
                "48423038421/125000000000"
              ],
              [
                "-1319/2000",
                "161673919/500000000"
              ],
              [
                "-1319/2000",
                "473358171/1000000000"
              ],
              [
                "-316397/1000000",
                "-63510347539/500000000000"
              ],
              [
                "-316397/1000000",
                "-12952902063/62500000000"
              ],
              [
                "-316397/1000000",
                "33897941/500000000"
              ],
              [
                "-316397/1000000",
                "63475927197/500000000000"
              ],
              [
                "-316397/1000000",
                "41265283423/250000000000"
              ],
              [
                "-316397/1000000",
                "42417697881/500000000000"
              ],
              [
                "-316397/1000000",
                "111653287/1000000000"
              ],
              [
                "-316397/1000000",
                "85404629697/500000000000"
              ]
            ],
            "raw": [
              "112707/500000",
              "473358171/659500000"
            ],
            "new": [
              "112707/500000",
              "358877/500000"
            ]
          },
          {
            "factor": 146,
            "target": "v",
            "old": [
              "681/2000",
              "683603/1000000"
            ],
            "lines": [
              [
                "13857/20000",
                "-340989691/1000000000"
              ],
              [
                "13857/20000",
                "-583865746307/1000000000000"
              ],
              [
                "440901/500000",
                "-367254019/1000000000"
              ],
              [
                "440901/500000",
                "-713033900363/1000000000000"
              ],
              [
                "13857/20000",
                "-17214961/62500000"
              ],
              [
                "13857/20000",
                "-16343051597/62500000000"
              ],
              [
                "440901/500000",
                "-37712963/125000000"
              ],
              [
                "440901/500000",
                "-48832122451/125000000000"
              ]
            ],
            "raw": [
              "37712963/110225250",
              "683603/1000000"
            ],
            "new": [
              "5346/15625",
              "683603/1000000"
            ]
          },
          {
            "factor": 1219,
            "target": "u",
            "old": [
              "246881/1000000",
              "359233/500000"
            ],
            "lines": [
              [
                "883/1000",
                "-517248022053/2000000000000"
              ],
              [
                "883/1000",
                "-16555792036809/50000000000000"
              ],
              [
                "883/1000",
                "-3194231428629/12500000000000"
              ],
              [
                "883/1000",
                "-41003793/125000000"
              ],
              [
                "883/1000",
                "-85495083569/312500000000"
              ],
              [
                "883/1000",
                "-2994874993157/7812500000000"
              ],
              [
                "883/1000",
                "-213154894821/976562500000"
              ],
              [
                "883/1000",
                "-4715092133981/20000000000000"
              ],
              [
                "883/1000",
                "-125637920336993/500000000000000"
              ],
              [
                "883/1000",
                "-39063638753133/125000000000000"
              ],
              [
                "883/1000",
                "-5014297261867/20000000000000"
              ],
              [
                "883/1000",
                "-151751999530951/500000000000000"
              ],
              [
                "883/1000",
                "-34405151003931/125000000000000"
              ]
            ],
            "raw": [
              "213154894821/862304687500",
              "359233/500000"
            ],
            "new": [
              "30899/125000",
              "359233/500000"
            ]
          }
        ]
      }
    },
    {
      "id": 1,
      "assumptions": [
        "AGO+",
        "AGP+",
        "DGP-"
      ],
      "initial_box": {
        "low": [
          "139/1000",
          "108013/1000000",
          "13857/20000",
          "120187/1000000",
          "42297/100000",
          "617/1000",
          "118963/1000000",
          "307011/500000",
          "69759/500000",
          "112707/500000",
          "190319/500000",
          "30899/125000",
          "5346/15625"
        ],
        "high": [
          "683603/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "26631/40000",
          "1",
          "379813/500000",
          "358877/500000",
          "907/1000",
          "359233/500000",
          "683603/1000000"
        ]
      },
      "known": {
        "ABC": 1,
        "ABD": 1,
        "ABE": 1,
        "ABF": 1,
        "ABH": 1,
        "ACD": 1,
        "ACE": 1,
        "ACF": 1,
        "ACH": 1,
        "ADE": 1,
        "ADF": 1,
        "ADH": 1,
        "AEF": 1,
        "AEH": 1,
        "AFH": 1,
        "BCD": 1,
        "BCE": 1,
        "BCF": 1,
        "BCH": 1,
        "BDE": 1,
        "BDF": 1,
        "BDH": 1,
        "BEF": 1,
        "BEH": 1,
        "BFH": 1,
        "CDE": 1,
        "CDF": 1,
        "CDH": 1,
        "CEF": 1,
        "CEH": 1,
        "CFH": 1,
        "DEF": 1,
        "DEH": 1,
        "DFH": 1,
        "EFH": 1,
        "ABG": 1,
        "BCG": 1,
        "CDG": 1,
        "DEG": 1,
        "EFG": 1,
        "FGH": -1,
        "AGH": 1,
        "CGH": -1,
        "ABO": 1,
        "BCO": 1,
        "CDO": 1,
        "DEO": 1,
        "EFO": 1,
        "FHO": 1,
        "AHO": -1,
        "CHO": -1,
        "CEO": 1,
        "ABP": 1,
        "BCP": 1,
        "CDP": 1,
        "DEP": 1,
        "EFP": 1,
        "FHP": 1,
        "AHP": -1,
        "CHP": -1,
        "CEP": 1,
        "HOP": -1,
        "EHP": 1,
        "ACG": 1,
        "BGH": 1,
        "DGO": -1,
        "COP": 1,
        "EOP": 1,
        "FOP": 1,
        "AGO": 1,
        "AGP": 1,
        "DGP": -1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DFG": 1,
        "DGH": -1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "GHO": -1,
        "GHP": -1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "CFP": 1,
        "DFP": 1,
        "ADO": 1,
        "ADP": 1,
        "BEO": 1,
        "BDO": 1,
        "BDP": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "ABCGO"
          ],
          "target": "ACO",
          "sign": 1,
          "deps": [
            "ABC",
            "AGO",
            "ABG",
            "ABO",
            "ACG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ABCGP"
          ],
          "target": "ACP",
          "sign": 1,
          "deps": [
            "ABC",
            "AGP",
            "ABG",
            "ABP",
            "ACG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAEGH"
          ],
          "target": "CEG",
          "sign": 1,
          "deps": [
            "ACE",
            "CGH",
            "ACG",
            "CEH",
            "ACH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAFGH"
          ],
          "target": "CFG",
          "sign": 1,
          "deps": [
            "ACF",
            "CGH",
            "ACG",
            "CFH",
            "ACH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAGHO"
          ],
          "target": "CGO",
          "sign": -1,
          "deps": [
            "ACG",
            "CHO",
            "ACH",
            "ACO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAGHP"
          ],
          "target": "CGP",
          "sign": -1,
          "deps": [
            "ACG",
            "CHP",
            "ACH",
            "ACP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "FCDEG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "CDF",
            "EFG",
            "CEF",
            "CFG",
            "DEF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFH"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "CDG",
            "FGH",
            "CFG",
            "CGH",
            "DFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCEFH"
          ],
          "target": "EGH",
          "sign": -1,
          "deps": [
            "CEG",
            "FGH",
            "CFG",
            "CGH",
            "EFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HABCO"
          ],
          "target": "BHO",
          "sign": -1,
          "deps": [
            "ABH",
            "CHO",
            "ACH",
            "AHO",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HABCP"
          ],
          "target": "BHP",
          "sign": -1,
          "deps": [
            "ABH",
            "CHP",
            "ACH",
            "AHP",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HACGO"
          ],
          "target": "GHO",
          "sign": -1,
          "deps": [
            "ACH",
            "AGH",
            "CHO",
            "AHO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HACGP"
          ],
          "target": "GHP",
          "sign": -1,
          "deps": [
            "ACH",
            "AGH",
            "CHP",
            "AHP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OCDEP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDO",
            "EOP",
            "CEO",
            "COP",
            "DEO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OCEFP"
          ],
          "target": "CFO",
          "sign": 1,
          "deps": [
            "CEO",
            "FOP",
            "EOP",
            "COP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ODEFP"
          ],
          "target": "DFO",
          "sign": 1,
          "deps": [
            "DEO",
            "FOP",
            "EOP",
            "DOP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PCEFO"
          ],
          "target": "CFP",
          "sign": 1,
          "deps": [
            "CEP",
            "FOP",
            "EOP",
            "COP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PDEFO"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FOP",
            "EOP",
            "DOP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GO",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACO",
            "CDO",
            "DGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GP",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACP",
            "CDP",
            "DGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "BCE",
            "OP",
            "EBC",
            [
              "fixed",
              "BCE"
            ]
          ],
          "target": "BEO",
          "sign": 1,
          "deps": [
            "BCO",
            "CEO",
            "BCP",
            "CEP",
            "EOP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BADEO"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "ABD",
            "BEO",
            "ABE",
            "ABO",
            "BDE"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DABCP"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "ABD",
            "CDP",
            "ACD",
            "ADP",
            "BCD"
          ],
          "area_stage": null
        }
      ],
      "initial": {
        "L_ACP": {
          "triangle": "ACP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACP",
            "points": [
              "G"
            ]
          }
        },
        "L_BCG": {
          "triangle": "BCG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BCG",
            "points": []
          }
        },
        "L_BGH": {
          "triangle": "BGH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BGH",
            "points": []
          }
        },
        "L_CFO": {
          "triangle": "CFO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CFO",
            "points": []
          }
        },
        "L_CFP": {
          "triangle": "CFP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CFP",
            "points": []
          }
        },
        "L_CGH": {
          "triangle": "CGH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GCH",
            "points": []
          }
        },
        "L_CHO": {
          "triangle": "CHO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HCO",
            "points": [
              "P"
            ]
          }
        },
        "L_CHP": {
          "triangle": "CHP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HCP",
            "points": []
          }
        },
        "L_COP": {
          "triangle": "COP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "COP",
            "points": []
          }
        },
        "L_FHO": {
          "triangle": "FHO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FHO",
            "points": []
          }
        },
        "L_FHP": {
          "triangle": "FHP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FHP",
            "points": [
              "O"
            ]
          }
        },
        "L_FOP": {
          "triangle": "FOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FOP",
            "points": []
          }
        },
        "U_BCH": {
          "triangle": "BCH",
          "side": "hi",
          "value": "773789/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "BCH",
            "used": [
              1,
              2,
              7
            ],
            "values": [
              "573588344289/9070000000000",
              "1868299/18140000",
              "40647398918277/226750000000000",
              "132397207/453500000",
              "179551392207/500000000000",
              "237561734679/500000000000",
              "584837/1000000",
              "773789/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_CFH": {
          "triangle": "CFH",
          "side": "hi",
          "value": "440901/500000",
          "witness": {
            "kind": "vertices",
            "signed": "CFH",
            "used": [
              2,
              5,
              7
            ],
            "values": [
              "617/1000",
              "6462764313/10000000000",
              "179801936589/250000000000",
              "50554417809/62500000000",
              "440901/500000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "1547": {
          "row": [
            "linear",
            {
              "BCH": "587789/1000000",
              "BCG": "-773789/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "BCH",
            "point": "G",
            "line": "BC",
            "side": "upper",
            "outer_upper": {
              "triangle": "BCH",
              "ref": "U_BCH",
              "value": "773789/1000000"
            },
            "fan_lower": [
              {
                "triangle": "CGH",
                "ref": "L_CGH",
                "value": "93/1000"
              },
              {
                "triangle": "BGH",
                "ref": "L_BGH",
                "value": "93/1000"
              },
              {
                "triangle": "BCG",
                "ref": "L_BCG",
                "value": "93/1000"
              }
            ],
            "residual": "494789/1000000"
          }
        },
        "1646": {
          "row": [
            "linear",
            {
              "BCF": "-279/1000",
              "BCH": "-93/1000",
              "BCO": "440901/500000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFH",
            "point": "O",
            "line": "BC",
            "side": "lower",
            "outer_upper": {
              "triangle": "CFH",
              "ref": "U_CFH",
              "value": "440901/500000"
            },
            "fan_lower": [
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              },
              {
                "triangle": "CHO",
                "ref": "L_CHO",
                "value": "279/1000"
              },
              {
                "triangle": "CFO",
                "ref": "L_CFO",
                "value": "93/1000"
              }
            ],
            "residual": "208401/500000"
          }
        },
        "1657": {
          "row": [
            "linear",
            {
              "CFH": "254901/500000",
              "CFO": "-440901/500000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFH",
            "point": "O",
            "line": "CF",
            "side": "upper",
            "outer_upper": {
              "triangle": "CFH",
              "ref": "U_CFH",
              "value": "440901/500000"
            },
            "fan_lower": [
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              },
              {
                "triangle": "CHO",
                "ref": "L_CHO",
                "value": "279/1000"
              },
              {
                "triangle": "CFO",
                "ref": "L_CFO",
                "value": "93/1000"
              }
            ],
            "residual": "208401/500000"
          }
        },
        "1709": {
          "row": [
            "linear",
            {
              "CFH": "254901/500000",
              "CFP": "-440901/500000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFH",
            "point": "P",
            "line": "CF",
            "side": "upper",
            "outer_upper": {
              "triangle": "CFH",
              "ref": "U_CFH",
              "value": "440901/500000"
            },
            "fan_lower": [
              {
                "triangle": "FHP",
                "ref": "L_FHP",
                "value": "279/1000"
              },
              {
                "triangle": "CHP",
                "ref": "L_CHP",
                "value": "93/1000"
              },
              {
                "triangle": "CFP",
                "ref": "L_CFP",
                "value": "93/1000"
              }
            ],
            "residual": "208401/500000"
          }
        }
      },
      "updates": [],
      "physical": {
        "132": {
          "name": "AREA_LO_COP",
          "terms": [
            [
              [
                9,
                12
              ],
              "1"
            ],
            [
              [
                2,
                12
              ],
              "-1"
            ],
            [
              [
                10,
                11
              ],
              "-1"
            ],
            [
              [
                2,
                10
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "COP",
            "side": "lo",
            "reference": "L_COP",
            "value": "93/1000"
          }
        },
        "136": {
          "name": "AREA_LO_FOP",
          "terms": [
            [
              [
                9,
                12
              ],
              "1"
            ],
            [
              [
                9
              ],
              "-1"
            ],
            [
              [
                5,
                12
              ],
              "-1"
            ],
            [
              [
                10,
                11
              ],
              "-1"
            ],
            [
              [
                5,
                10
              ],
              "1"
            ],
            [
              [
                11
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FOP",
            "side": "lo",
            "reference": "L_FOP",
            "value": "93/1000"
          }
        },
        "146": {
          "name": "AREA_LO_ACP",
          "terms": [
            [
              [
                2,
                12
              ],
              "1"
            ],
            [
              [
                0,
                2
              ],
              "-1"
            ],
            [
              [
                0,
                11
              ],
              "1"
            ],
            [
              [],
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACP",
            "side": "lo",
            "reference": "L_ACP",
            "value": "279/1000"
          }
        },
        "1057": {
          "name": "LINEAR_1547",
          "terms": [
            [
              [
                2,
                7
              ],
              "587789/1000000"
            ],
            [
              [
                1,
                7
              ],
              "-587789/1000000"
            ],
            [
              [
                2,
                8
              ],
              "-773789/1000000"
            ],
            [
              [
                1,
                8
              ],
              "773789/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1547
          }
        },
        "1156": {
          "name": "LINEAR_1646",
          "terms": [
            [
              [
                2
              ],
              "-279/1000"
            ],
            [
              [
                1
              ],
              "279/1000"
            ],
            [
              [
                2,
                7
              ],
              "-93/1000"
            ],
            [
              [
                1,
                7
              ],
              "93/1000"
            ],
            [
              [
                2,
                10
              ],
              "440901/500000"
            ],
            [
              [
                1,
                10
              ],
              "-440901/500000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1646
          }
        },
        "1167": {
          "name": "LINEAR_1657",
          "terms": [
            [
              [
                5,
                7
              ],
              "254901/500000"
            ],
            [
              [
                2,
                7
              ],
              "-254901/500000"
            ],
            [
              [
                2
              ],
              "-93/250"
            ],
            [
              [
                5,
                10
              ],
              "-440901/500000"
            ],
            [
              [
                2,
                10
              ],
              "440901/500000"
            ],
            [
              [
                9
              ],
              "440901/500000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1657
          }
        },
        "1219": {
          "name": "LINEAR_1709",
          "terms": [
            [
              [
                5,
                7
              ],
              "254901/500000"
            ],
            [
              [
                2,
                7
              ],
              "-254901/500000"
            ],
            [
              [
                2
              ],
              "-93/250"
            ],
            [
              [
                5,
                12
              ],
              "-440901/500000"
            ],
            [
              [
                2,
                12
              ],
              "440901/500000"
            ],
            [
              [
                11
              ],
              "440901/500000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1709
          }
        }
      },
      "coordinate": {
        "low": [
          "139/1000",
          "108013/1000000",
          "13857/20000",
          "120187/1000000",
          "42297/100000",
          "617/1000",
          "118963/1000000",
          "307011/500000",
          "69759/500000",
          "112913/500000",
          "76231/200000",
          "247737/1000000",
          "8559/25000"
        ],
        "high": [
          "683603/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "26631/40000",
          "1/1",
          "6077/8000",
          "89637/125000",
          "907/1000",
          "717097/1000000",
          "683603/1000000"
        ],
        "steps": [
          {
            "factor": 132,
            "target": "u",
            "old": [
              "30899/125000",
              "359233/500000"
            ],
            "lines": [
              [
                "-190319/500000",
                "2698653879/250000000000"
              ],
              [
                "-190319/500000",
                "4517033451/250000000000"
              ],
              [
                "-190319/500000",
                "44811448119/250000000000"
              ],
              [
                "-190319/500000",
                "46629827691/250000000000"
              ],
              [
                "-907/1000",
                "23467782951/62500000000"
              ],
              [
                "-907/1000",
                "30138449883/62500000000"
              ],
              [
                "-907/1000",
                "33995981511/62500000000"
              ],
              [
                "-907/1000",
                "40666648443/62500000000"
              ],
              [
                "-190319/500000",
                "-18601951701/125000000000"
              ],
              [
                "-190319/500000",
                "-6439420509/31250000000"
              ],
              [
                "-190319/500000",
                "46937371853/250000000000"
              ],
              [
                "-190319/500000",
                "32625911183/250000000000"
              ],
              [
                "-907/1000",
                "53968574523/250000000000"
              ],
              [
                "-907/1000",
                "64521402009/250000000000"
              ],
              [
                "-907/1000",
                "69054924889/125000000000"
              ],
              [
                "-907/1000",
                "9291417329/15625000000"
              ]
            ],
            "raw": [
              "30899/125000",
              "40666648443/56687500000"
            ],
            "new": [
              "30899/125000",
              "717383/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "112707/500000",
              "358877/500000"
            ],
            "lines": [
              [
                "-10279/15625",
                "2620379047/31250000000"
              ],
              [
                "-10279/15625",
                "23511354423/250000000000"
              ],
              [
                "-10279/15625",
                "17406563/62500000"
              ],
              [
                "-10279/15625",
                "26755000407/62500000000"
              ],
              [
                "-10279/15625",
                "187535283823/500000000000"
              ],
              [
                "-10279/15625",
                "192631927917/500000000000"
              ],
              [
                "-10279/15625",
                "322232771/1000000000"
              ],
              [
                "-10279/15625",
                "58975971189/125000000000"
              ],
              [
                "-316397/1000000",
                "-15853509187/125000000000"
              ],
              [
                "-316397/1000000",
                "-103526905713/500000000000"
              ],
              [
                "-316397/1000000",
                "13564961/200000000"
              ],
              [
                "-316397/1000000",
                "63490388697/500000000000"
              ],
              [
                "-316397/1000000",
                "82195182323/500000000000"
              ],
              [
                "-316397/1000000",
                "21041156679/250000000000"
              ],
              [
                "-316397/1000000",
                "13944071/125000000"
              ],
              [
                "-316397/1000000",
                "85354270197/500000000000"
              ]
            ],
            "raw": [
              "112707/500000",
              "58975971189/82232000000"
            ],
            "new": [
              "112707/500000",
              "717191/1000000"
            ]
          },
          {
            "factor": 146,
            "target": "v",
            "old": [
              "5346/15625",
              "683603/1000000"
            ],
            "lines": [
              [
                "13857/20000",
                "-170473231/500000000"
              ],
              [
                "13857/20000",
                "-291826572887/500000000000"
              ],
              [
                "440901/500000",
                "-36721079/100000000"
              ],
              [
                "440901/500000",
                "-71282129983/100000000000"
              ],
              [
                "13857/20000",
                "-275589913/1000000000"
              ],
              [
                "13857/20000",
                "-262229167601/1000000000000"
              ],
              [
                "440901/500000",
                "-301854241/1000000000"
              ],
              [
                "440901/500000",
                "-391397321657/1000000000000"
              ]
            ],
            "raw": [
              "301854241/881802000",
              "683603/1000000"
            ],
            "new": [
              "68463/200000",
              "683603/1000000"
            ]
          },
          {
            "factor": 1057,
            "target": "z",
            "old": [
              "69759/500000",
              "379813/500000"
            ],
            "lines": [
              [
                "-452540437393/1000000000000",
                "105538333273960323/500000000000000000"
              ],
              [
                "-1445669214911/18140000000000",
                "337148919301287021/9070000000000000000"
              ],
              [
                "-598749416521/1000000000000",
                "139636174465234731/500000000000000000"
              ],
              [
                "-102447502407323/453500000000000",
                "23892093962775119553/226750000000000000000"
              ],
              [
                "-452540437393/1000000000000",
                "343760755393/1000000000000"
              ],
              [
                "-1445669214911/18140000000000",
                "1098165600911/18140000000000"
              ],
              [
                "-598749416521/1000000000000",
                "454824662521/1000000000000"
              ],
              [
                "-102447502407323/453500000000000",
                "77821621905323/453500000000000"
              ]
            ],
            "raw": [
              "69759/500000",
              "587789/773789"
            ],
            "new": [
              "69759/500000",
              "6077/8000"
            ]
          },
          {
            "factor": 1156,
            "target": "y",
            "old": [
              "190319/500000",
              "907/1000"
            ],
            "lines": [
              [
                "257855218137/500000000000",
                "-98283040975251/500000000000000"
              ],
              [
                "823734897399/9070000000000",
                "-313971426518877/9070000000000000"
              ],
              [
                "341164343889/500000000000",
                "-130036806825147/500000000000000"
              ],
              [
                "58374060963507/226750000000000",
                "-22249618475899761/226750000000000000"
              ],
              [
                "257855218137/500000000000",
                "-54389841/250000000"
              ],
              [
                "823734897399/9070000000000",
                "-173751807/4535000000"
              ],
              [
                "341164343889/500000000000",
                "-71962377/250000000"
              ],
              [
                "58374060963507/226750000000000",
                "-12312940251/113375000000"
              ]
            ],
            "raw": [
              "18672447/48989000",
              "907/1000"
            ],
            "new": [
              "76231/200000",
              "907/1000"
            ]
          },
          {
            "factor": 1167,
            "target": "x",
            "old": [
              "112707/500000",
              "717191/1000000"
            ],
            "lines": [
              [
                "440901/500000",
                "-2559900676170339/10000000000000000"
              ],
              [
                "440901/500000",
                "-80480102297711967/250000000000000000"
              ],
              [
                "440901/500000",
                "-16381250151636627/62500000000000000"
              ],
              [
                "440901/500000",
                "-41003793/125000000"
              ],
              [
                "440901/500000",
                "-541830501693273/2000000000000000"
              ],
              [
                "440901/500000",
                "-18701306134931469/50000000000000000"
              ],
              [
                "440901/500000",
                "-2811493401850089/12500000000000000"
              ],
              [
                "440901/500000",
                "-1104095460842487/5000000000000000"
              ],
              [
                "440901/500000",
                "-24891757410023811/125000000000000000"
              ],
              [
                "440901/500000",
                "-10928605527759591/31250000000000000"
              ],
              [
                "440901/500000",
                "-2357442753981/10000000000000"
              ],
              [
                "440901/500000",
                "-62809943196993/250000000000000"
              ],
              [
                "440901/500000",
                "-19533427913133/62500000000000"
              ]
            ],
            "raw": [
              "2765750823335979/12247250000000000",
              "717191/1000000"
            ],
            "new": [
              "112913/500000",
              "717191/1000000"
            ]
          },
          {
            "factor": 1219,
            "target": "u",
            "old": [
              "30899/125000",
              "717383/1000000"
            ],
            "lines": [
              [
                "440901/500000",
                "-2585878686542619/10000000000000000"
              ],
              [
                "440901/500000",
                "-82747415779122807/250000000000000000"
              ],
              [
                "440901/500000",
                "-15976784346110667/62500000000000000"
              ],
              [
                "440901/500000",
                "-41003793/125000000"
              ],
              [
                "440901/500000",
                "-547026103767729/2000000000000000"
              ],
              [
                "440901/500000",
                "-19154768831213637/50000000000000000"
              ],
              [
                "440901/500000",
                "-2730600240744897/12500000000000000"
              ],
              [
                "440901/500000",
                "-2357609294062323/10000000000000000"
              ],
              [
                "440901/500000",
                "-62824478512291119/250000000000000000"
              ],
              [
                "440901/500000",
                "-19530834959816739/62500000000000000"
              ],
              [
                "440901/500000",
                "-2506861126358349/10000000000000000"
              ],
              [
                "440901/500000",
                "-75850906889236497/250000000000000000"
              ],
              [
                "440901/500000",
                "-17207051817430557/62500000000000000"
              ]
            ],
            "raw": [
              "6193227597/25000000000",
              "717383/1000000"
            ],
            "new": [
              "247729/1000000",
              "717383/1000000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "247729/1000000",
              "717383/1000000"
            ],
            "lines": [
              [
                "-76231/200000",
                "1121392119/100000000000"
              ],
              [
                "-76231/200000",
                "1855281687/100000000000"
              ],
              [
                "-76231/200000",
                "35883106233/200000000000"
              ],
              [
                "-76231/200000",
                "37350885369/200000000000"
              ],
              [
                "-907/1000",
                "293395023/781250000"
              ],
              [
                "-907/1000",
                "12056099739/25000000000"
              ],
              [
                "-907/1000",
                "108749447883/200000000000"
              ],
              [
                "-907/1000",
                "130089119907/200000000000"
              ],
              [
                "-76231/200000",
                "-74087882861/500000000000"
              ],
              [
                "-76231/200000",
                "-102661960109/500000000000"
              ],
              [
                "-76231/200000",
                "187722822373/1000000000000"
              ],
              [
                "-76231/200000",
                "130574667877/1000000000000"
              ],
              [
                "-907/1000",
                "1688718301/7812500000"
              ],
              [
                "-907/1000",
                "32295906559/125000000000"
              ],
              [
                "-907/1000",
                "552054530623/1000000000000"
              ],
              [
                "-907/1000",
                "594265840567/1000000000000"
              ]
            ],
            "raw": [
              "247729/1000000",
              "130089119907/181400000000"
            ],
            "new": [
              "247729/1000000",
              "35857/50000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "112913/500000",
              "717191/1000000"
            ],
            "lines": [
              [
                "-131537/200000",
                "16854026601/200000000000"
              ],
              [
                "-131537/200000",
                "18911008537/200000000000"
              ],
              [
                "-131537/200000",
                "139224721/500000000"
              ],
              [
                "-131537/200000",
                "42797915937/100000000000"
              ],
              [
                "-131537/200000",
                "3747627833/10000000000"
              ],
              [
                "-131537/200000",
                "19252384649/50000000000"
              ],
              [
                "-131537/200000",
                "64420933/200000000"
              ],
              [
                "-131537/200000",
                "47163438237/100000000000"
              ],
              [
                "-316397/1000000",
                "-25260912599/200000000000"
              ],
              [
                "-316397/1000000",
                "-206393398291/1000000000000"
              ],
              [
                "-316397/1000000",
                "33937373/500000000"
              ],
              [
                "-316397/1000000",
                "63515359197/500000000000"
              ],
              [
                "-316397/1000000",
                "1641880873/10000000000"
              ],
              [
                "-316397/1000000",
                "21024813001/250000000000"
              ],
              [
                "-316397/1000000",
                "111529969/1000000000"
              ],
              [
                "-316397/1000000",
                "85342970697/500000000000"
              ]
            ],
            "raw": [
              "112913/500000",
              "2482286223/3461500000"
            ],
            "new": [
              "112913/500000",
              "717113/1000000"
            ]
          },
          {
            "factor": 146,
            "target": "v",
            "old": [
              "68463/200000",
              "683603/1000000"
            ],
            "lines": [
              [
                "13857/20000",
                "-340871819/1000000000"
              ],
              [
                "13857/20000",
                "-583286050963/1000000000000"
              ],
              [
                "440901/500000",
                "-367136147/1000000000"
              ],
              [
                "440901/500000",
                "-712454205019/1000000000000"
              ],
              [
                "13857/20000",
                "-27562369/100000000"
              ],
              [
                "13857/20000",
                "-26239528313/100000000000"
              ],
              [
                "440901/500000",
                "-150944009/500000000"
              ],
              [
                "440901/500000",
                "-195781718593/500000000000"
              ]
            ],
            "raw": [
              "150944009/440901000",
              "683603/1000000"
            ],
            "new": [
              "342353/1000000",
              "683603/1000000"
            ]
          },
          {
            "factor": 1219,
            "target": "u",
            "old": [
              "247729/1000000",
              "35857/50000"
            ],
            "lines": [
              [
                "440901/500000",
                "-2585853270363573/10000000000000000"
              ],
              [
                "440901/500000",
                "-82745197501257369/250000000000000000"
              ],
              [
                "440901/500000",
                "-15977180064457989/62500000000000000"
              ],
              [
                "440901/500000",
                "-41003793/125000000"
              ],
              [
                "440901/500000",
                "-2735105102659599/10000000000000000"
              ],
              [
                "440901/500000",
                "-95771625878202747/250000000000000000"
              ],
              [
                "440901/500000",
                "-13653396922071807/62500000000000000"
              ],
              [
                "440901/500000",
                "-2357609294062323/10000000000000000"
              ],
              [
                "440901/500000",
                "-62824478512291119/250000000000000000"
              ],
              [
                "440901/500000",
                "-19530834959816739/62500000000000000"
              ],
              [
                "440901/500000",
                "-2506861126358349/10000000000000000"
              ],
              [
                "440901/500000",
                "-75850906889236497/250000000000000000"
              ],
              [
                "440901/500000",
                "-17207051817430557/62500000000000000"
              ]
            ],
            "raw": [
              "30967035507/125000000000",
              "35857/50000"
            ],
            "new": [
              "30967/125000",
              "35857/50000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "30967/125000",
              "35857/50000"
            ],
            "lines": [
              [
                "-76231/200000",
                "5598087139/500000000000"
              ],
              [
                "-76231/200000",
                "9263944891/500000000000"
              ],
              [
                "-76231/200000",
                "179389752589/1000000000000"
              ],
              [
                "-76231/200000",
                "186721468093/1000000000000"
              ],
              [
                "-907/1000",
                "11735246329/31250000000"
              ],
              [
                "-907/1000",
                "60277382809/125000000000"
              ],
              [
                "-907/1000",
                "543721460839/1000000000000"
              ],
              [
                "-907/1000",
                "650412640783/1000000000000"
              ],
              [
                "-76231/200000",
                "-74087882861/500000000000"
              ],
              [
                "-76231/200000",
                "-102661960109/500000000000"
              ],
              [
                "-76231/200000",
                "187669501339/1000000000000"
              ],
              [
                "-76231/200000",
                "130521346843/1000000000000"
              ],
              [
                "-907/1000",
                "1688718301/7812500000"
              ],
              [
                "-907/1000",
                "32295906559/125000000000"
              ],
              [
                "-907/1000",
                "552001209589/1000000000000"
              ],
              [
                "-907/1000",
                "594212519533/1000000000000"
              ]
            ],
            "raw": [
              "30967/125000",
              "650412640783/907000000000"
            ],
            "new": [
              "30967/125000",
              "44819/62500"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "112913/500000",
              "717113/1000000"
            ],
            "lines": [
              [
                "-657647/1000000",
                "2106275473/25000000000"
              ],
              [
                "-657647/1000000",
                "23631466531/250000000000"
              ],
              [
                "-657647/1000000",
                "278426647/1000000000"
              ],
              [
                "-657647/1000000",
                "213973150947/500000000000"
              ],
              [
                "-657647/1000000",
                "1170990809/3125000000"
              ],
              [
                "-657647/1000000",
                "96247976521/250000000000"
              ],
              [
                "-657647/1000000",
                "322077871/1000000000"
              ],
              [
                "-657647/1000000",
                "235798762947/500000000000"
              ],
              [
                "-316397/1000000",
                "-3157505777/25000000000"
              ],
              [
                "-316397/1000000",
                "-25798633297/125000000000"
              ],
              [
                "-316397/1000000",
                "67875397/1000000000"
              ],
              [
                "-316397/1000000",
                "63515684697/500000000000"
              ],
              [
                "-316397/1000000",
                "2052072611/12500000000"
              ],
              [
                "-316397/1000000",
                "5254810849/62500000000"
              ],
              [
                "-316397/1000000",
                "111526621/1000000000"
              ],
              [
                "-316397/1000000",
                "85341296697/500000000000"
              ]
            ],
            "raw": [
              "112913/500000",
              "235798762947/328823500000"
            ],
            "new": [
              "112913/500000",
              "717099/1000000"
            ]
          },
          {
            "factor": 146,
            "target": "v",
            "old": [
              "342353/1000000",
              "683603/1000000"
            ],
            "lines": [
              [
                "13857/20000",
                "-170435423/500000000"
              ],
              [
                "13857/20000",
                "-291640632871/500000000000"
              ],
              [
                "440901/500000",
                "-183567587/500000000"
              ],
              [
                "440901/500000",
                "-356224709899/500000000000"
              ],
              [
                "13857/20000",
                "-137814347/500000000"
              ],
              [
                "13857/20000",
                "-131209946419/500000000000"
              ],
              [
                "440901/500000",
                "-150946511/500000000"
              ],
              [
                "440901/500000",
                "-195794023447/500000000000"
              ]
            ],
            "raw": [
              "150946511/440901000",
              "683603/1000000"
            ],
            "new": [
              "342359/1000000",
              "683603/1000000"
            ]
          },
          {
            "factor": 1219,
            "target": "u",
            "old": [
              "30967/125000",
              "44819/62500"
            ],
            "lines": [
              [
                "440901/500000",
                "-2585849257282671/10000000000000000"
              ],
              [
                "440901/500000",
                "-82744847246857563/250000000000000000"
              ],
              [
                "440901/500000",
                "-15977242546302303/62500000000000000"
              ],
              [
                "440901/500000",
                "-41003793/125000000"
              ],
              [
                "440901/500000",
                "-2735101089578697/10000000000000000"
              ],
              [
                "440901/500000",
                "-95771275623802941/250000000000000000"
              ],
              [
                "440901/500000",
                "-13653459403916121/62500000000000000"
              ],
              [
                "440901/500000",
                "-2357609294062323/10000000000000000"
              ],
              [
                "440901/500000",
                "-62824478512291119/250000000000000000"
              ],
              [
                "440901/500000",
                "-19530834959816739/62500000000000000"
              ],
              [
                "440901/500000",
                "-2506861126358349/10000000000000000"
              ],
              [
                "440901/500000",
                "-75850906889236497/250000000000000000"
              ],
              [
                "440901/500000",
                "-17207051817430557/62500000000000000"
              ]
            ],
            "raw": [
              "30967177221/125000000000",
              "44819/62500"
            ],
            "new": [
              "247737/1000000",
              "44819/62500"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "247737/1000000",
              "44819/62500"
            ],
            "lines": [
              [
                "-76231/200000",
                "5596686067/500000000000"
              ],
              [
                "-76231/200000",
                "9261976963/500000000000"
              ],
              [
                "-76231/200000",
                "179385105141/1000000000000"
              ],
              [
                "-76231/200000",
                "186715686933/1000000000000"
              ],
              [
                "-907/1000",
                "5867579381/15625000000"
              ],
              [
                "-907/1000",
                "60276890827/125000000000"
              ],
              [
                "-907/1000",
                "543716813391/1000000000000"
              ],
              [
                "-907/1000",
                "650406859623/1000000000000"
              ],
              [
                "-76231/200000",
                "-74087882861/500000000000"
              ],
              [
                "-76231/200000",
                "-102661960109/500000000000"
              ],
              [
                "-76231/200000",
                "187659930897/1000000000000"
              ],
              [
                "-76231/200000",
                "130511776401/1000000000000"
              ],
              [
                "-907/1000",
                "1688718301/7812500000"
              ],
              [
                "-907/1000",
                "32295906559/125000000000"
              ],
              [
                "-907/1000",
                "551991639147/1000000000000"
              ],
              [
                "-907/1000",
                "594202949091/1000000000000"
              ]
            ],
            "raw": [
              "247737/1000000",
              "650406859623/907000000000"
            ],
            "new": [
              "247737/1000000",
              "717097/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "112913/500000",
              "717099/1000000"
            ],
            "lines": [
              [
                "-657641/1000000",
                "16849587153/200000000000"
              ],
              [
                "-657641/1000000",
                "94521194157/1000000000000"
              ],
              [
                "-657641/1000000",
                "139211519/500000000"
              ],
              [
                "-657641/1000000",
                "213970552041/500000000000"
              ],
              [
                "-657641/1000000",
                "74941804993/200000000000"
              ],
              [
                "-657641/1000000",
                "384982283357/1000000000000"
              ],
              [
                "-657641/1000000",
                "161036759/500000000"
              ],
              [
                "-657641/1000000",
                "235795792041/500000000000"
              ],
              [
                "-316397/1000000",
                "-25259922447/200000000000"
              ],
              [
                "-316397/1000000",
                "-206388447531/1000000000000"
              ],
              [
                "-316397/1000000",
                "6787549/100000000"
              ],
              [
                "-316397/1000000",
                "63515731197/500000000000"
              ],
              [
                "-316397/1000000",
                "32832295393/200000000000"
              ],
              [
                "-316397/1000000",
                "84072641669/1000000000000"
              ],
              [
                "-316397/1000000",
                "11152597/100000000"
              ],
              [
                "-316397/1000000",
                "85340971197/500000000000"
              ]
            ],
            "raw": [
              "112913/500000",
              "235795792041/328820500000"
            ],
            "new": [
              "112913/500000",
              "89637/125000"
            ]
          },
          {
            "factor": 146,
            "target": "v",
            "old": [
              "342359/1000000",
              "683603/1000000"
            ],
            "lines": [
              [
                "13857/20000",
                "-340870707/1000000000"
              ],
              [
                "13857/20000",
                "-583280582139/1000000000000"
              ],
              [
                "440901/500000",
                "-73427007/200000000"
              ],
              [
                "440901/500000",
                "-142489747239/200000000000"
              ],
              [
                "13857/20000",
                "-275629667/1000000000"
              ],
              [
                "13857/20000",
                "-262424678059/1000000000000"
              ],
              [
                "440901/500000",
                "-60378799/200000000"
              ],
              [
                "440901/500000",
                "-78318566423/200000000000"
              ]
            ],
            "raw": [
              "60378799/176360400",
              "683603/1000000"
            ],
            "new": [
              "8559/25000",
              "683603/1000000"
            ]
          }
        ]
      }
    },
    {
      "id": 2,
      "assumptions": [
        "AGO+",
        "AGP+",
        "DGP-"
      ],
      "initial_box": {
        "low": [
          "139/1000",
          "108013/1000000",
          "13857/20000",
          "120187/1000000",
          "42297/100000",
          "617/1000",
          "118963/1000000",
          "307011/500000",
          "69759/500000",
          "112913/500000",
          "76231/200000",
          "247737/1000000",
          "8559/25000"
        ],
        "high": [
          "683603/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "26631/40000",
          "1",
          "6077/8000",
          "89637/125000",
          "907/1000",
          "717097/1000000",
          "683603/1000000"
        ]
      },
      "known": {
        "ABC": 1,
        "ABD": 1,
        "ABE": 1,
        "ABF": 1,
        "ABH": 1,
        "ACD": 1,
        "ACE": 1,
        "ACF": 1,
        "ACH": 1,
        "ADE": 1,
        "ADF": 1,
        "ADH": 1,
        "AEF": 1,
        "AEH": 1,
        "AFH": 1,
        "BCD": 1,
        "BCE": 1,
        "BCF": 1,
        "BCH": 1,
        "BDE": 1,
        "BDF": 1,
        "BDH": 1,
        "BEF": 1,
        "BEH": 1,
        "BFH": 1,
        "CDE": 1,
        "CDF": 1,
        "CDH": 1,
        "CEF": 1,
        "CEH": 1,
        "CFH": 1,
        "DEF": 1,
        "DEH": 1,
        "DFH": 1,
        "EFH": 1,
        "ABG": 1,
        "BCG": 1,
        "CDG": 1,
        "DEG": 1,
        "EFG": 1,
        "FGH": -1,
        "AGH": 1,
        "CGH": -1,
        "ABO": 1,
        "BCO": 1,
        "CDO": 1,
        "DEO": 1,
        "EFO": 1,
        "FHO": 1,
        "AHO": -1,
        "CHO": -1,
        "CEO": 1,
        "ABP": 1,
        "BCP": 1,
        "CDP": 1,
        "DEP": 1,
        "EFP": 1,
        "FHP": 1,
        "AHP": -1,
        "CHP": -1,
        "CEP": 1,
        "HOP": -1,
        "EHP": 1,
        "ACG": 1,
        "BGH": 1,
        "DGO": -1,
        "COP": 1,
        "EOP": 1,
        "FOP": 1,
        "AGO": 1,
        "AGP": 1,
        "DGP": -1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DFG": 1,
        "DGH": -1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "GHO": -1,
        "GHP": -1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "CFP": 1,
        "DFP": 1,
        "ADO": 1,
        "ADP": 1,
        "BEO": 1,
        "BDO": 1,
        "BDP": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "ABCGO"
          ],
          "target": "ACO",
          "sign": 1,
          "deps": [
            "ABC",
            "AGO",
            "ABG",
            "ABO",
            "ACG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ABCGP"
          ],
          "target": "ACP",
          "sign": 1,
          "deps": [
            "ABC",
            "AGP",
            "ABG",
            "ABP",
            "ACG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAEGH"
          ],
          "target": "CEG",
          "sign": 1,
          "deps": [
            "ACE",
            "CGH",
            "ACG",
            "CEH",
            "ACH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAFGH"
          ],
          "target": "CFG",
          "sign": 1,
          "deps": [
            "ACF",
            "CGH",
            "ACG",
            "CFH",
            "ACH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAGHO"
          ],
          "target": "CGO",
          "sign": -1,
          "deps": [
            "ACG",
            "CHO",
            "ACH",
            "ACO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAGHP"
          ],
          "target": "CGP",
          "sign": -1,
          "deps": [
            "ACG",
            "CHP",
            "ACH",
            "ACP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "FCDEG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "CDF",
            "EFG",
            "CEF",
            "CFG",
            "DEF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFH"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "CDG",
            "FGH",
            "CFG",
            "CGH",
            "DFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCEFH"
          ],
          "target": "EGH",
          "sign": -1,
          "deps": [
            "CEG",
            "FGH",
            "CFG",
            "CGH",
            "EFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HABCO"
          ],
          "target": "BHO",
          "sign": -1,
          "deps": [
            "ABH",
            "CHO",
            "ACH",
            "AHO",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HABCP"
          ],
          "target": "BHP",
          "sign": -1,
          "deps": [
            "ABH",
            "CHP",
            "ACH",
            "AHP",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HACGO"
          ],
          "target": "GHO",
          "sign": -1,
          "deps": [
            "ACH",
            "AGH",
            "CHO",
            "AHO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HACGP"
          ],
          "target": "GHP",
          "sign": -1,
          "deps": [
            "ACH",
            "AGH",
            "CHP",
            "AHP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OCDEP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDO",
            "EOP",
            "CEO",
            "COP",
            "DEO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OCEFP"
          ],
          "target": "CFO",
          "sign": 1,
          "deps": [
            "CEO",
            "FOP",
            "EOP",
            "COP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ODEFP"
          ],
          "target": "DFO",
          "sign": 1,
          "deps": [
            "DEO",
            "FOP",
            "EOP",
            "DOP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PCEFO"
          ],
          "target": "CFP",
          "sign": 1,
          "deps": [
            "CEP",
            "FOP",
            "EOP",
            "COP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PDEFO"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FOP",
            "EOP",
            "DOP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GO",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACO",
            "CDO",
            "DGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GP",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACP",
            "CDP",
            "DGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "BCE",
            "OP",
            "EBC",
            [
              "fixed",
              "BCE"
            ]
          ],
          "target": "BEO",
          "sign": 1,
          "deps": [
            "BCO",
            "CEO",
            "BCP",
            "CEP",
            "EOP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BADEO"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "ABD",
            "BEO",
            "ABE",
            "ABO",
            "BDE"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DABCP"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "ABD",
            "CDP",
            "ACD",
            "ADP",
            "BCD"
          ],
          "area_stage": null
        }
      ],
      "initial": {
        "L_COP": {
          "triangle": "COP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "COP",
            "points": []
          }
        }
      },
      "relations": {},
      "updates": [],
      "physical": {
        "132": {
          "name": "AREA_LO_COP",
          "terms": [
            [
              [
                9,
                12
              ],
              "1"
            ],
            [
              [
                2,
                12
              ],
              "-1"
            ],
            [
              [
                10,
                11
              ],
              "-1"
            ],
            [
              [
                2,
                10
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "COP",
            "side": "lo",
            "reference": "L_COP",
            "value": "93/1000"
          }
        }
      },
      "coordinate": {
        "low": [
          "139/1000",
          "108013/1000000",
          "13857/20000",
          "120187/1000000",
          "42297/100000",
          "617/1000",
          "118963/1000000",
          "307011/500000",
          "69759/500000",
          "112913/500000",
          "76231/200000",
          "247737/1000000",
          "8559/25000"
        ],
        "high": [
          "683603/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "26631/40000",
          "1/1",
          "6077/8000",
          "89637/125000",
          "907/1000",
          "89637/125000",
          "683603/1000000"
        ],
        "steps": [
          {
            "factor": 132,
            "target": "u",
            "old": [
              "247737/1000000",
              "717097/1000000"
            ],
            "lines": [
              [
                "-76231/200000",
                "1119290511/100000000000"
              ],
              [
                "-76231/200000",
                "370465959/20000000000"
              ],
              [
                "-76231/200000",
                "17938410231/100000000000"
              ],
              [
                "-76231/200000",
                "3734289903/20000000000"
              ],
              [
                "-907/1000",
                "4694057667/12500000000"
              ],
              [
                "-907/1000",
                "6027680883/12500000000"
              ],
              [
                "-907/1000",
                "424777977/781250000"
              ],
              [
                "-907/1000",
                "127032357/195312500"
              ],
              [
                "-76231/200000",
                "-74087882861/500000000000"
              ],
              [
                "-76231/200000",
                "-102661960109/500000000000"
              ],
              [
                "-76231/200000",
                "23457235011/125000000000"
              ],
              [
                "-76231/200000",
                "16313715699/125000000000"
              ],
              [
                "-907/1000",
                "1688718301/7812500000"
              ],
              [
                "-907/1000",
                "32295906559/125000000000"
              ],
              [
                "-907/1000",
                "275994794169/500000000000"
              ],
              [
                "-907/1000",
                "297100449141/500000000000"
              ]
            ],
            "raw": [
              "247737/1000000",
              "254064714/354296875"
            ],
            "new": [
              "247737/1000000",
              "89637/125000"
            ]
          }
        ]
      }
    },
    {
      "id": 3,
      "assumptions": [
        "AGO+",
        "AGP+",
        "DGP-"
      ],
      "initial_box": {
        "low": [
          "139/1000",
          "108013/1000000",
          "13857/20000",
          "120187/1000000",
          "42297/100000",
          "617/1000",
          "118963/1000000",
          "307011/500000",
          "69759/500000",
          "112913/500000",
          "76231/200000",
          "247737/1000000",
          "8559/25000"
        ],
        "high": [
          "683603/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "26631/40000",
          "1",
          "6077/8000",
          "89637/125000",
          "907/1000",
          "89637/125000",
          "683603/1000000"
        ]
      },
      "known": {
        "ABC": 1,
        "ABD": 1,
        "ABE": 1,
        "ABF": 1,
        "ABH": 1,
        "ACD": 1,
        "ACE": 1,
        "ACF": 1,
        "ACH": 1,
        "ADE": 1,
        "ADF": 1,
        "ADH": 1,
        "AEF": 1,
        "AEH": 1,
        "AFH": 1,
        "BCD": 1,
        "BCE": 1,
        "BCF": 1,
        "BCH": 1,
        "BDE": 1,
        "BDF": 1,
        "BDH": 1,
        "BEF": 1,
        "BEH": 1,
        "BFH": 1,
        "CDE": 1,
        "CDF": 1,
        "CDH": 1,
        "CEF": 1,
        "CEH": 1,
        "CFH": 1,
        "DEF": 1,
        "DEH": 1,
        "DFH": 1,
        "EFH": 1,
        "ABG": 1,
        "BCG": 1,
        "CDG": 1,
        "DEG": 1,
        "EFG": 1,
        "FGH": -1,
        "AGH": 1,
        "CGH": -1,
        "ABO": 1,
        "BCO": 1,
        "CDO": 1,
        "DEO": 1,
        "EFO": 1,
        "FHO": 1,
        "AHO": -1,
        "CHO": -1,
        "CEO": 1,
        "ABP": 1,
        "BCP": 1,
        "CDP": 1,
        "DEP": 1,
        "EFP": 1,
        "FHP": 1,
        "AHP": -1,
        "CHP": -1,
        "CEP": 1,
        "HOP": -1,
        "EHP": 1,
        "ACG": 1,
        "BGH": 1,
        "DGO": -1,
        "COP": 1,
        "EOP": 1,
        "FOP": 1,
        "AGO": 1,
        "AGP": 1,
        "DGP": -1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DFG": 1,
        "DGH": -1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "GHO": -1,
        "GHP": -1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "CFP": 1,
        "DFP": 1,
        "ADO": 1,
        "ADP": 1,
        "BEO": 1,
        "BDO": 1,
        "BDP": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "ABCGO"
          ],
          "target": "ACO",
          "sign": 1,
          "deps": [
            "ABC",
            "AGO",
            "ABG",
            "ABO",
            "ACG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ABCGP"
          ],
          "target": "ACP",
          "sign": 1,
          "deps": [
            "ABC",
            "AGP",
            "ABG",
            "ABP",
            "ACG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAEGH"
          ],
          "target": "CEG",
          "sign": 1,
          "deps": [
            "ACE",
            "CGH",
            "ACG",
            "CEH",
            "ACH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAFGH"
          ],
          "target": "CFG",
          "sign": 1,
          "deps": [
            "ACF",
            "CGH",
            "ACG",
            "CFH",
            "ACH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAGHO"
          ],
          "target": "CGO",
          "sign": -1,
          "deps": [
            "ACG",
            "CHO",
            "ACH",
            "ACO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAGHP"
          ],
          "target": "CGP",
          "sign": -1,
          "deps": [
            "ACG",
            "CHP",
            "ACH",
            "ACP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "FCDEG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "CDF",
            "EFG",
            "CEF",
            "CFG",
            "DEF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFH"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "CDG",
            "FGH",
            "CFG",
            "CGH",
            "DFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCEFH"
          ],
          "target": "EGH",
          "sign": -1,
          "deps": [
            "CEG",
            "FGH",
            "CFG",
            "CGH",
            "EFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HABCO"
          ],
          "target": "BHO",
          "sign": -1,
          "deps": [
            "ABH",
            "CHO",
            "ACH",
            "AHO",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HABCP"
          ],
          "target": "BHP",
          "sign": -1,
          "deps": [
            "ABH",
            "CHP",
            "ACH",
            "AHP",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HACGO"
          ],
          "target": "GHO",
          "sign": -1,
          "deps": [
            "ACH",
            "AGH",
            "CHO",
            "AHO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HACGP"
          ],
          "target": "GHP",
          "sign": -1,
          "deps": [
            "ACH",
            "AGH",
            "CHP",
            "AHP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OCDEP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDO",
            "EOP",
            "CEO",
            "COP",
            "DEO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OCEFP"
          ],
          "target": "CFO",
          "sign": 1,
          "deps": [
            "CEO",
            "FOP",
            "EOP",
            "COP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ODEFP"
          ],
          "target": "DFO",
          "sign": 1,
          "deps": [
            "DEO",
            "FOP",
            "EOP",
            "DOP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PCEFO"
          ],
          "target": "CFP",
          "sign": 1,
          "deps": [
            "CEP",
            "FOP",
            "EOP",
            "COP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PDEFO"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FOP",
            "EOP",
            "DOP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GO",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACO",
            "CDO",
            "DGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GP",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACP",
            "CDP",
            "DGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "BCE",
            "OP",
            "EBC",
            [
              "fixed",
              "BCE"
            ]
          ],
          "target": "BEO",
          "sign": 1,
          "deps": [
            "BCO",
            "CEO",
            "BCP",
            "CEP",
            "EOP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BADEO"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "ABD",
            "BEO",
            "ABE",
            "ABO",
            "BDE"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DABCP"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "ABD",
            "CDP",
            "ACD",
            "ADP",
            "BCD"
          ],
          "area_stage": null
        }
      ],
      "initial": {},
      "relations": {},
      "updates": [],
      "physical": {},
      "coordinate": {
        "low": [
          "139/1000",
          "108013/1000000",
          "13857/20000",
          "120187/1000000",
          "42297/100000",
          "617/1000",
          "118963/1000000",
          "307011/500000",
          "69759/500000",
          "112913/500000",
          "76231/200000",
          "247737/1000000",
          "8559/25000"
        ],
        "high": [
          "683603/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "26631/40000",
          "1/1",
          "6077/8000",
          "89637/125000",
          "907/1000",
          "89637/125000",
          "683603/1000000"
        ],
        "steps": []
      }
    },
    {
      "id": 4,
      "assumptions": [
        "AGO+",
        "AGP+",
        "DGP-",
        "AFG-"
      ],
      "initial_box": {
        "low": [
          "139/1000",
          "108013/1000000",
          "13857/20000",
          "120187/1000000",
          "42297/100000",
          "617/1000",
          "118963/1000000",
          "307011/500000",
          "69759/500000",
          "112913/500000",
          "76231/200000",
          "247737/1000000",
          "8559/25000"
        ],
        "high": [
          "683603/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "26631/40000",
          "1",
          "6077/8000",
          "89637/125000",
          "907/1000",
          "89637/125000",
          "683603/1000000"
        ]
      },
      "known": {
        "ABC": 1,
        "ABD": 1,
        "ABE": 1,
        "ABF": 1,
        "ABH": 1,
        "ACD": 1,
        "ACE": 1,
        "ACF": 1,
        "ACH": 1,
        "ADE": 1,
        "ADF": 1,
        "ADH": 1,
        "AEF": 1,
        "AEH": 1,
        "AFH": 1,
        "BCD": 1,
        "BCE": 1,
        "BCF": 1,
        "BCH": 1,
        "BDE": 1,
        "BDF": 1,
        "BDH": 1,
        "BEF": 1,
        "BEH": 1,
        "BFH": 1,
        "CDE": 1,
        "CDF": 1,
        "CDH": 1,
        "CEF": 1,
        "CEH": 1,
        "CFH": 1,
        "DEF": 1,
        "DEH": 1,
        "DFH": 1,
        "EFH": 1,
        "ABG": 1,
        "BCG": 1,
        "CDG": 1,
        "DEG": 1,
        "EFG": 1,
        "FGH": -1,
        "AGH": 1,
        "CGH": -1,
        "ABO": 1,
        "BCO": 1,
        "CDO": 1,
        "DEO": 1,
        "EFO": 1,
        "FHO": 1,
        "AHO": -1,
        "CHO": -1,
        "CEO": 1,
        "ABP": 1,
        "BCP": 1,
        "CDP": 1,
        "DEP": 1,
        "EFP": 1,
        "FHP": 1,
        "AHP": -1,
        "CHP": -1,
        "CEP": 1,
        "HOP": -1,
        "EHP": 1,
        "ACG": 1,
        "BGH": 1,
        "DGO": -1,
        "COP": 1,
        "EOP": 1,
        "FOP": 1,
        "AGO": 1,
        "AGP": 1,
        "DGP": -1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DFG": 1,
        "DGH": -1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "GHO": -1,
        "GHP": -1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "CFP": 1,
        "DFP": 1,
        "ADO": 1,
        "ADP": 1,
        "BEO": 1,
        "BDO": 1,
        "BDP": 1,
        "AFG": -1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "ABCGO"
          ],
          "target": "ACO",
          "sign": 1,
          "deps": [
            "ABC",
            "AGO",
            "ABG",
            "ABO",
            "ACG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ABCGP"
          ],
          "target": "ACP",
          "sign": 1,
          "deps": [
            "ABC",
            "AGP",
            "ABG",
            "ABP",
            "ACG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAEGH"
          ],
          "target": "CEG",
          "sign": 1,
          "deps": [
            "ACE",
            "CGH",
            "ACG",
            "CEH",
            "ACH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAFGH"
          ],
          "target": "CFG",
          "sign": 1,
          "deps": [
            "ACF",
            "CGH",
            "ACG",
            "CFH",
            "ACH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAGHO"
          ],
          "target": "CGO",
          "sign": -1,
          "deps": [
            "ACG",
            "CHO",
            "ACH",
            "ACO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAGHP"
          ],
          "target": "CGP",
          "sign": -1,
          "deps": [
            "ACG",
            "CHP",
            "ACH",
            "ACP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "FCDEG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "CDF",
            "EFG",
            "CEF",
            "CFG",
            "DEF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFH"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "CDG",
            "FGH",
            "CFG",
            "CGH",
            "DFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCEFH"
          ],
          "target": "EGH",
          "sign": -1,
          "deps": [
            "CEG",
            "FGH",
            "CFG",
            "CGH",
            "EFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HABCO"
          ],
          "target": "BHO",
          "sign": -1,
          "deps": [
            "ABH",
            "CHO",
            "ACH",
            "AHO",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HABCP"
          ],
          "target": "BHP",
          "sign": -1,
          "deps": [
            "ABH",
            "CHP",
            "ACH",
            "AHP",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HACGO"
          ],
          "target": "GHO",
          "sign": -1,
          "deps": [
            "ACH",
            "AGH",
            "CHO",
            "AHO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HACGP"
          ],
          "target": "GHP",
          "sign": -1,
          "deps": [
            "ACH",
            "AGH",
            "CHP",
            "AHP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OCDEP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDO",
            "EOP",
            "CEO",
            "COP",
            "DEO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OCEFP"
          ],
          "target": "CFO",
          "sign": 1,
          "deps": [
            "CEO",
            "FOP",
            "EOP",
            "COP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ODEFP"
          ],
          "target": "DFO",
          "sign": 1,
          "deps": [
            "DEO",
            "FOP",
            "EOP",
            "DOP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PCEFO"
          ],
          "target": "CFP",
          "sign": 1,
          "deps": [
            "CEP",
            "FOP",
            "EOP",
            "COP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PDEFO"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FOP",
            "EOP",
            "DOP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GO",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACO",
            "CDO",
            "DGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GP",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACP",
            "CDP",
            "DGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "BCE",
            "OP",
            "EBC",
            [
              "fixed",
              "BCE"
            ]
          ],
          "target": "BEO",
          "sign": 1,
          "deps": [
            "BCO",
            "CEO",
            "BCP",
            "CEP",
            "EOP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BADEO"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "ABD",
            "BEO",
            "ABE",
            "ABO",
            "BDE"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DABCP"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "ABD",
            "CDP",
            "ACD",
            "ADP",
            "BCD"
          ],
          "area_stage": null
        }
      ],
      "initial": {},
      "relations": {},
      "updates": [],
      "physical": {},
      "coordinate": {
        "low": [
          "139/1000",
          "108013/1000000",
          "13857/20000",
          "120187/1000000",
          "42297/100000",
          "617/1000",
          "118963/1000000",
          "307011/500000",
          "69759/500000",
          "112913/500000",
          "76231/200000",
          "247737/1000000",
          "8559/25000"
        ],
        "high": [
          "683603/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "26631/40000",
          "1/1",
          "6077/8000",
          "89637/125000",
          "907/1000",
          "89637/125000",
          "683603/1000000"
        ],
        "steps": []
      }
    },
    {
      "id": 5,
      "assumptions": [
        "AGO+",
        "AGP+",
        "DGP-",
        "AFG-",
        "BFG+"
      ],
      "initial_box": {
        "low": [
          "139/1000",
          "108013/1000000",
          "13857/20000",
          "120187/1000000",
          "42297/100000",
          "617/1000",
          "118963/1000000",
          "307011/500000",
          "69759/500000",
          "112913/500000",
          "76231/200000",
          "247737/1000000",
          "8559/25000"
        ],
        "high": [
          "683603/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "26631/40000",
          "1",
          "6077/8000",
          "89637/125000",
          "907/1000",
          "89637/125000",
          "683603/1000000"
        ]
      },
      "known": {
        "ABC": 1,
        "ABD": 1,
        "ABE": 1,
        "ABF": 1,
        "ABH": 1,
        "ACD": 1,
        "ACE": 1,
        "ACF": 1,
        "ACH": 1,
        "ADE": 1,
        "ADF": 1,
        "ADH": 1,
        "AEF": 1,
        "AEH": 1,
        "AFH": 1,
        "BCD": 1,
        "BCE": 1,
        "BCF": 1,
        "BCH": 1,
        "BDE": 1,
        "BDF": 1,
        "BDH": 1,
        "BEF": 1,
        "BEH": 1,
        "BFH": 1,
        "CDE": 1,
        "CDF": 1,
        "CDH": 1,
        "CEF": 1,
        "CEH": 1,
        "CFH": 1,
        "DEF": 1,
        "DEH": 1,
        "DFH": 1,
        "EFH": 1,
        "ABG": 1,
        "BCG": 1,
        "CDG": 1,
        "DEG": 1,
        "EFG": 1,
        "FGH": -1,
        "AGH": 1,
        "CGH": -1,
        "ABO": 1,
        "BCO": 1,
        "CDO": 1,
        "DEO": 1,
        "EFO": 1,
        "FHO": 1,
        "AHO": -1,
        "CHO": -1,
        "CEO": 1,
        "ABP": 1,
        "BCP": 1,
        "CDP": 1,
        "DEP": 1,
        "EFP": 1,
        "FHP": 1,
        "AHP": -1,
        "CHP": -1,
        "CEP": 1,
        "HOP": -1,
        "EHP": 1,
        "ACG": 1,
        "BGH": 1,
        "DGO": -1,
        "COP": 1,
        "EOP": 1,
        "FOP": 1,
        "AGO": 1,
        "AGP": 1,
        "DGP": -1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DFG": 1,
        "DGH": -1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "GHO": -1,
        "GHP": -1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "CFP": 1,
        "DFP": 1,
        "ADO": 1,
        "ADP": 1,
        "BEO": 1,
        "BDO": 1,
        "BDP": 1,
        "AFG": -1,
        "BFG": 1,
        "BDG": 1,
        "BEG": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "ABCGO"
          ],
          "target": "ACO",
          "sign": 1,
          "deps": [
            "ABC",
            "AGO",
            "ABG",
            "ABO",
            "ACG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ABCGP"
          ],
          "target": "ACP",
          "sign": 1,
          "deps": [
            "ABC",
            "AGP",
            "ABG",
            "ABP",
            "ACG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAEGH"
          ],
          "target": "CEG",
          "sign": 1,
          "deps": [
            "ACE",
            "CGH",
            "ACG",
            "CEH",
            "ACH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAFGH"
          ],
          "target": "CFG",
          "sign": 1,
          "deps": [
            "ACF",
            "CGH",
            "ACG",
            "CFH",
            "ACH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAGHO"
          ],
          "target": "CGO",
          "sign": -1,
          "deps": [
            "ACG",
            "CHO",
            "ACH",
            "ACO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAGHP"
          ],
          "target": "CGP",
          "sign": -1,
          "deps": [
            "ACG",
            "CHP",
            "ACH",
            "ACP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "FCDEG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "CDF",
            "EFG",
            "CEF",
            "CFG",
            "DEF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFH"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "CDG",
            "FGH",
            "CFG",
            "CGH",
            "DFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCEFH"
          ],
          "target": "EGH",
          "sign": -1,
          "deps": [
            "CEG",
            "FGH",
            "CFG",
            "CGH",
            "EFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HABCO"
          ],
          "target": "BHO",
          "sign": -1,
          "deps": [
            "ABH",
            "CHO",
            "ACH",
            "AHO",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HABCP"
          ],
          "target": "BHP",
          "sign": -1,
          "deps": [
            "ABH",
            "CHP",
            "ACH",
            "AHP",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HACGO"
          ],
          "target": "GHO",
          "sign": -1,
          "deps": [
            "ACH",
            "AGH",
            "CHO",
            "AHO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HACGP"
          ],
          "target": "GHP",
          "sign": -1,
          "deps": [
            "ACH",
            "AGH",
            "CHP",
            "AHP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OCDEP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDO",
            "EOP",
            "CEO",
            "COP",
            "DEO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OCEFP"
          ],
          "target": "CFO",
          "sign": 1,
          "deps": [
            "CEO",
            "FOP",
            "EOP",
            "COP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ODEFP"
          ],
          "target": "DFO",
          "sign": 1,
          "deps": [
            "DEO",
            "FOP",
            "EOP",
            "DOP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PCEFO"
          ],
          "target": "CFP",
          "sign": 1,
          "deps": [
            "CEP",
            "FOP",
            "EOP",
            "COP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PDEFO"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FOP",
            "EOP",
            "DOP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GO",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACO",
            "CDO",
            "DGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GP",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACP",
            "CDP",
            "DGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "BCE",
            "OP",
            "EBC",
            [
              "fixed",
              "BCE"
            ]
          ],
          "target": "BEO",
          "sign": 1,
          "deps": [
            "BCO",
            "CEO",
            "BCP",
            "CEP",
            "EOP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BADEO"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "ABD",
            "BEO",
            "ABE",
            "ABO",
            "BDE"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DABCP"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "ABD",
            "CDP",
            "ACD",
            "ADP",
            "BCD"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BADFG"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "ABD",
            "BFG",
            "ABF",
            "ABG",
            "BDF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BAEFG"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "BFG",
            "ABF",
            "ABG",
            "BEF"
          ],
          "area_stage": null
        }
      ],
      "initial": {
        "L_BFG": {
          "triangle": "BFG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BFG",
            "points": []
          }
        },
        "L_BGH": {
          "triangle": "BGH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BGH",
            "points": []
          }
        },
        "L_CGH": {
          "triangle": "CGH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GCH",
            "points": []
          }
        },
        "L_FGH": {
          "triangle": "FGH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GFH",
            "points": []
          }
        },
        "U_BFH": {
          "triangle": "BFH",
          "side": "hi",
          "value": "440901/500000",
          "witness": {
            "kind": "vertices",
            "signed": "BFH",
            "used": [
              1,
              5,
              7
            ],
            "values": [
              "210271107857/500000000000",
              "291568234679/500000000000",
              "275058303809/453500000000",
              "617/1000",
              "174397398918277/226750000000000",
              "440901/500000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "2191": {
          "row": [
            "linear",
            {
              "BCF": "-93/1000",
              "BCH": "-93/1000",
              "BCG": "440901/500000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "BFH",
            "point": "G",
            "line": "BC",
            "side": "lower",
            "outer_upper": {
              "triangle": "BFH",
              "ref": "U_BFH",
              "value": "440901/500000"
            },
            "fan_lower": [
              {
                "triangle": "FGH",
                "ref": "L_FGH",
                "value": "93/1000"
              },
              {
                "triangle": "BGH",
                "ref": "L_BGH",
                "value": "93/1000"
              },
              {
                "triangle": "BFG",
                "ref": "L_BFG",
                "value": "93/1000"
              }
            ],
            "residual": "301401/500000"
          }
        }
      },
      "updates": [],
      "physical": {
        "84": {
          "name": "AREA_LO_CGH",
          "terms": [
            [
              [
                6,
                7
              ],
              "-1"
            ],
            [
              [
                2,
                7
              ],
              "1"
            ],
            [
              [
                2,
                8
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CGH",
            "side": "lo",
            "reference": "L_CGH",
            "value": "93/1000"
          }
        },
        "1519": {
          "name": "LINEAR_2191",
          "terms": [
            [
              [
                2
              ],
              "-93/1000"
            ],
            [
              [
                1
              ],
              "93/1000"
            ],
            [
              [
                2,
                7
              ],
              "-93/1000"
            ],
            [
              [
                1,
                7
              ],
              "93/1000"
            ],
            [
              [
                2,
                8
              ],
              "440901/500000"
            ],
            [
              [
                1,
                8
              ],
              "-440901/500000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2191
          }
        }
      },
      "coordinate": {
        "low": [
          "139/1000",
          "108013/1000000",
          "13857/20000",
          "120187/1000000",
          "42297/100000",
          "617/1000",
          "118963/1000000",
          "307011/500000",
          "10639/62500",
          "112913/500000",
          "76231/200000",
          "247737/1000000",
          "8559/25000"
        ],
        "high": [
          "683603/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "638699/1000000",
          "1/1",
          "6077/8000",
          "89637/125000",
          "907/1000",
          "89637/125000",
          "683603/1000000"
        ],
        "steps": [
          {
            "factor": 1519,
            "target": "z",
            "old": [
              "69759/500000",
              "6077/8000"
            ],
            "lines": [
              [
                "257855218137/500000000000",
                "-43893199975251/500000000000000"
              ],
              [
                "823734897399/9070000000000",
                "-140219619518877/9070000000000000"
              ],
              [
                "341164343889/500000000000",
                "-58074429825147/500000000000000"
              ],
              [
                "58374060963507/226750000000000",
                "-9936678224899761/226750000000000000"
              ],
              [
                "257855218137/500000000000",
                "-54389841/500000000"
              ],
              [
                "823734897399/9070000000000",
                "-173751807/9070000000"
              ],
              [
                "341164343889/500000000000",
                "-71962377/500000000"
              ],
              [
                "58374060963507/226750000000000",
                "-12312940251/226750000000"
              ]
            ],
            "raw": [
              "25017341/146967000",
              "6077/8000"
            ],
            "new": [
              "10639/62500",
              "6077/8000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "26631/40000"
            ],
            "lines": [
              [
                "-307011/500000",
                "2144854443/10000000000"
              ],
              [
                "-307011/500000",
                "74585490999/250000000000"
              ],
              [
                "-1/1",
                "602387877/1250000000"
              ],
              [
                "-1/1",
                "19959316761/31250000000"
              ],
              [
                "-307011/500000",
                "-3877620771/20000000000"
              ],
              [
                "-307011/500000",
                "-110696508303/500000000000"
              ],
              [
                "-1/1",
                "11767011/160000000"
              ],
              [
                "-1/1",
                "475852623/4000000000"
              ]
            ],
            "raw": [
              "118963/1000000",
              "19959316761/31250000000"
            ],
            "new": [
              "118963/1000000",
              "638699/1000000"
            ]
          }
        ]
      }
    },
    {
      "id": 6,
      "assumptions": [
        "AGO+",
        "AGP+",
        "DGP-",
        "AFG-",
        "BFG+"
      ],
      "initial_box": {
        "low": [
          "139/1000",
          "108013/1000000",
          "13857/20000",
          "120187/1000000",
          "42297/100000",
          "617/1000",
          "118963/1000000",
          "307011/500000",
          "10639/62500",
          "112913/500000",
          "76231/200000",
          "247737/1000000",
          "8559/25000"
        ],
        "high": [
          "683603/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "638699/1000000",
          "1",
          "6077/8000",
          "89637/125000",
          "907/1000",
          "89637/125000",
          "683603/1000000"
        ]
      },
      "known": {
        "ABC": 1,
        "ABD": 1,
        "ABE": 1,
        "ABF": 1,
        "ABH": 1,
        "ACD": 1,
        "ACE": 1,
        "ACF": 1,
        "ACH": 1,
        "ADE": 1,
        "ADF": 1,
        "ADH": 1,
        "AEF": 1,
        "AEH": 1,
        "AFH": 1,
        "BCD": 1,
        "BCE": 1,
        "BCF": 1,
        "BCH": 1,
        "BDE": 1,
        "BDF": 1,
        "BDH": 1,
        "BEF": 1,
        "BEH": 1,
        "BFH": 1,
        "CDE": 1,
        "CDF": 1,
        "CDH": 1,
        "CEF": 1,
        "CEH": 1,
        "CFH": 1,
        "DEF": 1,
        "DEH": 1,
        "DFH": 1,
        "EFH": 1,
        "ABG": 1,
        "BCG": 1,
        "CDG": 1,
        "DEG": 1,
        "EFG": 1,
        "FGH": -1,
        "AGH": 1,
        "CGH": -1,
        "ABO": 1,
        "BCO": 1,
        "CDO": 1,
        "DEO": 1,
        "EFO": 1,
        "FHO": 1,
        "AHO": -1,
        "CHO": -1,
        "CEO": 1,
        "ABP": 1,
        "BCP": 1,
        "CDP": 1,
        "DEP": 1,
        "EFP": 1,
        "FHP": 1,
        "AHP": -1,
        "CHP": -1,
        "CEP": 1,
        "HOP": -1,
        "EHP": 1,
        "ACG": 1,
        "BGH": 1,
        "DGO": -1,
        "COP": 1,
        "EOP": 1,
        "FOP": 1,
        "AGO": 1,
        "AGP": 1,
        "DGP": -1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DFG": 1,
        "DGH": -1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "GHO": -1,
        "GHP": -1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "CFP": 1,
        "DFP": 1,
        "ADO": 1,
        "ADP": 1,
        "BEO": 1,
        "BDO": 1,
        "BDP": 1,
        "AFG": -1,
        "BFG": 1,
        "BDG": 1,
        "BEG": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "ABCGO"
          ],
          "target": "ACO",
          "sign": 1,
          "deps": [
            "ABC",
            "AGO",
            "ABG",
            "ABO",
            "ACG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ABCGP"
          ],
          "target": "ACP",
          "sign": 1,
          "deps": [
            "ABC",
            "AGP",
            "ABG",
            "ABP",
            "ACG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAEGH"
          ],
          "target": "CEG",
          "sign": 1,
          "deps": [
            "ACE",
            "CGH",
            "ACG",
            "CEH",
            "ACH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAFGH"
          ],
          "target": "CFG",
          "sign": 1,
          "deps": [
            "ACF",
            "CGH",
            "ACG",
            "CFH",
            "ACH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAGHO"
          ],
          "target": "CGO",
          "sign": -1,
          "deps": [
            "ACG",
            "CHO",
            "ACH",
            "ACO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAGHP"
          ],
          "target": "CGP",
          "sign": -1,
          "deps": [
            "ACG",
            "CHP",
            "ACH",
            "ACP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "FCDEG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "CDF",
            "EFG",
            "CEF",
            "CFG",
            "DEF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFH"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "CDG",
            "FGH",
            "CFG",
            "CGH",
            "DFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCEFH"
          ],
          "target": "EGH",
          "sign": -1,
          "deps": [
            "CEG",
            "FGH",
            "CFG",
            "CGH",
            "EFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HABCO"
          ],
          "target": "BHO",
          "sign": -1,
          "deps": [
            "ABH",
            "CHO",
            "ACH",
            "AHO",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HABCP"
          ],
          "target": "BHP",
          "sign": -1,
          "deps": [
            "ABH",
            "CHP",
            "ACH",
            "AHP",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HACGO"
          ],
          "target": "GHO",
          "sign": -1,
          "deps": [
            "ACH",
            "AGH",
            "CHO",
            "AHO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HACGP"
          ],
          "target": "GHP",
          "sign": -1,
          "deps": [
            "ACH",
            "AGH",
            "CHP",
            "AHP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OCDEP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDO",
            "EOP",
            "CEO",
            "COP",
            "DEO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OCEFP"
          ],
          "target": "CFO",
          "sign": 1,
          "deps": [
            "CEO",
            "FOP",
            "EOP",
            "COP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ODEFP"
          ],
          "target": "DFO",
          "sign": 1,
          "deps": [
            "DEO",
            "FOP",
            "EOP",
            "DOP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PCEFO"
          ],
          "target": "CFP",
          "sign": 1,
          "deps": [
            "CEP",
            "FOP",
            "EOP",
            "COP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PDEFO"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FOP",
            "EOP",
            "DOP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GO",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACO",
            "CDO",
            "DGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GP",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACP",
            "CDP",
            "DGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "BCE",
            "OP",
            "EBC",
            [
              "fixed",
              "BCE"
            ]
          ],
          "target": "BEO",
          "sign": 1,
          "deps": [
            "BCO",
            "CEO",
            "BCP",
            "CEP",
            "EOP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BADEO"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "ABD",
            "BEO",
            "ABE",
            "ABO",
            "BDE"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DABCP"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "ABD",
            "CDP",
            "ACD",
            "ADP",
            "BCD"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BADFG"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "ABD",
            "BFG",
            "ABF",
            "ABG",
            "BDF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BAEFG"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "BFG",
            "ABF",
            "ABG",
            "BEF"
          ],
          "area_stage": null
        }
      ],
      "initial": {},
      "relations": {},
      "updates": [],
      "physical": {},
      "coordinate": {
        "low": [
          "139/1000",
          "108013/1000000",
          "13857/20000",
          "120187/1000000",
          "42297/100000",
          "617/1000",
          "118963/1000000",
          "307011/500000",
          "10639/62500",
          "112913/500000",
          "76231/200000",
          "247737/1000000",
          "8559/25000"
        ],
        "high": [
          "683603/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "638699/1000000",
          "1/1",
          "6077/8000",
          "89637/125000",
          "907/1000",
          "89637/125000",
          "683603/1000000"
        ],
        "steps": []
      }
    },
    {
      "id": 7,
      "assumptions": [
        "AGO+",
        "AGP+",
        "DGP-",
        "AFG-",
        "BFG+",
        "FGP+"
      ],
      "initial_box": {
        "low": [
          "139/1000",
          "108013/1000000",
          "13857/20000",
          "120187/1000000",
          "42297/100000",
          "617/1000",
          "118963/1000000",
          "307011/500000",
          "10639/62500",
          "112913/500000",
          "76231/200000",
          "247737/1000000",
          "8559/25000"
        ],
        "high": [
          "683603/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "638699/1000000",
          "1",
          "6077/8000",
          "89637/125000",
          "907/1000",
          "89637/125000",
          "683603/1000000"
        ]
      },
      "known": {
        "ABC": 1,
        "ABD": 1,
        "ABE": 1,
        "ABF": 1,
        "ABH": 1,
        "ACD": 1,
        "ACE": 1,
        "ACF": 1,
        "ACH": 1,
        "ADE": 1,
        "ADF": 1,
        "ADH": 1,
        "AEF": 1,
        "AEH": 1,
        "AFH": 1,
        "BCD": 1,
        "BCE": 1,
        "BCF": 1,
        "BCH": 1,
        "BDE": 1,
        "BDF": 1,
        "BDH": 1,
        "BEF": 1,
        "BEH": 1,
        "BFH": 1,
        "CDE": 1,
        "CDF": 1,
        "CDH": 1,
        "CEF": 1,
        "CEH": 1,
        "CFH": 1,
        "DEF": 1,
        "DEH": 1,
        "DFH": 1,
        "EFH": 1,
        "ABG": 1,
        "BCG": 1,
        "CDG": 1,
        "DEG": 1,
        "EFG": 1,
        "FGH": -1,
        "AGH": 1,
        "CGH": -1,
        "ABO": 1,
        "BCO": 1,
        "CDO": 1,
        "DEO": 1,
        "EFO": 1,
        "FHO": 1,
        "AHO": -1,
        "CHO": -1,
        "CEO": 1,
        "ABP": 1,
        "BCP": 1,
        "CDP": 1,
        "DEP": 1,
        "EFP": 1,
        "FHP": 1,
        "AHP": -1,
        "CHP": -1,
        "CEP": 1,
        "HOP": -1,
        "EHP": 1,
        "ACG": 1,
        "BGH": 1,
        "DGO": -1,
        "COP": 1,
        "EOP": 1,
        "FOP": 1,
        "AGO": 1,
        "AGP": 1,
        "DGP": -1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DFG": 1,
        "DGH": -1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "GHO": -1,
        "GHP": -1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "CFP": 1,
        "DFP": 1,
        "ADO": 1,
        "ADP": 1,
        "BEO": 1,
        "BDO": 1,
        "BDP": 1,
        "AFG": -1,
        "BFG": 1,
        "BDG": 1,
        "BEG": 1,
        "FGP": 1,
        "AFP": -1,
        "BGP": -1,
        "AOP": -1,
        "GOP": -1,
        "AEG": -1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "ABCGO"
          ],
          "target": "ACO",
          "sign": 1,
          "deps": [
            "ABC",
            "AGO",
            "ABG",
            "ABO",
            "ACG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ABCGP"
          ],
          "target": "ACP",
          "sign": 1,
          "deps": [
            "ABC",
            "AGP",
            "ABG",
            "ABP",
            "ACG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAEGH"
          ],
          "target": "CEG",
          "sign": 1,
          "deps": [
            "ACE",
            "CGH",
            "ACG",
            "CEH",
            "ACH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAFGH"
          ],
          "target": "CFG",
          "sign": 1,
          "deps": [
            "ACF",
            "CGH",
            "ACG",
            "CFH",
            "ACH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAGHO"
          ],
          "target": "CGO",
          "sign": -1,
          "deps": [
            "ACG",
            "CHO",
            "ACH",
            "ACO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAGHP"
          ],
          "target": "CGP",
          "sign": -1,
          "deps": [
            "ACG",
            "CHP",
            "ACH",
            "ACP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "FCDEG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "CDF",
            "EFG",
            "CEF",
            "CFG",
            "DEF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFH"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "CDG",
            "FGH",
            "CFG",
            "CGH",
            "DFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCEFH"
          ],
          "target": "EGH",
          "sign": -1,
          "deps": [
            "CEG",
            "FGH",
            "CFG",
            "CGH",
            "EFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HABCO"
          ],
          "target": "BHO",
          "sign": -1,
          "deps": [
            "ABH",
            "CHO",
            "ACH",
            "AHO",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HABCP"
          ],
          "target": "BHP",
          "sign": -1,
          "deps": [
            "ABH",
            "CHP",
            "ACH",
            "AHP",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HACGO"
          ],
          "target": "GHO",
          "sign": -1,
          "deps": [
            "ACH",
            "AGH",
            "CHO",
            "AHO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HACGP"
          ],
          "target": "GHP",
          "sign": -1,
          "deps": [
            "ACH",
            "AGH",
            "CHP",
            "AHP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OCDEP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDO",
            "EOP",
            "CEO",
            "COP",
            "DEO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OCEFP"
          ],
          "target": "CFO",
          "sign": 1,
          "deps": [
            "CEO",
            "FOP",
            "EOP",
            "COP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ODEFP"
          ],
          "target": "DFO",
          "sign": 1,
          "deps": [
            "DEO",
            "FOP",
            "EOP",
            "DOP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PCEFO"
          ],
          "target": "CFP",
          "sign": 1,
          "deps": [
            "CEP",
            "FOP",
            "EOP",
            "COP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PDEFO"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FOP",
            "EOP",
            "DOP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GO",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACO",
            "CDO",
            "DGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GP",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACP",
            "CDP",
            "DGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "BCE",
            "OP",
            "EBC",
            [
              "fixed",
              "BCE"
            ]
          ],
          "target": "BEO",
          "sign": 1,
          "deps": [
            "BCO",
            "CEO",
            "BCP",
            "CEP",
            "EOP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BADEO"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "ABD",
            "BEO",
            "ABE",
            "ABO",
            "BDE"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DABCP"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "ABD",
            "CDP",
            "ACD",
            "ADP",
            "BCD"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BADFG"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "ABD",
            "BFG",
            "ABF",
            "ABG",
            "BDF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BAEFG"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "BFG",
            "ABF",
            "ABG",
            "BEF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "FACGP"
          ],
          "target": "AFP",
          "sign": -1,
          "deps": [
            "ACF",
            "FGP",
            "AFG",
            "CFP",
            "CFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GABFP"
          ],
          "target": "BGP",
          "sign": -1,
          "deps": [
            "ABG",
            "FGP",
            "AFG",
            "AGP",
            "BFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PACFO"
          ],
          "target": "AOP",
          "sign": -1,
          "deps": [
            "ACP",
            "FOP",
            "AFP",
            "COP",
            "CFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PAFGO"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "AFP",
            "AGP",
            "FOP",
            "AOP",
            "FGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "AEF",
            "GP",
            "AEF",
            [
              "HCF2-AEF-cap1"
            ]
          ],
          "target": "AEG",
          "sign": -1,
          "deps": [
            "EFG",
            "AFG",
            "EFP",
            "AFP",
            "AGP"
          ],
          "area_stage": null
        }
      ],
      "initial": {
        "L_ACF": {
          "triangle": "ACF",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACF",
            "points": [
              "G",
              "P"
            ]
          }
        },
        "L_ACG": {
          "triangle": "ACG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACG",
            "points": []
          }
        },
        "L_ACH": {
          "triangle": "ACH",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACH",
            "points": [
              "G"
            ]
          }
        },
        "L_ACO": {
          "triangle": "ACO",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACO",
            "points": [
              "G",
              "P"
            ]
          }
        },
        "L_ACP": {
          "triangle": "ACP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACP",
            "points": [
              "G"
            ]
          }
        },
        "L_AEG": {
          "triangle": "AEG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EAG",
            "points": []
          }
        },
        "L_AGP": {
          "triangle": "AGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "AGP",
            "points": []
          }
        },
        "L_BGH": {
          "triangle": "BGH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BGH",
            "points": []
          }
        },
        "L_BGP": {
          "triangle": "BGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GBP",
            "points": []
          }
        },
        "L_CDE": {
          "triangle": "CDE",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CDE",
            "points": []
          }
        },
        "L_CFH": {
          "triangle": "CFH",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "CFH",
            "points": [
              "O",
              "P"
            ]
          }
        },
        "L_CGP": {
          "triangle": "CGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GCP",
            "points": []
          }
        },
        "L_CHP": {
          "triangle": "CHP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HCP",
            "points": []
          }
        },
        "L_COP": {
          "triangle": "COP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "COP",
            "points": []
          }
        },
        "L_DGO": {
          "triangle": "DGO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GDO",
            "points": [
              "P"
            ]
          }
        },
        "L_FGP": {
          "triangle": "FGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FGP",
            "points": []
          }
        },
        "L_FHO": {
          "triangle": "FHO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FHO",
            "points": []
          }
        },
        "L_FOP": {
          "triangle": "FOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FOP",
            "points": []
          }
        },
        "L_GOP": {
          "triangle": "GOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "OGP",
            "points": []
          }
        },
        "L_HOP": {
          "triangle": "HOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "OHP",
            "points": []
          }
        },
        "U_ABO": {
          "triangle": "ABO",
          "side": "hi",
          "value": "70517117129677/113375000000000",
          "witness": {
            "kind": "vertices",
            "signed": "ABO",
            "used": [
              0,
              1,
              9,
              10
            ],
            "values": [
              "-10895627356127/453500000000000",
              "11509140403/200000000000",
              "57171899/500000000",
              "60853507627/500000000000",
              "25166446403/200000000000",
              "79011743149/453500000000",
              "178505111239/1000000000000",
              "22828791/125000000",
              "13747460563/56687500000",
              "129767910143873/453500000000000",
              "35351232754677/113375000000000",
              "57192582633/125000000000",
              "219675280649/453500000000",
              "514338757049/1000000000000",
              "62660805501/113375000000",
              "70517117129677/113375000000000"
            ],
            "cell": "CA"
          }
        },
        "U_ACF": {
          "triangle": "ACF",
          "side": "hi",
          "value": "440901/500000",
          "witness": {
            "kind": "vertices",
            "signed": "ACF",
            "used": [
              0,
              2,
              5
            ],
            "values": [
              "12819974249/20000000000",
              "13646137/20000000",
              "350391279197/500000000000",
              "89889291/125000000",
              "102752269257/125000000000",
              "422497261/500000000",
              "440901/500000"
            ],
            "cell": "CA"
          }
        },
        "U_ACO": {
          "triangle": "ACO",
          "side": "hi",
          "value": "19422507/25000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACO",
            "used": [
              0,
              2,
              9,
              10
            ],
            "values": [
              "-56161960109/500000000000",
              "-27587882861/500000000000",
              "796667623/4000000000",
              "27938715699/125000000000",
              "24492257731/100000000000",
              "1069813743/4000000000",
              "35082235011/125000000000",
              "2415280801/7812500000",
              "31320910731/100000000000",
              "43920906559/125000000000",
              "281749307/500000000",
              "78973143/125000000",
              "322494794169/500000000000",
              "343600449141/500000000000",
              "566891/800000",
              "19422507/25000000"
            ],
            "cell": "CA"
          }
        },
        "U_ACP": {
          "triangle": "ACP",
          "side": "hi",
          "value": "289954179303/500000000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACP",
            "used": [
              0,
              2,
              11,
              12
            ],
            "values": [
              "-5262200139/40000000000",
              "-67076456139/1000000000000",
              "169353756411/1000000000000",
              "175333419/1000000000",
              "94650108501/500000000000",
              "5343967443/25000000000",
              "3007179/12500000",
              "126889382169/500000000000",
              "435936873/1562500000",
              "8235272631/20000000000",
              "9540090651/20000000000",
              "61276122111/125000000000",
              "257333728803/500000000000",
              "289954179303/500000000000"
            ],
            "cell": "CA"
          }
        },
        "U_EFO": {
          "triangle": "EFO",
          "side": "hi",
          "value": "23136838411/50000000000",
          "witness": {
            "kind": "vertices",
            "signed": "EFO",
            "used": [
              4,
              5,
              9,
              10
            ],
            "values": [
              "-69185609/3125000000",
              "3288759/125000000",
              "35999091/500000000",
              "8846389931/100000000000",
              "5301635859/50000000000",
              "13415200931/100000000000",
              "16818654449/100000000000",
              "4481481003/25000000000",
              "227708707/1000000000",
              "13066906661/50000000000",
              "273396817/1000000000",
              "2434439033/6250000000",
              "45166407259/100000000000",
              "23136838411/50000000000"
            ],
            "cell": "CA"
          }
        },
        "U_FHP": {
          "triangle": "FHP",
          "side": "hi",
          "value": "7248853341/12500000000",
          "witness": {
            "kind": "vertices",
            "signed": "FHP",
            "used": [
              5,
              7,
              11,
              12
            ],
            "values": [
              "4283045853/125000000000",
              "26344777393/500000000000",
              "195216949/1000000000",
              "107713307463/500000000000",
              "29231475361/125000000000",
              "131618242893/500000000000",
              "139499753697/500000000000",
              "33517312671/100000000000",
              "10144097/25000000",
              "6943730217/15625000000",
              "129083843703/250000000000",
              "7248853341/12500000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "4": {
          "row": [
            "fan",
            "ACF",
            "ACG",
            "CFG",
            "AFG"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ACF",
            "point": "G"
          }
        },
        "8": {
          "row": [
            "fan",
            "ACO",
            "ACP",
            "COP",
            "AOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ACO",
            "point": "P"
          }
        },
        "16": {
          "row": [
            "fan",
            "BHP",
            "BGH",
            "BGP",
            "GHP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "HBP",
            "point": "G"
          }
        },
        "18": {
          "row": [
            "fan",
            "CFG",
            "CFP",
            "FGP",
            "CGP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "CFG",
            "point": "P"
          }
        },
        "71": {
          "row": [
            "plu",
            "ACP",
            "AFG",
            "ACF",
            "AGP",
            "ACG",
            "AFP"
          ],
          "witness": {
            "kind": "plu",
            "word": "ACFGP"
          }
        },
        "756": {
          "row": [
            "quad",
            "ACF",
            "AFH",
            "93/91"
          ],
          "witness": {
            "kind": "quad",
            "poly": "ACFH",
            "occupants": [
              "G",
              "O",
              "P"
            ]
          }
        },
        "1453": {
          "row": [
            "balance",
            [
              [
                1,
                "ACF",
                "GHP"
              ],
              [
                -1,
                "ACH",
                "FGP"
              ],
              [
                -1,
                "AFH",
                "CGP"
              ],
              [
                -1,
                "AGP",
                "CFH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ACF",
            "point": "H",
            "line": "GP"
          }
        },
        "2885": {
          "row": [
            "linear",
            {
              "ACG": "-93/1000",
              "AGP": "196954179303/500000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACP",
            "point": "G",
            "line": "AG",
            "side": "upper",
            "outer_upper": {
              "triangle": "ACP",
              "ref": "U_ACP",
              "value": "289954179303/500000000000"
            },
            "fan_lower": [
              {
                "triangle": "CGP",
                "ref": "L_CGP",
                "value": "93/1000"
              },
              {
                "triangle": "AGP",
                "ref": "L_AGP",
                "value": "93/1000"
              },
              {
                "triangle": "ACG",
                "ref": "L_ACG",
                "value": "93/1000"
              }
            ],
            "residual": "150454179303/500000000000"
          }
        },
        "2934": {
          "row": [
            "linear",
            {
              "AFP": "196954179303/500000000000",
              "CFP": "-93/1000",
              "FGP": "-289954179303/500000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACP",
            "point": "G",
            "line": "FP",
            "side": "lower",
            "outer_upper": {
              "triangle": "ACP",
              "ref": "U_ACP",
              "value": "289954179303/500000000000"
            },
            "fan_lower": [
              {
                "triangle": "CGP",
                "ref": "L_CGP",
                "value": "93/1000"
              },
              {
                "triangle": "AGP",
                "ref": "L_AGP",
                "value": "93/1000"
              },
              {
                "triangle": "ACG",
                "ref": "L_ACG",
                "value": "93/1000"
              }
            ],
            "residual": "150454179303/500000000000"
          }
        },
        "2946": {
          "row": [
            "linear",
            {
              "AOP": "196954179303/500000000000",
              "COP": "-93/1000",
              "GOP": "-289954179303/500000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACP",
            "point": "G",
            "line": "OP",
            "side": "lower",
            "outer_upper": {
              "triangle": "ACP",
              "ref": "U_ACP",
              "value": "289954179303/500000000000"
            },
            "fan_lower": [
              {
                "triangle": "CGP",
                "ref": "L_CGP",
                "value": "93/1000"
              },
              {
                "triangle": "AGP",
                "ref": "L_AGP",
                "value": "93/1000"
              },
              {
                "triangle": "ACG",
                "ref": "L_ACG",
                "value": "93/1000"
              }
            ],
            "residual": "150454179303/500000000000"
          }
        },
        "3894": {
          "row": [
            "linear",
            {
              "CFP": "4923853341/12500000000",
              "CHP": "-93/1000",
              "COP": "-7248853341/12500000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "FHP",
            "point": "O",
            "line": "CP",
            "side": "lower",
            "outer_upper": {
              "triangle": "FHP",
              "ref": "U_FHP",
              "value": "7248853341/12500000000"
            },
            "fan_lower": [
              {
                "triangle": "HOP",
                "ref": "L_HOP",
                "value": "93/1000"
              },
              {
                "triangle": "FOP",
                "ref": "L_FOP",
                "value": "93/1000"
              },
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              }
            ],
            "residual": "3761353341/12500000000"
          }
        },
        "3919": {
          "row": [
            "linear",
            {
              "FOP": "4923853341/12500000000",
              "HOP": "-93/1000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "FHP",
            "point": "O",
            "line": "OP",
            "side": "upper",
            "outer_upper": {
              "triangle": "FHP",
              "ref": "U_FHP",
              "value": "7248853341/12500000000"
            },
            "fan_lower": [
              {
                "triangle": "HOP",
                "ref": "L_HOP",
                "value": "93/1000"
              },
              {
                "triangle": "FOP",
                "ref": "L_FOP",
                "value": "93/1000"
              },
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              }
            ],
            "residual": "3761353341/12500000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0067",
          "relation": 756,
          "rule": "quad",
          "triangle": "AFH",
          "side": "lo",
          "value": "8761/62500",
          "sources": [
            "U_ACF"
          ]
        },
        {
          "id": "T0076",
          "relation": 1453,
          "rule": "balance_lo",
          "triangle": "GHP",
          "side": "lo",
          "value": "733/6250",
          "sources": [
            "L_ACH",
            "L_FGP",
            "T0067",
            "L_CGP",
            "L_AGP",
            "L_CFH",
            "U_ACF"
          ]
        },
        {
          "id": "T0106",
          "relation": 2946,
          "rule": "linear",
          "triangle": "AOP",
          "side": "lo",
          "value": "15887/100000",
          "sources": [
            "L_COP",
            "L_GOP"
          ]
        },
        {
          "id": "T0126",
          "relation": 3894,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "15887/100000",
          "sources": [
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0136",
          "relation": 8,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "525031/1000000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0106"
          ]
        },
        {
          "id": "T0144",
          "relation": 16,
          "rule": "sum",
          "triangle": "BHP",
          "side": "lo",
          "value": "3791/12500",
          "sources": [
            "L_BGH",
            "L_BGP",
            "T0076"
          ]
        },
        {
          "id": "T0145",
          "relation": 18,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "34487/100000",
          "sources": [
            "T0126",
            "L_FGP",
            "L_CGP"
          ]
        },
        {
          "id": "T0170",
          "relation": 2934,
          "rule": "linear",
          "triangle": "AFP",
          "side": "lo",
          "value": "87211/500000",
          "sources": [
            "T0126",
            "L_FGP"
          ]
        },
        {
          "id": "T0186",
          "relation": 71,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "153621/1000000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "T0170",
            "T0136"
          ]
        },
        {
          "id": "T0199",
          "relation": 4,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "635181/1000000",
          "sources": [
            "U_ACF",
            "L_ACG",
            "T0186"
          ]
        }
      ],
      "physical": {
        "50": {
          "name": "AREA_LO_CDE",
          "terms": [
            [
              [
                4
              ],
              "1"
            ],
            [
              [
                2,
                4
              ],
              "-1"
            ],
            [
              [
                3
              ],
              "-1"
            ],
            [
              [
                2,
                3
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CDE",
            "side": "lo",
            "reference": "L_CDE",
            "value": "93/1000"
          }
        },
        "130": {
          "name": "AREA_LO_DGO",
          "terms": [
            [
              [
                6,
                10
              ],
              "-1"
            ],
            [
              [
                3,
                6
              ],
              "1"
            ],
            [
              [
                10
              ],
              "1"
            ],
            [
              [
                8,
                9
              ],
              "1"
            ],
            [
              [
                8
              ],
              "-1"
            ],
            [
              [
                3,
                9
              ],
              "-1"
            ],
            [
              [],
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DGO",
            "side": "lo",
            "reference": "L_DGO",
            "value": "279/1000"
          }
        },
        "132": {
          "name": "AREA_LO_COP",
          "terms": [
            [
              [
                9,
                12
              ],
              "1"
            ],
            [
              [
                2,
                12
              ],
              "-1"
            ],
            [
              [
                10,
                11
              ],
              "-1"
            ],
            [
              [
                2,
                10
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "COP",
            "side": "lo",
            "reference": "L_COP",
            "value": "93/1000"
          }
        },
        "144": {
          "name": "AREA_LO_ACO",
          "terms": [
            [
              [
                2,
                10
              ],
              "1"
            ],
            [
              [
                0,
                2
              ],
              "-1"
            ],
            [
              [
                0,
                9
              ],
              "1"
            ],
            [
              [],
              "-13857/20000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACO",
            "side": "lo",
            "reference": "L_ACO",
            "value": "13857/20000"
          }
        },
        "146": {
          "name": "AREA_LO_ACP",
          "terms": [
            [
              [
                2,
                12
              ],
              "1"
            ],
            [
              [
                0,
                2
              ],
              "-1"
            ],
            [
              [
                0,
                11
              ],
              "1"
            ],
            [
              [],
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACP",
            "side": "lo",
            "reference": "L_ACP",
            "value": "279/1000"
          }
        },
        "150": {
          "name": "AREA_LO_CFG",
          "terms": [
            [
              [
                5,
                8
              ],
              "1"
            ],
            [
              [
                2,
                8
              ],
              "-1"
            ],
            [
              [
                6
              ],
              "-1"
            ],
            [
              [
                2
              ],
              "1"
            ],
            [
              [],
              "-34487/100000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFG",
            "side": "lo",
            "reference": "T0145",
            "value": "34487/100000"
          }
        },
        "164": {
          "name": "AREA_LO_BHP",
          "terms": [
            [
              [
                1,
                12
              ],
              "1"
            ],
            [
              [
                7,
                11
              ],
              "1"
            ],
            [
              [
                1,
                7
              ],
              "-1"
            ],
            [
              [],
              "-3791/12500"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BHP",
            "side": "lo",
            "reference": "T0144",
            "value": "3791/12500"
          }
        },
        "190": {
          "name": "AREA_LO_AFG",
          "terms": [
            [
              [
                5,
                8
              ],
              "-1"
            ],
            [
              [
                0,
                5
              ],
              "1"
            ],
            [
              [
                6
              ],
              "1"
            ],
            [
              [
                0,
                6
              ],
              "-1"
            ],
            [
              [],
              "-153621/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AFG",
            "side": "lo",
            "reference": "T0186",
            "value": "153621/1000000"
          }
        },
        "208": {
          "name": "AREA_LO_AEG",
          "terms": [
            [
              [
                8
              ],
              "-1"
            ],
            [
              [
                0
              ],
              "1"
            ],
            [
              [
                4,
                6
              ],
              "1"
            ],
            [
              [
                0,
                6
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AEG",
            "side": "lo",
            "reference": "L_AEG",
            "value": "93/1000"
          }
        },
        "1819": {
          "name": "LINEAR_2885",
          "terms": [
            [
              [
                2,
                8
              ],
              "-93/1000"
            ],
            [
              [
                0,
                2
              ],
              "93/1000"
            ],
            [
              [
                0,
                6
              ],
              "-243454179303/500000000000"
            ],
            [
              [
                6,
                12
              ],
              "196954179303/500000000000"
            ],
            [
              [
                8,
                11
              ],
              "-196954179303/500000000000"
            ],
            [
              [
                0,
                11
              ],
              "196954179303/500000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2885
          }
        },
        "2853": {
          "name": "LINEAR_3919",
          "terms": [
            [
              [
                9,
                12
              ],
              "6086353341/12500000000"
            ],
            [
              [
                9
              ],
              "-4923853341/12500000000"
            ],
            [
              [
                5,
                12
              ],
              "-4923853341/12500000000"
            ],
            [
              [
                10,
                11
              ],
              "-6086353341/12500000000"
            ],
            [
              [
                5,
                10
              ],
              "4923853341/12500000000"
            ],
            [
              [
                11
              ],
              "4923853341/12500000000"
            ],
            [
              [
                7,
                9
              ],
              "-93/1000"
            ],
            [
              [
                7,
                11
              ],
              "93/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3919
          }
        }
      },
      "coordinate": {
        "low": [
          "139/1000",
          "108013/1000000",
          "772711/1000000",
          "120187/1000000",
          "33083/62500",
          "617/1000",
          "118963/1000000",
          "307011/500000",
          "10639/62500",
          "112913/500000",
          "202997/250000",
          "168727/500000",
          "171239/500000"
        ],
        "high": [
          "641777/1000000",
          "535/907",
          "440901/500000",
          "497859/1000000",
          "907/1000",
          "440901/500000",
          "134233/250000",
          "1/1",
          "133513/200000",
          "357571/500000",
          "907/1000",
          "358173/500000",
          "683603/1000000"
        ],
        "steps": [
          {
            "factor": 130,
            "target": "y",
            "old": [
              "76231/200000",
              "907/1000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-423626538357/1000000000000"
              ],
              [
                "881037/1000000",
                "-475351436247/1000000000000"
              ],
              [
                "361301/1000000",
                "-14446441109/40000000000"
              ],
              [
                "361301/1000000",
                "-32263621907/200000000000"
              ],
              [
                "881037/1000000",
                "-879925468131/1000000000000"
              ],
              [
                "881037/1000000",
                "-931650366021/1000000000000"
              ],
              [
                "361301/1000000",
                "-817459957499/1000000000000"
              ],
              [
                "361301/1000000",
                "-617617039309/1000000000000"
              ],
              [
                "881037/1000000",
                "-399044861367/1000000000000"
              ],
              [
                "881037/1000000",
                "-688559177357/1000000000000"
              ],
              [
                "361301/1000000",
                "-67315870147/200000000000"
              ],
              [
                "361301/1000000",
                "-74905170129/200000000000"
              ],
              [
                "881037/1000000",
                "-565788761871/1000000000000"
              ],
              [
                "881037/1000000",
                "-855303077861/1000000000000"
              ],
              [
                "361301/1000000",
                "-503323251239/1000000000000"
              ],
              [
                "361301/1000000",
                "-541269751149/1000000000000"
              ]
            ],
            "raw": [
              "32263621907/72260200000",
              "907/1000"
            ],
            "new": [
              "111623/250000",
              "907/1000"
            ]
          },
          {
            "factor": 144,
            "target": "a",
            "old": [
              "139/1000",
              "683603/1000000"
            ],
            "lines": [
              [
                "-29189/62500",
                "-1917490089/5000000000"
              ],
              [
                "-81997/125000",
                "-37391557677/125000000000"
              ],
              [
                "12123/500000",
                "-1917490089/5000000000"
              ],
              [
                "-82353/500000",
                "-37391557677/125000000000"
              ],
              [
                "-29189/62500",
                "-1288701/20000000"
              ],
              [
                "-81997/125000",
                "53472207/500000000"
              ],
              [
                "12123/500000",
                "-1288701/20000000"
              ],
              [
                "-82353/500000",
                "53472207/500000000"
              ]
            ],
            "raw": [
              "139/1000",
              "17824069/27451000"
            ],
            "new": [
              "139/1000",
              "129861/200000"
            ]
          },
          {
            "factor": 144,
            "target": "c",
            "old": [
              "13857/20000",
              "440901/500000"
            ],
            "lines": [
              [
                "76873/250000",
                "-330730093/500000000"
              ],
              [
                "-202813/1000000",
                "-54622004907/100000000000"
              ],
              [
                "76873/250000",
                "-74146707/125000000"
              ],
              [
                "-202813/1000000",
                "-5680899543/25000000000"
              ],
              [
                "96/125",
                "-330730093/500000000"
              ],
              [
                "51539/200000",
                "-54622004907/100000000000"
              ],
              [
                "96/125",
                "-74146707/125000000"
              ],
              [
                "51539/200000",
                "-5680899543/25000000000"
              ]
            ],
            "raw": [
              "24715569/32000000",
              "440901/500000"
            ],
            "new": [
              "772361/1000000",
              "440901/500000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "111623/250000",
              "907/1000"
            ],
            "lines": [
              [
                "772361/1000000",
                "-153763673/200000000"
              ],
              [
                "772361/1000000",
                "-41908716327/40000000000"
              ],
              [
                "440901/500000",
                "-98003833/125000000"
              ],
              [
                "440901/500000",
                "-27969462417/25000000000"
              ],
              [
                "772361/1000000",
                "-140106367/200000000"
              ],
              [
                "772361/1000000",
                "-29149353633/40000000000"
              ],
              [
                "440901/500000",
                "-357872067/500000000"
              ],
              [
                "440901/500000",
                "-79979442933/100000000000"
              ]
            ],
            "raw": [
              "39763563/48989000",
              "907/1000"
            ],
            "new": [
              "811683/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 150,
            "target": "g",
            "old": [
              "118963/1000000",
              "638699/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "25065301821/62500000000"
              ],
              [
                "-1/1",
                "15370510761/31250000000"
              ],
              [
                "-1/1",
                "27882530299/62500000000"
              ],
              [
                "-1/1",
                "134233/250000"
              ],
              [
                "-1/1",
                "2475799203/8000000000"
              ],
              [
                "-1/1",
                "1343127123/4000000000"
              ],
              [
                "-1/1",
                "4085000957/8000000000"
              ]
            ],
            "raw": [
              "118963/1000000",
              "134233/250000"
            ],
            "new": [
              "118963/1000000",
              "134233/250000"
            ]
          },
          {
            "factor": 164,
            "target": "u",
            "old": [
              "247737/1000000",
              "89637/125000"
            ],
            "lines": [
              [
                "307011/500000",
                "-166311513803/500000000000"
              ],
              [
                "307011/500000",
                "-42041413/90700000"
              ],
              [
                "1/1",
                "-9357841733/25000000000"
              ],
              [
                "1/1",
                "-15672809/22675000"
              ],
              [
                "307011/500000",
                "-295764347447/1000000000000"
              ],
              [
                "307011/500000",
                "-1902793/7256000"
              ],
              [
                "1/1",
                "-337454989161/1000000000000"
              ],
              [
                "1/1",
                "-88869471/181400000"
              ]
            ],
            "raw": [
              "337454989161/1000000000000",
              "89637/125000"
            ],
            "new": [
              "168727/500000",
              "89637/125000"
            ]
          },
          {
            "factor": 190,
            "target": "z",
            "old": [
              "10639/62500",
              "6077/8000"
            ],
            "lines": [
              [
                "-617/1000",
                "34569143/1000000000"
              ],
              [
                "-617/1000",
                "57743982857/200000000000"
              ],
              [
                "-440901/500000",
                "71376621/1000000000"
              ],
              [
                "-440901/500000",
                "92131435379/200000000000"
              ],
              [
                "-617/1000",
                "98610113/250000000"
              ],
              [
                "-617/1000",
                "21764977637/50000000000"
              ],
              [
                "-440901/500000",
                "43124793/100000000"
              ],
              [
                "-440901/500000",
                "12144736307/20000000000"
              ]
            ],
            "raw": [
              "10639/62500",
              "21764977637/30850000000"
            ],
            "new": [
              "10639/62500",
              "70551/100000"
            ]
          },
          {
            "factor": 208,
            "target": "z",
            "old": [
              "10639/62500",
              "70551/100000"
            ],
            "lines": [
              [
                "-1/1",
                "7978192311/100000000000"
              ],
              [
                "-1/1",
                "105875901879/200000000000"
              ],
              [
                "-1/1",
                "1073153/7812500"
              ],
              [
                "-1/1",
                "117392234057/200000000000"
              ],
              [
                "-1/1",
                "4961814501/25000000000"
              ],
              [
                "-1/1",
                "21738924789/50000000000"
              ],
              [
                "-1/1",
                "3580967/7812500"
              ],
              [
                "-1/1",
                "34733484587/50000000000"
              ]
            ],
            "raw": [
              "10639/62500",
              "34733484587/50000000000"
            ],
            "new": [
              "10639/62500",
              "69467/100000"
            ]
          },
          {
            "factor": 1819,
            "target": "z",
            "old": [
              "10639/62500",
              "69467/100000"
            ],
            "lines": [
              [
                "-51188881061257281/250000000000000000",
                "227829615809037781113/6250000000000000000000"
              ],
              [
                "-51188881061257281/250000000000000000",
                "11138155916211960941961/100000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "236671764602787781113/6250000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "11799019389308460941961/100000000000000000000000"
              ],
              [
                "-51188881061257281/250000000000000000",
                "403319657475528814107/6250000000000000000000"
              ],
              [
                "-51188881061257281/250000000000000000",
                "1780323430968025361919/50000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "412161806269278814107/6250000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "2110755167516275361919/50000000000000000000000"
              ],
              [
                "-22143730082683011/62500000000000000",
                "178873051135231291269/3125000000000000000000"
              ],
              [
                "-22143730082683011/62500000000000000",
                "20848132807358485337847/100000000000000000000000"
              ],
              [
                "-22779855895183011/62500000000000000",
                "183294125532106291269/3125000000000000000000"
              ],
              [
                "-22779855895183011/62500000000000000",
                "21508996280454985337847/100000000000000000000000"
              ],
              [
                "-22143730082683011/62500000000000000",
                "133309035984238403883/1562500000000000000000"
              ],
              [
                "-22143730082683011/62500000000000000",
                "3317655938270643779931/25000000000000000000000"
              ],
              [
                "-22779855895183011/62500000000000000",
                "135519573182675903883/1562500000000000000000"
              ],
              [
                "-22779855895183011/62500000000000000",
                "3482871806544768779931/25000000000000000000000"
              ],
              [
                "-51188881061257281/250000000000000000",
                "26221781488967072275767/500000000000000000000000"
              ],
              [
                "-51188881061257281/250000000000000000",
                "15921547951325963624133/125000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "26929153392467072275767/500000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "16747627292696588624133/125000000000000000000000"
              ],
              [
                "-51188881061257281/250000000000000000",
                "17088090392325161783697/125000000000000000000000"
              ],
              [
                "-51188881061257281/250000000000000000",
                "26945011640469297812709/250000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "17264933368200161783697/125000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "28597170323210547812709/250000000000000000000000"
              ],
              [
                "-22143730082683011/62500000000000000",
                "36615100405881056389767/500000000000000000000000"
              ],
              [
                "-22143730082683011/62500000000000000",
                "56118038130518238237981/250000000000000000000000"
              ],
              [
                "-22779855895183011/62500000000000000",
                "37322472309381056389767/500000000000000000000000"
              ],
              [
                "-22779855895183011/62500000000000000",
                "57770196813259488237981/250000000000000000000000"
              ],
              [
                "-22143730082683011/62500000000000000",
                "19686420121553657812197/125000000000000000000000"
              ],
              [
                "-22143730082683011/62500000000000000",
                "6402494233541951100303/31250000000000000000000"
              ],
              [
                "-22779855895183011/62500000000000000",
                "19863263097428657812197/125000000000000000000000"
              ],
              [
                "-22779855895183011/62500000000000000",
                "6609014068884607350303/31250000000000000000000"
              ]
            ],
            "raw": [
              "10639/62500",
              "5696030130775053927899/8531480176876213500000"
            ],
            "new": [
              "10639/62500",
              "667649/1000000"
            ]
          },
          {
            "factor": 2853,
            "target": "x",
            "old": [
              "112913/500000",
              "89637/125000"
            ],
            "lines": [
              [
                "-88848249654381/312500000000000",
                "830586818208523541019/6250000000000000000000"
              ],
              [
                "-88848249654381/312500000000000",
                "568274663090221616181/3125000000000000000000"
              ],
              [
                "-100065735279381/312500000000000",
                "906294526090498541019/6250000000000000000000"
              ],
              [
                "-100065735279381/312500000000000",
                "606128517031209116181/3125000000000000000000"
              ],
              [
                "-88848249654381/312500000000000",
                "877490084971148391/6250000000000000000"
              ],
              [
                "-88848249654381/312500000000000",
                "31139798691422485731/156250000000000000000"
              ],
              [
                "-100065735279381/312500000000000",
                "953197792853123391/6250000000000000000"
              ],
              [
                "-100065735279381/312500000000000",
                "33032491388471860731/156250000000000000000"
              ],
              [
                "-88848249654381/312500000000000",
                "30093131366789625333/195312500000000000000"
              ],
              [
                "-88848249654381/312500000000000",
                "1268942711709187701999/6250000000000000000000"
              ],
              [
                "-100065735279381/312500000000000",
                "35120640161630250333/195312500000000000000"
              ],
              [
                "-100065735279381/312500000000000",
                "1429822993144087701999/6250000000000000000000"
              ],
              [
                "-88848249654381/312500000000000",
                "224940513857406441/1562500000000000000"
              ],
              [
                "-88848249654381/312500000000000",
                "3962074744110552507/19531250000000000000"
              ],
              [
                "-100065735279381/312500000000000",
                "265160584216131441/1562500000000000000"
              ],
              [
                "-100065735279381/312500000000000",
                "4464825623594615007/19531250000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "312235713387700305519/6250000000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "395734024830019292799/6250000000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "387943421269675305519/6250000000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "471441732711994292799/6250000000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "718277960300650311/12500000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "504776646306475489677/6250000000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "869693376064600311/12500000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "580484354188450489677/6250000000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "111157274729111193789/1562500000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "132031852589690940609/1562500000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "151377345087836193789/1562500000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "172251922948415940609/1562500000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "762821901217605057/12500000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "527048616764952862677/6250000000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "1084582464087405057/12500000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "687928898199852862677/6250000000000000000000"
              ]
            ],
            "raw": [
              "112913/500000",
              "57417307649471980203/80237664084682375000"
            ],
            "new": [
              "112913/500000",
              "715591/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "120187/1000000",
              "604217/1000000"
            ],
            "lines": [
              [
                "-227639/1000000",
                "328446783/100000000000"
              ],
              [
                "-59099/500000",
                "-2150289597/50000000000"
              ],
              [
                "-227639/1000000",
                "113468573/1000000000"
              ],
              [
                "-59099/500000",
                "7102793/500000000"
              ]
            ],
            "raw": [
              "120187/1000000",
              "113468573/227639000"
            ],
            "new": [
              "120187/1000000",
              "498459/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "42297/100000",
              "907/1000"
            ],
            "lines": [
              [
                "227639/1000000",
                "-120359248493/1000000000000"
              ],
              [
                "59099/500000",
                "-53602931513/500000000000"
              ],
              [
                "227639/1000000",
                "-206468708301/1000000000000"
              ],
              [
                "59099/500000",
                "-75958428441/500000000000"
              ]
            ],
            "raw": [
              "120359248493/227639000000",
              "907/1000"
            ],
            "new": [
              "66091/125000",
              "907/1000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "168727/500000",
              "89637/125000"
            ],
            "lines": [
              [
                "-811683/1000000",
                "346800570963/1000000000000"
              ],
              [
                "-811683/1000000",
                "199081874703/500000000000"
              ],
              [
                "-811683/1000000",
                "514476516363/1000000000000"
              ],
              [
                "-811683/1000000",
                "282919847403/500000000000"
              ],
              [
                "-907/1000",
                "1051049261/2500000000"
              ],
              [
                "-907/1000",
                "6027680883/12500000000"
              ],
              [
                "-907/1000",
                "2940478249/5000000000"
              ],
              [
                "-907/1000",
                "16247260401/25000000000"
              ],
              [
                "-811683/1000000",
                "80149663979/500000000000"
              ],
              [
                "-811683/1000000",
                "87158265619/500000000000"
              ],
              [
                "-811683/1000000",
                "495104151253/1000000000000"
              ],
              [
                "-811683/1000000",
                "509121354533/1000000000000"
              ],
              [
                "-907/1000",
                "46783692279/200000000000"
              ],
              [
                "-907/1000",
                "32295906559/125000000000"
              ],
              [
                "-907/1000",
                "56872328469/100000000000"
              ],
              [
                "-907/1000",
                "593172075767/1000000000000"
              ]
            ],
            "raw": [
              "168727/500000",
              "16247260401/22675000000"
            ],
            "new": [
              "168727/500000",
              "44783/62500"
            ]
          },
          {
            "factor": 144,
            "target": "a",
            "old": [
              "139/1000",
              "129861/200000"
            ],
            "lines": [
              [
                "-109307/200000",
                "-65937706437/1000000000000"
              ],
              [
                "-81997/125000",
                "11446846383/500000000000"
              ],
              [
                "-5677/100000",
                "-65937706437/1000000000000"
              ],
              [
                "-166211/1000000",
                "11446846383/500000000000"
              ],
              [
                "-109307/200000",
                "7681427/1000000000"
              ],
              [
                "-81997/125000",
                "53472207/500000000"
              ],
              [
                "-5677/100000",
                "7681427/1000000000"
              ],
              [
                "-166211/1000000",
                "53472207/500000000"
              ]
            ],
            "raw": [
              "139/1000",
              "53472207/83105500"
            ],
            "new": [
              "139/1000",
              "321713/500000"
            ]
          },
          {
            "factor": 144,
            "target": "c",
            "old": [
              "772361/1000000",
              "440901/500000"
            ],
            "lines": [
              [
                "672683/1000000",
                "-330730093/500000000"
              ],
              [
                "168257/1000000",
                "-136886920031/250000000000"
              ],
              [
                "672683/1000000",
                "-593382851/1000000000"
              ],
              [
                "168257/1000000",
                "-116210072617/500000000000"
              ],
              [
                "96/125",
                "-330730093/500000000"
              ],
              [
                "131787/500000",
                "-136886920031/250000000000"
              ],
              [
                "96/125",
                "-593382851/1000000000"
              ],
              [
                "131787/500000",
                "-116210072617/500000000000"
              ]
            ],
            "raw": [
              "593382851/768000000",
              "440901/500000"
            ],
            "new": [
              "772633/1000000",
              "440901/500000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "811683/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "772633/1000000",
                "-768856173/1000000000"
              ],
              [
                "772633/1000000",
                "-522339920391/500000000000"
              ],
              [
                "440901/500000",
                "-98003833/125000000"
              ],
              [
                "440901/500000",
                "-69682625861/62500000000"
              ],
              [
                "772633/1000000",
                "-350389419/500000000"
              ],
              [
                "772633/1000000",
                "-182388076473/250000000000"
              ],
              [
                "440901/500000",
                "-715953329/1000000000"
              ],
              [
                "440901/500000",
                "-399897239443/500000000000"
              ]
            ],
            "raw": [
              "715953329/881802000",
              "907/1000"
            ],
            "new": [
              "10149/12500",
              "907/1000"
            ]
          },
          {
            "factor": 146,
            "target": "v",
            "old": [
              "8559/25000",
              "683603/1000000"
            ],
            "lines": [
              [
                "772633/1000000",
                "-339489881/1000000000"
              ],
              [
                "772633/1000000",
                "-279502741627/500000000000"
              ],
              [
                "440901/500000",
                "-88666093/250000000"
              ],
              [
                "440901/500000",
                "-78655957031/125000000000"
              ],
              [
                "772633/1000000",
                "-57359719/200000000"
              ],
              [
                "772633/1000000",
                "-31509941573/100000000000"
              ],
              [
                "440901/500000",
                "-150986543/500000000"
              ],
              [
                "440901/500000",
                "-96335397181/250000000000"
              ]
            ],
            "raw": [
              "150986543/440901000",
              "683603/1000000"
            ],
            "new": [
              "342449/1000000",
              "683603/1000000"
            ]
          },
          {
            "factor": 1819,
            "target": "z",
            "old": [
              "10639/62500",
              "667649/1000000"
            ],
            "lines": [
              [
                "-51195205061257281/250000000000000000",
                "18230212629865908117261/500000000000000000000000"
              ],
              [
                "-51195205061257281/250000000000000000",
                "55269391893143540804559/500000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "18935826461365908117261/500000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "58535652937364540804559/500000000000000000000000"
              ],
              [
                "-51195205061257281/250000000000000000",
                "8069185627291760066451/125000000000000000000000"
              ],
              [
                "-51195205061257281/250000000000000000",
                "449684961366906307413/12500000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "8245589085166760066451/125000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "531341487472431307413/12500000000000000000000"
              ],
              [
                "-11065663667976249/31250000000000000",
                "28607981620415561775261/500000000000000000000000"
              ],
              [
                "-11065663667976249/31250000000000000",
                "103307711249355062060331/500000000000000000000000"
              ],
              [
                "-11382936074226249/31250000000000000",
                "29313595451915561775261/500000000000000000000000"
              ],
              [
                "-11382936074226249/31250000000000000",
                "106573972293576062060331/500000000000000000000000"
              ],
              [
                "-11065663667976249/31250000000000000",
                "10663627874929173480951/125000000000000000000000"
              ],
              [
                "-11065663667976249/31250000000000000",
                "16506429452721943388073/125000000000000000000000"
              ],
              [
                "-11382936074226249/31250000000000000",
                "10840031332804173480951/125000000000000000000000"
              ],
              [
                "-11382936074226249/31250000000000000",
                "17322994713777193388073/125000000000000000000000"
              ],
              [
                "-51195205061257281/250000000000000000",
                "26223539560967072275767/500000000000000000000000"
              ],
              [
                "-51195205061257281/250000000000000000",
                "12652543764848940992613/100000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "26929153392467072275767/500000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "13305795973693140992613/100000000000000000000000"
              ],
              [
                "-51195205061257281/250000000000000000",
                "17088529910325161783697/125000000000000000000000"
              ],
              [
                "-51195205061257281/250000000000000000",
                "844762118543904049461/7812500000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "17264933368200161783697/125000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "895797447359857174461/7812500000000000000000"
              ],
              [
                "-11065663667976249/31250000000000000",
                "36601308551516725933767/500000000000000000000000"
              ],
              [
                "-11065663667976249/31250000000000000",
                "111301038180456226218837/500000000000000000000000"
              ],
              [
                "-11382936074226249/31250000000000000",
                "37306922383016725933767/500000000000000000000000"
              ],
              [
                "-11382936074226249/31250000000000000",
                "114567299224677226218837/500000000000000000000000"
              ],
              [
                "-11065663667976249/31250000000000000",
                "19682972157962575198197/125000000000000000000000"
              ],
              [
                "-11065663667976249/31250000000000000",
                "25525773735755345105319/125000000000000000000000"
              ],
              [
                "-11382936074226249/31250000000000000",
                "19859375615837575198197/125000000000000000000000"
              ],
              [
                "-11382936074226249/31250000000000000",
                "26342338996810595105319/125000000000000000000000"
              ]
            ],
            "raw": [
              "10639/62500",
              "5696176636775053927899/8532534176876213500000"
            ],
            "new": [
              "10639/62500",
              "10431/15625"
            ]
          },
          {
            "factor": 2853,
            "target": "x",
            "old": [
              "112913/500000",
              "715591/1000000"
            ],
            "lines": [
              [
                "-3553388300727891/12500000000000000",
                "41528412429357368103/312500000000000000000"
              ],
              [
                "-3553388300727891/12500000000000000",
                "1136627241178784911071/6250000000000000000000"
              ],
              [
                "-4002087725727891/12500000000000000",
                "45313797823456118103/312500000000000000000"
              ],
              [
                "-4002087725727891/12500000000000000",
                "1212334949060759911071/6250000000000000000000"
              ],
              [
                "-3553388300727891/12500000000000000",
                "1754709786383782449/12500000000000000000"
              ],
              [
                "-3553388300727891/12500000000000000",
                "1245398734721190307791/6250000000000000000000"
              ],
              [
                "-4002087725727891/12500000000000000",
                "1906125202147732449/12500000000000000000"
              ],
              [
                "-4002087725727891/12500000000000000",
                "1321106442603165307791/6250000000000000000000"
              ],
              [
                "-3553388300727891/12500000000000000",
                "48124507680174190371/312500000000000000000"
              ],
              [
                "-3553388300727891/12500000000000000",
                "1268549146195121356431/6250000000000000000000"
              ],
              [
                "-4002087725727891/12500000000000000",
                "56162150220084190371/312500000000000000000"
              ],
              [
                "-4002087725727891/12500000000000000",
                "1429301996993321356431/6250000000000000000000"
              ],
              [
                "-3553388300727891/12500000000000000",
                "1799187083045252211/12500000000000000000"
              ],
              [
                "-3553388300727891/12500000000000000",
                "1267637383051925188791/6250000000000000000000"
              ],
              [
                "-4002087725727891/12500000000000000",
                "2120692784641652211/12500000000000000000"
              ],
              [
                "-4002087725727891/12500000000000000",
                "1428390233850125188791/6250000000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "15617616777279064653/312500000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "396005152764070092957/6250000000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "19403002171377814653/312500000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "471712860646045092957/6250000000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "718277960300650311/12500000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "504776646306475489677/6250000000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "869693376064600311/12500000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "580484354188450489677/6250000000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "22213712028095886921/312500000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "527927057780406538317/6250000000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "30251354568005886921/312500000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "688679908578606538317/6250000000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "762755256962120073/12500000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "527015294637210370677/6250000000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "1084260958558520073/12500000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "687768145435410370677/6250000000000000000000"
              ]
            ],
            "raw": [
              "112913/500000",
              "229559969526202179439/320950656338729500000"
            ],
            "new": [
              "112913/500000",
              "715251/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "120187/1000000",
              "498459/1000000"
            ],
            "lines": [
              [
                "-227367/1000000",
                "3401912397/125000000000"
              ],
              [
                "-59099/500000",
                "-1906587991/62500000000"
              ],
              [
                "-227367/1000000",
                "113221869/1000000000"
              ],
              [
                "-59099/500000",
                "7102793/500000000"
              ]
            ],
            "raw": [
              "120187/1000000",
              "37740623/75789000"
            ],
            "new": [
              "120187/1000000",
              "49797/100000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "66091/125000",
              "907/1000"
            ],
            "lines": [
              [
                "227367/1000000",
                "-120326557629/1000000000000"
              ],
              [
                "59099/500000",
                "-53602931513/500000000000"
              ],
              [
                "227367/1000000",
                "-20622194499/100000000000"
              ],
              [
                "59099/500000",
                "-7592952903/50000000000"
              ]
            ],
            "raw": [
              "40108852543/75789000000",
              "907/1000"
            ],
            "new": [
              "529217/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "168727/500000",
              "44783/62500"
            ],
            "lines": [
              [
                "-10149/12500",
                "347062675017/1000000000000"
              ],
              [
                "-10149/12500",
                "49789294327/125000000000"
              ],
              [
                "-10149/12500",
                "257332888421/500000000000"
              ],
              [
                "-10149/12500",
                "565917456441/1000000000000"
              ],
              [
                "-907/1000",
                "420524620657/1000000000000"
              ],
              [
                "-907/1000",
                "60269511097/125000000000"
              ],
              [
                "-907/1000",
                "294063861241/500000000000"
              ],
              [
                "-907/1000",
                "649759190601/1000000000000"
              ],
              [
                "-10149/12500",
                "160517279739/1000000000000"
              ],
              [
                "-10149/12500",
                "21815689789/125000000000"
              ],
              [
                "-10149/12500",
                "247544839007/500000000000"
              ],
              [
                "-10149/12500",
                "509097916587/1000000000000"
              ],
              [
                "-907/1000",
                "233979225379/1000000000000"
              ],
              [
                "-907/1000",
                "32295906559/125000000000"
              ],
              [
                "-907/1000",
                "284275811827/500000000000"
              ],
              [
                "-907/1000",
                "592939650747/1000000000000"
              ]
            ],
            "raw": [
              "168727/500000",
              "649759190601/907000000000"
            ],
            "new": [
              "168727/500000",
              "716383/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "a",
            "old": [
              "139/1000",
              "321713/500000"
            ],
            "lines": [
              [
                "-546807/1000000",
                "-819172683/12500000000"
              ],
              [
                "-81997/125000",
                "144391749/6250000000"
              ],
              [
                "-28691/500000",
                "-819172683/12500000000"
              ],
              [
                "-166551/1000000",
                "144391749/6250000000"
              ],
              [
                "-546807/1000000",
                "7928131/1000000000"
              ],
              [
                "-81997/125000",
                "53472207/500000000"
              ],
              [
                "-28691/500000",
                "7928131/1000000000"
              ],
              [
                "-166551/1000000",
                "53472207/500000000"
              ]
            ],
            "raw": [
              "139/1000",
              "17824069/27758500"
            ],
            "new": [
              "139/1000",
              "642113/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "c",
            "old": [
              "772633/1000000",
              "440901/500000"
            ],
            "lines": [
              [
                "16823/25000",
                "-330730093/500000000"
              ],
              [
                "169807/1000000",
                "-273922094831/500000000000"
              ],
              [
                "16823/25000",
                "-593430111/1000000000"
              ],
              [
                "169807/1000000",
                "-233578034637/1000000000000"
              ],
              [
                "96/125",
                "-330730093/500000000"
              ],
              [
                "264887/1000000",
                "-273922094831/500000000000"
              ],
              [
                "96/125",
                "-593430111/1000000000"
              ],
              [
                "264887/1000000",
                "-233578034637/1000000000000"
              ]
            ],
            "raw": [
              "197810037/256000000",
              "440901/500000"
            ],
            "new": [
              "154539/200000",
              "440901/500000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "10149/12500",
              "907/1000"
            ],
            "lines": [
              [
                "154539/200000",
                "-768864791/1000000000"
              ],
              [
                "154539/200000",
                "-1044001694197/1000000000000"
              ],
              [
                "440901/500000",
                "-98003833/125000000"
              ],
              [
                "440901/500000",
                "-139257589661/125000000000"
              ],
              [
                "154539/200000",
                "-175208679/250000000"
              ],
              [
                "154539/200000",
                "-182433884793/250000000000"
              ],
              [
                "440901/500000",
                "-716000589/1000000000"
              ],
              [
                "440901/500000",
                "-799794562263/1000000000000"
              ]
            ],
            "raw": [
              "79555621/97978000",
              "907/1000"
            ],
            "new": [
              "405987/500000",
              "907/1000"
            ]
          },
          {
            "factor": 146,
            "target": "v",
            "old": [
              "342449/1000000",
              "683603/1000000"
            ],
            "lines": [
              [
                "154539/200000",
                "-339498499/1000000000"
              ],
              [
                "154539/200000",
                "-558473904233/1000000000000"
              ],
              [
                "440901/500000",
                "-88666093/250000000"
              ],
              [
                "440901/500000",
                "-157133231831/250000000000"
              ],
              [
                "154539/200000",
                "-35853421/125000000"
              ],
              [
                "154539/200000",
                "-39394833407/125000000000"
              ],
              [
                "440901/500000",
                "-301993241/1000000000"
              ],
              [
                "440901/500000",
                "-385217690347/1000000000000"
              ]
            ],
            "raw": [
              "301993241/881802000",
              "683603/1000000"
            ],
            "new": [
              "42809/125000",
              "683603/1000000"
            ]
          },
          {
            "factor": 1819,
            "target": "z",
            "old": [
              "10639/62500",
              "10431/15625"
            ],
            "lines": [
              [
                "-51196646561257281/250000000000000000",
                "1112741226980386587/30517578125000000000"
              ],
              [
                "-51196646561257281/250000000000000000",
                "55175370550318496030757/500000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "9246272147141920821/244140625000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "58433115124049996030757/500000000000000000000000"
              ],
              [
                "-51196646561257281/250000000000000000",
                "2017473469949954699307/31250000000000000000000"
              ],
              [
                "-51196646561257281/250000000000000000",
                "1802887651063081925367/50000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "2061549288356204699307/31250000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "2128662108436231925367/50000000000000000000000"
              ],
              [
                "-177024943331621049/500000000000000000",
                "3575618955239056941801/62500000000000000000000"
              ],
              [
                "-177024943331621049/500000000000000000",
                "25774330840259622429447/125000000000000000000000"
              ],
              [
                "-182098418831621049/500000000000000000",
                "3663770592051556941801/62500000000000000000000"
              ],
              [
                "-182098418831621049/500000000000000000",
                "26588766983692497429447/125000000000000000000000"
              ],
              [
                "-177024943331621049/500000000000000000",
                "5331671862283134610239/62500000000000000000000"
              ],
              [
                "-177024943331621049/500000000000000000",
                "65950829321350812940701/500000000000000000000000"
              ],
              [
                "-182098418831621049/500000000000000000",
                "5419823499095634610239/62500000000000000000000"
              ],
              [
                "-182098418831621049/500000000000000000",
                "69208573895082312940701/500000000000000000000000"
              ],
              [
                "-51196646561257281/250000000000000000",
                "26223940297967072275767/500000000000000000000000"
              ],
              [
                "-51196646561257281/250000000000000000",
                "15792039646359728616279/125000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "26929153392467072275767/500000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "16606475789792603616279/125000000000000000000000"
              ],
              [
                "-51196646561257281/250000000000000000",
                "17088630094575161783697/125000000000000000000000"
              ],
              [
                "-51196646561257281/250000000000000000",
                "27051910684866095599773/250000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "17264933368200161783697/125000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "28680782971731845599773/250000000000000000000000"
              ],
              [
                "-177024943331621049/500000000000000000",
                "36597739677032873968767/500000000000000000000000"
              ],
              [
                "-177024943331621049/500000000000000000",
                "111090111396158908152147/500000000000000000000000"
              ],
              [
                "-182098418831621049/500000000000000000",
                "37302952771532873968767/500000000000000000000000"
              ],
              [
                "-182098418831621049/500000000000000000",
                "114347855969890408152147/500000000000000000000000"
              ],
              [
                "-177024943331621049/500000000000000000",
                "19682079939341612206947/125000000000000000000000"
              ],
              [
                "-177024943331621049/500000000000000000",
                "102025774180452184886577/500000000000000000000000"
              ],
              [
                "-182098418831621049/500000000000000000",
                "19858383212966612206947/125000000000000000000000"
              ],
              [
                "-182098418831621049/500000000000000000",
                "105283518754183684886577/500000000000000000000000"
              ]
            ],
            "raw": [
              "10639/62500",
              "5696210031525053927899/8532774426876213500000"
            ],
            "new": [
              "10639/62500",
              "667569/1000000"
            ]
          },
          {
            "factor": 2853,
            "target": "x",
            "old": [
              "112913/500000",
              "715251/1000000"
            ],
            "lines": [
              [
                "-444156039325131/1562500000000000",
                "415279941761502501291/3125000000000000000000"
              ],
              [
                "-444156039325131/1562500000000000",
                "284159771432733701391/1562500000000000000000"
              ],
              [
                "-500243467450131/1562500000000000",
                "453133795702490001291/3125000000000000000000"
              ],
              [
                "-500243467450131/1562500000000000",
                "303086698403227451391/1562500000000000000000"
              ],
              [
                "-444156039325131/1562500000000000",
                "877319955990510159/6250000000000000000"
              ],
              [
                "-444156039325131/1562500000000000",
                "155668600411045825281/781250000000000000000"
              ],
              [
                "-500243467450131/1562500000000000",
                "953027663872485159/6250000000000000000"
              ],
              [
                "-500243467450131/1562500000000000",
                "165132063896292700281/781250000000000000000"
              ],
              [
                "-444156039325131/1562500000000000",
                "962369056964567641839/6250000000000000000000"
              ],
              [
                "-444156039325131/1562500000000000",
                "1268448259172497444821/6250000000000000000000"
              ],
              [
                "-500243467450131/1562500000000000",
                "1123089377054455141839/6250000000000000000000"
              ],
              [
                "-500243467450131/1562500000000000",
                "1429168579262384944821/6250000000000000000000"
              ],
              [
                "-444156039325131/1562500000000000",
                "359820039116862339/2500000000000000000"
              ],
              [
                "-444156039325131/1562500000000000",
                "316894736272503072687/1562500000000000000000"
              ],
              [
                "-500243467450131/1562500000000000",
                "424108167152817339/2500000000000000000"
              ],
              [
                "-500243467450131/1562500000000000",
                "357074816294974947687/1562500000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "156189453841409999541/3125000000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "396066928749043692993/6250000000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "194043307782397499541/3125000000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "471774636631018692993/6250000000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "718277960300650311/12500000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "504776646306475489677/6250000000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "869693376064600311/12500000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "580484354188450489677/6250000000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "444188081124382638339/6250000000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "2111504408762425329/25000000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "604908401214270138339/6250000000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "2754385689121975329/25000000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "95342280487992711/1562500000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "527006788108121178177/6250000000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "67761180255232293/781250000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "687727108198008678177/6250000000000000000000"
              ]
            ],
            "raw": [
              "112913/500000",
              "22393379586357523/31312259154998000"
            ],
            "new": [
              "112913/500000",
              "178791/250000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "120187/1000000",
              "49797/100000"
            ],
            "lines": [
              [
                "-45461/200000",
                "5458734037/200000000000"
              ],
              [
                "-59099/500000",
                "-15223804517/500000000000"
              ],
              [
                "-45461/200000",
                "22633127/200000000"
              ],
              [
                "-59099/500000",
                "7102793/500000000"
              ]
            ],
            "raw": [
              "120187/1000000",
              "22633127/45461000"
            ],
            "new": [
              "120187/1000000",
              "497859/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "529217/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "45461/200000",
                "-24063821207/200000000000"
              ],
              [
                "59099/500000",
                "-53602931513/500000000000"
              ],
              [
                "45461/200000",
                "-41233167999/200000000000"
              ],
              [
                "59099/500000",
                "-75922969041/500000000000"
              ]
            ],
            "raw": [
              "24063821207/45461000000",
              "907/1000"
            ],
            "new": [
              "33083/62500",
              "907/1000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "168727/500000",
              "716383/1000000"
            ],
            "lines": [
              [
                "-405987/500000",
                "173560464881/500000000000"
              ],
              [
                "-405987/500000",
                "99586721119/250000000000"
              ],
              [
                "-405987/500000",
                "257352746649/500000000000"
              ],
              [
                "-405987/500000",
                "141482862003/250000000000"
              ],
              [
                "-907/1000",
                "13142095151/31250000000"
              ],
              [
                "-907/1000",
                "30133812583/62500000000"
              ],
              [
                "-907/1000",
                "36758225523/62500000000"
              ],
              [
                "-907/1000",
                "10151961951/15625000000"
              ],
              [
                "-405987/500000",
                "160566960923/1000000000000"
              ],
              [
                "-405987/500000",
                "8728656781/50000000000"
              ],
              [
                "-405987/500000",
                "495079885737/1000000000000"
              ],
              [
                "-405987/500000",
                "254543030217/500000000000"
              ],
              [
                "-907/1000",
                "233993075993/1000000000000"
              ],
              [
                "-907/1000",
                "32295906559/125000000000"
              ],
              [
                "-907/1000",
                "568506000807/1000000000000"
              ],
              [
                "-907/1000",
                "296440088643/500000000000"
              ]
            ],
            "raw": [
              "168727/500000",
              "10151961951/14171875000"
            ],
            "new": [
              "168727/500000",
              "358173/500000"
            ]
          },
          {
            "factor": 144,
            "target": "a",
            "old": [
              "139/1000",
              "642113/1000000"
            ],
            "lines": [
              [
                "-546869/1000000",
                "-6544175007/100000000000"
              ],
              [
                "-81997/125000",
                "5787574287/250000000000"
              ],
              [
                "-57531/1000000",
                "-6544175007/100000000000"
              ],
              [
                "-83319/500000",
                "5787574287/250000000000"
              ],
              [
                "-546869/1000000",
                "1596873/200000000"
              ],
              [
                "-81997/125000",
                "53472207/500000000"
              ],
              [
                "-57531/1000000",
                "1596873/200000000"
              ],
              [
                "-83319/500000",
                "53472207/500000000"
              ]
            ],
            "raw": [
              "139/1000",
              "17824069/27773000"
            ],
            "new": [
              "139/1000",
              "641777/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "c",
            "old": [
              "154539/200000",
              "440901/500000"
            ],
            "lines": [
              [
                "336487/500000",
                "-330730093/500000000"
              ],
              [
                "170197/1000000",
                "-273960033599/500000000000"
              ],
              [
                "336487/500000",
                "-148360551/250000000"
              ],
              [
                "170197/1000000",
                "-58468548393/250000000000"
              ],
              [
                "96/125",
                "-330730093/500000000"
              ],
              [
                "265223/1000000",
                "-273960033599/500000000000"
              ],
              [
                "96/125",
                "-148360551/250000000"
              ],
              [
                "265223/1000000",
                "-58468548393/250000000000"
              ]
            ],
            "raw": [
              "49453517/64000000",
              "440901/500000"
            ],
            "new": [
              "772711/1000000",
              "440901/500000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "405987/500000",
              "907/1000"
            ],
            "lines": [
              [
                "772711/1000000",
                "-153773403/200000000"
              ],
              [
                "772711/1000000",
                "-208765642929/200000000000"
              ],
              [
                "440901/500000",
                "-98003833/125000000"
              ],
              [
                "440901/500000",
                "-139230038669/125000000000"
              ],
              [
                "772711/1000000",
                "-700849033/1000000000"
              ],
              [
                "772711/1000000",
                "-729782341019/1000000000000"
              ],
              [
                "440901/500000",
                "-358006341/500000000"
              ],
              [
                "440901/500000",
                "-399897217863/500000000000"
              ]
            ],
            "raw": [
              "119335447/146967000",
              "907/1000"
            ],
            "new": [
              "202997/250000",
              "907/1000"
            ]
          },
          {
            "factor": 146,
            "target": "v",
            "old": [
              "42809/125000",
              "683603/1000000"
            ],
            "lines": [
              [
                "772711/1000000",
                "-339500723/1000000000"
              ],
              [
                "772711/1000000",
                "-558337931689/1000000000000"
              ],
              [
                "440901/500000",
                "-88666093/250000000"
              ],
              [
                "440901/500000",
                "-157087506599/250000000000"
              ],
              [
                "772711/1000000",
                "-57366947/200000000"
              ],
              [
                "772711/1000000",
                "-63034752121/200000000000"
              ],
              [
                "440901/500000",
                "-18874899/62500000"
              ],
              [
                "440901/500000",
                "-24074115957/62500000000"
              ]
            ],
            "raw": [
              "2097211/6123625",
              "683603/1000000"
            ],
            "new": [
              "171239/500000",
              "683603/1000000"
            ]
          },
          {
            "factor": 1819,
            "target": "z",
            "old": [
              "10639/62500",
              "667569/1000000"
            ],
            "lines": [
              [
                "-51197018561257281/250000000000000000",
                "9115698130203424189071/250000000000000000000000"
              ],
              [
                "-51197018561257281/250000000000000000",
                "55151315712760419731763/500000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "9468252969453424189071/250000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "58406878116635919731763/500000000000000000000000"
              ],
              [
                "-51197018561257281/250000000000000000",
                "4035039180150960537411/62500000000000000000000"
              ],
              [
                "-51197018561257281/250000000000000000",
                "1803950571427697365227/50000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "4123177889963460537411/62500000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "2129506811815247365227/50000000000000000000000"
              ],
              [
                "-88509200013493419/250000000000000000",
                "14302091352064247371071/250000000000000000000000"
              ],
              [
                "-88509200013493419/250000000000000000",
                "20608703092900784721243/100000000000000000000000"
              ],
              [
                "-91045565763493419/250000000000000000",
                "14654646191314247371071/250000000000000000000000"
              ],
              [
                "-91045565763493419/250000000000000000",
                "21259815573675884721243/100000000000000000000000"
              ],
              [
                "-88509200013493419/250000000000000000",
                "5331637485616166332911/62500000000000000000000"
              ],
              [
                "-88509200013493419/250000000000000000",
                "32965852733010238763361/250000000000000000000000"
              ],
              [
                "-91045565763493419/250000000000000000",
                "5419776195428666332911/62500000000000000000000"
              ],
              [
                "-91045565763493419/250000000000000000",
                "34593633934947988763361/250000000000000000000000"
              ],
              [
                "-51197018561257281/250000000000000000",
                "26224043713967072275767/500000000000000000000000"
              ],
              [
                "-51197018561257281/250000000000000000",
                "15785990791580160907347/125000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "26929153392467072275767/500000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "16599881392549035907347/125000000000000000000000"
              ],
              [
                "-51197018561257281/250000000000000000",
                "17088655948575161783697/125000000000000000000000"
              ],
              [
                "-51197018561257281/250000000000000000",
                "5411381606736993648777/50000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "17264933368200161783697/125000000000000000000000"
              ],
              [
                "-53733384311257281/250000000000000000",
                "5736937847124543648777/50000000000000000000000"
              ],
              [
                "-88509200013493419/250000000000000000",
                "36596830157688718639767/500000000000000000000000"
              ],
              [
                "-88509200013493419/250000000000000000",
                "693976018237900921899/3125000000000000000000"
              ],
              [
                "-91045565763493419/250000000000000000",
                "37301939836188718639767/500000000000000000000000"
              ],
              [
                "-91045565763493419/250000000000000000",
                "714323283262122796899/3125000000000000000000"
              ],
              [
                "-88509200013493419/250000000000000000",
                "19681852559505573374697/125000000000000000000000"
              ],
              [
                "-88509200013493419/250000000000000000",
                "51003007909556720181111/250000000000000000000000"
              ],
              [
                "-91045565763493419/250000000000000000",
                "19858129979130573374697/125000000000000000000000"
              ],
              [
                "-91045565763493419/250000000000000000",
                "52630789111494470181111/250000000000000000000000"
              ]
            ],
            "raw": [
              "10639/62500",
              "5696218649525053927899/8532836426876213500000"
            ],
            "new": [
              "10639/62500",
              "133513/200000"
            ]
          },
          {
            "factor": 2853,
            "target": "x",
            "old": [
              "112913/500000",
              "178791/250000"
            ],
            "lines": [
              [
                "-1776605898240501/6250000000000000",
                "207639414635772063471/1562500000000000000000"
              ],
              [
                "-1776605898240501/6250000000000000",
                "568321038067933835397/3125000000000000000000"
              ],
              [
                "-2000955610740501/6250000000000000",
                "226566341606265813471/1562500000000000000000"
              ],
              [
                "-2000955610740501/6250000000000000",
                "606174892008921335397/3125000000000000000000"
              ],
              [
                "-1776605898240501/6250000000000000",
                "27415963810561749/195312500000000000"
              ],
              [
                "-1776605898240501/6250000000000000",
                "622667888848597600401/3125000000000000000000"
              ],
              [
                "-2000955610740501/6250000000000000",
                "119127318727493871/781250000000000000"
              ],
              [
                "-2000955610740501/6250000000000000",
                "660521742789585100401/3125000000000000000000"
              ],
              [
                "-1776605898240501/6250000000000000",
                "240584454791356722729/1562500000000000000000"
              ],
              [
                "-1776605898240501/6250000000000000",
                "634211118379103153913/3125000000000000000000"
              ],
              [
                "-2000955610740501/6250000000000000",
                "280762459578987972729/1562500000000000000000"
              ],
              [
                "-2000955610740501/6250000000000000",
                "714567127954365653913/3125000000000000000000"
              ],
              [
                "-1776605898240501/6250000000000000",
                "449769406554030483/3125000000000000000"
              ],
              [
                "-1776605898240501/6250000000000000",
                "633781874433640099401/3125000000000000000000"
              ],
              [
                "-2000955610740501/6250000000000000",
                "530125416129292983/3125000000000000000"
              ],
              [
                "-2000955610740501/6250000000000000",
                "714137884008902599401/3125000000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "39048224594429680173/781250000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "396082944745147959669/6250000000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "48511688079676555173/781250000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "471790652627122959669/6250000000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "718277960300650311/12500000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "504776646306475489677/6250000000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "869693376064600311/12500000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "580484354188450489677/6250000000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "27760372336111004901/390625000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "527863105367486596701/6250000000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "37804873533018817401/390625000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "688575124518011596701/6250000000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "762733902640820307/12500000000000000000"
              ],
              [
                "-1477004513032377/12500000000000000",
                "527004617476560487677/6250000000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "1084157940941870307/12500000000000000000"
              ],
              [
                "-1925703938032377/12500000000000000",
                "687716636627085487677/6250000000000000000000"
              ]
            ],
            "raw": [
              "112913/500000",
              "229525041506003865567/320950656338729500000"
            ],
            "new": [
              "112913/500000",
              "357571/500000"
            ]
          }
        ]
      }
    },
    {
      "id": 8,
      "assumptions": [
        "AGO+",
        "AGP+",
        "DGP-",
        "AFG-",
        "BFG+",
        "FGP+"
      ],
      "initial_box": {
        "low": [
          "139/1000",
          "108013/1000000",
          "772711/1000000",
          "120187/1000000",
          "33083/62500",
          "617/1000",
          "118963/1000000",
          "307011/500000",
          "10639/62500",
          "112913/500000",
          "202997/250000",
          "168727/500000",
          "171239/500000"
        ],
        "high": [
          "641777/1000000",
          "535/907",
          "440901/500000",
          "497859/1000000",
          "907/1000",
          "440901/500000",
          "134233/250000",
          "1",
          "133513/200000",
          "357571/500000",
          "907/1000",
          "358173/500000",
          "683603/1000000"
        ]
      },
      "known": {
        "ABC": 1,
        "ABD": 1,
        "ABE": 1,
        "ABF": 1,
        "ABH": 1,
        "ACD": 1,
        "ACE": 1,
        "ACF": 1,
        "ACH": 1,
        "ADE": 1,
        "ADF": 1,
        "ADH": 1,
        "AEF": 1,
        "AEH": 1,
        "AFH": 1,
        "BCD": 1,
        "BCE": 1,
        "BCF": 1,
        "BCH": 1,
        "BDE": 1,
        "BDF": 1,
        "BDH": 1,
        "BEF": 1,
        "BEH": 1,
        "BFH": 1,
        "CDE": 1,
        "CDF": 1,
        "CDH": 1,
        "CEF": 1,
        "CEH": 1,
        "CFH": 1,
        "DEF": 1,
        "DEH": 1,
        "DFH": 1,
        "EFH": 1,
        "ABG": 1,
        "BCG": 1,
        "CDG": 1,
        "DEG": 1,
        "EFG": 1,
        "FGH": -1,
        "AGH": 1,
        "CGH": -1,
        "ABO": 1,
        "BCO": 1,
        "CDO": 1,
        "DEO": 1,
        "EFO": 1,
        "FHO": 1,
        "AHO": -1,
        "CHO": -1,
        "CEO": 1,
        "ABP": 1,
        "BCP": 1,
        "CDP": 1,
        "DEP": 1,
        "EFP": 1,
        "FHP": 1,
        "AHP": -1,
        "CHP": -1,
        "CEP": 1,
        "HOP": -1,
        "EHP": 1,
        "ACG": 1,
        "BGH": 1,
        "DGO": -1,
        "COP": 1,
        "EOP": 1,
        "FOP": 1,
        "AGO": 1,
        "AGP": 1,
        "DGP": -1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DFG": 1,
        "DGH": -1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "GHO": -1,
        "GHP": -1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "CFP": 1,
        "DFP": 1,
        "ADO": 1,
        "ADP": 1,
        "BEO": 1,
        "BDO": 1,
        "BDP": 1,
        "AFG": -1,
        "BFG": 1,
        "BDG": 1,
        "BEG": 1,
        "FGP": 1,
        "AFP": -1,
        "BGP": -1,
        "AOP": -1,
        "GOP": -1,
        "AEG": -1,
        "BOP": -1,
        "FGO": -1,
        "EGO": -1,
        "BFO": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "ABCGO"
          ],
          "target": "ACO",
          "sign": 1,
          "deps": [
            "ABC",
            "AGO",
            "ABG",
            "ABO",
            "ACG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ABCGP"
          ],
          "target": "ACP",
          "sign": 1,
          "deps": [
            "ABC",
            "AGP",
            "ABG",
            "ABP",
            "ACG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAEGH"
          ],
          "target": "CEG",
          "sign": 1,
          "deps": [
            "ACE",
            "CGH",
            "ACG",
            "CEH",
            "ACH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAFGH"
          ],
          "target": "CFG",
          "sign": 1,
          "deps": [
            "ACF",
            "CGH",
            "ACG",
            "CFH",
            "ACH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAGHO"
          ],
          "target": "CGO",
          "sign": -1,
          "deps": [
            "ACG",
            "CHO",
            "ACH",
            "ACO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAGHP"
          ],
          "target": "CGP",
          "sign": -1,
          "deps": [
            "ACG",
            "CHP",
            "ACH",
            "ACP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "FCDEG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "CDF",
            "EFG",
            "CEF",
            "CFG",
            "DEF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFH"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "CDG",
            "FGH",
            "CFG",
            "CGH",
            "DFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCEFH"
          ],
          "target": "EGH",
          "sign": -1,
          "deps": [
            "CEG",
            "FGH",
            "CFG",
            "CGH",
            "EFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HABCO"
          ],
          "target": "BHO",
          "sign": -1,
          "deps": [
            "ABH",
            "CHO",
            "ACH",
            "AHO",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HABCP"
          ],
          "target": "BHP",
          "sign": -1,
          "deps": [
            "ABH",
            "CHP",
            "ACH",
            "AHP",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HACGO"
          ],
          "target": "GHO",
          "sign": -1,
          "deps": [
            "ACH",
            "AGH",
            "CHO",
            "AHO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HACGP"
          ],
          "target": "GHP",
          "sign": -1,
          "deps": [
            "ACH",
            "AGH",
            "CHP",
            "AHP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OCDEP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDO",
            "EOP",
            "CEO",
            "COP",
            "DEO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OCEFP"
          ],
          "target": "CFO",
          "sign": 1,
          "deps": [
            "CEO",
            "FOP",
            "EOP",
            "COP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ODEFP"
          ],
          "target": "DFO",
          "sign": 1,
          "deps": [
            "DEO",
            "FOP",
            "EOP",
            "DOP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PCEFO"
          ],
          "target": "CFP",
          "sign": 1,
          "deps": [
            "CEP",
            "FOP",
            "EOP",
            "COP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PDEFO"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FOP",
            "EOP",
            "DOP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GO",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACO",
            "CDO",
            "DGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GP",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACP",
            "CDP",
            "DGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "BCE",
            "OP",
            "EBC",
            [
              "fixed",
              "BCE"
            ]
          ],
          "target": "BEO",
          "sign": 1,
          "deps": [
            "BCO",
            "CEO",
            "BCP",
            "CEP",
            "EOP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BADEO"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "ABD",
            "BEO",
            "ABE",
            "ABO",
            "BDE"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DABCP"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "ABD",
            "CDP",
            "ACD",
            "ADP",
            "BCD"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BADFG"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "ABD",
            "BFG",
            "ABF",
            "ABG",
            "BDF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BAEFG"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "BFG",
            "ABF",
            "ABG",
            "BEF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "FACGP"
          ],
          "target": "AFP",
          "sign": -1,
          "deps": [
            "ACF",
            "FGP",
            "AFG",
            "CFP",
            "CFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GABFP"
          ],
          "target": "BGP",
          "sign": -1,
          "deps": [
            "ABG",
            "FGP",
            "AFG",
            "AGP",
            "BFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PACFO"
          ],
          "target": "AOP",
          "sign": -1,
          "deps": [
            "ACP",
            "FOP",
            "AFP",
            "COP",
            "CFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PAFGO"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "AFP",
            "AGP",
            "FOP",
            "AOP",
            "FGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "AEF",
            "GP",
            "AEF",
            [
              "HCF2-AEF-cap1"
            ]
          ],
          "target": "AEG",
          "sign": -1,
          "deps": [
            "EFG",
            "AFG",
            "EFP",
            "AFP",
            "AGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ABO",
            "GP",
            "BOA",
            [
              "area",
              "ABO",
              "U_ABO",
              "70517117129677/113375000000000"
            ]
          ],
          "target": "BOP",
          "sign": -1,
          "deps": [
            "AGO",
            "ABG",
            "AOP",
            "ABP",
            "BGP"
          ],
          "area_stage": 7
        },
        {
          "rule": [
            "cap",
            "CFG",
            [
              "P"
            ],
            "O",
            [
              "area",
              "CFG",
              "T0199",
              "635181/1000000"
            ]
          ],
          "target": "FGO",
          "sign": -1,
          "deps": [
            "CFO",
            "CGO"
          ],
          "area_stage": 7
        },
        {
          "rule": [
            "ray",
            "EFO",
            "GP",
            "OEF",
            [
              "area",
              "EFO",
              "U_EFO",
              "23136838411/50000000000"
            ]
          ],
          "target": "EGO",
          "sign": -1,
          "deps": [
            "EFG",
            "FGO",
            "EFP",
            "FOP",
            "GOP"
          ],
          "area_stage": 7
        },
        {
          "rule": [
            "plu",
            "FBCGO"
          ],
          "target": "BFO",
          "sign": 1,
          "deps": [
            "BCF",
            "FGO",
            "BFG",
            "CFO",
            "CFG"
          ],
          "area_stage": null
        }
      ],
      "initial": {
        "L_ABG": {
          "triangle": "ABG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ABG",
            "points": []
          }
        },
        "L_ABP": {
          "triangle": "ABP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ABP",
            "points": [
              "G"
            ]
          }
        },
        "L_ACF": {
          "triangle": "ACF",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACF",
            "points": [
              "G",
              "P"
            ]
          }
        },
        "L_ACG": {
          "triangle": "ACG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACG",
            "points": []
          }
        },
        "L_ACH": {
          "triangle": "ACH",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACH",
            "points": [
              "G"
            ]
          }
        },
        "L_ACO": {
          "triangle": "ACO",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACO",
            "points": [
              "G",
              "P"
            ]
          }
        },
        "L_ACP": {
          "triangle": "ACP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACP",
            "points": [
              "G"
            ]
          }
        },
        "L_AEG": {
          "triangle": "AEG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EAG",
            "points": []
          }
        },
        "L_AGP": {
          "triangle": "AGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "AGP",
            "points": []
          }
        },
        "L_AOP": {
          "triangle": "AOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "OAP",
            "points": []
          }
        },
        "L_BCP": {
          "triangle": "BCP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BCP",
            "points": []
          }
        },
        "L_BEG": {
          "triangle": "BEG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BEG",
            "points": []
          }
        },
        "L_BFG": {
          "triangle": "BFG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BFG",
            "points": []
          }
        },
        "L_BFH": {
          "triangle": "BFH",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "BFH",
            "points": [
              "G",
              "O"
            ]
          }
        },
        "L_BGH": {
          "triangle": "BGH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BGH",
            "points": []
          }
        },
        "L_BGP": {
          "triangle": "BGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GBP",
            "points": []
          }
        },
        "L_BOP": {
          "triangle": "BOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "OBP",
            "points": []
          }
        },
        "L_CDE": {
          "triangle": "CDE",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CDE",
            "points": []
          }
        },
        "L_CEG": {
          "triangle": "CEG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CEG",
            "points": []
          }
        },
        "L_CFG": {
          "triangle": "CFG",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CFG",
            "points": [
              "P"
            ]
          }
        },
        "L_CFH": {
          "triangle": "CFH",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "CFH",
            "points": [
              "O",
              "P"
            ]
          }
        },
        "L_CFO": {
          "triangle": "CFO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CFO",
            "points": []
          }
        },
        "L_CFP": {
          "triangle": "CFP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CFP",
            "points": []
          }
        },
        "L_CGO": {
          "triangle": "CGO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GCO",
            "points": [
              "P"
            ]
          }
        },
        "L_CGP": {
          "triangle": "CGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GCP",
            "points": []
          }
        },
        "L_CHO": {
          "triangle": "CHO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HCO",
            "points": [
              "P"
            ]
          }
        },
        "L_CHP": {
          "triangle": "CHP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HCP",
            "points": []
          }
        },
        "L_COP": {
          "triangle": "COP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "COP",
            "points": []
          }
        },
        "L_FGO": {
          "triangle": "FGO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GFO",
            "points": []
          }
        },
        "L_FGP": {
          "triangle": "FGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FGP",
            "points": []
          }
        },
        "L_FHO": {
          "triangle": "FHO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FHO",
            "points": []
          }
        },
        "L_FOP": {
          "triangle": "FOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FOP",
            "points": []
          }
        },
        "L_GOP": {
          "triangle": "GOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "OGP",
            "points": []
          }
        },
        "L_HOP": {
          "triangle": "HOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "OHP",
            "points": []
          }
        },
        "U_ABE": {
          "triangle": "ABE",
          "side": "hi",
          "value": "180996511/226750000",
          "witness": {
            "kind": "vertices",
            "signed": "ABE",
            "used": [
              0,
              1,
              4
            ],
            "values": [
              "22645062283/125000000000",
              "3468031/15625000",
              "4186231/11337500",
              "130482881/226750000",
              "536953/907000",
              "629631046163/1000000000000",
              "670424531899/1000000000000",
              "180996511/226750000"
            ],
            "cell": "CA"
          }
        },
        "U_ACE": {
          "triangle": "ACE",
          "side": "hi",
          "value": "437825585923/500000000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACE",
            "used": [
              0,
              2,
              4
            ],
            "values": [
              "55076342401/125000000000",
              "30199500691/62500000000",
              "271309623451/500000000000",
              "554886420761/1000000000000",
              "11444407/15625000",
              "12753499/15625000",
              "846717729553/1000000000000",
              "437825585923/500000000000"
            ],
            "cell": "CA"
          }
        },
        "U_ACF": {
          "triangle": "ACF",
          "side": "hi",
          "value": "440901/500000",
          "witness": {
            "kind": "vertices",
            "signed": "ACF",
            "used": [
              0,
              2,
              5
            ],
            "values": [
              "672779261553/1000000000000",
              "355929083423/500000000000",
              "751067171/1000000000",
              "787874649/1000000000",
              "842723094707/1000000000000",
              "422497261/500000000",
              "440901/500000"
            ],
            "cell": "CA"
          }
        },
        "U_ACO": {
          "triangle": "ACO",
          "side": "hi",
          "value": "388314337/500000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACO",
            "used": [
              0,
              2,
              9,
              10
            ],
            "values": [
              "276453844823/1000000000000",
              "9219447907/31250000000",
              "69974132471/200000000000",
              "47350513081/125000000000",
              "137853761117/250000000000",
              "118097119871/200000000000",
              "152263521889/250000000000",
              "154857492117/250000000000",
              "312415931/500000000",
              "78103997297/125000000000",
              "663902416887/1000000000000",
              "34641792959/50000000000",
              "346423393/500000000",
              "86605862797/125000000000",
              "566891/800000",
              "388314337/500000000"
            ],
            "cell": "CA"
          }
        },
        "U_ACP": {
          "triangle": "ACP",
          "side": "hi",
          "value": "289902054303/500000000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACP",
            "used": [
              0,
              2,
              11,
              12
            ],
            "values": [
              "-591903013/12500000000",
              "-14701413831/1000000000000",
              "48952982511/250000000000",
              "102067897429/500000000000",
              "56583353339/250000000000",
              "228462757253/1000000000000",
              "62222406511/250000000000",
              "25345246621/100000000000",
              "128400891429/500000000000",
              "69749850339/250000000000",
              "467726834733/1000000000000",
              "61506724641/125000000000",
              "248308318647/500000000000",
              "520392822733/1000000000000",
              "263569060303/500000000000",
              "289902054303/500000000000"
            ],
            "cell": "CA"
          }
        },
        "U_BCO": {
          "triangle": "BCO",
          "side": "hi",
          "value": "701826623/1000000000",
          "witness": {
            "kind": "vertices",
            "signed": "BCO",
            "used": [
              1,
              2,
              9,
              10
            ],
            "values": [
              "33666824484369/226750000000000",
              "165848877/1000000000",
              "26876235829379/113375000000000",
              "132397207/500000000",
              "67465849953/125000000000",
              "301440543/500000000",
              "157076845633/250000000000",
              "701826623/1000000000"
            ],
            "cell": "CA"
          }
        },
        "U_BFH": {
          "triangle": "BFH",
          "side": "hi",
          "value": "440901/500000",
          "witness": {
            "kind": "vertices",
            "signed": "BFH",
            "used": [
              1,
              5,
              7
            ],
            "values": [
              "210271107857/500000000000",
              "291568234679/500000000000",
              "275058303809/453500000000",
              "617/1000",
              "174397398918277/226750000000000",
              "440901/500000"
            ],
            "cell": "CA"
          }
        },
        "U_CDH": {
          "triangle": "CDH",
          "side": "hi",
          "value": "611990125749/1000000000000",
          "witness": {
            "kind": "vertices",
            "signed": "CDH",
            "used": [
              2,
              3,
              7
            ],
            "values": [
              "17855730933/100000000000",
              "112089568487/500000000000",
              "46486052663/200000000000",
              "320158816957/1000000000000",
              "255794617137/500000000000",
              "524261572107/1000000000000",
              "278605530959/500000000000",
              "611990125749/1000000000000"
            ],
            "cell": "CA"
          }
        },
        "U_CFG": {
          "triangle": "CFG",
          "side": "hi",
          "value": "762839/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "CFG",
            "used": [
              2,
              5,
              6,
              8
            ],
            "values": [
              "26366357257/200000000000",
              "16809745287/100000000000",
              "13079578171/62500000000",
              "15896806649/62500000000",
              "9368573261/31250000000",
              "61720866683/200000000000",
              "34487/100000",
              "109960157257/200000000000",
              "58606645287/100000000000",
              "39202640671/62500000000",
              "42019869149/62500000000",
              "22430104511/31250000000",
              "145314666683/200000000000",
              "762839/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_CFH": {
          "triangle": "CFH",
          "side": "hi",
          "value": "440901/500000",
          "witness": {
            "kind": "vertices",
            "signed": "CFH",
            "used": [
              2,
              5,
              7
            ],
            "values": [
              "617/1000",
              "338550510179/500000000000",
              "179801936589/250000000000",
              "419847637001/500000000000",
              "440901/500000"
            ],
            "cell": "CA"
          }
        },
        "U_CHO": {
          "triangle": "CHO",
          "side": "hi",
          "value": "17436537687/25000000000",
          "witness": {
            "kind": "vertices",
            "signed": "HCO",
            "used": [
              2,
              7,
              9,
              10
            ],
            "values": [
              "7504580297/125000000000",
              "20136764867/250000000000",
              "71909207/500000000",
              "153963877/1000000000",
              "145816318999/500000000000",
              "39153618363/125000000000",
              "36504945553/100000000000",
              "6203292477/15625000000",
              "68669080297/125000000000",
              "142465764867/250000000000",
              "11841668539/20000000000",
              "38354983491/62500000000",
              "316567207/500000000",
              "643279877/1000000000",
              "332750122241/500000000000",
              "17436537687/25000000000"
            ],
            "cell": "CA"
          }
        },
        "U_FHP": {
          "triangle": "FHP",
          "side": "hi",
          "value": "144951053661/250000000000",
          "witness": {
            "kind": "vertices",
            "signed": "FHP",
            "used": [
              5,
              7,
              11,
              12
            ],
            "values": [
              "1377863101/20000000000",
              "21829585753/250000000000",
              "195216949/1000000000",
              "107568565713/500000000000",
              "58390579847/250000000000",
              "139499753697/500000000000",
              "74448117003/250000000000",
              "3696978623/10000000000",
              "202845537/500000000",
              "111009111097/250000000000",
              "128985459669/250000000000",
              "144951053661/250000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "4": {
          "row": [
            "fan",
            "ACF",
            "ACG",
            "CFG",
            "AFG"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ACF",
            "point": "G"
          }
        },
        "5": {
          "row": [
            "fan",
            "ACF",
            "ACP",
            "CFP",
            "AFP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ACF",
            "point": "P"
          }
        },
        "7": {
          "row": [
            "fan",
            "ACO",
            "ACG",
            "CGO",
            "AGO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ACO",
            "point": "G"
          }
        },
        "8": {
          "row": [
            "fan",
            "ACO",
            "ACP",
            "COP",
            "AOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ACO",
            "point": "P"
          }
        },
        "13": {
          "row": [
            "fan",
            "BCO",
            "BCP",
            "COP",
            "BOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "BCO",
            "point": "P"
          }
        },
        "17": {
          "row": [
            "fan",
            "BFH",
            "BFG",
            "FGH",
            "BGH"
          ],
          "witness": {
            "kind": "fan",
            "outer": "BFH",
            "point": "G"
          }
        },
        "19": {
          "row": [
            "fan",
            "BHP",
            "BGH",
            "BGP",
            "GHP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "HBP",
            "point": "G"
          }
        },
        "21": {
          "row": [
            "fan",
            "CFG",
            "CFP",
            "FGP",
            "CGP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "CFG",
            "point": "P"
          }
        },
        "22": {
          "row": [
            "fan",
            "CFH",
            "CFO",
            "FHO",
            "CHO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "CFH",
            "point": "O"
          }
        },
        "25": {
          "row": [
            "fan",
            "CHO",
            "CHP",
            "COP",
            "HOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "HCO",
            "point": "P"
          }
        },
        "28": {
          "row": [
            "fan",
            "FGH",
            "FGO",
            "FHO",
            "GHO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "GFH",
            "point": "O"
          }
        },
        "29": {
          "row": [
            "fan",
            "FHP",
            "FHO",
            "HOP",
            "FOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "FHP",
            "point": "O"
          }
        },
        "75": {
          "row": [
            "plu",
            "ACP",
            "AFG",
            "ACF",
            "AGP",
            "ACG",
            "AFP"
          ],
          "witness": {
            "kind": "plu",
            "word": "ACFGP"
          }
        },
        "473": {
          "row": [
            "plu",
            "CFO",
            "FGH",
            "CFG",
            "FHO",
            "CFH",
            "FGO"
          ],
          "witness": {
            "kind": "plu",
            "word": "FCGHO"
          }
        },
        "667": {
          "row": [
            "plu",
            "CFO",
            "GHO",
            "CGO",
            "FHO",
            "CHO",
            "FGO"
          ],
          "witness": {
            "kind": "plu",
            "word": "OCFGH"
          }
        },
        "680": {
          "row": [
            "plu",
            "AOP",
            "BCP",
            "ABP",
            "COP",
            "ACP",
            "BOP"
          ],
          "witness": {
            "kind": "plu",
            "word": "PABCO"
          }
        },
        "813": {
          "row": [
            "quad",
            "ABP",
            "AOP",
            "449/1000"
          ],
          "witness": {
            "kind": "quad",
            "poly": "ABPO",
            "occupants": [
              "G"
            ]
          }
        },
        "861": {
          "row": [
            "quad",
            "ACF",
            "AFH",
            "93/91"
          ],
          "witness": {
            "kind": "quad",
            "poly": "ACFH",
            "occupants": [
              "G",
              "O",
              "P"
            ]
          }
        },
        "1714": {
          "row": [
            "balance",
            [
              [
                1,
                "ACF",
                "GHP"
              ],
              [
                -1,
                "ACH",
                "FGP"
              ],
              [
                -1,
                "AFH",
                "CGP"
              ],
              [
                -1,
                "AGP",
                "CFH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ACF",
            "point": "H",
            "line": "GP"
          }
        },
        "1780": {
          "row": [
            "balance",
            [
              [
                1,
                "ACO",
                "FGP"
              ],
              [
                1,
                "ACP",
                "FGO"
              ],
              [
                1,
                "AFG",
                "COP"
              ],
              [
                -1,
                "AOP",
                "CFG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ACO",
            "point": "P",
            "line": "FG"
          }
        },
        "1886": {
          "row": [
            "balance",
            [
              [
                1,
                "ACO",
                "FGP"
              ],
              [
                1,
                "AFG",
                "COP"
              ],
              [
                -1,
                "AFP",
                "CGO"
              ],
              [
                1,
                "AGP",
                "CFO"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "AFG",
            "point": "P",
            "line": "CO"
          }
        },
        "2599": {
          "row": [
            "balance",
            [
              [
                1,
                "CFG",
                "HOP"
              ],
              [
                -1,
                "CHO",
                "FGP"
              ],
              [
                -1,
                "CHP",
                "FGO"
              ],
              [
                -1,
                "COP",
                "FGH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CHO",
            "point": "P",
            "line": "FG"
          }
        },
        "2775": {
          "row": [
            "balance",
            [
              [
                1,
                "CFP",
                "GHO"
              ],
              [
                -1,
                "CGP",
                "FHO"
              ],
              [
                -1,
                "CHP",
                "FGO"
              ],
              [
                -1,
                "COP",
                "FGH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "FGH",
            "point": "O",
            "line": "CP"
          }
        },
        "2826": {
          "row": [
            "linear",
            {
              "ABH": "-93/1000",
              "AEH": "-93/1000",
              "AGH": "180996511/226750000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ABE",
            "point": "G",
            "line": "AH",
            "side": "upper",
            "outer_upper": {
              "triangle": "ABE",
              "ref": "U_ABE",
              "value": "180996511/226750000"
            },
            "fan_lower": [
              {
                "triangle": "BEG",
                "ref": "L_BEG",
                "value": "93/1000"
              },
              {
                "triangle": "AEG",
                "ref": "L_AEG",
                "value": "93/1000"
              },
              {
                "triangle": "ABG",
                "ref": "L_ABG",
                "value": "93/1000"
              }
            ],
            "residual": "117733261/226750000"
          }
        },
        "3024": {
          "row": [
            "linear",
            {
              "ACH": "-93/1000",
              "AEH": "-93/1000",
              "AGH": "437825585923/500000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACE",
            "point": "G",
            "line": "AH",
            "side": "upper",
            "outer_upper": {
              "triangle": "ACE",
              "ref": "U_ACE",
              "value": "437825585923/500000000000"
            },
            "fan_lower": [
              {
                "triangle": "CEG",
                "ref": "L_CEG",
                "value": "93/1000"
              },
              {
                "triangle": "AEG",
                "ref": "L_AEG",
                "value": "93/1000"
              },
              {
                "triangle": "ACG",
                "ref": "L_ACG",
                "value": "93/1000"
              }
            ],
            "residual": "298325585923/500000000000"
          }
        },
        "3395": {
          "row": [
            "linear",
            {
              "ACF": "-93/1000",
              "CFO": "-279/1000",
              "CFP": "388314337/500000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACO",
            "point": "P",
            "line": "CF",
            "side": "lower",
            "outer_upper": {
              "triangle": "ACO",
              "ref": "U_ACO",
              "value": "388314337/500000000"
            },
            "fan_lower": [
              {
                "triangle": "COP",
                "ref": "L_COP",
                "value": "93/1000"
              },
              {
                "triangle": "AOP",
                "ref": "L_AOP",
                "value": "93/1000"
              },
              {
                "triangle": "ACP",
                "ref": "L_ACP",
                "value": "279/1000"
              }
            ],
            "residual": "155814337/500000000"
          }
        },
        "3438": {
          "row": [
            "linear",
            {
              "ACG": "-93/1000",
              "AGP": "196902054303/500000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACP",
            "point": "G",
            "line": "AG",
            "side": "upper",
            "outer_upper": {
              "triangle": "ACP",
              "ref": "U_ACP",
              "value": "289902054303/500000000000"
            },
            "fan_lower": [
              {
                "triangle": "CGP",
                "ref": "L_CGP",
                "value": "93/1000"
              },
              {
                "triangle": "AGP",
                "ref": "L_AGP",
                "value": "93/1000"
              },
              {
                "triangle": "ACG",
                "ref": "L_ACG",
                "value": "93/1000"
              }
            ],
            "residual": "150402054303/500000000000"
          }
        },
        "3487": {
          "row": [
            "linear",
            {
              "AFP": "196902054303/500000000000",
              "CFP": "-93/1000",
              "FGP": "-289902054303/500000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACP",
            "point": "G",
            "line": "FP",
            "side": "lower",
            "outer_upper": {
              "triangle": "ACP",
              "ref": "U_ACP",
              "value": "289902054303/500000000000"
            },
            "fan_lower": [
              {
                "triangle": "CGP",
                "ref": "L_CGP",
                "value": "93/1000"
              },
              {
                "triangle": "AGP",
                "ref": "L_AGP",
                "value": "93/1000"
              },
              {
                "triangle": "ACG",
                "ref": "L_ACG",
                "value": "93/1000"
              }
            ],
            "residual": "150402054303/500000000000"
          }
        },
        "3499": {
          "row": [
            "linear",
            {
              "AOP": "196902054303/500000000000",
              "COP": "-93/1000",
              "GOP": "-289902054303/500000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACP",
            "point": "G",
            "line": "OP",
            "side": "lower",
            "outer_upper": {
              "triangle": "ACP",
              "ref": "U_ACP",
              "value": "289902054303/500000000000"
            },
            "fan_lower": [
              {
                "triangle": "CGP",
                "ref": "L_CGP",
                "value": "93/1000"
              },
              {
                "triangle": "AGP",
                "ref": "L_AGP",
                "value": "93/1000"
              },
              {
                "triangle": "ACG",
                "ref": "L_ACG",
                "value": "93/1000"
              }
            ],
            "residual": "150402054303/500000000000"
          }
        },
        "3702": {
          "row": [
            "linear",
            {
              "ABG": "-93/1000",
              "ACG": "-93/1000",
              "AGO": "515826623/1000000000",
              "AGP": "-701826623/1000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "BCO",
            "point": "P",
            "line": "AG",
            "side": "upper",
            "outer_upper": {
              "triangle": "BCO",
              "ref": "U_BCO",
              "value": "701826623/1000000000"
            },
            "fan_lower": [
              {
                "triangle": "COP",
                "ref": "L_COP",
                "value": "93/1000"
              },
              {
                "triangle": "BOP",
                "ref": "L_BOP",
                "value": "93/1000"
              },
              {
                "triangle": "BCP",
                "ref": "L_BCP",
                "value": "93/1000"
              }
            ],
            "residual": "422826623/1000000000"
          }
        },
        "3710": {
          "row": [
            "linear",
            {
              "BCO": "515826623/1000000000",
              "BCP": "-701826623/1000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "BCO",
            "point": "P",
            "line": "BC",
            "side": "upper",
            "outer_upper": {
              "triangle": "BCO",
              "ref": "U_BCO",
              "value": "701826623/1000000000"
            },
            "fan_lower": [
              {
                "triangle": "COP",
                "ref": "L_COP",
                "value": "93/1000"
              },
              {
                "triangle": "BOP",
                "ref": "L_BOP",
                "value": "93/1000"
              },
              {
                "triangle": "BCP",
                "ref": "L_BCP",
                "value": "93/1000"
              }
            ],
            "residual": "422826623/1000000000"
          }
        },
        "4226": {
          "row": [
            "linear",
            {
              "ACG": "-93/1000",
              "AFG": "576839/1000000",
              "AGP": "-762839/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFG",
            "point": "P",
            "line": "AG",
            "side": "upper",
            "outer_upper": {
              "triangle": "CFG",
              "ref": "U_CFG",
              "value": "762839/1000000"
            },
            "fan_lower": [
              {
                "triangle": "FGP",
                "ref": "L_FGP",
                "value": "93/1000"
              },
              {
                "triangle": "CGP",
                "ref": "L_CGP",
                "value": "93/1000"
              },
              {
                "triangle": "CFP",
                "ref": "L_CFP",
                "value": "93/1000"
              }
            ],
            "residual": "483839/1000000"
          }
        },
        "4298": {
          "row": [
            "linear",
            {
              "ACH": "-93/1000",
              "AFH": "-279/1000",
              "AHO": "440901/500000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFH",
            "point": "O",
            "line": "AH",
            "side": "upper",
            "outer_upper": {
              "triangle": "CFH",
              "ref": "U_CFH",
              "value": "440901/500000"
            },
            "fan_lower": [
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              },
              {
                "triangle": "CHO",
                "ref": "L_CHO",
                "value": "279/1000"
              },
              {
                "triangle": "CFO",
                "ref": "L_CFO",
                "value": "93/1000"
              }
            ],
            "residual": "208401/500000"
          }
        },
        "4550": {
          "row": [
            "linear",
            {
              "FHO": "-93/1000",
              "CFO": "12786537687/25000000000",
              "FOP": "-17436537687/25000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "HCO",
            "point": "P",
            "line": "FO",
            "side": "upper",
            "outer_upper": {
              "triangle": "CHO",
              "ref": "U_CHO",
              "value": "17436537687/25000000000"
            },
            "fan_lower": [
              {
                "triangle": "COP",
                "ref": "L_COP",
                "value": "93/1000"
              },
              {
                "triangle": "HOP",
                "ref": "L_HOP",
                "value": "93/1000"
              },
              {
                "triangle": "CHP",
                "ref": "L_CHP",
                "value": "93/1000"
              }
            ],
            "residual": "10461537687/25000000000"
          }
        },
        "4789": {
          "row": [
            "linear",
            {
              "CFP": "98451053661/250000000000",
              "CHP": "-93/1000",
              "COP": "-144951053661/250000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "FHP",
            "point": "O",
            "line": "CP",
            "side": "lower",
            "outer_upper": {
              "triangle": "FHP",
              "ref": "U_FHP",
              "value": "144951053661/250000000000"
            },
            "fan_lower": [
              {
                "triangle": "HOP",
                "ref": "L_HOP",
                "value": "93/1000"
              },
              {
                "triangle": "FOP",
                "ref": "L_FOP",
                "value": "93/1000"
              },
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              }
            ],
            "residual": "75201053661/250000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0019",
          "relation": 8,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "404629/1000000",
          "sources": [
            "U_ACO",
            "L_ACP",
            "L_COP"
          ]
        },
        {
          "id": "T0026",
          "relation": 17,
          "rule": "sub",
          "triangle": "FGH",
          "side": "hi",
          "value": "347901/500000",
          "sources": [
            "U_BFH",
            "L_BFG",
            "L_BGH"
          ]
        },
        {
          "id": "T0030",
          "relation": 22,
          "rule": "sub",
          "triangle": "CFO",
          "side": "hi",
          "value": "254901/500000",
          "sources": [
            "U_CFH",
            "L_FHO",
            "L_CHO"
          ]
        },
        {
          "id": "T0062",
          "relation": 473,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "16237/125000",
          "sources": [
            "L_CFG",
            "L_FHO",
            "L_CFH",
            "L_FGO",
            "T0026"
          ]
        },
        {
          "id": "T0072",
          "relation": 667,
          "rule": "sumlo",
          "triangle": "GHO",
          "side": "lo",
          "value": "3181/31250",
          "sources": [
            "L_CGO",
            "L_FHO",
            "L_CHO",
            "L_FGO",
            "T0030"
          ]
        },
        {
          "id": "T0073",
          "relation": 680,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "513/4000",
          "sources": [
            "L_ABP",
            "L_COP",
            "L_ACP",
            "L_BOP",
            "T0019"
          ]
        },
        {
          "id": "T0074",
          "relation": 861,
          "rule": "quad",
          "triangle": "AFH",
          "side": "lo",
          "value": "8761/62500",
          "sources": [
            "U_ACF"
          ]
        },
        {
          "id": "T0087",
          "relation": 1714,
          "rule": "balance_lo",
          "triangle": "GHP",
          "side": "lo",
          "value": "733/6250",
          "sources": [
            "L_ACH",
            "L_FGP",
            "T0074",
            "L_CGP",
            "L_AGP",
            "L_CFH",
            "U_ACF"
          ]
        },
        {
          "id": "T0107",
          "relation": 3395,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "4051/31250",
          "sources": [
            "L_ACF",
            "T0062"
          ]
        },
        {
          "id": "T0113",
          "relation": 3487,
          "rule": "linear",
          "triangle": "AFP",
          "side": "lo",
          "value": "167539/1000000",
          "sources": [
            "T0107",
            "L_FGP"
          ]
        },
        {
          "id": "T0114",
          "relation": 3499,
          "rule": "linear",
          "triangle": "AOP",
          "side": "lo",
          "value": "19861/125000",
          "sources": [
            "L_COP",
            "L_GOP"
          ]
        },
        {
          "id": "T0118",
          "relation": 3702,
          "rule": "linear",
          "triangle": "AGO",
          "side": "lo",
          "value": "160069/1000000",
          "sources": [
            "L_ABG",
            "L_ACG",
            "L_AGP"
          ]
        },
        {
          "id": "T0130",
          "relation": 4226,
          "rule": "linear",
          "triangle": "AFG",
          "side": "lo",
          "value": "137981/1000000",
          "sources": [
            "L_ACG",
            "L_AGP"
          ]
        },
        {
          "id": "T0138",
          "relation": 4550,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "143731/1000000",
          "sources": [
            "L_FHO",
            "L_FOP"
          ]
        },
        {
          "id": "T0143",
          "relation": 4789,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "19861/125000",
          "sources": [
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0147",
          "relation": 4,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "650821/1000000",
          "sources": [
            "U_ACF",
            "L_ACG",
            "T0130"
          ]
        },
        {
          "id": "T0152",
          "relation": 7,
          "rule": "sub",
          "triangle": "CGO",
          "side": "hi",
          "value": "13089/25000",
          "sources": [
            "U_ACO",
            "L_ACG",
            "T0118"
          ]
        },
        {
          "id": "T0153",
          "relation": 8,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "524741/1000000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0114"
          ]
        },
        {
          "id": "T0158",
          "relation": 13,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "1257/4000",
          "sources": [
            "T0073",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0160",
          "relation": 19,
          "rule": "sum",
          "triangle": "BHP",
          "side": "lo",
          "value": "3791/12500",
          "sources": [
            "L_BGH",
            "L_BGP",
            "T0087"
          ]
        },
        {
          "id": "T0161",
          "relation": 21,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "43111/125000",
          "sources": [
            "T0143",
            "L_FGP",
            "L_CGP"
          ]
        },
        {
          "id": "T0165",
          "relation": 28,
          "rule": "sum",
          "triangle": "FGH",
          "side": "lo",
          "value": "17987/62500",
          "sources": [
            "L_FGO",
            "L_FHO",
            "T0072"
          ]
        },
        {
          "id": "T0168",
          "relation": 75,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "76243/500000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "T0113",
            "T0153"
          ]
        },
        {
          "id": "T0186",
          "relation": 1780,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "160663/1000000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "L_ACP",
            "L_FGO",
            "T0168",
            "L_COP",
            "T0147"
          ]
        },
        {
          "id": "T0188",
          "relation": 1886,
          "rule": "balance_lo",
          "triangle": "AFP",
          "side": "lo",
          "value": "21961/125000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0168",
            "L_COP",
            "L_AGP",
            "T0138",
            "T0152"
          ]
        },
        {
          "id": "T0191",
          "relation": 2599,
          "rule": "balance_lo",
          "triangle": "HOP",
          "side": "lo",
          "value": "94281/1000000",
          "sources": [
            "L_CHO",
            "L_FGP",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0165",
            "T0147"
          ]
        },
        {
          "id": "T0208",
          "relation": 4,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "159079/250000",
          "sources": [
            "U_ACF",
            "L_ACG",
            "T0168"
          ]
        },
        {
          "id": "T0210",
          "relation": 5,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "213557/500000",
          "sources": [
            "U_ACF",
            "L_ACP",
            "T0188"
          ]
        },
        {
          "id": "T0211",
          "relation": 8,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "261483/500000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0186"
          ]
        },
        {
          "id": "T0217",
          "relation": 25,
          "rule": "sum",
          "triangle": "CHO",
          "side": "lo",
          "value": "280281/1000000",
          "sources": [
            "L_CHP",
            "L_COP",
            "T0191"
          ]
        },
        {
          "id": "T0221",
          "relation": 75,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "154453/1000000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "T0188",
            "T0211"
          ]
        },
        {
          "id": "T0233",
          "relation": 1780,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "164613/1000000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "L_ACP",
            "L_FGO",
            "T0221",
            "L_COP",
            "T0208"
          ]
        },
        {
          "id": "T0234",
          "relation": 1886,
          "rule": "balance_lo",
          "triangle": "AFP",
          "side": "lo",
          "value": "176037/1000000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0221",
            "L_COP",
            "L_AGP",
            "T0138",
            "T0152"
          ]
        },
        {
          "id": "T0237",
          "relation": 2599,
          "rule": "balance_lo",
          "triangle": "HOP",
          "side": "lo",
          "value": "48309/500000",
          "sources": [
            "T0217",
            "L_FGP",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0165",
            "T0208"
          ]
        },
        {
          "id": "T0238",
          "relation": 2775,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "103163/1000000",
          "sources": [
            "L_CGP",
            "L_FHO",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0165",
            "T0210"
          ]
        },
        {
          "id": "T0245",
          "relation": 4,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "634349/1000000",
          "sources": [
            "U_ACF",
            "L_ACG",
            "T0221"
          ]
        },
        {
          "id": "T0246",
          "relation": 5,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "85353/200000",
          "sources": [
            "U_ACF",
            "L_ACP",
            "T0234"
          ]
        },
        {
          "id": "T0247",
          "relation": 8,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "64877/125000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0233"
          ]
        },
        {
          "id": "T0253",
          "relation": 25,
          "rule": "sum",
          "triangle": "CHO",
          "side": "lo",
          "value": "141309/500000",
          "sources": [
            "L_CHP",
            "L_COP",
            "T0237"
          ]
        },
        {
          "id": "T0255",
          "relation": 28,
          "rule": "sum",
          "triangle": "FGH",
          "side": "lo",
          "value": "289163/1000000",
          "sources": [
            "L_FGO",
            "L_FHO",
            "T0238"
          ]
        },
        {
          "id": "T0258",
          "relation": 75,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "155691/1000000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "T0234",
            "T0247"
          ]
        },
        {
          "id": "T0269",
          "relation": 1780,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "33061/200000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "L_ACP",
            "L_FGO",
            "T0258",
            "L_COP",
            "T0245"
          ]
        },
        {
          "id": "T0270",
          "relation": 1886,
          "rule": "balance_lo",
          "triangle": "AFP",
          "side": "lo",
          "value": "176257/1000000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0258",
            "L_COP",
            "L_AGP",
            "T0138",
            "T0152"
          ]
        },
        {
          "id": "T0273",
          "relation": 2599,
          "rule": "balance_lo",
          "triangle": "HOP",
          "side": "lo",
          "value": "97461/1000000",
          "sources": [
            "T0253",
            "L_FGP",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0255",
            "T0245"
          ]
        },
        {
          "id": "T0274",
          "relation": 2775,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "51773/500000",
          "sources": [
            "L_CGP",
            "L_FHO",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0255",
            "T0246"
          ]
        },
        {
          "id": "T0281",
          "relation": 4,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "633111/1000000",
          "sources": [
            "U_ACF",
            "L_ACG",
            "T0258"
          ]
        },
        {
          "id": "T0282",
          "relation": 5,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "85309/200000",
          "sources": [
            "U_ACF",
            "L_ACP",
            "T0270"
          ]
        },
        {
          "id": "T0283",
          "relation": 8,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "129581/250000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0269"
          ]
        },
        {
          "id": "T0290",
          "relation": 25,
          "rule": "sum",
          "triangle": "CHO",
          "side": "lo",
          "value": "283461/1000000",
          "sources": [
            "L_CHP",
            "L_COP",
            "T0273"
          ]
        },
        {
          "id": "T0292",
          "relation": 28,
          "rule": "sum",
          "triangle": "FGH",
          "side": "lo",
          "value": "144773/500000",
          "sources": [
            "L_FGO",
            "L_FHO",
            "T0274"
          ]
        },
        {
          "id": "T0295",
          "relation": 75,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "155939/1000000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "T0270",
            "T0283"
          ]
        },
        {
          "id": "T0305",
          "relation": 1780,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "33133/200000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "L_ACP",
            "L_FGO",
            "T0295",
            "L_COP",
            "T0281"
          ]
        },
        {
          "id": "T0306",
          "relation": 1886,
          "rule": "balance_lo",
          "triangle": "AFP",
          "side": "lo",
          "value": "176301/1000000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0295",
            "L_COP",
            "L_AGP",
            "T0138",
            "T0152"
          ]
        },
        {
          "id": "T0309",
          "relation": 2599,
          "rule": "balance_lo",
          "triangle": "HOP",
          "side": "lo",
          "value": "12229/125000",
          "sources": [
            "T0290",
            "L_FGP",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0292",
            "T0281"
          ]
        },
        {
          "id": "T0310",
          "relation": 2775,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "103683/1000000",
          "sources": [
            "L_CGP",
            "L_FHO",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0292",
            "T0282"
          ]
        },
        {
          "id": "T0316",
          "relation": 4,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "632863/1000000",
          "sources": [
            "U_ACF",
            "L_ACG",
            "T0295"
          ]
        },
        {
          "id": "T0317",
          "relation": 5,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "426501/1000000",
          "sources": [
            "U_ACF",
            "L_ACP",
            "T0306"
          ]
        },
        {
          "id": "T0318",
          "relation": 8,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "129491/250000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0305"
          ]
        },
        {
          "id": "T0325",
          "relation": 25,
          "rule": "sum",
          "triangle": "CHO",
          "side": "lo",
          "value": "35479/125000",
          "sources": [
            "L_CHP",
            "L_COP",
            "T0309"
          ]
        },
        {
          "id": "T0327",
          "relation": 28,
          "rule": "sum",
          "triangle": "FGH",
          "side": "lo",
          "value": "289683/1000000",
          "sources": [
            "L_FGO",
            "L_FHO",
            "T0310"
          ]
        },
        {
          "id": "T0330",
          "relation": 75,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "31211/200000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "T0306",
            "T0318"
          ]
        },
        {
          "id": "T0338",
          "relation": 1780,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "165747/1000000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "L_ACP",
            "L_FGO",
            "T0330",
            "L_COP",
            "T0316"
          ]
        },
        {
          "id": "T0339",
          "relation": 1886,
          "rule": "balance_lo",
          "triangle": "AFP",
          "side": "lo",
          "value": "88161/500000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0330",
            "L_COP",
            "L_AGP",
            "T0138",
            "T0152"
          ]
        },
        {
          "id": "T0341",
          "relation": 2599,
          "rule": "balance_lo",
          "triangle": "HOP",
          "side": "lo",
          "value": "19589/200000",
          "sources": [
            "T0325",
            "L_FGP",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0327",
            "T0316"
          ]
        },
        {
          "id": "T0342",
          "relation": 2775,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "25931/250000",
          "sources": [
            "L_CGP",
            "L_FHO",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0327",
            "T0317"
          ]
        },
        {
          "id": "T0348",
          "relation": 4,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "632747/1000000",
          "sources": [
            "U_ACF",
            "L_ACG",
            "T0330"
          ]
        },
        {
          "id": "T0349",
          "relation": 5,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "5331/12500",
          "sources": [
            "U_ACF",
            "L_ACP",
            "T0339"
          ]
        },
        {
          "id": "T0350",
          "relation": 8,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "258941/500000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0338"
          ]
        },
        {
          "id": "T0357",
          "relation": 25,
          "rule": "sum",
          "triangle": "CHO",
          "side": "lo",
          "value": "56789/200000",
          "sources": [
            "L_CHP",
            "L_COP",
            "T0341"
          ]
        },
        {
          "id": "T0359",
          "relation": 28,
          "rule": "sum",
          "triangle": "FGH",
          "side": "lo",
          "value": "72431/250000",
          "sources": [
            "L_FGO",
            "L_FHO",
            "T0342"
          ]
        },
        {
          "id": "T0362",
          "relation": 75,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "156083/1000000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "T0339",
            "T0350"
          ]
        },
        {
          "id": "T0370",
          "relation": 1780,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "165781/1000000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "L_ACP",
            "L_FGO",
            "T0362",
            "L_COP",
            "T0348"
          ]
        },
        {
          "id": "T0371",
          "relation": 1886,
          "rule": "balance_lo",
          "triangle": "AFP",
          "side": "lo",
          "value": "88163/500000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0362",
            "L_COP",
            "L_AGP",
            "T0138",
            "T0152"
          ]
        },
        {
          "id": "T0373",
          "relation": 2599,
          "rule": "balance_lo",
          "triangle": "HOP",
          "side": "lo",
          "value": "19597/200000",
          "sources": [
            "T0357",
            "L_FGP",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0359",
            "T0348"
          ]
        },
        {
          "id": "T0374",
          "relation": 2775,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "51869/500000",
          "sources": [
            "L_CGP",
            "L_FHO",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0359",
            "T0349"
          ]
        },
        {
          "id": "T0380",
          "relation": 4,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "632719/1000000",
          "sources": [
            "U_ACF",
            "L_ACG",
            "T0362"
          ]
        },
        {
          "id": "T0381",
          "relation": 5,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "106619/250000",
          "sources": [
            "U_ACF",
            "L_ACP",
            "T0371"
          ]
        },
        {
          "id": "T0382",
          "relation": 8,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "64731/125000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0370"
          ]
        },
        {
          "id": "T0389",
          "relation": 25,
          "rule": "sum",
          "triangle": "CHO",
          "side": "lo",
          "value": "56797/200000",
          "sources": [
            "L_CHP",
            "L_COP",
            "T0373"
          ]
        },
        {
          "id": "T0391",
          "relation": 28,
          "rule": "sum",
          "triangle": "FGH",
          "side": "lo",
          "value": "144869/500000",
          "sources": [
            "L_FGO",
            "L_FHO",
            "T0374"
          ]
        },
        {
          "id": "T0394",
          "relation": 75,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "78047/500000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "T0371",
            "T0382"
          ]
        },
        {
          "id": "T0402",
          "relation": 1780,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "16579/100000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "L_ACP",
            "L_FGO",
            "T0394",
            "L_COP",
            "T0380"
          ]
        },
        {
          "id": "T0403",
          "relation": 1886,
          "rule": "balance_lo",
          "triangle": "AFP",
          "side": "lo",
          "value": "22041/125000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0394",
            "L_COP",
            "L_AGP",
            "T0138",
            "T0152"
          ]
        },
        {
          "id": "T0405",
          "relation": 2599,
          "rule": "balance_lo",
          "triangle": "HOP",
          "side": "lo",
          "value": "48999/500000",
          "sources": [
            "T0389",
            "L_FGP",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0391",
            "T0380"
          ]
        },
        {
          "id": "T0406",
          "relation": 2775,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "51871/500000",
          "sources": [
            "L_CGP",
            "L_FHO",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0391",
            "T0381"
          ]
        },
        {
          "id": "T0412",
          "relation": 4,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "158177/250000",
          "sources": [
            "U_ACF",
            "L_ACG",
            "T0394"
          ]
        },
        {
          "id": "T0413",
          "relation": 5,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "213237/500000",
          "sources": [
            "U_ACF",
            "L_ACP",
            "T0403"
          ]
        },
        {
          "id": "T0414",
          "relation": 8,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "517839/1000000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0402"
          ]
        },
        {
          "id": "T0421",
          "relation": 25,
          "rule": "sum",
          "triangle": "CHO",
          "side": "lo",
          "value": "141999/500000",
          "sources": [
            "L_CHP",
            "L_COP",
            "T0405"
          ]
        },
        {
          "id": "T0423",
          "relation": 28,
          "rule": "sum",
          "triangle": "FGH",
          "side": "lo",
          "value": "144871/500000",
          "sources": [
            "L_FGO",
            "L_FHO",
            "T0406"
          ]
        },
        {
          "id": "T0426",
          "relation": 75,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "156097/1000000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "T0403",
            "T0414"
          ]
        },
        {
          "id": "T0434",
          "relation": 1780,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "165793/1000000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "L_ACP",
            "L_FGO",
            "T0426",
            "L_COP",
            "T0412"
          ]
        },
        {
          "id": "T0435",
          "relation": 1886,
          "rule": "balance_lo",
          "triangle": "AFP",
          "side": "lo",
          "value": "176329/1000000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0426",
            "L_COP",
            "L_AGP",
            "T0138",
            "T0152"
          ]
        },
        {
          "id": "T0437",
          "relation": 2599,
          "rule": "balance_lo",
          "triangle": "HOP",
          "side": "lo",
          "value": "49001/500000",
          "sources": [
            "T0421",
            "L_FGP",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0423",
            "T0412"
          ]
        },
        {
          "id": "T0438",
          "relation": 2775,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "103743/1000000",
          "sources": [
            "L_CGP",
            "L_FHO",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0423",
            "T0413"
          ]
        },
        {
          "id": "T0444",
          "relation": 4,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "126541/200000",
          "sources": [
            "U_ACF",
            "L_ACG",
            "T0426"
          ]
        },
        {
          "id": "T0445",
          "relation": 5,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "426473/1000000",
          "sources": [
            "U_ACF",
            "L_ACP",
            "T0435"
          ]
        },
        {
          "id": "T0446",
          "relation": 8,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "129459/250000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0434"
          ]
        },
        {
          "id": "T0453",
          "relation": 25,
          "rule": "sum",
          "triangle": "CHO",
          "side": "lo",
          "value": "142001/500000",
          "sources": [
            "L_CHP",
            "L_COP",
            "T0437"
          ]
        },
        {
          "id": "T0455",
          "relation": 28,
          "rule": "sum",
          "triangle": "FGH",
          "side": "lo",
          "value": "289743/1000000",
          "sources": [
            "L_FGO",
            "L_FHO",
            "T0438"
          ]
        },
        {
          "id": "T0458",
          "relation": 75,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "78049/500000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "T0435",
            "T0446"
          ]
        },
        {
          "id": "T0466",
          "relation": 1780,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "82897/500000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "L_ACP",
            "L_FGO",
            "T0458",
            "L_COP",
            "T0444"
          ]
        },
        {
          "id": "T0468",
          "relation": 2599,
          "rule": "balance_lo",
          "triangle": "HOP",
          "side": "lo",
          "value": "98003/1000000",
          "sources": [
            "T0453",
            "L_FGP",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0455",
            "T0444"
          ]
        },
        {
          "id": "T0469",
          "relation": 2775,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "1621/15625",
          "sources": [
            "L_CGP",
            "L_FHO",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0455",
            "T0445"
          ]
        },
        {
          "id": "T0475",
          "relation": 8,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "103567/200000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0466"
          ]
        },
        {
          "id": "T0482",
          "relation": 25,
          "rule": "sum",
          "triangle": "CHO",
          "side": "lo",
          "value": "284003/1000000",
          "sources": [
            "L_CHP",
            "L_COP",
            "T0468"
          ]
        },
        {
          "id": "T0484",
          "relation": 28,
          "rule": "sum",
          "triangle": "FGH",
          "side": "lo",
          "value": "18109/62500",
          "sources": [
            "L_FGO",
            "L_FHO",
            "T0469"
          ]
        },
        {
          "id": "T0487",
          "relation": 75,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "156099/1000000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "T0435",
            "T0475"
          ]
        },
        {
          "id": "T0492",
          "relation": 4,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "632703/1000000",
          "sources": [
            "U_ACF",
            "L_ACG",
            "T0487"
          ]
        },
        {
          "id": "T0500",
          "relation": 2599,
          "rule": "balance_lo",
          "triangle": "HOP",
          "side": "lo",
          "value": "24501/250000",
          "sources": [
            "T0482",
            "L_FGP",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0484",
            "T0492"
          ]
        },
        {
          "id": "T0503",
          "relation": 29,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "71001/250000",
          "sources": [
            "L_FHO",
            "T0500",
            "L_FOP"
          ]
        }
      ],
      "physical": {
        "48": {
          "name": "AREA_LO_BFH",
          "terms": [
            [
              [
                5,
                7
              ],
              "1"
            ],
            [
              [
                1,
                7
              ],
              "-1"
            ],
            [
              [
                1
              ],
              "1"
            ],
            [
              [],
              "-13857/20000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BFH",
            "side": "lo",
            "reference": "L_BFH",
            "value": "13857/20000"
          }
        },
        "50": {
          "name": "AREA_LO_CDE",
          "terms": [
            [
              [
                4
              ],
              "1"
            ],
            [
              [
                2,
                4
              ],
              "-1"
            ],
            [
              [
                3
              ],
              "-1"
            ],
            [
              [
                2,
                3
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CDE",
            "side": "lo",
            "reference": "L_CDE",
            "value": "93/1000"
          }
        },
        "88": {
          "name": "AREA_LO_BCO",
          "terms": [
            [
              [
                2,
                10
              ],
              "1"
            ],
            [
              [
                1,
                10
              ],
              "-1"
            ],
            [
              [],
              "-1257/4000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCO",
            "side": "lo",
            "reference": "T0158",
            "value": "1257/4000"
          }
        },
        "96": {
          "name": "AREA_LO_FHO",
          "terms": [
            [
              [
                5,
                10
              ],
              "-1"
            ],
            [
              [
                7,
                9
              ],
              "-1"
            ],
            [
              [
                5,
                7
              ],
              "1"
            ],
            [
              [
                9
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FHO",
            "side": "lo",
            "reference": "L_FHO",
            "value": "93/1000"
          }
        },
        "114": {
          "name": "AREA_LO_FHP",
          "terms": [
            [
              [
                5,
                12
              ],
              "-1"
            ],
            [
              [
                7,
                11
              ],
              "-1"
            ],
            [
              [
                5,
                7
              ],
              "1"
            ],
            [
              [
                11
              ],
              "1"
            ],
            [
              [],
              "-71001/250000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FHP",
            "side": "lo",
            "reference": "T0503",
            "value": "71001/250000"
          }
        },
        "132": {
          "name": "AREA_LO_COP",
          "terms": [
            [
              [
                9,
                12
              ],
              "1"
            ],
            [
              [
                2,
                12
              ],
              "-1"
            ],
            [
              [
                10,
                11
              ],
              "-1"
            ],
            [
              [
                2,
                10
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "COP",
            "side": "lo",
            "reference": "L_COP",
            "value": "93/1000"
          }
        },
        "136": {
          "name": "AREA_LO_FOP",
          "terms": [
            [
              [
                9,
                12
              ],
              "1"
            ],
            [
              [
                9
              ],
              "-1"
            ],
            [
              [
                5,
                12
              ],
              "-1"
            ],
            [
              [
                10,
                11
              ],
              "-1"
            ],
            [
              [
                5,
                10
              ],
              "1"
            ],
            [
              [
                11
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FOP",
            "side": "lo",
            "reference": "L_FOP",
            "value": "93/1000"
          }
        },
        "144": {
          "name": "AREA_LO_ACO",
          "terms": [
            [
              [
                2,
                10
              ],
              "1"
            ],
            [
              [
                0,
                2
              ],
              "-1"
            ],
            [
              [
                0,
                9
              ],
              "1"
            ],
            [
              [],
              "-13857/20000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACO",
            "side": "lo",
            "reference": "L_ACO",
            "value": "13857/20000"
          }
        },
        "146": {
          "name": "AREA_LO_ACP",
          "terms": [
            [
              [
                2,
                12
              ],
              "1"
            ],
            [
              [
                0,
                2
              ],
              "-1"
            ],
            [
              [
                0,
                11
              ],
              "1"
            ],
            [
              [],
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACP",
            "side": "lo",
            "reference": "L_ACP",
            "value": "279/1000"
          }
        },
        "150": {
          "name": "AREA_LO_CFG",
          "terms": [
            [
              [
                5,
                8
              ],
              "1"
            ],
            [
              [
                2,
                8
              ],
              "-1"
            ],
            [
              [
                6
              ],
              "-1"
            ],
            [
              [
                2
              ],
              "1"
            ],
            [
              [],
              "-43111/125000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFG",
            "side": "lo",
            "reference": "T0161",
            "value": "43111/125000"
          }
        },
        "164": {
          "name": "AREA_LO_BHP",
          "terms": [
            [
              [
                1,
                12
              ],
              "1"
            ],
            [
              [
                7,
                11
              ],
              "1"
            ],
            [
              [
                1,
                7
              ],
              "-1"
            ],
            [
              [],
              "-3791/12500"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BHP",
            "side": "lo",
            "reference": "T0160",
            "value": "3791/12500"
          }
        },
        "208": {
          "name": "AREA_LO_AEG",
          "terms": [
            [
              [
                8
              ],
              "-1"
            ],
            [
              [
                0
              ],
              "1"
            ],
            [
              [
                4,
                6
              ],
              "1"
            ],
            [
              [
                0,
                6
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AEG",
            "side": "lo",
            "reference": "L_AEG",
            "value": "93/1000"
          }
        },
        "394": {
          "name": "QUAD_813",
          "terms": [
            [
              [
                1,
                12
              ],
              "1"
            ],
            [
              [
                0,
                1
              ],
              "-1"
            ],
            [
              [
                9,
                12
              ],
              "-1"
            ],
            [
              [
                0,
                9
              ],
              "1"
            ],
            [
              [
                10,
                11
              ],
              "1"
            ],
            [
              [],
              "-449/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 813
          }
        },
        "1453": {
          "name": "LINEAR_2826",
          "terms": [
            [
              [
                1,
                7
              ],
              "-93/1000"
            ],
            [
              [
                0,
                1
              ],
              "93/1000"
            ],
            [
              [
                7
              ],
              "-93/1000"
            ],
            [
              [
                0
              ],
              "93/1000"
            ],
            [
              [
                6,
                7
              ],
              "180996511/226750000"
            ],
            [
              [
                0,
                6
              ],
              "-180996511/226750000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2826
          }
        },
        "1651": {
          "name": "LINEAR_3024",
          "terms": [
            [
              [
                2,
                7
              ],
              "-93/1000"
            ],
            [
              [
                0,
                2
              ],
              "93/1000"
            ],
            [
              [
                7
              ],
              "-93/1000"
            ],
            [
              [
                0
              ],
              "93/1000"
            ],
            [
              [
                6,
                7
              ],
              "437825585923/500000000000"
            ],
            [
              [
                0,
                6
              ],
              "-437825585923/500000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3024
          }
        },
        "2065": {
          "name": "LINEAR_3438",
          "terms": [
            [
              [
                2,
                8
              ],
              "-93/1000"
            ],
            [
              [
                0,
                2
              ],
              "93/1000"
            ],
            [
              [
                0,
                6
              ],
              "-243402054303/500000000000"
            ],
            [
              [
                6,
                12
              ],
              "196902054303/500000000000"
            ],
            [
              [
                8,
                11
              ],
              "-196902054303/500000000000"
            ],
            [
              [
                0,
                11
              ],
              "196902054303/500000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3438
          }
        },
        "2337": {
          "name": "LINEAR_3710",
          "terms": [
            [
              [
                2,
                10
              ],
              "515826623/1000000000"
            ],
            [
              [
                1,
                10
              ],
              "-515826623/1000000000"
            ],
            [
              [
                2,
                12
              ],
              "-701826623/1000000000"
            ],
            [
              [
                1,
                12
              ],
              "701826623/1000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3710
          }
        },
        "2925": {
          "name": "LINEAR_4298",
          "terms": [
            [
              [
                2,
                7
              ],
              "-93/1000"
            ],
            [
              [
                0,
                2
              ],
              "93/1000"
            ],
            [
              [
                5,
                7
              ],
              "-279/1000"
            ],
            [
              [
                0,
                5
              ],
              "279/1000"
            ],
            [
              [
                7,
                9
              ],
              "440901/500000"
            ],
            [
              [
                0,
                9
              ],
              "-440901/500000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 4298
          }
        }
      },
      "coordinate": {
        "low": [
          "139/1000",
          "108013/1000000",
          "392911/500000",
          "120187/1000000",
          "554403/1000000",
          "13857/20000",
          "94833/500000",
          "307011/500000",
          "10639/62500",
          "302093/1000000",
          "812299/1000000",
          "348971/1000000",
          "13719/40000"
        ],
        "high": [
          "284539/500000",
          "530503/1000000",
          "440901/500000",
          "29549/62500",
          "907/1000",
          "440901/500000",
          "268457/500000",
          "1/1",
          "313393/500000",
          "713191/1000000",
          "178907/200000",
          "356597/500000",
          "657463/1000000"
        ],
        "steps": [
          {
            "factor": 48,
            "target": "f",
            "old": [
              "617/1000",
              "440901/500000"
            ],
            "lines": [
              [
                "307011/500000",
                "-325579679143/500000000000"
              ],
              [
                "307011/500000",
                "-5273959/11337500"
              ],
              [
                "1/1",
                "-13857/20000"
              ]
            ],
            "raw": [
              "13857/20000",
              "440901/500000"
            ],
            "new": [
              "13857/20000",
              "440901/500000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "120187/1000000",
              "497859/1000000"
            ],
            "lines": [
              [
                "-227289/1000000",
                "1706901987/62500000000"
              ],
              [
                "-59099/500000",
                "-951077783/31250000000"
              ],
              [
                "-227289/1000000",
                "113151123/1000000000"
              ],
              [
                "-59099/500000",
                "7102793/500000000"
              ]
            ],
            "raw": [
              "120187/1000000",
              "37717041/75763000"
            ],
            "new": [
              "120187/1000000",
              "49783/100000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "33083/62500",
              "907/1000"
            ],
            "lines": [
              [
                "227289/1000000",
                "-120317183043/1000000000000"
              ],
              [
                "59099/500000",
                "-53602931513/500000000000"
              ],
              [
                "227289/1000000",
                "-20615128287/100000000000"
              ],
              [
                "59099/500000",
                "-7592125517/50000000000"
              ]
            ],
            "raw": [
              "40105727681/75763000000",
              "907/1000"
            ],
            "new": [
              "529357/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 88,
            "target": "b",
            "old": [
              "108013/1000000",
              "535/907"
            ],
            "lines": [
              [
                "-202997/250000",
                "78295514867/250000000000"
              ],
              [
                "-202997/250000",
                "50220330297/125000000000"
              ],
              [
                "-907/1000",
                "386598877/1000000000"
              ],
              [
                "-907/1000",
                "242772207/500000000"
              ]
            ],
            "raw": [
              "108013/1000000",
              "242772207/453500000"
            ],
            "new": [
              "108013/1000000",
              "535331/1000000"
            ]
          },
          {
            "factor": 96,
            "target": "y",
            "old": [
              "202997/250000",
              "907/1000"
            ],
            "lines": [
              [
                "-13857/20000",
                "13112156579/31250000000"
              ],
              [
                "-440901/500000",
                "33475605967/62500000000"
              ],
              [
                "-13857/20000",
                "11997/20000"
              ],
              [
                "-440901/500000",
                "394401/500000"
              ],
              [
                "-13857/20000",
                "76056777697/125000000000"
              ],
              [
                "-440901/500000",
                "18111872663/25000000000"
              ]
            ],
            "raw": [
              "202997/250000",
              "131467/146967"
            ],
            "new": [
              "202997/250000",
              "178907/200000"
            ]
          },
          {
            "factor": 114,
            "target": "v",
            "old": [
              "171239/500000",
              "683603/1000000"
            ],
            "lines": [
              [
                "-13857/20000",
                "33958870339/125000000000"
              ],
              [
                "-440901/500000",
                "48461455957/125000000000"
              ],
              [
                "-13857/20000",
                "204423/500000"
              ],
              [
                "-440901/500000",
                "298899/500000"
              ],
              [
                "-13857/20000",
                "26119683693/62500000000"
              ],
              [
                "-440901/500000",
                "16685488251/31250000000"
              ]
            ],
            "raw": [
              "171239/500000",
              "33211/48989"
            ],
            "new": [
              "171239/500000",
              "84741/125000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "168727/500000",
              "358173/500000"
            ],
            "lines": [
              [
                "-202997/250000",
                "173567989219/500000000000"
              ],
              [
                "-202997/250000",
                "49794411731/125000000000"
              ],
              [
                "-202997/250000",
                "257357971743/500000000000"
              ],
              [
                "-202997/250000",
                "35370953681/62500000000"
              ],
              [
                "-178907/200000",
                "82184190671/200000000000"
              ],
              [
                "-178907/200000",
                "235572701771/500000000000"
              ],
              [
                "-178907/200000",
                "578500918403/1000000000000"
              ],
              [
                "-178907/200000",
                "63872536859/100000000000"
              ],
              [
                "-202997/250000",
                "40920851297/250000000000"
              ],
              [
                "-202997/250000",
                "22288518081/125000000000"
              ],
              [
                "-202997/250000",
                "123851105609/250000000000"
              ],
              [
                "-202997/250000",
                "63753645237/125000000000"
              ],
              [
                "-178907/200000",
                "45493676021/200000000000"
              ],
              [
                "-178907/200000",
                "125549127171/500000000000"
              ],
              [
                "-178907/200000",
                "559189397353/1000000000000"
              ],
              [
                "-178907/200000",
                "58281927159/100000000000"
              ]
            ],
            "raw": [
              "168727/500000",
              "63872536859/89453500000"
            ],
            "new": [
              "168727/500000",
              "714031/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "112913/500000",
              "357571/500000"
            ],
            "lines": [
              [
                "-328761/500000",
                "73936351237/250000000000"
              ],
              [
                "-328761/500000",
                "96115064617/250000000000"
              ],
              [
                "-328761/500000",
                "2031764241/6250000000"
              ],
              [
                "-328761/500000",
                "53674319103/125000000000"
              ],
              [
                "-328761/500000",
                "2863643749/7812500000"
              ],
              [
                "-328761/500000",
                "28453828337/62500000000"
              ],
              [
                "-328761/500000",
                "72959594373/200000000000"
              ],
              [
                "-328761/500000",
                "469110246129/1000000000000"
              ],
              [
                "-40259/125000",
                "30922301/488281250"
              ],
              [
                "-40259/125000",
                "2770618049/31250000000"
              ],
              [
                "-40259/125000",
                "4633287303/50000000000"
              ],
              [
                "-40259/125000",
                "33398517981/250000000000"
              ],
              [
                "-40259/125000",
                "33532466843/250000000000"
              ],
              [
                "-40259/125000",
                "39865193123/250000000000"
              ],
              [
                "-40259/125000",
                "26476287873/200000000000"
              ],
              [
                "-40259/125000",
                "173309765229/1000000000000"
              ]
            ],
            "raw": [
              "112913/500000",
              "52123360681/73058000000"
            ],
            "new": [
              "112913/500000",
              "178363/250000"
            ]
          },
          {
            "factor": 144,
            "target": "a",
            "old": [
              "139/1000",
              "641777/1000000"
            ],
            "lines": [
              [
                "-109377/200000",
                "-16354485133/250000000000"
              ],
              [
                "-81997/125000",
                "2895330297/125000000000"
              ],
              [
                "-59259/1000000",
                "-16354485133/250000000000"
              ],
              [
                "-3367/20000",
                "2895330297/125000000000"
              ],
              [
                "-109377/200000",
                "-326593123/200000000000"
              ],
              [
                "-81997/125000",
                "9595275207/100000000000"
              ],
              [
                "-59259/1000000",
                "-326593123/200000000000"
              ],
              [
                "-3367/20000",
                "9595275207/100000000000"
              ]
            ],
            "raw": [
              "139/1000",
              "1370753601/2405000000"
            ],
            "new": [
              "139/1000",
              "14249/25000"
            ]
          },
          {
            "factor": 144,
            "target": "c",
            "old": [
              "772711/1000000",
              "440901/500000"
            ],
            "lines": [
              [
                "168247/250000",
                "-330730093/500000000"
              ],
              [
                "60507/250000",
                "-7051727663/12500000000"
              ],
              [
                "168247/250000",
                "-148420043/250000000"
              ],
              [
                "60507/250000",
                "-1788818113/6250000000"
              ],
              [
                "151107/200000",
                "-330730093/500000000"
              ],
              [
                "12983/40000",
                "-7051727663/12500000000"
              ],
              [
                "151107/200000",
                "-148420043/250000000"
              ],
              [
                "12983/40000",
                "-1788818113/6250000000"
              ]
            ],
            "raw": [
              "148420043/188883750",
              "440901/500000"
            ],
            "new": [
              "392887/500000",
              "440901/500000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "202997/250000",
              "178907/200000"
            ],
            "lines": [
              [
                "392887/500000",
                "-192670693/250000000"
              ],
              [
                "392887/500000",
                "-6324987263/6250000000"
              ],
              [
                "440901/500000",
                "-98003833/125000000"
              ],
              [
                "440901/500000",
                "-3333531503/3125000000"
              ],
              [
                "392887/500000",
                "-351451379/500000000"
              ],
              [
                "392887/500000",
                "-9175883089/12500000000"
              ],
              [
                "440901/500000",
                "-14325013/20000000"
              ],
              [
                "440901/500000",
                "-394401383/500000000"
              ]
            ],
            "raw": [
              "14325013/17636040",
              "178907/200000"
            ],
            "new": [
              "812257/1000000",
              "178907/200000"
            ]
          },
          {
            "factor": 146,
            "target": "v",
            "old": [
              "171239/500000",
              "84741/125000"
            ],
            "lines": [
              [
                "392887/500000",
                "-533307/1562500"
              ],
              [
                "392887/500000",
                "-10439931/19531250"
              ],
              [
                "440901/500000",
                "-88666093/250000000"
              ],
              [
                "440901/500000",
                "-3682853663/6250000000"
              ],
              [
                "392887/500000",
                "-288972277/1000000000"
              ],
              [
                "392887/500000",
                "-7997266007/25000000000"
              ],
              [
                "440901/500000",
                "-302320169/1000000000"
              ],
              [
                "440901/500000",
                "-9365568979/25000000000"
              ]
            ],
            "raw": [
              "302320169/881802000",
              "84741/125000"
            ],
            "new": [
              "342843/1000000",
              "84741/125000"
            ]
          },
          {
            "factor": 150,
            "target": "g",
            "old": [
              "118963/1000000",
              "134233/250000"
            ],
            "lines": [
              [
                "-1/1",
                "6641689141/15625000000"
              ],
              [
                "-1/1",
                "985839521/1953125000"
              ],
              [
                "-1/1",
                "7144254223/15625000000"
              ],
              [
                "-1/1",
                "268457/500000"
              ],
              [
                "-1/1",
                "18942659497/50000000000"
              ],
              [
                "-1/1",
                "10269406453/25000000000"
              ],
              [
                "-1/1",
                "25249546591/50000000000"
              ]
            ],
            "raw": [
              "118963/1000000",
              "268457/500000"
            ],
            "new": [
              "118963/1000000",
              "268457/500000"
            ]
          },
          {
            "factor": 164,
            "target": "u",
            "old": [
              "168727/500000",
              "714031/1000000"
            ],
            "lines": [
              [
                "307011/500000",
                "-332570857327/1000000000000"
              ],
              [
                "307011/500000",
                "-448450525249/1000000000000"
              ],
              [
                "1/1",
                "-374261499041/1000000000000"
              ],
              [
                "1/1",
                "-655076513967/1000000000000"
              ],
              [
                "307011/500000",
                "-148188660611/500000000000"
              ],
              [
                "307011/500000",
                "-134534568557/500000000000"
              ],
              [
                "1/1",
                "-42258495367/125000000000"
              ],
              [
                "1/1",
                "-59461890729/125000000000"
              ]
            ],
            "raw": [
              "42258495367/125000000000",
              "714031/1000000"
            ],
            "new": [
              "338067/1000000",
              "714031/1000000"
            ]
          },
          {
            "factor": 208,
            "target": "z",
            "old": [
              "10639/62500",
              "133513/200000"
            ],
            "lines": [
              [
                "-1/1",
                "92438039791/1000000000000"
              ],
              [
                "-1/1",
                "472129745311/1000000000000"
              ],
              [
                "-1/1",
                "1073153/7812500"
              ],
              [
                "-1/1",
                "6463191119/12500000000"
              ],
              [
                "-1/1",
                "127794069149/500000000000"
              ],
              [
                "-1/1",
                "227579840429/500000000000"
              ],
              [
                "-1/1",
                "3580859/7812500"
              ],
              [
                "-1/1",
                "4112009341/6250000000"
              ]
            ],
            "raw": [
              "10639/62500",
              "4112009341/6250000000"
            ],
            "new": [
              "10639/62500",
              "328961/500000"
            ]
          },
          {
            "factor": 1453,
            "target": "g",
            "old": [
              "118963/1000000",
              "268457/500000"
            ],
            "lines": [
              [
                "42988662324121/113375000000000",
                "-24474370634799/500000000000000"
              ],
              [
                "3987534133841/113375000000000",
                "-2270188999479/500000000000000"
              ],
              [
                "42988662324121/113375000000000",
                "-33913194106113/500000000000000"
              ],
              [
                "3987534133841/113375000000000",
                "-3145713585273/500000000000000"
              ],
              [
                "155837995971/226750000000",
                "-88721924949/1000000000000"
              ],
              [
                "1945893489761/5668750000000",
                "-1107839041959/25000000000000"
              ],
              [
                "155837995971/226750000000",
                "-122938559163/1000000000000"
              ],
              [
                "1945893489761/5668750000000",
                "-1535089953033/25000000000000"
              ]
            ],
            "raw": [
              "93462004563/723986044000",
              "268457/500000"
            ],
            "new": [
              "129093/1000000",
              "268457/500000"
            ]
          },
          {
            "factor": 1651,
            "target": "g",
            "old": [
              "129093/1000000",
              "268457/500000"
            ],
            "lines": [
              [
                "103988392738157653/250000000000000000",
                "-19722555035901/250000000000000"
              ],
              [
                "9645735483469613/250000000000000000",
                "-1829420995221/250000000000000"
              ],
              [
                "103988392738157653/250000000000000000",
                "-20783113379223/250000000000000"
              ],
              [
                "9645735483469613/250000000000000000",
                "-1927796063583/250000000000000"
              ],
              [
                "376967829479703/500000000000000",
                "-71496140751/500000000000"
              ],
              [
                "4707062874258173/12500000000000000",
                "-892746816741/12500000000000"
              ],
              [
                "376967829479703/500000000000000",
                "-75340765773/500000000000"
              ],
              [
                "4707062874258173/12500000000000000",
                "-940753278543/12500000000000"
              ]
            ],
            "raw": [
              "83038491000/437825585923",
              "268457/500000"
            ],
            "new": [
              "189661/1000000",
              "268457/500000"
            ]
          },
          {
            "factor": 2337,
            "target": "v",
            "old": [
              "342843/1000000",
              "84741/125000"
            ],
            "lines": [
              [
                "-475670713831103/1000000000000000",
                "283970869320988229471/1000000000000000000000"
              ],
              [
                "-175767564943989/1000000000000000",
                "104931556146423673173/1000000000000000000000"
              ],
              [
                "-543065720784547/1000000000000000",
                "324205044257515792579/1000000000000000000000"
              ],
              [
                "-243162571897433/1000000000000000",
                "145165731082951236281/1000000000000000000000"
              ],
              [
                "-475670713831103/1000000000000000",
                "62547169575159144421/200000000000000000000"
              ],
              [
                "-175767564943989/1000000000000000",
                "23112130662448240023/200000000000000000000"
              ],
              [
                "-543065720784547/1000000000000000",
                "71409112944522950129/200000000000000000000"
              ],
              [
                "-243162571897433/1000000000000000",
                "31974074031812045731/200000000000000000000"
              ]
            ],
            "raw": [
              "342843/1000000",
              "92284993641061/140365324600000"
            ],
            "new": [
              "342843/1000000",
              "657463/1000000"
            ]
          },
          {
            "factor": 2925,
            "target": "x",
            "old": [
              "112913/500000",
              "178363/250000"
            ],
            "lines": [
              [
                "104718837411/250000000000",
                "-15817171638363/125000000000000"
              ],
              [
                "9713489931/250000000000",
                "-1467166187523/125000000000000"
              ],
              [
                "104718837411/250000000000",
                "-2043431351253/15625000000000"
              ],
              [
                "9713489931/250000000000",
                "-189544215213/15625000000000"
              ],
              [
                "104718837411/250000000000",
                "-3789484917357/25000000000000"
              ],
              [
                "9713489931/250000000000",
                "-351504318597/25000000000000"
              ],
              [
                "104718837411/250000000000",
                "-9738851879223/62500000000000"
              ],
              [
                "9713489931/250000000000",
                "-903354563583/62500000000000"
              ],
              [
                "379615761/500000000",
                "-57338753913/250000000000"
              ],
              [
                "4740126651/12500000000",
                "-715968575283/6250000000000"
              ],
              [
                "379615761/500000000",
                "-7407633303/31250000000"
              ],
              [
                "4740126651/12500000000",
                "-92496475773/781250000000"
              ],
              [
                "379615761/500000000",
                "-13737243807/50000000000"
              ],
              [
                "4740126651/12500000000",
                "-171532065237/1250000000000"
              ],
              [
                "379615761/500000000",
                "-35304265773/125000000000"
              ],
              [
                "4740126651/12500000000",
                "-440831778543/3125000000000"
              ]
            ],
            "raw": [
              "22198511/73483500",
              "178363/250000"
            ],
            "new": [
              "37761/125000",
              "178363/250000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "120187/1000000",
              "49783/100000"
            ],
            "lines": [
              [
                "-107113/500000",
                "10201016341/500000000000"
              ],
              [
                "-59099/500000",
                "-15215530657/500000000000"
              ],
              [
                "-107113/500000",
                "50651491/500000000"
              ],
              [
                "-59099/500000",
                "7102793/500000000"
              ]
            ],
            "raw": [
              "120187/1000000",
              "50651491/107113000"
            ],
            "new": [
              "120187/1000000",
              "5911/12500"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "529357/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "107113/500000",
                "-59373590131/500000000000"
              ],
              [
                "59099/500000",
                "-53602931513/500000000000"
              ],
              [
                "107113/500000",
                "-1214394943/6250000000"
              ],
              [
                "59099/500000",
                "-930584189/6250000000"
              ]
            ],
            "raw": [
              "59373590131/107113000000",
              "907/1000"
            ],
            "new": [
              "554307/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 88,
            "target": "b",
            "old": [
              "108013/1000000",
              "535331/1000000"
            ],
            "lines": [
              [
                "-812257/1000000",
                "162000215959/500000000000"
              ],
              [
                "-812257/1000000",
                "200999923557/500000000000"
              ],
              [
                "-178907/200000",
                "38865234509/100000000000"
              ],
              [
                "-178907/200000",
                "47455275207/100000000000"
              ]
            ],
            "raw": [
              "108013/1000000",
              "47455275207/89453500000"
            ],
            "new": [
              "108013/1000000",
              "530503/1000000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "338067/1000000",
              "714031/1000000"
            ],
            "lines": [
              [
                "-812257/1000000",
                "18971103631/50000000000"
              ],
              [
                "-812257/1000000",
                "106124740053/250000000000"
              ],
              [
                "-812257/1000000",
                "65056917559/125000000000"
              ],
              [
                "-812257/1000000",
                "17672882127/31250000000"
              ],
              [
                "-178907/200000",
                "1734664007/3906250000"
              ],
              [
                "-178907/200000",
                "31065741573/62500000000"
              ],
              [
                "-178907/200000",
                "146276813411/250000000000"
              ],
              [
                "-178907/200000",
                "31904256651/50000000000"
              ],
              [
                "-812257/1000000",
                "2272447833/10000000000"
              ],
              [
                "-812257/1000000",
                "60527335383/250000000000"
              ],
              [
                "-812257/1000000",
                "7776584263/15625000000"
              ],
              [
                "-812257/1000000",
                "64070743883/125000000000"
              ],
              [
                "-178907/200000",
                "36487087059/125000000000"
              ],
              [
                "-178907/200000",
                "39332780811/125000000000"
              ],
              [
                "-178907/200000",
                "140588326501/250000000000"
              ],
              [
                "-178907/200000",
                "29255942801/50000000000"
              ]
            ],
            "raw": [
              "338067/1000000",
              "31904256651/44726750000"
            ],
            "new": [
              "338067/1000000",
              "142663/200000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "37761/125000",
              "178363/250000"
            ],
            "lines": [
              [
                "-657157/1000000",
                "295703202681/1000000000000"
              ],
              [
                "-657157/1000000",
                "384399916809/1000000000000"
              ],
              [
                "-657157/1000000",
                "64978807671/200000000000"
              ],
              [
                "-657157/1000000",
                "429137345139/1000000000000"
              ],
              [
                "-657157/1000000",
                "73230677589/200000000000"
              ],
              [
                "-657157/1000000",
                "454850102073/1000000000000"
              ],
              [
                "-657157/1000000",
                "14578782747/40000000000"
              ],
              [
                "-657157/1000000",
                "468712875459/1000000000000"
              ],
              [
                "-342537/1000000",
                "77718735681/1000000000000"
              ],
              [
                "-342537/1000000",
                "106967371569/1000000000000"
              ],
              [
                "-342537/1000000",
                "21381914271/200000000000"
              ],
              [
                "-342537/1000000",
                "151704799899/1000000000000"
              ],
              [
                "-342537/1000000",
                "29633784189/200000000000"
              ],
              [
                "-342537/1000000",
                "177417556833/1000000000000"
              ],
              [
                "-342537/1000000",
                "5859404067/40000000000"
              ],
              [
                "-342537/1000000",
                "191280330219/1000000000000"
              ]
            ],
            "raw": [
              "37761/125000",
              "468712875459/657157000000"
            ],
            "new": [
              "37761/125000",
              "178311/250000"
            ]
          },
          {
            "factor": 144,
            "target": "a",
            "old": [
              "139/1000",
              "14249/25000"
            ],
            "lines": [
              [
                "-241843/500000",
                "-27299784041/500000000000"
              ],
              [
                "-289857/500000",
                "11699923557/500000000000"
              ],
              [
                "-7253/100000",
                "-27299784041/500000000000"
              ],
              [
                "-84279/500000",
                "11699923557/500000000000"
              ],
              [
                "-241843/500000",
                "1005234509/100000000000"
              ],
              [
                "-289857/500000",
                "9595275207/100000000000"
              ],
              [
                "-7253/100000",
                "1005234509/100000000000"
              ],
              [
                "-84279/500000",
                "9595275207/100000000000"
              ]
            ],
            "raw": [
              "139/1000",
              "3198425069/5618600000"
            ],
            "new": [
              "139/1000",
              "569257/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "c",
            "old": [
              "392887/500000",
              "440901/500000"
            ],
            "lines": [
              [
                "673257/1000000",
                "-81357471/125000000"
              ],
              [
                "243/1000",
                "-65110536423/125000000000"
              ],
              [
                "673257/1000000",
                "-148427271/250000000"
              ],
              [
                "243/1000",
                "-71707715073/250000000000"
              ],
              [
                "151107/200000",
                "-81357471/125000000"
              ],
              [
                "162639/500000",
                "-65110536423/125000000000"
              ],
              [
                "151107/200000",
                "-148427271/250000000"
              ],
              [
                "162639/500000",
                "-71707715073/250000000000"
              ]
            ],
            "raw": [
              "49475757/62961250",
              "440901/500000"
            ],
            "new": [
              "196453/250000",
              "440901/500000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "812257/1000000",
              "178907/200000"
            ],
            "lines": [
              [
                "196453/250000",
                "-190021909/250000000"
              ],
              [
                "196453/250000",
                "-242053318267/250000000000"
              ],
              [
                "440901/500000",
                "-386715123/500000000"
              ],
              [
                "440901/500000",
                "-511428126249/500000000000"
              ],
              [
                "196453/250000",
                "-87867119/125000000"
              ],
              [
                "196453/250000",
                "-91769980247/125000000000"
              ],
              [
                "440901/500000",
                "-358139781/500000000"
              ],
              [
                "440901/500000",
                "-394401410703/500000000000"
              ]
            ],
            "raw": [
              "39793309/48989000",
              "178907/200000"
            ],
            "new": [
              "81229/100000",
              "178907/200000"
            ]
          },
          {
            "factor": 146,
            "target": "v",
            "old": [
              "342843/1000000",
              "657463/1000000"
            ],
            "lines": [
              [
                "196453/250000",
                "-68247311/200000000"
              ],
              [
                "196453/250000",
                "-106776395093/200000000000"
              ],
              [
                "440901/500000",
                "-70915833/200000000"
              ],
              [
                "440901/500000",
                "-117704990979/200000000000"
              ],
              [
                "196453/250000",
                "-289077083/1000000000"
              ],
              [
                "196453/250000",
                "-320269424729/1000000000000"
              ],
              [
                "440901/500000",
                "-302419693/1000000000"
              ],
              [
                "440901/500000",
                "-374912404159/1000000000000"
              ]
            ],
            "raw": [
              "302419693/881802000",
              "657463/1000000"
            ],
            "new": [
              "85739/250000",
              "657463/1000000"
            ]
          },
          {
            "factor": 164,
            "target": "u",
            "old": [
              "338067/1000000",
              "142663/200000"
            ],
            "lines": [
              [
                "307011/500000",
                "-166279325929/500000000000"
              ],
              [
                "307011/500000",
                "-223540663099/500000000000"
              ],
              [
                "1/1",
                "-93562323393/250000000000"
              ],
              [
                "1/1",
                "-162960953283/250000000000"
              ],
              [
                "307011/500000",
                "-298587807267/1000000000000"
              ],
              [
                "307011/500000",
                "-280234419177/1000000000000"
              ],
              [
                "1/1",
                "-340278448981/1000000000000"
              ],
              [
                "1/1",
                "-484996906111/1000000000000"
              ]
            ],
            "raw": [
              "340278448981/1000000000000",
              "142663/200000"
            ],
            "new": [
              "170139/500000",
              "142663/200000"
            ]
          },
          {
            "factor": 208,
            "target": "z",
            "old": [
              "10639/62500",
              "328961/500000"
            ],
            "lines": [
              [
                "-1/1",
                "124767540927/1000000000000"
              ],
              [
                "-1/1",
                "9468431361/20000000000"
              ],
              [
                "-1/1",
                "1497341/7812500"
              ],
              [
                "-1/1",
                "540313675123/1000000000000"
              ],
              [
                "-1/1",
                "134492071299/500000000000"
              ],
              [
                "-1/1",
                "4682301357/10000000000"
              ],
              [
                "-1/1",
                "3580859/7812500"
              ],
              [
                "-1/1",
                "328797972551/500000000000"
              ]
            ],
            "raw": [
              "10639/62500",
              "328797972551/500000000000"
            ],
            "new": [
              "10639/62500",
              "164399/250000"
            ]
          },
          {
            "factor": 394,
            "target": "u",
            "old": [
              "170139/500000",
              "142663/200000"
            ],
            "lines": [
              [
                "81229/100000",
                "-4885827607/10000000000"
              ],
              [
                "81229/100000",
                "-16203225337/40000000000"
              ],
              [
                "81229/100000",
                "-20120669513/50000000000"
              ],
              [
                "81229/100000",
                "-100138108583/200000000000"
              ],
              [
                "81229/100000",
                "-143110123459/250000000000"
              ],
              [
                "81229/100000",
                "-312035619469/1000000000000"
              ],
              [
                "81229/100000",
                "-121567780849/250000000000"
              ],
              [
                "81229/100000",
                "-407645528959/1000000000000"
              ],
              [
                "178907/200000",
                "-4885827607/10000000000"
              ],
              [
                "178907/200000",
                "-16203225337/40000000000"
              ],
              [
                "178907/200000",
                "-20120669513/50000000000"
              ],
              [
                "178907/200000",
                "-100138108583/200000000000"
              ],
              [
                "178907/200000",
                "-143110123459/250000000000"
              ],
              [
                "178907/200000",
                "-312035619469/1000000000000"
              ],
              [
                "178907/200000",
                "-121567780849/250000000000"
              ],
              [
                "178907/200000",
                "-407645528959/1000000000000"
              ],
              [
                "81229/100000",
                "-21984828269/40000000000"
              ],
              [
                "81229/100000",
                "-9322371589/20000000000"
              ],
              [
                "81229/100000",
                "-66115054771/200000000000"
              ],
              [
                "81229/100000",
                "-42885242651/100000000000"
              ],
              [
                "81229/100000",
                "-762789879953/1000000000000"
              ],
              [
                "81229/100000",
                "-251192502793/500000000000"
              ],
              [
                "81229/100000",
                "-543744447083/1000000000000"
              ],
              [
                "81229/100000",
                "-232559426323/500000000000"
              ],
              [
                "178907/200000",
                "-21984828269/40000000000"
              ],
              [
                "178907/200000",
                "-9322371589/20000000000"
              ],
              [
                "178907/200000",
                "-66115054771/200000000000"
              ],
              [
                "178907/200000",
                "-42885242651/100000000000"
              ],
              [
                "178907/200000",
                "-762789879953/1000000000000"
              ],
              [
                "178907/200000",
                "-251192502793/500000000000"
              ],
              [
                "178907/200000",
                "-543744447083/1000000000000"
              ],
              [
                "178907/200000",
                "-232559426323/500000000000"
              ]
            ],
            "raw": [
              "312035619469/894535000000",
              "142663/200000"
            ],
            "new": [
              "43603/125000",
              "142663/200000"
            ]
          },
          {
            "factor": 1651,
            "target": "g",
            "old": [
              "189661/1000000",
              "268457/500000"
            ],
            "lines": [
              [
                "103988392738157653/250000000000000000",
                "-9861487358919/125000000000000"
              ],
              [
                "3919852470768619/100000000000000000",
                "-371729714937/50000000000000"
              ],
              [
                "103988392738157653/250000000000000000",
                "-20783113379223/250000000000000"
              ],
              [
                "3919852470768619/100000000000000000",
                "-783421458729/100000000000000"
              ],
              [
                "376967829479703/500000000000000",
                "-35748831069/250000000000"
              ],
              [
                "188590306357230789/500000000000000000",
                "-17884504925847/250000000000000"
              ],
              [
                "376967829479703/500000000000000",
                "-75340765773/500000000000"
              ],
              [
                "188590306357230789/500000000000000000",
                "-37691646308199/500000000000000"
              ]
            ],
            "raw": [
              "83040258000/437825585923",
              "268457/500000"
            ],
            "new": [
              "37933/200000",
              "268457/500000"
            ]
          },
          {
            "factor": 2065,
            "target": "z",
            "old": [
              "10639/62500",
              "164399/250000"
            ],
            "lines": [
              [
                "-13153052523773709/62500000000000000",
                "1050855940924594236711/25000000000000000000000"
              ],
              [
                "-13153052523773709/62500000000000000",
                "46427912039017819316709/500000000000000000000000"
              ],
              [
                "-13710994398773709/62500000000000000",
                "1081877509174594236711/25000000000000000000000"
              ],
              [
                "-13710994398773709/62500000000000000",
                "48968810582512819316709/500000000000000000000000"
              ],
              [
                "-13153052523773709/62500000000000000",
                "4089746363239877346819/62500000000000000000000"
              ],
              [
                "-13153052523773709/62500000000000000",
                "10881480309055876449081/250000000000000000000000"
              ],
              [
                "-13710994398773709/62500000000000000",
                "4167300283864877346819/62500000000000000000000"
              ],
              [
                "-13710994398773709/62500000000000000",
                "12151929580803376449081/250000000000000000000000"
              ],
              [
                "-35398689373028889/100000000000000000",
                "1549650676315529909061/25000000000000000000000"
              ],
              [
                "-35398689373028889/100000000000000000",
                "8728293285692254853037/50000000000000000000000"
              ],
              [
                "-36291396373028889/100000000000000000",
                "1580672244565529909061/25000000000000000000000"
              ],
              [
                "-36291396373028889/100000000000000000",
                "8982383140041754853037/50000000000000000000000"
              ],
              [
                "-35398689373028889/100000000000000000",
                "2668366600858608263847/31250000000000000000000"
              ],
              [
                "-35398689373028889/100000000000000000",
                "62617981436016482111823/500000000000000000000000"
              ],
              [
                "-36291396373028889/100000000000000000",
                "2707143561171108263847/31250000000000000000000"
              ],
              [
                "-36291396373028889/100000000000000000",
                "65158879979511482111823/500000000000000000000000"
              ],
              [
                "-13153052523773709/62500000000000000",
                "6552503476635665412237/100000000000000000000000"
              ],
              [
                "-13153052523773709/62500000000000000",
                "29086655301852130821837/250000000000000000000000"
              ],
              [
                "-13710994398773709/62500000000000000",
                "6676589749635665412237/100000000000000000000000"
              ],
              [
                "-13710994398773709/62500000000000000",
                "30357104573599630821837/250000000000000000000000"
              ],
              [
                "-13153052523773709/62500000000000000",
                "32983742063193491660073/250000000000000000000000"
              ],
              [
                "-13153052523773709/62500000000000000",
                "13753118459644929360939/125000000000000000000000"
              ],
              [
                "-13710994398773709/62500000000000000",
                "33293957745693491660073/250000000000000000000000"
              ],
              [
                "-13710994398773709/62500000000000000",
                "14388343095518679360939/125000000000000000000000"
              ],
              [
                "-35398689373028889/100000000000000000",
                "8547682418199408101637/100000000000000000000000"
              ],
              [
                "-35398689373028889/100000000000000000",
                "19805666284321798171467/100000000000000000000000"
              ],
              [
                "-36291396373028889/100000000000000000",
                "8671768691199408101637/100000000000000000000000"
              ],
              [
                "-36291396373028889/100000000000000000",
                "20313845993020798171467/100000000000000000000000"
              ],
              [
                "-35398689373028889/100000000000000000",
                "37971689417102848383573/250000000000000000000000"
              ],
              [
                "-35398689373028889/100000000000000000",
                "95867494656484446657417/500000000000000000000000"
              ],
              [
                "-36291396373028889/100000000000000000",
                "38281905099602848383573/250000000000000000000000"
              ],
              [
                "-36291396373028889/100000000000000000",
                "98408393199979446657417/500000000000000000000000"
              ]
            ],
            "raw": [
              "10639/62500",
              "10994580687731163886691/17537403365031612000000"
            ],
            "new": [
              "10639/62500",
              "313461/500000"
            ]
          },
          {
            "factor": 2925,
            "target": "x",
            "old": [
              "37761/125000",
              "178311/250000"
            ],
            "lines": [
              [
                "104718837411/250000000000",
                "-31634762958663/250000000000000"
              ],
              [
                "3947386653/100000000000",
                "-1192475433849/100000000000000"
              ],
              [
                "104718837411/250000000000",
                "-2043431351253/15625000000000"
              ],
              [
                "3947386653/100000000000",
                "-77027341419/6250000000000"
              ],
              [
                "104718837411/250000000000",
                "-37895268855507/250000000000000"
              ],
              [
                "3947386653/100000000000",
                "-1428465806061/100000000000000"
              ],
              [
                "104718837411/250000000000",
                "-9738851879223/62500000000000"
              ],
              [
                "3947386653/100000000000",
                "-367106958729/25000000000000"
              ],
              [
                "379615761/500000000",
                "-114679029213/500000000000"
              ],
              [
                "189915019443/500000000000",
                "-57371880464919/500000000000000"
              ],
              [
                "379615761/500000000",
                "-7407633303/31250000000"
              ],
              [
                "189915019443/500000000000",
                "-3705907307589/31250000000000"
              ],
              [
                "379615761/500000000",
                "-137373959457/500000000000"
              ],
              [
                "189915019443/500000000000",
                "-68725750776291/500000000000000"
              ],
              [
                "379615761/500000000",
                "-35304265773/125000000000"
              ],
              [
                "189915019443/500000000000",
                "-17662096808199/125000000000000"
              ]
            ],
            "raw": [
              "44397611/146967000",
              "178311/250000"
            ],
            "new": [
              "75523/250000",
              "178311/250000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "120187/1000000",
              "5911/12500"
            ],
            "lines": [
              [
                "-53547/250000",
                "6431476929/250000000000"
              ],
              [
                "-59099/500000",
                "-13741010607/500000000000"
              ],
              [
                "-53547/250000",
                "25317129/250000000"
              ],
              [
                "-59099/500000",
                "7102793/500000000"
              ]
            ],
            "raw": [
              "120187/1000000",
              "8439043/17849000"
            ],
            "new": [
              "120187/1000000",
              "472803/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "554307/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "53547/250000",
                "-29685653289/250000000000"
              ],
              [
                "59099/500000",
                "-53602931513/500000000000"
              ],
              [
                "53547/250000",
                "-48567182241/250000000000"
              ],
              [
                "59099/500000",
                "-74442184497/500000000000"
              ]
            ],
            "raw": [
              "9895217763/17849000000",
              "907/1000"
            ],
            "new": [
              "34649/62500",
              "907/1000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "43603/125000",
              "142663/200000"
            ],
            "lines": [
              [
                "-81229/100000",
                "9485313829/25000000000"
              ],
              [
                "-81229/100000",
                "21223196191/50000000000"
              ],
              [
                "-81229/100000",
                "65052449809/125000000000"
              ],
              [
                "-81229/100000",
                "141367742283/250000000000"
              ],
              [
                "-178907/200000",
                "4440416611/10000000000"
              ],
              [
                "-178907/200000",
                "49698772931/100000000000"
              ],
              [
                "-178907/200000",
                "146262176603/250000000000"
              ],
              [
                "-178907/200000",
                "318997387311/500000000000"
              ],
              [
                "-81229/100000",
                "2840990339/12500000000"
              ],
              [
                "-81229/100000",
                "4842821417/20000000000"
              ],
              [
                "-81229/100000",
                "15549889203/31250000000"
              ],
              [
                "-81229/100000",
                "256229149113/500000000000"
              ],
              [
                "-178907/200000",
                "14595416753/50000000000"
              ],
              [
                "-178907/200000",
                "15733243817/50000000000"
              ],
              [
                "-178907/200000",
                "140556390609/250000000000"
              ],
              [
                "-178907/200000",
                "146245525929/250000000000"
              ]
            ],
            "raw": [
              "43603/125000",
              "318997387311/447267500000"
            ],
            "new": [
              "43603/125000",
              "356607/500000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "75523/250000",
              "178311/250000"
            ],
            "lines": [
              [
                "-164261/250000",
                "14882790747/50000000000"
              ],
              [
                "-164261/250000",
                "96584353227/250000000000"
              ],
              [
                "-164261/250000",
                "32595023331/100000000000"
              ],
              [
                "-164261/250000",
                "215086094259/500000000000"
              ],
              [
                "-164261/250000",
                "4575693273/12500000000"
              ],
              [
                "-164261/250000",
                "14210533119/31250000000"
              ],
              [
                "-164261/250000",
                "18219031233/50000000000"
              ],
              [
                "-164261/250000",
                "117150644967/250000000000"
              ],
              [
                "-342537/1000000",
                "7974963999/100000000000"
              ],
              [
                "-342537/1000000",
                "54502255647/500000000000"
              ],
              [
                "-342537/1000000",
                "2701101459/25000000000"
              ],
              [
                "-342537/1000000",
                "19104910863/125000000000"
              ],
              [
                "-342537/1000000",
                "14814928689/100000000000"
              ],
              [
                "-342537/1000000",
                "88702079097/500000000000"
              ],
              [
                "-342537/1000000",
                "14647444971/100000000000"
              ],
              [
                "-342537/1000000",
                "95634839127/500000000000"
              ]
            ],
            "raw": [
              "75523/250000",
              "117150644967/164261000000"
            ],
            "new": [
              "75523/250000",
              "713199/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "a",
            "old": [
              "139/1000",
              "569257/1000000"
            ],
            "lines": [
              [
                "-12093/25000",
                "-1363569263/25000000000"
              ],
              [
                "-57971/100000",
                "1171447329/50000000000"
              ],
              [
                "-72613/1000000",
                "-1363569263/25000000000"
              ],
              [
                "-168603/1000000",
                "1171447329/50000000000"
              ],
              [
                "-12093/25000",
                "504316871/50000000000"
              ],
              [
                "-57971/100000",
                "9595275207/100000000000"
              ],
              [
                "-72613/1000000",
                "504316871/50000000000"
              ],
              [
                "-168603/1000000",
                "9595275207/100000000000"
              ]
            ],
            "raw": [
              "139/1000",
              "3198425069/5620100000"
            ],
            "new": [
              "139/1000",
              "113821/200000"
            ]
          },
          {
            "factor": 144,
            "target": "c",
            "old": [
              "196453/250000",
              "440901/500000"
            ],
            "lines": [
              [
                "67329/100000",
                "-162714803/250000000"
              ],
              [
                "48637/200000",
                "-26046396617/50000000000"
              ],
              [
                "67329/100000",
                "-593715339/1000000000"
              ],
              [
                "48637/200000",
                "-57392976621/200000000000"
              ],
              [
                "151107/200000",
                "-162714803/250000000"
              ],
              [
                "32543/100000",
                "-26046396617/50000000000"
              ],
              [
                "151107/200000",
                "-593715339/1000000000"
              ],
              [
                "32543/100000",
                "-57392976621/200000000000"
              ]
            ],
            "raw": [
              "197905113/251845000",
              "440901/500000"
            ],
            "new": [
              "785821/1000000",
              "440901/500000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "81229/100000",
              "178907/200000"
            ],
            "lines": [
              [
                "785821/1000000",
                "-760088331/1000000000"
              ],
              [
                "785821/1000000",
                "-193628518509/200000000000"
              ],
              [
                "440901/500000",
                "-77342969/100000000"
              ],
              [
                "440901/500000",
                "-20455317191/20000000000"
              ],
              [
                "785821/1000000",
                "-351472229/500000000"
              ],
              [
                "785821/1000000",
                "-73417954331/100000000000"
              ],
              [
                "440901/500000",
                "-716285817/1000000000"
              ],
              [
                "440901/500000",
                "-157760562063/200000000000"
              ]
            ],
            "raw": [
              "79587313/97978000",
              "178907/200000"
            ],
            "new": [
              "812297/1000000",
              "178907/200000"
            ]
          },
          {
            "factor": 146,
            "target": "v",
            "old": [
              "85739/250000",
              "657463/1000000"
            ],
            "lines": [
              [
                "785821/1000000",
                "-339742583/1000000000"
              ],
              [
                "785821/1000000",
                "-105539435537/200000000000"
              ],
              [
                "440901/500000",
                "-176541971/500000000"
              ],
              [
                "440901/500000",
                "-58232044469/100000000000"
              ],
              [
                "785821/1000000",
                "-289092373/1000000000"
              ],
              [
                "785821/1000000",
                "-64064201347/200000000000"
              ],
              [
                "440901/500000",
                "-75608433/250000000"
              ],
              [
                "440901/500000",
                "-18747213687/50000000000"
              ]
            ],
            "raw": [
              "8400937/24494500",
              "657463/1000000"
            ],
            "new": [
              "85743/250000",
              "657463/1000000"
            ]
          },
          {
            "factor": 394,
            "target": "u",
            "old": [
              "43603/125000",
              "356607/500000"
            ],
            "lines": [
              [
                "812297/1000000",
                "-122146670447/250000000000"
              ],
              [
                "812297/1000000",
                "-405112333493/1000000000000"
              ],
              [
                "812297/1000000",
                "-100602637877/250000000000"
              ],
              [
                "812297/1000000",
                "-500651264663/1000000000000"
              ],
              [
                "812297/1000000",
                "-71555124849/125000000000"
              ],
              [
                "812297/1000000",
                "-156073737131/500000000000"
              ],
              [
                "812297/1000000",
                "-15195777141/31250000000"
              ],
              [
                "812297/1000000",
                "-50960800679/125000000000"
              ],
              [
                "178907/200000",
                "-122146670447/250000000000"
              ],
              [
                "178907/200000",
                "-405112333493/1000000000000"
              ],
              [
                "178907/200000",
                "-100602637877/250000000000"
              ],
              [
                "178907/200000",
                "-500651264663/1000000000000"
              ],
              [
                "178907/200000",
                "-71555124849/125000000000"
              ],
              [
                "178907/200000",
                "-156073737131/500000000000"
              ],
              [
                "178907/200000",
                "-15195777141/31250000000"
              ],
              [
                "178907/200000",
                "-50960800679/125000000000"
              ],
              [
                "812297/1000000",
                "-549622780577/1000000000000"
              ],
              [
                "812297/1000000",
                "-233074216141/500000000000"
              ],
              [
                "812297/1000000",
                "-330577347707/1000000000000"
              ],
              [
                "812297/1000000",
                "-214409030431/500000000000"
              ],
              [
                "812297/1000000",
                "-381383274559/500000000000"
              ],
              [
                "812297/1000000",
                "-125618256147/250000000000"
              ],
              [
                "812297/1000000",
                "-67965139531/125000000000"
              ],
              [
                "812297/1000000",
                "-29071415823/62500000000"
              ],
              [
                "178907/200000",
                "-549622780577/1000000000000"
              ],
              [
                "178907/200000",
                "-233074216141/500000000000"
              ],
              [
                "178907/200000",
                "-330577347707/1000000000000"
              ],
              [
                "178907/200000",
                "-214409030431/500000000000"
              ],
              [
                "178907/200000",
                "-381383274559/500000000000"
              ],
              [
                "178907/200000",
                "-125618256147/250000000000"
              ],
              [
                "178907/200000",
                "-67965139531/125000000000"
              ],
              [
                "178907/200000",
                "-29071415823/62500000000"
              ]
            ],
            "raw": [
              "156073737131/447267500000",
              "356607/500000"
            ],
            "new": [
              "348949/1000000",
              "356607/500000"
            ]
          },
          {
            "factor": 1651,
            "target": "g",
            "old": [
              "37933/200000",
              "268457/500000"
            ],
            "lines": [
              [
                "103988392738157653/250000000000000000",
                "-39446148232383/500000000000000"
              ],
              [
                "19665811842903391/500000000000000000",
                "-7459876132701/1000000000000000"
              ],
              [
                "103988392738157653/250000000000000000",
                "-20783113379223/250000000000000"
              ],
              [
                "19665811842903391/500000000000000000",
                "-3930407870181/500000000000000"
              ],
              [
                "376967829479703/500000000000000",
                "-142996044933/1000000000000"
              ],
              [
                "37731371169258217/100000000000000000",
                "-14312724920187/200000000000000"
              ],
              [
                "376967829479703/500000000000000",
                "-75340765773/500000000000"
              ],
              [
                "37731371169258217/100000000000000000",
                "-7540989376947/100000000000000"
              ]
            ],
            "raw": [
              "83040676500/437825585923",
              "268457/500000"
            ],
            "new": [
              "94833/500000",
              "268457/500000"
            ]
          },
          {
            "factor": 2065,
            "target": "z",
            "old": [
              "10639/62500",
              "313461/500000"
            ],
            "lines": [
              [
                "-105249451446977547/500000000000000000",
                "656913418407540303333/15625000000000000000000"
              ],
              [
                "-105249451446977547/500000000000000000",
                "46433706935254163975301/500000000000000000000000"
              ],
              [
                "-109712567946977547/500000000000000000",
                "676300080704415303333/15625000000000000000000"
              ],
              [
                "-109712567946977547/500000000000000000",
                "48973688850986663975301/500000000000000000000000"
              ],
              [
                "-105249451446977547/500000000000000000",
                "1022598180066433689207/15625000000000000000000"
              ],
              [
                "-105249451446977547/500000000000000000",
                "21782767698679226548149/500000000000000000000000"
              ],
              [
                "-109712567946977547/500000000000000000",
                "1041984842363308689207/15625000000000000000000"
              ],
              [
                "-109712567946977547/500000000000000000",
                "24322749614411726548149/500000000000000000000000"
              ],
              [
                "-88486989128829921/250000000000000000",
                "3873867326965766088957/62500000000000000000000"
              ],
              [
                "-88486989128829921/250000000000000000",
                "21813123441461877867819/125000000000000000000000"
              ],
              [
                "-90718547378829921/250000000000000000",
                "3951413976153266088957/62500000000000000000000"
              ],
              [
                "-90718547378829921/250000000000000000",
                "22448118920395002867819/125000000000000000000000"
              ],
              [
                "-88486989128829921/250000000000000000",
                "5336606373601339632453/62500000000000000000000"
              ],
              [
                "-88486989128829921/250000000000000000",
                "15650388632318143511031/125000000000000000000000"
              ],
              [
                "-90718547378829921/250000000000000000",
                "5414153022788839632453/62500000000000000000000"
              ],
              [
                "-90718547378829921/250000000000000000",
                "16285384111251268511031/125000000000000000000000"
              ],
              [
                "-105249451446977547/500000000000000000",
                "16383046175400810891237/250000000000000000000000"
              ],
              [
                "-105249451446977547/500000000000000000",
                "58178569897014496051119/500000000000000000000000"
              ],
              [
                "-109712567946977547/500000000000000000",
                "16693232772150810891237/250000000000000000000000"
              ],
              [
                "-109712567946977547/500000000000000000",
                "60718551812746996051119/500000000000000000000000"
              ],
              [
                "-105249451446977547/500000000000000000",
                "32985481735540248972573/250000000000000000000000"
              ],
              [
                "-105249451446977547/500000000000000000",
                "55030589407633846438671/500000000000000000000000"
              ],
              [
                "-109712567946977547/500000000000000000",
                "33295668332290248972573/250000000000000000000000"
              ],
              [
                "-109712567946977547/500000000000000000",
                "57570571323366346438671/500000000000000000000000"
              ],
              [
                "-88486989128829921/250000000000000000",
                "21367900788743230393737/250000000000000000000000"
              ],
              [
                "-88486989128829921/250000000000000000",
                "49498678363803921773547/250000000000000000000000"
              ],
              [
                "-90718547378829921/250000000000000000",
                "21678087385493230393737/250000000000000000000000"
              ],
              [
                "-90718547378829921/250000000000000000",
                "50768669321670171773547/250000000000000000000000"
              ],
              [
                "-88486989128829921/250000000000000000",
                "37970336348882668475073/250000000000000000000000"
              ],
              [
                "-88486989128829921/250000000000000000",
                "47924688119113596967323/250000000000000000000000"
              ],
              [
                "-90718547378829921/250000000000000000",
                "38280522945632668475073/250000000000000000000000"
              ],
              [
                "-90718547378829921/250000000000000000",
                "49194679076979846967323/250000000000000000000000"
              ]
            ],
            "raw": [
              "10639/62500",
              "10995160578513416324191/17541575241162924500000"
            ],
            "new": [
              "10639/62500",
              "313403/500000"
            ]
          },
          {
            "factor": 2925,
            "target": "x",
            "old": [
              "75523/250000",
              "713199/1000000"
            ],
            "lines": [
              [
                "104718837411/250000000000",
                "-63269724714033/500000000000000"
              ],
              [
                "19803950217/500000000000",
                "-11965282555251/1000000000000000"
              ],
              [
                "104718837411/250000000000",
                "-2043431351253/15625000000000"
              ],
              [
                "19803950217/500000000000",
                "-386444442591/31250000000000"
              ],
              [
                "104718837411/250000000000",
                "-75790736507721/500000000000000"
              ],
              [
                "19803950217/500000000000",
                "-14333199353787/1000000000000000"
              ],
              [
                "104718837411/250000000000",
                "-9738851879223/62500000000000"
              ],
              [
                "19803950217/500000000000",
                "-1841767370181/125000000000000"
              ],
              [
                "379615761/500000000",
                "-229358779083/1000000000000"
              ],
              [
                "37996407279/100000000000",
                "-22956922442037/200000000000000"
              ],
              [
                "379615761/500000000",
                "-7407633303/31250000000"
              ],
              [
                "37996407279/100000000000",
                "-741443008617/6250000000000"
              ],
              [
                "379615761/500000000",
                "-274748639571/1000000000000"
              ],
              [
                "37996407279/100000000000",
                "-27500073181869/200000000000000"
              ],
              [
                "379615761/500000000",
                "-35304265773/125000000000"
              ],
              [
                "37996407279/100000000000",
                "-3533665876947/25000000000000"
              ]
            ],
            "raw": [
              "88795501/293934000",
              "713199/1000000"
            ],
            "new": [
              "302093/1000000",
              "713199/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "120187/1000000",
              "472803/1000000"
            ],
            "lines": [
              [
                "-214179/1000000",
                "1608588171/62500000000"
              ],
              [
                "-59099/500000",
                "-858528749/31250000000"
              ],
              [
                "-214179/1000000",
                "101260353/1000000000"
              ],
              [
                "-59099/500000",
                "7102793/500000000"
              ]
            ],
            "raw": [
              "120187/1000000",
              "1088821/2303000"
            ],
            "new": [
              "120187/1000000",
              "29549/62500"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "34649/62500",
              "907/1000"
            ],
            "lines": [
              [
                "214179/1000000",
                "-118741531473/1000000000000"
              ],
              [
                "59099/500000",
                "-53602931513/500000000000"
              ],
              [
                "214179/1000000",
                "-12141275271/62500000000"
              ],
              [
                "59099/500000",
                "-4652566351/31250000000"
              ]
            ],
            "raw": [
              "1276790661/2303000000",
              "907/1000"
            ],
            "new": [
              "554403/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "348949/1000000",
              "356607/500000"
            ],
            "lines": [
              [
                "-812297/1000000",
                "379414881221/1000000000000"
              ],
              [
                "-812297/1000000",
                "212230582023/500000000000"
              ],
              [
                "-812297/1000000",
                "520412728253/1000000000000"
              ],
              [
                "-812297/1000000",
                "282729505539/500000000000"
              ],
              [
                "-178907/200000",
                "444039228619/1000000000000"
              ],
              [
                "-178907/200000",
                "248489398461/500000000000"
              ],
              [
                "-178907/200000",
                "585037075651/1000000000000"
              ],
              [
                "-178907/200000",
                "318988321977/500000000000"
              ],
              [
                "-812297/1000000",
                "227286778773/1000000000000"
              ],
              [
                "-812297/1000000",
                "242147900927/1000000000000"
              ],
              [
                "-812297/1000000",
                "497573762851/1000000000000"
              ],
              [
                "-812297/1000000",
                "102486977001/200000000000"
              ],
              [
                "-178907/200000",
                "291911126171/1000000000000"
              ],
              [
                "-178907/200000",
                "314665533803/1000000000000"
              ],
              [
                "-178907/200000",
                "562198110249/1000000000000"
              ],
              [
                "-178907/200000",
                "584952517881/1000000000000"
              ]
            ],
            "raw": [
              "348949/1000000",
              "318988321977/447267500000"
            ],
            "new": [
              "348949/1000000",
              "356597/500000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "302093/1000000",
              "713199/1000000"
            ],
            "lines": [
              [
                "-164257/250000",
                "297670600397/1000000000000"
              ],
              [
                "-164257/250000",
                "386350497797/1000000000000"
              ],
              [
                "-164257/250000",
                "65190466167/200000000000"
              ],
              [
                "-164257/250000",
                "430171262811/1000000000000"
              ],
              [
                "-164257/250000",
                "22877529977/62500000000"
              ],
              [
                "-164257/250000",
                "56840047129/125000000000"
              ],
              [
                "-164257/250000",
                "569324109/1562500000"
              ],
              [
                "-164257/250000",
                "58573295217/125000000000"
              ],
              [
                "-342537/1000000",
                "79775511047/1000000000000"
              ],
              [
                "-342537/1000000",
                "21806341003/200000000000"
              ],
              [
                "-342537/1000000",
                "21611448297/200000000000"
              ],
              [
                "-342537/1000000",
                "152852470029/1000000000000"
              ],
              [
                "-342537/1000000",
                "74072695141/500000000000"
              ],
              [
                "-342537/1000000",
                "709606337/4000000000"
              ],
              [
                "-342537/1000000",
                "14647234041/100000000000"
              ],
              [
                "-342537/1000000",
                "95633784477/500000000000"
              ]
            ],
            "raw": [
              "302093/1000000",
              "58573295217/82128500000"
            ],
            "new": [
              "302093/1000000",
              "713191/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "a",
            "old": [
              "139/1000",
              "113821/200000"
            ],
            "lines": [
              [
                "-30233/62500",
                "-54529959163/1000000000000"
              ],
              [
                "-579709/1000000",
                "11717559597/500000000000"
              ],
              [
                "-7263/100000",
                "-54529959163/1000000000000"
              ],
              [
                "-168611/1000000",
                "11717559597/500000000000"
              ],
              [
                "-30233/62500",
                "2018877647/200000000000"
              ],
              [
                "-579709/1000000",
                "9595275207/100000000000"
              ],
              [
                "-7263/100000",
                "2018877647/200000000000"
              ],
              [
                "-168611/1000000",
                "9595275207/100000000000"
              ]
            ],
            "raw": [
              "139/1000",
              "9595275207/16861100000"
            ],
            "new": [
              "139/1000",
              "284539/500000"
            ]
          },
          {
            "factor": 144,
            "target": "c",
            "old": [
              "785821/1000000",
              "440901/500000"
            ],
            "lines": [
              [
                "673297/1000000",
                "-650859073/1000000000"
              ],
              [
                "243219/1000000",
                "-260467759873/500000000000"
              ],
              [
                "673297/1000000",
                "-593716451/1000000000"
              ],
              [
                "243219/1000000",
                "-143494346051/500000000000"
              ],
              [
                "151107/200000",
                "-650859073/1000000000"
              ],
              [
                "325457/1000000",
                "-260467759873/500000000000"
              ],
              [
                "151107/200000",
                "-593716451/1000000000"
              ],
              [
                "325457/1000000",
                "-143494346051/500000000000"
              ]
            ],
            "raw": [
              "593716451/755535000",
              "440901/500000"
            ],
            "new": [
              "392911/500000",
              "440901/500000"
            ]
          },
          {
            "factor": 144,
            "target": "y",
            "old": [
              "812297/1000000",
              "178907/200000"
            ],
            "lines": [
              [
                "392911/500000",
                "-760088331/1000000000"
              ],
              [
                "392911/500000",
                "-484064765931/500000000000"
              ],
              [
                "440901/500000",
                "-773429551/1000000000"
              ],
              [
                "440901/500000",
                "-511374819151/500000000000"
              ],
              [
                "392911/500000",
                "-702945709/1000000000"
              ],
              [
                "392911/500000",
                "-367091352109/500000000000"
              ],
              [
                "440901/500000",
                "-716286929/1000000000"
              ],
              [
                "440901/500000",
                "-394401405329/500000000000"
              ]
            ],
            "raw": [
              "716286929/881802000",
              "178907/200000"
            ],
            "new": [
              "812299/1000000",
              "178907/200000"
            ]
          },
          {
            "factor": 146,
            "target": "v",
            "old": [
              "85743/250000",
              "657463/1000000"
            ],
            "lines": [
              [
                "392911/500000",
                "-339725347/1000000000"
              ],
              [
                "392911/500000",
                "-263807406547/500000000000"
              ],
              [
                "440901/500000",
                "-353066567/1000000000"
              ],
              [
                "440901/500000",
                "-291117459767/500000000000"
              ],
              [
                "392911/500000",
                "-72273823/250000000"
              ],
              [
                "392911/500000",
                "-40041374623/125000000000"
              ],
              [
                "440901/500000",
                "-9451141/31250000"
              ],
              [
                "440901/500000",
                "-5858610991/15625000000"
              ]
            ],
            "raw": [
              "18902282/55112625",
              "657463/1000000"
            ],
            "new": [
              "13719/40000",
              "657463/1000000"
            ]
          },
          {
            "factor": 394,
            "target": "u",
            "old": [
              "348949/1000000",
              "356597/500000"
            ],
            "lines": [
              [
                "812299/1000000",
                "-122146867/250000000"
              ],
              [
                "812299/1000000",
                "-2531987061/6250000000"
              ],
              [
                "812299/1000000",
                "-1609640281/4000000000"
              ],
              [
                "812299/1000000",
                "-50064418623/100000000000"
              ],
              [
                "812299/1000000",
                "-11448823651/20000000000"
              ],
              [
                "812299/1000000",
                "-156083719333/500000000000"
              ],
              [
                "812299/1000000",
                "-607829731/1250000000"
              ],
              [
                "812299/1000000",
                "-12740427973/31250000000"
              ],
              [
                "178907/200000",
                "-122146867/250000000"
              ],
              [
                "178907/200000",
                "-2531987061/6250000000"
              ],
              [
                "178907/200000",
                "-1609640281/4000000000"
              ],
              [
                "178907/200000",
                "-50064418623/100000000000"
              ],
              [
                "178907/200000",
                "-11448823651/20000000000"
              ],
              [
                "178907/200000",
                "-156083719333/500000000000"
              ],
              [
                "178907/200000",
                "-607829731/1250000000"
              ],
              [
                "178907/200000",
                "-12740427973/31250000000"
              ],
              [
                "812299/1000000",
                "-3435145619/6250000000"
              ],
              [
                "812299/1000000",
                "-582692201/1250000000"
              ],
              [
                "812299/1000000",
                "-33057786617/100000000000"
              ],
              [
                "812299/1000000",
                "-8576239643/20000000000"
              ],
              [
                "812299/1000000",
                "-381381200707/500000000000"
              ],
              [
                "812299/1000000",
                "-50248865753/100000000000"
              ],
              [
                "812299/1000000",
                "-16991155267/31250000000"
              ],
              [
                "812299/1000000",
                "-2907167993/6250000000"
              ],
              [
                "178907/200000",
                "-3435145619/6250000000"
              ],
              [
                "178907/200000",
                "-582692201/1250000000"
              ],
              [
                "178907/200000",
                "-33057786617/100000000000"
              ],
              [
                "178907/200000",
                "-8576239643/20000000000"
              ],
              [
                "178907/200000",
                "-381381200707/500000000000"
              ],
              [
                "178907/200000",
                "-50248865753/100000000000"
              ],
              [
                "178907/200000",
                "-16991155267/31250000000"
              ],
              [
                "178907/200000",
                "-2907167993/6250000000"
              ]
            ],
            "raw": [
              "156083719333/447267500000",
              "356597/500000"
            ],
            "new": [
              "348971/1000000",
              "356597/500000"
            ]
          },
          {
            "factor": 2065,
            "target": "z",
            "old": [
              "10639/62500",
              "313403/500000"
            ],
            "lines": [
              [
                "-105253829792172213/500000000000000000",
                "420439000317968851581/10000000000000000000000"
              ],
              [
                "-105253829792172213/500000000000000000",
                "2321735765720286435171/25000000000000000000000"
              ],
              [
                "-109716899792172213/500000000000000000",
                "432846334917968851581/10000000000000000000000"
              ],
              [
                "-109716899792172213/500000000000000000",
                "2448727513193286435171/25000000000000000000000"
              ],
              [
                "-105253829792172213/500000000000000000",
                "654481350210333775029/10000000000000000000000"
              ],
              [
                "-105253829792172213/500000000000000000",
                "5446565815757842380147/125000000000000000000000"
              ],
              [
                "-109716899792172213/500000000000000000",
                "666888684810333775029/10000000000000000000000"
              ],
              [
                "-109716899792172213/500000000000000000",
                "6081524553122842380147/125000000000000000000000"
              ],
              [
                "-88485043358286891/250000000000000000",
                "619810194567805213401/10000000000000000000000"
              ],
              [
                "-88485043358286891/250000000000000000",
                "43623429686215162393401/250000000000000000000000"
              ],
              [
                "-90716578358286891/250000000000000000",
                "632217529167805213401/10000000000000000000000"
              ],
              [
                "-90716578358286891/250000000000000000",
                "44893347160945162393401/250000000000000000000000"
              ],
              [
                "-88485043358286891/250000000000000000",
                "853852544460170136849/10000000000000000000000"
              ],
              [
                "-88485043358286891/250000000000000000",
                "6259840732105596560397/50000000000000000000000"
              ],
              [
                "-90716578358286891/250000000000000000",
                "866259879060170136849/10000000000000000000000"
              ],
              [
                "-90716578358286891/250000000000000000",
                "6513824227051596560397/50000000000000000000000"
              ],
              [
                "-105253829792172213/500000000000000000",
                "16383350470391840178237/250000000000000000000000"
              ],
              [
                "-105253829792172213/500000000000000000",
                "14544866559822741620211/125000000000000000000000"
              ],
              [
                "-109716899792172213/500000000000000000",
                "16693533835391840178237/250000000000000000000000"
              ],
              [
                "-109716899792172213/500000000000000000",
                "15179825297187741620211/125000000000000000000000"
              ],
              [
                "-105253829792172213/500000000000000000",
                "32985786030531278259573/250000000000000000000000"
              ],
              [
                "-105253829792172213/500000000000000000",
                "13758441953394309322071/125000000000000000000000"
              ],
              [
                "-109716899792172213/500000000000000000",
                "33295969395531278259573/250000000000000000000000"
              ],
              [
                "-109716899792172213/500000000000000000",
                "14393400690759309322071/125000000000000000000000"
              ],
              [
                "-88485043358286891/250000000000000000",
                "21367630326637749223737/250000000000000000000000"
              ],
              [
                "-88485043358286891/250000000000000000",
                "49495805148657781282113/250000000000000000000000"
              ],
              [
                "-90716578358286891/250000000000000000",
                "21677813691637749223737/250000000000000000000000"
              ],
              [
                "-90716578358286891/250000000000000000",
                "50765722623387781282113/250000000000000000000000"
              ],
              [
                "-88485043358286891/250000000000000000",
                "37970065886777187305073/250000000000000000000000"
              ],
              [
                "-88485043358286891/250000000000000000",
                "47922955935800916685833/250000000000000000000000"
              ],
              [
                "-90716578358286891/250000000000000000",
                "38280249251777187305073/250000000000000000000000"
              ],
              [
                "-90716578358286891/250000000000000000",
                "49192873410530916685833/250000000000000000000000"
              ]
            ],
            "raw": [
              "10639/62500",
              "10995262010177092753191/17542304965362035500000"
            ],
            "new": [
              "10639/62500",
              "313393/500000"
            ]
          }
        ]
      }
    },
    {
      "id": 9,
      "assumptions": [
        "AGO+",
        "AGP+",
        "DGP-",
        "AFG-",
        "BFG+",
        "FGP+"
      ],
      "initial_box": {
        "low": [
          "139/1000",
          "108013/1000000",
          "392911/500000",
          "120187/1000000",
          "554403/1000000",
          "13857/20000",
          "94833/500000",
          "307011/500000",
          "10639/62500",
          "302093/1000000",
          "812299/1000000",
          "348971/1000000",
          "13719/40000"
        ],
        "high": [
          "284539/500000",
          "530503/1000000",
          "440901/500000",
          "29549/62500",
          "907/1000",
          "440901/500000",
          "268457/500000",
          "1",
          "313393/500000",
          "713191/1000000",
          "178907/200000",
          "356597/500000",
          "657463/1000000"
        ]
      },
      "known": {
        "ABC": 1,
        "ABD": 1,
        "ABE": 1,
        "ABF": 1,
        "ABH": 1,
        "ACD": 1,
        "ACE": 1,
        "ACF": 1,
        "ACH": 1,
        "ADE": 1,
        "ADF": 1,
        "ADH": 1,
        "AEF": 1,
        "AEH": 1,
        "AFH": 1,
        "BCD": 1,
        "BCE": 1,
        "BCF": 1,
        "BCH": 1,
        "BDE": 1,
        "BDF": 1,
        "BDH": 1,
        "BEF": 1,
        "BEH": 1,
        "BFH": 1,
        "CDE": 1,
        "CDF": 1,
        "CDH": 1,
        "CEF": 1,
        "CEH": 1,
        "CFH": 1,
        "DEF": 1,
        "DEH": 1,
        "DFH": 1,
        "EFH": 1,
        "ABG": 1,
        "BCG": 1,
        "CDG": 1,
        "DEG": 1,
        "EFG": 1,
        "FGH": -1,
        "AGH": 1,
        "CGH": -1,
        "ABO": 1,
        "BCO": 1,
        "CDO": 1,
        "DEO": 1,
        "EFO": 1,
        "FHO": 1,
        "AHO": -1,
        "CHO": -1,
        "CEO": 1,
        "ABP": 1,
        "BCP": 1,
        "CDP": 1,
        "DEP": 1,
        "EFP": 1,
        "FHP": 1,
        "AHP": -1,
        "CHP": -1,
        "CEP": 1,
        "HOP": -1,
        "EHP": 1,
        "ACG": 1,
        "BGH": 1,
        "DGO": -1,
        "COP": 1,
        "EOP": 1,
        "FOP": 1,
        "AGO": 1,
        "AGP": 1,
        "DGP": -1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DFG": 1,
        "DGH": -1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "GHO": -1,
        "GHP": -1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "CFP": 1,
        "DFP": 1,
        "ADO": 1,
        "ADP": 1,
        "BEO": 1,
        "BDO": 1,
        "BDP": 1,
        "AFG": -1,
        "BFG": 1,
        "BDG": 1,
        "BEG": 1,
        "FGP": 1,
        "AFP": -1,
        "BGP": -1,
        "AOP": -1,
        "GOP": -1,
        "AEG": -1,
        "BOP": -1,
        "FGO": -1,
        "EGO": -1,
        "BFO": 1,
        "DHO": -1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "ABCGO"
          ],
          "target": "ACO",
          "sign": 1,
          "deps": [
            "ABC",
            "AGO",
            "ABG",
            "ABO",
            "ACG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ABCGP"
          ],
          "target": "ACP",
          "sign": 1,
          "deps": [
            "ABC",
            "AGP",
            "ABG",
            "ABP",
            "ACG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAEGH"
          ],
          "target": "CEG",
          "sign": 1,
          "deps": [
            "ACE",
            "CGH",
            "ACG",
            "CEH",
            "ACH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAFGH"
          ],
          "target": "CFG",
          "sign": 1,
          "deps": [
            "ACF",
            "CGH",
            "ACG",
            "CFH",
            "ACH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAGHO"
          ],
          "target": "CGO",
          "sign": -1,
          "deps": [
            "ACG",
            "CHO",
            "ACH",
            "ACO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAGHP"
          ],
          "target": "CGP",
          "sign": -1,
          "deps": [
            "ACG",
            "CHP",
            "ACH",
            "ACP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "FCDEG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "CDF",
            "EFG",
            "CEF",
            "CFG",
            "DEF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFH"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "CDG",
            "FGH",
            "CFG",
            "CGH",
            "DFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCEFH"
          ],
          "target": "EGH",
          "sign": -1,
          "deps": [
            "CEG",
            "FGH",
            "CFG",
            "CGH",
            "EFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HABCO"
          ],
          "target": "BHO",
          "sign": -1,
          "deps": [
            "ABH",
            "CHO",
            "ACH",
            "AHO",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HABCP"
          ],
          "target": "BHP",
          "sign": -1,
          "deps": [
            "ABH",
            "CHP",
            "ACH",
            "AHP",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HACGO"
          ],
          "target": "GHO",
          "sign": -1,
          "deps": [
            "ACH",
            "AGH",
            "CHO",
            "AHO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HACGP"
          ],
          "target": "GHP",
          "sign": -1,
          "deps": [
            "ACH",
            "AGH",
            "CHP",
            "AHP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OCDEP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDO",
            "EOP",
            "CEO",
            "COP",
            "DEO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OCEFP"
          ],
          "target": "CFO",
          "sign": 1,
          "deps": [
            "CEO",
            "FOP",
            "EOP",
            "COP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ODEFP"
          ],
          "target": "DFO",
          "sign": 1,
          "deps": [
            "DEO",
            "FOP",
            "EOP",
            "DOP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PCEFO"
          ],
          "target": "CFP",
          "sign": 1,
          "deps": [
            "CEP",
            "FOP",
            "EOP",
            "COP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PDEFO"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FOP",
            "EOP",
            "DOP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GO",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACO",
            "CDO",
            "DGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GP",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACP",
            "CDP",
            "DGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "BCE",
            "OP",
            "EBC",
            [
              "fixed",
              "BCE"
            ]
          ],
          "target": "BEO",
          "sign": 1,
          "deps": [
            "BCO",
            "CEO",
            "BCP",
            "CEP",
            "EOP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BADEO"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "ABD",
            "BEO",
            "ABE",
            "ABO",
            "BDE"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DABCP"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "ABD",
            "CDP",
            "ACD",
            "ADP",
            "BCD"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BADFG"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "ABD",
            "BFG",
            "ABF",
            "ABG",
            "BDF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BAEFG"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "BFG",
            "ABF",
            "ABG",
            "BEF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "FACGP"
          ],
          "target": "AFP",
          "sign": -1,
          "deps": [
            "ACF",
            "FGP",
            "AFG",
            "CFP",
            "CFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GABFP"
          ],
          "target": "BGP",
          "sign": -1,
          "deps": [
            "ABG",
            "FGP",
            "AFG",
            "AGP",
            "BFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PACFO"
          ],
          "target": "AOP",
          "sign": -1,
          "deps": [
            "ACP",
            "FOP",
            "AFP",
            "COP",
            "CFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PAFGO"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "AFP",
            "AGP",
            "FOP",
            "AOP",
            "FGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "AEF",
            "GP",
            "AEF",
            [
              "HCF2-AEF-cap1"
            ]
          ],
          "target": "AEG",
          "sign": -1,
          "deps": [
            "EFG",
            "AFG",
            "EFP",
            "AFP",
            "AGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ABO",
            "GP",
            "BOA",
            [
              "area",
              "ABO",
              "U_ABO",
              "70517117129677/113375000000000"
            ]
          ],
          "target": "BOP",
          "sign": -1,
          "deps": [
            "AGO",
            "ABG",
            "AOP",
            "ABP",
            "BGP"
          ],
          "area_stage": 7
        },
        {
          "rule": [
            "cap",
            "CFG",
            [
              "P"
            ],
            "O",
            [
              "area",
              "CFG",
              "T0199",
              "635181/1000000"
            ]
          ],
          "target": "FGO",
          "sign": -1,
          "deps": [
            "CFO",
            "CGO"
          ],
          "area_stage": 7
        },
        {
          "rule": [
            "ray",
            "EFO",
            "GP",
            "OEF",
            [
              "area",
              "EFO",
              "U_EFO",
              "23136838411/50000000000"
            ]
          ],
          "target": "EGO",
          "sign": -1,
          "deps": [
            "EFG",
            "FGO",
            "EFP",
            "FOP",
            "GOP"
          ],
          "area_stage": 7
        },
        {
          "rule": [
            "plu",
            "FBCGO"
          ],
          "target": "BFO",
          "sign": 1,
          "deps": [
            "BCF",
            "FGO",
            "BFG",
            "CFO",
            "CFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "CDH",
            "OP",
            "DHC",
            [
              "area",
              "CDH",
              "U_CDH",
              "611990125749/1000000000000"
            ]
          ],
          "target": "DHO",
          "sign": -1,
          "deps": [
            "CHO",
            "CDO",
            "CHP",
            "CDP",
            "DOP"
          ],
          "area_stage": 8
        }
      ],
      "initial": {
        "L_ABP": {
          "triangle": "ABP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ABP",
            "points": [
              "G"
            ]
          }
        },
        "L_ACG": {
          "triangle": "ACG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACG",
            "points": []
          }
        },
        "L_ACO": {
          "triangle": "ACO",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACO",
            "points": [
              "G",
              "P"
            ]
          }
        },
        "L_ACP": {
          "triangle": "ACP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACP",
            "points": [
              "G"
            ]
          }
        },
        "L_AEG": {
          "triangle": "AEG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EAG",
            "points": []
          }
        },
        "L_AGP": {
          "triangle": "AGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "AGP",
            "points": []
          }
        },
        "L_AOP": {
          "triangle": "AOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "OAP",
            "points": []
          }
        },
        "L_BCP": {
          "triangle": "BCP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BCP",
            "points": []
          }
        },
        "L_BOP": {
          "triangle": "BOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "OBP",
            "points": []
          }
        },
        "L_CDE": {
          "triangle": "CDE",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CDE",
            "points": []
          }
        },
        "L_CEG": {
          "triangle": "CEG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CEG",
            "points": []
          }
        },
        "L_CGP": {
          "triangle": "CGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GCP",
            "points": []
          }
        },
        "L_CHP": {
          "triangle": "CHP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HCP",
            "points": []
          }
        },
        "L_COP": {
          "triangle": "COP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "COP",
            "points": []
          }
        },
        "L_FGP": {
          "triangle": "FGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FGP",
            "points": []
          }
        },
        "L_FHO": {
          "triangle": "FHO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FHO",
            "points": []
          }
        },
        "L_FOP": {
          "triangle": "FOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FOP",
            "points": []
          }
        },
        "L_HOP": {
          "triangle": "HOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "OHP",
            "points": []
          }
        },
        "U_ACE": {
          "triangle": "ACE",
          "side": "hi",
          "value": "216764573861/250000000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACE",
            "used": [
              0,
              2,
              4
            ],
            "values": [
              "232716408133/500000000000",
              "252651598103/500000000000",
              "11122751113/20000000000",
              "11150921243/20000000000",
              "11601739/15625000",
              "12753499/15625000",
              "208656135471/250000000000",
              "216764573861/250000000000"
            ],
            "cell": "CA"
          }
        },
        "U_ACO": {
          "triangle": "ACO",
          "side": "hi",
          "value": "76536582307/100000000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACO",
            "used": [
              0,
              2,
              9,
              10
            ],
            "values": [
              "90760723229/250000000000",
              "24149202781/62500000000",
              "106916437727/250000000000",
              "57362889221/125000000000",
              "285542046889/500000000000",
              "7462371507/12500000000",
              "31016703607/50000000000",
              "314113357889/500000000000",
              "63570695177/100000000000",
              "317853665899/500000000000",
              "82701572319/125000000000",
              "69284957377/100000000000",
              "173212485353/250000000000",
              "346424976899/500000000000",
              "70822320107/100000000000",
              "76536582307/100000000000"
            ],
            "cell": "CA"
          }
        },
        "U_ACP": {
          "triangle": "ACP",
          "side": "hi",
          "value": "278157838163/500000000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACP",
            "used": [
              0,
              2,
              11,
              12
            ],
            "values": [
              "-196589717/250000000000",
              "653593971/31250000000",
              "103242468763/500000000000",
              "4175900229/20000000000",
              "114093151733/500000000000",
              "4567450639/20000000000",
              "5188440169/20000000000",
              "16752912263/62500000000",
              "69132447127/250000000000",
              "5579990579/20000000000",
              "227963300293/500000000000",
              "237658946301/500000000000",
              "241900542451/500000000000",
              "252844339663/500000000000",
              "253276798793/500000000000",
              "278157838163/500000000000"
            ],
            "cell": "CA"
          }
        },
        "U_BCO": {
          "triangle": "BCO",
          "side": "hi",
          "value": "138436268623/200000000000",
          "witness": {
            "kind": "vertices",
            "signed": "BCO",
            "used": [
              1,
              2,
              9,
              10
            ],
            "values": [
              "207395368381/1000000000000",
              "45678356333/200000000000",
              "285359826401/1000000000000",
              "62849850193/200000000000",
              "550583572891/1000000000000",
              "121264774763/200000000000",
              "628548030911/1000000000000",
              "138436268623/200000000000"
            ],
            "cell": "CA"
          }
        },
        "U_FHP": {
          "triangle": "FHP",
          "side": "hi",
          "value": "11587319181/20000000000",
          "witness": {
            "kind": "vertices",
            "signed": "FHP",
            "used": [
              5,
              7,
              11,
              12
            ],
            "values": [
              "24097191989/250000000000",
              "26149257947/250000000000",
              "4739416661/20000000000",
              "4746535209/20000000000",
              "122589548441/500000000000",
              "151024905837/500000000000",
              "80622510647/250000000000",
              "93426228833/250000000000",
              "364175817/800000000",
              "231536053841/500000000000",
              "257143490213/500000000000",
              "11587319181/20000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "13": {
          "row": [
            "fan",
            "BCO",
            "BCP",
            "COP",
            "BOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "BCO",
            "point": "P"
          }
        },
        "21": {
          "row": [
            "fan",
            "CFG",
            "CFP",
            "FGP",
            "CGP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "CFG",
            "point": "P"
          }
        },
        "851": {
          "row": [
            "quad",
            "ABP",
            "AOP",
            "449/1000"
          ],
          "witness": {
            "kind": "quad",
            "poly": "ABPO",
            "occupants": [
              "G"
            ]
          }
        },
        "3224": {
          "row": [
            "linear",
            {
              "ACH": "-93/1000",
              "AEH": "-93/1000",
              "AGH": "216764573861/250000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACE",
            "point": "G",
            "line": "AH",
            "side": "upper",
            "outer_upper": {
              "triangle": "ACE",
              "ref": "U_ACE",
              "value": "216764573861/250000000000"
            },
            "fan_lower": [
              {
                "triangle": "CEG",
                "ref": "L_CEG",
                "value": "93/1000"
              },
              {
                "triangle": "AEG",
                "ref": "L_AEG",
                "value": "93/1000"
              },
              {
                "triangle": "ACG",
                "ref": "L_ACG",
                "value": "93/1000"
              }
            ],
            "residual": "147014573861/250000000000"
          }
        },
        "3593": {
          "row": [
            "linear",
            {
              "ABP": "-93/1000",
              "BCP": "39336582307/100000000000",
              "BOP": "-279/1000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACO",
            "point": "P",
            "line": "BP",
            "side": "lower",
            "outer_upper": {
              "triangle": "ACO",
              "ref": "U_ACO",
              "value": "76536582307/100000000000"
            },
            "fan_lower": [
              {
                "triangle": "COP",
                "ref": "L_COP",
                "value": "93/1000"
              },
              {
                "triangle": "AOP",
                "ref": "L_AOP",
                "value": "93/1000"
              },
              {
                "triangle": "ACP",
                "ref": "L_ACP",
                "value": "279/1000"
              }
            ],
            "residual": "30036582307/100000000000"
          }
        },
        "3642": {
          "row": [
            "linear",
            {
              "ACG": "-93/1000",
              "AGP": "185157838163/500000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACP",
            "point": "G",
            "line": "AG",
            "side": "upper",
            "outer_upper": {
              "triangle": "ACP",
              "ref": "U_ACP",
              "value": "278157838163/500000000000"
            },
            "fan_lower": [
              {
                "triangle": "CGP",
                "ref": "L_CGP",
                "value": "93/1000"
              },
              {
                "triangle": "AGP",
                "ref": "L_AGP",
                "value": "93/1000"
              },
              {
                "triangle": "ACG",
                "ref": "L_ACG",
                "value": "93/1000"
              }
            ],
            "residual": "138657838163/500000000000"
          }
        },
        "3920": {
          "row": [
            "linear",
            {
              "BCO": "101236268623/200000000000",
              "BCP": "-138436268623/200000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "BCO",
            "point": "P",
            "line": "BC",
            "side": "upper",
            "outer_upper": {
              "triangle": "BCO",
              "ref": "U_BCO",
              "value": "138436268623/200000000000"
            },
            "fan_lower": [
              {
                "triangle": "COP",
                "ref": "L_COP",
                "value": "93/1000"
              },
              {
                "triangle": "BOP",
                "ref": "L_BOP",
                "value": "93/1000"
              },
              {
                "triangle": "BCP",
                "ref": "L_BCP",
                "value": "93/1000"
              }
            ],
            "residual": "82636268623/200000000000"
          }
        },
        "5103": {
          "row": [
            "linear",
            {
              "CFP": "7867319181/20000000000",
              "CHP": "-93/1000",
              "COP": "-11587319181/20000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "FHP",
            "point": "O",
            "line": "CP",
            "side": "lower",
            "outer_upper": {
              "triangle": "FHP",
              "ref": "U_FHP",
              "value": "11587319181/20000000000"
            },
            "fan_lower": [
              {
                "triangle": "HOP",
                "ref": "L_HOP",
                "value": "93/1000"
              },
              {
                "triangle": "FOP",
                "ref": "L_FOP",
                "value": "93/1000"
              },
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              }
            ],
            "residual": "6007319181/20000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0101",
          "relation": 3593,
          "rule": "linear",
          "triangle": "BCP",
          "side": "lo",
          "value": "131923/1000000",
          "sources": [
            "L_ABP",
            "L_BOP"
          ]
        },
        {
          "id": "T0142",
          "relation": 5103,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "158961/1000000",
          "sources": [
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0156",
          "relation": 13,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "317923/1000000",
          "sources": [
            "T0101",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0159",
          "relation": 21,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "344961/1000000",
          "sources": [
            "T0142",
            "L_FGP",
            "L_CGP"
          ]
        }
      ],
      "physical": {
        "50": {
          "name": "AREA_LO_CDE",
          "terms": [
            [
              [
                4
              ],
              "1"
            ],
            [
              [
                2,
                4
              ],
              "-1"
            ],
            [
              [
                3
              ],
              "-1"
            ],
            [
              [
                2,
                3
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CDE",
            "side": "lo",
            "reference": "L_CDE",
            "value": "93/1000"
          }
        },
        "88": {
          "name": "AREA_LO_BCO",
          "terms": [
            [
              [
                2,
                10
              ],
              "1"
            ],
            [
              [
                1,
                10
              ],
              "-1"
            ],
            [
              [],
              "-317923/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCO",
            "side": "lo",
            "reference": "T0156",
            "value": "317923/1000000"
          }
        },
        "132": {
          "name": "AREA_LO_COP",
          "terms": [
            [
              [
                9,
                12
              ],
              "1"
            ],
            [
              [
                2,
                12
              ],
              "-1"
            ],
            [
              [
                10,
                11
              ],
              "-1"
            ],
            [
              [
                2,
                10
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "COP",
            "side": "lo",
            "reference": "L_COP",
            "value": "93/1000"
          }
        },
        "136": {
          "name": "AREA_LO_FOP",
          "terms": [
            [
              [
                9,
                12
              ],
              "1"
            ],
            [
              [
                9
              ],
              "-1"
            ],
            [
              [
                5,
                12
              ],
              "-1"
            ],
            [
              [
                10,
                11
              ],
              "-1"
            ],
            [
              [
                5,
                10
              ],
              "1"
            ],
            [
              [
                11
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FOP",
            "side": "lo",
            "reference": "L_FOP",
            "value": "93/1000"
          }
        },
        "144": {
          "name": "AREA_LO_ACO",
          "terms": [
            [
              [
                2,
                10
              ],
              "1"
            ],
            [
              [
                0,
                2
              ],
              "-1"
            ],
            [
              [
                0,
                9
              ],
              "1"
            ],
            [
              [],
              "-13857/20000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACO",
            "side": "lo",
            "reference": "L_ACO",
            "value": "13857/20000"
          }
        },
        "146": {
          "name": "AREA_LO_ACP",
          "terms": [
            [
              [
                2,
                12
              ],
              "1"
            ],
            [
              [
                0,
                2
              ],
              "-1"
            ],
            [
              [
                0,
                11
              ],
              "1"
            ],
            [
              [],
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACP",
            "side": "lo",
            "reference": "L_ACP",
            "value": "279/1000"
          }
        },
        "150": {
          "name": "AREA_LO_CFG",
          "terms": [
            [
              [
                5,
                8
              ],
              "1"
            ],
            [
              [
                2,
                8
              ],
              "-1"
            ],
            [
              [
                6
              ],
              "-1"
            ],
            [
              [
                2
              ],
              "1"
            ],
            [
              [],
              "-344961/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFG",
            "side": "lo",
            "reference": "T0159",
            "value": "344961/1000000"
          }
        },
        "396": {
          "name": "QUAD_851",
          "terms": [
            [
              [
                1,
                12
              ],
              "1"
            ],
            [
              [
                0,
                1
              ],
              "-1"
            ],
            [
              [
                9,
                12
              ],
              "-1"
            ],
            [
              [
                0,
                9
              ],
              "1"
            ],
            [
              [
                10,
                11
              ],
              "1"
            ],
            [
              [],
              "-449/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 851
          }
        },
        "1743": {
          "name": "LINEAR_3224",
          "terms": [
            [
              [
                2,
                7
              ],
              "-93/1000"
            ],
            [
              [
                0,
                2
              ],
              "93/1000"
            ],
            [
              [
                7
              ],
              "-93/1000"
            ],
            [
              [
                0
              ],
              "93/1000"
            ],
            [
              [
                6,
                7
              ],
              "216764573861/250000000000"
            ],
            [
              [
                0,
                6
              ],
              "-216764573861/250000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3224
          }
        },
        "2161": {
          "name": "LINEAR_3642",
          "terms": [
            [
              [
                2,
                8
              ],
              "-93/1000"
            ],
            [
              [
                0,
                2
              ],
              "93/1000"
            ],
            [
              [
                0,
                6
              ],
              "-231657838163/500000000000"
            ],
            [
              [
                6,
                12
              ],
              "185157838163/500000000000"
            ],
            [
              [
                8,
                11
              ],
              "-185157838163/500000000000"
            ],
            [
              [
                0,
                11
              ],
              "185157838163/500000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3642
          }
        },
        "2439": {
          "name": "LINEAR_3920",
          "terms": [
            [
              [
                2,
                10
              ],
              "101236268623/200000000000"
            ],
            [
              [
                1,
                10
              ],
              "-101236268623/200000000000"
            ],
            [
              [
                2,
                12
              ],
              "-138436268623/200000000000"
            ],
            [
              [
                1,
                12
              ],
              "138436268623/200000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3920
          }
        }
      },
      "coordinate": {
        "low": [
          "139/1000",
          "108013/1000000",
          "392911/500000",
          "120187/1000000",
          "110881/200000",
          "13857/20000",
          "38309/200000",
          "307011/500000",
          "10639/62500",
          "302093/1000000",
          "812299/1000000",
          "174487/500000",
          "5359/15625"
        ],
        "high": [
          "22763/40000",
          "526397/1000000",
          "440901/500000",
          "236391/500000",
          "907/1000",
          "440901/500000",
          "536841/1000000",
          "1/1",
          "610917/1000000",
          "71319/100000",
          "178907/200000",
          "71319/100000",
          "8177/12500"
        ],
        "steps": [
          {
            "factor": 50,
            "target": "d",
            "old": [
              "120187/1000000",
              "29549/62500"
            ],
            "lines": [
              [
                "-107089/500000",
                "12870462867/500000000000"
              ],
              [
                "-59099/500000",
                "-13735337103/500000000000"
              ],
              [
                "-107089/500000",
                "50629723/500000000"
              ],
              [
                "-59099/500000",
                "7102793/500000000"
              ]
            ],
            "raw": [
              "120187/1000000",
              "50629723/107089000"
            ],
            "new": [
              "120187/1000000",
              "236391/500000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "554403/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "107089/500000",
                "-59370705643/500000000000"
              ],
              [
                "59099/500000",
                "-53602931513/500000000000"
              ],
              [
                "107089/500000",
                "-48564875799/250000000000"
              ],
              [
                "59099/500000",
                "-37220471709/250000000000"
              ]
            ],
            "raw": [
              "59370705643/107089000000",
              "907/1000"
            ],
            "new": [
              "110881/200000",
              "907/1000"
            ]
          },
          {
            "factor": 88,
            "target": "b",
            "old": [
              "108013/1000000",
              "530503/1000000"
            ],
            "lines": [
              [
                "-812299/1000000",
                "160199712389/500000000000"
              ],
              [
                "-812299/1000000",
                "199181941399/500000000000"
              ],
              [
                "-178907/200000",
                "38502228277/100000000000"
              ],
              [
                "-178907/200000",
                "47087975207/100000000000"
              ]
            ],
            "raw": [
              "108013/1000000",
              "47087975207/89453500000"
            ],
            "new": [
              "108013/1000000",
              "526397/1000000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "348971/1000000",
              "356597/500000"
            ],
            "lines": [
              [
                "-812299/1000000",
                "379415471003/1000000000000"
              ],
              [
                "-812299/1000000",
                "424461188523/1000000000000"
              ],
              [
                "-812299/1000000",
                "520411807553/1000000000000"
              ],
              [
                "-812299/1000000",
                "565457525073/1000000000000"
              ],
              [
                "-178907/200000",
                "88807665799/200000000000"
              ],
              [
                "-178907/200000",
                "99395411559/200000000000"
              ],
              [
                "-178907/200000",
                "117006933109/200000000000"
              ],
              [
                "-178907/200000",
                "127594678869/200000000000"
              ],
              [
                "-812299/1000000",
                "227288505251/1000000000000"
              ],
              [
                "-812299/1000000",
                "242149664531/1000000000000"
              ],
              [
                "-812299/1000000",
                "3980561837/8000000000"
              ],
              [
                "-812299/1000000",
                "102486277781/200000000000"
              ],
              [
                "-178907/200000",
                "291911363243/1000000000000"
              ],
              [
                "-178907/200000",
                "314665533803/1000000000000"
              ],
              [
                "-178907/200000",
                "562193087617/1000000000000"
              ],
              [
                "-178907/200000",
                "584947258177/1000000000000"
              ]
            ],
            "raw": [
              "348971/1000000",
              "127594678869/178907000000"
            ],
            "new": [
              "348971/1000000",
              "71319/100000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "302093/1000000",
              "713191/1000000"
            ],
            "lines": [
              [
                "-26281/40000",
                "297673339071/1000000000000"
              ],
              [
                "-26281/40000",
                "386353047519/1000000000000"
              ],
              [
                "-26281/40000",
                "65190514503/200000000000"
              ],
              [
                "-26281/40000",
                "86034187527/200000000000"
              ],
              [
                "-26281/40000",
                "36603760959/100000000000"
              ],
              [
                "-26281/40000",
                "227358659019/500000000000"
              ],
              [
                "-26281/40000",
                "7287298587/20000000000"
              ],
              [
                "-26281/40000",
                "46858329447/100000000000"
              ],
              [
                "-342537/1000000",
                "79780328271/1000000000000"
              ],
              [
                "-342537/1000000",
                "109036900143/1000000000000"
              ],
              [
                "-342537/1000000",
                "21611912343/200000000000"
              ],
              [
                "-342537/1000000",
                "152854790259/1000000000000"
              ],
              [
                "-342537/1000000",
                "14814459879/100000000000"
              ],
              [
                "-342537/1000000",
                "88700585331/500000000000"
              ],
              [
                "-342537/1000000",
                "2929438371/20000000000"
              ],
              [
                "-342537/1000000",
                "95633573547/500000000000"
              ]
            ],
            "raw": [
              "302093/1000000",
              "46858329447/65702500000"
            ],
            "new": [
              "302093/1000000",
              "71319/100000"
            ]
          },
          {
            "factor": 144,
            "target": "a",
            "old": [
              "139/1000",
              "284539/500000"
            ],
            "lines": [
              [
                "-483729/1000000",
                "-27263787611/500000000000"
              ],
              [
                "-579709/1000000",
                "11718441399/500000000000"
              ],
              [
                "-9079/125000",
                "-27263787611/500000000000"
              ],
              [
                "-42153/250000",
                "11718441399/500000000000"
              ],
              [
                "-483729/1000000",
                "1009528277/100000000000"
              ],
              [
                "-579709/1000000",
                "9595275207/100000000000"
              ],
              [
                "-9079/125000",
                "1009528277/100000000000"
              ],
              [
                "-42153/250000",
                "9595275207/100000000000"
              ]
            ],
            "raw": [
              "139/1000",
              "3198425069/5620400000"
            ],
            "new": [
              "139/1000",
              "22763/40000"
            ]
          },
          {
            "factor": 146,
            "target": "v",
            "old": [
              "13719/40000",
              "657463/1000000"
            ],
            "lines": [
              [
                "392911/500000",
                "-339722289/1000000000"
              ],
              [
                "392911/500000",
                "-21104039313/40000000000"
              ],
              [
                "440901/500000",
                "-353063509/1000000000"
              ],
              [
                "440901/500000",
                "-23288832053/40000000000"
              ],
              [
                "392911/500000",
                "-36136981/125000000"
              ],
              [
                "392911/500000",
                "-1601665277/5000000000"
              ],
              [
                "440901/500000",
                "-75609267/250000000"
              ],
              [
                "440901/500000",
                "-3749528739/10000000000"
              ]
            ],
            "raw": [
              "25203089/73483500",
              "657463/1000000"
            ],
            "new": [
              "5359/15625",
              "657463/1000000"
            ]
          },
          {
            "factor": 150,
            "target": "g",
            "old": [
              "94833/500000",
              "268457/500000"
            ],
            "lines": [
              [
                "-1/1",
                "207536589/488281250"
              ],
              [
                "-1/1",
                "7885575543/15625000000"
              ],
              [
                "-1/1",
                "714373593/1562500000"
              ],
              [
                "-1/1",
                "536841/1000000"
              ],
              [
                "-1/1",
                "47823431501/125000000000"
              ],
              [
                "-1/1",
                "26150533233/62500000000"
              ],
              [
                "-1/1",
                "12525498007/25000000000"
              ]
            ],
            "raw": [
              "94833/500000",
              "536841/1000000"
            ],
            "new": [
              "94833/500000",
              "536841/1000000"
            ]
          },
          {
            "factor": 396,
            "target": "u",
            "old": [
              "348971/1000000",
              "71319/100000"
            ],
            "lines": [
              [
                "812299/1000000",
                "-381709111/781250000"
              ],
              [
                "812299/1000000",
                "-2531991913/6250000000"
              ],
              [
                "812299/1000000",
                "-3150370057/7812500000"
              ],
              [
                "812299/1000000",
                "-31232181881/62500000000"
              ],
              [
                "812299/1000000",
                "-71555197969/125000000000"
              ],
              [
                "812299/1000000",
                "-312170085477/1000000000000"
              ],
              [
                "812299/1000000",
                "-60887661121/125000000000"
              ],
              [
                "812299/1000000",
                "-406766289493/1000000000000"
              ],
              [
                "178907/200000",
                "-381709111/781250000"
              ],
              [
                "178907/200000",
                "-2531991913/6250000000"
              ],
              [
                "178907/200000",
                "-3150370057/7812500000"
              ],
              [
                "178907/200000",
                "-31232181881/62500000000"
              ],
              [
                "178907/200000",
                "-71555197969/125000000000"
              ],
              [
                "178907/200000",
                "-312170085477/1000000000000"
              ],
              [
                "178907/200000",
                "-60887661121/125000000000"
              ],
              [
                "178907/200000",
                "-406766289493/1000000000000"
              ],
              [
                "812299/1000000",
                "-3435145619/6250000000"
              ],
              [
                "812299/1000000",
                "-728366161/1562500000"
              ],
              [
                "812299/1000000",
                "-20794167203/62500000000"
              ],
              [
                "812299/1000000",
                "-6705847157/15625000000"
              ],
              [
                "812299/1000000",
                "-762761882951/1000000000000"
              ],
              [
                "812299/1000000",
                "-125622596169/250000000000"
              ],
              [
                "812299/1000000",
                "-545845259159/1000000000000"
              ],
              [
                "812299/1000000",
                "-116377564921/250000000000"
              ],
              [
                "178907/200000",
                "-3435145619/6250000000"
              ],
              [
                "178907/200000",
                "-728366161/1562500000"
              ],
              [
                "178907/200000",
                "-20794167203/62500000000"
              ],
              [
                "178907/200000",
                "-6705847157/15625000000"
              ],
              [
                "178907/200000",
                "-762761882951/1000000000000"
              ],
              [
                "178907/200000",
                "-125622596169/250000000000"
              ],
              [
                "178907/200000",
                "-545845259159/1000000000000"
              ],
              [
                "178907/200000",
                "-116377564921/250000000000"
              ]
            ],
            "raw": [
              "312170085477/894535000000",
              "71319/100000"
            ],
            "new": [
              "174487/500000",
              "71319/100000"
            ]
          },
          {
            "factor": 1743,
            "target": "g",
            "old": [
              "94833/500000",
              "536841/1000000"
            ],
            "lines": [
              [
                "51483970702299971/125000000000000000",
                "-19723085160453/250000000000000"
              ],
              [
                "9742917301330367/250000000000000000",
                "-3732431376681/500000000000000"
              ],
              [
                "51483970702299971/125000000000000000",
                "-20783113379223/250000000000000"
              ],
              [
                "9742917301330367/250000000000000000",
                "-3933032983971/500000000000000"
              ],
              [
                "186634298094321/250000000000000",
                "-71498062503/500000000000"
              ],
              [
                "3736370959642057/10000000000000000",
                "-1431372942351/20000000000000"
              ],
              [
                "186634298094321/250000000000000",
                "-75340765773/500000000000"
              ],
              [
                "3736370959642057/10000000000000000",
                "-1508302879941/20000000000000"
              ]
            ],
            "raw": [
              "41520361500/216764573861",
              "536841/1000000"
            ],
            "new": [
              "38309/200000",
              "536841/1000000"
            ]
          },
          {
            "factor": 2161,
            "target": "z",
            "old": [
              "10639/62500",
              "313393/500000"
            ],
            "lines": [
              [
                "-50577997207547381/250000000000000000",
                "501421419635840097349/12500000000000000000000"
              ],
              [
                "-50577997207547381/250000000000000000",
                "8895569170651794944697/100000000000000000000000"
              ],
              [
                "-52809532207547381/250000000000000000",
                "516930587885840097349/12500000000000000000000"
              ],
              [
                "-52809532207547381/250000000000000000",
                "9403533482701794944697/100000000000000000000000"
              ],
              [
                "-50577997207547381/250000000000000000",
                "3858261360997988317001/62500000000000000000000"
              ],
              [
                "-50577997207547381/250000000000000000",
                "20885154965320365881933/500000000000000000000000"
              ],
              [
                "-52809532207547381/250000000000000000",
                "3935807202247988317001/62500000000000000000000"
              ],
              [
                "-52809532207547381/250000000000000000",
                "23424976525570365881933/500000000000000000000000"
              ],
              [
                "-16859344159946997/50000000000000000",
                "735766548601543945149/12500000000000000000000"
              ],
              [
                "-16859344159946997/50000000000000000",
                "16570962221941459243217/100000000000000000000000"
              ],
              [
                "-17305651159946997/50000000000000000",
                "751275716851543945149/12500000000000000000000"
              ],
              [
                "-17305651159946997/50000000000000000",
                "17078926533991459243217/100000000000000000000000"
              ],
              [
                "-16859344159946997/50000000000000000",
                "5029987005826507556001/62500000000000000000000"
              ],
              [
                "-16859344159946997/50000000000000000",
                "59262120221768687374533/500000000000000000000000"
              ],
              [
                "-17305651159946997/50000000000000000",
                "5107532847076507556001/62500000000000000000000"
              ],
              [
                "-17305651159946997/50000000000000000",
                "61801941782018687374533/500000000000000000000000"
              ],
              [
                "-50577997207547381/250000000000000000",
                "6242094200513244777521/100000000000000000000000"
              ],
              [
                "-50577997207547381/250000000000000000",
                "5563146007039159471713/50000000000000000000000"
              ],
              [
                "-52809532207547381/250000000000000000",
                "6366167546513244777521/100000000000000000000000"
              ],
              [
                "-52809532207547381/250000000000000000",
                "5817128163064159471713/50000000000000000000000"
              ],
              [
                "-50577997207547381/250000000000000000",
                "62126199008476181719429/500000000000000000000000"
              ],
              [
                "-50577997207547381/250000000000000000",
                "26072631542906320532677/250000000000000000000000"
              ],
              [
                "-52809532207547381/250000000000000000",
                "62746565738476181719429/500000000000000000000000"
              ],
              [
                "-52809532207547381/250000000000000000",
                "27342542323031320532677/250000000000000000000000"
              ],
              [
                "-16859344159946997/50000000000000000",
                "8116855232238875559921/100000000000000000000000"
              ],
              [
                "-16859344159946997/50000000000000000",
                "9400842532683991620973/50000000000000000000000"
              ],
              [
                "-17305651159946997/50000000000000000",
                "8240928578238875559921/100000000000000000000000"
              ],
              [
                "-17305651159946997/50000000000000000",
                "9654824688708991620973/50000000000000000000000"
              ],
              [
                "-16859344159946997/50000000000000000",
                "71500004167104335631429/500000000000000000000000"
              ],
              [
                "-16859344159946997/50000000000000000",
                "45261114171130481278977/250000000000000000000000"
              ],
              [
                "-17305651159946997/50000000000000000",
                "72120370897104335631429/500000000000000000000000"
              ],
              [
                "-17305651159946997/50000000000000000",
                "46531024951255481278977/250000000000000000000000"
              ]
            ],
            "raw": [
              "10639/62500",
              "62126199008476181719429/101155994415094762000000"
            ],
            "new": [
              "10639/62500",
              "614163/1000000"
            ]
          },
          {
            "factor": 2439,
            "target": "v",
            "old": [
              "5359/15625",
              "657463/1000000"
            ],
            "lines": [
              [
                "-93833348799087007/200000000000000000",
                "55739026484604376699093/200000000000000000000000"
              ],
              [
                "-1436553159500871/8000000000000000",
                "853343460813798012429/8000000000000000000000"
              ],
              [
                "-107120461861522547/200000000000000000",
                "63631857299763703405553/200000000000000000000000"
              ],
              [
                "-9840188409991463/40000000000000000",
                "5845283467100855403437/40000000000000000000000"
              ],
              [
                "-93833348799087007/200000000000000000",
                "12276393312414659161349/40000000000000000000000"
              ],
              [
                "-1436553159500871/8000000000000000",
                "187946948776022327997/1600000000000000000000"
              ],
              [
                "-107120461861522547/200000000000000000",
                "14014771277483814316129/40000000000000000000000"
              ],
              [
                "-9840188409991463/40000000000000000",
                "1287410336893942670941/8000000000000000000000"
              ]
            ],
            "raw": [
              "5359/15625",
              "101236268623/154757800000"
            ],
            "new": [
              "5359/15625",
              "8177/12500"
            ]
          },
          {
            "factor": 2161,
            "target": "z",
            "old": [
              "10639/62500",
              "614163/1000000"
            ],
            "lines": [
              [
                "-50577997207547381/250000000000000000",
                "501421419635840097349/12500000000000000000000"
              ],
              [
                "-50577997207547381/250000000000000000",
                "8895569170651794944697/100000000000000000000000"
              ],
              [
                "-52809532207547381/250000000000000000",
                "516930587885840097349/12500000000000000000000"
              ],
              [
                "-52809532207547381/250000000000000000",
                "9403533482701794944697/100000000000000000000000"
              ],
              [
                "-50577997207547381/250000000000000000",
                "3858261360997988317001/62500000000000000000000"
              ],
              [
                "-50577997207547381/250000000000000000",
                "20885154965320365881933/500000000000000000000000"
              ],
              [
                "-52809532207547381/250000000000000000",
                "3935807202247988317001/62500000000000000000000"
              ],
              [
                "-52809532207547381/250000000000000000",
                "23424976525570365881933/500000000000000000000000"
              ],
              [
                "-16859344159946997/50000000000000000",
                "735766548601543945149/12500000000000000000000"
              ],
              [
                "-16859344159946997/50000000000000000",
                "16570962221941459243217/100000000000000000000000"
              ],
              [
                "-17305651159946997/50000000000000000",
                "751275716851543945149/12500000000000000000000"
              ],
              [
                "-17305651159946997/50000000000000000",
                "17078926533991459243217/100000000000000000000000"
              ],
              [
                "-16859344159946997/50000000000000000",
                "5029987005826507556001/62500000000000000000000"
              ],
              [
                "-16859344159946997/50000000000000000",
                "59262120221768687374533/500000000000000000000000"
              ],
              [
                "-17305651159946997/50000000000000000",
                "5107532847076507556001/62500000000000000000000"
              ],
              [
                "-17305651159946997/50000000000000000",
                "61801941782018687374533/500000000000000000000000"
              ],
              [
                "-50577997207547381/250000000000000000",
                "155466633063129080183/2500000000000000000000"
              ],
              [
                "-50577997207547381/250000000000000000",
                "444114525443609494929/4000000000000000000000"
              ],
              [
                "-52809532207547381/250000000000000000",
                "158568466713129080183/2500000000000000000000"
              ],
              [
                "-52809532207547381/250000000000000000",
                "464433097925609494929/4000000000000000000000"
              ],
              [
                "-50577997207547381/250000000000000000",
                "1544946993870705543907/12500000000000000000000"
              ],
              [
                "-50577997207547381/250000000000000000",
                "10363388766432936220441/100000000000000000000000"
              ],
              [
                "-52809532207547381/250000000000000000",
                "1560456162120705543907/12500000000000000000000"
              ],
              [
                "-52809532207547381/250000000000000000",
                "10871353078482936220441/100000000000000000000000"
              ],
              [
                "-16859344159946997/50000000000000000",
                "202335658856269849743/2500000000000000000000"
              ],
              [
                "-16859344159946997/50000000000000000",
                "3755651237475980334349/20000000000000000000000"
              ],
              [
                "-17305651159946997/50000000000000000",
                "205437492506269849743/2500000000000000000000"
              ],
              [
                "-17305651159946997/50000000000000000",
                "3857244099885980334349/20000000000000000000000"
              ],
              [
                "-16859344159946997/50000000000000000",
                "1779292122836409391707/12500000000000000000000"
              ],
              [
                "-16859344159946997/50000000000000000",
                "18038781817722600518961/100000000000000000000000"
              ],
              [
                "-17305651159946997/50000000000000000",
                "1794801291086409391707/12500000000000000000000"
              ],
              [
                "-17305651159946997/50000000000000000",
                "18546746129772600518961/100000000000000000000000"
              ]
            ],
            "raw": [
              "10639/62500",
              "1544946993870705543907/2528899860377369050000"
            ],
            "new": [
              "10639/62500",
              "610917/1000000"
            ]
          }
        ]
      }
    },
    {
      "id": 10,
      "assumptions": [
        "AGO+",
        "AGP+",
        "DGP-",
        "AFG-",
        "BFG+",
        "FGP+"
      ],
      "initial_box": {
        "low": [
          "139/1000",
          "108013/1000000",
          "392911/500000",
          "120187/1000000",
          "110881/200000",
          "13857/20000",
          "38309/200000",
          "307011/500000",
          "10639/62500",
          "302093/1000000",
          "812299/1000000",
          "174487/500000",
          "5359/15625"
        ],
        "high": [
          "22763/40000",
          "526397/1000000",
          "440901/500000",
          "236391/500000",
          "907/1000",
          "440901/500000",
          "536841/1000000",
          "1",
          "610917/1000000",
          "71319/100000",
          "178907/200000",
          "71319/100000",
          "8177/12500"
        ]
      },
      "known": {
        "ABC": 1,
        "ABD": 1,
        "ABE": 1,
        "ABF": 1,
        "ABH": 1,
        "ACD": 1,
        "ACE": 1,
        "ACF": 1,
        "ACH": 1,
        "ADE": 1,
        "ADF": 1,
        "ADH": 1,
        "AEF": 1,
        "AEH": 1,
        "AFH": 1,
        "BCD": 1,
        "BCE": 1,
        "BCF": 1,
        "BCH": 1,
        "BDE": 1,
        "BDF": 1,
        "BDH": 1,
        "BEF": 1,
        "BEH": 1,
        "BFH": 1,
        "CDE": 1,
        "CDF": 1,
        "CDH": 1,
        "CEF": 1,
        "CEH": 1,
        "CFH": 1,
        "DEF": 1,
        "DEH": 1,
        "DFH": 1,
        "EFH": 1,
        "ABG": 1,
        "BCG": 1,
        "CDG": 1,
        "DEG": 1,
        "EFG": 1,
        "FGH": -1,
        "AGH": 1,
        "CGH": -1,
        "ABO": 1,
        "BCO": 1,
        "CDO": 1,
        "DEO": 1,
        "EFO": 1,
        "FHO": 1,
        "AHO": -1,
        "CHO": -1,
        "CEO": 1,
        "ABP": 1,
        "BCP": 1,
        "CDP": 1,
        "DEP": 1,
        "EFP": 1,
        "FHP": 1,
        "AHP": -1,
        "CHP": -1,
        "CEP": 1,
        "HOP": -1,
        "EHP": 1,
        "ACG": 1,
        "BGH": 1,
        "DGO": -1,
        "COP": 1,
        "EOP": 1,
        "FOP": 1,
        "AGO": 1,
        "AGP": 1,
        "DGP": -1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DFG": 1,
        "DGH": -1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "GHO": -1,
        "GHP": -1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "CFP": 1,
        "DFP": 1,
        "ADO": 1,
        "ADP": 1,
        "BEO": 1,
        "BDO": 1,
        "BDP": 1,
        "AFG": -1,
        "BFG": 1,
        "BDG": 1,
        "BEG": 1,
        "FGP": 1,
        "AFP": -1,
        "BGP": -1,
        "AOP": -1,
        "GOP": -1,
        "AEG": -1,
        "BOP": -1,
        "FGO": -1,
        "EGO": -1,
        "BFO": 1,
        "DHO": -1,
        "BGO": -1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "ABCGO"
          ],
          "target": "ACO",
          "sign": 1,
          "deps": [
            "ABC",
            "AGO",
            "ABG",
            "ABO",
            "ACG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ABCGP"
          ],
          "target": "ACP",
          "sign": 1,
          "deps": [
            "ABC",
            "AGP",
            "ABG",
            "ABP",
            "ACG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAEGH"
          ],
          "target": "CEG",
          "sign": 1,
          "deps": [
            "ACE",
            "CGH",
            "ACG",
            "CEH",
            "ACH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAFGH"
          ],
          "target": "CFG",
          "sign": 1,
          "deps": [
            "ACF",
            "CGH",
            "ACG",
            "CFH",
            "ACH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAGHO"
          ],
          "target": "CGO",
          "sign": -1,
          "deps": [
            "ACG",
            "CHO",
            "ACH",
            "ACO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CAGHP"
          ],
          "target": "CGP",
          "sign": -1,
          "deps": [
            "ACG",
            "CHP",
            "ACH",
            "ACP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "FCDEG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "CDF",
            "EFG",
            "CEF",
            "CFG",
            "DEF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFH"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "CDG",
            "FGH",
            "CFG",
            "CGH",
            "DFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCEFH"
          ],
          "target": "EGH",
          "sign": -1,
          "deps": [
            "CEG",
            "FGH",
            "CFG",
            "CGH",
            "EFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HABCO"
          ],
          "target": "BHO",
          "sign": -1,
          "deps": [
            "ABH",
            "CHO",
            "ACH",
            "AHO",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HABCP"
          ],
          "target": "BHP",
          "sign": -1,
          "deps": [
            "ABH",
            "CHP",
            "ACH",
            "AHP",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HACGO"
          ],
          "target": "GHO",
          "sign": -1,
          "deps": [
            "ACH",
            "AGH",
            "CHO",
            "AHO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "HACGP"
          ],
          "target": "GHP",
          "sign": -1,
          "deps": [
            "ACH",
            "AGH",
            "CHP",
            "AHP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OCDEP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDO",
            "EOP",
            "CEO",
            "COP",
            "DEO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OCEFP"
          ],
          "target": "CFO",
          "sign": 1,
          "deps": [
            "CEO",
            "FOP",
            "EOP",
            "COP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "ODEFP"
          ],
          "target": "DFO",
          "sign": 1,
          "deps": [
            "DEO",
            "FOP",
            "EOP",
            "DOP",
            "EFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PCEFO"
          ],
          "target": "CFP",
          "sign": 1,
          "deps": [
            "CEP",
            "FOP",
            "EOP",
            "COP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PDEFO"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FOP",
            "EOP",
            "DOP",
            "EFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GO",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACO",
            "CDO",
            "DGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ACD",
            "GP",
            "DAC",
            [
              "central-ACD"
            ]
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACG",
            "CDG",
            "ACP",
            "CDP",
            "DGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "BCE",
            "OP",
            "EBC",
            [
              "fixed",
              "BCE"
            ]
          ],
          "target": "BEO",
          "sign": 1,
          "deps": [
            "BCO",
            "CEO",
            "BCP",
            "CEP",
            "EOP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BADEO"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "ABD",
            "BEO",
            "ABE",
            "ABO",
            "BDE"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DABCP"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "ABD",
            "CDP",
            "ACD",
            "ADP",
            "BCD"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BADFG"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "ABD",
            "BFG",
            "ABF",
            "ABG",
            "BDF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "BAEFG"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "BFG",
            "ABF",
            "ABG",
            "BEF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "FACGP"
          ],
          "target": "AFP",
          "sign": -1,
          "deps": [
            "ACF",
            "FGP",
            "AFG",
            "CFP",
            "CFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GABFP"
          ],
          "target": "BGP",
          "sign": -1,
          "deps": [
            "ABG",
            "FGP",
            "AFG",
            "AGP",
            "BFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PACFO"
          ],
          "target": "AOP",
          "sign": -1,
          "deps": [
            "ACP",
            "FOP",
            "AFP",
            "COP",
            "CFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PAFGO"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "AFP",
            "AGP",
            "FOP",
            "AOP",
            "FGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "AEF",
            "GP",
            "AEF",
            [
              "HCF2-AEF-cap1"
            ]
          ],
          "target": "AEG",
          "sign": -1,
          "deps": [
            "EFG",
            "AFG",
            "EFP",
            "AFP",
            "AGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "ABO",
            "GP",
            "BOA",
            [
              "area",
              "ABO",
              "U_ABO",
              "70517117129677/113375000000000"
            ]
          ],
          "target": "BOP",
          "sign": -1,
          "deps": [
            "AGO",
            "ABG",
            "AOP",
            "ABP",
            "BGP"
          ],
          "area_stage": 7
        },
        {
          "rule": [
            "cap",
            "CFG",
            [
              "P"
            ],
            "O",
            [
              "area",
              "CFG",
              "T0199",
              "635181/1000000"
            ]
          ],
          "target": "FGO",
          "sign": -1,
          "deps": [
            "CFO",
            "CGO"
          ],
          "area_stage": 7
        },
        {
          "rule": [
            "ray",
            "EFO",
            "GP",
            "OEF",
            [
              "area",
              "EFO",
              "U_EFO",
              "23136838411/50000000000"
            ]
          ],
          "target": "EGO",
          "sign": -1,
          "deps": [
            "EFG",
            "FGO",
            "EFP",
            "FOP",
            "GOP"
          ],
          "area_stage": 7
        },
        {
          "rule": [
            "plu",
            "FBCGO"
          ],
          "target": "BFO",
          "sign": 1,
          "deps": [
            "BCF",
            "FGO",
            "BFG",
            "CFO",
            "CFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "CDH",
            "OP",
            "DHC",
            [
              "area",
              "CDH",
              "U_CDH",
              "611990125749/1000000000000"
            ]
          ],
          "target": "DHO",
          "sign": -1,
          "deps": [
            "CHO",
            "CDO",
            "CHP",
            "CDP",
            "DOP"
          ],
          "area_stage": 8
        },
        {
          "rule": [
            "cap",
            "BCO",
            [
              "P"
            ],
            "G",
            [
              "area",
              "BCO",
              "U_BCO",
              "138436268623/200000000000"
            ]
          ],
          "target": "BGO",
          "sign": -1,
          "deps": [
            "BCG",
            "CGO"
          ],
          "area_stage": 9
        }
      ],
      "initial": {
        "L_ABC": {
          "triangle": "ABC",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ABC",
            "points": []
          }
        },
        "L_ABG": {
          "triangle": "ABG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ABG",
            "points": []
          }
        },
        "L_ABP": {
          "triangle": "ABP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ABP",
            "points": [
              "G"
            ]
          }
        },
        "L_ACF": {
          "triangle": "ACF",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACF",
            "points": [
              "G",
              "P"
            ]
          }
        },
        "L_ACG": {
          "triangle": "ACG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACG",
            "points": []
          }
        },
        "L_ACH": {
          "triangle": "ACH",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACH",
            "points": [
              "G"
            ]
          }
        },
        "L_ACO": {
          "triangle": "ACO",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACO",
            "points": [
              "G",
              "P"
            ]
          }
        },
        "L_ACP": {
          "triangle": "ACP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACP",
            "points": [
              "G"
            ]
          }
        },
        "L_ADP": {
          "triangle": "ADP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ADP",
            "points": []
          }
        },
        "L_AEH": {
          "triangle": "AEH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "AEH",
            "points": []
          }
        },
        "L_AFH": {
          "triangle": "AFH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "AFH",
            "points": []
          }
        },
        "L_AFP": {
          "triangle": "AFP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FAP",
            "points": []
          }
        },
        "L_AGP": {
          "triangle": "AGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "AGP",
            "points": []
          }
        },
        "L_AOP": {
          "triangle": "AOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "OAP",
            "points": []
          }
        },
        "L_BCD": {
          "triangle": "BCD",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BCD",
            "points": []
          }
        },
        "L_BCO": {
          "triangle": "BCO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BCO",
            "points": [
              "P"
            ]
          }
        },
        "L_BCP": {
          "triangle": "BCP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BCP",
            "points": []
          }
        },
        "L_BGH": {
          "triangle": "BGH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BGH",
            "points": []
          }
        },
        "L_BGO": {
          "triangle": "BGO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GBO",
            "points": []
          }
        },
        "L_BGP": {
          "triangle": "BGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GBP",
            "points": []
          }
        },
        "L_BHO": {
          "triangle": "BHO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HBO",
            "points": [
              "G"
            ]
          }
        },
        "L_BOP": {
          "triangle": "BOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "OBP",
            "points": []
          }
        },
        "L_CDE": {
          "triangle": "CDE",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CDE",
            "points": []
          }
        },
        "L_CDF": {
          "triangle": "CDF",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CDF",
            "points": []
          }
        },
        "L_CDG": {
          "triangle": "CDG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CDG",
            "points": []
          }
        },
        "L_CDO": {
          "triangle": "CDO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CDO",
            "points": []
          }
        },
        "L_CFH": {
          "triangle": "CFH",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "CFH",
            "points": [
              "O",
              "P"
            ]
          }
        },
        "L_CFO": {
          "triangle": "CFO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CFO",
            "points": []
          }
        },
        "L_CFP": {
          "triangle": "CFP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CFP",
            "points": []
          }
        },
        "L_CGP": {
          "triangle": "CGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GCP",
            "points": []
          }
        },
        "L_CHP": {
          "triangle": "CHP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HCP",
            "points": []
          }
        },
        "L_COP": {
          "triangle": "COP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "COP",
            "points": []
          }
        },
        "L_DEF": {
          "triangle": "DEF",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DEF",
            "points": []
          }
        },
        "L_DFO": {
          "triangle": "DFO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DFO",
            "points": []
          }
        },
        "L_DFP": {
          "triangle": "DFP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DFP",
            "points": []
          }
        },
        "L_EFO": {
          "triangle": "EFO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EFO",
            "points": []
          }
        },
        "L_FGO": {
          "triangle": "FGO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GFO",
            "points": []
          }
        },
        "L_FGP": {
          "triangle": "FGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FGP",
            "points": []
          }
        },
        "L_FHO": {
          "triangle": "FHO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FHO",
            "points": []
          }
        },
        "L_FHP": {
          "triangle": "FHP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FHP",
            "points": [
              "O"
            ]
          }
        },
        "L_FOP": {
          "triangle": "FOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FOP",
            "points": []
          }
        },
        "L_GHO": {
          "triangle": "GHO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HGO",
            "points": []
          }
        },
        "L_GOP": {
          "triangle": "GOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "OGP",
            "points": []
          }
        },
        "L_HOP": {
          "triangle": "HOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "OHP",
            "points": []
          }
        },
        "U_ABO": {
          "triangle": "ABO",
          "side": "hi",
          "value": "57717976687/100000000000",
          "witness": {
            "kind": "vertices",
            "signed": "ABO",
            "used": [
              0,
              1,
              9,
              10
            ],
            "values": [
              "114715971887/1000000000000",
              "24719705791/200000000000",
              "171858454887/1000000000000",
              "36148202391/200000000000",
              "198184927887/1000000000000",
              "41413496991/200000000000",
              "299945957903/1000000000000",
              "68646948319/200000000000",
              "396413500703/1000000000000",
              "216064976581/500000000000",
              "87940456879/200000000000",
              "44101251023/100000000000",
              "453555983703/1000000000000",
              "99368953479/200000000000",
              "266945491589/500000000000",
              "57717976687/100000000000"
            ],
            "cell": "CA"
          }
        },
        "U_ABP": {
          "triangle": "ABP",
          "side": "hi",
          "value": "90129417599/200000000000",
          "witness": {
            "kind": "vertices",
            "signed": "ABP",
            "used": [
              0,
              1,
              11,
              12
            ],
            "values": [
              "8817430711/125000000000",
              "79574543747/1000000000000",
              "2603784077/25000000000",
              "15145683711/125000000000",
              "3869434677/25000000000",
              "19484967559/125000000000",
              "174170747763/1000000000000",
              "25813220559/125000000000",
              "41556533031/200000000000",
              "48676173559/200000000000",
              "286840763947/1000000000000",
              "7992151613/25000000000",
              "9257802213/25000000000",
              "381436967963/1000000000000",
              "83009777071/200000000000",
              "90129417599/200000000000"
            ],
            "cell": "CA"
          }
        },
        "U_ACF": {
          "triangle": "ACF",
          "side": "hi",
          "value": "440901/500000",
          "witness": {
            "kind": "vertices",
            "signed": "ACF",
            "used": [
              0,
              2,
              5
            ],
            "values": [
              "7329139591/10000000000",
              "193224723/250000000",
              "3871370703/5000000000",
              "39958161/50000000",
              "1680883637/2000000000",
              "106942209/125000000",
              "440901/500000"
            ],
            "cell": "CA"
          }
        },
        "U_ACO": {
          "triangle": "ACO",
          "side": "hi",
          "value": "76536568407/100000000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACO",
            "used": [
              0,
              2,
              9,
              10
            ],
            "values": [
              "363044344103/1000000000000",
              "386388983623/1000000000000",
              "85533440419/200000000000",
              "91780970579/200000000000",
              "285542046889/500000000000",
              "298494684689/500000000000",
              "310167004449/500000000000",
              "314113288389/500000000000",
              "63570695177/100000000000",
              "317853665899/500000000000",
              "66161222737/100000000000",
              "69284943477/100000000000",
              "346424907399/500000000000",
              "69284987817/100000000000",
              "70822320107/100000000000",
              "76536568407/100000000000"
            ],
            "cell": "CA"
          }
        },
        "U_ACP": {
          "triangle": "ACP",
          "side": "hi",
          "value": "1729382901/3125000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACP",
            "used": [
              0,
              2,
              11,
              12
            ],
            "values": [
              "-195542837/250000000000",
              "1307425667/62500000000",
              "51621012213/250000000000",
              "203902553/976562500",
              "28523128859/125000000000",
              "7136682211/31250000000",
              "4053472473/15625000000",
              "3318175549/12500000000",
              "13681025111/50000000000",
              "8718745461/31250000000",
              "2833321547/6250000000",
              "11818006603/25000000000",
              "24044336121/50000000000",
              "24549634/48828125",
              "3149734197/6250000000",
              "1729382901/3125000000"
            ],
            "cell": "CA"
          }
        },
        "U_ADE": {
          "triangle": "ADE",
          "side": "hi",
          "value": "786813/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "ADE",
            "used": [
              0,
              3,
              4
            ],
            "values": [
              "81623/1000000",
              "217109/500000",
              "786813/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_ADH": {
          "triangle": "ADH",
          "side": "hi",
          "value": "861/1000",
          "witness": {
            "kind": "vertices",
            "signed": "ADH",
            "used": [
              0,
              3,
              7
            ],
            "values": [
              "44947/1000000",
              "17237/40000",
              "237511/500000",
              "861/1000"
            ],
            "cell": "CA"
          }
        },
        "U_BCF": {
          "triangle": "BCF",
          "side": "hi",
          "value": "773789/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "BCF",
            "used": [
              1,
              2,
              5
            ],
            "values": [
              "10377/40000",
              "71081/200000",
              "677809/1000000",
              "773789/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_BCO": {
          "triangle": "BCO",
          "side": "hi",
          "value": "138436268623/200000000000",
          "witness": {
            "kind": "vertices",
            "signed": "BCO",
            "used": [
              1,
              2,
              9,
              10
            ],
            "values": [
              "8429226723/40000000000",
              "1856517939/8000000000",
              "57739025219/200000000000",
              "12716888467/40000000000",
              "550583572891/1000000000000",
              "121264774763/200000000000",
              "628548030911/1000000000000",
              "138436268623/200000000000"
            ],
            "cell": "CA"
          }
        },
        "U_BEO": {
          "triangle": "BEO",
          "side": "hi",
          "value": "138062933729/200000000000",
          "witness": {
            "kind": "vertices",
            "signed": "BEO",
            "used": [
              1,
              4,
              9,
              10
            ],
            "values": [
              "175664609113/1000000000000",
              "215285992297/1000000000000",
              "49803610409/200000000000",
              "50846641721/200000000000",
              "70287067533/250000000000",
              "8002387161/25000000000",
              "97261748357/250000000000",
              "11560010909/25000000000",
              "509062502417/1000000000000",
              "21920388749/40000000000",
              "548529588113/1000000000000",
              "588150971297/1000000000000",
              "616961225713/1000000000000",
              "124376606209/200000000000",
              "125419637521/200000000000",
              "138062933729/200000000000"
            ],
            "cell": "CA"
          }
        },
        "U_BFH": {
          "triangle": "BFH",
          "side": "hi",
          "value": "440901/500000",
          "witness": {
            "kind": "vertices",
            "signed": "BFH",
            "used": [
              1,
              5,
              7
            ],
            "values": [
              "233557892207/500000000000",
              "291568234679/500000000000",
              "314301401983/500000000000",
              "13857/20000",
              "74462348891/100000000000",
              "440901/500000"
            ],
            "cell": "CA"
          }
        },
        "U_BHO": {
          "triangle": "BHO",
          "side": "hi",
          "value": "140359681791/200000000000",
          "witness": {
            "kind": "vertices",
            "signed": "HBO",
            "used": [
              1,
              7,
              9,
              10
            ],
            "values": [
              "203287756703/1000000000000",
              "206908241647/1000000000000",
              "43158159743/200000000000",
              "49315308079/200000000000",
              "281818851887/1000000000000",
              "57972833203/200000000000",
              "58140281791/200000000000",
              "333152949707/1000000000000",
              "459330843781/1000000000000",
              "468213400849/1000000000000",
              "542286768149/1000000000000",
              "585575551841/1000000000000",
              "614384756703/1000000000000",
              "131534708079/200000000000",
              "692915851887/1000000000000",
              "140359681791/200000000000"
            ],
            "cell": "CA"
          }
        },
        "U_CDF": {
          "triangle": "CDF",
          "side": "hi",
          "value": "32266686013/125000000000",
          "witness": {
            "kind": "vertices",
            "signed": "CDF",
            "used": [
              2,
              3,
              5
            ],
            "values": [
              "59099/500000",
              "17613446753/125000000000",
              "4220009591/25000000000",
              "10132122587/50000000000",
              "12970694029/62500000000",
              "56338006441/250000000000",
              "32266686013/125000000000"
            ],
            "cell": "CA"
          }
        },
        "U_CEF": {
          "triangle": "CEF",
          "side": "hi",
          "value": "74625901/250000000",
          "witness": {
            "kind": "vertices",
            "signed": "CEF",
            "used": [
              2,
              4,
              5
            ],
            "values": [
              "59099/500000",
              "6356207/50000000",
              "1609662081/10000000000",
              "5573848339/25000000000",
              "13286107083/50000000000",
              "36197183/125000000",
              "74625901/250000000"
            ],
            "cell": "CA"
          }
        },
        "U_CFG": {
          "triangle": "CFG",
          "side": "hi",
          "value": "690257/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "CFG",
            "used": [
              2,
              5,
              6,
              8
            ],
            "values": [
              "48045706169/250000000000",
              "28690876377/125000000000",
              "455380731/1953125000",
              "414561093/1562500000",
              "15380840683/50000000000",
              "4887450543/15625000000",
              "344961/1000000",
              "134369706169/250000000000",
              "71852876377/125000000000",
              "1129786981/1953125000",
              "954086093/1562500000",
              "32645640683/50000000000",
              "10282700543/15625000000",
              "690257/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_CFH": {
          "triangle": "CFH",
          "side": "hi",
          "value": "440901/500000",
          "witness": {
            "kind": "vertices",
            "signed": "CFH",
            "used": [
              2,
              5,
              7
            ],
            "values": [
              "13857/20000",
              "91091893327/125000000000",
              "47861332191/62500000000",
              "21118895789/25000000000",
              "440901/500000"
            ],
            "cell": "CA"
          }
        },
        "U_CGO": {
          "triangle": "CGO",
          "side": "hi",
          "value": "588757236407/1000000000000",
          "witness": {
            "kind": "vertices",
            "signed": "GCO",
            "used": [
              2,
              6,
              8,
              9,
              10
            ],
            "values": [
              "-46635626087/500000000000",
              "-36971303907/500000000000",
              "-36398025329/500000000000",
              "-22787197509/500000000000",
              "119904732023/1000000000000",
              "140379933539/1000000000000",
              "6314995751/40000000000",
              "35440707627/200000000000",
              "178350095291/1000000000000",
              "181531090523/1000000000000",
              "18721234333/100000000000",
              "189883307751/1000000000000",
              "205571750931/1000000000000",
              "20654098769/100000000000",
              "209899303319/1000000000000",
              "210358509267/1000000000000",
              "118041653351/500000000000",
              "251509666251/1000000000000",
              "131652481171/500000000000",
              "279877879047/1000000000000",
              "400388327527/1000000000000",
              "438358489279/1000000000000",
              "449259290899/1000000000000",
              "457687133639/1000000000000",
              "462014686027/1000000000000",
              "94073380651/200000000000",
              "487229452651/1000000000000",
              "514451108291/1000000000000",
              "518778660679/1000000000000",
              "519237866627/1000000000000",
              "106398652351/200000000000",
              "588757236407/1000000000000"
            ],
            "cell": "CA"
          }
        },
        "U_DEO": {
          "triangle": "DEO",
          "side": "hi",
          "value": "549122300391/1000000000000",
          "witness": {
            "kind": "vertices",
            "signed": "DEO",
            "used": [
              3,
              4,
              9,
              10
            ],
            "values": [
              "2341029263/100000000000",
              "56965263061/1000000000000",
              "6226903229/50000000000",
              "22566583653/100000000000",
              "151521890863/500000000000",
              "549122300391/1000000000000"
            ],
            "cell": "CA"
          }
        },
        "U_DEP": {
          "triangle": "DEP",
          "side": "hi",
          "value": "256117860069/500000000000",
          "witness": {
            "kind": "vertices",
            "signed": "DEP",
            "used": [
              3,
              4,
              11,
              12
            ],
            "values": [
              "2341029263/100000000000",
              "26569347599/500000000000",
              "6226903229/50000000000",
              "22566583653/100000000000",
              "70671801917/250000000000",
              "256117860069/500000000000"
            ],
            "cell": "CA"
          }
        },
        "U_DGO": {
          "triangle": "DGO",
          "side": "hi",
          "value": "61167440037/100000000000",
          "witness": {
            "kind": "vertices",
            "signed": "GDO",
            "used": [
              3,
              6,
              8,
              9,
              10
            ],
            "values": [
              "-10963000151/500000000000",
              "8081171611/500000000000",
              "30422485379/500000000000",
              "49466657141/500000000000",
              "117631854853/1000000000000",
              "155720198377/1000000000000",
              "17807883279/100000000000",
              "44952907627/250000000000",
              "4341150097/20000000000",
              "13618748377/62500000000",
              "46973143377/200000000000",
              "244027014183/1000000000000",
              "24456293817/100000000000",
              "282115357707/1000000000000",
              "28354161023/100000000000",
              "285636729249/1000000000000",
              "60269964453/200000000000",
              "153103394919/500000000000",
              "323725072773/1000000000000",
              "172147566681/500000000000",
              "72252175243/200000000000",
              "368407700309/1000000000000",
              "406496043833/1000000000000",
              "20939756783/50000000000",
              "85548996319/200000000000",
              "6065990513/12500000000",
              "485641562341/1000000000000",
              "524620234401/1000000000000",
              "54519029499/100000000000",
              "552125667721/1000000000000",
              "591104339781/1000000000000",
              "61167440037/100000000000"
            ],
            "cell": "CA"
          }
        },
        "U_FGH": {
          "triangle": "FGH",
          "side": "hi",
          "value": "22865566761/31250000000",
          "witness": {
            "kind": "vertices",
            "signed": "GFH",
            "used": [
              5,
              6,
              7,
              8
            ],
            "values": [
              "3804172763/50000000000",
              "3833507561/50000000000",
              "52340028687/250000000000",
              "52486702677/250000000000",
              "5391523131/20000000000",
              "171547083783/500000000000",
              "38141760031/100000000000",
              "232637060003/500000000000",
              "257347129899/500000000000",
              "718637877/1250000000",
              "299275389747/500000000000",
              "22865566761/31250000000"
            ],
            "cell": "CA"
          }
        },
        "U_FHP": {
          "triangle": "FHP",
          "side": "hi",
          "value": "2263144833/3906250000",
          "witness": {
            "kind": "vertices",
            "signed": "FHP",
            "used": [
              5,
              7,
              11,
              12
            ],
            "values": [
              "12412814737/125000000000",
              "13360834159/125000000000",
              "59903811/250000000",
              "29985235143/125000000000",
              "6186650913/25000000000",
              "1906015023/6250000000",
              "40311313459/125000000000",
              "46713148933/125000000000",
              "71127981/156250000",
              "11576746773/25000000000",
              "64285569339/125000000000",
              "2263144833/3906250000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "2": {
          "row": [
            "fan",
            "ABO",
            "ABG",
            "BGO",
            "AGO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ABO",
            "point": "G"
          }
        },
        "5": {
          "row": [
            "fan",
            "ACF",
            "ACG",
            "CFG",
            "AFG"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ACF",
            "point": "G"
          }
        },
        "6": {
          "row": [
            "fan",
            "ACF",
            "ACP",
            "CFP",
            "AFP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ACF",
            "point": "P"
          }
        },
        "8": {
          "row": [
            "fan",
            "ACO",
            "ACG",
            "CGO",
            "AGO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ACO",
            "point": "G"
          }
        },
        "9": {
          "row": [
            "fan",
            "ACO",
            "ACP",
            "COP",
            "AOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ACO",
            "point": "P"
          }
        },
        "10": {
          "row": [
            "fan",
            "ACP",
            "ACG",
            "CGP",
            "AGP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ACP",
            "point": "G"
          }
        },
        "11": {
          "row": [
            "fan",
            "ADF",
            "ADP",
            "DFP",
            "AFP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ADF",
            "point": "P"
          }
        },
        "14": {
          "row": [
            "fan",
            "BCO",
            "BCP",
            "COP",
            "BOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "BCO",
            "point": "P"
          }
        },
        "18": {
          "row": [
            "fan",
            "BFH",
            "BFG",
            "FGH",
            "BGH"
          ],
          "witness": {
            "kind": "fan",
            "outer": "BFH",
            "point": "G"
          }
        },
        "19": {
          "row": [
            "fan",
            "BFH",
            "BFO",
            "FHO",
            "BHO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "BFH",
            "point": "O"
          }
        },
        "20": {
          "row": [
            "fan",
            "BHO",
            "BGH",
            "BGO",
            "GHO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "HBO",
            "point": "G"
          }
        },
        "23": {
          "row": [
            "fan",
            "CFG",
            "CFP",
            "FGP",
            "CGP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "CFG",
            "point": "P"
          }
        },
        "31": {
          "row": [
            "fan",
            "FGH",
            "FGO",
            "FHO",
            "GHO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "GFH",
            "point": "O"
          }
        },
        "78": {
          "row": [
            "plu",
            "ACP",
            "AFG",
            "ACF",
            "AGP",
            "ACG",
            "AFP"
          ],
          "witness": {
            "kind": "plu",
            "word": "ACFGP"
          }
        },
        "79": {
          "row": [
            "plu",
            "ACF",
            "AHP",
            "ACH",
            "AFP",
            "ACP",
            "AFH"
          ],
          "witness": {
            "kind": "plu",
            "word": "ACFHP"
          }
        },
        "184": {
          "row": [
            "plu",
            "ACD",
            "BCO",
            "ABC",
            "CDO",
            "ACO",
            "BCD"
          ],
          "witness": {
            "kind": "plu",
            "word": "CABDO"
          }
        },
        "231": {
          "row": [
            "plu",
            "ACO",
            "CFP",
            "ACF",
            "COP",
            "ACP",
            "CFO"
          ],
          "witness": {
            "kind": "plu",
            "word": "CAFOP"
          }
        },
        "320": {
          "row": [
            "plu",
            "ADE",
            "CDF",
            "ACD",
            "DEF",
            "ADF",
            "CDE"
          ],
          "witness": {
            "kind": "plu",
            "word": "DACEF"
          }
        },
        "509": {
          "row": [
            "plu",
            "CFO",
            "FGH",
            "CFG",
            "FHO",
            "CFH",
            "FGO"
          ],
          "witness": {
            "kind": "plu",
            "word": "FCGHO"
          }
        },
        "512": {
          "row": [
            "plu",
            "CFO",
            "FHP",
            "CFH",
            "FOP",
            "CFP",
            "FHO"
          ],
          "witness": {
            "kind": "plu",
            "word": "FCHOP"
          }
        },
        "641": {
          "row": [
            "plu",
            "AHP",
            "CFH",
            "ACH",
            "FHP",
            "AFH",
            "CHP"
          ],
          "witness": {
            "kind": "plu",
            "word": "HACFP"
          }
        },
        "776": {
          "row": [
            "plu",
            "AOP",
            "BCP",
            "ABP",
            "COP",
            "ACP",
            "BOP"
          ],
          "witness": {
            "kind": "plu",
            "word": "PABCO"
          }
        },
        "841": {
          "row": [
            "quad",
            "ABC",
            "ACO",
            "93/125"
          ],
          "witness": {
            "kind": "quad",
            "poly": "ABCO",
            "occupants": [
              "G",
              "P"
            ]
          }
        },
        "915": {
          "row": [
            "quad",
            "ABP",
            "AOP",
            "449/1000"
          ],
          "witness": {
            "kind": "quad",
            "poly": "ABPO",
            "occupants": [
              "G"
            ]
          }
        },
        "963": {
          "row": [
            "quad",
            "ACF",
            "AFH",
            "93/91"
          ],
          "witness": {
            "kind": "quad",
            "poly": "ACFH",
            "occupants": [
              "G",
              "O",
              "P"
            ]
          }
        },
        "987": {
          "row": [
            "quad",
            "ADE",
            "AEH",
            "449/1000"
          ],
          "witness": {
            "kind": "quad",
            "poly": "ADEH",
            "occupants": [
              "P"
            ]
          }
        },
        "1012": {
          "row": [
            "quad",
            "AFP",
            "AFH",
            "449/1000"
          ],
          "witness": {
            "kind": "quad",
            "poly": "APFH",
            "occupants": [
              "O"
            ]
          }
        },
        "1139": {
          "row": [
            "support",
            "DEH",
            "CEH",
            "CDE",
            "2697/5000"
          ],
          "witness": {
            "kind": "quad_support",
            "poly": "EHCD",
            "occupants": [
              "P"
            ],
            "rate": "29/5"
          }
        },
        "1399": {
          "row": [
            "support",
            "BCF",
            "BEF",
            "BCE",
            "1023/1000"
          ],
          "witness": {
            "kind": "five_support",
            "poly": "BCDEF"
          }
        },
        "1414": {
          "row": [
            "support",
            "BCO",
            "BEO",
            "BCE",
            "1023/1000"
          ],
          "witness": {
            "kind": "five_support",
            "poly": "BCDEO"
          }
        },
        "1429": {
          "row": [
            "support",
            "BCO",
            "BFO",
            "BCF",
            "1023/1000"
          ],
          "witness": {
            "kind": "five_support",
            "poly": "BCDFO"
          }
        },
        "1989": {
          "row": [
            "balance",
            [
              [
                1,
                "ABO",
                "CGP"
              ],
              [
                -1,
                "ACG",
                "BOP"
              ],
              [
                -1,
                "ACP",
                "BGO"
              ],
              [
                -1,
                "AGP",
                "BCO"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ACG",
            "point": "P",
            "line": "BO"
          }
        },
        "2022": {
          "row": [
            "balance",
            [
              [
                1,
                "ACO",
                "DFP"
              ],
              [
                -1,
                "ACP",
                "DFO"
              ],
              [
                -1,
                "ADF",
                "COP"
              ],
              [
                -1,
                "AOP",
                "CDF"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ACO",
            "point": "P",
            "line": "DF"
          }
        },
        "2024": {
          "row": [
            "balance",
            [
              [
                1,
                "ACO",
                "FGP"
              ],
              [
                1,
                "ACP",
                "FGO"
              ],
              [
                1,
                "AFG",
                "COP"
              ],
              [
                -1,
                "AOP",
                "CFG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ACO",
            "point": "P",
            "line": "FG"
          }
        },
        "2153": {
          "row": [
            "balance",
            [
              [
                1,
                "ACO",
                "FGP"
              ],
              [
                1,
                "AFG",
                "COP"
              ],
              [
                -1,
                "AFP",
                "CGO"
              ],
              [
                1,
                "AGP",
                "CFO"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "AFG",
            "point": "P",
            "line": "CO"
          }
        },
        "2633": {
          "row": [
            "balance",
            [
              [
                1,
                "ABP",
                "GHO"
              ],
              [
                -1,
                "AGP",
                "BHO"
              ],
              [
                -1,
                "AHP",
                "BGO"
              ],
              [
                -1,
                "AOP",
                "BGH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "BGH",
            "point": "O",
            "line": "AP"
          }
        },
        "3221": {
          "row": [
            "balance",
            [
              [
                1,
                "CFP",
                "GHO"
              ],
              [
                -1,
                "CGP",
                "FHO"
              ],
              [
                -1,
                "CHP",
                "FGO"
              ],
              [
                -1,
                "COP",
                "FGH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "FGH",
            "point": "O",
            "line": "CP"
          }
        },
        "3938": {
          "row": [
            "linear",
            {
              "ABP": "-93/1000",
              "BCP": "39336568407/100000000000",
              "BOP": "-279/1000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACO",
            "point": "P",
            "line": "BP",
            "side": "lower",
            "outer_upper": {
              "triangle": "ACO",
              "ref": "U_ACO",
              "value": "76536568407/100000000000"
            },
            "fan_lower": [
              {
                "triangle": "COP",
                "ref": "L_COP",
                "value": "93/1000"
              },
              {
                "triangle": "AOP",
                "ref": "L_AOP",
                "value": "93/1000"
              },
              {
                "triangle": "ACP",
                "ref": "L_ACP",
                "value": "279/1000"
              }
            ],
            "residual": "30036568407/100000000000"
          }
        },
        "3944": {
          "row": [
            "linear",
            {
              "ACF": "-93/1000",
              "CFO": "-279/1000",
              "CFP": "76536568407/100000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACO",
            "point": "P",
            "line": "CF",
            "side": "lower",
            "outer_upper": {
              "triangle": "ACO",
              "ref": "U_ACO",
              "value": "76536568407/100000000000"
            },
            "fan_lower": [
              {
                "triangle": "COP",
                "ref": "L_COP",
                "value": "93/1000"
              },
              {
                "triangle": "AOP",
                "ref": "L_AOP",
                "value": "93/1000"
              },
              {
                "triangle": "ACP",
                "ref": "L_ACP",
                "value": "279/1000"
              }
            ],
            "residual": "30036568407/100000000000"
          }
        },
        "4038": {
          "row": [
            "linear",
            {
              "AFP": "1148132901/3125000000",
              "CFP": "-93/1000",
              "FGP": "-1729382901/3125000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACP",
            "point": "G",
            "line": "FP",
            "side": "lower",
            "outer_upper": {
              "triangle": "ACP",
              "ref": "U_ACP",
              "value": "1729382901/3125000000"
            },
            "fan_lower": [
              {
                "triangle": "CGP",
                "ref": "L_CGP",
                "value": "93/1000"
              },
              {
                "triangle": "AGP",
                "ref": "L_AGP",
                "value": "93/1000"
              },
              {
                "triangle": "ACG",
                "ref": "L_ACG",
                "value": "93/1000"
              }
            ],
            "residual": "857507901/3125000000"
          }
        },
        "4050": {
          "row": [
            "linear",
            {
              "AOP": "1148132901/3125000000",
              "COP": "-93/1000",
              "GOP": "-1729382901/3125000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACP",
            "point": "G",
            "line": "OP",
            "side": "lower",
            "outer_upper": {
              "triangle": "ACP",
              "ref": "U_ACP",
              "value": "1729382901/3125000000"
            },
            "fan_lower": [
              {
                "triangle": "CGP",
                "ref": "L_CGP",
                "value": "93/1000"
              },
              {
                "triangle": "AGP",
                "ref": "L_AGP",
                "value": "93/1000"
              },
              {
                "triangle": "ACG",
                "ref": "L_ACG",
                "value": "93/1000"
              }
            ],
            "residual": "857507901/3125000000"
          }
        },
        "4265": {
          "row": [
            "linear",
            {
              "ABG": "-93/1000",
              "ACG": "-93/1000",
              "AGO": "101236268623/200000000000",
              "AGP": "-138436268623/200000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "BCO",
            "point": "P",
            "line": "AG",
            "side": "upper",
            "outer_upper": {
              "triangle": "BCO",
              "ref": "U_BCO",
              "value": "138436268623/200000000000"
            },
            "fan_lower": [
              {
                "triangle": "COP",
                "ref": "L_COP",
                "value": "93/1000"
              },
              {
                "triangle": "BOP",
                "ref": "L_BOP",
                "value": "93/1000"
              },
              {
                "triangle": "BCP",
                "ref": "L_BCP",
                "value": "93/1000"
              }
            ],
            "residual": "82636268623/200000000000"
          }
        },
        "4753": {
          "row": [
            "linear",
            {
              "FHO": "-93/1000",
              "BFO": "103159681791/200000000000",
              "FGO": "-140359681791/200000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "HBO",
            "point": "G",
            "line": "FO",
            "side": "upper",
            "outer_upper": {
              "triangle": "BHO",
              "ref": "U_BHO",
              "value": "140359681791/200000000000"
            },
            "fan_lower": [
              {
                "triangle": "BGO",
                "ref": "L_BGO",
                "value": "93/1000"
              },
              {
                "triangle": "GHO",
                "ref": "L_GHO",
                "value": "93/1000"
              },
              {
                "triangle": "BGH",
                "ref": "L_BGH",
                "value": "93/1000"
              }
            ],
            "residual": "84559681791/200000000000"
          }
        },
        "4909": {
          "row": [
            "linear",
            {
              "ACG": "-93/1000",
              "AFG": "504257/1000000",
              "AGP": "-690257/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFG",
            "point": "P",
            "line": "AG",
            "side": "upper",
            "outer_upper": {
              "triangle": "CFG",
              "ref": "U_CFG",
              "value": "690257/1000000"
            },
            "fan_lower": [
              {
                "triangle": "FGP",
                "ref": "L_FGP",
                "value": "93/1000"
              },
              {
                "triangle": "CGP",
                "ref": "L_CGP",
                "value": "93/1000"
              },
              {
                "triangle": "CFP",
                "ref": "L_CFP",
                "value": "93/1000"
              }
            ],
            "residual": "411257/1000000"
          }
        },
        "5061": {
          "row": [
            "linear",
            {
              "ACH": "-279/1000",
              "AFH": "-93/1000",
              "AHP": "440901/500000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFH",
            "point": "P",
            "line": "AH",
            "side": "upper",
            "outer_upper": {
              "triangle": "CFH",
              "ref": "U_CFH",
              "value": "440901/500000"
            },
            "fan_lower": [
              {
                "triangle": "FHP",
                "ref": "L_FHP",
                "value": "279/1000"
              },
              {
                "triangle": "CHP",
                "ref": "L_CHP",
                "value": "93/1000"
              },
              {
                "triangle": "CFP",
                "ref": "L_CFP",
                "value": "93/1000"
              }
            ],
            "residual": "208401/500000"
          }
        },
        "5166": {
          "row": [
            "linear",
            {
              "CDG": "-93/1000",
              "DGO": "402757236407/1000000000000",
              "DGP": "-588757236407/1000000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "GCO",
            "point": "P",
            "line": "DG",
            "side": "lower",
            "outer_upper": {
              "triangle": "CGO",
              "ref": "U_CGO",
              "value": "588757236407/1000000000000"
            },
            "fan_lower": [
              {
                "triangle": "COP",
                "ref": "L_COP",
                "value": "93/1000"
              },
              {
                "triangle": "GOP",
                "ref": "L_GOP",
                "value": "93/1000"
              },
              {
                "triangle": "CGP",
                "ref": "L_CGP",
                "value": "93/1000"
              }
            ],
            "residual": "309757236407/1000000000000"
          }
        },
        "5494": {
          "row": [
            "linear",
            {
              "BFG": "17053066761/31250000000",
              "BGH": "-93/1000",
              "BGO": "-22865566761/31250000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "GFH",
            "point": "O",
            "line": "BG",
            "side": "lower",
            "outer_upper": {
              "triangle": "FGH",
              "ref": "U_FGH",
              "value": "22865566761/31250000000"
            },
            "fan_lower": [
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              },
              {
                "triangle": "GHO",
                "ref": "L_GHO",
                "value": "93/1000"
              },
              {
                "triangle": "FGO",
                "ref": "L_FGO",
                "value": "93/1000"
              }
            ],
            "residual": "14146816761/31250000000"
          }
        },
        "5512": {
          "row": [
            "linear",
            {
              "CGP": "-93/1000",
              "CFP": "17053066761/31250000000",
              "CHP": "-93/1000",
              "COP": "-22865566761/31250000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "GFH",
            "point": "O",
            "line": "CP",
            "side": "lower",
            "outer_upper": {
              "triangle": "FGH",
              "ref": "U_FGH",
              "value": "22865566761/31250000000"
            },
            "fan_lower": [
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              },
              {
                "triangle": "GHO",
                "ref": "L_GHO",
                "value": "93/1000"
              },
              {
                "triangle": "FGO",
                "ref": "L_FGO",
                "value": "93/1000"
              }
            ],
            "residual": "14146816761/31250000000"
          }
        },
        "5582": {
          "row": [
            "linear",
            {
              "CFP": "1536582333/3906250000",
              "CHP": "-93/1000",
              "COP": "-2263144833/3906250000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "FHP",
            "point": "O",
            "line": "CP",
            "side": "lower",
            "outer_upper": {
              "triangle": "FHP",
              "ref": "U_FHP",
              "value": "2263144833/3906250000"
            },
            "fan_lower": [
              {
                "triangle": "HOP",
                "ref": "L_HOP",
                "value": "93/1000"
              },
              {
                "triangle": "FOP",
                "ref": "L_FOP",
                "value": "93/1000"
              },
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              }
            ],
            "residual": "1173301083/3906250000"
          }
        }
      },
      "updates": [
        {
          "id": "T0016",
          "relation": 9,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "196683/500000",
          "sources": [
            "U_ACO",
            "L_ACP",
            "L_COP"
          ]
        },
        {
          "id": "T0034",
          "relation": 78,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "132063/1000000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "L_AFP",
            "U_ACP"
          ]
        },
        {
          "id": "T0040",
          "relation": 184,
          "rule": "sumlo",
          "triangle": "ACD",
          "side": "lo",
          "value": "21117/200000",
          "sources": [
            "L_ABC",
            "L_CDO",
            "L_ACO",
            "L_BCD",
            "U_BCO"
          ]
        },
        {
          "id": "T0047",
          "relation": 231,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "11809/100000",
          "sources": [
            "L_ACF",
            "L_COP",
            "L_ACP",
            "L_CFO",
            "U_ACO"
          ]
        },
        {
          "id": "T0059",
          "relation": 512,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "32543/250000",
          "sources": [
            "L_CFH",
            "L_FOP",
            "T0047",
            "L_FHO",
            "U_FHP"
          ]
        },
        {
          "id": "T0060",
          "relation": 641,
          "rule": "sumlo",
          "triangle": "AHP",
          "side": "lo",
          "value": "98083/1000000",
          "sources": [
            "L_ACH",
            "L_FHP",
            "L_AFH",
            "L_CHP",
            "U_CFH"
          ]
        },
        {
          "id": "T0071",
          "relation": 963,
          "rule": "quad",
          "triangle": "AFH",
          "side": "lo",
          "value": "8761/62500",
          "sources": [
            "U_ACF"
          ]
        },
        {
          "id": "T0085",
          "relation": 1989,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "52447/500000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "L_ACP",
            "L_BGO",
            "L_AGP",
            "L_BCO",
            "U_ABO"
          ]
        },
        {
          "id": "T0087",
          "relation": 2024,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "37183/250000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "L_ACP",
            "L_FGO",
            "T0034",
            "L_COP",
            "U_CFG"
          ]
        },
        {
          "id": "T0093",
          "relation": 2633,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "3391/31250",
          "sources": [
            "L_AGP",
            "L_BHO",
            "T0060",
            "L_BGO",
            "T0087",
            "L_BGH",
            "U_ABP"
          ]
        },
        {
          "id": "T0106",
          "relation": 3938,
          "rule": "linear",
          "triangle": "BCP",
          "side": "lo",
          "value": "131923/1000000",
          "sources": [
            "L_ABP",
            "L_BOP"
          ]
        },
        {
          "id": "T0107",
          "relation": 3944,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "3291/25000",
          "sources": [
            "L_ACF",
            "T0059"
          ]
        },
        {
          "id": "T0113",
          "relation": 4038,
          "rule": "linear",
          "triangle": "AFP",
          "side": "lo",
          "value": "173403/1000000",
          "sources": [
            "T0107",
            "L_FGP"
          ]
        },
        {
          "id": "T0114",
          "relation": 4050,
          "rule": "linear",
          "triangle": "AOP",
          "side": "lo",
          "value": "81811/500000",
          "sources": [
            "L_COP",
            "L_GOP"
          ]
        },
        {
          "id": "T0117",
          "relation": 4265,
          "rule": "linear",
          "triangle": "AGO",
          "side": "lo",
          "value": "161347/1000000",
          "sources": [
            "L_ABG",
            "L_ACG",
            "L_AGP"
          ]
        },
        {
          "id": "T0132",
          "relation": 4753,
          "rule": "linear",
          "triangle": "BFO",
          "side": "lo",
          "value": "17913/125000",
          "sources": [
            "L_FGO",
            "L_FHO"
          ]
        },
        {
          "id": "T0135",
          "relation": 4909,
          "rule": "linear",
          "triangle": "AFG",
          "side": "lo",
          "value": "28891/200000",
          "sources": [
            "L_ACG",
            "L_AGP"
          ]
        },
        {
          "id": "T0139",
          "relation": 5061,
          "rule": "linear",
          "triangle": "AHP",
          "side": "lo",
          "value": "51529/500000",
          "sources": [
            "L_ACH",
            "T0071"
          ]
        },
        {
          "id": "T0144",
          "relation": 5166,
          "rule": "linear",
          "triangle": "DGP",
          "side": "hi",
          "value": "80749/200000",
          "sources": [
            "L_CDG",
            "U_DGO"
          ]
        },
        {
          "id": "T0147",
          "relation": 5494,
          "rule": "linear",
          "triangle": "BFG",
          "side": "lo",
          "value": "35137/250000",
          "sources": [
            "L_BGH",
            "L_BGO"
          ]
        },
        {
          "id": "T0152",
          "relation": 5582,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "158961/1000000",
          "sources": [
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0157",
          "relation": 2,
          "rule": "sum",
          "triangle": "ABO",
          "side": "lo",
          "value": "347347/1000000",
          "sources": [
            "L_ABG",
            "L_BGO",
            "T0117"
          ]
        },
        {
          "id": "T0159",
          "relation": 5,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "644347/1000000",
          "sources": [
            "U_ACF",
            "L_ACG",
            "T0135"
          ]
        },
        {
          "id": "T0162",
          "relation": 8,
          "rule": "sub",
          "triangle": "CGO",
          "side": "hi",
          "value": "511019/1000000",
          "sources": [
            "U_ACO",
            "L_ACG",
            "T0117"
          ]
        },
        {
          "id": "T0163",
          "relation": 9,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "63593/125000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0114"
          ]
        },
        {
          "id": "T0164",
          "relation": 10,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "145447/500000",
          "sources": [
            "L_ACG",
            "T0085",
            "L_AGP"
          ]
        },
        {
          "id": "T0166",
          "relation": 11,
          "rule": "sum",
          "triangle": "ADF",
          "side": "lo",
          "value": "359403/1000000",
          "sources": [
            "L_ADP",
            "L_DFP",
            "T0113"
          ]
        },
        {
          "id": "T0169",
          "relation": 14,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "317923/1000000",
          "sources": [
            "T0106",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0170",
          "relation": 18,
          "rule": "sub",
          "triangle": "FGH",
          "side": "hi",
          "value": "324127/500000",
          "sources": [
            "U_BFH",
            "T0147",
            "L_BGH"
          ]
        },
        {
          "id": "T0172",
          "relation": 20,
          "rule": "sum",
          "triangle": "BHO",
          "side": "lo",
          "value": "18407/62500",
          "sources": [
            "L_BGH",
            "L_BGO",
            "T0093"
          ]
        },
        {
          "id": "T0175",
          "relation": 23,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "71371/200000",
          "sources": [
            "T0152",
            "L_FGP",
            "T0085"
          ]
        },
        {
          "id": "T0182",
          "relation": 78,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "158353/1000000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "T0113",
            "T0163"
          ]
        },
        {
          "id": "T0191",
          "relation": 509,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "150593/1000000",
          "sources": [
            "T0175",
            "L_FHO",
            "L_CFH",
            "L_FGO",
            "T0170"
          ]
        },
        {
          "id": "T0192",
          "relation": 776,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "67367/500000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0164",
            "L_BOP",
            "T0016"
          ]
        },
        {
          "id": "T0201",
          "relation": 1989,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "56541/500000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0164",
            "L_BGO",
            "L_AGP",
            "T0169",
            "U_ABO"
          ]
        },
        {
          "id": "T0202",
          "relation": 2022,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "98899/1000000",
          "sources": [
            "T0164",
            "L_DFO",
            "T0166",
            "L_COP",
            "T0114",
            "L_CDF",
            "U_ACO"
          ]
        },
        {
          "id": "T0203",
          "relation": 2024,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "164841/1000000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0164",
            "L_FGO",
            "T0182",
            "L_COP",
            "T0159"
          ]
        },
        {
          "id": "T0205",
          "relation": 2153,
          "rule": "balance_lo",
          "triangle": "AFP",
          "side": "lo",
          "value": "45579/250000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0182",
            "L_COP",
            "L_AGP",
            "T0191",
            "T0162"
          ]
        },
        {
          "id": "T0207",
          "relation": 2633,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "3627/31250",
          "sources": [
            "L_AGP",
            "T0172",
            "T0139",
            "L_BGO",
            "T0203",
            "L_BGH",
            "U_ABP"
          ]
        },
        {
          "id": "T0224",
          "relation": 5512,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "7991/50000",
          "sources": [
            "T0201",
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0230",
          "relation": 5,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "630449/1000000",
          "sources": [
            "U_ACF",
            "L_ACG",
            "T0182"
          ]
        },
        {
          "id": "T0235",
          "relation": 9,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "20301/40000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0203"
          ]
        },
        {
          "id": "T0236",
          "relation": 9,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "11921/31250",
          "sources": [
            "U_ACO",
            "T0164",
            "L_COP"
          ]
        },
        {
          "id": "T0237",
          "relation": 10,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "149541/500000",
          "sources": [
            "L_ACG",
            "T0201",
            "L_AGP"
          ]
        },
        {
          "id": "T0239",
          "relation": 11,
          "rule": "sum",
          "triangle": "ADF",
          "side": "lo",
          "value": "74843/200000",
          "sources": [
            "L_ADP",
            "T0202",
            "T0205"
          ]
        },
        {
          "id": "T0242",
          "relation": 14,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "160367/500000",
          "sources": [
            "T0192",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0243",
          "relation": 20,
          "rule": "sum",
          "triangle": "BHO",
          "side": "lo",
          "value": "18879/62500",
          "sources": [
            "L_BGH",
            "L_BGO",
            "T0207"
          ]
        },
        {
          "id": "T0245",
          "relation": 23,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "182951/500000",
          "sources": [
            "T0224",
            "L_FGP",
            "T0201"
          ]
        },
        {
          "id": "T0253",
          "relation": 78,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "160367/1000000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "T0205",
            "T0235"
          ]
        },
        {
          "id": "T0254",
          "relation": 79,
          "rule": "sumlo",
          "triangle": "AHP",
          "side": "lo",
          "value": "26307/250000",
          "sources": [
            "L_ACH",
            "T0205",
            "T0237",
            "T0071",
            "U_ACF"
          ]
        },
        {
          "id": "T0260",
          "relation": 509,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "15189/100000",
          "sources": [
            "T0245",
            "L_FHO",
            "L_CFH",
            "L_FGO",
            "T0170"
          ]
        },
        {
          "id": "T0261",
          "relation": 776,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "35233/250000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0237",
            "L_BOP",
            "T0236"
          ]
        },
        {
          "id": "T0269",
          "relation": 1989,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "57427/500000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0237",
            "L_BGO",
            "L_AGP",
            "T0242",
            "U_ABO"
          ]
        },
        {
          "id": "T0270",
          "relation": 2022,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "50921/500000",
          "sources": [
            "T0237",
            "L_DFO",
            "T0239",
            "L_COP",
            "T0203",
            "L_CDF",
            "U_ACO"
          ]
        },
        {
          "id": "T0271",
          "relation": 2024,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "8499/50000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0237",
            "L_FGO",
            "T0253",
            "L_COP",
            "T0230"
          ]
        },
        {
          "id": "T0272",
          "relation": 2153,
          "rule": "balance_lo",
          "triangle": "AFP",
          "side": "lo",
          "value": "91459/500000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0253",
            "L_COP",
            "L_AGP",
            "T0260",
            "T0162"
          ]
        },
        {
          "id": "T0274",
          "relation": 2633,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "119131/1000000",
          "sources": [
            "L_AGP",
            "T0243",
            "T0254",
            "L_BGO",
            "T0271",
            "L_BGH",
            "U_ABP"
          ]
        },
        {
          "id": "T0286",
          "relation": 5512,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "80061/500000",
          "sources": [
            "T0269",
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0291",
          "relation": 5,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "125687/200000",
          "sources": [
            "U_ACF",
            "L_ACG",
            "T0253"
          ]
        },
        {
          "id": "T0296",
          "relation": 9,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "251193/500000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0271"
          ]
        },
        {
          "id": "T0297",
          "relation": 9,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "93321/250000",
          "sources": [
            "U_ACO",
            "T0237",
            "L_COP"
          ]
        },
        {
          "id": "T0298",
          "relation": 10,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "150427/500000",
          "sources": [
            "L_ACG",
            "T0269",
            "L_AGP"
          ]
        },
        {
          "id": "T0300",
          "relation": 11,
          "rule": "sum",
          "triangle": "ADF",
          "side": "lo",
          "value": "2361/6250",
          "sources": [
            "L_ADP",
            "T0270",
            "T0272"
          ]
        },
        {
          "id": "T0303",
          "relation": 14,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "81733/250000",
          "sources": [
            "T0261",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0305",
          "relation": 20,
          "rule": "sum",
          "triangle": "BHO",
          "side": "lo",
          "value": "305131/1000000",
          "sources": [
            "L_BGH",
            "L_BGO",
            "T0274"
          ]
        },
        {
          "id": "T0307",
          "relation": 23,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "45997/125000",
          "sources": [
            "T0286",
            "L_FGP",
            "T0269"
          ]
        },
        {
          "id": "T0316",
          "relation": 78,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "162119/1000000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "T0272",
            "T0296"
          ]
        },
        {
          "id": "T0317",
          "relation": 79,
          "rule": "sumlo",
          "triangle": "AHP",
          "side": "lo",
          "value": "1057/10000",
          "sources": [
            "L_ACH",
            "T0272",
            "T0298",
            "T0071",
            "U_ACF"
          ]
        },
        {
          "id": "T0322",
          "relation": 509,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "38047/250000",
          "sources": [
            "T0307",
            "L_FHO",
            "L_CFH",
            "L_FGO",
            "T0170"
          ]
        },
        {
          "id": "T0323",
          "relation": 776,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "9029/62500",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0298",
            "L_BOP",
            "T0297"
          ]
        },
        {
          "id": "T0332",
          "relation": 1989,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "116139/1000000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0298",
            "L_BGO",
            "L_AGP",
            "T0303",
            "U_ABO"
          ]
        },
        {
          "id": "T0333",
          "relation": 2022,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "103113/1000000",
          "sources": [
            "T0298",
            "L_DFO",
            "T0300",
            "L_COP",
            "T0271",
            "L_CDF",
            "U_ACO"
          ]
        },
        {
          "id": "T0334",
          "relation": 2024,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "85523/500000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0298",
            "L_FGO",
            "T0316",
            "L_COP",
            "T0291"
          ]
        },
        {
          "id": "T0335",
          "relation": 2153,
          "rule": "balance_lo",
          "triangle": "AFP",
          "side": "lo",
          "value": "183291/1000000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0316",
            "L_COP",
            "L_AGP",
            "T0322",
            "T0162"
          ]
        },
        {
          "id": "T0338",
          "relation": 2633,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "120081/1000000",
          "sources": [
            "L_AGP",
            "T0305",
            "T0317",
            "L_BGO",
            "T0334",
            "L_BGH",
            "U_ABP"
          ]
        },
        {
          "id": "T0349",
          "relation": 5512,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "160341/1000000",
          "sources": [
            "T0332",
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0354",
          "relation": 5,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "626683/1000000",
          "sources": [
            "U_ACF",
            "L_ACG",
            "T0316"
          ]
        },
        {
          "id": "T0356",
          "relation": 6,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "397657/1000000",
          "sources": [
            "U_ACF",
            "T0298",
            "T0335"
          ]
        },
        {
          "id": "T0359",
          "relation": 9,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "12533/25000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0334"
          ]
        },
        {
          "id": "T0360",
          "relation": 9,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "46439/125000",
          "sources": [
            "U_ACO",
            "T0298",
            "L_COP"
          ]
        },
        {
          "id": "T0361",
          "relation": 10,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "302139/1000000",
          "sources": [
            "L_ACG",
            "T0332",
            "L_AGP"
          ]
        },
        {
          "id": "T0363",
          "relation": 11,
          "rule": "sum",
          "triangle": "ADF",
          "side": "lo",
          "value": "94851/250000",
          "sources": [
            "L_ADP",
            "T0333",
            "T0335"
          ]
        },
        {
          "id": "T0366",
          "relation": 14,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "10327/31250",
          "sources": [
            "T0323",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0371",
          "relation": 23,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "9237/25000",
          "sources": [
            "T0349",
            "L_FGP",
            "T0332"
          ]
        },
        {
          "id": "T0377",
          "relation": 31,
          "rule": "sum",
          "triangle": "FGH",
          "side": "lo",
          "value": "306081/1000000",
          "sources": [
            "L_FGO",
            "L_FHO",
            "T0338"
          ]
        },
        {
          "id": "T0380",
          "relation": 78,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "162533/1000000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "T0335",
            "T0359"
          ]
        },
        {
          "id": "T0386",
          "relation": 509,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "38101/250000",
          "sources": [
            "T0371",
            "L_FHO",
            "L_CFH",
            "L_FGO",
            "T0170"
          ]
        },
        {
          "id": "T0387",
          "relation": 776,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "5819/40000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0361",
            "L_BOP",
            "T0360"
          ]
        },
        {
          "id": "T0397",
          "relation": 1989,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "23383/200000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0361",
            "L_BGO",
            "L_AGP",
            "T0366",
            "U_ABO"
          ]
        },
        {
          "id": "T0398",
          "relation": 2022,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "51799/500000",
          "sources": [
            "T0361",
            "L_DFO",
            "T0363",
            "L_COP",
            "T0334",
            "L_CDF",
            "U_ACO"
          ]
        },
        {
          "id": "T0399",
          "relation": 2024,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "2684/15625",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0361",
            "L_FGO",
            "T0380",
            "L_COP",
            "T0354"
          ]
        },
        {
          "id": "T0400",
          "relation": 2153,
          "rule": "balance_lo",
          "triangle": "AFP",
          "side": "lo",
          "value": "91703/500000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0380",
            "L_COP",
            "L_AGP",
            "T0386",
            "T0162"
          ]
        },
        {
          "id": "T0405",
          "relation": 3221,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "4827/40000",
          "sources": [
            "T0397",
            "L_FHO",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0377",
            "T0356"
          ]
        },
        {
          "id": "T0415",
          "relation": 5512,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "160473/1000000",
          "sources": [
            "T0397",
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0420",
          "relation": 5,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "626269/1000000",
          "sources": [
            "U_ACF",
            "L_ACG",
            "T0380"
          ]
        },
        {
          "id": "T0422",
          "relation": 6,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "396257/1000000",
          "sources": [
            "U_ACF",
            "T0361",
            "T0400"
          ]
        },
        {
          "id": "T0425",
          "relation": 9,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "50059/100000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0399"
          ]
        },
        {
          "id": "T0426",
          "relation": 9,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "370227/1000000",
          "sources": [
            "U_ACO",
            "T0361",
            "L_COP"
          ]
        },
        {
          "id": "T0427",
          "relation": 10,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "60583/200000",
          "sources": [
            "L_ACG",
            "T0397",
            "L_AGP"
          ]
        },
        {
          "id": "T0429",
          "relation": 11,
          "rule": "sum",
          "triangle": "ADF",
          "side": "lo",
          "value": "95001/250000",
          "sources": [
            "L_ADP",
            "T0398",
            "T0400"
          ]
        },
        {
          "id": "T0432",
          "relation": 14,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "13259/40000",
          "sources": [
            "T0387",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0437",
          "relation": 23,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "92597/250000",
          "sources": [
            "T0415",
            "L_FGP",
            "T0397"
          ]
        },
        {
          "id": "T0443",
          "relation": 31,
          "rule": "sum",
          "triangle": "FGH",
          "side": "lo",
          "value": "12267/40000",
          "sources": [
            "L_FGO",
            "L_FHO",
            "T0405"
          ]
        },
        {
          "id": "T0446",
          "relation": 78,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "162791/1000000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "T0400",
            "T0425"
          ]
        },
        {
          "id": "T0452",
          "relation": 509,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "76267/500000",
          "sources": [
            "T0437",
            "L_FHO",
            "L_CFH",
            "L_FGO",
            "T0170"
          ]
        },
        {
          "id": "T0453",
          "relation": 776,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "5847/40000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0427",
            "L_BOP",
            "T0426"
          ]
        },
        {
          "id": "T0462",
          "relation": 1989,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "117203/1000000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0427",
            "L_BGO",
            "L_AGP",
            "T0432",
            "U_ABO"
          ]
        },
        {
          "id": "T0463",
          "relation": 2022,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "51927/500000",
          "sources": [
            "T0427",
            "L_DFO",
            "T0429",
            "L_COP",
            "T0399",
            "L_CDF",
            "U_ACO"
          ]
        },
        {
          "id": "T0464",
          "relation": 2024,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "172043/1000000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0427",
            "L_FGO",
            "T0446",
            "L_COP",
            "T0420"
          ]
        },
        {
          "id": "T0465",
          "relation": 2153,
          "rule": "balance_lo",
          "triangle": "AFP",
          "side": "lo",
          "value": "183477/1000000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0446",
            "L_COP",
            "L_AGP",
            "T0452",
            "T0162"
          ]
        },
        {
          "id": "T0470",
          "relation": 3221,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "121309/1000000",
          "sources": [
            "T0462",
            "L_FHO",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0443",
            "T0422"
          ]
        },
        {
          "id": "T0480",
          "relation": 5512,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "80261/500000",
          "sources": [
            "T0462",
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0485",
          "relation": 5,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "626011/1000000",
          "sources": [
            "U_ACF",
            "L_ACG",
            "T0446"
          ]
        },
        {
          "id": "T0487",
          "relation": 6,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "39541/100000",
          "sources": [
            "U_ACF",
            "T0427",
            "T0465"
          ]
        },
        {
          "id": "T0490",
          "relation": 9,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "500323/1000000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0464"
          ]
        },
        {
          "id": "T0491",
          "relation": 9,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "369451/1000000",
          "sources": [
            "U_ACO",
            "T0427",
            "L_COP"
          ]
        },
        {
          "id": "T0492",
          "relation": 10,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "303203/1000000",
          "sources": [
            "L_ACG",
            "T0462",
            "L_AGP"
          ]
        },
        {
          "id": "T0494",
          "relation": 11,
          "rule": "sum",
          "triangle": "ADF",
          "side": "lo",
          "value": "380331/1000000",
          "sources": [
            "L_ADP",
            "T0463",
            "T0465"
          ]
        },
        {
          "id": "T0497",
          "relation": 14,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "13287/40000",
          "sources": [
            "T0453",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0502",
          "relation": 23,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "14829/40000",
          "sources": [
            "T0480",
            "L_FGP",
            "T0462"
          ]
        },
        {
          "id": "T0508",
          "relation": 31,
          "rule": "sum",
          "triangle": "FGH",
          "side": "lo",
          "value": "307309/1000000",
          "sources": [
            "L_FGO",
            "L_FHO",
            "T0470"
          ]
        },
        {
          "id": "T0511",
          "relation": 78,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "162891/1000000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "T0465",
            "T0490"
          ]
        },
        {
          "id": "T0517",
          "relation": 509,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "76291/500000",
          "sources": [
            "T0502",
            "L_FHO",
            "L_CFH",
            "L_FGO",
            "T0170"
          ]
        },
        {
          "id": "T0518",
          "relation": 776,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "73277/500000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0492",
            "L_BOP",
            "T0491"
          ]
        },
        {
          "id": "T0527",
          "relation": 1989,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "58681/500000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0492",
            "L_BGO",
            "L_AGP",
            "T0497",
            "U_ABO"
          ]
        },
        {
          "id": "T0528",
          "relation": 2022,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "103961/1000000",
          "sources": [
            "T0492",
            "L_DFO",
            "T0494",
            "L_COP",
            "T0464",
            "L_CDF",
            "U_ACO"
          ]
        },
        {
          "id": "T0529",
          "relation": 2024,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "43043/250000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0492",
            "L_FGO",
            "T0511",
            "L_COP",
            "T0485"
          ]
        },
        {
          "id": "T0530",
          "relation": 2153,
          "rule": "balance_lo",
          "triangle": "AFP",
          "side": "lo",
          "value": "11469/62500",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0511",
            "L_COP",
            "L_AGP",
            "T0517",
            "T0162"
          ]
        },
        {
          "id": "T0534",
          "relation": 3221,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "24351/200000",
          "sources": [
            "T0527",
            "L_FHO",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0508",
            "T0487"
          ]
        },
        {
          "id": "T0544",
          "relation": 5512,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "160549/1000000",
          "sources": [
            "T0527",
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0549",
          "relation": 5,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "625911/1000000",
          "sources": [
            "U_ACF",
            "L_ACG",
            "T0511"
          ]
        },
        {
          "id": "T0551",
          "relation": 6,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "79019/200000",
          "sources": [
            "U_ACF",
            "T0492",
            "T0530"
          ]
        },
        {
          "id": "T0554",
          "relation": 9,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "250097/500000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0529"
          ]
        },
        {
          "id": "T0555",
          "relation": 9,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "369163/1000000",
          "sources": [
            "U_ACO",
            "T0492",
            "L_COP"
          ]
        },
        {
          "id": "T0556",
          "relation": 10,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "151681/500000",
          "sources": [
            "L_ACG",
            "T0527",
            "L_AGP"
          ]
        },
        {
          "id": "T0558",
          "relation": 11,
          "rule": "sum",
          "triangle": "ADF",
          "side": "lo",
          "value": "76093/200000",
          "sources": [
            "L_ADP",
            "T0528",
            "T0530"
          ]
        },
        {
          "id": "T0561",
          "relation": 14,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "166277/500000",
          "sources": [
            "T0518",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0566",
          "relation": 23,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "370911/1000000",
          "sources": [
            "T0544",
            "L_FGP",
            "T0527"
          ]
        },
        {
          "id": "T0572",
          "relation": 31,
          "rule": "sum",
          "triangle": "FGH",
          "side": "lo",
          "value": "61551/200000",
          "sources": [
            "L_FGO",
            "L_FHO",
            "T0534"
          ]
        },
        {
          "id": "T0575",
          "relation": 78,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "81469/500000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "T0530",
            "T0554"
          ]
        },
        {
          "id": "T0581",
          "relation": 509,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "152609/1000000",
          "sources": [
            "T0566",
            "L_FHO",
            "L_CFH",
            "L_FGO",
            "T0170"
          ]
        },
        {
          "id": "T0582",
          "relation": 776,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "146709/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0556",
            "L_BOP",
            "T0555"
          ]
        },
        {
          "id": "T0591",
          "relation": 1989,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "117449/1000000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0556",
            "L_BGO",
            "L_AGP",
            "T0561",
            "U_ABO"
          ]
        },
        {
          "id": "T0592",
          "relation": 2022,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "26003/250000",
          "sources": [
            "T0556",
            "L_DFO",
            "T0558",
            "L_COP",
            "T0529",
            "L_CDF",
            "U_ACO"
          ]
        },
        {
          "id": "T0593",
          "relation": 2024,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "17223/100000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0556",
            "L_FGO",
            "T0575",
            "L_COP",
            "T0549"
          ]
        },
        {
          "id": "T0594",
          "relation": 2153,
          "rule": "balance_lo",
          "triangle": "AFP",
          "side": "lo",
          "value": "183517/1000000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0575",
            "L_COP",
            "L_AGP",
            "T0581",
            "T0162"
          ]
        },
        {
          "id": "T0598",
          "relation": 3221,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "60989/500000",
          "sources": [
            "T0591",
            "L_FHO",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0572",
            "T0551"
          ]
        },
        {
          "id": "T0608",
          "relation": 5512,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "40141/250000",
          "sources": [
            "T0591",
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0613",
          "relation": 5,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "78233/125000",
          "sources": [
            "U_ACF",
            "L_ACG",
            "T0575"
          ]
        },
        {
          "id": "T0615",
          "relation": 6,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "394923/1000000",
          "sources": [
            "U_ACF",
            "T0556",
            "T0594"
          ]
        },
        {
          "id": "T0618",
          "relation": 9,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "62517/125000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0593"
          ]
        },
        {
          "id": "T0619",
          "relation": 9,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "92251/250000",
          "sources": [
            "U_ACO",
            "T0556",
            "L_COP"
          ]
        },
        {
          "id": "T0620",
          "relation": 10,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "303449/1000000",
          "sources": [
            "L_ACG",
            "T0591",
            "L_AGP"
          ]
        },
        {
          "id": "T0622",
          "relation": 11,
          "rule": "sum",
          "triangle": "ADF",
          "side": "lo",
          "value": "380529/1000000",
          "sources": [
            "L_ADP",
            "T0592",
            "T0594"
          ]
        },
        {
          "id": "T0625",
          "relation": 14,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "332709/1000000",
          "sources": [
            "T0582",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0630",
          "relation": 23,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "371013/1000000",
          "sources": [
            "T0608",
            "L_FGP",
            "T0591"
          ]
        },
        {
          "id": "T0636",
          "relation": 31,
          "rule": "sum",
          "triangle": "FGH",
          "side": "lo",
          "value": "153989/500000",
          "sources": [
            "L_FGO",
            "L_FHO",
            "T0598"
          ]
        },
        {
          "id": "T0639",
          "relation": 78,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "162959/1000000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "T0594",
            "T0618"
          ]
        },
        {
          "id": "T0645",
          "relation": 509,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "9539/62500",
          "sources": [
            "T0630",
            "L_FHO",
            "L_CFH",
            "L_FGO",
            "T0170"
          ]
        },
        {
          "id": "T0646",
          "relation": 776,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "73397/500000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0620",
            "L_BOP",
            "T0619"
          ]
        },
        {
          "id": "T0655",
          "relation": 1989,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "117487/1000000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0620",
            "L_BGO",
            "L_AGP",
            "T0625",
            "U_ABO"
          ]
        },
        {
          "id": "T0656",
          "relation": 2022,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "52019/500000",
          "sources": [
            "T0620",
            "L_DFO",
            "T0622",
            "L_COP",
            "T0593",
            "L_CDF",
            "U_ACO"
          ]
        },
        {
          "id": "T0657",
          "relation": 2024,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "172259/1000000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0620",
            "L_FGO",
            "T0639",
            "L_COP",
            "T0613"
          ]
        },
        {
          "id": "T0658",
          "relation": 2153,
          "rule": "balance_lo",
          "triangle": "AFP",
          "side": "lo",
          "value": "45881/250000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0639",
            "L_COP",
            "L_AGP",
            "T0645",
            "T0162"
          ]
        },
        {
          "id": "T0662",
          "relation": 3221,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "30523/250000",
          "sources": [
            "T0655",
            "L_FHO",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0636",
            "T0615"
          ]
        },
        {
          "id": "T0672",
          "relation": 5512,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "16057/100000",
          "sources": [
            "T0655",
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0677",
          "relation": 5,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "625843/1000000",
          "sources": [
            "U_ACF",
            "L_ACG",
            "T0639"
          ]
        },
        {
          "id": "T0679",
          "relation": 6,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "394829/1000000",
          "sources": [
            "U_ACF",
            "T0620",
            "T0658"
          ]
        },
        {
          "id": "T0682",
          "relation": 9,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "500107/1000000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0657"
          ]
        },
        {
          "id": "T0683",
          "relation": 9,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "368917/1000000",
          "sources": [
            "U_ACO",
            "T0620",
            "L_COP"
          ]
        },
        {
          "id": "T0684",
          "relation": 10,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "303487/1000000",
          "sources": [
            "L_ACG",
            "T0655",
            "L_AGP"
          ]
        },
        {
          "id": "T0686",
          "relation": 11,
          "rule": "sum",
          "triangle": "ADF",
          "side": "lo",
          "value": "190281/500000",
          "sources": [
            "L_ADP",
            "T0656",
            "T0658"
          ]
        },
        {
          "id": "T0689",
          "relation": 14,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "166397/500000",
          "sources": [
            "T0646",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0694",
          "relation": 23,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "371057/1000000",
          "sources": [
            "T0672",
            "L_FGP",
            "T0655"
          ]
        },
        {
          "id": "T0700",
          "relation": 31,
          "rule": "sum",
          "triangle": "FGH",
          "side": "lo",
          "value": "77023/250000",
          "sources": [
            "L_FGO",
            "L_FHO",
            "T0662"
          ]
        },
        {
          "id": "T0703",
          "relation": 78,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "16297/100000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "T0658",
            "T0682"
          ]
        },
        {
          "id": "T0709",
          "relation": 509,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "15263/100000",
          "sources": [
            "T0694",
            "L_FHO",
            "L_CFH",
            "L_FGO",
            "T0170"
          ]
        },
        {
          "id": "T0710",
          "relation": 776,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "73419/500000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0684",
            "L_BOP",
            "T0683"
          ]
        },
        {
          "id": "T0719",
          "relation": 1989,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "117507/1000000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0684",
            "L_BGO",
            "L_AGP",
            "T0689",
            "U_ABO"
          ]
        },
        {
          "id": "T0720",
          "relation": 2022,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "2081/20000",
          "sources": [
            "T0684",
            "L_DFO",
            "T0686",
            "L_COP",
            "T0657",
            "L_CDF",
            "U_ACO"
          ]
        },
        {
          "id": "T0721",
          "relation": 2024,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "10767/62500",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0684",
            "L_FGO",
            "T0703",
            "L_COP",
            "T0677"
          ]
        },
        {
          "id": "T0722",
          "relation": 2153,
          "rule": "balance_lo",
          "triangle": "AFP",
          "side": "lo",
          "value": "183527/1000000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0703",
            "L_COP",
            "L_AGP",
            "T0709",
            "T0162"
          ]
        },
        {
          "id": "T0726",
          "relation": 3221,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "122153/1000000",
          "sources": [
            "T0719",
            "L_FHO",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0700",
            "T0679"
          ]
        },
        {
          "id": "T0736",
          "relation": 5512,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "80287/500000",
          "sources": [
            "T0719",
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0741",
          "relation": 5,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "78229/125000",
          "sources": [
            "U_ACF",
            "L_ACG",
            "T0703"
          ]
        },
        {
          "id": "T0743",
          "relation": 6,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "98697/250000",
          "sources": [
            "U_ACF",
            "T0684",
            "T0722"
          ]
        },
        {
          "id": "T0746",
          "relation": 9,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "250047/500000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0721"
          ]
        },
        {
          "id": "T0747",
          "relation": 9,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "368879/1000000",
          "sources": [
            "U_ACO",
            "T0684",
            "L_COP"
          ]
        },
        {
          "id": "T0748",
          "relation": 10,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "303507/1000000",
          "sources": [
            "L_ACG",
            "T0719",
            "L_AGP"
          ]
        },
        {
          "id": "T0750",
          "relation": 11,
          "rule": "sum",
          "triangle": "ADF",
          "side": "lo",
          "value": "380577/1000000",
          "sources": [
            "L_ADP",
            "T0720",
            "T0722"
          ]
        },
        {
          "id": "T0753",
          "relation": 14,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "166419/500000",
          "sources": [
            "T0710",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0758",
          "relation": 23,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "371081/1000000",
          "sources": [
            "T0736",
            "L_FGP",
            "T0719"
          ]
        },
        {
          "id": "T0764",
          "relation": 31,
          "rule": "sum",
          "triangle": "FGH",
          "side": "lo",
          "value": "308153/1000000",
          "sources": [
            "L_FGO",
            "L_FHO",
            "T0726"
          ]
        },
        {
          "id": "T0767",
          "relation": 78,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "6519/40000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "T0722",
            "T0746"
          ]
        },
        {
          "id": "T0773",
          "relation": 509,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "152633/1000000",
          "sources": [
            "T0758",
            "L_FHO",
            "L_CFH",
            "L_FGO",
            "T0170"
          ]
        },
        {
          "id": "T0774",
          "relation": 776,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "73429/500000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0748",
            "L_BOP",
            "T0747"
          ]
        },
        {
          "id": "T0783",
          "relation": 1989,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "58759/500000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0748",
            "L_BGO",
            "L_AGP",
            "T0753",
            "U_ABO"
          ]
        },
        {
          "id": "T0784",
          "relation": 2022,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "13007/125000",
          "sources": [
            "T0748",
            "L_DFO",
            "T0750",
            "L_COP",
            "T0721",
            "L_CDF",
            "U_ACO"
          ]
        },
        {
          "id": "T0785",
          "relation": 2024,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "172279/1000000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0748",
            "L_FGO",
            "T0767",
            "L_COP",
            "T0741"
          ]
        },
        {
          "id": "T0786",
          "relation": 2153,
          "rule": "balance_lo",
          "triangle": "AFP",
          "side": "lo",
          "value": "22941/125000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0767",
            "L_COP",
            "L_AGP",
            "T0773",
            "T0162"
          ]
        },
        {
          "id": "T0790",
          "relation": 3221,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "122183/1000000",
          "sources": [
            "T0783",
            "L_FHO",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0764",
            "T0743"
          ]
        },
        {
          "id": "T0799",
          "relation": 5512,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "2509/15625",
          "sources": [
            "T0783",
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0804",
          "relation": 5,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "625827/1000000",
          "sources": [
            "U_ACF",
            "L_ACG",
            "T0767"
          ]
        },
        {
          "id": "T0806",
          "relation": 6,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "394767/1000000",
          "sources": [
            "U_ACF",
            "T0748",
            "T0786"
          ]
        },
        {
          "id": "T0809",
          "relation": 9,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "500087/1000000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0785"
          ]
        },
        {
          "id": "T0810",
          "relation": 9,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "368859/1000000",
          "sources": [
            "U_ACO",
            "T0748",
            "L_COP"
          ]
        },
        {
          "id": "T0811",
          "relation": 10,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "151759/500000",
          "sources": [
            "L_ACG",
            "T0783",
            "L_AGP"
          ]
        },
        {
          "id": "T0813",
          "relation": 11,
          "rule": "sum",
          "triangle": "ADF",
          "side": "lo",
          "value": "47573/125000",
          "sources": [
            "L_ADP",
            "T0784",
            "T0786"
          ]
        },
        {
          "id": "T0816",
          "relation": 14,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "166429/500000",
          "sources": [
            "T0774",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0821",
          "relation": 23,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "185547/500000",
          "sources": [
            "T0799",
            "L_FGP",
            "T0783"
          ]
        },
        {
          "id": "T0827",
          "relation": 31,
          "rule": "sum",
          "triangle": "FGH",
          "side": "lo",
          "value": "308183/1000000",
          "sources": [
            "L_FGO",
            "L_FHO",
            "T0790"
          ]
        },
        {
          "id": "T0830",
          "relation": 78,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "162977/1000000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "T0786",
            "T0809"
          ]
        },
        {
          "id": "T0836",
          "relation": 509,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "30527/200000",
          "sources": [
            "T0821",
            "L_FHO",
            "L_CFH",
            "L_FGO",
            "T0170"
          ]
        },
        {
          "id": "T0837",
          "relation": 776,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "146869/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0811",
            "L_BOP",
            "T0810"
          ]
        },
        {
          "id": "T0846",
          "relation": 1989,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "117523/1000000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0811",
            "L_BGO",
            "L_AGP",
            "T0816",
            "U_ABO"
          ]
        },
        {
          "id": "T0847",
          "relation": 2022,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "104059/1000000",
          "sources": [
            "T0811",
            "L_DFO",
            "T0813",
            "L_COP",
            "T0785",
            "L_CDF",
            "U_ACO"
          ]
        },
        {
          "id": "T0848",
          "relation": 2024,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "86141/500000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0811",
            "L_FGO",
            "T0830",
            "L_COP",
            "T0804"
          ]
        },
        {
          "id": "T0849",
          "relation": 2153,
          "rule": "balance_lo",
          "triangle": "AFP",
          "side": "lo",
          "value": "183529/1000000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0830",
            "L_COP",
            "L_AGP",
            "T0836",
            "T0162"
          ]
        },
        {
          "id": "T0853",
          "relation": 3221,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "122197/1000000",
          "sources": [
            "T0846",
            "L_FHO",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0827",
            "T0806"
          ]
        },
        {
          "id": "T0868",
          "relation": 6,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "78951/200000",
          "sources": [
            "U_ACF",
            "T0811",
            "T0849"
          ]
        },
        {
          "id": "T0871",
          "relation": 9,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "125021/250000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0848"
          ]
        },
        {
          "id": "T0872",
          "relation": 9,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "23053/62500",
          "sources": [
            "U_ACO",
            "T0811",
            "L_COP"
          ]
        },
        {
          "id": "T0873",
          "relation": 10,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "303523/1000000",
          "sources": [
            "L_ACG",
            "T0846",
            "L_AGP"
          ]
        },
        {
          "id": "T0875",
          "relation": 11,
          "rule": "sum",
          "triangle": "ADF",
          "side": "lo",
          "value": "95147/250000",
          "sources": [
            "L_ADP",
            "T0847",
            "T0849"
          ]
        },
        {
          "id": "T0878",
          "relation": 14,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "332869/1000000",
          "sources": [
            "T0837",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0889",
          "relation": 31,
          "rule": "sum",
          "triangle": "FGH",
          "side": "lo",
          "value": "308197/1000000",
          "sources": [
            "L_FGO",
            "L_FHO",
            "T0853"
          ]
        },
        {
          "id": "T0892",
          "relation": 78,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "162979/1000000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "T0849",
            "T0871"
          ]
        },
        {
          "id": "T0899",
          "relation": 776,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "47/320",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0873",
            "L_BOP",
            "T0872"
          ]
        },
        {
          "id": "T0907",
          "relation": 1989,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "4701/40000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0873",
            "L_BGO",
            "L_AGP",
            "T0878",
            "U_ABO"
          ]
        },
        {
          "id": "T0908",
          "relation": 2022,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "5203/50000",
          "sources": [
            "T0873",
            "L_DFO",
            "T0875",
            "L_COP",
            "T0848",
            "L_CDF",
            "U_ACO"
          ]
        },
        {
          "id": "T0913",
          "relation": 3221,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "24441/200000",
          "sources": [
            "T0907",
            "L_FHO",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0889",
            "T0868"
          ]
        },
        {
          "id": "T0921",
          "relation": 5512,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "160577/1000000",
          "sources": [
            "T0907",
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0926",
          "relation": 5,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "625823/1000000",
          "sources": [
            "U_ACF",
            "L_ACG",
            "T0892"
          ]
        },
        {
          "id": "T0928",
          "relation": 6,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "1579/4000",
          "sources": [
            "U_ACF",
            "T0873",
            "T0849"
          ]
        },
        {
          "id": "T0932",
          "relation": 9,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "368843/1000000",
          "sources": [
            "U_ACO",
            "T0873",
            "L_COP"
          ]
        },
        {
          "id": "T0933",
          "relation": 10,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "12141/40000",
          "sources": [
            "L_ACG",
            "T0907",
            "L_AGP"
          ]
        },
        {
          "id": "T0935",
          "relation": 11,
          "rule": "sum",
          "triangle": "ADF",
          "side": "lo",
          "value": "380589/1000000",
          "sources": [
            "L_ADP",
            "T0908",
            "T0849"
          ]
        },
        {
          "id": "T0938",
          "relation": 14,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "2663/8000",
          "sources": [
            "T0899",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0949",
          "relation": 31,
          "rule": "sum",
          "triangle": "FGH",
          "side": "lo",
          "value": "61641/200000",
          "sources": [
            "L_FGO",
            "L_FHO",
            "T0913"
          ]
        },
        {
          "id": "T0954",
          "relation": 320,
          "rule": "sumlo",
          "triangle": "ADE",
          "side": "lo",
          "value": "87579/500000",
          "sources": [
            "T0040",
            "L_DEF",
            "T0935",
            "L_CDE",
            "U_CDF"
          ]
        },
        {
          "id": "T0956",
          "relation": 776,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "146877/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0933",
            "L_BOP",
            "T0932"
          ]
        },
        {
          "id": "T0963",
          "relation": 1989,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "58763/500000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0933",
            "L_BGO",
            "L_AGP",
            "T0938",
            "U_ABO"
          ]
        },
        {
          "id": "T0965",
          "relation": 2024,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "34457/200000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T0933",
            "L_FGO",
            "T0892",
            "L_COP",
            "T0926"
          ]
        },
        {
          "id": "T0969",
          "relation": 3221,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "3819/31250",
          "sources": [
            "T0963",
            "L_FHO",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0949",
            "T0928"
          ]
        },
        {
          "id": "T0980",
          "relation": 6,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "98687/250000",
          "sources": [
            "U_ACF",
            "T0933",
            "T0849"
          ]
        },
        {
          "id": "T0983",
          "relation": 9,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "500081/1000000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0965"
          ]
        },
        {
          "id": "T0985",
          "relation": 10,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "151763/500000",
          "sources": [
            "L_ACG",
            "T0963",
            "L_AGP"
          ]
        },
        {
          "id": "T0986",
          "relation": 10,
          "rule": "sub",
          "triangle": "CGP",
          "side": "hi",
          "value": "314081/1000000",
          "sources": [
            "T0983",
            "L_ACG",
            "L_AGP"
          ]
        },
        {
          "id": "T0990",
          "relation": 14,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "332877/1000000",
          "sources": [
            "T0956",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0994",
          "relation": 23,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "371103/1000000",
          "sources": [
            "T0921",
            "L_FGP",
            "T0963"
          ]
        },
        {
          "id": "T0999",
          "relation": 31,
          "rule": "sum",
          "triangle": "FGH",
          "side": "lo",
          "value": "19263/62500",
          "sources": [
            "L_FGO",
            "L_FHO",
            "T0969"
          ]
        },
        {
          "id": "T1001",
          "relation": 78,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "8149/50000",
          "sources": [
            "L_ACF",
            "L_AGP",
            "L_ACG",
            "T0849",
            "T0983"
          ]
        },
        {
          "id": "T1003",
          "relation": 509,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "152637/1000000",
          "sources": [
            "T0994",
            "L_FHO",
            "L_CFH",
            "L_FGO",
            "T0170"
          ]
        },
        {
          "id": "T1011",
          "relation": 1989,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "117527/1000000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0985",
            "L_BGO",
            "L_AGP",
            "T0990",
            "U_ABO"
          ]
        },
        {
          "id": "T1012",
          "relation": 2153,
          "rule": "balance_lo",
          "triangle": "AFP",
          "side": "lo",
          "value": "18353/100000",
          "sources": [
            "L_ACO",
            "L_FGP",
            "T1001",
            "L_COP",
            "L_AGP",
            "T1003",
            "T0162"
          ]
        },
        {
          "id": "T1016",
          "relation": 3221,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "12221/100000",
          "sources": [
            "T1011",
            "L_FHO",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T0999",
            "T0980"
          ]
        },
        {
          "id": "T1025",
          "relation": 6,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "197373/500000",
          "sources": [
            "U_ACF",
            "T0985",
            "T1012"
          ]
        },
        {
          "id": "T1028",
          "relation": 9,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "9221/25000",
          "sources": [
            "U_ACO",
            "T0985",
            "L_COP"
          ]
        },
        {
          "id": "T1029",
          "relation": 10,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "303527/1000000",
          "sources": [
            "L_ACG",
            "T1011",
            "L_AGP"
          ]
        },
        {
          "id": "T1040",
          "relation": 31,
          "rule": "sum",
          "triangle": "FGH",
          "side": "lo",
          "value": "30821/100000",
          "sources": [
            "L_FGO",
            "L_FHO",
            "T1016"
          ]
        },
        {
          "id": "T1043",
          "relation": 776,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "146879/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T1029",
            "L_BOP",
            "T1028"
          ]
        },
        {
          "id": "T1047",
          "relation": 3221,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "122211/1000000",
          "sources": [
            "T1011",
            "L_FHO",
            "L_CHP",
            "L_FGO",
            "L_COP",
            "T1040",
            "T1025"
          ]
        },
        {
          "id": "T1056",
          "relation": 14,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "332879/1000000",
          "sources": [
            "T1043",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T1058",
          "relation": 20,
          "rule": "sum",
          "triangle": "BHO",
          "side": "lo",
          "value": "308211/1000000",
          "sources": [
            "L_BGH",
            "L_BGO",
            "T1047"
          ]
        },
        {
          "id": "T1061",
          "relation": 1414,
          "rule": "support_z",
          "triangle": "BCE",
          "side": "lo",
          "value": "54127/500000",
          "sources": [
            "T1056",
            "U_BEO"
          ]
        },
        {
          "id": "T1069",
          "relation": 19,
          "rule": "sub",
          "triangle": "BFO",
          "side": "hi",
          "value": "480591/1000000",
          "sources": [
            "U_BFH",
            "L_FHO",
            "T1058"
          ]
        },
        {
          "id": "T1074",
          "relation": 1429,
          "rule": "support_z",
          "triangle": "BCF",
          "side": "lo",
          "value": "176497/1000000",
          "sources": [
            "T1056",
            "T1069"
          ]
        }
      ],
      "physical": {
        "AREA_HI_ADE": {
          "name": "AREA_HI_ADE",
          "terms": [
            [
              [],
              "786813/1000000"
            ],
            [
              [
                4
              ],
              "-1"
            ],
            [
              [
                3
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ADE",
            "side": "hi",
            "reference": "U_ADE",
            "value": "786813/1000000"
          }
        },
        "AREA_HI_ADH": {
          "name": "AREA_HI_ADH",
          "terms": [
            [
              [],
              "861/1000"
            ],
            [
              [
                7
              ],
              "-1"
            ],
            [
              [
                0
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ADH",
            "side": "hi",
            "reference": "U_ADH",
            "value": "861/1000"
          }
        },
        "AREA_HI_BCF": {
          "name": "AREA_HI_BCF",
          "terms": [
            [
              [],
              "773789/1000000"
            ],
            [
              [
                2
              ],
              "-1"
            ],
            [
              [
                1
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCF",
            "side": "hi",
            "reference": "U_BCF",
            "value": "773789/1000000"
          }
        },
        "AREA_HI_CDF": {
          "name": "AREA_HI_CDF",
          "terms": [
            [
              [],
              "-92733313987/125000000000"
            ],
            [
              [
                2
              ],
              "1"
            ],
            [
              [
                3,
                5
              ],
              "1"
            ],
            [
              [
                2,
                3
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CDF",
            "side": "hi",
            "reference": "U_CDF",
            "value": "32266686013/125000000000"
          }
        },
        "AREA_HI_CEF": {
          "name": "AREA_HI_CEF",
          "terms": [
            [
              [],
              "-175374099/250000000"
            ],
            [
              [
                2
              ],
              "1"
            ],
            [
              [
                4,
                5
              ],
              "1"
            ],
            [
              [
                2,
                4
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CEF",
            "side": "hi",
            "reference": "U_CEF",
            "value": "74625901/250000000"
          }
        },
        "AREA_HI_CGP": {
          "name": "AREA_HI_CGP",
          "terms": [
            [
              [],
              "314081/1000000"
            ],
            [
              [
                6,
                12
              ],
              "1"
            ],
            [
              [
                2,
                12
              ],
              "-1"
            ],
            [
              [
                8,
                11
              ],
              "-1"
            ],
            [
              [
                2,
                8
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CGP",
            "side": "hi",
            "reference": "T0986",
            "value": "314081/1000000"
          }
        },
        "AREA_HI_DEO": {
          "name": "AREA_HI_DEO",
          "terms": [
            [
              [],
              "549122300391/1000000000000"
            ],
            [
              [
                4,
                9
              ],
              "1"
            ],
            [
              [
                4
              ],
              "-1"
            ],
            [
              [
                3,
                9
              ],
              "-1"
            ],
            [
              [
                3
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DEO",
            "side": "hi",
            "reference": "U_DEO",
            "value": "549122300391/1000000000000"
          }
        },
        "AREA_HI_DEP": {
          "name": "AREA_HI_DEP",
          "terms": [
            [
              [],
              "256117860069/500000000000"
            ],
            [
              [
                4,
                11
              ],
              "1"
            ],
            [
              [
                4
              ],
              "-1"
            ],
            [
              [
                3,
                11
              ],
              "-1"
            ],
            [
              [
                3
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DEP",
            "side": "hi",
            "reference": "U_DEP",
            "value": "256117860069/500000000000"
          }
        },
        "AREA_HI_DGP": {
          "name": "AREA_HI_DGP",
          "terms": [
            [
              [],
              "80749/200000"
            ],
            [
              [
                6,
                12
              ],
              "1"
            ],
            [
              [
                3,
                6
              ],
              "-1"
            ],
            [
              [
                12
              ],
              "-1"
            ],
            [
              [
                8,
                11
              ],
              "-1"
            ],
            [
              [
                8
              ],
              "1"
            ],
            [
              [
                3,
                11
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DGP",
            "side": "hi",
            "reference": "T0144",
            "value": "80749/200000"
          }
        },
        "AREA_LO_ABG": {
          "name": "AREA_LO_ABG",
          "terms": [
            [
              [
                1,
                8
              ],
              "1"
            ],
            [
              [
                0,
                1
              ],
              "-1"
            ],
            [
              [
                0,
                6
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ABG",
            "side": "lo",
            "reference": "L_ABG",
            "value": "93/1000"
          }
        },
        "AREA_LO_ABO": {
          "name": "AREA_LO_ABO",
          "terms": [
            [
              [
                1,
                10
              ],
              "1"
            ],
            [
              [
                0,
                1
              ],
              "-1"
            ],
            [
              [
                0,
                9
              ],
              "1"
            ],
            [
              [],
              "-347347/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ABO",
            "side": "lo",
            "reference": "T0157",
            "value": "347347/1000000"
          }
        },
        "AREA_LO_ABP": {
          "name": "AREA_LO_ABP",
          "terms": [
            [
              [
                1,
                12
              ],
              "1"
            ],
            [
              [
                0,
                1
              ],
              "-1"
            ],
            [
              [
                0,
                11
              ],
              "1"
            ],
            [
              [],
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ABP",
            "side": "lo",
            "reference": "L_ABP",
            "value": "279/1000"
          }
        },
        "AREA_LO_ACF": {
          "name": "AREA_LO_ACF",
          "terms": [
            [
              [
                2
              ],
              "1"
            ],
            [
              [
                0,
                2
              ],
              "-1"
            ],
            [
              [
                0,
                5
              ],
              "1"
            ],
            [
              [],
              "-13857/20000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACF",
            "side": "lo",
            "reference": "L_ACF",
            "value": "13857/20000"
          }
        },
        "AREA_LO_ACG": {
          "name": "AREA_LO_ACG",
          "terms": [
            [
              [
                2,
                8
              ],
              "1"
            ],
            [
              [
                0,
                2
              ],
              "-1"
            ],
            [
              [
                0,
                6
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACG",
            "side": "lo",
            "reference": "L_ACG",
            "value": "93/1000"
          }
        },
        "AREA_LO_ACO": {
          "name": "AREA_LO_ACO",
          "terms": [
            [
              [
                2,
                10
              ],
              "1"
            ],
            [
              [
                0,
                2
              ],
              "-1"
            ],
            [
              [
                0,
                9
              ],
              "1"
            ],
            [
              [],
              "-13857/20000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACO",
            "side": "lo",
            "reference": "L_ACO",
            "value": "13857/20000"
          }
        },
        "AREA_LO_ADE": {
          "name": "AREA_LO_ADE",
          "terms": [
            [
              [
                4
              ],
              "1"
            ],
            [
              [
                3
              ],
              "-1"
            ],
            [
              [],
              "-87579/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ADE",
            "side": "lo",
            "reference": "T0954",
            "value": "87579/500000"
          }
        },
        "AREA_LO_AEH": {
          "name": "AREA_LO_AEH",
          "terms": [
            [
              [
                7
              ],
              "1"
            ],
            [
              [
                0
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AEH",
            "side": "lo",
            "reference": "L_AEH",
            "value": "93/1000"
          }
        },
        "AREA_LO_AFP": {
          "name": "AREA_LO_AFP",
          "terms": [
            [
              [
                5,
                12
              ],
              "-1"
            ],
            [
              [
                0,
                5
              ],
              "1"
            ],
            [
              [
                11
              ],
              "1"
            ],
            [
              [
                0,
                11
              ],
              "-1"
            ],
            [
              [],
              "-18353/100000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AFP",
            "side": "lo",
            "reference": "T1012",
            "value": "18353/100000"
          }
        },
        "AREA_LO_AGP": {
          "name": "AREA_LO_AGP",
          "terms": [
            [
              [
                6,
                12
              ],
              "1"
            ],
            [
              [
                0,
                6
              ],
              "-1"
            ],
            [
              [
                8,
                11
              ],
              "-1"
            ],
            [
              [
                0,
                11
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AGP",
            "side": "lo",
            "reference": "L_AGP",
            "value": "93/1000"
          }
        },
        "AREA_LO_AOP": {
          "name": "AREA_LO_AOP",
          "terms": [
            [
              [
                9,
                12
              ],
              "-1"
            ],
            [
              [
                0,
                9
              ],
              "1"
            ],
            [
              [
                10,
                11
              ],
              "1"
            ],
            [
              [
                0,
                11
              ],
              "-1"
            ],
            [
              [],
              "-34457/200000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AOP",
            "side": "lo",
            "reference": "T0965",
            "value": "34457/200000"
          }
        },
        "AREA_LO_BCD": {
          "name": "AREA_LO_BCD",
          "terms": [
            [
              [
                2,
                3
              ],
              "1"
            ],
            [
              [
                1,
                3
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCD",
            "side": "lo",
            "reference": "L_BCD",
            "value": "93/1000"
          }
        },
        "AREA_LO_BCE": {
          "name": "AREA_LO_BCE",
          "terms": [
            [
              [
                2,
                4
              ],
              "1"
            ],
            [
              [
                1,
                4
              ],
              "-1"
            ],
            [
              [],
              "-54127/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCE",
            "side": "lo",
            "reference": "T1061",
            "value": "54127/500000"
          }
        },
        "AREA_LO_BCF": {
          "name": "AREA_LO_BCF",
          "terms": [
            [
              [
                2
              ],
              "1"
            ],
            [
              [
                1
              ],
              "-1"
            ],
            [
              [],
              "-176497/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCF",
            "side": "lo",
            "reference": "T1074",
            "value": "176497/1000000"
          }
        },
        "AREA_LO_BFG": {
          "name": "AREA_LO_BFG",
          "terms": [
            [
              [
                5,
                8
              ],
              "1"
            ],
            [
              [
                1,
                8
              ],
              "-1"
            ],
            [
              [
                6
              ],
              "-1"
            ],
            [
              [
                1
              ],
              "1"
            ],
            [
              [],
              "-35137/250000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BFG",
            "side": "lo",
            "reference": "T0147",
            "value": "35137/250000"
          }
        },
        "AREA_LO_BFO": {
          "name": "AREA_LO_BFO",
          "terms": [
            [
              [
                5,
                10
              ],
              "1"
            ],
            [
              [
                1,
                10
              ],
              "-1"
            ],
            [
              [
                9
              ],
              "-1"
            ],
            [
              [
                1
              ],
              "1"
            ],
            [
              [],
              "-17913/125000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BFO",
            "side": "lo",
            "reference": "T0132",
            "value": "17913/125000"
          }
        },
        "AREA_LO_BGH": {
          "name": "AREA_LO_BGH",
          "terms": [
            [
              [
                6,
                7
              ],
              "1"
            ],
            [
              [
                1,
                7
              ],
              "-1"
            ],
            [
              [
                1,
                8
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BGH",
            "side": "lo",
            "reference": "L_BGH",
            "value": "93/1000"
          }
        },
        "AREA_LO_BGO": {
          "name": "AREA_LO_BGO",
          "terms": [
            [
              [
                6,
                10
              ],
              "-1"
            ],
            [
              [
                1,
                10
              ],
              "1"
            ],
            [
              [
                8,
                9
              ],
              "1"
            ],
            [
              [
                1,
                8
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BGO",
            "side": "lo",
            "reference": "L_BGO",
            "value": "93/1000"
          }
        },
        "AREA_LO_BGP": {
          "name": "AREA_LO_BGP",
          "terms": [
            [
              [
                6,
                12
              ],
              "-1"
            ],
            [
              [
                1,
                12
              ],
              "1"
            ],
            [
              [
                8,
                11
              ],
              "1"
            ],
            [
              [
                1,
                8
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BGP",
            "side": "lo",
            "reference": "L_BGP",
            "value": "93/1000"
          }
        },
        "AREA_LO_CDE": {
          "name": "AREA_LO_CDE",
          "terms": [
            [
              [
                4
              ],
              "1"
            ],
            [
              [
                2,
                4
              ],
              "-1"
            ],
            [
              [
                3
              ],
              "-1"
            ],
            [
              [
                2,
                3
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CDE",
            "side": "lo",
            "reference": "L_CDE",
            "value": "93/1000"
          }
        },
        "AREA_LO_COP": {
          "name": "AREA_LO_COP",
          "terms": [
            [
              [
                9,
                12
              ],
              "1"
            ],
            [
              [
                2,
                12
              ],
              "-1"
            ],
            [
              [
                10,
                11
              ],
              "-1"
            ],
            [
              [
                2,
                10
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "COP",
            "side": "lo",
            "reference": "L_COP",
            "value": "93/1000"
          }
        },
        "AREA_LO_DEF": {
          "name": "AREA_LO_DEF",
          "terms": [
            [
              [
                4,
                5
              ],
              "-1"
            ],
            [
              [
                4
              ],
              "1"
            ],
            [
              [
                3,
                5
              ],
              "1"
            ],
            [
              [
                3
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DEF",
            "side": "lo",
            "reference": "L_DEF",
            "value": "93/1000"
          }
        },
        "AREA_LO_EFO": {
          "name": "AREA_LO_EFO",
          "terms": [
            [
              [
                5,
                10
              ],
              "1"
            ],
            [
              [
                4,
                5
              ],
              "-1"
            ],
            [
              [
                10
              ],
              "-1"
            ],
            [
              [
                9
              ],
              "-1"
            ],
            [
              [],
              "907/1000"
            ],
            [
              [
                4,
                9
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "EFO",
            "side": "lo",
            "reference": "L_EFO",
            "value": "93/1000"
          }
        },
        "AREA_LO_FGP": {
          "name": "AREA_LO_FGP",
          "terms": [
            [
              [
                6,
                12
              ],
              "1"
            ],
            [
              [
                6
              ],
              "-1"
            ],
            [
              [
                5,
                12
              ],
              "-1"
            ],
            [
              [
                8,
                11
              ],
              "-1"
            ],
            [
              [
                5,
                8
              ],
              "1"
            ],
            [
              [
                11
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FGP",
            "side": "lo",
            "reference": "L_FGP",
            "value": "93/1000"
          }
        },
        "AREA_LO_FHO": {
          "name": "AREA_LO_FHO",
          "terms": [
            [
              [
                5,
                10
              ],
              "-1"
            ],
            [
              [
                7,
                9
              ],
              "-1"
            ],
            [
              [
                5,
                7
              ],
              "1"
            ],
            [
              [
                9
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FHO",
            "side": "lo",
            "reference": "L_FHO",
            "value": "93/1000"
          }
        },
        "AREA_LO_FOP": {
          "name": "AREA_LO_FOP",
          "terms": [
            [
              [
                9,
                12
              ],
              "1"
            ],
            [
              [
                9
              ],
              "-1"
            ],
            [
              [
                5,
                12
              ],
              "-1"
            ],
            [
              [
                10,
                11
              ],
              "-1"
            ],
            [
              [
                5,
                10
              ],
              "1"
            ],
            [
              [
                11
              ],
              "1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FOP",
            "side": "lo",
            "reference": "L_FOP",
            "value": "93/1000"
          }
        },
        "Central_order": {
          "name": "Central_order",
          "terms": [
            [
              [
                0,
                2
              ],
              "1"
            ],
            [
              [
                1,
                7
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "central_order",
            "cell": "CA"
          }
        },
        "ER": {
          "name": "ER",
          "terms": [
            [
              [
                4
              ],
              "1"
            ],
            [
              [
                1,
                4
              ],
              "-1"
            ],
            [
              [],
              "-93/250"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "ER"
          }
        },
        "Gsum": {
          "name": "Gsum",
          "terms": [
            [
              [],
              "790/883"
            ],
            [
              [
                6
              ],
              "-1"
            ],
            [
              [
                8
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "Gsum"
          }
        },
        "NATURAL_SUPPORT_1139_CEH": {
          "name": "NATURAL_SUPPORT_1139_CEH",
          "terms": [
            [
              [
                4,
                7
              ],
              "1"
            ],
            [
              [
                3,
                7
              ],
              "-1"
            ],
            [
              [
                2,
                4
              ],
              "-2697/5000"
            ],
            [
              [
                2,
                3
              ],
              "2697/5000"
            ]
          ],
          "why": {
            "kind": "natural_contact_support",
            "relation": 1139,
            "paired": "CEH",
            "target": "DEH",
            "raw": [
              [
                [
                  4,
                  7
                ],
                "1"
              ],
              [
                [
                  3,
                  7
                ],
                "-1"
              ],
              [
                [
                  2,
                  4
                ],
                "-2697/5000"
              ],
              [
                [
                  2,
                  3
                ],
                "2697/5000"
              ]
            ],
            "relax": false,
            "box": {
              "low": [
                "139/1000",
                "108013/1000000",
                "392911/500000",
                "120187/1000000",
                "110881/200000",
                "13857/20000",
                "38309/200000",
                "307011/500000",
                "10639/62500",
                "302093/1000000",
                "812299/1000000",
                "174487/500000",
                "5359/15625"
              ],
              "high": [
                "22763/40000",
                "526397/1000000",
                "440901/500000",
                "236391/500000",
                "907/1000",
                "440901/500000",
                "536841/1000000",
                "1",
                "610917/1000000",
                "71319/100000",
                "178907/200000",
                "71319/100000",
                "8177/12500"
              ]
            },
            "scheme": {
              "tag": "SUPPORT",
              "rate": "2697/5000",
              "constant": "0"
            }
          }
        },
        "NATURAL_SUPPORT_1399_BEF": {
          "name": "NATURAL_SUPPORT_1399_BEF",
          "terms": [
            [
              [
                2
              ],
              "-23/1000"
            ],
            [
              [
                1
              ],
              "23/1000"
            ],
            [
              [
                1,
                2
              ],
              "-1"
            ],
            [
              [
                1,
                1
              ],
              "1"
            ],
            [
              [
                2,
                4
              ],
              "1023/1000"
            ],
            [
              [
                1,
                4
              ],
              "-1023/1000"
            ]
          ],
          "why": {
            "kind": "natural_contact_support",
            "relation": 1399,
            "paired": "BEF",
            "target": "BCF",
            "raw": [
              [
                [
                  2
                ],
                "-23/1000"
              ],
              [
                [
                  1
                ],
                "23/1000"
              ],
              [
                [
                  1,
                  2
                ],
                "-1"
              ],
              [
                [
                  1,
                  1
                ],
                "1"
              ],
              [
                [
                  2,
                  4
                ],
                "1023/1000"
              ],
              [
                [
                  1,
                  4
                ],
                "-1023/1000"
              ]
            ],
            "relax": false,
            "box": {
              "low": [
                "139/1000",
                "108013/1000000",
                "392911/500000",
                "120187/1000000",
                "110881/200000",
                "13857/20000",
                "38309/200000",
                "307011/500000",
                "10639/62500",
                "302093/1000000",
                "812299/1000000",
                "174487/500000",
                "5359/15625"
              ],
              "high": [
                "22763/40000",
                "526397/1000000",
                "440901/500000",
                "236391/500000",
                "907/1000",
                "440901/500000",
                "536841/1000000",
                "1",
                "610917/1000000",
                "71319/100000",
                "178907/200000",
                "71319/100000",
                "8177/12500"
              ]
            },
            "scheme": {
              "tag": "SUPPORT",
              "rate": "1023/1000",
              "constant": "0"
            }
          }
        },
        "QUAD_1012": {
          "name": "QUAD_1012",
          "terms": [
            [
              [
                5,
                12
              ],
              "-1"
            ],
            [
              [
                11
              ],
              "1"
            ],
            [
              [
                0,
                11
              ],
              "-1"
            ],
            [
              [
                5,
                7
              ],
              "1"
            ],
            [
              [],
              "-449/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1012
          }
        },
        "QUAD_841": {
          "name": "QUAD_841",
          "terms": [
            [
              [
                0,
                1
              ],
              "-1"
            ],
            [
              [
                2,
                10
              ],
              "1"
            ],
            [
              [
                0,
                9
              ],
              "1"
            ],
            [
              [],
              "-93/125"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 841
          }
        },
        "QUAD_915": {
          "name": "QUAD_915",
          "terms": [
            [
              [
                1,
                12
              ],
              "1"
            ],
            [
              [
                0,
                1
              ],
              "-1"
            ],
            [
              [
                9,
                12
              ],
              "-1"
            ],
            [
              [
                0,
                9
              ],
              "1"
            ],
            [
              [
                10,
                11
              ],
              "1"
            ],
            [
              [],
              "-449/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 915
          }
        },
        "QUAD_987": {
          "name": "QUAD_987",
          "terms": [
            [
              [
                4
              ],
              "1"
            ],
            [
              [
                3
              ],
              "-1"
            ],
            [
              [
                7
              ],
              "1"
            ],
            [
              [
                0
              ],
              "-1"
            ],
            [
              [],
              "-449/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 987
          }
        },
        "overlap_ae": {
          "name": "overlap_ae",
          "terms": [
            [
              [
                4
              ],
              "1"
            ],
            [
              [
                0
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "overlap_ae"
          }
        },
        "overlap_bf": {
          "name": "overlap_bf",
          "terms": [
            [
              [
                5
              ],
              "1"
            ],
            [
              [
                1
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "overlap_bf"
          }
        },
        "overlap_eh": {
          "name": "overlap_eh",
          "terms": [
            [
              [
                7
              ],
              "1"
            ],
            [
              [
                4
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "overlap_eh"
          }
        },
        "overlap_fc": {
          "name": "overlap_fc",
          "terms": [
            [
              [
                2
              ],
              "1"
            ],
            [
              [
                5
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "overlap_fc"
          }
        },
        "span_AH_hi": {
          "name": "span_AH_hi",
          "terms": [
            [
              [
                0
              ],
              "1"
            ],
            [
              [
                7
              ],
              "-1"
            ],
            [
              [],
              "697/790"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "span_AH_hi"
          }
        },
        "span_BC_hi": {
          "name": "span_BC_hi",
          "terms": [
            [
              [
                1
              ],
              "1"
            ],
            [
              [
                2
              ],
              "-1"
            ],
            [
              [],
              "79/100"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "span_BC_hi"
          }
        },
        "span_DE": {
          "name": "span_DE",
          "terms": [
            [
              [
                4
              ],
              "1"
            ],
            [
              [
                3
              ],
              "-1"
            ],
            [
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "span_DE"
          }
        },
        "span_DE_hi": {
          "name": "span_DE_hi",
          "terms": [
            [
              [
                3
              ],
              "1"
            ],
            [
              [
                4
              ],
              "-1"
            ],
            [
              [],
              "697/790"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "span_DE_hi"
          }
        }
      }
    }
  ],
  "terminal": {
    "kind": "polynomial",
    "stage": 10,
    "sum": {
      "factors": [
        {
          "weight": 1,
          "atoms": [
            "L16",
            "overlap_fc"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "L0",
            "L18",
            "L15"
          ]
        },
        {
          "weight": 12,
          "atoms": [
            "L0",
            "L18",
            "overlap_fc"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "L0",
            "L22",
            "overlap_fc"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L0",
            "L5",
            "L15"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "L0",
            "L7",
            "overlap_fc"
          ]
        },
        {
          "weight": 12,
          "atoms": [
            "L0",
            "L11",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "L0",
            "L13",
            "overlap_fc"
          ]
        },
        {
          "weight": 44,
          "atoms": [
            "L0",
            "L25",
            "overlap_fc"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L0",
            "overlap_fc",
            "overlap_eh"
          ]
        },
        {
          "weight": 45,
          "atoms": [
            "L4",
            "L6",
            "L11"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L4",
            "L16",
            "L15"
          ]
        },
        {
          "weight": 12,
          "atoms": [
            "L4",
            "L3",
            "L21"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "L4",
            "L5",
            "L15"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L4",
            "L13",
            "L15"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L4",
            "L21",
            "AREA_HI_ADE"
          ]
        },
        {
          "weight": 15,
          "atoms": [
            "L4",
            "L21",
            "AREA_LO_BCF"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "L4",
            "L21",
            "overlap_eh"
          ]
        },
        {
          "weight": 17,
          "atoms": [
            "L4",
            "AREA_LO_AEH",
            "overlap_fc"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L4",
            "overlap_fc",
            "overlap_ae"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L6",
            "L18",
            "L15"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "L6",
            "L20",
            "L5"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L6",
            "L1",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 87,
          "atoms": [
            "L6",
            "L5",
            "span_BC_hi"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L6",
            "AREA_HI_BCF",
            "overlap_eh"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L8",
            "L8",
            "L15"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L8",
            "L3",
            "L21"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "L10",
            "L21",
            "span_AH_hi"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L14",
            "L7",
            "overlap_fc"
          ]
        },
        {
          "weight": 24,
          "atoms": [
            "L14",
            "span_BC_hi",
            "overlap_fc"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "L16",
            "L5",
            "overlap_fc"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L16",
            "L11",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L16",
            "L15",
            "span_BC_hi"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L16",
            "AREA_HI_ADE",
            "overlap_fc"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L16",
            "overlap_fc",
            "overlap_ae"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L16",
            "overlap_fc",
            "QUAD_987"
          ]
        },
        {
          "weight": 98,
          "atoms": [
            "L18",
            "L5",
            "L9"
          ]
        },
        {
          "weight": 12,
          "atoms": [
            "L18",
            "L5",
            "AREA_HI_ADE"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L18",
            "L11",
            "AREA_HI_ADE"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "L20",
            "L24",
            "overlap_fc"
          ]
        },
        {
          "weight": 88,
          "atoms": [
            "L20",
            "L5",
            "L11"
          ]
        },
        {
          "weight": 21,
          "atoms": [
            "L20",
            "L11",
            "AREA_HI_ADE"
          ]
        },
        {
          "weight": 8,
          "atoms": [
            "L20",
            "span_AH_hi",
            "overlap_fc"
          ]
        },
        {
          "weight": 7,
          "atoms": [
            "L22",
            "L5",
            "AREA_HI_ADE"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L22",
            "L11",
            "AREA_HI_ADE"
          ]
        },
        {
          "weight": 54,
          "atoms": [
            "L22",
            "L21",
            "AREA_LO_BCF"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L1",
            "L5",
            "L9"
          ]
        },
        {
          "weight": 32,
          "atoms": [
            "L1",
            "L5",
            "AREA_HI_ADE"
          ]
        },
        {
          "weight": 19,
          "atoms": [
            "L3",
            "L5",
            "L9"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L3",
            "L9",
            "L11"
          ]
        },
        {
          "weight": 19,
          "atoms": [
            "L3",
            "L15",
            "L23"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "L3",
            "L15",
            "overlap_ae"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "L3",
            "L21",
            "overlap_ae"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L5",
            "L7",
            "L15"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "L5",
            "L7",
            "overlap_fc"
          ]
        },
        {
          "weight": 28,
          "atoms": [
            "L5",
            "L9",
            "L11"
          ]
        },
        {
          "weight": 19,
          "atoms": [
            "L5",
            "L11",
            "L25"
          ]
        },
        {
          "weight": 18,
          "atoms": [
            "L5",
            "L11",
            "span_AH_hi"
          ]
        },
        {
          "weight": 14,
          "atoms": [
            "L5",
            "L11",
            "overlap_eh"
          ]
        },
        {
          "weight": 13,
          "atoms": [
            "L5",
            "L15",
            "span_DE"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "L5",
            "AREA_HI_ADE",
            "overlap_eh"
          ]
        },
        {
          "weight": 7,
          "atoms": [
            "L5",
            "span_AH_hi",
            "overlap_fc"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L9",
            "L9",
            "overlap_eh"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L9",
            "L11",
            "L13"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "L11",
            "L25",
            "AREA_HI_ADE"
          ]
        },
        {
          "weight": 23,
          "atoms": [
            "L11",
            "L25",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L11",
            "AREA_HI_ADE",
            "AREA_LO_AEH"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "L11",
            "AREA_HI_ADE",
            "overlap_eh"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L13",
            "L21",
            "AREA_LO_BCF"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L13",
            "L21",
            "span_DE"
          ]
        },
        {
          "weight": 7,
          "atoms": [
            "L21",
            "span_DE",
            "overlap_bf"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "L21",
            "overlap_bf",
            "overlap_ae"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L23",
            "overlap_fc",
            "overlap_ae"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L25",
            "AREA_HI_ADE",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "L25",
            "span_BC_hi",
            "overlap_fc"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "L25",
            "span_AH_hi",
            "overlap_fc"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "span_BC_hi",
            "overlap_fc",
            "overlap_eh"
          ]
        },
        {
          "weight": 44,
          "atoms": [
            "AREA_LO_ACF",
            "L21"
          ]
        },
        {
          "weight": 8,
          "atoms": [
            "AREA_LO_BCD"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_BCD",
            "L12"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_BCD",
            "L18"
          ]
        },
        {
          "weight": 92,
          "atoms": [
            "AREA_LO_BCD",
            "L5"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_BCD",
            "L7"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_BCD",
            "L17"
          ]
        },
        {
          "weight": 8,
          "atoms": [
            "AREA_LO_BCD",
            "span_BC_hi"
          ]
        },
        {
          "weight": 8,
          "atoms": [
            "AREA_LO_BCD",
            "span_DE_hi"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "AREA_LO_BCD",
            "QUAD_987"
          ]
        },
        {
          "weight": 41,
          "atoms": [
            "AREA_LO_BCE",
            "L21"
          ]
        },
        {
          "weight": 42,
          "atoms": [
            "AREA_LO_CDE"
          ]
        },
        {
          "weight": 37,
          "atoms": [
            "AREA_LO_CDE",
            "L10"
          ]
        },
        {
          "weight": 12,
          "atoms": [
            "AREA_LO_CDE",
            "L18"
          ]
        },
        {
          "weight": 7,
          "atoms": [
            "AREA_LO_CDE",
            "L22"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "AREA_LO_CDE",
            "L9"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_CDE",
            "L25"
          ]
        },
        {
          "weight": 25,
          "atoms": [
            "AREA_LO_CDE",
            "AREA_LO_AEH"
          ]
        },
        {
          "weight": 21,
          "atoms": [
            "AREA_LO_CDE",
            "overlap_bf"
          ]
        },
        {
          "weight": 15,
          "atoms": [
            "AREA_HI_CDF",
            "L21"
          ]
        },
        {
          "weight": 39,
          "atoms": [
            "AREA_HI_CEF",
            "L21"
          ]
        },
        {
          "weight": 7,
          "atoms": [
            "AREA_LO_DEF"
          ]
        },
        {
          "weight": 27,
          "atoms": [
            "AREA_LO_DEF",
            "L20"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_DEF",
            "L22"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "AREA_LO_DEF",
            "L9"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_DEF",
            "L13"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_DEF",
            "L25"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "AREA_LO_DEF",
            "AREA_LO_AEH"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "AREA_LO_ABG",
            "L4"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "AREA_LO_ABG",
            "L23"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "AREA_LO_ABG",
            "L25"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "AREA_LO_ABO",
            "L0"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "AREA_LO_ABO",
            "L6"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "AREA_LO_ABO",
            "L12"
          ]
        },
        {
          "weight": 17,
          "atoms": [
            "AREA_LO_ABO",
            "L25"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_HI_DEO",
            "overlap_fc"
          ]
        },
        {
          "weight": 53,
          "atoms": [
            "AREA_LO_EFO"
          ]
        },
        {
          "weight": 7,
          "atoms": [
            "AREA_LO_EFO",
            "L14"
          ]
        },
        {
          "weight": 100,
          "atoms": [
            "AREA_LO_EFO",
            "L5"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_EFO",
            "L17"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "AREA_LO_EFO",
            "span_AH_hi"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "AREA_LO_FHO"
          ]
        },
        {
          "weight": 27,
          "atoms": [
            "AREA_LO_FHO",
            "L4"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "AREA_LO_FHO",
            "span_DE"
          ]
        },
        {
          "weight": 27,
          "atoms": [
            "AREA_LO_FHO",
            "span_BC_hi"
          ]
        },
        {
          "weight": 36,
          "atoms": [
            "AREA_LO_ABP",
            "L4"
          ]
        },
        {
          "weight": 19,
          "atoms": [
            "AREA_LO_ABP",
            "L16"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_ABP",
            "L20"
          ]
        },
        {
          "weight": 53,
          "atoms": [
            "AREA_LO_ABP",
            "L19"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_HI_DEP",
            "overlap_fc"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "AREA_LO_ACG"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_ACG",
            "L4"
          ]
        },
        {
          "weight": 48,
          "atoms": [
            "AREA_LO_ACG",
            "L20"
          ]
        },
        {
          "weight": 23,
          "atoms": [
            "AREA_LO_ACG",
            "L22"
          ]
        },
        {
          "weight": 16,
          "atoms": [
            "AREA_LO_ACG",
            "L25"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_ACG",
            "span_BC_hi"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_BGH",
            "L5"
          ]
        },
        {
          "weight": 25,
          "atoms": [
            "AREA_LO_COP",
            "L2"
          ]
        },
        {
          "weight": 23,
          "atoms": [
            "AREA_LO_COP",
            "L12"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "AREA_LO_COP",
            "L14"
          ]
        },
        {
          "weight": 16,
          "atoms": [
            "AREA_LO_COP",
            "L17"
          ]
        },
        {
          "weight": 44,
          "atoms": [
            "AREA_LO_FOP",
            "L0"
          ]
        },
        {
          "weight": 27,
          "atoms": [
            "AREA_LO_FOP",
            "L2"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "AREA_LO_FOP",
            "AREA_HI_ADH"
          ]
        },
        {
          "weight": 27,
          "atoms": [
            "AREA_LO_AGP"
          ]
        },
        {
          "weight": 24,
          "atoms": [
            "AREA_LO_AGP",
            "L4"
          ]
        },
        {
          "weight": 45,
          "atoms": [
            "AREA_LO_AGP",
            "L20"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_AGP",
            "L19"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "AREA_LO_AGP",
            "overlap_bf"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_HI_DGP",
            "overlap_fc"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_ACO"
          ]
        },
        {
          "weight": 54,
          "atoms": [
            "AREA_LO_ACO",
            "L22"
          ]
        },
        {
          "weight": 26,
          "atoms": [
            "AREA_LO_ACO",
            "L5"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "AREA_LO_ACO",
            "L7"
          ]
        },
        {
          "weight": 22,
          "atoms": [
            "AREA_LO_ACO",
            "L13"
          ]
        },
        {
          "weight": 38,
          "atoms": [
            "AREA_LO_ACO",
            "L25"
          ]
        },
        {
          "weight": 29,
          "atoms": [
            "AREA_LO_ACO",
            "AREA_LO_BCF"
          ]
        },
        {
          "weight": 8,
          "atoms": [
            "AREA_LO_ACO",
            "span_DE_hi"
          ]
        },
        {
          "weight": 24,
          "atoms": [
            "AREA_LO_ACO",
            "overlap_bf"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "AREA_LO_ACO",
            "Gsum"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "AREA_LO_ACO",
            "QUAD_987"
          ]
        },
        {
          "weight": 29,
          "atoms": [
            "AREA_HI_CGP",
            "L21"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "AREA_HI_CGP",
            "overlap_fc"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "AREA_LO_BFG",
            "L4"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "AREA_LO_FGP"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "AREA_LO_FGP",
            "L5"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_FGP",
            "L15"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_FGP",
            "AREA_HI_ADE"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_FGP",
            "span_BC_hi"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_FGP",
            "QUAD_987"
          ]
        },
        {
          "weight": 30,
          "atoms": [
            "AREA_LO_AFP",
            "L5"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "AREA_LO_AFP",
            "L21"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_BGP",
            "L18"
          ]
        },
        {
          "weight": 20,
          "atoms": [
            "AREA_LO_BGP",
            "L1"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "AREA_LO_BGP",
            "L5"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_BGP",
            "AREA_HI_ADE"
          ]
        },
        {
          "weight": 17,
          "atoms": [
            "AREA_LO_AOP",
            "L12"
          ]
        },
        {
          "weight": 57,
          "atoms": [
            "AREA_LO_BFO",
            "L8"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "AREA_LO_BGO"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_BGO",
            "L4"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_BGO",
            "L8"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "AREA_LO_BGO",
            "L14"
          ]
        },
        {
          "weight": 16,
          "atoms": [
            "AREA_LO_BGO",
            "L24"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_BGO",
            "L23"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_BGO",
            "span_BC_hi"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "AREA_LO_BGO",
            "span_AH_hi"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "ER",
            "L15"
          ]
        },
        {
          "weight": 28,
          "atoms": [
            "Central_order",
            "L4"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "Central_order",
            "L1"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "Central_order",
            "L17"
          ]
        },
        {
          "weight": 27,
          "atoms": [
            "Central_order",
            "L19"
          ]
        },
        {
          "weight": 19,
          "atoms": [
            "Central_order",
            "L23"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "Central_order",
            "AREA_LO_ADE"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "Central_order",
            "overlap_ae"
          ]
        },
        {
          "weight": 12,
          "atoms": [
            "QUAD_841",
            "overlap_fc"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "QUAD_915",
            "L12"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "QUAD_1012",
            "L21"
          ]
        },
        {
          "weight": 7,
          "atoms": [
            "NATURAL_SUPPORT_1139_CEH",
            "overlap_fc"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "NATURAL_SUPPORT_1399_BEF",
            "L21"
          ]
        }
      ],
      "sum": {
        "8": "14693207835592672243/79000000000000000000",
        "2,8": "-11803177130767/3125000000000000",
        "5,8": "102411474467313/62500000000000000",
        "0,9": "579466629587246448203/2790280000000000000000",
        "0,7,9": "1364837833244399/20000000000000000",
        "0,11": "328624082818771/5000000000000000",
        "0,2,11": "3758581507819/250000000000000",
        "0,5,11": "-18498423970239/625000000000000",
        "0": "-929474737138515051467/2790280000000000000000",
        "0,7": "-1509642506921871/20000000000000000",
        "0,2": "-136475988988907449/17439250000000000000",
        "0,2,7": "-15932630891833/1000000000000000",
        "0,5": "-165769884020517/2500000000000000",
        "0,3": "-43771245058917/1600000000000000",
        "0,3,5": "28653114853983/1000000000000000",
        "0,1": "38003038387807/1250000000000000",
        "0,2,5": "1949918435943/250000000000000",
        "0,6": "-22705022020051/625000000000000",
        "0,12": "4111667715483/100000000000000",
        "0,5,12": "7902472110993/312500000000000",
        "0,4": "118551519661111/4000000000000000",
        "0,2,4": "-5821850975243/400000000000000",
        "0,5,7": "-78414838306773/2500000000000000",
        "2,3": "51794852413057393437/1975000000000000000000",
        "2,3,5": "8960330190348219/6250000000000000000",
        "2,7,8": "408149677708223/25000000000000000",
        "2": "-3618537531356587740203/2179906250000000000000000",
        "2,10": "2012615304479662413069/174392500000000000000000",
        "1,2": "31111621991073/3125000000000000",
        "2,7": "115849851791357/25000000000000000",
        "2,2": "-274505373557959169/493750000000000000000",
        "2,2,7": "4444614058589/1250000000000000",
        "2,6": "-8432132269323/3125000000000000",
        "2,4": "-72832324598699633/25000000000000000000",
        "2,4,10": "-160024587955617/2500000000000000000",
        "2,5": "-2831929342593667911/1234375000000000000000",
        "2,5,7": "-21874836309609/1562500000000000",
        "2,2,4": "-6299809609853601/2500000000000000000",
        "2,4,5": "31005460132346781/6250000000000000000",
        "3,9": "-930496823462271/25000000000000000",
        "3,7,9": "5594779931556227/100000000000000000",
        "3,10": "769845314051121/25000000000000000",
        "3": "592754916678660018867/9875000000000000000000",
        "1,3": "-242609443014209/12500000000000000",
        "2,2,3": "-1820594630741399/2500000000000000000",
        "3,7": "-18957882068363/12500000000000000",
        "3,4": "170864879914599/4000000000000000",
        "1,3,7": "-355871972868359/6250000000000000",
        "4,4": "-3681872359085263/40000000000000000",
        "4": "826732129419414065081/19750000000000000000000",
        "4,10": "-1142223005758281447/50000000000000000000",
        "1,4": "-34128512941957667/3125000000000000000",
        "1,4,10": "38782772301401667/3125000000000000000",
        "5": "-773503251662030317779/12343750000000000000000",
        "5,7": "1072942716067917/15625000000000000",
        "5,10": "-6171716008855089/1234375000000000000",
        "0,5,10": "-8353484710263/1250000000000000",
        "5,7,10": "93712181639769/7812500000000000",
        "7": "25249925261908931/250000000000000000",
        "3,5,7": "-321440212902129/12500000000000000",
        "1,7": "-416389233445471/31250000000000000",
        "1,2,7": "-24218006463439/1562500000000000",
        "1,5,7": "119192559837459/3906250000000000",
        "1,8": "-5262599310186691/62500000000000000",
        "7,8": "899562229864529/62500000000000000",
        "4,8": "722328049150081/50000000000000000",
        "2,4,8": "149139625171933/10000000000000000",
        "4,5,8": "-734013087504873/25000000000000000",
        "3,8": "-722328049150081/50000000000000000",
        "2,3,8": "-149139625171933/10000000000000000",
        "3,5,8": "734013087504873/25000000000000000",
        "0,8": "2796045324873669/40000000000000000",
        "0,5,8": "179061347216301/5000000000000000",
        "5,7,8": "-2008770001623363/62500000000000000",
        "9": "14389960128842328272267/69757000000000000000000",
        "4,9": "596036919679242483/15800000000000000000",
        "2,9": "2093198627683/12500000000000000",
        "5,9": "458171615929041/62500000000000000",
        "10": "124542876590796747308379/3487850000000000000000000",
        "4,5,10": "-34242829057899/6250000000000000",
        "3,5,10": "34242829057899/6250000000000000",
        "0,10": "-27168365933709/10000000000000000",
        "7,10": "81642557331027/7812500000000000",
        "11": "5236067946352997/62500000000000000",
        "4,11": "-10918973462713/1562500000000000",
        "3,11": "10918973462713/1562500000000000",
        "2,11": "166430461091823/6250000000000000",
        "5,11": "84315521823543/15625000000000000",
        "1,11": "-36296713110747/781250000000000",
        "10,11": "15828520007223/976562500000000",
        "": "-250849048610234560779122809/87196250000000000000000000",
        "1": "903594194561820567/3125000000000000000",
        "4,5": "69240731319337610511/4937500000000000000000",
        "1,5": "62489489099349/3906250000000000",
        "7,11": "13557122343229/62500000000000000",
        "4,7": "644826568758871/100000000000000000",
        "1,10": "15769044481122933/3125000000000000000",
        "0,1,10": "9248286197073/625000000000000",
        "3,5": "-1006851050200133709/62500000000000000000",
        "12": "-235155940569524979/4937500000000000000",
        "5,12": "195175856129211/30859375000000000",
        "2,12": "-5270932972452069/246875000000000000",
        "2,5,12": "-2204497102869/390625000000000",
        "2,4,7": "65311468805509/5000000000000000",
        "4,4,4": "-350686005608359/8000000000000000",
        "6": "-69639679928459543/308593750000000000",
        "5,6": "-17201576151333/976562500000000",
        "4,6": "-19377977573087/12500000000000000",
        "4,12": "114987203235009/2500000000000000",
        "3,12": "-114987203235009/2500000000000000",
        "1,12": "-6484800309651/390625000000000",
        "1,6": "135770690607279/1953125000000000",
        "6,10": "-29602440199754499/1234375000000000000",
        "2,6,10": "-2129238455421/781250000000000",
        "1,6,10": "11601887137071/976562500000000",
        "3,6": "-39229256883803/12500000000000000",
        "3,6,10": "-31288136411301/3125000000000000",
        "1,3,10": "-37910823364029/1562500000000000",
        "1,3,6": "-39795392724311/781250000000000",
        "1,9": "-1291983262369711/31250000000000000",
        "1,3,9": "-758063415170107/6250000000000000",
        "1,1": "-32436007024837/781250000000000",
        "1,1,3": "-48218790804319/97656250000000",
        "1,2,8": "55302146352343/3125000000000000",
        "0,1,2": "-2158788144353/125000000000000",
        "8,11": "-974942264243123/12500000000000000",
        "8,12": "-925783544452041/62500000000000000",
        "1,8,12": "-224124076767393/3906250000000000",
        "0,1,12": "8748962412903/156250000000000",
        "6,12": "14561653652217/390625000000000",
        "0,6,12": "-7220595733407/156250000000000",
        "0,0": "10469582904793/160000000000000",
        "0,0,1": "-7738618972141/25000000000000",
        "9,12": "-41232409576821/31250000000000000",
        "0,9,12": "-137545305788259/2500000000000000",
        "7,9": "-14554329807059917/100000000000000000",
        "8,10": "-271054224396879/15625000000000000",
        "5,8,10": "-213993038273553/31250000000000000",
        "8,9": "6605998442893897091/79000000000000000000",
        "0,1,8": "-594725665992513/2500000000000000",
        "0,10,11": "16101828968379/1250000000000000",
        "2,8,10": "-43479935250213/12500000000000000",
        "0,6,10": "-7632692050137/625000000000000",
        "2,8,11": "-96284401582589/3125000000000000",
        "6,7": "19987334027591/1562500000000000",
        "2,6,12": "2014278842331/97656250000000",
        "5,6,12": "-9913576156911/488281250000000",
        "5,8,11": "473878158153609/15625000000000000",
        "0,0,2": "1420231459991/80000000000000",
        "1,1,8": "-301332741189293/3906250000000000"
      },
      "upper": "-14582550008543427272437699/87196250000000000000000000"
    }
  },
  "word": "CEF"
}
```
