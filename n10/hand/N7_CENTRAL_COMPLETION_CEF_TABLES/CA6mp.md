# CA6mp

```n7-central-cef-packet
{
  "id": "CA6mp",
  "cell": "CA",
  "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "AFG-",
    "BFG-",
    "GOP+"
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
        "BFG-"
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
        "BFG": -1
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
        "L_ABF": {
          "triangle": "ABF",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ABF",
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
        "L_ACF": {
          "triangle": "ACF",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACF",
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
        "L_BFG": {
          "triangle": "BFG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FBG",
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
        "U_ACH": {
          "triangle": "ACH",
          "side": "hi",
          "value": "379615761/500000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACH",
            "used": [
              0,
              2,
              7
            ],
            "values": [
              "-30678332481/500000000000",
              "-964183917/20000000000",
              "4384313229/20000000000",
              "139499753697/500000000000",
              "3291189927/10000000000",
              "104718837411/250000000000",
              "11930877/20000000",
              "379615761/500000000"
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
              "1868299/18140000",
              "132397207/453500000",
              "584837/1000000",
              "773789/1000000"
            ],
            "cell": "CA"
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
        }
      },
      "relations": {
        "0": {
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
        "4": {
          "row": [
            "fan",
            "BCF",
            "BCG",
            "CFG",
            "BFG"
          ],
          "witness": {
            "kind": "fan",
            "outer": "BCF",
            "point": "G"
          }
        },
        "123": {
          "row": [
            "plu",
            "ACH",
            "CFG",
            "ACF",
            "CGH",
            "ACG",
            "CFH"
          ],
          "witness": {
            "kind": "plu",
            "word": "CAFGH"
          }
        },
        "966": {
          "row": [
            "balance",
            [
              [
                1,
                "ABF",
                "CGH"
              ],
              [
                1,
                "ABG",
                "CFH"
              ],
              [
                1,
                "ACH",
                "BFG"
              ],
              [
                -1,
                "AFG",
                "BCH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ABF",
            "point": "G",
            "line": "CH"
          }
        }
      },
      "updates": [
        {
          "id": "T0009",
          "relation": 4,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "587789/1000000",
          "sources": [
            "U_BCF",
            "L_BCG",
            "L_BFG"
          ]
        },
        {
          "id": "T0023",
          "relation": 123,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "29761/250000",
          "sources": [
            "L_ACF",
            "L_CGH",
            "L_ACG",
            "L_CFH",
            "U_ACH"
          ]
        },
        {
          "id": "T0047",
          "relation": 966,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "127981/1000000",
          "sources": [
            "L_ABF",
            "L_CGH",
            "L_ABG",
            "L_CFH",
            "L_ACH",
            "L_BFG",
            "U_BCH"
          ]
        },
        {
          "id": "T0075",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "13601/40000",
          "sources": [
            "L_ACG",
            "T0023",
            "T0047"
          ]
        },
        {
          "id": "T0082",
          "relation": 123,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "126519/1000000",
          "sources": [
            "T0075",
            "L_CGH",
            "L_ACG",
            "L_CFH",
            "U_ACH"
          ]
        },
        {
          "id": "T0098",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "139/400",
          "sources": [
            "L_ACG",
            "T0082",
            "T0047"
          ]
        },
        {
          "id": "T0102",
          "relation": 123,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "63717/500000",
          "sources": [
            "T0098",
            "L_CGH",
            "L_ACG",
            "L_CFH",
            "U_ACH"
          ]
        },
        {
          "id": "T0108",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "69683/200000",
          "sources": [
            "L_ACG",
            "T0102",
            "T0047"
          ]
        },
        {
          "id": "T0112",
          "relation": 123,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "63773/500000",
          "sources": [
            "T0108",
            "L_CGH",
            "L_ACG",
            "L_CFH",
            "U_ACH"
          ]
        },
        {
          "id": "T0118",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "348527/1000000",
          "sources": [
            "L_ACG",
            "T0112",
            "T0047"
          ]
        },
        {
          "id": "T0122",
          "relation": 123,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "3189/25000",
          "sources": [
            "T0118",
            "L_CGH",
            "L_ACG",
            "L_CFH",
            "U_ACH"
          ]
        },
        {
          "id": "T0128",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "348541/1000000",
          "sources": [
            "L_ACG",
            "T0122",
            "T0047"
          ]
        },
        {
          "id": "T0132",
          "relation": 123,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "63781/500000",
          "sources": [
            "T0128",
            "L_CGH",
            "L_ACG",
            "L_CFH",
            "U_ACH"
          ]
        },
        {
          "id": "T0139",
          "relation": 4,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "156781/500000",
          "sources": [
            "L_BCG",
            "T0132",
            "L_BFG"
          ]
        }
      ],
      "physical": {
        "34": {
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
              "-156781/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCF",
            "side": "lo",
            "reference": "T0139",
            "value": "156781/500000"
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
        "192": {
          "name": "AREA_LO_BFG",
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
                1,
                8
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
            "triangle": "BFG",
            "side": "lo",
            "reference": "L_BFG",
            "value": "93/1000"
          }
        },
        "208": {
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
          "10881/40000",
          "307011/500000",
          "69759/500000",
          "112913/500000",
          "76231/200000",
          "247737/1000000",
          "8559/25000"
        ],
        "high": [
          "683603/1000000",
          "113121/200000",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "26631/40000",
          "1/1",
          "586047/1000000",
          "89637/125000",
          "907/1000",
          "89637/125000",
          "683603/1000000"
        ],
        "steps": [
          {
            "factor": 34,
            "target": "b",
            "old": [
              "108013/1000000",
              "535/907"
            ],
            "lines": [
              [
                "-1/1",
                "47411/125000"
              ],
              [
                "-1/1",
                "7103/12500"
              ]
            ],
            "raw": [
              "108013/1000000",
              "7103/12500"
            ],
            "new": [
              "108013/1000000",
              "7103/12500"
            ]
          },
          {
            "factor": 192,
            "target": "b",
            "old": [
              "108013/1000000",
              "7103/12500"
            ],
            "lines": [
              [
                "-430241/500000",
                "-30059803/500000000"
              ],
              [
                "-430241/500000",
                "-24266062859/250000000000"
              ],
              [
                "-430241/500000",
                "243346197/500000000"
              ],
              [
                "-430241/500000",
                "112436937141/250000000000"
              ],
              [
                "-1923/8000",
                "-708361/1600000"
              ],
              [
                "-1923/8000",
                "-2575503377/4000000000"
              ],
              [
                "-1923/8000",
                "832691/8000000"
              ],
              [
                "-1923/8000",
                "-388255377/4000000000"
              ]
            ],
            "raw": [
              "108013/1000000",
              "243346197/430241000"
            ],
            "new": [
              "108013/1000000",
              "113121/200000"
            ]
          },
          {
            "factor": 192,
            "target": "g",
            "old": [
              "118963/1000000",
              "26631/40000"
            ],
            "lines": [
              [
                "1/1",
                "-136012924133/500000000000"
              ],
              [
                "1/1",
                "-66577552761/100000000000"
              ],
              [
                "1/1",
                "-154485246851/500000000000"
              ],
              [
                "1/1",
                "-351360086523/500000000000"
              ],
              [
                "1/1",
                "-4701217999/8000000000"
              ],
              [
                "1/1",
                "-1116233483/1600000000"
              ],
              [
                "1/1",
                "-6310419753/8000000000"
              ],
              [
                "1/1",
                "-7190369169/8000000000"
              ]
            ],
            "raw": [
              "136012924133/500000000000",
              "26631/40000"
            ],
            "new": [
              "10881/40000",
              "26631/40000"
            ]
          },
          {
            "factor": 208,
            "target": "z",
            "old": [
              "69759/500000",
              "6077/8000"
            ],
            "lines": [
              [
                "-1/1",
                "21992077/35320000"
              ],
              [
                "-1/1",
                "8084827/35320000"
              ]
            ],
            "raw": [
              "69759/500000",
              "21992077/35320000"
            ],
            "new": [
              "69759/500000",
              "622653/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "69759/500000",
              "622653/1000000"
            ],
            "lines": [
              [
                "-13857/20000",
                "3307916163/20000000000"
              ],
              [
                "-440901/500000",
                "140708246547/500000000000"
              ],
              [
                "-13857/20000",
                "-1527507087/20000000000"
              ],
              [
                "-440901/500000",
                "19822665297/500000000000"
              ],
              [
                "-13857/20000",
                "13113/40000"
              ],
              [
                "-440901/500000",
                "516777/1000000"
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
              "172259/293934"
            ],
            "new": [
              "69759/500000",
              "586047/1000000"
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
        "BFG-"
      ],
      "initial_box": {
        "low": [
          "139/1000",
          "108013/1000000",
          "13857/20000",
          "120187/1000000",
          "42297/100000",
          "617/1000",
          "10881/40000",
          "307011/500000",
          "69759/500000",
          "112913/500000",
          "76231/200000",
          "247737/1000000",
          "8559/25000"
        ],
        "high": [
          "683603/1000000",
          "113121/200000",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "26631/40000",
          "1",
          "586047/1000000",
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
        "BFG": -1,
        "FGO": -1,
        "BGO": 1,
        "EGO": -1
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
            "ray",
            "CFG",
            "OP",
            "FGC",
            [
              "area",
              "CFG",
              "T0009",
              "587789/1000000"
            ]
          ],
          "target": "FGO",
          "sign": -1,
          "deps": [
            "CGO",
            "CFO",
            "CGP",
            "CFP",
            "FOP"
          ],
          "area_stage": 5
        },
        {
          "rule": [
            "plu",
            "GABFO"
          ],
          "target": "BGO",
          "sign": 1,
          "deps": [
            "ABG",
            "FGO",
            "AFG",
            "AGO",
            "BFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCEFO"
          ],
          "target": "EGO",
          "sign": -1,
          "deps": [
            "CEG",
            "FGO",
            "CFG",
            "CGO",
            "EFG"
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
          "10881/40000",
          "307011/500000",
          "69759/500000",
          "112913/500000",
          "76231/200000",
          "247737/1000000",
          "8559/25000"
        ],
        "high": [
          "683603/1000000",
          "113121/200000",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "26631/40000",
          "1/1",
          "586047/1000000",
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
        "BFG-",
        "GOP+"
      ],
      "initial_box": {
        "low": [
          "139/1000",
          "108013/1000000",
          "13857/20000",
          "120187/1000000",
          "42297/100000",
          "617/1000",
          "10881/40000",
          "307011/500000",
          "69759/500000",
          "112913/500000",
          "76231/200000",
          "247737/1000000",
          "8559/25000"
        ],
        "high": [
          "683603/1000000",
          "113121/200000",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "26631/40000",
          "1",
          "586047/1000000",
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
        "BFG": -1,
        "FGO": -1,
        "BGO": 1,
        "EGO": -1,
        "GOP": 1,
        "BGP": 1,
        "FGP": -1,
        "EGP": -1,
        "BEP": 1,
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
            "ray",
            "CFG",
            "OP",
            "FGC",
            [
              "area",
              "CFG",
              "T0009",
              "587789/1000000"
            ]
          ],
          "target": "FGO",
          "sign": -1,
          "deps": [
            "CGO",
            "CFO",
            "CGP",
            "CFP",
            "FOP"
          ],
          "area_stage": 5
        },
        {
          "rule": [
            "plu",
            "GABFO"
          ],
          "target": "BGO",
          "sign": 1,
          "deps": [
            "ABG",
            "FGO",
            "AFG",
            "AGO",
            "BFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCEFO"
          ],
          "target": "EGO",
          "sign": -1,
          "deps": [
            "CEG",
            "FGO",
            "CFG",
            "CGO",
            "EFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GABOP"
          ],
          "target": "BGP",
          "sign": 1,
          "deps": [
            "ABG",
            "GOP",
            "AGO",
            "AGP",
            "BGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GAFOP"
          ],
          "target": "FGP",
          "sign": -1,
          "deps": [
            "AFG",
            "GOP",
            "AGO",
            "AGP",
            "FGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCEFP"
          ],
          "target": "EGP",
          "sign": -1,
          "deps": [
            "CEG",
            "FGP",
            "CFG",
            "CGP",
            "EFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "BCE",
            "GP",
            "EBC",
            [
              "fixed",
              "BCE"
            ]
          ],
          "target": "BEP",
          "sign": 1,
          "deps": [
            "BCG",
            "CEG",
            "BCP",
            "CEP",
            "EGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "BEF",
            "OP",
            "FBE",
            [
              "HCF2-BEF-cap1"
            ]
          ],
          "target": "BFO",
          "sign": 1,
          "deps": [
            "BEO",
            "EFO",
            "BEP",
            "EFP",
            "FOP"
          ],
          "area_stage": null
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
        "L_AGH": {
          "triangle": "AGH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "AGH",
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
        "L_BCP": {
          "triangle": "BCP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BCP",
            "points": [
              "G"
            ]
          }
        },
        "L_BFG": {
          "triangle": "BFG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FBG",
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
        "L_CGO": {
          "triangle": "CGO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GCO",
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
        "L_FGH": {
          "triangle": "FGH",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "GFH",
            "points": [
              "O",
              "P"
            ]
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
        "L_GOP": {
          "triangle": "GOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GOP",
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
        "U_ACH": {
          "triangle": "ACH",
          "side": "hi",
          "value": "379615761/500000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACH",
            "used": [
              0,
              2,
              7
            ],
            "values": [
              "-30678332481/500000000000",
              "-964183917/20000000000",
              "4384313229/20000000000",
              "139499753697/500000000000",
              "3291189927/10000000000",
              "104718837411/250000000000",
              "11930877/20000000",
              "379615761/500000000"
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
              "25449/200000",
              "316197/1000000",
              "584837/1000000",
              "773789/1000000"
            ],
            "cell": "CA"
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
              "7813122939/100000000000",
              "25449/200000",
              "97075957167/500000000000",
              "316197/1000000",
              "179551392207/500000000000",
              "237561734679/500000000000",
              "584837/1000000",
              "773789/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_BFG": {
          "triangle": "BFG",
          "side": "hi",
          "value": "243374575867/500000000000",
          "witness": {
            "kind": "vertices",
            "signed": "FBG",
            "used": [
              1,
              5,
              6,
              8
            ],
            "values": [
              "-478886303259/1000000000000",
              "-168847586523/500000000000",
              "-64739977113/200000000000",
              "-30075052761/100000000000",
              "-289464722083/1000000000000",
              "-134278304389/1000000000000",
              "-85136303259/1000000000000",
              "28027253149/500000000000",
              "28027413477/500000000000",
              "14010022887/200000000000",
              "46499575867/500000000000",
              "9299947239/100000000000",
              "104285277917/1000000000000",
              "259471695611/1000000000000",
              "224902253149/500000000000",
              "243374575867/500000000000"
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
        },
        "U_FGH": {
          "triangle": "FGH",
          "side": "hi",
          "value": "189693687141/250000000000",
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
              "2445124809/20000000000",
              "324160191/2500000000",
              "255409001/1000000000",
              "5484701559/20000000000",
              "2816429139/10000000000",
              "182512291653/500000000000",
              "7955292669/20000000000",
              "261707120829/500000000000",
              "265458697/500000000",
              "10994869419/20000000000",
              "337696539579/500000000000",
              "189693687141/250000000000"
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
        "1": {
          "row": [
            "fan",
            "ACH",
            "ACG",
            "CGH",
            "AGH"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ACH",
            "point": "G"
          }
        },
        "4": {
          "row": [
            "fan",
            "BCF",
            "BCG",
            "CFG",
            "BFG"
          ],
          "witness": {
            "kind": "fan",
            "outer": "BCF",
            "point": "G"
          }
        },
        "5": {
          "row": [
            "fan",
            "BCH",
            "BCG",
            "CGH",
            "BGH"
          ],
          "witness": {
            "kind": "fan",
            "outer": "BCH",
            "point": "G"
          }
        },
        "11": {
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
        "13": {
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
        "15": {
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
        "16": {
          "row": [
            "fan",
            "FGH",
            "FGP",
            "FHP",
            "GHP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "GFH",
            "point": "P"
          }
        },
        "17": {
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
        "18": {
          "row": [
            "fan",
            "GHO",
            "GHP",
            "GOP",
            "HOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "HGO",
            "point": "P"
          }
        },
        "419": {
          "row": [
            "plu",
            "FGO",
            "FHP",
            "FGH",
            "FOP",
            "FGP",
            "FHO"
          ],
          "witness": {
            "kind": "plu",
            "word": "FGHOP"
          }
        },
        "424": {
          "row": [
            "plu",
            "AFG",
            "BGH",
            "ABG",
            "FGH",
            "AGH",
            "BFG"
          ],
          "witness": {
            "kind": "plu",
            "word": "GABFH"
          }
        },
        "430": {
          "row": [
            "plu",
            "AGH",
            "CFG",
            "ACG",
            "FGH",
            "AFG",
            "CGH"
          ],
          "witness": {
            "kind": "plu",
            "word": "GACFH"
          }
        },
        "554": {
          "row": [
            "plu",
            "CFH",
            "GHP",
            "CGH",
            "FHP",
            "CHP",
            "FGH"
          ],
          "witness": {
            "kind": "plu",
            "word": "HCFGP"
          }
        },
        "598": {
          "row": [
            "plu",
            "FGO",
            "HOP",
            "FHO",
            "GOP",
            "FOP",
            "GHO"
          ],
          "witness": {
            "kind": "plu",
            "word": "OFGHP"
          }
        },
        "637": {
          "row": [
            "plu",
            "FGP",
            "HOP",
            "FHP",
            "GOP",
            "FOP",
            "GHP"
          ],
          "witness": {
            "kind": "plu",
            "word": "PFGHO"
          }
        },
        "714": {
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
        "1000": {
          "row": [
            "support",
            "FGH",
            "BFG",
            "BFH",
            "1023/1000"
          ],
          "witness": {
            "kind": "five_support",
            "poly": "FHABG"
          }
        },
        "1178": {
          "row": [
            "support",
            "CFO",
            "CFG",
            "FGO",
            "1023/1000"
          ],
          "witness": {
            "kind": "five_support",
            "poly": "FOPGC"
          }
        },
        "1257": {
          "row": [
            "balance",
            [
              [
                1,
                "ABC",
                "FGH"
              ],
              [
                1,
                "ABH",
                "CFG"
              ],
              [
                1,
                "ACH",
                "BFG"
              ],
              [
                -1,
                "AFG",
                "BCH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ABC",
            "point": "H",
            "line": "FG"
          }
        },
        "1827": {
          "row": [
            "balance",
            [
              [
                1,
                "ABC",
                "FGH"
              ],
              [
                -1,
                "ACF",
                "BGH"
              ],
              [
                1,
                "ACG",
                "BFH"
              ],
              [
                1,
                "ACH",
                "BFG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "BFG",
            "point": "H",
            "line": "AC"
          }
        },
        "2073": {
          "row": [
            "balance",
            [
              [
                1,
                "CFG",
                "HOP"
              ],
              [
                1,
                "CFH",
                "GOP"
              ],
              [
                1,
                "CGH",
                "FOP"
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
            "outer": "CFG",
            "point": "H",
            "line": "OP"
          }
        },
        "2109": {
          "row": [
            "balance",
            [
              [
                1,
                "CFH",
                "GOP"
              ],
              [
                -1,
                "CFP",
                "GHO"
              ],
              [
                1,
                "CGO",
                "FHP"
              ],
              [
                1,
                "CHP",
                "FGO"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CFH",
            "point": "P",
            "line": "GO"
          }
        },
        "2468": {
          "row": [
            "linear",
            {
              "ACF": "286615761/500000000",
              "AFH": "-93/1000",
              "AFG": "-379615761/500000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACH",
            "point": "G",
            "line": "AF",
            "side": "lower",
            "outer_upper": {
              "triangle": "ACH",
              "ref": "U_ACH",
              "value": "379615761/500000000"
            },
            "fan_lower": [
              {
                "triangle": "CGH",
                "ref": "L_CGH",
                "value": "93/1000"
              },
              {
                "triangle": "AGH",
                "ref": "L_AGH",
                "value": "93/1000"
              },
              {
                "triangle": "ACG",
                "ref": "L_ACG",
                "value": "93/1000"
              }
            ],
            "residual": "240115761/500000000"
          }
        },
        "2484": {
          "row": [
            "linear",
            {
              "ABH": "-93/1000",
              "BCH": "286615761/500000000",
              "BGH": "-379615761/500000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACH",
            "point": "G",
            "line": "BH",
            "side": "lower",
            "outer_upper": {
              "triangle": "ACH",
              "ref": "U_ACH",
              "value": "379615761/500000000"
            },
            "fan_lower": [
              {
                "triangle": "CGH",
                "ref": "L_CGH",
                "value": "93/1000"
              },
              {
                "triangle": "AGH",
                "ref": "L_AGH",
                "value": "93/1000"
              },
              {
                "triangle": "ACG",
                "ref": "L_ACG",
                "value": "93/1000"
              }
            ],
            "residual": "240115761/500000000"
          }
        },
        "2513": {
          "row": [
            "linear",
            {
              "AFG": "-93/1000",
              "CFG": "286615761/500000000",
              "FGH": "-93/1000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACH",
            "point": "G",
            "line": "FG",
            "side": "upper",
            "outer_upper": {
              "triangle": "ACH",
              "ref": "U_ACH",
              "value": "379615761/500000000"
            },
            "fan_lower": [
              {
                "triangle": "CGH",
                "ref": "L_CGH",
                "value": "93/1000"
              },
              {
                "triangle": "AGH",
                "ref": "L_AGH",
                "value": "93/1000"
              },
              {
                "triangle": "ACG",
                "ref": "L_ACG",
                "value": "93/1000"
              }
            ],
            "residual": "240115761/500000000"
          }
        },
        "3097": {
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
        "3167": {
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
        "3536": {
          "row": [
            "linear",
            {
              "FGP": "4923853341/12500000000",
              "GHP": "-93/1000",
              "GOP": "-7248853341/12500000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "FHP",
            "point": "O",
            "line": "GP",
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
        }
      },
      "updates": [
        {
          "id": "T0001",
          "relation": 1,
          "rule": "sub",
          "triangle": "AGH",
          "side": "hi",
          "value": "35827/62500",
          "sources": [
            "U_ACH",
            "L_ACG",
            "L_CGH"
          ]
        },
        {
          "id": "T0003",
          "relation": 4,
          "rule": "sub",
          "triangle": "CFG",
          "side": "hi",
          "value": "587789/1000000",
          "sources": [
            "U_BCF",
            "L_BCG",
            "L_BFG"
          ]
        },
        {
          "id": "T0004",
          "relation": 5,
          "rule": "sub",
          "triangle": "BGH",
          "side": "hi",
          "value": "587789/1000000",
          "sources": [
            "U_BCH",
            "L_BCG",
            "L_CGH"
          ]
        },
        {
          "id": "T0040",
          "relation": 424,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "124337/1000000",
          "sources": [
            "L_ABG",
            "L_FGH",
            "L_AGH",
            "L_BFG",
            "T0004"
          ]
        },
        {
          "id": "T0042",
          "relation": 430,
          "rule": "sumlo",
          "triangle": "AGH",
          "side": "lo",
          "value": "25859/200000",
          "sources": [
            "L_ACG",
            "L_FGH",
            "T0040",
            "L_CGH",
            "T0003"
          ]
        },
        {
          "id": "T0053",
          "relation": 554,
          "rule": "sumlo",
          "triangle": "GHP",
          "side": "lo",
          "value": "3203/31250",
          "sources": [
            "L_CGH",
            "L_FHP",
            "L_CHP",
            "L_FGH",
            "U_CFH"
          ]
        },
        {
          "id": "T0055",
          "relation": 714,
          "rule": "quad",
          "triangle": "AFH",
          "side": "lo",
          "value": "8761/62500",
          "sources": [
            "U_ACF"
          ]
        },
        {
          "id": "T0060",
          "relation": 1000,
          "rule": "support_z",
          "triangle": "BFH",
          "side": "lo",
          "value": "90797/250000",
          "sources": [
            "L_FGH",
            "U_BFG"
          ]
        },
        {
          "id": "T0079",
          "relation": 2468,
          "rule": "linear",
          "triangle": "AFG",
          "side": "hi",
          "value": "162151/250000",
          "sources": [
            "U_ACF",
            "T0055"
          ]
        },
        {
          "id": "T0080",
          "relation": 2484,
          "rule": "linear",
          "triangle": "BGH",
          "side": "hi",
          "value": "572831/1000000",
          "sources": [
            "L_ABH",
            "U_BCH"
          ]
        },
        {
          "id": "T0108",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "63059/200000",
          "sources": [
            "L_ACG",
            "L_CGH",
            "T0042"
          ]
        },
        {
          "id": "T0117",
          "relation": 16,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "377279/1000000",
          "sources": [
            "U_FGH",
            "L_FHP",
            "T0053"
          ]
        },
        {
          "id": "T0133",
          "relation": 424,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "33369/250000",
          "sources": [
            "L_ABG",
            "L_FGH",
            "T0042",
            "L_BFG",
            "T0080"
          ]
        },
        {
          "id": "T0134",
          "relation": 430,
          "rule": "sumlo",
          "triangle": "AGH",
          "side": "lo",
          "value": "130741/1000000",
          "sources": [
            "L_ACG",
            "L_FGH",
            "T0133",
            "L_CGH",
            "T0003"
          ]
        },
        {
          "id": "T0135",
          "relation": 430,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "134061/1000000",
          "sources": [
            "L_ACG",
            "L_FGH",
            "T0133",
            "L_CGH",
            "T0001"
          ]
        },
        {
          "id": "T0145",
          "relation": 637,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "94039/1000000",
          "sources": [
            "L_FHP",
            "L_GOP",
            "L_FOP",
            "T0053",
            "T0117"
          ]
        },
        {
          "id": "T0147",
          "relation": 1257,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "137279/1000000",
          "sources": [
            "L_ABC",
            "L_FGH",
            "L_ABH",
            "T0135",
            "T0108",
            "L_BFG",
            "U_BCH"
          ]
        },
        {
          "id": "T0156",
          "relation": 2513,
          "rule": "linear",
          "triangle": "CFG",
          "side": "lo",
          "value": "67339/500000",
          "sources": [
            "T0147",
            "L_FGH"
          ]
        },
        {
          "id": "T0161",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "316741/1000000",
          "sources": [
            "L_ACG",
            "L_CGH",
            "T0134"
          ]
        },
        {
          "id": "T0170",
          "relation": 17,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "280039/1000000",
          "sources": [
            "L_FHO",
            "T0145",
            "L_FOP"
          ]
        },
        {
          "id": "T0179",
          "relation": 430,
          "rule": "sumlo",
          "triangle": "AGH",
          "side": "lo",
          "value": "131343/1000000",
          "sources": [
            "L_ACG",
            "L_FGH",
            "T0147",
            "L_CGH",
            "T0003"
          ]
        },
        {
          "id": "T0186",
          "relation": 554,
          "rule": "sumlo",
          "triangle": "GHP",
          "side": "lo",
          "value": "51303/500000",
          "sources": [
            "L_CGH",
            "T0170",
            "L_CHP",
            "L_FGH",
            "U_CFH"
          ]
        },
        {
          "id": "T0190",
          "relation": 637,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "47161/500000",
          "sources": [
            "T0170",
            "L_GOP",
            "L_FOP",
            "T0186",
            "T0117"
          ]
        },
        {
          "id": "T0191",
          "relation": 1257,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "137527/1000000",
          "sources": [
            "L_ABC",
            "L_FGH",
            "L_ABH",
            "T0156",
            "T0161",
            "L_BFG",
            "U_BCH"
          ]
        },
        {
          "id": "T0199",
          "relation": 2513,
          "rule": "linear",
          "triangle": "CFG",
          "side": "lo",
          "value": "67359/500000",
          "sources": [
            "T0191",
            "L_FGH"
          ]
        },
        {
          "id": "T0204",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "317343/1000000",
          "sources": [
            "L_ACG",
            "L_CGH",
            "T0179"
          ]
        },
        {
          "id": "T0213",
          "relation": 16,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "37613/100000",
          "sources": [
            "U_FGH",
            "T0170",
            "T0186"
          ]
        },
        {
          "id": "T0216",
          "relation": 17,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "140161/500000",
          "sources": [
            "L_FHO",
            "T0190",
            "L_FOP"
          ]
        },
        {
          "id": "T0226",
          "relation": 430,
          "rule": "sumlo",
          "triangle": "AGH",
          "side": "lo",
          "value": "65691/500000",
          "sources": [
            "L_ACG",
            "L_FGH",
            "T0191",
            "L_CGH",
            "T0003"
          ]
        },
        {
          "id": "T0233",
          "relation": 554,
          "rule": "sumlo",
          "triangle": "GHP",
          "side": "lo",
          "value": "25659/250000",
          "sources": [
            "L_CGH",
            "T0216",
            "L_CHP",
            "L_FGH",
            "U_CFH"
          ]
        },
        {
          "id": "T0237",
          "relation": 637,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "2959/31250",
          "sources": [
            "T0216",
            "L_GOP",
            "L_FOP",
            "T0233",
            "T0213"
          ]
        },
        {
          "id": "T0238",
          "relation": 1257,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "34401/250000",
          "sources": [
            "L_ABC",
            "L_FGH",
            "L_ABH",
            "T0199",
            "T0204",
            "L_BFG",
            "U_BCH"
          ]
        },
        {
          "id": "T0246",
          "relation": 2513,
          "rule": "linear",
          "triangle": "CFG",
          "side": "lo",
          "value": "134731/1000000",
          "sources": [
            "T0238",
            "L_FGH"
          ]
        },
        {
          "id": "T0253",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "158691/500000",
          "sources": [
            "L_ACG",
            "L_CGH",
            "T0226"
          ]
        },
        {
          "id": "T0263",
          "relation": 16,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "375817/1000000",
          "sources": [
            "U_FGH",
            "T0216",
            "T0233"
          ]
        },
        {
          "id": "T0266",
          "relation": 17,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "17543/62500",
          "sources": [
            "L_FHO",
            "T0237",
            "L_FOP"
          ]
        },
        {
          "id": "T0276",
          "relation": 430,
          "rule": "sumlo",
          "triangle": "AGH",
          "side": "lo",
          "value": "65697/500000",
          "sources": [
            "L_ACG",
            "L_FGH",
            "T0238",
            "L_CGH",
            "T0003"
          ]
        },
        {
          "id": "T0283",
          "relation": 554,
          "rule": "sumlo",
          "triangle": "GHP",
          "side": "lo",
          "value": "4107/40000",
          "sources": [
            "L_CGH",
            "T0266",
            "L_CHP",
            "L_FGH",
            "U_CFH"
          ]
        },
        {
          "id": "T0287",
          "relation": 637,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "94867/1000000",
          "sources": [
            "T0266",
            "L_GOP",
            "L_FOP",
            "T0283",
            "T0263"
          ]
        },
        {
          "id": "T0288",
          "relation": 1257,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "13761/100000",
          "sources": [
            "L_ABC",
            "L_FGH",
            "L_ABH",
            "T0246",
            "T0253",
            "L_BFG",
            "U_BCH"
          ]
        },
        {
          "id": "T0296",
          "relation": 2513,
          "rule": "linear",
          "triangle": "CFG",
          "side": "lo",
          "value": "33683/250000",
          "sources": [
            "T0288",
            "L_FGH"
          ]
        },
        {
          "id": "T0303",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "158697/500000",
          "sources": [
            "L_ACG",
            "L_CGH",
            "T0276"
          ]
        },
        {
          "id": "T0304",
          "relation": 4,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "80183/250000",
          "sources": [
            "L_BCG",
            "T0296",
            "L_BFG"
          ]
        },
        {
          "id": "T0313",
          "relation": 16,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "93853/250000",
          "sources": [
            "U_FGH",
            "T0266",
            "T0283"
          ]
        },
        {
          "id": "T0316",
          "relation": 17,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "280867/1000000",
          "sources": [
            "L_FHO",
            "T0287",
            "L_FOP"
          ]
        },
        {
          "id": "T0325",
          "relation": 430,
          "rule": "sumlo",
          "triangle": "AGH",
          "side": "lo",
          "value": "26279/200000",
          "sources": [
            "L_ACG",
            "L_FGH",
            "T0288",
            "L_CGH",
            "T0003"
          ]
        },
        {
          "id": "T0332",
          "relation": 554,
          "rule": "sumlo",
          "triangle": "GHP",
          "side": "lo",
          "value": "102693/1000000",
          "sources": [
            "L_CGH",
            "T0316",
            "L_CHP",
            "L_FGH",
            "U_CFH"
          ]
        },
        {
          "id": "T0336",
          "relation": 637,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "47509/500000",
          "sources": [
            "T0316",
            "L_GOP",
            "L_FOP",
            "T0332",
            "T0313"
          ]
        },
        {
          "id": "T0339",
          "relation": 1827,
          "rule": "balance_lo",
          "triangle": "BGH",
          "side": "lo",
          "value": "2897/20000",
          "sources": [
            "L_ABC",
            "L_FGH",
            "L_ACG",
            "T0060",
            "T0303",
            "L_BFG",
            "U_ACF"
          ]
        },
        {
          "id": "T0351",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "63479/200000",
          "sources": [
            "L_ACG",
            "L_CGH",
            "T0325"
          ]
        },
        {
          "id": "T0352",
          "relation": 5,
          "rule": "sum",
          "triangle": "BCH",
          "side": "lo",
          "value": "6617/20000",
          "sources": [
            "L_BCG",
            "L_CGH",
            "T0339"
          ]
        },
        {
          "id": "T0360",
          "relation": 16,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "75043/200000",
          "sources": [
            "U_FGH",
            "T0316",
            "T0332"
          ]
        },
        {
          "id": "T0363",
          "relation": 17,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "140509/500000",
          "sources": [
            "L_FHO",
            "T0336",
            "L_FOP"
          ]
        },
        {
          "id": "T0375",
          "relation": 554,
          "rule": "sumlo",
          "triangle": "GHP",
          "side": "lo",
          "value": "102709/1000000",
          "sources": [
            "L_CGH",
            "T0363",
            "L_CHP",
            "L_FGH",
            "U_CFH"
          ]
        },
        {
          "id": "T0379",
          "relation": 637,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "95109/1000000",
          "sources": [
            "T0363",
            "L_GOP",
            "L_FOP",
            "T0375",
            "T0360"
          ]
        },
        {
          "id": "T0398",
          "relation": 16,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "46881/125000",
          "sources": [
            "U_FGH",
            "T0363",
            "T0375"
          ]
        },
        {
          "id": "T0401",
          "relation": 17,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "281109/1000000",
          "sources": [
            "L_FHO",
            "T0379",
            "L_FOP"
          ]
        },
        {
          "id": "T0411",
          "relation": 554,
          "rule": "sumlo",
          "triangle": "GHP",
          "side": "lo",
          "value": "102719/1000000",
          "sources": [
            "L_CGH",
            "T0401",
            "L_CHP",
            "L_FGH",
            "U_CFH"
          ]
        },
        {
          "id": "T0415",
          "relation": 637,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "95177/1000000",
          "sources": [
            "T0401",
            "L_GOP",
            "L_FOP",
            "T0411",
            "T0398"
          ]
        },
        {
          "id": "T0434",
          "relation": 16,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "374947/1000000",
          "sources": [
            "U_FGH",
            "T0401",
            "T0411"
          ]
        },
        {
          "id": "T0437",
          "relation": 17,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "281177/1000000",
          "sources": [
            "L_FHO",
            "T0415",
            "L_FOP"
          ]
        },
        {
          "id": "T0447",
          "relation": 554,
          "rule": "sumlo",
          "triangle": "GHP",
          "side": "lo",
          "value": "51363/500000",
          "sources": [
            "L_CGH",
            "T0437",
            "L_CHP",
            "L_FGH",
            "U_CFH"
          ]
        },
        {
          "id": "T0451",
          "relation": 637,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "95221/1000000",
          "sources": [
            "T0437",
            "L_GOP",
            "L_FOP",
            "T0447",
            "T0434"
          ]
        },
        {
          "id": "T0470",
          "relation": 16,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "46859/125000",
          "sources": [
            "U_FGH",
            "T0437",
            "T0447"
          ]
        },
        {
          "id": "T0473",
          "relation": 17,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "281221/1000000",
          "sources": [
            "L_FHO",
            "T0451",
            "L_FOP"
          ]
        },
        {
          "id": "T0483",
          "relation": 554,
          "rule": "sumlo",
          "triangle": "GHP",
          "side": "lo",
          "value": "102731/1000000",
          "sources": [
            "L_CGH",
            "T0473",
            "L_CHP",
            "L_FGH",
            "U_CFH"
          ]
        },
        {
          "id": "T0487",
          "relation": 637,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "23813/250000",
          "sources": [
            "T0473",
            "L_GOP",
            "L_FOP",
            "T0483",
            "T0470"
          ]
        },
        {
          "id": "T0506",
          "relation": 16,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "374823/1000000",
          "sources": [
            "U_FGH",
            "T0473",
            "T0483"
          ]
        },
        {
          "id": "T0509",
          "relation": 17,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "70313/250000",
          "sources": [
            "L_FHO",
            "T0487",
            "L_FOP"
          ]
        },
        {
          "id": "T0519",
          "relation": 554,
          "rule": "sumlo",
          "triangle": "GHP",
          "side": "lo",
          "value": "51367/500000",
          "sources": [
            "L_CGH",
            "T0509",
            "L_CHP",
            "L_FGH",
            "U_CFH"
          ]
        },
        {
          "id": "T0523",
          "relation": 637,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "95273/1000000",
          "sources": [
            "T0509",
            "L_GOP",
            "L_FOP",
            "T0519",
            "T0506"
          ]
        },
        {
          "id": "T0540",
          "relation": 16,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "374789/1000000",
          "sources": [
            "U_FGH",
            "T0509",
            "T0519"
          ]
        },
        {
          "id": "T0543",
          "relation": 17,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "281273/1000000",
          "sources": [
            "L_FHO",
            "T0523",
            "L_FOP"
          ]
        },
        {
          "id": "T0553",
          "relation": 554,
          "rule": "sumlo",
          "triangle": "GHP",
          "side": "lo",
          "value": "6421/62500",
          "sources": [
            "L_CGH",
            "T0543",
            "L_CHP",
            "L_FGH",
            "U_CFH"
          ]
        },
        {
          "id": "T0557",
          "relation": 637,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "95287/1000000",
          "sources": [
            "T0543",
            "L_GOP",
            "L_FOP",
            "T0553",
            "T0540"
          ]
        },
        {
          "id": "T0576",
          "relation": 16,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "187383/500000",
          "sources": [
            "U_FGH",
            "T0543",
            "T0553"
          ]
        },
        {
          "id": "T0579",
          "relation": 17,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "281287/1000000",
          "sources": [
            "L_FHO",
            "T0557",
            "L_FOP"
          ]
        },
        {
          "id": "T0589",
          "relation": 554,
          "rule": "sumlo",
          "triangle": "GHP",
          "side": "lo",
          "value": "51369/500000",
          "sources": [
            "L_CGH",
            "T0579",
            "L_CHP",
            "L_FGH",
            "U_CFH"
          ]
        },
        {
          "id": "T0593",
          "relation": 637,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "95297/1000000",
          "sources": [
            "T0579",
            "L_GOP",
            "L_FOP",
            "T0589",
            "T0576"
          ]
        },
        {
          "id": "T0609",
          "relation": 16,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "1499/4000",
          "sources": [
            "U_FGH",
            "T0579",
            "T0589"
          ]
        },
        {
          "id": "T0612",
          "relation": 17,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "281297/1000000",
          "sources": [
            "L_FHO",
            "T0593",
            "L_FOP"
          ]
        },
        {
          "id": "T0615",
          "relation": 18,
          "rule": "sum",
          "triangle": "GHO",
          "side": "lo",
          "value": "58207/200000",
          "sources": [
            "T0589",
            "L_GOP",
            "T0593"
          ]
        },
        {
          "id": "T0621",
          "relation": 554,
          "rule": "sumlo",
          "triangle": "GHP",
          "side": "lo",
          "value": "102739/1000000",
          "sources": [
            "L_CGH",
            "T0612",
            "L_CHP",
            "L_FGH",
            "U_CFH"
          ]
        },
        {
          "id": "T0625",
          "relation": 637,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "11913/125000",
          "sources": [
            "T0612",
            "L_GOP",
            "L_FOP",
            "T0621",
            "T0609"
          ]
        },
        {
          "id": "T0634",
          "relation": 3536,
          "rule": "linear",
          "triangle": "FGP",
          "side": "lo",
          "value": "16117/100000",
          "sources": [
            "T0621",
            "L_GOP"
          ]
        },
        {
          "id": "T0640",
          "relation": 15,
          "rule": "sub",
          "triangle": "FGO",
          "side": "hi",
          "value": "18737/50000",
          "sources": [
            "U_FGH",
            "L_FHO",
            "T0615"
          ]
        },
        {
          "id": "T0644",
          "relation": 17,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "35163/125000",
          "sources": [
            "L_FHO",
            "T0625",
            "L_FOP"
          ]
        },
        {
          "id": "T0647",
          "relation": 18,
          "rule": "sum",
          "triangle": "GHO",
          "side": "lo",
          "value": "291043/1000000",
          "sources": [
            "T0621",
            "L_GOP",
            "T0625"
          ]
        },
        {
          "id": "T0656",
          "relation": 598,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "23827/250000",
          "sources": [
            "L_FHO",
            "L_GOP",
            "L_FOP",
            "T0647",
            "T0640"
          ]
        },
        {
          "id": "T0671",
          "relation": 16,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "93683/250000",
          "sources": [
            "U_FGH",
            "T0644",
            "T0621"
          ]
        },
        {
          "id": "T0673",
          "relation": 17,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "70327/250000",
          "sources": [
            "L_FHO",
            "T0656",
            "L_FOP"
          ]
        },
        {
          "id": "T0675",
          "relation": 18,
          "rule": "sum",
          "triangle": "GHO",
          "side": "lo",
          "value": "291047/1000000",
          "sources": [
            "T0621",
            "L_GOP",
            "T0656"
          ]
        },
        {
          "id": "T0680",
          "relation": 554,
          "rule": "sumlo",
          "triangle": "GHP",
          "side": "lo",
          "value": "5137/50000",
          "sources": [
            "L_CGH",
            "T0673",
            "L_CHP",
            "L_FGH",
            "U_CFH"
          ]
        },
        {
          "id": "T0683",
          "relation": 637,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "5957/62500",
          "sources": [
            "T0673",
            "L_GOP",
            "L_FOP",
            "T0680",
            "T0671"
          ]
        },
        {
          "id": "T0692",
          "relation": 15,
          "rule": "sub",
          "triangle": "FGO",
          "side": "hi",
          "value": "46841/125000",
          "sources": [
            "U_FGH",
            "L_FHO",
            "T0675"
          ]
        },
        {
          "id": "T0694",
          "relation": 16,
          "rule": "sub",
          "triangle": "FHP",
          "side": "hi",
          "value": "98973/200000",
          "sources": [
            "U_FGH",
            "T0634",
            "T0680"
          ]
        },
        {
          "id": "T0696",
          "relation": 17,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "8791/31250",
          "sources": [
            "L_FHO",
            "T0683",
            "L_FOP"
          ]
        },
        {
          "id": "T0699",
          "relation": 18,
          "rule": "sum",
          "triangle": "GHO",
          "side": "lo",
          "value": "72763/250000",
          "sources": [
            "T0680",
            "L_GOP",
            "T0683"
          ]
        },
        {
          "id": "T0701",
          "relation": 419,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "10031/62500",
          "sources": [
            "L_FGH",
            "L_FOP",
            "T0634",
            "L_FHO",
            "T0694"
          ]
        },
        {
          "id": "T0708",
          "relation": 598,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "47657/500000",
          "sources": [
            "L_FHO",
            "L_GOP",
            "L_FOP",
            "T0699",
            "T0692"
          ]
        },
        {
          "id": "T0720",
          "relation": 15,
          "rule": "sub",
          "triangle": "GHO",
          "side": "hi",
          "value": "505279/1000000",
          "sources": [
            "U_FGH",
            "T0701",
            "L_FHO"
          ]
        },
        {
          "id": "T0721",
          "relation": 16,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "374723/1000000",
          "sources": [
            "U_FGH",
            "T0696",
            "T0680"
          ]
        },
        {
          "id": "T0723",
          "relation": 17,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "140657/500000",
          "sources": [
            "L_FHO",
            "T0708",
            "L_FOP"
          ]
        },
        {
          "id": "T0725",
          "relation": 18,
          "rule": "sum",
          "triangle": "GHO",
          "side": "lo",
          "value": "145527/500000",
          "sources": [
            "T0680",
            "L_GOP",
            "T0708"
          ]
        },
        {
          "id": "T0729",
          "relation": 554,
          "rule": "sumlo",
          "triangle": "GHP",
          "side": "lo",
          "value": "102741/1000000",
          "sources": [
            "L_CGH",
            "T0723",
            "L_CHP",
            "L_FGH",
            "U_CFH"
          ]
        },
        {
          "id": "T0732",
          "relation": 637,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "23829/250000",
          "sources": [
            "T0723",
            "L_GOP",
            "L_FOP",
            "T0729",
            "T0721"
          ]
        },
        {
          "id": "T0733",
          "relation": 2073,
          "rule": "balance_lo",
          "triangle": "COP",
          "side": "lo",
          "value": "113243/1000000",
          "sources": [
            "T0296",
            "T0732",
            "L_CFH",
            "L_GOP",
            "L_CGH",
            "L_FOP",
            "U_FGH"
          ]
        },
        {
          "id": "T0742",
          "relation": 15,
          "rule": "sub",
          "triangle": "FGO",
          "side": "hi",
          "value": "374721/1000000",
          "sources": [
            "U_FGH",
            "L_FHO",
            "T0725"
          ]
        },
        {
          "id": "T0744",
          "relation": 16,
          "rule": "sub",
          "triangle": "FHP",
          "side": "hi",
          "value": "30929/62500",
          "sources": [
            "U_FGH",
            "T0634",
            "T0729"
          ]
        },
        {
          "id": "T0746",
          "relation": 17,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "70329/250000",
          "sources": [
            "L_FHO",
            "T0732",
            "L_FOP"
          ]
        },
        {
          "id": "T0749",
          "relation": 18,
          "rule": "sum",
          "triangle": "GHO",
          "side": "lo",
          "value": "291057/1000000",
          "sources": [
            "T0729",
            "L_GOP",
            "T0732"
          ]
        },
        {
          "id": "T0756",
          "relation": 598,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "95317/1000000",
          "sources": [
            "L_FHO",
            "L_GOP",
            "L_FOP",
            "T0749",
            "T0742"
          ]
        },
        {
          "id": "T0757",
          "relation": 2109,
          "rule": "balance_lo",
          "triangle": "CFP",
          "side": "lo",
          "value": "104421/500000",
          "sources": [
            "L_CFH",
            "L_GOP",
            "L_CGO",
            "T0746",
            "L_CHP",
            "T0701",
            "T0720"
          ]
        },
        {
          "id": "T0765",
          "relation": 15,
          "rule": "sub",
          "triangle": "FGO",
          "side": "hi",
          "value": "187359/500000",
          "sources": [
            "U_FGH",
            "L_FHO",
            "T0749"
          ]
        },
        {
          "id": "T0770",
          "relation": 18,
          "rule": "sum",
          "triangle": "GHO",
          "side": "lo",
          "value": "145529/500000",
          "sources": [
            "T0729",
            "L_GOP",
            "T0756"
          ]
        },
        {
          "id": "T0772",
          "relation": 598,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "47659/500000",
          "sources": [
            "L_FHO",
            "L_GOP",
            "L_FOP",
            "T0770",
            "T0765"
          ]
        },
        {
          "id": "T0776",
          "relation": 13,
          "rule": "sum",
          "triangle": "CHO",
          "side": "lo",
          "value": "301561/1000000",
          "sources": [
            "L_CHP",
            "T0733",
            "T0772"
          ]
        },
        {
          "id": "T0780",
          "relation": 17,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "140659/500000",
          "sources": [
            "L_FHO",
            "T0772",
            "L_FOP"
          ]
        },
        {
          "id": "T0781",
          "relation": 17,
          "rule": "sub",
          "triangle": "FHO",
          "side": "hi",
          "value": "153273/500000",
          "sources": [
            "T0744",
            "T0772",
            "L_FOP"
          ]
        },
        {
          "id": "T0782",
          "relation": 18,
          "rule": "sum",
          "triangle": "GHO",
          "side": "lo",
          "value": "291059/1000000",
          "sources": [
            "T0729",
            "L_GOP",
            "T0772"
          ]
        },
        {
          "id": "T0788",
          "relation": 11,
          "rule": "sub",
          "triangle": "CFO",
          "side": "hi",
          "value": "487241/1000000",
          "sources": [
            "U_CFH",
            "L_FHO",
            "T0776"
          ]
        }
      ],
      "physical": {
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
              "-63479/200000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACH",
            "side": "lo",
            "reference": "T0351",
            "value": "63479/200000"
          }
        },
        "34": {
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
              "-80183/250000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCF",
            "side": "lo",
            "reference": "T0304",
            "value": "80183/250000"
          }
        },
        "36": {
          "name": "AREA_LO_BCH",
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
                1,
                7
              ],
              "-1"
            ],
            [
              [],
              "-6617/20000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCH",
            "side": "lo",
            "reference": "T0352",
            "value": "6617/20000"
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
        "70": {
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
        "80": {
          "name": "AREA_LO_FGH",
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
                6
              ],
              "1"
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
                5,
                8
              ],
              "-1"
            ],
            [
              [],
              "-13857/20000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FGH",
            "side": "lo",
            "reference": "L_FGH",
            "value": "13857/20000"
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
        "97": {
          "name": "AREA_HI_FHO",
          "terms": [
            [
              [],
              "153273/500000"
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
                7,
                9
              ],
              "1"
            ],
            [
              [
                5,
                7
              ],
              "-1"
            ],
            [
              [
                9
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FHO",
            "side": "hi",
            "reference": "T0781",
            "value": "153273/500000"
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
              "-301561/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CHO",
            "side": "lo",
            "reference": "T0776",
            "value": "301561/1000000"
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
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCP",
            "side": "lo",
            "reference": "L_BCP",
            "value": "279/1000"
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
              "-140659/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FHP",
            "side": "lo",
            "reference": "T0780",
            "value": "140659/500000"
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
              "-113243/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "COP",
            "side": "lo",
            "reference": "T0733",
            "value": "113243/1000000"
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
        "166": {
          "name": "AREA_LO_GHO",
          "terms": [
            [
              [
                6,
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
                6,
                7
              ],
              "-1"
            ],
            [
              [
                8,
                9
              ],
              "-1"
            ],
            [
              [],
              "-291059/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "GHO",
            "side": "lo",
            "reference": "T0782",
            "value": "291059/1000000"
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
              "-104421/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "lo",
            "reference": "T0757",
            "value": "104421/500000"
          }
        },
        "192": {
          "name": "AREA_LO_BFG",
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
                1,
                8
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
            "triangle": "BFG",
            "side": "lo",
            "reference": "L_BFG",
            "value": "93/1000"
          }
        },
        "194": {
          "name": "AREA_LO_FGO",
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
                6
              ],
              "1"
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
                8,
                9
              ],
              "1"
            ],
            [
              [
                5,
                8
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
              "-10031/62500"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FGO",
            "side": "lo",
            "reference": "T0701",
            "value": "10031/62500"
          }
        },
        "200": {
          "name": "AREA_LO_GOP",
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
                8,
                9
              ],
              "-1"
            ],
            [
              [
                6,
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
                6,
                10
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
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "GOP",
            "side": "lo",
            "reference": "L_GOP",
            "value": "93/1000"
          }
        },
        "204": {
          "name": "AREA_LO_FGP",
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
                6
              ],
              "1"
            ],
            [
              [
                5,
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
                5,
                8
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
              [],
              "-16117/100000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FGP",
            "side": "lo",
            "reference": "T0634",
            "value": "16117/100000"
          }
        },
        "219": {
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
        "228": {
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
        "230": {
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
        "1219": {
          "name": "SUPPORT_XCAP_1178",
          "terms": [
            [
              [
                5,
                8
              ],
              "-535759/1000000"
            ],
            [
              [
                2,
                8
              ],
              "-487241/1000000"
            ],
            [
              [
                6
              ],
              "535759/1000000"
            ],
            [
              [
                2
              ],
              "-535759/1000000"
            ],
            [
              [
                2,
                10
              ],
              "1023/1000"
            ],
            [
              [
                6,
                10
              ],
              "-1023/1000"
            ],
            [
              [
                8,
                9
              ],
              "1023/1000"
            ]
          ],
          "why": {
            "kind": "support_cap",
            "relation": 1178,
            "which": "X",
            "value": "487241/1000000",
            "reference": "T0788"
          }
        },
        "1993": {
          "name": "LINEAR_3097",
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
            "index": 3097
          }
        },
        "2063": {
          "name": "LINEAR_3167",
          "terms": [
            [
              [
                2,
                7
              ],
              "-279/1000"
            ],
            [
              [
                0,
                2
              ],
              "279/1000"
            ],
            [
              [
                5,
                7
              ],
              "-93/1000"
            ],
            [
              [
                0,
                5
              ],
              "93/1000"
            ],
            [
              [
                7,
                11
              ],
              "440901/500000"
            ],
            [
              [
                0,
                11
              ],
              "-440901/500000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3167
          }
        }
      },
      "coordinate": {
        "low": [
          "139/1000",
          "108013/1000000",
          "201297/250000",
          "120187/1000000",
          "59757/100000",
          "201297/250000",
          "156639/500000",
          "69483/100000",
          "69759/500000",
          "339679/1000000",
          "281197/500000",
          "339679/1000000",
          "92231/250000"
        ],
        "high": [
          "68063/200000",
          "431891/1000000",
          "440901/500000",
          "429617/1000000",
          "907/1000",
          "440901/500000",
          "26631/40000",
          "1/1",
          "5357/25000",
          "334403/500000",
          "178907/200000",
          "548579/1000000",
          "340487/500000"
        ],
        "steps": [
          {
            "factor": 16,
            "target": "a",
            "old": [
              "139/1000",
              "683603/1000000"
            ],
            "lines": [
              [
                "-13857/20000",
                "1080301427/10000000000"
              ],
              [
                "-440901/500000",
                "56012706911/250000000000"
              ],
              [
                "-13857/20000",
                "75091/200000"
              ],
              [
                "-440901/500000",
                "564407/1000000"
              ]
            ],
            "raw": [
              "139/1000",
              "564407/881802"
            ],
            "new": [
              "139/1000",
              "640061/1000000"
            ]
          },
          {
            "factor": 34,
            "target": "b",
            "old": [
              "108013/1000000",
              "113121/200000"
            ],
            "lines": [
              [
                "-1/1",
                "186059/500000"
              ],
              [
                "-1/1",
                "56107/100000"
              ]
            ],
            "raw": [
              "108013/1000000",
              "56107/100000"
            ],
            "new": [
              "108013/1000000",
              "56107/100000"
            ]
          },
          {
            "factor": 36,
            "target": "b",
            "old": [
              "108013/1000000",
              "56107/100000"
            ],
            "lines": [
              [
                "-307011/500000",
                "945751427/10000000000"
              ],
              [
                "-307011/500000",
                "52648956911/250000000000"
              ],
              [
                "-1/1",
                "181/500"
              ],
              [
                "-1/1",
                "68869/125000"
              ]
            ],
            "raw": [
              "108013/1000000",
              "68869/125000"
            ],
            "new": [
              "108013/1000000",
              "68869/125000"
            ]
          },
          {
            "factor": 80,
            "target": "f",
            "old": [
              "617/1000",
              "440901/500000"
            ],
            "lines": [
              [
                "59313/125000",
                "-11757086691/20000000000"
              ],
              [
                "59313/125000",
                "-8717509941/20000000000"
              ],
              [
                "430241/500000",
                "-13857/20000"
              ],
              [
                "1119/40000",
                "-11757086691/20000000000"
              ],
              [
                "1119/40000",
                "-8717509941/20000000000"
              ],
              [
                "413953/1000000",
                "-13857/20000"
              ]
            ],
            "raw": [
              "346425/430241",
              "440901/500000"
            ],
            "new": [
              "201297/250000",
              "440901/500000"
            ]
          },
          {
            "factor": 80,
            "target": "h",
            "old": [
              "307011/500000",
              "1/1"
            ],
            "lines": [
              [
                "533163/1000000",
                "-66645402423/125000000000"
              ],
              [
                "609777/1000000",
                "-135963062859/250000000000"
              ],
              [
                "139413/1000000",
                "-17426652423/125000000000"
              ],
              [
                "216027/1000000",
                "-37525562859/250000000000"
              ],
              [
                "533163/1000000",
                "-223175752959/250000000000"
              ],
              [
                "609777/1000000",
                "-468801208347/500000000000"
              ],
              [
                "139413/1000000",
                "-124738252959/250000000000"
              ],
              [
                "216027/1000000",
                "-271926208347/500000000000"
              ]
            ],
            "raw": [
              "12508520953/18002250000",
              "1/1"
            ],
            "new": [
              "69483/100000",
              "1/1"
            ]
          },
          {
            "factor": 80,
            "target": "z",
            "old": [
              "69759/500000",
              "586047/1000000"
            ],
            "lines": [
              [
                "-201297/250000",
                "-5036735271/100000000000"
              ],
              [
                "-440901/500000",
                "286635291/100000000000"
              ],
              [
                "-201297/250000",
                "6979333479/100000000000"
              ],
              [
                "-440901/500000",
                "12302704041/100000000000"
              ],
              [
                "-201297/250000",
                "56169/500000"
              ],
              [
                "-440901/500000",
                "23619/125000"
              ]
            ],
            "raw": [
              "69759/500000",
              "31492/146967"
            ],
            "new": [
              "69759/500000",
              "5357/25000"
            ]
          },
          {
            "factor": 96,
            "target": "y",
            "old": [
              "76231/200000",
              "907/1000"
            ],
            "lines": [
              [
                "-201297/250000",
                "26769204923/50000000000"
              ],
              [
                "-440901/500000",
                "7357722551/12500000000"
              ],
              [
                "-201297/250000",
                "178047/250000"
              ],
              [
                "-440901/500000",
                "394401/500000"
              ],
              [
                "-201297/250000",
                "17132624109/25000000000"
              ],
              [
                "-440901/500000",
                "36926933499/50000000000"
              ]
            ],
            "raw": [
              "76231/200000",
              "131467/146967"
            ],
            "new": [
              "76231/200000",
              "178907/200000"
            ]
          },
          {
            "factor": 97,
            "target": "y",
            "old": [
              "76231/200000",
              "178907/200000"
            ],
            "lines": [
              [
                "201297/250000",
                "-16091904923/50000000000"
              ],
              [
                "440901/500000",
                "-4688397551/12500000000"
              ],
              [
                "201297/250000",
                "-249321/500000"
              ],
              [
                "440901/500000",
                "-71907/125000"
              ],
              [
                "201297/250000",
                "-11793974109/25000000000"
              ],
              [
                "440901/500000",
                "-26249633499/50000000000"
              ]
            ],
            "raw": [
              "16091904923/40259400000",
              "178907/200000"
            ],
            "new": [
              "79941/200000",
              "178907/200000"
            ]
          },
          {
            "factor": 100,
            "target": "y",
            "old": [
              "79941/200000",
              "178907/200000"
            ],
            "lines": [
              [
                "13857/20000",
                "-3912895537/6250000000"
              ],
              [
                "440901/500000",
                "-9466910051/12500000000"
              ],
              [
                "13857/20000",
                "-153717/200000"
              ],
              [
                "440901/500000",
                "-957537/1000000"
              ],
              [
                "13857/20000",
                "-14235707591/50000000000"
              ],
              [
                "440901/500000",
                "-20800183499/50000000000"
              ],
              [
                "13857/20000",
                "-55463/200000"
              ],
              [
                "440901/500000",
                "-466267/1000000"
              ]
            ],
            "raw": [
              "55463/138570",
              "178907/200000"
            ],
            "new": [
              "100063/250000",
              "178907/200000"
            ]
          },
          {
            "factor": 106,
            "target": "b",
            "old": [
              "108013/1000000",
              "68869/125000"
            ],
            "lines": [
              [
                "-8559/25000",
                "-20897937/500000000"
              ],
              [
                "-8559/25000",
                "286171659/12500000000"
              ],
              [
                "-683603/1000000",
                "3892686771/20000000000"
              ],
              [
                "-683603/1000000",
                "161901246303/500000000000"
              ]
            ],
            "raw": [
              "108013/1000000",
              "161901246303/341801500000"
            ],
            "new": [
              "108013/1000000",
              "473671/1000000"
            ]
          },
          {
            "factor": 106,
            "target": "v",
            "old": [
              "8559/25000",
              "683603/1000000"
            ],
            "lines": [
              [
                "584837/1000000",
                "-279/1000"
              ],
              [
                "219179/1000000",
                "-279/1000"
              ],
              [
                "773789/1000000",
                "-279/1000"
              ],
              [
                "408131/1000000",
                "-279/1000"
              ]
            ],
            "raw": [
              "279000/773789",
              "683603/1000000"
            ],
            "new": [
              "360563/1000000",
              "683603/1000000"
            ]
          },
          {
            "factor": 114,
            "target": "v",
            "old": [
              "360563/1000000",
              "683603/1000000"
            ],
            "lines": [
              [
                "-201297/250000",
                "35375267833/100000000000"
              ],
              [
                "-440901/500000",
                "8139727679/20000000000"
              ],
              [
                "-201297/250000",
                "52387/100000"
              ],
              [
                "-440901/500000",
                "150121/250000"
              ],
              [
                "-201297/250000",
                "12424674109/25000000000"
              ],
              [
                "-440901/500000",
                "27511033499/50000000000"
              ]
            ],
            "raw": [
              "360563/1000000",
              "300242/440901"
            ],
            "new": [
              "360563/1000000",
              "340487/500000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "247737/1000000",
              "89637/125000"
            ],
            "lines": [
              [
                "-100063/250000",
                "-539997039/125000000000"
              ],
              [
                "-100063/250000",
                "99354363/31250000000"
              ],
              [
                "-100063/250000",
                "86406904349/500000000000"
              ],
              [
                "-100063/250000",
                "90156562313/500000000000"
              ],
              [
                "-178907/200000",
                "169072000119/500000000000"
              ],
              [
                "-178907/200000",
                "219519538791/500000000000"
              ],
              [
                "-178907/200000",
                "16102430789/31250000000"
              ],
              [
                "-178907/200000",
                "4813850489/7812500000"
              ],
              [
                "-100063/250000",
                "-19244950397/125000000000"
              ],
              [
                "-100063/250000",
                "-5175064663/25000000000"
              ],
              [
                "-100063/250000",
                "45145623451/250000000000"
              ],
              [
                "-100063/250000",
                "6376975523/50000000000"
              ],
              [
                "-178907/200000",
                "94252186687/500000000000"
              ],
              [
                "-178907/200000",
                "114428575723/500000000000"
              ],
              [
                "-178907/200000",
                "261523235177/500000000000"
              ],
              [
                "-178907/200000",
                "281699624213/500000000000"
              ]
            ],
            "raw": [
              "247737/1000000",
              "9627700978/13977109375"
            ],
            "new": [
              "247737/1000000",
              "34441/50000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "112913/500000",
              "89637/125000"
            ],
            "lines": [
              [
                "-639437/1000000",
                "10942109601/125000000000"
              ],
              [
                "-639437/1000000",
                "45288804927/500000000000"
              ],
              [
                "-639437/1000000",
                "363075429441/1000000000000"
              ],
              [
                "-639437/1000000",
                "403985160249/1000000000000"
              ],
              [
                "-639437/1000000",
                "88018880973/250000000000"
              ],
              [
                "-639437/1000000",
                "177558128469/500000000000"
              ],
              [
                "-639437/1000000",
                "102398562009/250000000000"
              ],
              [
                "-639437/1000000",
                "112625994711/250000000000"
              ],
              [
                "-159513/500000",
                "-8522710773/50000000000"
              ],
              [
                "-159513/500000",
                "-11997590673/62500000000"
              ],
              [
                "-159513/500000",
                "105084337173/1000000000000"
              ],
              [
                "-159513/500000",
                "121446099627/1000000000000"
              ],
              [
                "-159513/500000",
                "11760553953/125000000000"
              ],
              [
                "-159513/500000",
                "18144299079/250000000000"
              ],
              [
                "-159513/500000",
                "18950394471/125000000000"
              ],
              [
                "-159513/500000",
                "83982459111/500000000000"
              ]
            ],
            "raw": [
              "112913/500000",
              "112625994711/159859250000"
            ],
            "new": [
              "112913/500000",
              "704533/1000000"
            ]
          },
          {
            "factor": 166,
            "target": "x",
            "old": [
              "112913/500000",
              "704533/1000000"
            ],
            "lines": [
              [
                "34707/62500",
                "-7423831609/20000000000"
              ],
              [
                "34707/62500",
                "-9743633359/20000000000"
              ],
              [
                "430241/500000",
                "-4542054497/10000000000"
              ],
              [
                "430241/500000",
                "-6903562247/10000000000"
              ],
              [
                "9611/20000",
                "-7423831609/20000000000"
              ],
              [
                "9611/20000",
                "-9743633359/20000000000"
              ],
              [
                "19643/25000",
                "-4542054497/10000000000"
              ],
              [
                "19643/25000",
                "-6903562247/10000000000"
              ],
              [
                "34707/62500",
                "-1893873979/8000000000"
              ],
              [
                "34707/62500",
                "-1264803229/8000000000"
              ],
              [
                "430241/500000",
                "-2557984933/8000000000"
              ],
              [
                "430241/500000",
                "-2890199683/8000000000"
              ],
              [
                "9611/20000",
                "-1893873979/8000000000"
              ],
              [
                "9611/20000",
                "-1264803229/8000000000"
              ],
              [
                "19643/25000",
                "-2557984933/8000000000"
              ],
              [
                "19643/25000",
                "-2890199683/8000000000"
              ]
            ],
            "raw": [
              "1264803229/4442496000",
              "704533/1000000"
            ],
            "new": [
              "56941/200000",
              "704533/1000000"
            ]
          },
          {
            "factor": 176,
            "target": "u",
            "old": [
              "247737/1000000",
              "34441/50000"
            ],
            "lines": [
              [
                "-1/1",
                "262256463147/500000000000"
              ],
              [
                "-1/1",
                "322667913159/500000000000"
              ],
              [
                "-1/1",
                "69017137497/125000000000"
              ],
              [
                "-1/1",
                "2103/3125"
              ],
              [
                "-1/1",
                "140126814303/250000000000"
              ],
              [
                "-1/1",
                "155196964491/250000000000"
              ],
              [
                "-1/1",
                "38292462453/62500000000"
              ]
            ],
            "raw": [
              "247737/1000000",
              "2103/3125"
            ],
            "new": [
              "247737/1000000",
              "2103/3125"
            ]
          },
          {
            "factor": 192,
            "target": "g",
            "old": [
              "10881/40000",
              "26631/40000"
            ],
            "lines": [
              [
                "1/1",
                "-5965629233/20000000000"
              ],
              [
                "1/1",
                "-306461794403/500000000000"
              ],
              [
                "1/1",
                "-154485246851/500000000000"
              ],
              [
                "1/1",
                "-311806310429/500000000000"
              ],
              [
                "1/1",
                "-350403659/1000000000"
              ],
              [
                "1/1",
                "-15942711569/25000000000"
              ],
              [
                "1/1",
                "-9170512673/25000000000"
              ],
              [
                "1/1",
                "-16353132767/25000000000"
              ]
            ],
            "raw": [
              "5965629233/20000000000",
              "26631/40000"
            ],
            "new": [
              "298281/1000000",
              "26631/40000"
            ]
          },
          {
            "factor": 194,
            "target": "x",
            "old": [
              "56941/200000",
              "704533/1000000"
            ],
            "lines": [
              [
                "-430241/500000",
                "11416866059/50000000000"
              ],
              [
                "-430241/500000",
                "15519574741/62500000000"
              ],
              [
                "-430241/500000",
                "112185278173/250000000000"
              ],
              [
                "-430241/500000",
                "58589623421/125000000000"
              ],
              [
                "-19643/25000",
                "42034963981/250000000000"
              ],
              [
                "-19643/25000",
                "45596978683/250000000000"
              ],
              [
                "-19643/25000",
                "97135911859/250000000000"
              ],
              [
                "-19643/25000",
                "100697926561/250000000000"
              ],
              [
                "-430241/500000",
                "478892833861/1000000000000"
              ],
              [
                "-430241/500000",
                "536737706299/1000000000000"
              ],
              [
                "-430241/500000",
                "517650588571/1000000000000"
              ],
              [
                "-430241/500000",
                "575495461009/1000000000000"
              ],
              [
                "-19643/25000",
                "83739073721/200000000000"
              ],
              [
                "-19643/25000",
                "18832497007/40000000000"
              ],
              [
                "-19643/25000",
                "91490624663/200000000000"
              ],
              [
                "-19643/25000",
                "101914035977/200000000000"
              ]
            ],
            "raw": [
              "56941/200000",
              "82213637287/122926000000"
            ],
            "new": [
              "56941/200000",
              "334403/500000"
            ]
          },
          {
            "factor": 204,
            "target": "u",
            "old": [
              "247737/1000000",
              "2103/3125"
            ],
            "lines": [
              [
                "-430241/500000",
                "207544689257/1000000000000"
              ],
              [
                "-430241/500000",
                "224479830887/1000000000000"
              ],
              [
                "-430241/500000",
                "88506790027/200000000000"
              ],
              [
                "-430241/500000",
                "91893818353/200000000000"
              ],
              [
                "-19643/25000",
                "147347224001/1000000000000"
              ],
              [
                "-19643/25000",
                "158554549763/1000000000000"
              ],
              [
                "-19643/25000",
                "382336484879/1000000000000"
              ],
              [
                "-19643/25000",
                "393543810641/1000000000000"
              ],
              [
                "-430241/500000",
                "184981634017/500000000000"
              ],
              [
                "-430241/500000",
                "205723189009/500000000000"
              ],
              [
                "-430241/500000",
                "243601704439/500000000000"
              ],
              [
                "-430241/500000",
                "264343259431/500000000000"
              ],
              [
                "-19643/25000",
                "154882901389/500000000000"
              ],
              [
                "-19643/25000",
                "172760548447/500000000000"
              ],
              [
                "-19643/25000",
                "213502971811/500000000000"
              ],
              [
                "-19643/25000",
                "231380618869/500000000000"
              ]
            ],
            "raw": [
              "247737/1000000",
              "264343259431/430241000000"
            ],
            "new": [
              "247737/1000000",
              "76801/125000"
            ]
          },
          {
            "factor": 219,
            "target": "c",
            "old": [
              "13857/20000",
              "440901/500000"
            ],
            "lines": [
              [
                "1/1",
                "-201297/250000"
              ],
              [
                "1/1",
                "-440901/500000"
              ]
            ],
            "raw": [
              "201297/250000",
              "440901/500000"
            ],
            "new": [
              "201297/250000",
              "440901/500000"
            ]
          },
          {
            "factor": 228,
            "target": "a",
            "old": [
              "139/1000",
              "640061/1000000"
            ],
            "lines": [
              [
                "-25667277423/125000000000",
                "167959687182309/12500000000000000"
              ],
              [
                "-54006812859/250000000000",
                "521595877881897/25000000000000000"
              ],
              [
                "-25667277423/125000000000",
                "2417277423/125000000000"
              ],
              [
                "-54006812859/250000000000",
                "7506812859/250000000000"
              ],
              [
                "-1659598029/6250000000",
                "34539862349007/625000000000000"
              ],
              [
                "-3524406657/12500000000",
                "83338372748331/1250000000000000"
              ],
              [
                "-1659598029/6250000000",
                "497098029/6250000000"
              ],
              [
                "-3524406657/12500000000",
                "1199406657/12500000000"
              ]
            ],
            "raw": [
              "139/1000",
              "399802219/1174802219"
            ],
            "new": [
              "139/1000",
              "68063/200000"
            ]
          },
          {
            "factor": 230,
            "target": "b",
            "old": [
              "108013/1000000",
              "473671/1000000"
            ],
            "lines": [
              [
                "-69483/100000",
                "27980283/250000000"
              ],
              [
                "-69483/100000",
                "13700877711/50000000000"
              ],
              [
                "-69483/100000",
                "61285239/500000000"
              ],
              [
                "-69483/100000",
                "30009044763/100000000000"
              ],
              [
                "-1/1",
                "27980283/250000000"
              ],
              [
                "-1/1",
                "13700877711/50000000000"
              ],
              [
                "-1/1",
                "61285239/500000000"
              ],
              [
                "-1/1",
                "30009044763/100000000000"
              ]
            ],
            "raw": [
              "108013/1000000",
              "10003014921/23161000000"
            ],
            "new": [
              "108013/1000000",
              "431891/1000000"
            ]
          },
          {
            "factor": 1219,
            "target": "y",
            "old": [
              "100063/250000",
              "178907/200000"
            ],
            "lines": [
              [
                "518565861/1000000000",
                "-172933459896231/500000000000000"
              ],
              [
                "596941983/1000000000",
                "-98030423621127633/250000000000000000"
              ],
              [
                "518565861/1000000000",
                "-87898416228902367/250000000000000000"
              ],
              [
                "596941983/1000000000",
                "-198924219803829/500000000000000"
              ],
              [
                "142619499/1000000000",
                "-74489350923231/500000000000000"
              ],
              [
                "220995621/1000000000",
                "-48808369134627633/250000000000000000"
              ],
              [
                "142619499/1000000000",
                "-38676361742402367/250000000000000000"
              ],
              [
                "220995621/1000000000",
                "-100480110830829/500000000000000"
              ],
              [
                "518565861/1000000000",
                "-4820928173619/12500000000000"
              ],
              [
                "596941983/1000000000",
                "-5433998191411359/12500000000000000"
              ],
              [
                "518565861/1000000000",
                "-4930871598928641/12500000000000000"
              ],
              [
                "596941983/1000000000",
                "-5543941616721/12500000000000"
              ],
              [
                "142619499/1000000000",
                "-1179912724647/6250000000000"
              ],
              [
                "220995621/1000000000",
                "-2972895467086359/12500000000000000"
              ],
              [
                "142619499/1000000000",
                "-2469768874603641/12500000000000000"
              ],
              [
                "220995621/1000000000",
                "-770709723099/3125000000000"
              ],
              [
                "518565861/1000000000",
                "-72761342349537/250000000000000"
              ],
              [
                "596941983/1000000000",
                "-84325036022549133/250000000000000000"
              ],
              [
                "518565861/1000000000",
                "-74193028630323867/250000000000000000"
              ],
              [
                "596941983/1000000000",
                "-10719590287917/31250000000000"
              ],
              [
                "142619499/1000000000",
                "-23539287863037/250000000000000"
              ],
              [
                "220995621/1000000000",
                "-35102981536049133/250000000000000000"
              ],
              [
                "142619499/1000000000",
                "-24970974143823867/250000000000000000"
              ],
              [
                "220995621/1000000000",
                "-9133666954209/62500000000000"
              ],
              [
                "518565861/1000000000",
                "-7536901821927/25000000000000"
              ],
              [
                "596941983/1000000000",
                "-4381520928755859/12500000000000000"
              ],
              [
                "518565861/1000000000",
                "-3878394336273141/12500000000000000"
              ],
              [
                "596941983/1000000000",
                "-8982928708131/25000000000000"
              ],
              [
                "142619499/1000000000",
                "-2614696373277/25000000000000"
              ],
              [
                "220995621/1000000000",
                "-1920418204430859/12500000000000000"
              ],
              [
                "142619499/1000000000",
                "-1417291611948141/12500000000000000"
              ],
              [
                "220995621/1000000000",
                "-4060723259481/25000000000000"
              ]
            ],
            "raw": [
              "8084593594393/14404607250000",
              "178907/200000"
            ],
            "new": [
              "449/800",
              "178907/200000"
            ]
          },
          {
            "factor": 1993,
            "target": "x",
            "old": [
              "56941/200000",
              "334403/500000"
            ],
            "lines": [
              [
                "24506600283/50000000000",
                "-1040548277043/6250000000000"
              ],
              [
                "31261203603/100000000000",
                "-1327348190763/12500000000000"
              ],
              [
                "24506600283/50000000000",
                "-8522403488577/50000000000000"
              ],
              [
                "31261203603/100000000000",
                "-10871381079657/100000000000000"
              ],
              [
                "24506600283/50000000000",
                "-8918438033043/50000000000000"
              ],
              [
                "31261203603/100000000000",
                "-11376572186763/100000000000000"
              ],
              [
                "24506600283/50000000000",
                "-2279113826319/12500000000000"
              ],
              [
                "31261203603/100000000000",
                "-2907291935079/25000000000000"
              ],
              [
                "379615761/500000000",
                "-16118454681/62500000000"
              ],
              [
                "58171155237/100000000000",
                "-2469942572877/12500000000000"
              ],
              [
                "379615761/500000000",
                "-132014993859/500000000000"
              ],
              [
                "58171155237/100000000000",
                "-20229572874303/100000000000000"
              ],
              [
                "379615761/500000000",
                "-138149706681/500000000000"
              ],
              [
                "58171155237/100000000000",
                "-21169637456877/100000000000000"
              ],
              [
                "379615761/500000000",
                "-35304265773/125000000000"
              ],
              [
                "58171155237/100000000000",
                "-5409917437041/25000000000000"
              ]
            ],
            "raw": [
              "2080069/6123625",
              "334403/500000"
            ],
            "new": [
              "339679/1000000",
              "334403/500000"
            ]
          },
          {
            "factor": 2063,
            "target": "u",
            "old": [
              "247737/1000000",
              "76801/125000"
            ],
            "lines": [
              [
                "24506600283/50000000000",
                "-1040548277043/6250000000000"
              ],
              [
                "31261203603/100000000000",
                "-1327348190763/12500000000000"
              ],
              [
                "24506600283/50000000000",
                "-8918438033043/50000000000000"
              ],
              [
                "31261203603/100000000000",
                "-11376572186763/100000000000000"
              ],
              [
                "24506600283/50000000000",
                "-8522403488577/50000000000000"
              ],
              [
                "31261203603/100000000000",
                "-10871381079657/100000000000000"
              ],
              [
                "24506600283/50000000000",
                "-2279113826319/12500000000000"
              ],
              [
                "31261203603/100000000000",
                "-2907291935079/25000000000000"
              ],
              [
                "379615761/500000000",
                "-16118454681/62500000000"
              ],
              [
                "58171155237/100000000000",
                "-2469942572877/12500000000000"
              ],
              [
                "379615761/500000000",
                "-138149706681/500000000000"
              ],
              [
                "58171155237/100000000000",
                "-21169637456877/100000000000000"
              ],
              [
                "379615761/500000000",
                "-132014993859/500000000000"
              ],
              [
                "58171155237/100000000000",
                "-20229572874303/100000000000000"
              ],
              [
                "379615761/500000000",
                "-35304265773/125000000000"
              ],
              [
                "58171155237/100000000000",
                "-5409917437041/25000000000000"
              ]
            ],
            "raw": [
              "2080069/6123625",
              "76801/125000"
            ],
            "new": [
              "339679/1000000",
              "76801/125000"
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
                "-48703/250000",
                "-265009209/25000000000"
              ],
              [
                "-59099/500000",
                "-2150289597/50000000000"
              ],
              [
                "-48703/250000",
                "20923621/250000000"
              ],
              [
                "-59099/500000",
                "7102793/500000000"
              ]
            ],
            "raw": [
              "120187/1000000",
              "20923621/48703000"
            ],
            "new": [
              "120187/1000000",
              "429617/1000000"
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
                "48703/250000",
                "-29103467461/250000000000"
              ],
              [
                "59099/500000",
                "-53602931513/500000000000"
              ],
              [
                "48703/250000",
                "-44173636751/250000000000"
              ],
              [
                "59099/500000",
                "-71889935083/500000000000"
              ]
            ],
            "raw": [
              "29103467461/48703000000",
              "907/1000"
            ],
            "new": [
              "59757/100000",
              "907/1000"
            ]
          },
          {
            "factor": 70,
            "target": "g",
            "old": [
              "298281/1000000",
              "26631/40000"
            ],
            "lines": [
              [
                "139/1000",
                "-46472024633/500000000000"
              ],
              [
                "68063/200000",
                "-114688686361/1000000000000"
              ],
              [
                "139/1000",
                "-46388140231/500000000000"
              ],
              [
                "68063/200000",
                "-179722417127/1000000000000"
              ],
              [
                "139/1000",
                "-1060859767/12500000000"
              ],
              [
                "68063/200000",
                "-21322683691/200000000000"
              ],
              [
                "139/1000",
                "-756090569/12500000000"
              ],
              [
                "68063/200000",
                "-29486676437/200000000000"
              ]
            ],
            "raw": [
              "21322683691/68063000000",
              "26631/40000"
            ],
            "new": [
              "156639/500000",
              "26631/40000"
            ]
          },
          {
            "factor": 200,
            "target": "u",
            "old": [
              "339679/1000000",
              "76801/125000"
            ],
            "lines": [
              [
                "-105433/250000",
                "44955166541/1000000000000"
              ],
              [
                "-105433/250000",
                "5784836599/50000000000"
              ],
              [
                "-34697/100000",
                "19560085143/1000000000000"
              ],
              [
                "-34697/100000",
                "45150825291/500000000000"
              ],
              [
                "-105433/250000",
                "3678345133/31250000000"
              ],
              [
                "-105433/250000",
                "37689721939/200000000000"
              ],
              [
                "-34697/100000",
                "16926442521/250000000000"
              ],
              [
                "-34697/100000",
                "138447335523/1000000000000"
              ],
              [
                "-755017/1000000",
                "149366024771/1000000000000"
              ],
              [
                "-755017/1000000",
                "67517910571/200000000000"
              ],
              [
                "-136051/200000",
                "123970943373/1000000000000"
              ],
              [
                "-136051/200000",
                "312194471457/1000000000000"
              ],
              [
                "-755017/1000000",
                "111058951243/500000000000"
              ],
              [
                "-755017/1000000",
                "41034143057/100000000000"
              ],
              [
                "-136051/200000",
                "86058314157/500000000000"
              ],
              [
                "-136051/200000",
                "180170078199/500000000000"
              ],
              [
                "-105433/250000",
                "6676792169/125000000000"
              ],
              [
                "-105433/250000",
                "2802996631/250000000000"
              ],
              [
                "-34697/100000",
                "14009627977/500000000000"
              ],
              [
                "-34697/100000",
                "-7091547437/500000000000"
              ],
              [
                "-105433/250000",
                "28952765783/125000000000"
              ],
              [
                "-105433/250000",
                "47354943859/250000000000"
              ],
              [
                "-34697/100000",
                "45405213023/250000000000"
              ],
              [
                "-34697/100000",
                "8713656329/62500000000"
              ],
              [
                "-755017/1000000",
                "78912597791/500000000000"
              ],
              [
                "-755017/1000000",
                "233104807399/1000000000000"
              ],
              [
                "-136051/200000",
                "16553764273/125000000000"
              ],
              [
                "-136051/200000",
                "207709726001/1000000000000"
              ],
              [
                "-755017/1000000",
                "168016492247/500000000000"
              ],
              [
                "-755017/1000000",
                "411312596311/1000000000000"
              ],
              [
                "-136051/200000",
                "143015855161/500000000000"
              ],
              [
                "-136051/200000",
                "361311322139/1000000000000"
              ]
            ],
            "raw": [
              "339679/1000000",
              "28952765783/52716500000"
            ],
            "new": [
              "339679/1000000",
              "549217/1000000"
            ]
          },
          {
            "factor": 1219,
            "target": "y",
            "old": [
              "449/800",
              "178907/200000"
            ],
            "lines": [
              [
                "50322393/100000000",
                "-164992936349613/500000000000000"
              ],
              [
                "145400013/250000000",
                "-94060161847818633/250000000000000000"
              ],
              [
                "50322393/100000000",
                "-83928154455593367/250000000000000000"
              ],
              [
                "145400013/250000000",
                "-190983696257211/500000000000000"
              ],
              [
                "142619499/1000000000",
                "-70566216238113/500000000000000"
              ],
              [
                "220995621/1000000000",
                "-46846801792068633/250000000000000000"
              ],
              [
                "142619499/1000000000",
                "-36714794399843367/250000000000000000"
              ],
              [
                "220995621/1000000000",
                "-96556976145711/500000000000000"
              ],
              [
                "50322393/100000000",
                "-9139717784649/25000000000000"
              ],
              [
                "145400013/250000000",
                "-5182928910116859/12500000000000000"
              ],
              [
                "50322393/100000000",
                "-4679802317634141/12500000000000000"
              ],
              [
                "145400013/250000000",
                "-10585744670853/25000000000000"
              ],
              [
                "142619499/1000000000",
                "-2209190889537/12500000000000"
              ],
              [
                "220995621/1000000000",
                "-2822260907329359/12500000000000000"
              ],
              [
                "142619499/1000000000",
                "-2319134314846641/12500000000000000"
              ],
              [
                "220995621/1000000000",
                "-2932204332639/12500000000000"
              ],
              [
                "50322393/100000000",
                "-70752647918787/250000000000000"
              ],
              [
                "145400013/250000000",
                "-82316341591799133/250000000000000000"
              ],
              [
                "50322393/100000000",
                "-72184334199573867/250000000000000000"
              ],
              [
                "145400013/250000000",
                "-41874013936293/125000000000000"
              ],
              [
                "142619499/1000000000",
                "-23539287863037/250000000000000"
              ],
              [
                "220995621/1000000000",
                "-35102981536049133/250000000000000000"
              ],
              [
                "142619499/1000000000",
                "-24970974143823867/250000000000000000"
              ],
              [
                "220995621/1000000000",
                "-9133666954209/62500000000000"
              ],
              [
                "50322393/100000000",
                "-1834008094713/6250000000000"
              ],
              [
                "145400013/250000000",
                "-4281086207218359/12500000000000000"
              ],
              [
                "50322393/100000000",
                "-3777959614735641/12500000000000000"
              ],
              [
                "145400013/250000000",
                "-274439352033/781250000000"
              ],
              [
                "142619499/1000000000",
                "-2614696373277/25000000000000"
              ],
              [
                "220995621/1000000000",
                "-1920418204430859/12500000000000000"
              ],
              [
                "142619499/1000000000",
                "-1417291611948141/12500000000000000"
              ],
              [
                "220995621/1000000000",
                "-4060723259481/25000000000000"
              ]
            ],
            "raw": [
              "1241274524891/2207122500000",
              "178907/200000"
            ],
            "new": [
              "281197/500000",
              "178907/200000"
            ]
          },
          {
            "factor": 146,
            "target": "v",
            "old": [
              "360563/1000000",
              "340487/500000"
            ],
            "lines": [
              [
                "201297/250000",
                "-343705751/1000000000"
              ],
              [
                "201297/250000",
                "-87483939067/200000000000"
              ],
              [
                "440901/500000",
                "-354355097/1000000000"
              ],
              [
                "440901/500000",
                "-92698517749/200000000000"
              ],
              [
                "201297/250000",
                "-314579969/1000000000"
              ],
              [
                "201297/250000",
                "-73222154173/200000000000"
              ],
              [
                "440901/500000",
                "-65045863/200000000"
              ],
              [
                "440901/500000",
                "-15687346571/40000000000"
              ]
            ],
            "raw": [
              "65045863/176360400",
              "340487/500000"
            ],
            "new": [
              "368823/1000000",
              "340487/500000"
            ]
          },
          {
            "factor": 200,
            "target": "u",
            "old": [
              "339679/1000000",
              "549217/1000000"
            ],
            "lines": [
              [
                "-105719/250000",
                "45531628833/1000000000000"
              ],
              [
                "-105719/250000",
                "5688241281/50000000000"
              ],
              [
                "-174057/500000",
                "4027309487/200000000000"
              ],
              [
                "-174057/500000",
                "44184872111/500000000000"
              ],
              [
                "-105719/250000",
                "7562630973/62500000000"
              ],
              [
                "-105719/250000",
                "37847058471/200000000000"
              ],
              [
                "-174057/500000",
                "17750205349/250000000000"
              ],
              [
                "-174057/500000",
                "139234018183/1000000000000"
              ],
              [
                "-755017/1000000",
                "149584097031/1000000000000"
              ],
              [
                "-755017/1000000",
                "66979199979/200000000000"
              ],
              [
                "-136051/200000",
                "124189015633/1000000000000"
              ],
              [
                "-136051/200000",
                "309500918497/1000000000000"
              ],
              [
                "-755017/1000000",
                "112527281883/500000000000"
              ],
              [
                "-755017/1000000",
                "41036646663/100000000000"
              ],
              [
                "-136051/200000",
                "87526644797/500000000000"
              ],
              [
                "-136051/200000",
                "180182596229/500000000000"
              ],
              [
                "-105719/250000",
                "6721590923/125000000000"
              ],
              [
                "-105719/250000",
                "2993408281/250000000000"
              ],
              [
                "-174057/500000",
                "14188822993/500000000000"
              ],
              [
                "-174057/500000",
                "-6710724137/500000000000"
              ],
              [
                "-105719/250000",
                "28997564537/125000000000"
              ],
              [
                "-105719/250000",
                "47545355509/250000000000"
              ],
              [
                "-174057/500000",
                "45494810531/250000000000"
              ],
              [
                "-174057/500000",
                "17522518483/125000000000"
              ],
              [
                "-755017/1000000",
                "78912597791/500000000000"
              ],
              [
                "-755017/1000000",
                "233104807399/1000000000000"
              ],
              [
                "-136051/200000",
                "16553764273/125000000000"
              ],
              [
                "-136051/200000",
                "207709726001/1000000000000"
              ],
              [
                "-755017/1000000",
                "168016492247/500000000000"
              ],
              [
                "-755017/1000000",
                "411312596311/1000000000000"
              ],
              [
                "-136051/200000",
                "143015855161/500000000000"
              ],
              [
                "-136051/200000",
                "361311322139/1000000000000"
              ]
            ],
            "raw": [
              "339679/1000000",
              "28997564537/52859500000"
            ],
            "new": [
              "339679/1000000",
              "548579/1000000"
            ]
          },
          {
            "factor": 146,
            "target": "v",
            "old": [
              "368823/1000000",
              "340487/500000"
            ],
            "lines": [
              [
                "201297/250000",
                "-343705751/1000000000"
              ],
              [
                "201297/250000",
                "-87483939067/200000000000"
              ],
              [
                "440901/500000",
                "-354355097/1000000000"
              ],
              [
                "440901/500000",
                "-92698517749/200000000000"
              ],
              [
                "201297/250000",
                "-314668651/1000000000"
              ],
              [
                "201297/250000",
                "-73265578367/200000000000"
              ],
              [
                "440901/500000",
                "-325317997/1000000000"
              ],
              [
                "440901/500000",
                "-78480157049/200000000000"
              ]
            ],
            "raw": [
              "325317997/881802000",
              "340487/500000"
            ],
            "new": [
              "92231/250000",
              "340487/500000"
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
        "BFG-",
        "GOP+"
      ],
      "initial_box": {
        "low": [
          "139/1000",
          "108013/1000000",
          "201297/250000",
          "120187/1000000",
          "59757/100000",
          "201297/250000",
          "156639/500000",
          "69483/100000",
          "69759/500000",
          "339679/1000000",
          "281197/500000",
          "339679/1000000",
          "92231/250000"
        ],
        "high": [
          "68063/200000",
          "431891/1000000",
          "440901/500000",
          "429617/1000000",
          "907/1000",
          "440901/500000",
          "26631/40000",
          "1",
          "5357/25000",
          "334403/500000",
          "178907/200000",
          "548579/1000000",
          "340487/500000"
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
        "BFG": -1,
        "FGO": -1,
        "BGO": 1,
        "EGO": -1,
        "GOP": 1,
        "BGP": 1,
        "FGP": -1,
        "EGP": -1,
        "BEP": 1,
        "BFO": 1,
        "AFO": 1,
        "AEO": 1
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
            "ray",
            "CFG",
            "OP",
            "FGC",
            [
              "area",
              "CFG",
              "T0009",
              "587789/1000000"
            ]
          ],
          "target": "FGO",
          "sign": -1,
          "deps": [
            "CGO",
            "CFO",
            "CGP",
            "CFP",
            "FOP"
          ],
          "area_stage": 5
        },
        {
          "rule": [
            "plu",
            "GABFO"
          ],
          "target": "BGO",
          "sign": 1,
          "deps": [
            "ABG",
            "FGO",
            "AFG",
            "AGO",
            "BFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCEFO"
          ],
          "target": "EGO",
          "sign": -1,
          "deps": [
            "CEG",
            "FGO",
            "CFG",
            "CGO",
            "EFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GABOP"
          ],
          "target": "BGP",
          "sign": 1,
          "deps": [
            "ABG",
            "GOP",
            "AGO",
            "AGP",
            "BGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GAFOP"
          ],
          "target": "FGP",
          "sign": -1,
          "deps": [
            "AFG",
            "GOP",
            "AGO",
            "AGP",
            "FGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCEFP"
          ],
          "target": "EGP",
          "sign": -1,
          "deps": [
            "CEG",
            "FGP",
            "CFG",
            "CGP",
            "EFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "BCE",
            "GP",
            "EBC",
            [
              "fixed",
              "BCE"
            ]
          ],
          "target": "BEP",
          "sign": 1,
          "deps": [
            "BCG",
            "CEG",
            "BCP",
            "CEP",
            "EGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "BEF",
            "OP",
            "FBE",
            [
              "HCF2-BEF-cap1"
            ]
          ],
          "target": "BFO",
          "sign": 1,
          "deps": [
            "BEO",
            "EFO",
            "BEP",
            "EFP",
            "FOP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "FAG",
            "OP",
            "FAG",
            [
              "area",
              "AFG",
              "T0079",
              "162151/250000"
            ]
          ],
          "target": "AFO",
          "sign": 1,
          "deps": [
            "AGO",
            "FGO",
            "AGP",
            "FGP",
            "FOP"
          ],
          "area_stage": 7
        },
        {
          "rule": [
            "plu",
            "ABEFO"
          ],
          "target": "AEO",
          "sign": 1,
          "deps": [
            "ABE",
            "AFO",
            "ABF",
            "ABO",
            "AEF"
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
        "L_AFO": {
          "triangle": "AFO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "AFO",
            "points": []
          }
        },
        "L_BGP": {
          "triangle": "BGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BGP",
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
        "L_GHP": {
          "triangle": "GHP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HGP",
            "points": []
          }
        },
        "L_GOP": {
          "triangle": "GOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GOP",
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
        "U_BCG": {
          "triangle": "BCG",
          "side": "hi",
          "value": "4145187673/25000000000",
          "witness": {
            "kind": "vertices",
            "signed": "BCG",
            "used": [
              1,
              2,
              6,
              8
            ],
            "values": [
              "26040825423/500000000000",
              "31385341449/500000000000",
              "1999752029/25000000000",
              "2410173227/25000000000",
              "1945369233/20000000000",
              "53978746851/500000000000",
              "149390659/1000000000",
              "4145187673/25000000000"
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
              "104969996509/500000000000",
              "126513623467/500000000000",
              "66785446379/200000000000",
              "7841740739/20000000000",
              "80492227277/200000000000",
              "217587145433/500000000000",
              "4989179509/8000000000",
              "138436268623/200000000000"
            ],
            "cell": "CA"
          }
        },
        "U_CDH": {
          "triangle": "CDH",
          "side": "hi",
          "value": "135183613249/250000000000",
          "witness": {
            "kind": "vertices",
            "signed": "CDH",
            "used": [
              2,
              3,
              7
            ],
            "values": [
              "94054326657/500000000000",
              "112089568487/500000000000",
              "58033588029/250000000000",
              "72896282539/250000000000",
              "230482323087/500000000000",
              "120320918739/250000000000",
              "248517564917/500000000000",
              "135183613249/250000000000"
            ],
            "cell": "CA"
          }
        },
        "U_GHO": {
          "triangle": "GHO",
          "side": "hi",
          "value": "271227830111/500000000000",
          "witness": {
            "kind": "vertices",
            "signed": "HGO",
            "used": [
              6,
              7,
              8,
              9,
              10
            ],
            "values": [
              "-2445455077/100000000000",
              "235132657/250000000000",
              "1501203311/20000000000",
              "25113811737/250000000000",
              "60871729121/500000000000",
              "32450062853/250000000000",
              "3678463491/25000000000",
              "15519533281/100000000000",
              "39335324701/200000000000",
              "222071704903/1000000000000",
              "5644898161/25000000000",
              "1166110727/5000000000",
              "23385271961/100000000000",
              "23414711567/100000000000",
              "125595503919/500000000000",
              "16202987563/62500000000",
              "69976359523/250000000000",
              "70805854893/250000000000",
              "142074194921/500000000000",
              "11847653593/40000000000",
              "321586421223/1000000000000",
              "41238339033/125000000000",
              "38395790629/100000000000",
              "97100479463/250000000000",
              "216979590231/500000000000",
              "54800399003/125000000000",
              "18174132787/40000000000",
              "91055657989/200000000000",
              "9849087721/20000000000",
              "504354593847/1000000000000",
              "505279564117/1000000000000",
              "271227830111/500000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "3": {
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
        "464": {
          "row": [
            "plu",
            "AGP",
            "BCG",
            "ABG",
            "CGP",
            "ACG",
            "BGP"
          ],
          "witness": {
            "kind": "plu",
            "word": "GABCP"
          }
        },
        "3988": {
          "row": [
            "linear",
            {
              "FHO": "-93/1000",
              "FGO": "178227830111/500000000000",
              "FOP": "-271227830111/500000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "HGO",
            "point": "P",
            "line": "FO",
            "side": "upper",
            "outer_upper": {
              "triangle": "GHO",
              "ref": "U_GHO",
              "value": "271227830111/500000000000"
            },
            "fan_lower": [
              {
                "triangle": "GOP",
                "ref": "L_GOP",
                "value": "93/1000"
              },
              {
                "triangle": "HOP",
                "ref": "L_HOP",
                "value": "93/1000"
              },
              {
                "triangle": "GHP",
                "ref": "L_GHP",
                "value": "93/1000"
              }
            ],
            "residual": "131727830111/500000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0048",
          "relation": 464,
          "rule": "sumlo",
          "triangle": "AGP",
          "side": "lo",
          "value": "4173/40000",
          "sources": [
            "L_ABG",
            "L_CGP",
            "L_ACG",
            "L_BGP",
            "U_BCG"
          ]
        },
        {
          "id": "T0125",
          "relation": 3988,
          "rule": "linear",
          "triangle": "FGO",
          "side": "lo",
          "value": "165791/1000000",
          "sources": [
            "L_FHO",
            "L_FOP"
          ]
        },
        {
          "id": "T0130",
          "relation": 3,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "11613/40000",
          "sources": [
            "L_ACG",
            "L_CGP",
            "T0048"
          ]
        }
      ],
      "physical": {
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
              "-11613/40000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACP",
            "side": "lo",
            "reference": "T0130",
            "value": "11613/40000"
          }
        },
        "194": {
          "name": "AREA_LO_FGO",
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
                6
              ],
              "1"
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
                8,
                9
              ],
              "1"
            ],
            [
              [
                5,
                8
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
              "-165791/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FGO",
            "side": "lo",
            "reference": "T0125",
            "value": "165791/1000000"
          }
        },
        "200": {
          "name": "AREA_LO_GOP",
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
                8,
                9
              ],
              "-1"
            ],
            [
              [
                6,
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
                6,
                10
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
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "GOP",
            "side": "lo",
            "reference": "L_GOP",
            "value": "93/1000"
          }
        },
        "212": {
          "name": "AREA_LO_AFO",
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
                0,
                5
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
            "triangle": "AFO",
            "side": "lo",
            "reference": "L_AFO",
            "value": "93/1000"
          }
        }
      },
      "coordinate": {
        "low": [
          "139/1000",
          "108013/1000000",
          "201297/250000",
          "120187/1000000",
          "59757/100000",
          "201297/250000",
          "156639/500000",
          "69483/100000",
          "69759/500000",
          "339679/1000000",
          "576131/1000000",
          "339679/1000000",
          "95717/250000"
        ],
        "high": [
          "68063/200000",
          "431891/1000000",
          "440901/500000",
          "429617/1000000",
          "907/1000",
          "440901/500000",
          "26631/40000",
          "1/1",
          "5357/25000",
          "662653/1000000",
          "178907/200000",
          "541593/1000000",
          "340487/500000"
        ],
        "steps": [
          {
            "factor": 146,
            "target": "v",
            "old": [
              "92231/250000",
              "340487/500000"
            ],
            "lines": [
              [
                "201297/250000",
                "-355030751/1000000000"
              ],
              [
                "201297/250000",
                "-89748939067/200000000000"
              ],
              [
                "440901/500000",
                "-365680097/1000000000"
              ],
              [
                "440901/500000",
                "-94963517749/200000000000"
              ],
              [
                "201297/250000",
                "-325993651/1000000000"
              ],
              [
                "201297/250000",
                "-75530578367/200000000000"
              ],
              [
                "440901/500000",
                "-336642997/1000000000"
              ],
              [
                "440901/500000",
                "-80745157049/200000000000"
              ]
            ],
            "raw": [
              "336642997/881802000",
              "340487/500000"
            ],
            "new": [
              "381767/1000000",
              "340487/500000"
            ]
          },
          {
            "factor": 194,
            "target": "x",
            "old": [
              "339679/1000000",
              "334403/500000"
            ],
            "lines": [
              [
                "-430241/500000",
                "77949003289/250000000000"
              ],
              [
                "-430241/500000",
                "17209711751/50000000000"
              ],
              [
                "-430241/500000",
                "233025407669/500000000000"
              ],
              [
                "-430241/500000",
                "249224518601/500000000000"
              ],
              [
                "-19643/25000",
                "2515985479/10000000000"
              ],
              [
                "-19643/25000",
                "34783619237/125000000000"
              ],
              [
                "-19643/25000",
                "202926675041/500000000000"
              ],
              [
                "-19643/25000",
                "216261878039/500000000000"
              ],
              [
                "-430241/500000",
                "237589746233/500000000000"
              ],
              [
                "-430241/500000",
                "66628045613/125000000000"
              ],
              [
                "-430241/500000",
                "512355588571/1000000000000"
              ],
              [
                "-430241/500000",
                "570200461009/1000000000000"
              ],
              [
                "-19643/25000",
                "41498202721/100000000000"
              ],
              [
                "-19643/25000",
                "23354954189/50000000000"
              ],
              [
                "-19643/25000",
                "90431624663/200000000000"
              ],
              [
                "-19643/25000",
                "100855035977/200000000000"
              ]
            ],
            "raw": [
              "339679/1000000",
              "570200461009/860482000000"
            ],
            "new": [
              "339679/1000000",
              "662653/1000000"
            ]
          },
          {
            "factor": 200,
            "target": "u",
            "old": [
              "339679/1000000",
              "548579/1000000"
            ],
            "lines": [
              [
                "-105719/250000",
                "45873363377/1000000000000"
              ],
              [
                "-105719/250000",
                "27385959749/250000000000"
              ],
              [
                "-174057/500000",
                "20478281979/1000000000000"
              ],
              [
                "-174057/500000",
                "42074378799/500000000000"
              ],
              [
                "-105719/250000",
                "124113491903/1000000000000"
              ],
              [
                "-105719/250000",
                "93891983761/500000000000"
              ],
              [
                "-174057/500000",
                "74572228317/1000000000000"
              ],
              [
                "-174057/500000",
                "2160042249/15625000000"
              ],
              [
                "-755017/1000000",
                "5997033263/40000000000"
              ],
              [
                "-755017/1000000",
                "330675013271/1000000000000"
              ],
              [
                "-136051/200000",
                "124530750177/1000000000000"
              ],
              [
                "-136051/200000",
                "305279931873/1000000000000"
              ],
              [
                "-755017/1000000",
                "228165960101/1000000000000"
              ],
              [
                "-755017/1000000",
                "408915141797/1000000000000"
              ],
              [
                "-136051/200000",
                "35724939303/200000000000"
              ],
              [
                "-136051/200000",
                "359373878211/1000000000000"
              ],
              [
                "-105719/250000",
                "6721590923/125000000000"
              ],
              [
                "-105719/250000",
                "2993408281/250000000000"
              ],
              [
                "-174057/500000",
                "14188822993/500000000000"
              ],
              [
                "-174057/500000",
                "-6710724137/500000000000"
              ],
              [
                "-105719/250000",
                "28581117191/125000000000"
              ],
              [
                "-105719/250000",
                "46712460817/250000000000"
              ],
              [
                "-174057/500000",
                "89553836971/500000000000"
              ],
              [
                "-174057/500000",
                "68654289841/500000000000"
              ],
              [
                "-755017/1000000",
                "78912597791/500000000000"
              ],
              [
                "-755017/1000000",
                "233104807399/1000000000000"
              ],
              [
                "-136051/200000",
                "16553764273/125000000000"
              ],
              [
                "-136051/200000",
                "207709726001/1000000000000"
              ],
              [
                "-755017/1000000",
                "166350702863/500000000000"
              ],
              [
                "-755017/1000000",
                "407981017543/1000000000000"
              ],
              [
                "-136051/200000",
                "14158007107/50000000000"
              ],
              [
                "-136051/200000",
                "358439753957/1000000000000"
              ]
            ],
            "raw": [
              "339679/1000000",
              "408915141797/755017000000"
            ],
            "new": [
              "339679/1000000",
              "270799/500000"
            ]
          },
          {
            "factor": 212,
            "target": "y",
            "old": [
              "281197/500000",
              "178907/200000"
            ],
            "lines": [
              [
                "201297/250000",
                "-497384751/1000000000"
              ],
              [
                "201297/250000",
                "-118219739067/200000000000"
              ],
              [
                "440901/500000",
                "-508034097/1000000000"
              ],
              [
                "440901/500000",
                "-123434317749/200000000000"
              ],
              [
                "201297/250000",
                "-155093073/200000000"
              ],
              [
                "201297/250000",
                "-32166391941/40000000000"
              ],
              [
                "440901/500000",
                "-786114711/1000000000"
              ],
              [
                "440901/500000",
                "-166046538387/200000000000"
              ]
            ],
            "raw": [
              "56448233/97978000",
              "178907/200000"
            ],
            "new": [
              "576131/1000000",
              "178907/200000"
            ]
          },
          {
            "factor": 146,
            "target": "v",
            "old": [
              "381767/1000000",
              "340487/500000"
            ],
            "lines": [
              [
                "201297/250000",
                "-355030751/1000000000"
              ],
              [
                "201297/250000",
                "-89748939067/200000000000"
              ],
              [
                "440901/500000",
                "-365680097/1000000000"
              ],
              [
                "440901/500000",
                "-94963517749/200000000000"
              ],
              [
                "201297/250000",
                "-32696401/100000000"
              ],
              [
                "201297/250000",
                "-7600572617/20000000000"
              ],
              [
                "440901/500000",
                "-84403339/250000000"
              ],
              [
                "440901/500000",
                "-20305076213/50000000000"
              ]
            ],
            "raw": [
              "84403339/220450500",
              "340487/500000"
            ],
            "new": [
              "382867/1000000",
              "340487/500000"
            ]
          },
          {
            "factor": 200,
            "target": "u",
            "old": [
              "339679/1000000",
              "270799/500000"
            ],
            "lines": [
              [
                "-436613/1000000",
                "50205904363/1000000000000"
              ],
              [
                "-436613/1000000",
                "118330884571/1000000000000"
              ],
              [
                "-361851/1000000",
                "4962164593/200000000000"
              ],
              [
                "-361851/1000000",
                "92935803173/1000000000000"
              ],
              [
                "-436613/1000000",
                "128801304289/1000000000000"
              ],
              [
                "-436613/1000000",
                "196926284497/1000000000000"
              ],
              [
                "-361851/1000000",
                "79260040703/1000000000000"
              ],
              [
                "-361851/1000000",
                "147385020911/1000000000000"
              ],
              [
                "-755017/1000000",
                "5998194907/40000000000"
              ],
              [
                "-755017/1000000",
                "330316307671/1000000000000"
              ],
              [
                "-136051/200000",
                "124559791277/1000000000000"
              ],
              [
                "-136051/200000",
                "304921226273/1000000000000"
              ],
              [
                "-755017/1000000",
                "228550272601/1000000000000"
              ],
              [
                "-755017/1000000",
                "408911707597/1000000000000"
              ],
              [
                "-136051/200000",
                "35801801803/200000000000"
              ],
              [
                "-136051/200000",
                "359370444011/1000000000000"
              ],
              [
                "-436613/1000000",
                "5807622727/100000000000"
              ],
              [
                "-436613/1000000",
                "21119384299/1000000000000"
              ],
              [
                "-361851/1000000",
                "2042571617/62500000000"
              ],
              [
                "-361851/1000000",
                "-4275697099/1000000000000"
              ],
              [
                "-436613/1000000",
                "116476218707/500000000000"
              ],
              [
                "-436613/1000000",
                "195995594443/1000000000000"
              ],
              [
                "-361851/1000000",
                "45852793457/250000000000"
              ],
              [
                "-361851/1000000",
                "146454330857/1000000000000"
              ],
              [
                "-755017/1000000",
                "78912597791/500000000000"
              ],
              [
                "-755017/1000000",
                "233104807399/1000000000000"
              ],
              [
                "-136051/200000",
                "16553764273/125000000000"
              ],
              [
                "-136051/200000",
                "207709726001/1000000000000"
              ],
              [
                "-755017/1000000",
                "166350702863/500000000000"
              ],
              [
                "-755017/1000000",
                "407981017543/1000000000000"
              ],
              [
                "-136051/200000",
                "14158007107/50000000000"
              ],
              [
                "-136051/200000",
                "358439753957/1000000000000"
              ]
            ],
            "raw": [
              "339679/1000000",
              "408911707597/755017000000"
            ],
            "new": [
              "339679/1000000",
              "541593/1000000"
            ]
          },
          {
            "factor": 146,
            "target": "v",
            "old": [
              "382867/1000000",
              "340487/500000"
            ],
            "lines": [
              [
                "201297/250000",
                "-355030751/1000000000"
              ],
              [
                "201297/250000",
                "-89748939067/200000000000"
              ],
              [
                "440901/500000",
                "-365680097/1000000000"
              ],
              [
                "440901/500000",
                "-94963517749/200000000000"
              ],
              [
                "201297/250000",
                "-65392941/200000000"
              ],
              [
                "201297/250000",
                "-15201213297/40000000000"
              ],
              [
                "440901/500000",
                "-337614051/1000000000"
              ],
              [
                "440901/500000",
                "-81220645167/200000000000"
              ]
            ],
            "raw": [
              "112538017/293934000",
              "340487/500000"
            ],
            "new": [
              "95717/250000",
              "340487/500000"
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
        "BFG-",
        "GOP+"
      ],
      "initial_box": {
        "low": [
          "139/1000",
          "108013/1000000",
          "201297/250000",
          "120187/1000000",
          "59757/100000",
          "201297/250000",
          "156639/500000",
          "69483/100000",
          "69759/500000",
          "339679/1000000",
          "576131/1000000",
          "339679/1000000",
          "95717/250000"
        ],
        "high": [
          "68063/200000",
          "431891/1000000",
          "440901/500000",
          "429617/1000000",
          "907/1000",
          "440901/500000",
          "26631/40000",
          "1",
          "5357/25000",
          "662653/1000000",
          "178907/200000",
          "541593/1000000",
          "340487/500000"
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
        "BFG": -1,
        "FGO": -1,
        "BGO": 1,
        "EGO": -1,
        "GOP": 1,
        "BGP": 1,
        "FGP": -1,
        "EGP": -1,
        "BEP": 1,
        "BFO": 1,
        "AFO": 1,
        "AEO": 1,
        "BOP": 1,
        "DHO": -1,
        "BFP": 1
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
            "ray",
            "CFG",
            "OP",
            "FGC",
            [
              "area",
              "CFG",
              "T0009",
              "587789/1000000"
            ]
          ],
          "target": "FGO",
          "sign": -1,
          "deps": [
            "CGO",
            "CFO",
            "CGP",
            "CFP",
            "FOP"
          ],
          "area_stage": 5
        },
        {
          "rule": [
            "plu",
            "GABFO"
          ],
          "target": "BGO",
          "sign": 1,
          "deps": [
            "ABG",
            "FGO",
            "AFG",
            "AGO",
            "BFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCEFO"
          ],
          "target": "EGO",
          "sign": -1,
          "deps": [
            "CEG",
            "FGO",
            "CFG",
            "CGO",
            "EFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GABOP"
          ],
          "target": "BGP",
          "sign": 1,
          "deps": [
            "ABG",
            "GOP",
            "AGO",
            "AGP",
            "BGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GAFOP"
          ],
          "target": "FGP",
          "sign": -1,
          "deps": [
            "AFG",
            "GOP",
            "AGO",
            "AGP",
            "FGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCEFP"
          ],
          "target": "EGP",
          "sign": -1,
          "deps": [
            "CEG",
            "FGP",
            "CFG",
            "CGP",
            "EFG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "BCE",
            "GP",
            "EBC",
            [
              "fixed",
              "BCE"
            ]
          ],
          "target": "BEP",
          "sign": 1,
          "deps": [
            "BCG",
            "CEG",
            "BCP",
            "CEP",
            "EGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "BEF",
            "OP",
            "FBE",
            [
              "HCF2-BEF-cap1"
            ]
          ],
          "target": "BFO",
          "sign": 1,
          "deps": [
            "BEO",
            "EFO",
            "BEP",
            "EFP",
            "FOP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "FAG",
            "OP",
            "FAG",
            [
              "area",
              "AFG",
              "T0079",
              "162151/250000"
            ]
          ],
          "target": "AFO",
          "sign": 1,
          "deps": [
            "AGO",
            "FGO",
            "AGP",
            "FGP",
            "FOP"
          ],
          "area_stage": 7
        },
        {
          "rule": [
            "plu",
            "ABEFO"
          ],
          "target": "AEO",
          "sign": 1,
          "deps": [
            "ABE",
            "AFO",
            "ABF",
            "ABO",
            "AEF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "cap",
            "BCO",
            [
              "G"
            ],
            "P",
            [
              "area",
              "BCO",
              "U_BCO",
              "138436268623/200000000000"
            ]
          ],
          "target": "BOP",
          "sign": 1,
          "deps": [
            "BCP",
            "COP"
          ],
          "area_stage": 8
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
              "135183613249/250000000000"
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
            "plu",
            "BAFOP"
          ],
          "target": "BFP",
          "sign": 1,
          "deps": [
            "ABF",
            "BOP",
            "ABO",
            "ABP",
            "BFO"
          ],
          "area_stage": null
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
        "L_BCP": {
          "triangle": "BCP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BCP",
            "points": [
              "G"
            ]
          }
        },
        "L_BFG": {
          "triangle": "BFG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FBG",
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
              "O",
              "P"
            ]
          }
        },
        "L_BFO": {
          "triangle": "BFO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BFO",
            "points": []
          }
        },
        "L_BHP": {
          "triangle": "BHP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HBP",
            "points": []
          }
        },
        "L_BOP": {
          "triangle": "BOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BOP",
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
        "L_FGH": {
          "triangle": "FGH",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "GFH",
            "points": [
              "O",
              "P"
            ]
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
        "L_GHP": {
          "triangle": "GHP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HGP",
            "points": []
          }
        },
        "L_GOP": {
          "triangle": "GOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GOP",
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
        "U_ABF": {
          "triangle": "ABF",
          "side": "hi",
          "value": "117000492393/200000000000",
          "witness": {
            "kind": "vertices",
            "signed": "ABF",
            "used": [
              0,
              1,
              5
            ],
            "values": [
              "8196813/40000000",
              "215569671/1000000000",
              "2762176881/8000000000",
              "74269000707/200000000000",
              "483779283/1000000000",
              "494428629/1000000000",
              "111785913711/200000000000",
              "117000492393/200000000000"
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
              "201297/250000",
              "407918673/500000000",
              "83126089341/100000000000",
              "85572910659/100000000000",
              "435576327/500000000",
              "440901/500000"
            ],
            "cell": "CA"
          }
        },
        "U_BCG": {
          "triangle": "BCG",
          "side": "hi",
          "value": "4145187673/25000000000",
          "witness": {
            "kind": "vertices",
            "signed": "BCG",
            "used": [
              1,
              2,
              6,
              8
            ],
            "values": [
              "26040825423/500000000000",
              "31385341449/500000000000",
              "1999752029/25000000000",
              "2410173227/25000000000",
              "1945369233/20000000000",
              "53978746851/500000000000",
              "149390659/1000000000",
              "4145187673/25000000000"
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
              "2369724421/4000000000",
              "64566481087/100000000000",
              "69126895451/100000000000",
              "74450266013/100000000000",
              "201297/250000",
              "440901/500000"
            ],
            "cell": "CA"
          }
        },
        "U_BFP": {
          "triangle": "BFP",
          "side": "hi",
          "value": "199294846657/500000000000",
          "witness": {
            "kind": "vertices",
            "signed": "BFP",
            "used": [
              1,
              5,
              11,
              12
            ],
            "values": [
              "-1666540021/10000000000",
              "-34330238287/250000000000",
              "8305368949/250000000000",
              "352599979/10000000000",
              "823560969/20000000000",
              "15638631187/250000000000",
              "16148261713/250000000000",
              "46675095243/500000000000",
              "72251775639/500000000000",
              "98337846657/500000000000",
              "58783868949/250000000000",
              "4861840969/20000000000",
              "66117131187/250000000000",
              "147632095243/500000000000",
              "173208775639/500000000000",
              "199294846657/500000000000"
            ],
            "cell": "CA"
          }
        },
        "U_BGH": {
          "triangle": "BGH",
          "side": "hi",
          "value": "14522675641/25000000000",
          "witness": {
            "kind": "vertices",
            "signed": "BGH",
            "used": [
              1,
              6,
              7,
              8
            ],
            "values": [
              "-29178215731/500000000000",
              "-651684913/25000000000",
              "-5539825563/250000000000",
              "1012973269/100000000000",
              "39423509421/250000000000",
              "16576930559/100000000000",
              "110167378867/500000000000",
              "111383094129/500000000000",
              "5710250641/25000000000",
              "318819029/1250000000",
              "147070284269/500000000000",
              "8160740087/25000000000",
              "201309764097/500000000000",
              "4106947961/10000000000",
              "286415878867/500000000000",
              "14522675641/25000000000"
            ],
            "cell": "CA"
          }
        },
        "U_BHO": {
          "triangle": "BHO",
          "side": "hi",
          "value": "130252281791/200000000000",
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
              "156613793721/1000000000000",
              "184754129761/1000000000000",
              "223198124483/1000000000000",
              "51517979147/200000000000",
              "293895637703/1000000000000",
              "58825923137/200000000000",
              "12890798069/40000000000",
              "65657481791/200000000000",
              "409166154181/1000000000000",
              "447610148903/1000000000000",
              "479587793721/1000000000000",
              "96400384031/200000000000",
              "109336395229/200000000000",
              "616869637703/1000000000000",
              "123420723137/200000000000",
              "130252281791/200000000000"
            ],
            "cell": "CA"
          }
        },
        "U_CFG": {
          "triangle": "CFG",
          "side": "hi",
          "value": "142131/250000",
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
              "139413/1000000",
              "37525508013/250000000000",
              "1947873099/12500000000",
              "2495126901/12500000000",
              "51334491987/250000000000",
              "216027/1000000",
              "49191/100000",
              "125649758013/250000000000",
              "6354085599/12500000000",
              "6901339401/12500000000",
              "139458741987/250000000000",
              "142131/250000"
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
              "201297/250000",
              "41428414719/50000000000",
              "42921085281/50000000000",
              "440901/500000"
            ],
            "cell": "CA"
          }
        },
        "U_FGH": {
          "triangle": "FGH",
          "side": "hi",
          "value": "189693687141/250000000000",
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
              "24126807033/50000000000",
              "12983824959/25000000000",
              "135683401479/250000000000",
              "146319569871/250000000000",
              "11802153003/20000000000",
              "12538490157/20000000000",
              "3954076971/6250000000",
              "325152557703/500000000000",
              "8660618343/12500000000",
              "86606222577/125000000000",
              "346424894487/500000000000",
              "189693687141/250000000000"
            ],
            "cell": "CA"
          }
        },
        "U_FHP": {
          "triangle": "FHP",
          "side": "hi",
          "value": "68023528983/125000000000",
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
              "57408262679/500000000000",
              "57939044471/500000000000",
              "88217310369/500000000000",
              "88748092161/500000000000",
              "32109488361/125000000000",
              "70329441213/250000000000",
              "177423949643/500000000000",
              "189374277977/500000000000",
              "208232997333/500000000000",
              "220183325667/500000000000",
              "31056705051/62500000000",
              "68023528983/125000000000"
            ],
            "cell": "CA"
          }
        },
        "U_GHO": {
          "triangle": "GHO",
          "side": "hi",
          "value": "134290278619/250000000000",
          "witness": {
            "kind": "vertices",
            "signed": "HGO",
            "used": [
              6,
              7,
              8,
              9,
              10
            ],
            "values": [
              "-3061759919/200000000000",
              "10086281803/1000000000000",
              "3368236669/40000000000",
              "109600998123/1000000000000",
              "7877934883/62500000000",
              "67051875649/500000000000",
              "75721019763/500000000000",
              "19937354087/125000000000",
              "39335324701/200000000000",
              "222071704903/1000000000000",
              "5644898161/25000000000",
              "23385271961/100000000000",
              "47691666337/200000000000",
              "9576442897/40000000000",
              "125595503919/500000000000",
              "16202987563/62500000000",
              "70313028457/250000000000",
              "287999595271/1000000000000",
              "288952336011/1000000000000",
              "11847653593/40000000000",
              "321586421223/1000000000000",
              "165396688707/500000000000",
              "19050054107/50000000000",
              "193935441289/500000000000",
              "215271172863/500000000000",
              "109353036541/250000000000",
              "90088750957/200000000000",
              "18055859821/40000000000",
              "48761985089/100000000000",
              "499985018371/1000000000000",
              "500937759111/1000000000000",
              "134290278619/250000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "1": {
          "row": [
            "fan",
            "ACH",
            "ACG",
            "CGH",
            "AGH"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ACH",
            "point": "G"
          }
        },
        "6": {
          "row": [
            "fan",
            "BCH",
            "BCG",
            "CGH",
            "BGH"
          ],
          "witness": {
            "kind": "fan",
            "outer": "BCH",
            "point": "G"
          }
        },
        "10": {
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
        "11": {
          "row": [
            "fan",
            "BFH",
            "BFP",
            "FHP",
            "BHP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "BFH",
            "point": "P"
          }
        },
        "12": {
          "row": [
            "fan",
            "BHO",
            "BHP",
            "BOP",
            "HOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "HBO",
            "point": "P"
          }
        },
        "14": {
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
        "15": {
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
        "16": {
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
        "19": {
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
        "20": {
          "row": [
            "fan",
            "FGH",
            "FGP",
            "FHP",
            "GHP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "GFH",
            "point": "P"
          }
        },
        "21": {
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
        "110": {
          "row": [
            "plu",
            "ABF",
            "BGH",
            "ABG",
            "BFH",
            "ABH",
            "BFG"
          ],
          "witness": {
            "kind": "plu",
            "word": "BAFGH"
          }
        },
        "163": {
          "row": [
            "plu",
            "BFP",
            "BHO",
            "BFH",
            "BOP",
            "BFO",
            "BHP"
          ],
          "witness": {
            "kind": "plu",
            "word": "BFHOP"
          }
        },
        "486": {
          "row": [
            "plu",
            "BFH",
            "FGP",
            "BFG",
            "FHP",
            "BFP",
            "FGH"
          ],
          "witness": {
            "kind": "plu",
            "word": "FBGHP"
          }
        },
        "488": {
          "row": [
            "plu",
            "BFO",
            "FHP",
            "BFH",
            "FOP",
            "BFP",
            "FHO"
          ],
          "witness": {
            "kind": "plu",
            "word": "FBHOP"
          }
        },
        "523": {
          "row": [
            "plu",
            "FGO",
            "FHP",
            "FGH",
            "FOP",
            "FGP",
            "FHO"
          ],
          "witness": {
            "kind": "plu",
            "word": "FGHOP"
          }
        },
        "525": {
          "row": [
            "plu",
            "AGH",
            "BCG",
            "ABG",
            "CGH",
            "ACG",
            "BGH"
          ],
          "witness": {
            "kind": "plu",
            "word": "GABCH"
          }
        },
        "528": {
          "row": [
            "plu",
            "AFG",
            "BGH",
            "ABG",
            "FGH",
            "AGH",
            "BFG"
          ],
          "witness": {
            "kind": "plu",
            "word": "GABFH"
          }
        },
        "534": {
          "row": [
            "plu",
            "AGH",
            "CFG",
            "ACG",
            "FGH",
            "AFG",
            "CGH"
          ],
          "witness": {
            "kind": "plu",
            "word": "GACFH"
          }
        },
        "667": {
          "row": [
            "plu",
            "CFH",
            "GHP",
            "CGH",
            "FHP",
            "CHP",
            "FGH"
          ],
          "witness": {
            "kind": "plu",
            "word": "HCFGP"
          }
        },
        "732": {
          "row": [
            "plu",
            "BFO",
            "HOP",
            "BHO",
            "FOP",
            "BOP",
            "FHO"
          ],
          "witness": {
            "kind": "plu",
            "word": "OBFHP"
          }
        },
        "775": {
          "row": [
            "plu",
            "BHP",
            "CFP",
            "BCP",
            "FHP",
            "BFP",
            "CHP"
          ],
          "witness": {
            "kind": "plu",
            "word": "PBCFH"
          }
        },
        "776": {
          "row": [
            "plu",
            "BFP",
            "COP",
            "BCP",
            "FOP",
            "BOP",
            "CFP"
          ],
          "witness": {
            "kind": "plu",
            "word": "PBCFO"
          }
        },
        "779": {
          "row": [
            "plu",
            "BHP",
            "COP",
            "BCP",
            "HOP",
            "BOP",
            "CHP"
          ],
          "witness": {
            "kind": "plu",
            "word": "PBCHO"
          }
        },
        "794": {
          "row": [
            "plu",
            "BFP",
            "HOP",
            "BHP",
            "FOP",
            "BOP",
            "FHP"
          ],
          "witness": {
            "kind": "plu",
            "word": "PBFHO"
          }
        },
        "2349": {
          "row": [
            "balance",
            [
              [
                1,
                "BCH",
                "FOP"
              ],
              [
                1,
                "BCP",
                "FHO"
              ],
              [
                1,
                "BFO",
                "CHP"
              ],
              [
                -1,
                "BHP",
                "CFO"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "BCH",
            "point": "P",
            "line": "FO"
          }
        },
        "2516": {
          "row": [
            "balance",
            [
              [
                1,
                "ABC",
                "FGH"
              ],
              [
                -1,
                "ACF",
                "BGH"
              ],
              [
                1,
                "ACG",
                "BFH"
              ],
              [
                1,
                "ACH",
                "BFG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "BFG",
            "point": "H",
            "line": "AC"
          }
        },
        "2525": {
          "row": [
            "balance",
            [
              [
                1,
                "BFG",
                "HOP"
              ],
              [
                -1,
                "BFH",
                "GOP"
              ],
              [
                1,
                "BGH",
                "FOP"
              ],
              [
                1,
                "BOP",
                "FGH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "BFG",
            "point": "H",
            "line": "OP"
          }
        },
        "2578": {
          "row": [
            "balance",
            [
              [
                1,
                "BFO",
                "GHP"
              ],
              [
                -1,
                "BFP",
                "GHO"
              ],
              [
                1,
                "BGH",
                "FOP"
              ],
              [
                1,
                "BOP",
                "FGH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "BFO",
            "point": "P",
            "line": "GH"
          }
        },
        "4381": {
          "row": [
            "linear",
            {
              "BCP": "-279/1000",
              "BFP": "-93/1000",
              "BHP": "254901/500000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFH",
            "point": "P",
            "line": "BP",
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
        "4816": {
          "row": [
            "linear",
            {
              "BFP": "44773528983/125000000000",
              "BHP": "-93/1000",
              "BOP": "-68023528983/125000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "FHP",
            "point": "O",
            "line": "BP",
            "side": "lower",
            "outer_upper": {
              "triangle": "FHP",
              "ref": "U_FHP",
              "value": "68023528983/125000000000"
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
            "residual": "33148528983/125000000000"
          }
        },
        "4858": {
          "row": [
            "linear",
            {
              "FGP": "44773528983/125000000000",
              "GHP": "-93/1000",
              "GOP": "-68023528983/125000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "FHP",
            "point": "O",
            "line": "GP",
            "side": "lower",
            "outer_upper": {
              "triangle": "FHP",
              "ref": "U_FHP",
              "value": "68023528983/125000000000"
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
            "residual": "33148528983/125000000000"
          }
        },
        "4917": {
          "row": [
            "linear",
            {
              "FHO": "-93/1000",
              "FGO": "87790278619/250000000000",
              "FOP": "-134290278619/250000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "HGO",
            "point": "P",
            "line": "FO",
            "side": "upper",
            "outer_upper": {
              "triangle": "GHO",
              "ref": "U_GHO",
              "value": "134290278619/250000000000"
            },
            "fan_lower": [
              {
                "triangle": "GOP",
                "ref": "L_GOP",
                "value": "93/1000"
              },
              {
                "triangle": "HOP",
                "ref": "L_HOP",
                "value": "93/1000"
              },
              {
                "triangle": "GHP",
                "ref": "L_GHP",
                "value": "93/1000"
              }
            ],
            "residual": "64540278619/250000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0005",
          "relation": 15,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "254901/500000",
          "sources": [
            "U_CFH",
            "L_FHP",
            "L_CHP"
          ]
        },
        {
          "id": "T0015",
          "relation": 110,
          "rule": "sumlo",
          "triangle": "BGH",
          "side": "lo",
          "value": "124929/1000000",
          "sources": [
            "L_ABG",
            "L_BFH",
            "L_ABH",
            "L_BFG",
            "U_ABF"
          ]
        },
        {
          "id": "T0016",
          "relation": 163,
          "rule": "sumlo",
          "triangle": "BFP",
          "side": "lo",
          "value": "112219/1000000",
          "sources": [
            "L_BFH",
            "L_BOP",
            "L_BFO",
            "L_BHP",
            "U_BHO"
          ]
        },
        {
          "id": "T0044",
          "relation": 488,
          "rule": "sumlo",
          "triangle": "BFO",
          "side": "lo",
          "value": "137583/1000000",
          "sources": [
            "L_BFH",
            "L_FOP",
            "T0016",
            "L_FHO",
            "U_FHP"
          ]
        },
        {
          "id": "T0054",
          "relation": 525,
          "rule": "sumlo",
          "triangle": "AGH",
          "side": "lo",
          "value": "61117/500000",
          "sources": [
            "L_ABG",
            "L_CGH",
            "L_ACG",
            "T0015",
            "U_BCG"
          ]
        },
        {
          "id": "T0057",
          "relation": 528,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "13049/100000",
          "sources": [
            "L_ABG",
            "L_FGH",
            "T0054",
            "L_BFG",
            "U_BGH"
          ]
        },
        {
          "id": "T0058",
          "relation": 534,
          "rule": "sumlo",
          "triangle": "AGH",
          "side": "lo",
          "value": "134683/1000000",
          "sources": [
            "L_ACG",
            "L_FGH",
            "T0057",
            "L_CGH",
            "U_CFG"
          ]
        },
        {
          "id": "T0074",
          "relation": 667,
          "rule": "sumlo",
          "triangle": "GHP",
          "side": "lo",
          "value": "3203/31250",
          "sources": [
            "L_CGH",
            "L_FHP",
            "L_CHP",
            "L_FGH",
            "U_CFH"
          ]
        },
        {
          "id": "T0075",
          "relation": 775,
          "rule": "sumlo",
          "triangle": "BHP",
          "side": "lo",
          "value": "4329/25000",
          "sources": [
            "L_BCP",
            "L_FHP",
            "T0016",
            "L_CHP",
            "T0005"
          ]
        },
        {
          "id": "T0079",
          "relation": 794,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "105499/1000000",
          "sources": [
            "T0075",
            "L_FOP",
            "L_BOP",
            "L_FHP",
            "U_BFP"
          ]
        },
        {
          "id": "T0112",
          "relation": 2516,
          "rule": "balance_lo",
          "triangle": "BGH",
          "side": "lo",
          "value": "175569/1000000",
          "sources": [
            "L_ABC",
            "L_FGH",
            "L_ACG",
            "L_BFH",
            "L_ACH",
            "L_BFG",
            "U_ACF"
          ]
        },
        {
          "id": "T0114",
          "relation": 2525,
          "rule": "balance_lo",
          "triangle": "GOP",
          "side": "lo",
          "value": "20543/200000",
          "sources": [
            "L_BFG",
            "T0079",
            "T0112",
            "L_FOP",
            "L_BOP",
            "L_FGH",
            "U_BFH"
          ]
        },
        {
          "id": "T0119",
          "relation": 2578,
          "rule": "balance_lo",
          "triangle": "BFP",
          "side": "lo",
          "value": "176603/1000000",
          "sources": [
            "T0044",
            "T0074",
            "T0112",
            "L_FOP",
            "L_BOP",
            "L_FGH",
            "U_GHO"
          ]
        },
        {
          "id": "T0146",
          "relation": 4381,
          "rule": "linear",
          "triangle": "BHP",
          "side": "lo",
          "value": "36981/200000",
          "sources": [
            "L_BCP",
            "T0119"
          ]
        },
        {
          "id": "T0151",
          "relation": 4816,
          "rule": "linear",
          "triangle": "BFP",
          "side": "lo",
          "value": "189301/1000000",
          "sources": [
            "T0146",
            "L_BOP"
          ]
        },
        {
          "id": "T0156",
          "relation": 4858,
          "rule": "linear",
          "triangle": "FGP",
          "side": "lo",
          "value": "22833/125000",
          "sources": [
            "T0074",
            "T0114"
          ]
        },
        {
          "id": "T0158",
          "relation": 4917,
          "rule": "linear",
          "triangle": "FGO",
          "side": "lo",
          "value": "166889/1000000",
          "sources": [
            "L_FHO",
            "L_FOP"
          ]
        },
        {
          "id": "T0161",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "320683/1000000",
          "sources": [
            "L_ACG",
            "L_CGH",
            "T0058"
          ]
        },
        {
          "id": "T0175",
          "relation": 19,
          "rule": "sub",
          "triangle": "GHO",
          "side": "hi",
          "value": "249443/500000",
          "sources": [
            "U_FGH",
            "T0158",
            "L_FHO"
          ]
        },
        {
          "id": "T0177",
          "relation": 20,
          "rule": "sub",
          "triangle": "FHP",
          "side": "hi",
          "value": "94723/200000",
          "sources": [
            "U_FGH",
            "T0156",
            "T0074"
          ]
        },
        {
          "id": "T0179",
          "relation": 21,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "291499/1000000",
          "sources": [
            "L_FHO",
            "T0079",
            "L_FOP"
          ]
        },
        {
          "id": "T0205",
          "relation": 488,
          "rule": "sumlo",
          "triangle": "BFO",
          "side": "lo",
          "value": "8661/50000",
          "sources": [
            "L_BFH",
            "L_FOP",
            "T0151",
            "L_FHO",
            "T0177"
          ]
        },
        {
          "id": "T0210",
          "relation": 523,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "171917/1000000",
          "sources": [
            "L_FGH",
            "L_FOP",
            "T0156",
            "L_FHO",
            "T0177"
          ]
        },
        {
          "id": "T0211",
          "relation": 525,
          "rule": "sumlo",
          "triangle": "AGH",
          "side": "lo",
          "value": "75319/500000",
          "sources": [
            "L_ABG",
            "L_CGH",
            "L_ACG",
            "T0112",
            "U_BCG"
          ]
        },
        {
          "id": "T0225",
          "relation": 667,
          "rule": "sumlo",
          "triangle": "GHP",
          "side": "lo",
          "value": "20763/200000",
          "sources": [
            "L_CGH",
            "T0179",
            "L_CHP",
            "L_FGH",
            "U_CFH"
          ]
        },
        {
          "id": "T0229",
          "relation": 775,
          "rule": "sumlo",
          "triangle": "BHP",
          "side": "lo",
          "value": "97031/500000",
          "sources": [
            "L_BCP",
            "T0179",
            "T0151",
            "L_CHP",
            "T0005"
          ]
        },
        {
          "id": "T0230",
          "relation": 794,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "28323/250000",
          "sources": [
            "T0229",
            "L_FOP",
            "L_BOP",
            "T0179",
            "U_BFP"
          ]
        },
        {
          "id": "T0246",
          "relation": 2516,
          "rule": "balance_lo",
          "triangle": "BGH",
          "side": "lo",
          "value": "35993/200000",
          "sources": [
            "L_ABC",
            "L_FGH",
            "L_ACG",
            "L_BFH",
            "T0161",
            "L_BFG",
            "U_ACF"
          ]
        },
        {
          "id": "T0248",
          "relation": 2525,
          "rule": "balance_lo",
          "triangle": "GOP",
          "side": "lo",
          "value": "13/125",
          "sources": [
            "L_BFG",
            "T0230",
            "T0246",
            "L_FOP",
            "L_BOP",
            "L_FGH",
            "U_BFH"
          ]
        },
        {
          "id": "T0253",
          "relation": 2578,
          "rule": "balance_lo",
          "triangle": "BFP",
          "side": "lo",
          "value": "6211/31250",
          "sources": [
            "T0205",
            "T0225",
            "T0246",
            "L_FOP",
            "L_BOP",
            "L_FGH",
            "T0175"
          ]
        },
        {
          "id": "T0268",
          "relation": 4858,
          "rule": "linear",
          "triangle": "FGP",
          "side": "lo",
          "value": "184959/1000000",
          "sources": [
            "T0225",
            "T0248"
          ]
        },
        {
          "id": "T0271",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "168319/500000",
          "sources": [
            "L_ACG",
            "L_CGH",
            "T0211"
          ]
        },
        {
          "id": "T0279",
          "relation": 11,
          "rule": "sub",
          "triangle": "BFP",
          "side": "hi",
          "value": "396241/1000000",
          "sources": [
            "U_BFH",
            "T0179",
            "T0229"
          ]
        },
        {
          "id": "T0284",
          "relation": 15,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "497303/1000000",
          "sources": [
            "U_CFH",
            "T0179",
            "L_CHP"
          ]
        },
        {
          "id": "T0288",
          "relation": 19,
          "rule": "sub",
          "triangle": "GHO",
          "side": "hi",
          "value": "246929/500000",
          "sources": [
            "U_FGH",
            "T0210",
            "L_FHO"
          ]
        },
        {
          "id": "T0290",
          "relation": 20,
          "rule": "sub",
          "triangle": "FHP",
          "side": "hi",
          "value": "470001/1000000",
          "sources": [
            "U_FGH",
            "T0268",
            "T0225"
          ]
        },
        {
          "id": "T0292",
          "relation": 21,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "74823/250000",
          "sources": [
            "L_FHO",
            "T0230",
            "L_FOP"
          ]
        },
        {
          "id": "T0307",
          "relation": 486,
          "rule": "sumlo",
          "triangle": "FGP",
          "side": "lo",
          "value": "11733/62500",
          "sources": [
            "L_BFG",
            "T0292",
            "T0253",
            "L_FGH",
            "U_BFH"
          ]
        },
        {
          "id": "T0308",
          "relation": 488,
          "rule": "sumlo",
          "triangle": "BFO",
          "side": "lo",
          "value": "88211/500000",
          "sources": [
            "L_BFH",
            "L_FOP",
            "T0253",
            "L_FHO",
            "T0290"
          ]
        },
        {
          "id": "T0312",
          "relation": 523,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "174241/1000000",
          "sources": [
            "L_FGH",
            "L_FOP",
            "T0307",
            "L_FHO",
            "T0290"
          ]
        },
        {
          "id": "T0314",
          "relation": 525,
          "rule": "sumlo",
          "triangle": "AGH",
          "side": "lo",
          "value": "153103/1000000",
          "sources": [
            "L_ABG",
            "L_CGH",
            "L_ACG",
            "T0246",
            "U_BCG"
          ]
        },
        {
          "id": "T0324",
          "relation": 667,
          "rule": "sumlo",
          "triangle": "GHP",
          "side": "lo",
          "value": "104637/1000000",
          "sources": [
            "L_CGH",
            "T0292",
            "L_CHP",
            "L_FGH",
            "U_CFH"
          ]
        },
        {
          "id": "T0328",
          "relation": 775,
          "rule": "sumlo",
          "triangle": "BHP",
          "side": "lo",
          "value": "205079/1000000",
          "sources": [
            "L_BCP",
            "T0292",
            "T0253",
            "L_CHP",
            "T0284"
          ]
        },
        {
          "id": "T0329",
          "relation": 794,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "59189/500000",
          "sources": [
            "T0328",
            "L_FOP",
            "L_BOP",
            "T0292",
            "T0279"
          ]
        },
        {
          "id": "T0347",
          "relation": 2516,
          "rule": "balance_lo",
          "triangle": "BGH",
          "side": "lo",
          "value": "181647/1000000",
          "sources": [
            "L_ABC",
            "L_FGH",
            "L_ACG",
            "L_BFH",
            "T0271",
            "L_BFG",
            "U_ACF"
          ]
        },
        {
          "id": "T0352",
          "relation": 2578,
          "rule": "balance_lo",
          "triangle": "BFP",
          "side": "lo",
          "value": "202059/1000000",
          "sources": [
            "T0308",
            "T0324",
            "T0347",
            "L_FOP",
            "L_BOP",
            "L_FGH",
            "T0288"
          ]
        },
        {
          "id": "T0369",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "339103/1000000",
          "sources": [
            "L_ACG",
            "L_CGH",
            "T0314"
          ]
        },
        {
          "id": "T0378",
          "relation": 11,
          "rule": "sum",
          "triangle": "BFH",
          "side": "lo",
          "value": "70643/100000",
          "sources": [
            "T0352",
            "T0292",
            "T0328"
          ]
        },
        {
          "id": "T0379",
          "relation": 11,
          "rule": "sub",
          "triangle": "BFP",
          "side": "hi",
          "value": "377431/1000000",
          "sources": [
            "U_BFH",
            "T0292",
            "T0328"
          ]
        },
        {
          "id": "T0384",
          "relation": 15,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "48951/100000",
          "sources": [
            "U_CFH",
            "T0292",
            "L_CHP"
          ]
        },
        {
          "id": "T0388",
          "relation": 19,
          "rule": "sub",
          "triangle": "GHO",
          "side": "hi",
          "value": "245767/500000",
          "sources": [
            "U_FGH",
            "T0312",
            "L_FHO"
          ]
        },
        {
          "id": "T0390",
          "relation": 20,
          "rule": "sub",
          "triangle": "FHP",
          "side": "hi",
          "value": "46641/100000",
          "sources": [
            "U_FGH",
            "T0307",
            "T0324"
          ]
        },
        {
          "id": "T0392",
          "relation": 21,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "152189/500000",
          "sources": [
            "L_FHO",
            "T0329",
            "L_FOP"
          ]
        },
        {
          "id": "T0411",
          "relation": 486,
          "rule": "sumlo",
          "triangle": "FGP",
          "side": "lo",
          "value": "190863/1000000",
          "sources": [
            "L_BFG",
            "T0392",
            "T0352",
            "L_FGH",
            "U_BFH"
          ]
        },
        {
          "id": "T0412",
          "relation": 488,
          "rule": "sumlo",
          "triangle": "BFO",
          "side": "lo",
          "value": "45287/250000",
          "sources": [
            "T0378",
            "L_FOP",
            "T0352",
            "L_FHO",
            "T0390"
          ]
        },
        {
          "id": "T0417",
          "relation": 523,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "11013/62500",
          "sources": [
            "L_FGH",
            "L_FOP",
            "T0411",
            "L_FHO",
            "T0390"
          ]
        },
        {
          "id": "T0419",
          "relation": 525,
          "rule": "sumlo",
          "triangle": "AGH",
          "side": "lo",
          "value": "154047/1000000",
          "sources": [
            "L_ABG",
            "L_CGH",
            "L_ACG",
            "T0347",
            "U_BCG"
          ]
        },
        {
          "id": "T0428",
          "relation": 667,
          "rule": "sumlo",
          "triangle": "GHP",
          "side": "lo",
          "value": "105173/1000000",
          "sources": [
            "L_CGH",
            "T0392",
            "L_CHP",
            "L_FGH",
            "U_CFH"
          ]
        },
        {
          "id": "T0433",
          "relation": 775,
          "rule": "sumlo",
          "triangle": "BHP",
          "side": "lo",
          "value": "21187/100000",
          "sources": [
            "L_BCP",
            "T0392",
            "T0352",
            "L_CHP",
            "T0384"
          ]
        },
        {
          "id": "T0435",
          "relation": 794,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "31801/250000",
          "sources": [
            "T0433",
            "L_FOP",
            "L_BOP",
            "T0392",
            "T0379"
          ]
        },
        {
          "id": "T0454",
          "relation": 2516,
          "rule": "balance_lo",
          "triangle": "BGH",
          "side": "lo",
          "value": "9167/50000",
          "sources": [
            "L_ABC",
            "L_FGH",
            "L_ACG",
            "T0378",
            "T0369",
            "L_BFG",
            "U_ACF"
          ]
        },
        {
          "id": "T0459",
          "relation": 2578,
          "rule": "balance_lo",
          "triangle": "BFP",
          "side": "lo",
          "value": "102269/500000",
          "sources": [
            "T0412",
            "T0428",
            "T0454",
            "L_FOP",
            "L_BOP",
            "L_FGH",
            "T0388"
          ]
        },
        {
          "id": "T0474",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "340047/1000000",
          "sources": [
            "L_ACG",
            "L_CGH",
            "T0419"
          ]
        },
        {
          "id": "T0483",
          "relation": 11,
          "rule": "sum",
          "triangle": "BFH",
          "side": "lo",
          "value": "360393/500000",
          "sources": [
            "T0459",
            "T0392",
            "T0433"
          ]
        },
        {
          "id": "T0484",
          "relation": 11,
          "rule": "sub",
          "triangle": "BFP",
          "side": "hi",
          "value": "182777/500000",
          "sources": [
            "U_BFH",
            "T0392",
            "T0433"
          ]
        },
        {
          "id": "T0490",
          "relation": 15,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "60553/125000",
          "sources": [
            "U_CFH",
            "T0392",
            "L_CHP"
          ]
        },
        {
          "id": "T0494",
          "relation": 19,
          "rule": "sub",
          "triangle": "GHO",
          "side": "hi",
          "value": "489567/1000000",
          "sources": [
            "U_FGH",
            "T0417",
            "L_FHO"
          ]
        },
        {
          "id": "T0496",
          "relation": 20,
          "rule": "sub",
          "triangle": "FHP",
          "side": "hi",
          "value": "462739/1000000",
          "sources": [
            "U_FGH",
            "T0411",
            "T0428"
          ]
        },
        {
          "id": "T0498",
          "relation": 21,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "78301/250000",
          "sources": [
            "L_FHO",
            "T0435",
            "L_FOP"
          ]
        },
        {
          "id": "T0520",
          "relation": 486,
          "rule": "sumlo",
          "triangle": "FGP",
          "side": "lo",
          "value": "96871/500000",
          "sources": [
            "L_BFG",
            "T0498",
            "T0459",
            "L_FGH",
            "U_BFH"
          ]
        },
        {
          "id": "T0521",
          "relation": 488,
          "rule": "sumlo",
          "triangle": "BFO",
          "side": "lo",
          "value": "185969/1000000",
          "sources": [
            "T0483",
            "L_FOP",
            "T0459",
            "L_FHO",
            "T0496"
          ]
        },
        {
          "id": "T0526",
          "relation": 523,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "22273/125000",
          "sources": [
            "L_FGH",
            "L_FOP",
            "T0520",
            "L_FHO",
            "T0496"
          ]
        },
        {
          "id": "T0528",
          "relation": 525,
          "rule": "sumlo",
          "triangle": "AGH",
          "side": "lo",
          "value": "38749/250000",
          "sources": [
            "L_ABG",
            "L_CGH",
            "L_ACG",
            "T0454",
            "U_BCG"
          ]
        },
        {
          "id": "T0537",
          "relation": 667,
          "rule": "sumlo",
          "triangle": "GHP",
          "side": "lo",
          "value": "13263/125000",
          "sources": [
            "L_CGH",
            "T0498",
            "L_CHP",
            "L_FGH",
            "U_CFH"
          ]
        },
        {
          "id": "T0542",
          "relation": 775,
          "rule": "sumlo",
          "triangle": "BHP",
          "side": "lo",
          "value": "109827/500000",
          "sources": [
            "L_BCP",
            "T0498",
            "T0459",
            "L_CHP",
            "T0490"
          ]
        },
        {
          "id": "T0545",
          "relation": 794,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "135563/1000000",
          "sources": [
            "T0542",
            "L_FOP",
            "L_BOP",
            "T0498",
            "T0484"
          ]
        },
        {
          "id": "T0565",
          "relation": 2516,
          "rule": "balance_lo",
          "triangle": "BGH",
          "side": "lo",
          "value": "184953/1000000",
          "sources": [
            "L_ABC",
            "L_FGH",
            "L_ACG",
            "T0483",
            "T0474",
            "L_BFG",
            "U_ACF"
          ]
        },
        {
          "id": "T0570",
          "relation": 2578,
          "rule": "balance_lo",
          "triangle": "BFP",
          "side": "lo",
          "value": "41411/200000",
          "sources": [
            "T0521",
            "T0537",
            "T0565",
            "L_FOP",
            "L_BOP",
            "L_FGH",
            "T0494"
          ]
        },
        {
          "id": "T0588",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "85249/250000",
          "sources": [
            "L_ACG",
            "L_CGH",
            "T0528"
          ]
        },
        {
          "id": "T0598",
          "relation": 11,
          "rule": "sum",
          "triangle": "BFH",
          "side": "lo",
          "value": "739913/1000000",
          "sources": [
            "T0570",
            "T0498",
            "T0542"
          ]
        },
        {
          "id": "T0599",
          "relation": 11,
          "rule": "sub",
          "triangle": "BFP",
          "side": "hi",
          "value": "21809/62500",
          "sources": [
            "U_BFH",
            "T0498",
            "T0542"
          ]
        },
        {
          "id": "T0600",
          "relation": 11,
          "rule": "sub",
          "triangle": "FHP",
          "side": "hi",
          "value": "455093/1000000",
          "sources": [
            "U_BFH",
            "T0570",
            "T0542"
          ]
        },
        {
          "id": "T0605",
          "relation": 15,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "237799/500000",
          "sources": [
            "U_CFH",
            "T0498",
            "L_CHP"
          ]
        },
        {
          "id": "T0610",
          "relation": 19,
          "rule": "sub",
          "triangle": "GHO",
          "side": "hi",
          "value": "487591/1000000",
          "sources": [
            "U_FGH",
            "T0526",
            "L_FHO"
          ]
        },
        {
          "id": "T0613",
          "relation": 21,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "321563/1000000",
          "sources": [
            "L_FHO",
            "T0545",
            "L_FOP"
          ]
        },
        {
          "id": "T0635",
          "relation": 486,
          "rule": "sumlo",
          "triangle": "FGP",
          "side": "lo",
          "value": "196601/1000000",
          "sources": [
            "L_BFG",
            "T0613",
            "T0570",
            "L_FGH",
            "U_BFH"
          ]
        },
        {
          "id": "T0636",
          "relation": 488,
          "rule": "sumlo",
          "triangle": "BFO",
          "side": "lo",
          "value": "48379/250000",
          "sources": [
            "T0598",
            "L_FOP",
            "T0570",
            "L_FHO",
            "T0600"
          ]
        },
        {
          "id": "T0642",
          "relation": 523,
          "rule": "sumlo",
          "triangle": "FGO",
          "side": "lo",
          "value": "90881/500000",
          "sources": [
            "L_FGH",
            "L_FOP",
            "T0635",
            "L_FHO",
            "T0600"
          ]
        },
        {
          "id": "T0644",
          "relation": 525,
          "rule": "sumlo",
          "triangle": "AGH",
          "side": "lo",
          "value": "155901/1000000",
          "sources": [
            "L_ABG",
            "L_CGH",
            "L_ACG",
            "T0565",
            "U_BCG"
          ]
        },
        {
          "id": "T0654",
          "relation": 667,
          "rule": "sumlo",
          "triangle": "GHP",
          "side": "lo",
          "value": "21397/200000",
          "sources": [
            "L_CGH",
            "T0613",
            "L_CHP",
            "L_FGH",
            "U_CFH"
          ]
        },
        {
          "id": "T0659",
          "relation": 775,
          "rule": "sumlo",
          "triangle": "BHP",
          "side": "lo",
          "value": "114563/500000",
          "sources": [
            "L_BCP",
            "T0613",
            "T0570",
            "L_CHP",
            "T0605"
          ]
        },
        {
          "id": "T0663",
          "relation": 794,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "9173/62500",
          "sources": [
            "T0659",
            "L_FOP",
            "L_BOP",
            "T0613",
            "T0599"
          ]
        },
        {
          "id": "T0683",
          "relation": 2516,
          "rule": "balance_lo",
          "triangle": "BGH",
          "side": "lo",
          "value": "187071/1000000",
          "sources": [
            "L_ABC",
            "L_FGH",
            "L_ACG",
            "T0598",
            "T0588",
            "L_BFG",
            "U_ACF"
          ]
        },
        {
          "id": "T0688",
          "relation": 2578,
          "rule": "balance_lo",
          "triangle": "BFP",
          "side": "lo",
          "value": "21029/100000",
          "sources": [
            "T0636",
            "T0654",
            "T0683",
            "L_FOP",
            "L_BOP",
            "L_FGH",
            "T0610"
          ]
        },
        {
          "id": "T0709",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "341901/1000000",
          "sources": [
            "L_ACG",
            "L_CGH",
            "T0644"
          ]
        },
        {
          "id": "T0720",
          "relation": 11,
          "rule": "sum",
          "triangle": "BFH",
          "side": "lo",
          "value": "760979/1000000",
          "sources": [
            "T0688",
            "T0613",
            "T0659"
          ]
        },
        {
          "id": "T0721",
          "relation": 11,
          "rule": "sub",
          "triangle": "BFP",
          "side": "hi",
          "value": "331113/1000000",
          "sources": [
            "U_BFH",
            "T0613",
            "T0659"
          ]
        },
        {
          "id": "T0722",
          "relation": 11,
          "rule": "sub",
          "triangle": "FHP",
          "side": "hi",
          "value": "221193/500000",
          "sources": [
            "U_BFH",
            "T0688",
            "T0659"
          ]
        },
        {
          "id": "T0729",
          "relation": 15,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "467239/1000000",
          "sources": [
            "U_CFH",
            "T0613",
            "L_CHP"
          ]
        },
        {
          "id": "T0733",
          "relation": 19,
          "rule": "sub",
          "triangle": "GHO",
          "side": "hi",
          "value": "484013/1000000",
          "sources": [
            "U_FGH",
            "T0642",
            "L_FHO"
          ]
        },
        {
          "id": "T0736",
          "relation": 21,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "10399/31250",
          "sources": [
            "L_FHO",
            "T0663",
            "L_FOP"
          ]
        },
        {
          "id": "T0760",
          "relation": 488,
          "rule": "sumlo",
          "triangle": "BFO",
          "side": "lo",
          "value": "204183/1000000",
          "sources": [
            "T0720",
            "L_FOP",
            "T0688",
            "L_FHO",
            "T0722"
          ]
        },
        {
          "id": "T0779",
          "relation": 667,
          "rule": "sumlo",
          "triangle": "GHP",
          "side": "lo",
          "value": "108167/1000000",
          "sources": [
            "L_CGH",
            "T0736",
            "L_CHP",
            "L_FGH",
            "U_CFH"
          ]
        },
        {
          "id": "T0785",
          "relation": 775,
          "rule": "sumlo",
          "triangle": "BHP",
          "side": "lo",
          "value": "3007/12500",
          "sources": [
            "L_BCP",
            "T0736",
            "T0688",
            "L_CHP",
            "T0729"
          ]
        },
        {
          "id": "T0790",
          "relation": 794,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "161031/1000000",
          "sources": [
            "T0785",
            "L_FOP",
            "L_BOP",
            "T0736",
            "T0721"
          ]
        },
        {
          "id": "T0815",
          "relation": 2516,
          "rule": "balance_lo",
          "triangle": "BGH",
          "side": "lo",
          "value": "47347/250000",
          "sources": [
            "L_ABC",
            "L_FGH",
            "L_ACG",
            "T0720",
            "T0709",
            "L_BFG",
            "U_ACF"
          ]
        },
        {
          "id": "T0822",
          "relation": 2578,
          "rule": "balance_lo",
          "triangle": "BFP",
          "side": "lo",
          "value": "215147/1000000",
          "sources": [
            "T0760",
            "T0779",
            "T0815",
            "L_FOP",
            "L_BOP",
            "L_FGH",
            "T0733"
          ]
        },
        {
          "id": "T0846",
          "relation": 6,
          "rule": "sum",
          "triangle": "BCH",
          "side": "lo",
          "value": "93847/250000",
          "sources": [
            "L_BCG",
            "L_CGH",
            "T0815"
          ]
        },
        {
          "id": "T0854",
          "relation": 10,
          "rule": "sub",
          "triangle": "BHO",
          "side": "hi",
          "value": "584619/1000000",
          "sources": [
            "U_BFH",
            "T0760",
            "L_FHO"
          ]
        },
        {
          "id": "T0856",
          "relation": 11,
          "rule": "sub",
          "triangle": "BFP",
          "side": "hi",
          "value": "154237/500000",
          "sources": [
            "U_BFH",
            "T0736",
            "T0785"
          ]
        },
        {
          "id": "T0857",
          "relation": 11,
          "rule": "sub",
          "triangle": "FHP",
          "side": "hi",
          "value": "85219/200000",
          "sources": [
            "U_BFH",
            "T0822",
            "T0785"
          ]
        },
        {
          "id": "T0859",
          "relation": 12,
          "rule": "sum",
          "triangle": "BHO",
          "side": "lo",
          "value": "494591/1000000",
          "sources": [
            "T0785",
            "L_BOP",
            "T0790"
          ]
        },
        {
          "id": "T0860",
          "relation": 12,
          "rule": "sub",
          "triangle": "BHP",
          "side": "hi",
          "value": "82647/250000",
          "sources": [
            "T0854",
            "L_BOP",
            "T0790"
          ]
        },
        {
          "id": "T0866",
          "relation": 15,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "228017/500000",
          "sources": [
            "U_CFH",
            "T0736",
            "L_CHP"
          ]
        },
        {
          "id": "T0874",
          "relation": 21,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "347031/1000000",
          "sources": [
            "L_FHO",
            "T0790",
            "L_FOP"
          ]
        },
        {
          "id": "T0876",
          "relation": 21,
          "rule": "sub",
          "triangle": "HOP",
          "side": "hi",
          "value": "48019/200000",
          "sources": [
            "T0857",
            "L_FHO",
            "L_FOP"
          ]
        },
        {
          "id": "T0939",
          "relation": 732,
          "rule": "sumlo",
          "triangle": "BFO",
          "side": "lo",
          "value": "227601/1000000",
          "sources": [
            "T0859",
            "L_FOP",
            "L_BOP",
            "L_FHO",
            "T0876"
          ]
        },
        {
          "id": "T0944",
          "relation": 775,
          "rule": "sumlo",
          "triangle": "BHP",
          "side": "lo",
          "value": "256187/1000000",
          "sources": [
            "L_BCP",
            "T0874",
            "T0822",
            "L_CHP",
            "T0866"
          ]
        },
        {
          "id": "T0950",
          "relation": 794,
          "rule": "sumlo",
          "triangle": "BFP",
          "side": "lo",
          "value": "116827/500000",
          "sources": [
            "T0944",
            "L_FOP",
            "L_BOP",
            "T0874",
            "T0876"
          ]
        },
        {
          "id": "T0951",
          "relation": 794,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "9093/50000",
          "sources": [
            "T0944",
            "L_FOP",
            "L_BOP",
            "T0874",
            "T0856"
          ]
        },
        {
          "id": "T0980",
          "relation": 2349,
          "rule": "balance_lo",
          "triangle": "CFO",
          "side": "lo",
          "value": "124059/500000",
          "sources": [
            "T0846",
            "L_FOP",
            "L_BCP",
            "L_FHO",
            "T0939",
            "L_CHP",
            "T0860"
          ]
        },
        {
          "id": "T1038",
          "relation": 10,
          "rule": "sub",
          "triangle": "BHO",
          "side": "hi",
          "value": "561201/1000000",
          "sources": [
            "U_BFH",
            "T0939",
            "L_FHO"
          ]
        },
        {
          "id": "T1039",
          "relation": 11,
          "rule": "sum",
          "triangle": "BFH",
          "side": "lo",
          "value": "104609/125000",
          "sources": [
            "T0950",
            "T0874",
            "T0944"
          ]
        },
        {
          "id": "T1041",
          "relation": 11,
          "rule": "sub",
          "triangle": "FHP",
          "side": "hi",
          "value": "391961/1000000",
          "sources": [
            "U_BFH",
            "T0950",
            "T0944"
          ]
        },
        {
          "id": "T1044",
          "relation": 12,
          "rule": "sub",
          "triangle": "BHP",
          "side": "hi",
          "value": "286341/1000000",
          "sources": [
            "T1038",
            "L_BOP",
            "T0951"
          ]
        },
        {
          "id": "T1049",
          "relation": 14,
          "rule": "sub",
          "triangle": "CHO",
          "side": "hi",
          "value": "135171/250000",
          "sources": [
            "U_CFH",
            "T0980",
            "L_FHO"
          ]
        },
        {
          "id": "T1051",
          "relation": 15,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "441771/1000000",
          "sources": [
            "U_CFH",
            "T0874",
            "L_CHP"
          ]
        },
        {
          "id": "T1055",
          "relation": 16,
          "rule": "sub",
          "triangle": "COP",
          "side": "hi",
          "value": "8307/31250",
          "sources": [
            "T1049",
            "L_CHP",
            "T0951"
          ]
        },
        {
          "id": "T1060",
          "relation": 21,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "18393/50000",
          "sources": [
            "L_FHO",
            "T0951",
            "L_FOP"
          ]
        },
        {
          "id": "T1062",
          "relation": 21,
          "rule": "sub",
          "triangle": "HOP",
          "side": "hi",
          "value": "205961/1000000",
          "sources": [
            "T1041",
            "L_FHO",
            "L_FOP"
          ]
        },
        {
          "id": "T1076",
          "relation": 163,
          "rule": "sumlo",
          "triangle": "BFP",
          "side": "lo",
          "value": "121291/500000",
          "sources": [
            "T1039",
            "L_BOP",
            "T0939",
            "T0944",
            "T1038"
          ]
        },
        {
          "id": "T1168",
          "relation": 775,
          "rule": "sumlo",
          "triangle": "BHP",
          "side": "lo",
          "value": "283389/1000000",
          "sources": [
            "L_BCP",
            "T1060",
            "T1076",
            "L_CHP",
            "T1051"
          ]
        },
        {
          "id": "T1169",
          "relation": 775,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "13663/31250",
          "sources": [
            "L_BCP",
            "T1060",
            "T1076",
            "L_CHP",
            "T1044"
          ]
        },
        {
          "id": "T1170",
          "relation": 775,
          "rule": "diffhi",
          "triangle": "BCP",
          "side": "hi",
          "value": "141273/500000",
          "sources": [
            "T1044",
            "T1051",
            "T1076",
            "L_CHP",
            "T1060"
          ]
        },
        {
          "id": "T1172",
          "relation": 775,
          "rule": "diffhi",
          "triangle": "BFP",
          "side": "hi",
          "value": "51321/200000",
          "sources": [
            "T1044",
            "T1051",
            "L_BCP",
            "T1060",
            "L_CHP"
          ]
        },
        {
          "id": "T1173",
          "relation": 775,
          "rule": "diffhi",
          "triangle": "CHP",
          "side": "hi",
          "value": "12297/125000",
          "sources": [
            "T1044",
            "T1051",
            "L_BCP",
            "T1060",
            "T1076"
          ]
        },
        {
          "id": "T1175",
          "relation": 776,
          "rule": "sumlo",
          "triangle": "COP",
          "side": "lo",
          "value": "129787/500000",
          "sources": [
            "L_BCP",
            "L_FOP",
            "L_BOP",
            "T1169",
            "T1172"
          ]
        },
        {
          "id": "T1176",
          "relation": 776,
          "rule": "diffhi",
          "triangle": "BOP",
          "side": "hi",
          "value": "24167/250000",
          "sources": [
            "T1172",
            "T1055",
            "L_BCP",
            "L_FOP",
            "T1169"
          ]
        },
        {
          "id": "T1181",
          "relation": 779,
          "rule": "sumhi",
          "triangle": "BHP",
          "side": "hi",
          "value": "10433/40000",
          "sources": [
            "T1170",
            "T1062",
            "T1176",
            "T1173",
            "T1175"
          ]
        }
      ],
      "physical": {}
    }
  ],
  "terminal": {
    "kind": "scalar",
    "stage": 9,
    "contradiction": {
      "triangle": "BHP",
      "lower": "T1168",
      "upper": "T1181"
    }
  },
  "word": "CEF"
}
```
