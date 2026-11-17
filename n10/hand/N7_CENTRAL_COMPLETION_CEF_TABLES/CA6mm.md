# CA6mm

```n7-central-cef-packet
{
  "id": "CA6mm",
  "cell": "CA",
  "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "AFG-",
    "BFG-",
    "GOP-"
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
        "GOP-"
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
        "GOP": -1,
        "AOP": -1,
        "BOP": -1
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
            "OACGP"
          ],
          "target": "AOP",
          "sign": -1,
          "deps": [
            "ACO",
            "GOP",
            "AGO",
            "COP",
            "CGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OBCGP"
          ],
          "target": "BOP",
          "sign": -1,
          "deps": [
            "BCO",
            "GOP",
            "BGO",
            "COP",
            "CGO"
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
        "L_BCF": {
          "triangle": "BCF",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BCF",
            "points": [
              "G"
            ]
          }
        },
        "L_BCO": {
          "triangle": "BCO",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "BCO",
            "points": [
              "G",
              "P"
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
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GCO",
            "points": [
              "P"
            ]
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
              "1940002719/40000000000",
              "23082243/200000000",
              "24104013507/200000000000",
              "44582709347/200000000000",
              "286790679/1000000000",
              "58986709259/200000000000",
              "530447159/1000000000",
              "701826623/1000000000"
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
        "U_CHO": {
          "triangle": "CHO",
          "side": "hi",
          "value": "174665326617/250000000000",
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
              "-31987275869/100000000000",
              "-811763033/4000000000",
              "-33340227081/500000000000",
              "-11339884389/500000000000",
              "71909207/500000000",
              "3227819/20000000",
              "17139724131/100000000000",
              "117485066889/500000000000",
              "139485409581/500000000000",
              "1153316967/4000000000",
              "21353246217/62500000000",
              "6203292477/15625000000",
              "317544207/500000000",
              "160825631853/250000000000",
              "13053219/20000000",
              "174665326617/250000000000"
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
        }
      },
      "relations": {
        "6": {
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
        "12": {
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
        "119": {
          "row": [
            "plu",
            "ACO",
            "BCG",
            "ABC",
            "CGO",
            "ACG",
            "BCO"
          ],
          "witness": {
            "kind": "plu",
            "word": "CABGO"
          }
        },
        "184": {
          "row": [
            "plu",
            "BCH",
            "CFG",
            "BCF",
            "CGH",
            "BCG",
            "CFH"
          ],
          "witness": {
            "kind": "plu",
            "word": "CBFGH"
          }
        },
        "185": {
          "row": [
            "plu",
            "BCO",
            "CFG",
            "BCF",
            "CGO",
            "BCG",
            "CFO"
          ],
          "witness": {
            "kind": "plu",
            "word": "CBFGO"
          }
        },
        "1035": {
          "row": [
            "support",
            "CGO",
            "FGO",
            "CFG",
            "1023/1000"
          ],
          "witness": {
            "kind": "five_support",
            "poly": "GCDFO"
          }
        },
        "2812": {
          "row": [
            "linear",
            {
              "CFG": "-93/1000",
              "FGH": "254901/500000",
              "FGO": "-440901/500000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFH",
            "point": "O",
            "line": "FG",
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
        "2999": {
          "row": [
            "linear",
            {
              "FHO": "-93/1000",
              "CFO": "128165326617/250000000000",
              "FOP": "-174665326617/250000000000"
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
              "value": "174665326617/250000000000"
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
            "residual": "104915326617/250000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0036",
          "relation": 119,
          "rule": "sumlo",
          "triangle": "BCG",
          "side": "lo",
          "value": "7271/62500",
          "sources": [
            "L_ABC",
            "L_CGO",
            "L_ACG",
            "L_BCO",
            "U_ACO"
          ]
        },
        {
          "id": "T0049",
          "relation": 184,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "137699/1000000",
          "sources": [
            "L_BCF",
            "L_CGH",
            "T0036",
            "L_CFH",
            "U_BCH"
          ]
        },
        {
          "id": "T0121",
          "relation": 2812,
          "rule": "linear",
          "triangle": "FGO",
          "side": "hi",
          "value": "424153/1000000",
          "sources": [
            "T0049",
            "U_FGH"
          ]
        },
        {
          "id": "T0129",
          "relation": 2999,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "35903/250000",
          "sources": [
            "L_FHO",
            "L_FOP"
          ]
        },
        {
          "id": "T0148",
          "relation": 12,
          "rule": "sub",
          "triangle": "CHO",
          "side": "hi",
          "value": "64519/100000",
          "sources": [
            "U_CFH",
            "T0129",
            "L_FHO"
          ]
        },
        {
          "id": "T0173",
          "relation": 1035,
          "rule": "support_z",
          "triangle": "CFG",
          "side": "lo",
          "value": "163321/1000000",
          "sources": [
            "L_CGO",
            "T0121"
          ]
        },
        {
          "id": "T0191",
          "relation": 6,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "372657/1000000",
          "sources": [
            "T0036",
            "T0173",
            "L_BFG"
          ]
        },
        {
          "id": "T0198",
          "relation": 185,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "171949/1000000",
          "sources": [
            "T0191",
            "L_CGO",
            "T0036",
            "T0129",
            "U_BCO"
          ]
        },
        {
          "id": "T0212",
          "relation": 6,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "76257/200000",
          "sources": [
            "T0036",
            "T0198",
            "L_BFG"
          ]
        },
        {
          "id": "T0219",
          "relation": 185,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "175379/1000000",
          "sources": [
            "T0212",
            "L_CGO",
            "T0036",
            "T0129",
            "U_BCO"
          ]
        },
        {
          "id": "T0229",
          "relation": 6,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "76943/200000",
          "sources": [
            "T0036",
            "T0219",
            "L_BFG"
          ]
        },
        {
          "id": "T0233",
          "relation": 185,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "88371/500000",
          "sources": [
            "T0229",
            "L_CGO",
            "T0036",
            "T0129",
            "U_BCO"
          ]
        },
        {
          "id": "T0240",
          "relation": 6,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "193039/500000",
          "sources": [
            "T0036",
            "T0233",
            "L_BFG"
          ]
        },
        {
          "id": "T0242",
          "relation": 185,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "44321/250000",
          "sources": [
            "T0240",
            "L_CGO",
            "T0036",
            "T0129",
            "U_BCO"
          ]
        },
        {
          "id": "T0249",
          "relation": 6,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "19331/50000",
          "sources": [
            "T0036",
            "T0242",
            "L_BFG"
          ]
        },
        {
          "id": "T0251",
          "relation": 185,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "71/400",
          "sources": [
            "T0249",
            "L_CGO",
            "T0036",
            "T0129",
            "U_BCO"
          ]
        },
        {
          "id": "T0258",
          "relation": 6,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "96709/250000",
          "sources": [
            "T0036",
            "T0251",
            "L_BFG"
          ]
        },
        {
          "id": "T0260",
          "relation": 185,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "35517/200000",
          "sources": [
            "T0258",
            "L_CGO",
            "T0036",
            "T0129",
            "U_BCO"
          ]
        },
        {
          "id": "T0267",
          "relation": 6,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "386921/1000000",
          "sources": [
            "T0036",
            "T0260",
            "L_BFG"
          ]
        },
        {
          "id": "T0269",
          "relation": 185,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "177619/1000000",
          "sources": [
            "T0267",
            "L_CGO",
            "T0036",
            "T0129",
            "U_BCO"
          ]
        },
        {
          "id": "T0276",
          "relation": 6,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "77391/200000",
          "sources": [
            "T0036",
            "T0269",
            "L_BFG"
          ]
        },
        {
          "id": "T0278",
          "relation": 185,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "177633/1000000",
          "sources": [
            "T0276",
            "L_CGO",
            "T0036",
            "T0129",
            "U_BCO"
          ]
        },
        {
          "id": "T0285",
          "relation": 6,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "386969/1000000",
          "sources": [
            "T0036",
            "T0278",
            "L_BFG"
          ]
        },
        {
          "id": "T0287",
          "relation": 185,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "88819/500000",
          "sources": [
            "T0285",
            "L_CGO",
            "T0036",
            "T0129",
            "U_BCO"
          ]
        },
        {
          "id": "T0293",
          "relation": 6,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "193487/500000",
          "sources": [
            "T0036",
            "T0287",
            "L_BFG"
          ]
        },
        {
          "id": "T0295",
          "relation": 185,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "4441/25000",
          "sources": [
            "T0293",
            "L_CGO",
            "T0036",
            "T0129",
            "U_BCO"
          ]
        },
        {
          "id": "T0300",
          "relation": 6,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "12093/31250",
          "sources": [
            "T0036",
            "T0295",
            "L_BFG"
          ]
        },
        {
          "id": "T0302",
          "relation": 185,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "177641/1000000",
          "sources": [
            "T0300",
            "L_CGO",
            "T0036",
            "T0129",
            "U_BCO"
          ]
        },
        {
          "id": "T0306",
          "relation": 6,
          "rule": "sum",
          "triangle": "BCF",
          "side": "lo",
          "value": "386977/1000000",
          "sources": [
            "T0036",
            "T0302",
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
              "-386977/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCF",
            "side": "lo",
            "reference": "T0306",
            "value": "386977/1000000"
          }
        },
        "72": {
          "name": "AREA_LO_BCG",
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
                1,
                8
              ],
              "-1"
            ],
            [
              [],
              "-7271/62500"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCG",
            "side": "lo",
            "reference": "T0036",
            "value": "7271/62500"
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
              "-13857/20000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCO",
            "side": "lo",
            "reference": "L_BCO",
            "value": "13857/20000"
          }
        },
        "94": {
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
        "101": {
          "name": "AREA_HI_CHO",
          "terms": [
            [
              [],
              "64519/100000"
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
                7,
                9
              ],
              "-1"
            ],
            [
              [
                2,
                7
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CHO",
            "side": "hi",
            "reference": "T0148",
            "value": "64519/100000"
          }
        }
      },
      "coordinate": {
        "low": [
          "139/1000",
          "108013/1000000",
          "27247/31250",
          "120187/1000000",
          "42297/100000",
          "617/1000",
          "10881/40000",
          "307011/500000",
          "30069/200000",
          "690737/1000000",
          "895399/1000000",
          "247737/1000000",
          "8559/25000"
        ],
        "high": [
          "585973/1000000",
          "117911/1000000",
          "440901/500000",
          "604217/1000000",
          "35083/40000",
          "653157/1000000",
          "164057/250000",
          "357831/500000",
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
              "113121/200000"
            ],
            "lines": [
              [
                "-1/1",
                "305873/1000000"
              ],
              [
                "-1/1",
                "19793/40000"
              ]
            ],
            "raw": [
              "108013/1000000",
              "19793/40000"
            ],
            "new": [
              "108013/1000000",
              "19793/40000"
            ]
          },
          {
            "factor": 72,
            "target": "z",
            "old": [
              "69759/500000",
              "586047/1000000"
            ],
            "lines": [
              [
                "584837/1000000",
                "-7271/62500"
              ],
              [
                "7921/40000",
                "-7271/62500"
              ],
              [
                "773789/1000000",
                "-7271/62500"
              ],
              [
                "386977/1000000",
                "-7271/62500"
              ]
            ],
            "raw": [
              "116336/773789",
              "586047/1000000"
            ],
            "new": [
              "30069/200000",
              "586047/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "10881/40000",
              "26631/40000"
            ],
            "lines": [
              [
                "-307011/500000",
                "4565172189/20000000000"
              ],
              [
                "-307011/500000",
                "157935652977/500000000000"
              ],
              [
                "-1/1",
                "1982733867/4000000000"
              ],
              [
                "-1/1",
                "65622747831/100000000000"
              ],
              [
                "-307011/500000",
                "-58894017/800000000"
              ],
              [
                "-307011/500000",
                "-1366631781/20000000000"
              ],
              [
                "-1/1",
                "3876146721/20000000000"
              ],
              [
                "-1/1",
                "136012291653/500000000000"
              ]
            ],
            "raw": [
              "10881/40000",
              "65622747831/100000000000"
            ],
            "new": [
              "10881/40000",
              "164057/250000"
            ]
          },
          {
            "factor": 88,
            "target": "b",
            "old": [
              "108013/1000000",
              "19793/40000"
            ],
            "lines": [
              [
                "-76231/200000",
                "-1715067033/4000000000"
              ],
              [
                "-76231/200000",
                "-35674675869/100000000000"
              ],
              [
                "-907/1000",
                "-1288701/20000000"
              ],
              [
                "-907/1000",
                "53472207/500000000"
              ]
            ],
            "raw": [
              "108013/1000000",
              "53472207/453500000"
            ],
            "new": [
              "108013/1000000",
              "117911/1000000"
            ]
          },
          {
            "factor": 88,
            "target": "c",
            "old": [
              "13857/20000",
              "440901/500000"
            ],
            "lines": [
              [
                "76231/200000",
                "-146803939003/200000000000"
              ],
              [
                "76231/200000",
                "-147558473441/200000000000"
              ],
              [
                "907/1000",
                "-790817791/1000000000"
              ],
              [
                "907/1000",
                "-799795277/1000000000"
              ]
            ],
            "raw": [
              "790817791/907000000",
              "440901/500000"
            ],
            "new": [
              "27247/31250",
              "440901/500000"
            ]
          },
          {
            "factor": 88,
            "target": "y",
            "old": [
              "76231/200000",
              "907/1000"
            ],
            "lines": [
              [
                "763891/1000000",
                "-13857/20000"
              ],
              [
                "753993/1000000",
                "-13857/20000"
              ],
              [
                "773789/1000000",
                "-13857/20000"
              ]
            ],
            "raw": [
              "692850/773789",
              "907/1000"
            ],
            "new": [
              "895399/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 94,
            "target": "e",
            "old": [
              "42297/100000",
              "907/1000"
            ],
            "lines": [
              [
                "-195587/500000",
                "338236183/1000000000"
              ],
              [
                "-81997/125000",
                "287669814499/500000000000"
              ],
              [
                "1564/15625",
                "-153033817/1000000000"
              ],
              [
                "-82353/500000",
                "42034814499/500000000000"
              ],
              [
                "-195587/500000",
                "333793/1000000"
              ],
              [
                "-81997/125000",
                "286984207/500000000"
              ],
              [
                "1564/15625",
                "-157477/1000000"
              ],
              [
                "-82353/500000",
                "41349207/500000000"
              ]
            ],
            "raw": [
              "42297/100000",
              "287669814499/327988000000"
            ],
            "new": [
              "42297/100000",
              "35083/40000"
            ]
          },
          {
            "factor": 96,
            "target": "f",
            "old": [
              "617/1000",
              "440901/500000"
            ],
            "lines": [
              [
                "-281377/1000000",
                "-1459033043/250000000000"
              ],
              [
                "104601/1000000",
                "-93/1000"
              ],
              [
                "-281377/1000000",
                "11486454993/62500000000"
              ],
              [
                "-146489/500000",
                "-1459033043/250000000000"
              ],
              [
                "93/1000",
                "-93/1000"
              ],
              [
                "-146489/500000",
                "11486454993/62500000000"
              ]
            ],
            "raw": [
              "617/1000",
              "11486454993/17586062500"
            ],
            "new": [
              "617/1000",
              "653157/1000000"
            ]
          },
          {
            "factor": 96,
            "target": "h",
            "old": [
              "307011/500000",
              "1/1"
            ],
            "lines": [
              [
                "195587/500000",
                "-419635183/1000000000"
              ],
              [
                "427331/1000000",
                "-452010124643/1000000000000"
              ],
              [
                "-1564/15625",
                "71634817/1000000000"
              ],
              [
                "-63939/1000000",
                "39259875357/1000000000000"
              ],
              [
                "195587/500000",
                "-426793/1000000"
              ],
              [
                "427331/1000000",
                "-459587399/1000000000"
              ],
              [
                "-1564/15625",
                "64477/1000000"
              ],
              [
                "-63939/1000000",
                "31682601/1000000000"
              ]
            ],
            "raw": [
              "307011/500000",
              "71634817/100096000"
            ],
            "new": [
              "307011/500000",
              "357831/500000"
            ]
          },
          {
            "factor": 96,
            "target": "x",
            "old": [
              "112913/500000",
              "89637/125000"
            ],
            "lines": [
              [
                "192989/500000",
                "-266609609/1000000000"
              ],
              [
                "192989/500000",
                "-276783357189/1000000000000"
              ],
              [
                "142169/500000",
                "-203897729/1000000000"
              ],
              [
                "142169/500000",
                "-210396479709/1000000000000"
              ],
              [
                "192989/500000",
                "-136883713/500000000"
              ],
              [
                "192989/500000",
                "-142180315773/500000000000"
              ],
              [
                "142169/500000",
                "-105527773/500000000"
              ],
              [
                "142169/500000",
                "-108986877033/500000000000"
              ]
            ],
            "raw": [
              "266609609/385978000",
              "89637/125000"
            ],
            "new": [
              "690737/1000000",
              "89637/125000"
            ]
          },
          {
            "factor": 98,
            "target": "a",
            "old": [
              "139/1000",
              "683603/1000000"
            ],
            "lines": [
              [
                "-690737/1000000",
                "165563857107/500000000000"
              ],
              [
                "-690737/1000000",
                "200667111447/500000000000"
              ],
              [
                "-89637/125000",
                "21707045007/62500000000"
              ],
              [
                "-89637/125000",
                "26262397347/62500000000"
              ]
            ],
            "raw": [
              "139/1000",
              "8754132449/14939500000"
            ],
            "new": [
              "139/1000",
              "585973/1000000"
            ]
          }
        ],
        "contradiction": {
          "factor": 101,
          "target": "c",
          "old": [
            "27247/31250",
            "440901/500000"
          ],
          "lines": [
            [
              "-281377/1000000",
              "110531142893/500000000000"
            ],
            [
              "-179737/1000000",
              "75427888553/500000000000"
            ],
            [
              "-281377/1000000",
              "12804829993/62500000000"
            ],
            [
              "-179737/1000000",
              "8249477653/62500000000"
            ],
            [
              "-146489/500000",
              "110531142893/500000000000"
            ],
            [
              "-95669/500000",
              "75427888553/500000000000"
            ],
            [
              "-146489/500000",
              "12804829993/62500000000"
            ],
            [
              "-95669/500000",
              "8249477653/62500000000"
            ]
          ]
        }
      }
    }
  ],
  "terminal": {
    "kind": "box",
    "stage": 7,
    "contradiction": {
      "factor": 101,
      "target": "c",
      "old": [
        "27247/31250",
        "440901/500000"
      ],
      "lines": [
        [
          "-281377/1000000",
          "110531142893/500000000000"
        ],
        [
          "-179737/1000000",
          "75427888553/500000000000"
        ],
        [
          "-281377/1000000",
          "12804829993/62500000000"
        ],
        [
          "-179737/1000000",
          "8249477653/62500000000"
        ],
        [
          "-146489/500000",
          "110531142893/500000000000"
        ],
        [
          "-95669/500000",
          "75427888553/500000000000"
        ],
        [
          "-146489/500000",
          "12804829993/62500000000"
        ],
        [
          "-95669/500000",
          "8249477653/62500000000"
        ]
      ]
    }
  },
  "word": "CEF"
}
```
