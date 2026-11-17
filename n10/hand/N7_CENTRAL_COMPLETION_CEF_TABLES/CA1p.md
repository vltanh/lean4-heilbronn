# CA1p

```n7-central-cef-packet
{
  "id": "CA1p",
  "cell": "CA",
  "given": [
    "AGO-",
    "AGP-",
    "DGP-",
    "AFG+",
    "FGO+"
  ],
  "stages": [
    {
      "id": 0,
      "assumptions": [
        "AGO-",
        "AGP-",
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
        "AGO": -1,
        "AGP": -1,
        "DGP": -1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "BDG": 1,
        "DGH": -1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "ADP": 1,
        "BDP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEO": 1,
        "BEG": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "CABHO"
          ],
          "target": "ACO",
          "sign": 1,
          "deps": [
            "ABC",
            "CHO",
            "ACH",
            "BCO",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CABHP"
          ],
          "target": "ACP",
          "sign": 1,
          "deps": [
            "ABC",
            "CHP",
            "ACH",
            "BCP",
            "BCH"
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
            "GABCO"
          ],
          "target": "BGO",
          "sign": -1,
          "deps": [
            "ABG",
            "CGO",
            "ACG",
            "AGO",
            "BCG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GABCP"
          ],
          "target": "BGP",
          "sign": -1,
          "deps": [
            "ABG",
            "CGP",
            "ACG",
            "AGP",
            "BCG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACDO"
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ACG",
            "DGO",
            "CGO",
            "AGO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACHO"
          ],
          "target": "GHO",
          "sign": -1,
          "deps": [
            "ACG",
            "AGH",
            "CGO",
            "AGO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACHP"
          ],
          "target": "GHP",
          "sign": -1,
          "deps": [
            "ACG",
            "AGH",
            "CGP",
            "AGP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GBCDO"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "BCG",
            "DGO",
            "CGO",
            "BGO",
            "CDG"
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
            "OACDG"
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACO",
            "DGO",
            "CGO",
            "AGO",
            "CDO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OBCDG"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "BCO",
            "DGO",
            "CGO",
            "BGO",
            "CDO"
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
            "PACDG"
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACP",
            "DGP",
            "CGP",
            "AGP",
            "CDP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PBCDG"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "BCP",
            "DGP",
            "CGP",
            "BGP",
            "CDP"
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
            "BAEGO"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "BGO",
            "ABG",
            "BEO",
            "ABO"
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
        "L_ADG": {
          "triangle": "ADG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ADG",
            "points": []
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
        "L_AGO": {
          "triangle": "AGO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GAO",
            "points": []
          }
        },
        "L_AHO": {
          "triangle": "AHO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HAO",
            "points": [
              "G"
            ]
          }
        },
        "L_AHP": {
          "triangle": "AHP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HAP",
            "points": [
              "G"
            ]
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
        "L_DGP": {
          "triangle": "DGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GDP",
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
        "U_ACH": {
          "triangle": "ACH",
          "side": "hi",
          "value": "760263/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACH",
            "used": [
              0,
              2,
              7
            ],
            "values": [
              "-7947/125000",
              "-124713/2500000",
              "872991/4000000",
              "55629/200000",
              "3284109/10000000",
              "209271/500000",
              "11930877/20000000",
              "760263/1000000"
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
              "-9/125",
              "63/200",
              "237/500",
              "861/1000"
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
        "1": {
          "row": [
            "fan",
            "ADH",
            "ADG",
            "DGH",
            "AGH"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ADH",
            "point": "G"
          }
        },
        "1808": {
          "row": [
            "linear",
            {
              "ABH": "-93/1000",
              "BCH": "574263/1000000",
              "BGH": "-760263/1000000"
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
              "value": "760263/1000000"
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
            "residual": "481263/1000000"
          }
        },
        "1822": {
          "row": [
            "linear",
            {
              "ACH": "-93/1000",
              "CGH": "760263/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACH",
            "point": "G",
            "line": "CH",
            "side": "lower",
            "outer_upper": {
              "triangle": "ACH",
              "ref": "U_ACH",
              "value": "760263/1000000"
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
            "residual": "481263/1000000"
          }
        },
        "2039": {
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
        "2062": {
          "row": [
            "linear",
            {
              "BCH": "-93/1000",
              "CGH": "31/40"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "BCH",
            "point": "G",
            "line": "CH",
            "side": "lower",
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
        "2380": {
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
        "2386": {
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
        "2529": {
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
        "2568": {
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
          "id": "T0004",
          "relation": 1,
          "rule": "sub",
          "triangle": "DGH",
          "side": "hi",
          "value": "27/40",
          "sources": [
            "U_ADH",
            "L_ADG",
            "L_AGH"
          ]
        },
        {
          "id": "T0074",
          "relation": 2529,
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
          "id": "T0076",
          "relation": 2568,
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
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AHO",
            "side": "lo",
            "reference": "L_AHO",
            "value": "279/1000"
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
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AHP",
            "side": "lo",
            "reference": "L_AHP",
            "value": "279/1000"
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
        "138": {
          "name": "AREA_LO_AGO",
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
                0,
                6
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
            "triangle": "AGO",
            "side": "lo",
            "reference": "L_AGO",
            "value": "93/1000"
          }
        },
        "142": {
          "name": "AREA_LO_DGP",
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
                3,
                6
              ],
              "1"
            ],
            [
              [
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
                8
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
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DGP",
            "side": "lo",
            "reference": "L_DGP",
            "value": "93/1000"
          }
        },
        "162": {
          "name": "AREA_LO_ADG",
          "terms": [
            [
              [
                8
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
                6
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
            "triangle": "ADG",
            "side": "lo",
            "reference": "L_ADG",
            "value": "93/1000"
          }
        },
        "178": {
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
        "184": {
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
            "reference": "T0074",
            "value": "67009/500000"
          }
        },
        "188": {
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
        "192": {
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
            "reference": "T0076",
            "value": "1369/10000"
          }
        },
        "210": {
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
        "214": {
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
        "215": {
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
        "1026": {
          "name": "LINEAR_1808",
          "terms": [
            [
              [
                1,
                7
              ],
              "93/1000"
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
                2,
                7
              ],
              "574263/1000000"
            ],
            [
              [
                6,
                7
              ],
              "-760263/1000000"
            ],
            [
              [
                1,
                8
              ],
              "-760263/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1808
          }
        },
        "1040": {
          "name": "LINEAR_1822",
          "terms": [
            [
              [
                2,
                7
              ],
              "667263/1000000"
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
                6,
                7
              ],
              "-760263/1000000"
            ],
            [
              [
                2,
                8
              ],
              "-760263/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1822
          }
        },
        "1257": {
          "name": "LINEAR_2039",
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
            "index": 2039
          }
        },
        "1280": {
          "name": "LINEAR_2062",
          "terms": [
            [
              [
                2,
                7
              ],
              "341/500"
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
                6,
                7
              ],
              "-31/40"
            ],
            [
              [
                2,
                8
              ],
              "-31/40"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2062
          }
        },
        "1598": {
          "name": "LINEAR_2380",
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
            "index": 2380
          }
        },
        "1604": {
          "name": "LINEAR_2386",
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
            "index": 2386
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
          "30501/100000",
          "324041/1000000",
          "190319/500000",
          "324041/1000000",
          "140809/500000"
        ],
        "high": [
          "620091/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "32503/62500",
          "1/1",
          "379813/500000",
          "146673/200000",
          "907/1000",
          "733651/1000000",
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
            "target": "a",
            "old": [
              "139/1000",
              "10688/15625"
            ],
            "lines": [
              [
                "-27/250",
                "-53199/250000"
              ],
              [
                "-27/250",
                "-171/1000"
              ],
              [
                "-88183/100000",
                "26156179/100000000"
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
            "factor": 98,
            "target": "x",
            "old": [
              "27/250",
              "88183/100000"
            ],
            "lines": [
              [
                "237/500",
                "-279/1000"
              ],
              [
                "-70613/1000000",
                "-279/1000"
              ],
              [
                "861/1000",
                "-279/1000"
              ],
              [
                "316387/1000000",
                "-279/1000"
              ]
            ],
            "raw": [
              "93/287",
              "88183/100000"
            ],
            "new": [
              "324041/1000000",
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
                "-505079917/1000000000"
              ],
              [
                "88183/100000",
                "-620924657/1000000000"
              ],
              [
                "13857/20000",
                "-647809/1000000"
              ],
              [
                "88183/100000",
                "-836789/1000000"
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
                "-279/1000"
              ],
              [
                "-70613/1000000",
                "-279/1000"
              ],
              [
                "861/1000",
                "-279/1000"
              ],
              [
                "316387/1000000",
                "-279/1000"
              ]
            ],
            "raw": [
              "93/287",
              "88183/100000"
            ],
            "new": [
              "324041/1000000",
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
                "-9719498661/20000000000"
              ],
              [
                "88183/100000",
                "-19917237/100000000"
              ],
              [
                "88183/100000",
                "-61516411779/100000000000"
              ],
              [
                "13857/20000",
                "-48348283/500000000"
              ],
              [
                "13857/20000",
                "-55590002061/500000000000"
              ],
              [
                "88183/100000",
                "-61482393/500000000"
              ],
              [
                "88183/100000",
                "-120184594431/500000000000"
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
            "factor": 162,
            "target": "z",
            "old": [
              "69721/500000",
              "30429/40000"
            ],
            "lines": [
              [
                "1/1",
                "-57439559/250000000"
              ],
              [
                "1/1",
                "-355053451/500000000"
              ],
              [
                "1/1",
                "-143447803/500000000"
              ],
              [
                "1/1",
                "-47952767/62500000"
              ],
              [
                "1/1",
                "-6854452141/31250000000"
              ],
              [
                "1/1",
                "-25068986849/62500000000"
              ],
              [
                "1/1",
                "-33872101097/62500000000"
              ],
              [
                "1/1",
                "-2827011479/3906250000"
              ]
            ],
            "raw": [
              "6854452141/31250000000",
              "30429/40000"
            ],
            "new": [
              "109671/500000",
              "30429/40000"
            ]
          },
          {
            "factor": 178,
            "target": "y",
            "old": [
              "129927/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "1/1",
                "-112921934541/500000000000"
              ],
              [
                "1/1",
                "-593979927949/1000000000000"
              ],
              [
                "1/1",
                "-382749381897/1000000000000"
              ],
              [
                "1/1",
                "-187721360191/250000000000"
              ],
              [
                "1/1",
                "-10762349683/50000000000"
              ],
              [
                "1/1",
                "-27960391187/100000000000"
              ],
              [
                "1/1",
                "-64224230711/100000000000"
              ],
              [
                "1/1",
                "-17664980633/25000000000"
              ]
            ],
            "raw": [
              "10762349683/50000000000",
              "907/1000"
            ],
            "new": [
              "107623/500000",
              "907/1000"
            ]
          },
          {
            "factor": 184,
            "target": "x",
            "old": [
              "324041/1000000",
              "88183/100000"
            ],
            "lines": [
              [
                "-1/1",
                "5425055909/10000000000"
              ],
              [
                "-1/1",
                "34540420091/50000000000"
              ],
              [
                "-1/1",
                "14987729727/25000000000"
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
              "324041/1000000",
              "186953/250000"
            ],
            "new": [
              "324041/1000000",
              "186953/250000"
            ]
          },
          {
            "factor": 188,
            "target": "v",
            "old": [
              "120183/1000000",
              "713921/1000000"
            ],
            "lines": [
              [
                "1/1",
                "-112921934541/500000000000"
              ],
              [
                "1/1",
                "-593979927949/1000000000000"
              ],
              [
                "1/1",
                "-382749381897/1000000000000"
              ],
              [
                "1/1",
                "-187721360191/250000000000"
              ],
              [
                "1/1",
                "-10762349683/50000000000"
              ],
              [
                "1/1",
                "-27960391187/100000000000"
              ],
              [
                "1/1",
                "-64224230711/100000000000"
              ],
              [
                "1/1",
                "-17664980633/25000000000"
              ]
            ],
            "raw": [
              "10762349683/50000000000",
              "713921/1000000"
            ],
            "new": [
              "107623/500000",
              "713921/1000000"
            ]
          },
          {
            "factor": 192,
            "target": "u",
            "old": [
              "324041/1000000",
              "88183/100000"
            ],
            "lines": [
              [
                "-1/1",
                "5396235909/10000000000"
              ],
              [
                "-1/1",
                "34396320091/50000000000"
              ],
              [
                "-1/1",
                "14915679727/25000000000"
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
              "324041/1000000",
              "74493/100000"
            ],
            "new": [
              "324041/1000000",
              "74493/100000"
            ]
          },
          {
            "factor": 210,
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
            "factor": 215,
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
            "factor": 1026,
            "target": "g",
            "old": [
              "59481/500000",
              "41641/62500"
            ],
            "lines": [
              [
                "-233401501263/500000000000",
                "116925017114149401/500000000000000000"
              ],
              [
                "-233401501263/500000000000",
                "119660392818707901/500000000000000000"
              ],
              [
                "-233401501263/500000000000",
                "1698285455659547637/9070000000000000000"
              ],
              [
                "-233401501263/500000000000",
                "1969257653809547637/9070000000000000000"
              ],
              [
                "-233401501263/500000000000",
                "150242061712551141/500000000000000000"
              ],
              [
                "-233401501263/500000000000",
                "152977437417109641/500000000000000000"
              ],
              [
                "-233401501263/500000000000",
                "11513283223372776003/45350000000000000000"
              ],
              [
                "-233401501263/500000000000",
                "12868144214122776003/45350000000000000000"
              ],
              [
                "-760263/1000000",
                "195653811600970851/500000000000000000"
              ],
              [
                "-760263/1000000",
                "198389187305529351/500000000000000000"
              ],
              [
                "-760263/1000000",
                "16416553985787/45350000000000"
              ],
              [
                "-760263/1000000",
                "17771414976537/45350000000000"
              ],
              [
                "-760263/1000000",
                "249915922470970851/500000000000000000"
              ],
              [
                "-760263/1000000",
                "252651298175529351/500000000000000000"
              ],
              [
                "-760263/1000000",
                "666816482553/1417187500000"
              ],
              [
                "-760263/1000000",
                "11346494216223/22675000000000"
              ],
              [
                "-233401501263/500000000000",
                "7575703577221533/40000000000000000"
              ],
              [
                "-233401501263/500000000000",
                "7794533633586213/40000000000000000"
              ],
              [
                "-233401501263/500000000000",
                "-503739575290602363/9070000000000000000"
              ],
              [
                "-233401501263/500000000000",
                "-232767377140602363/9070000000000000000"
              ],
              [
                "-233401501263/500000000000",
                "51205335725468361/200000000000000000"
              ],
              [
                "-233401501263/500000000000",
                "52299486007291761/200000000000000000"
              ],
              [
                "-233401501263/500000000000",
                "503158068622026003/45350000000000000000"
              ],
              [
                "-233401501263/500000000000",
                "1858019059372026003/45350000000000000000"
              ],
              [
                "-760263/1000000",
                "13874007136167249/40000000000000000"
              ],
              [
                "-760263/1000000",
                "14092837192531929/40000000000000000"
              ],
              [
                "-760263/1000000",
                "4325143064829/36280000000000"
              ],
              [
                "-760263/1000000",
                "5409031857429/36280000000000"
              ],
              [
                "-760263/1000000",
                "18214976005767249/40000000000000000"
              ],
              [
                "-760263/1000000",
                "18433806062131929/40000000000000000"
              ],
              [
                "-760263/1000000",
                "41312009147781/181400000000000"
              ],
              [
                "-760263/1000000",
                "46731453110781/181400000000000"
              ]
            ],
            "raw": [
              "59481/500000",
              "12031014198834731/18101500000000000"
            ],
            "new": [
              "59481/500000",
              "332321/500000"
            ]
          },
          {
            "factor": 1040,
            "target": "g",
            "old": [
              "59481/500000",
              "332321/500000"
            ],
            "lines": [
              [
                "-233401501263/500000000000",
                "177279674707503/1000000000000000"
              ],
              [
                "-233401501263/500000000000",
                "212371840593153/1000000000000000"
              ],
              [
                "-233401501263/500000000000",
                "1128170134569657/5000000000000000"
              ],
              [
                "-233401501263/500000000000",
                "1351489212602007/5000000000000000"
              ],
              [
                "-760263/1000000",
                "3557316335274639/10000000000000000"
              ],
              [
                "-760263/1000000",
                "3908237994131139/10000000000000000"
              ],
              [
                "-760263/1000000",
                "22638004358340441/50000000000000000"
              ],
              [
                "-760263/1000000",
                "24871195138663941/50000000000000000"
              ],
              [
                "-233401501263/500000000000",
                "-2157857132742693/20000000000000000"
              ],
              [
                "-233401501263/500000000000",
                "-1456013815029693/20000000000000000"
              ],
              [
                "-233401501263/500000000000",
                "-13732143720621267/100000000000000000"
              ],
              [
                "-233401501263/500000000000",
                "-9265762159974267/100000000000000000"
              ],
              [
                "-760263/1000000",
                "56447281746261/800000000000000"
              ],
              [
                "-760263/1000000",
                "84521014454781/800000000000000"
              ],
              [
                "-760263/1000000",
                "359218492186659/4000000000000000"
              ],
              [
                "-760263/1000000",
                "537873754612539/4000000000000000"
              ]
            ],
            "raw": [
              "59481/500000",
              "8290398379554647/12671050000000000"
            ],
            "new": [
              "59481/500000",
              "654279/1000000"
            ]
          },
          {
            "factor": 1257,
            "target": "z",
            "old": [
              "109671/500000",
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
              "109671/500000",
              "19/25"
            ],
            "new": [
              "109671/500000",
              "19/25"
            ]
          },
          {
            "factor": 1280,
            "target": "g",
            "old": [
              "59481/500000",
              "654279/1000000"
            ],
            "lines": [
              [
                "-9517031/20000000",
                "89260334560659/500000000000000"
              ],
              [
                "-9517031/20000000",
                "1868737413793443/9070000000000000"
              ],
              [
                "-9517031/20000000",
                "112765602140519/500000000000000"
              ],
              [
                "-9517031/20000000",
                "11475614838460517/45350000000000000"
              ],
              [
                "-31/40",
                "145916521143/400000000000"
              ],
              [
                "-31/40",
                "148603882851501/362800000000000"
              ],
              [
                "-31/40",
                "923101886417/2000000000000"
              ],
              [
                "-31/40",
                "918541401854219/1814000000000000"
              ],
              [
                "-9517031/20000000",
                "-55895187368091/500000000000000"
              ],
              [
                "-9517031/20000000",
                "-382191876997041/4535000000000000"
              ],
              [
                "-9517031/20000000",
                "-71982169963731/500000000000000"
              ],
              [
                "-9517031/20000000",
                "-2640504045697479/22675000000000000"
              ],
              [
                "-31/40",
                "74480259/1000000000"
              ],
              [
                "-31/40",
                "2163951807/18140000000"
              ],
              [
                "-31/40",
                "92055399/1000000000"
              ],
              [
                "-31/40",
                "12413824233/90700000000"
              ]
            ],
            "raw": [
              "59481/500000",
              "29630367801749/45350000000000"
            ],
            "new": [
              "59481/500000",
              "653371/1000000"
            ]
          },
          {
            "factor": 1598,
            "target": "y",
            "old": [
              "107623/500000",
              "907/1000"
            ],
            "lines": [
              [
                "12235731/20000000",
                "-2662368990031/10000000000000"
              ],
              [
                "12235731/20000000",
                "-396977320454211/1000000000000000"
              ],
              [
                "77865589/100000000",
                "-17158827526669/50000000000000"
              ],
              [
                "77865589/100000000",
                "-526509584966631/1000000000000000"
              ],
              [
                "12235731/20000000",
                "-2765072712331/10000000000000"
              ],
              [
                "12235731/20000000",
                "-447487823844621/1000000000000000"
              ],
              [
                "77865589/100000000",
                "-17672346138169/50000000000000"
              ],
              [
                "77865589/100000000",
                "-577020088357041/1000000000000000"
              ],
              [
                "12235731/20000000",
                "-291108699433/1000000000000"
              ],
              [
                "12235731/20000000",
                "-421849120884111/1000000000000000"
              ],
              [
                "77865589/100000000",
                "-374832319853/1000000000000"
              ],
              [
                "77865589/100000000",
                "-558165354286251/1000000000000000"
              ],
              [
                "12235731/20000000",
                "-301379071663/1000000000000"
              ],
              [
                "12235731/20000000",
                "-472359624274521/1000000000000000"
              ],
              [
                "77865589/100000000",
                "-385102692083/1000000000000"
              ],
              [
                "77865589/100000000",
                "-608675857676661/1000000000000000"
              ],
              [
                "12235731/20000000",
                "-2142245177761/10000000000000"
              ],
              [
                "12235731/20000000",
                "-70588156746051/500000000000000"
              ],
              [
                "77865589/100000000",
                "-14558208465319/50000000000000"
              ],
              [
                "77865589/100000000",
                "-135354289002261/500000000000000"
              ],
              [
                "12235731/20000000",
                "-2244948900061/10000000000000"
              ],
              [
                "12235731/20000000",
                "-11980426055157/62500000000000"
              ],
              [
                "77865589/100000000",
                "-15071727076819/50000000000000"
              ],
              [
                "77865589/100000000",
                "-80304770348733/250000000000000"
              ],
              [
                "12235731/20000000",
                "-119548159103/500000000000"
              ],
              [
                "12235731/20000000",
                "-83024056961001/500000000000000"
              ],
              [
                "77865589/100000000",
                "-161409969313/500000000000"
              ],
              [
                "77865589/100000000",
                "-151182173662071/500000000000000"
              ],
              [
                "12235731/20000000",
                "-62341672609/250000000000"
              ],
              [
                "12235731/20000000",
                "-54139654328103/250000000000000"
              ],
              [
                "77865589/100000000",
                "-41636288857/125000000000"
              ],
              [
                "77865589/100000000",
                "-44109356339319/125000000000000"
              ]
            ],
            "raw": [
              "23529385582017/101964425000000",
              "907/1000"
            ],
            "new": [
              "5769/25000",
              "907/1000"
            ]
          },
          {
            "factor": 1604,
            "target": "y",
            "old": [
              "5769/25000",
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
              "653371/1000000"
            ],
            "lines": [
              [
                "-307001/500000",
                "180440181/1000000000"
              ],
              [
                "-307001/500000",
                "12750618599/50000000000"
              ],
              [
                "-1/1",
                "4478788953/10000000000"
              ],
              [
                "-1/1",
                "297693283187/500000000000"
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
              "297693283187/500000000000"
            ],
            "new": [
              "59481/500000",
              "595387/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "109671/500000",
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
                "-16578761537/500000000000"
              ],
              [
                "-881803/1000000",
                "2589374901/31250000000"
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
                "4463/1000000"
              ],
              [
                "-881803/1000000",
                "24177/125000"
              ]
            ],
            "raw": [
              "109671/500000",
              "669841/881803"
            ],
            "new": [
              "109671/500000",
              "759627/1000000"
            ]
          },
          {
            "factor": 98,
            "target": "a",
            "old": [
              "139/1000",
              "683613/1000000"
            ],
            "lines": [
              [
                "-324041/1000000",
                "-40019088959/500000000000"
              ],
              [
                "-324041/1000000",
                "45041/1000000"
              ],
              [
                "-186953/250000",
                "22519757953/125000000000"
              ],
              [
                "-186953/250000",
                "117203/250000"
              ]
            ],
            "raw": [
              "139/1000",
              "117203/186953"
            ],
            "new": [
              "139/1000",
              "19591/31250"
            ]
          },
          {
            "factor": 114,
            "target": "v",
            "old": [
              "107623/500000",
              "713921/1000000"
            ],
            "lines": [
              [
                "-617/1000",
                "112459205959/500000000000"
              ],
              [
                "-881803/1000000",
                "96876995881/250000000000"
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
              "107623/500000",
              "602803/881803"
            ],
            "new": [
              "107623/500000",
              "683603/1000000"
            ]
          },
          {
            "factor": 116,
            "target": "a",
            "old": [
              "139/1000",
              "19591/31250"
            ],
            "lines": [
              [
                "-324041/1000000",
                "-40019088959/500000000000"
              ],
              [
                "-324041/1000000",
                "45041/1000000"
              ],
              [
                "-74493/100000",
                "8919425493/50000000000"
              ],
              [
                "-74493/100000",
                "46593/100000"
              ]
            ],
            "raw": [
              "139/1000",
              "167/267"
            ],
            "new": [
              "139/1000",
              "625469/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "324041/1000000",
              "186953/250000"
            ],
            "lines": [
              [
                "-392377/500000",
                "52436239981/250000000000"
              ],
              [
                "-392377/500000",
                "126770364047/500000000000"
              ],
              [
                "-392377/500000",
                "363948031/1000000000"
              ],
              [
                "-392377/500000",
                "273563282731/500000000000"
              ],
              [
                "-392377/500000",
                "11760711363/25000000000"
              ],
              [
                "-392377/500000",
                "51422422269/100000000000"
              ],
              [
                "-392377/500000",
                "100772677/250000000"
              ],
              [
                "-392377/500000",
                "293134621231/500000000000"
              ],
              [
                "-316397/1000000",
                "-19807827269/250000000000"
              ],
              [
                "-316397/1000000",
                "-159457879577/1000000000000"
              ],
              [
                "-316397/1000000",
                "37485881/500000000"
              ],
              [
                "-316397/1000000",
                "134127957791/1000000000000"
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
              "324041/1000000",
              "293134621231/392377000000"
            ],
            "new": [
              "324041/1000000",
              "373537/500000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "109671/500000",
              "759627/1000000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-2606050013/15625000000"
              ],
              [
                "324041/1000000",
                "-266551776883/1000000000000"
              ],
              [
                "324041/1000000",
                "-70477158033/250000000000"
              ],
              [
                "324041/1000000",
                "-74953607429/500000000000"
              ],
              [
                "373537/500000",
                "-28198598479/125000000000"
              ],
              [
                "373537/500000",
                "-13278645109/25000000000"
              ],
              [
                "373537/500000",
                "-85177554783/250000000000"
              ],
              [
                "373537/500000",
                "-82900248467/200000000000"
              ],
              [
                "324041/1000000",
                "-45880903/200000000"
              ],
              [
                "324041/1000000",
                "-329169091051/1000000000000"
              ],
              [
                "324041/1000000",
                "-119059783/200000000"
              ],
              [
                "324041/1000000",
                "-231648748863/500000000000"
              ],
              [
                "373537/500000",
                "-144103051/500000000"
              ],
              [
                "373537/500000",
                "-9277548727/15625000000"
              ],
              [
                "373537/500000",
                "-327050251/500000000"
              ],
              [
                "373537/500000",
                "-727891525203/1000000000000"
              ]
            ],
            "raw": [
              "28198598479/93384250000",
              "759627/1000000"
            ],
            "new": [
              "301963/1000000",
              "759627/1000000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "107623/500000",
              "683603/1000000"
            ],
            "lines": [
              [
                "440519/500000",
                "-160880808487/500000000000"
              ],
              [
                "440519/500000",
                "-21051341283/50000000000"
              ],
              [
                "404613/1000000",
                "-264503431199/1000000000000"
              ],
              [
                "404613/1000000",
                "-26632548287/200000000000"
              ],
              [
                "440519/500000",
                "-2524494867/4000000000"
              ],
              [
                "440519/500000",
                "-182597231359/250000000000"
              ],
              [
                "404613/1000000",
                "-22954621239/40000000000"
              ],
              [
                "404613/1000000",
                "-442524841211/1000000000000"
              ],
              [
                "440519/500000",
                "-122626207277/500000000000"
              ],
              [
                "440519/500000",
                "-274121104733/500000000000"
              ],
              [
                "404613/1000000",
                "-187994228779/1000000000000"
              ],
              [
                "404613/1000000",
                "-260378125241/1000000000000"
              ],
              [
                "440519/500000",
                "-180994385517/500000000000"
              ],
              [
                "440519/500000",
                "-332489282973/500000000000"
              ],
              [
                "404613/1000000",
                "-304730585259/1000000000000"
              ],
              [
                "404613/1000000",
                "-377114481721/1000000000000"
              ]
            ],
            "raw": [
              "122626207277/440519000000",
              "683603/1000000"
            ],
            "new": [
              "278367/1000000",
              "683603/1000000"
            ]
          },
          {
            "factor": 192,
            "target": "u",
            "old": [
              "324041/1000000",
              "74493/100000"
            ],
            "lines": [
              [
                "-1/1",
                "10696717261/20000000000"
              ],
              [
                "-1/1",
                "671190583299/1000000000000"
              ],
              [
                "-1/1",
                "608548279751/1000000000000"
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
              "324041/1000000",
              "744903/1000000"
            ],
            "new": [
              "324041/1000000",
              "744903/1000000"
            ]
          },
          {
            "factor": 210,
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
            "factor": 214,
            "target": "g",
            "old": [
              "59481/500000",
              "595387/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "523366671/883000000"
              ],
              [
                "-1/1",
                "119249359/883000000"
              ]
            ],
            "raw": [
              "59481/500000",
              "523366671/883000000"
            ],
            "new": [
              "59481/500000",
              "118543/200000"
            ]
          },
          {
            "factor": 215,
            "target": "g",
            "old": [
              "59481/500000",
              "118543/200000"
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
              "118543/200000"
            ],
            "new": [
              "118963/1000000",
              "118543/200000"
            ]
          },
          {
            "factor": 1040,
            "target": "g",
            "old": [
              "118963/1000000",
              "118543/200000"
            ],
            "lines": [
              [
                "-466817447523/1000000000000",
                "1337679940102839/10000000000000000"
              ],
              [
                "-466817447523/1000000000000",
                "1651136483487339/10000000000000000"
              ],
              [
                "-466817447523/1000000000000",
                "85124499113985981/500000000000000000"
              ],
              [
                "-466817447523/1000000000000",
                "105071595911711481/500000000000000000"
              ],
              [
                "-760263/1000000",
                "6244223377600467/20000000000000000"
              ],
              [
                "-760263/1000000",
                "6871136464369467/20000000000000000"
              ],
              [
                "-760263/1000000",
                "397356924806106993/1000000000000000000"
              ],
              [
                "-760263/1000000",
                "437251118401557993/1000000000000000000"
              ],
              [
                "-466817447523/1000000000000",
                "-1073057031418473/10000000000000000"
              ],
              [
                "-466817447523/1000000000000",
                "-759600488033973/10000000000000000"
              ],
              [
                "-466817447523/1000000000000",
                "-68284975786671267/500000000000000000"
              ],
              [
                "-466817447523/1000000000000",
                "-48337878988945767/500000000000000000"
              ],
              [
                "-760263/1000000",
                "1422749434557843/20000000000000000"
              ],
              [
                "-760263/1000000",
                "2049662521326843/20000000000000000"
              ],
              [
                "-760263/1000000",
                "90537975004792497/1000000000000000000"
              ],
              [
                "-760263/1000000",
                "130432168600243497/1000000000000000000"
              ]
            ],
            "raw": [
              "118963/1000000",
              "145750372800519331/253421000000000000"
            ],
            "new": [
              "118963/1000000",
              "143783/250000"
            ]
          },
          {
            "factor": 1604,
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
              "143783/250000"
            ],
            "lines": [
              [
                "-614021/1000000",
                "1232093853/10000000000"
              ],
              [
                "-614021/1000000",
                "45543342129/250000000000"
              ],
              [
                "-1/1",
                "7812698709/20000000000"
              ],
              [
                "-1/1",
                "261265211337/500000000000"
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
              "261265211337/500000000000"
            ],
            "new": [
              "118963/1000000",
              "522531/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "301963/1000000",
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
                "11579442699/1000000000000"
              ],
              [
                "-440901/500000",
                "127599938691/1000000000000"
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
                "77319/1000000"
              ],
              [
                "-440901/500000",
                "266271/1000000"
              ]
            ],
            "raw": [
              "301963/1000000",
              "669839/881802"
            ],
            "new": [
              "301963/1000000",
              "379813/500000"
            ]
          },
          {
            "factor": 116,
            "target": "a",
            "old": [
              "139/1000",
              "625469/1000000"
            ],
            "lines": [
              [
                "-324041/1000000",
                "-80032021139/1000000000000"
              ],
              [
                "-324041/1000000",
                "45041/1000000"
              ],
              [
                "-744903/1000000",
                "178386084963/1000000000000"
              ],
              [
                "-744903/1000000",
                "465903/1000000"
              ]
            ],
            "raw": [
              "139/1000",
              "51767/82767"
            ],
            "new": [
              "139/1000",
              "125091/200000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "324041/1000000",
              "744903/1000000"
            ],
            "lines": [
              [
                "-190319/500000",
                "68060783397/1000000000000"
              ],
              [
                "-190319/500000",
                "87385093389/1000000000000"
              ],
              [
                "-190319/500000",
                "46454802627/250000000000"
              ],
              [
                "-190319/500000",
                "410287041/2000000000"
              ],
              [
                "-907/1000",
                "432750695097/1000000000000"
              ],
              [
                "-907/1000",
                "551532157713/1000000000000"
              ],
              [
                "-907/1000",
                "17203410069/31250000000"
              ],
              [
                "-907/1000",
                "83661323103/125000000000"
              ],
              [
                "-190319/500000",
                "-81393900527/1000000000000"
              ],
              [
                "-190319/500000",
                "-138639743207/1000000000000"
              ],
              [
                "-190319/500000",
                "51948181843/250000000000"
              ],
              [
                "-190319/500000",
                "37636721173/250000000000"
              ],
              [
                "-907/1000",
                "283296011173/1000000000000"
              ],
              [
                "-907/1000",
                "325507321117/1000000000000"
              ],
              [
                "-907/1000",
                "17890082471/31250000000"
              ],
              [
                "-907/1000",
                "76836743627/125000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "83661323103/113375000000"
            ],
            "new": [
              "324041/1000000",
              "737917/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "324041/1000000",
              "373537/500000"
            ],
            "lines": [
              [
                "-721633/1000000",
                "85399944421/500000000000"
              ],
              [
                "-721633/1000000",
                "24735181773/125000000000"
              ],
              [
                "-721633/1000000",
                "162501187/500000000"
              ],
              [
                "-721633/1000000",
                "245732824833/500000000000"
              ],
              [
                "-721633/1000000",
                "213569477977/500000000000"
              ],
              [
                "-721633/1000000",
                "28388782581/62500000000"
              ],
              [
                "-721633/1000000",
                "181746421/500000000"
              ],
              [
                "-721633/1000000",
                "264978058833/500000000000"
              ],
              [
                "-316397/1000000",
                "-39615361579/500000000000"
              ],
              [
                "-316397/1000000",
                "-4983014409/31250000000"
              ],
              [
                "-316397/1000000",
                "37485881/500000000"
              ],
              [
                "-316397/1000000",
                "67063867197/500000000000"
              ],
              [
                "-316397/1000000",
                "88554171977/500000000000"
              ],
              [
                "-316397/1000000",
                "12110325753/125000000000"
              ],
              [
                "-316397/1000000",
                "11346223/100000000"
              ],
              [
                "-316397/1000000",
                "86309101197/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "264978058833/360816500000"
            ],
            "new": [
              "324041/1000000",
              "146877/200000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "301963/1000000",
              "379813/500000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-83393840197/500000000000"
              ],
              [
                "324041/1000000",
                "-66637224721/250000000000"
              ],
              [
                "324041/1000000",
                "-132152522389/500000000000"
              ],
              [
                "324041/1000000",
                "-41937147957/250000000000"
              ],
              [
                "146877/200000",
                "-111912748197/500000000000"
              ],
              [
                "146877/200000",
                "-130800151351/250000000000"
              ],
              [
                "146877/200000",
                "-160671430389/500000000000"
              ],
              [
                "146877/200000",
                "-106100074587/250000000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-32916650149/100000000000"
              ],
              [
                "324041/1000000",
                "-539345507/1000000000"
              ],
              [
                "324041/1000000",
                "-8855781081/20000000000"
              ],
              [
                "146877/200000",
                "-286443099/1000000000"
              ],
              [
                "146877/200000",
                "-58581820801/100000000000"
              ],
              [
                "146877/200000",
                "-596383323/1000000000"
              ],
              [
                "146877/200000",
                "-69944076057/100000000000"
              ]
            ],
            "raw": [
              "37304249399/122397500000",
              "379813/500000"
            ],
            "new": [
              "304779/1000000",
              "379813/500000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "278367/1000000",
              "683603/1000000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-323665817647/1000000000000"
              ],
              [
                "881037/1000000",
                "-422929721987/1000000000000"
              ],
              [
                "477469/1000000",
                "-275162190431/1000000000000"
              ],
              [
                "477469/1000000",
                "-179087075731/1000000000000"
              ],
              [
                "881037/1000000",
                "-15778093523/25000000000"
              ],
              [
                "881037/1000000",
                "-36519382263/50000000000"
              ],
              [
                "477469/1000000",
                "-72827514213/125000000000"
              ],
              [
                "477469/1000000",
                "-121636249751/250000000000"
              ],
              [
                "881037/1000000",
                "-49453523811/200000000000"
              ],
              [
                "881037/1000000",
                "-21874396947/40000000000"
              ],
              [
                "477469/1000000",
                "-198763991839/1000000000000"
              ],
              [
                "477469/1000000",
                "-303017277419/1000000000000"
              ],
              [
                "881037/1000000",
                "-91618821339/250000000000"
              ],
              [
                "881037/1000000",
                "-83258448747/125000000000"
              ],
              [
                "477469/1000000",
                "-15898582907/50000000000"
              ],
              [
                "477469/1000000",
                "-10555623593/25000000000"
              ]
            ],
            "raw": [
              "610537331/2175400000",
              "683603/1000000"
            ],
            "new": [
              "56131/200000",
              "683603/1000000"
            ]
          },
          {
            "factor": 210,
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
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "522531/1000000"
            ],
            "lines": [
              [
                "-307011/500000",
                "2425180251/20000000000"
              ],
              [
                "-307011/500000",
                "89845547943/500000000000"
              ],
              [
                "-1/1",
                "7773677397/20000000000"
              ],
              [
                "-1/1",
                "260023634121/500000000000"
              ],
              [
                "-307011/500000",
                "-969408657/5000000000"
              ],
              [
                "-307011/500000",
                "-27674237301/125000000000"
              ],
              [
                "-1/1",
                "735431259/10000000000"
              ],
              [
                "-1/1",
                "29740568487/250000000000"
              ]
            ],
            "raw": [
              "118963/1000000",
              "260023634121/500000000000"
            ],
            "new": [
              "118963/1000000",
              "32503/62500"
            ]
          },
          {
            "factor": 98,
            "target": "a",
            "old": [
              "139/1000",
              "125091/200000"
            ],
            "lines": [
              [
                "-324041/1000000",
                "-40015848549/500000000000"
              ],
              [
                "-324041/1000000",
                "45041/1000000"
              ],
              [
                "-146877/200000",
                "17192854647/100000000000"
              ],
              [
                "-146877/200000",
                "91077/200000"
              ]
            ],
            "raw": [
              "139/1000",
              "30359/48959"
            ],
            "new": [
              "139/1000",
              "620091/1000000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "324041/1000000",
              "737917/1000000"
            ],
            "lines": [
              [
                "-190319/500000",
                "13443389681/200000000000"
              ],
              [
                "-190319/500000",
                "86108936221/1000000000000"
              ],
              [
                "-190319/500000",
                "7295281749/40000000000"
              ],
              [
                "-190319/500000",
                "201274031541/1000000000000"
              ],
              [
                "-907/1000",
                "86381372021/200000000000"
              ],
              [
                "-907/1000",
                "110051200109/200000000000"
              ],
              [
                "-907/1000",
                "21882878217/40000000000"
              ],
              [
                "-907/1000",
                "133084219173/200000000000"
              ],
              [
                "-190319/500000",
                "-81393900527/1000000000000"
              ],
              [
                "-190319/500000",
                "-138639743207/1000000000000"
              ],
              [
                "-190319/500000",
                "39823697781/200000000000"
              ],
              [
                "-190319/500000",
                "5674905849/40000000000"
              ],
              [
                "-907/1000",
                "283296011173/1000000000000"
              ],
              [
                "-907/1000",
                "325507321117/1000000000000"
              ],
              [
                "-907/1000",
                "112761680121/200000000000"
              ],
              [
                "-907/1000",
                "606019710549/1000000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "133084219173/181400000000"
            ],
            "new": [
              "324041/1000000",
              "733651/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "324041/1000000",
              "146877/200000"
            ],
            "lines": [
              [
                "-143869/200000",
                "84694096421/500000000000"
              ],
              [
                "-143869/200000",
                "24482986401/125000000000"
              ],
              [
                "-143869/200000",
                "161795339/500000000"
              ],
              [
                "-143869/200000",
                "48944808669/100000000000"
              ],
              [
                "-143869/200000",
                "211542530831/500000000000"
              ],
              [
                "-143869/200000",
                "112390190007/250000000000"
              ],
              [
                "-143869/200000",
                "45210551/125000000"
              ],
              [
                "-143869/200000",
                "52754181669/100000000000"
              ],
              [
                "-316397/1000000",
                "-39615361579/500000000000"
              ],
              [
                "-316397/1000000",
                "-4983014409/31250000000"
              ],
              [
                "-316397/1000000",
                "37485881/500000000"
              ],
              [
                "-316397/1000000",
                "67063867197/500000000000"
              ],
              [
                "-316397/1000000",
                "87233072831/500000000000"
              ],
              [
                "-316397/1000000",
                "23560101933/250000000000"
              ],
              [
                "-316397/1000000",
                "28266373/250000000"
              ],
              [
                "-316397/1000000",
                "86110732197/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "52754181669/71934500000"
            ],
            "new": [
              "324041/1000000",
              "146673/200000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "304779/1000000",
              "379813/500000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-83393840197/500000000000"
              ],
              [
                "324041/1000000",
                "-66362215123/250000000000"
              ],
              [
                "324041/1000000",
                "-32963132203/125000000000"
              ],
              [
                "324041/1000000",
                "-169407853987/1000000000000"
              ],
              [
                "146673/200000",
                "-111841858197/500000000000"
              ],
              [
                "146673/200000",
                "-32454186811/62500000000"
              ],
              [
                "146673/200000",
                "-40075136703/125000000000"
              ],
              [
                "146673/200000",
                "-423225982471/1000000000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-164033231549/500000000000"
              ],
              [
                "324041/1000000",
                "-537438563/1000000000"
              ],
              [
                "324041/1000000",
                "-443141359363/1000000000000"
              ],
              [
                "146673/200000",
                "-286301319/1000000000"
              ],
              [
                "146673/200000",
                "-290942295791/500000000000"
              ],
              [
                "146673/200000",
                "-594334599/1000000000"
              ],
              [
                "146673/200000",
                "-696959487847/1000000000000"
              ]
            ],
            "raw": [
              "12426873133/40742500000",
              "379813/500000"
            ],
            "new": [
              "30501/100000",
              "379813/500000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "56131/200000",
              "683603/1000000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-20238872761/62500000000"
              ],
              [
                "881037/1000000",
                "-105771467129/250000000000"
              ],
              [
                "29997/62500",
                "-275616761281/1000000000000"
              ],
              [
                "29997/62500",
                "-180743493071/1000000000000"
              ],
              [
                "881037/1000000",
                "-15778093523/25000000000"
              ],
              [
                "881037/1000000",
                "-36519382263/50000000000"
              ],
              [
                "29997/62500",
                "-23316741521/40000000000"
              ],
              [
                "29997/62500",
                "-97609053963/200000000000"
              ],
              [
                "881037/1000000",
                "-124058307573/500000000000"
              ],
              [
                "881037/1000000",
                "-272822023893/500000000000"
              ],
              [
                "29997/62500",
                "-199911412251/1000000000000"
              ],
              [
                "29997/62500",
                "-303301672341/1000000000000"
              ],
              [
                "881037/1000000",
                "-36920313213/100000000000"
              ],
              [
                "881037/1000000",
                "-66673056477/100000000000"
              ],
              [
                "29997/62500",
                "-64199585847/200000000000"
              ],
              [
                "29997/62500",
                "-16975527573/40000000000"
              ]
            ],
            "raw": [
              "13784256397/48946500000",
              "683603/1000000"
            ],
            "new": [
              "140809/500000",
              "683603/1000000"
            ]
          }
        ]
      }
    },
    {
      "id": 1,
      "assumptions": [
        "AGO-",
        "AGP-",
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
          "30501/100000",
          "324041/1000000",
          "190319/500000",
          "324041/1000000",
          "140809/500000"
        ],
        "high": [
          "620091/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "32503/62500",
          "1",
          "379813/500000",
          "146673/200000",
          "907/1000",
          "733651/1000000",
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
        "AGO": -1,
        "AGP": -1,
        "DGP": -1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "BDG": 1,
        "DGH": -1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "ADP": 1,
        "BDP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEO": 1,
        "BEG": 1,
        "DHO": -1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "CABHO"
          ],
          "target": "ACO",
          "sign": 1,
          "deps": [
            "ABC",
            "CHO",
            "ACH",
            "BCO",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CABHP"
          ],
          "target": "ACP",
          "sign": 1,
          "deps": [
            "ABC",
            "CHP",
            "ACH",
            "BCP",
            "BCH"
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
            "GABCO"
          ],
          "target": "BGO",
          "sign": -1,
          "deps": [
            "ABG",
            "CGO",
            "ACG",
            "AGO",
            "BCG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GABCP"
          ],
          "target": "BGP",
          "sign": -1,
          "deps": [
            "ABG",
            "CGP",
            "ACG",
            "AGP",
            "BCG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACDO"
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ACG",
            "DGO",
            "CGO",
            "AGO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACHO"
          ],
          "target": "GHO",
          "sign": -1,
          "deps": [
            "ACG",
            "AGH",
            "CGO",
            "AGO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACHP"
          ],
          "target": "GHP",
          "sign": -1,
          "deps": [
            "ACG",
            "AGH",
            "CGP",
            "AGP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GBCDO"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "BCG",
            "DGO",
            "CGO",
            "BGO",
            "CDG"
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
            "OACDG"
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACO",
            "DGO",
            "CGO",
            "AGO",
            "CDO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OBCDG"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "BCO",
            "DGO",
            "CGO",
            "BGO",
            "CDO"
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
            "PACDG"
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACP",
            "DGP",
            "CGP",
            "AGP",
            "CDP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PBCDG"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "BCP",
            "DGP",
            "CGP",
            "BGP",
            "CDP"
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
            "BAEGO"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "BGO",
            "ABG",
            "BEO",
            "ABO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "GDH",
            "OP",
            "DHG",
            [
              "area",
              "DGH",
              "T0004",
              "27/40"
            ]
          ],
          "target": "DHO",
          "sign": -1,
          "deps": [
            "GHO",
            "DGO",
            "GHP",
            "DGP",
            "DOP"
          ],
          "area_stage": 0
        }
      ],
      "initial": {
        "L_AGO": {
          "triangle": "AGO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GAO",
            "points": []
          }
        },
        "L_AHO": {
          "triangle": "AHO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HAO",
            "points": [
              "G"
            ]
          }
        },
        "L_AHP": {
          "triangle": "AHP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HAP",
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
        "L_DGP": {
          "triangle": "DGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GDP",
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
        "U_AHO": {
          "triangle": "AHO",
          "side": "hi",
          "value": "126285453/200000000",
          "witness": {
            "kind": "vertices",
            "signed": "HAO",
            "used": [
              0,
              7,
              9,
              10
            ],
            "values": [
              "-890158437/200000000000",
              "-1966604829/1000000000000",
              "123106092269/1000000000000",
              "76963301951/500000000000",
              "55722392757/200000000000",
              "278999301/1000000000",
              "34836450903/100000000000",
              "126285453/200000000"
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
        },
        "U_FGH": {
          "triangle": "FGH",
          "side": "hi",
          "value": "30642178599/50000000000",
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
              "-41238398797/500000000000",
              "-21960283593/500000000000",
              "9041648567/125000000000",
              "1732647171/15625000000",
              "74155379/500000000",
              "52990568487/250000000000",
              "118288752407/500000000000",
              "159202250219/500000000000",
              "3057714773/7812500000",
              "42880883/100000000",
              "59151810821/125000000000",
              "30642178599/50000000000"
            ],
            "cell": "CA"
          }
        },
        "U_FHP": {
          "triangle": "FHP",
          "side": "hi",
          "value": "158367671091/250000000000",
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
              "7964504017/125000000000",
              "41070610049/500000000000",
              "195216949/1000000000",
              "55454120179/250000000000",
              "120120834339/500000000000",
              "139499753697/500000000000",
              "165082982549/500000000000",
              "209093604553/500000000000",
              "221620847/500000000",
              "244133206839/500000000000",
              "288143828843/500000000000",
              "158367671091/250000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "718": {
          "row": [
            "quad",
            "CDO",
            "CHO",
            "449/1000"
          ],
          "witness": {
            "kind": "quad",
            "poly": "CDOH",
            "occupants": [
              "P"
            ]
          }
        },
        "2221": {
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
        "2830": {
          "row": [
            "linear",
            {
              "CFP": "111867671091/250000000000",
              "CHP": "-93/1000",
              "COP": "-158367671091/250000000000"
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
              "value": "158367671091/250000000000"
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
            "residual": "88617671091/250000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0053",
          "relation": 2830,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "30197/200000",
          "sources": [
            "L_CHP",
            "L_COP"
          ]
        }
      ],
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
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AHO",
            "side": "lo",
            "reference": "L_AHO",
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
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AHP",
            "side": "lo",
            "reference": "L_AHP",
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
        "138": {
          "name": "AREA_LO_AGO",
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
                0,
                6
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
            "triangle": "AGO",
            "side": "lo",
            "reference": "L_AGO",
            "value": "93/1000"
          }
        },
        "142": {
          "name": "AREA_LO_DGP",
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
                3,
                6
              ],
              "1"
            ],
            [
              [
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
                8
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
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DGP",
            "side": "lo",
            "reference": "L_DGP",
            "value": "93/1000"
          }
        },
        "192": {
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
              "-30197/200000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "lo",
            "reference": "T0053",
            "value": "30197/200000"
          }
        },
        "478": {
          "name": "QUAD_718",
          "terms": [
            [
              [
                10
              ],
              "1"
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
                2,
                3
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
              "-449/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 718
          }
        },
        "1361": {
          "name": "LINEAR_2221",
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
            "index": 2221
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
          "31071/100000",
          "324041/1000000",
          "103569/250000",
          "324041/1000000",
          "141977/500000"
        ],
        "high": [
          "154559/250000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "128719/250000",
          "1/1",
          "6077/8000",
          "732317/1000000",
          "907/1000",
          "730817/1000000",
          "683603/1000000"
        ],
        "steps": [
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "32503/62500"
            ],
            "lines": [
              [
                "-307011/500000",
                "605494821/5000000000"
              ],
              [
                "-307011/500000",
                "22435924953/125000000000"
              ],
              [
                "-1/1",
                "777047643/2000000000"
              ],
              [
                "-1/1",
                "25992178599/50000000000"
              ],
              [
                "-307011/500000",
                "-969408657/5000000000"
              ],
              [
                "-307011/500000",
                "-27674237301/125000000000"
              ],
              [
                "-1/1",
                "735431259/10000000000"
              ],
              [
                "-1/1",
                "29740568487/250000000000"
              ]
            ],
            "raw": [
              "118963/1000000",
              "25992178599/50000000000"
            ],
            "new": [
              "118963/1000000",
              "129961/250000"
            ]
          },
          {
            "factor": 98,
            "target": "a",
            "old": [
              "139/1000",
              "620091/1000000"
            ],
            "lines": [
              [
                "-324041/1000000",
                "-40015848549/500000000000"
              ],
              [
                "-324041/1000000",
                "45041/1000000"
              ],
              [
                "-146673/200000",
                "17130224403/100000000000"
              ],
              [
                "-146673/200000",
                "90873/200000"
              ]
            ],
            "raw": [
              "139/1000",
              "10097/16297"
            ],
            "new": [
              "139/1000",
              "309781/500000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "324041/1000000",
              "733651/1000000"
            ],
            "lines": [
              [
                "-190319/500000",
                "33430892669/500000000000"
              ],
              [
                "-190319/500000",
                "42785906189/500000000000"
              ],
              [
                "-190319/500000",
                "18213479157/100000000000"
              ],
              [
                "-190319/500000",
                "20084481861/100000000000"
              ],
              [
                "-907/1000",
                "215775848519/500000000000"
              ],
              [
                "-907/1000",
                "274859438351/500000000000"
              ],
              [
                "-907/1000",
                "54682470327/100000000000"
              ],
              [
                "-907/1000",
                "332495941467/500000000000"
              ],
              [
                "-190319/500000",
                "-81393900527/1000000000000"
              ],
              [
                "-190319/500000",
                "-138639743207/1000000000000"
              ],
              [
                "-190319/500000",
                "39684242769/200000000000"
              ],
              [
                "-190319/500000",
                "28235074233/200000000000"
              ],
              [
                "-907/1000",
                "283296011173/1000000000000"
              ],
              [
                "-907/1000",
                "325507321117/1000000000000"
              ],
              [
                "-907/1000",
                "112622225109/200000000000"
              ],
              [
                "-907/1000",
                "605322435489/1000000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "332495941467/453500000000"
            ],
            "new": [
              "324041/1000000",
              "366589/500000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "324041/1000000",
              "146673/200000"
            ],
            "lines": [
              [
                "-359191/500000",
                "84397010921/500000000000"
              ],
              [
                "-359191/500000",
                "97507357941/500000000000"
              ],
              [
                "-359191/500000",
                "322996507/1000000000"
              ],
              [
                "-359191/500000",
                "122149727841/250000000000"
              ],
              [
                "-359191/500000",
                "105549483109/250000000000"
              ],
              [
                "-359191/500000",
                "112104656619/250000000000"
              ],
              [
                "-359191/500000",
                "45130781/125000000"
              ],
              [
                "-359191/500000",
                "131662163091/250000000000"
              ],
              [
                "-316397/1000000",
                "-39615361579/500000000000"
              ],
              [
                "-316397/1000000",
                "-4983014409/31250000000"
              ],
              [
                "-316397/1000000",
                "37485881/500000000"
              ],
              [
                "-316397/1000000",
                "67063867197/500000000000"
              ],
              [
                "-316397/1000000",
                "43543296859/250000000000"
              ],
              [
                "-316397/1000000",
                "46973724753/500000000000"
              ],
              [
                "-316397/1000000",
                "113021503/1000000000"
              ],
              [
                "-316397/1000000",
                "86088737697/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "131662163091/179595500000"
            ],
            "new": [
              "324041/1000000",
              "45819/62500"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "30501/100000",
              "379813/500000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-83393840197/500000000000"
              ],
              [
                "324041/1000000",
                "-26534037423/100000000000"
              ],
              [
                "324041/1000000",
                "-16478485217/62500000000"
              ],
              [
                "324041/1000000",
                "-84780141093/500000000000"
              ],
              [
                "45819/62500",
                "-111823718697/500000000000"
              ],
              [
                "45819/62500",
                "-129695066159/250000000000"
              ],
              [
                "45819/62500",
                "-40064440059/125000000000"
              ],
              [
                "45819/62500",
                "-26437510787/62500000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-81989494209/250000000000"
              ],
              [
                "324041/1000000",
                "-537281891/1000000000"
              ],
              [
                "324041/1000000",
                "-221593204857/500000000000"
              ],
              [
                "45819/62500",
                "-3578313/12500000"
              ],
              [
                "45819/62500",
                "-290698933621/500000000000"
              ],
              [
                "45819/62500",
                "-37133853/62500000"
              ],
              [
                "45819/62500",
                "-17415657503/25000000000"
              ]
            ],
            "raw": [
              "4141619211/13576000000",
              "379813/500000"
            ],
            "new": [
              "305069/1000000",
              "379813/500000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "140809/500000",
              "683603/1000000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-323861845757/1000000000000"
              ],
              [
                "881037/1000000",
                "-423125750097/1000000000000"
              ],
              [
                "120039/250000",
                "-27568116101/100000000000"
              ],
              [
                "120039/250000",
                "-4522665873/25000000000"
              ],
              [
                "881037/1000000",
                "-15778093523/25000000000"
              ],
              [
                "881037/1000000",
                "-36519382263/50000000000"
              ],
              [
                "120039/250000",
                "-582943056173/1000000000000"
              ],
              [
                "120039/250000",
                "-488168530083/1000000000000"
              ],
              [
                "881037/1000000",
                "-248219778923/1000000000000"
              ],
              [
                "881037/1000000",
                "-545518265373/1000000000000"
              ],
              [
                "120039/250000",
                "-6251221693/31250000000"
              ],
              [
                "120039/250000",
                "-75824787549/250000000000"
              ],
              [
                "881037/1000000",
                "-369505586777/1000000000000"
              ],
              [
                "881037/1000000",
                "-666804073227/1000000000000"
              ],
              [
                "120039/250000",
                "-32132490203/100000000000"
              ],
              [
                "120039/250000",
                "-8491699161/20000000000"
              ]
            ],
            "raw": [
              "248219778923/881037000000",
              "683603/1000000"
            ],
            "new": [
              "56347/200000",
              "683603/1000000"
            ]
          },
          {
            "factor": 192,
            "target": "u",
            "old": [
              "324041/1000000",
              "366589/500000"
            ],
            "lines": [
              [
                "-1/1",
                "2081981601/4000000000"
              ],
              [
                "-1/1",
                "65621300853/100000000000"
              ],
              [
                "-1/1",
                "14877484793/25000000000"
              ],
              [
                "-1/1",
                "730817/1000000"
              ],
              [
                "-1/1",
                "9800274249/20000000000"
              ],
              [
                "-1/1",
                "274898779197/500000000000"
              ],
              [
                "-1/1",
                "83879144257/125000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "730817/1000000"
            ],
            "new": [
              "324041/1000000",
              "730817/1000000"
            ]
          },
          {
            "factor": 478,
            "target": "y",
            "old": [
              "190319/500000",
              "907/1000"
            ],
            "lines": [
              [
                "1/1",
                "-126226158503/200000000000"
              ],
              [
                "1/1",
                "-144888380687/200000000000"
              ],
              [
                "1/1",
                "-90523234449/200000000000"
              ],
              [
                "1/1",
                "-90893769321/200000000000"
              ],
              [
                "1/1",
                "-773482952717/1000000000000"
              ],
              [
                "1/1",
                "-939725378693/1000000000000"
              ],
              [
                "1/1",
                "-594968332447/1000000000000"
              ],
              [
                "1/1",
                "-669752321863/1000000000000"
              ],
              [
                "1/1",
                "-42912116591/100000000000"
              ],
              [
                "1/1",
                "-52243227683/100000000000"
              ],
              [
                "1/1",
                "-44860530953/100000000000"
              ],
              [
                "1/1",
                "-45045798389/100000000000"
              ],
              [
                "1/1",
                "-206792003749/500000000000"
              ],
              [
                "1/1",
                "-289913216737/500000000000"
              ],
              [
                "1/1",
                "-216534075559/500000000000"
              ],
              [
                "1/1",
                "-253926070267/500000000000"
              ]
            ],
            "raw": [
              "206792003749/500000000000",
              "907/1000"
            ],
            "new": [
              "25849/62500",
              "907/1000"
            ]
          },
          {
            "factor": 1361,
            "target": "z",
            "old": [
              "305069/1000000",
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
              "305069/1000000",
              "587789/773789"
            ],
            "new": [
              "305069/1000000",
              "6077/8000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "129961/250000"
            ],
            "lines": [
              [
                "-307011/500000",
                "2421161721/20000000000"
              ],
              [
                "-307011/500000",
                "89717686653/500000000000"
              ],
              [
                "-1/1",
                "7769658867/20000000000"
              ],
              [
                "-1/1",
                "259895772831/500000000000"
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
              "259895772831/500000000000"
            ],
            "new": [
              "118963/1000000",
              "32487/62500"
            ]
          },
          {
            "factor": 98,
            "target": "a",
            "old": [
              "139/1000",
              "309781/500000"
            ],
            "lines": [
              [
                "-324041/1000000",
                "-40015848549/500000000000"
              ],
              [
                "-324041/1000000",
                "45041/1000000"
              ],
              [
                "-45819/62500",
                "5348187009/31250000000"
              ],
              [
                "-45819/62500",
                "56763/125000"
              ]
            ],
            "raw": [
              "139/1000",
              "6307/10182"
            ],
            "new": [
              "139/1000",
              "619427/1000000"
            ]
          },
          {
            "factor": 116,
            "target": "a",
            "old": [
              "139/1000",
              "619427/1000000"
            ],
            "lines": [
              [
                "-324041/1000000",
                "-40015848549/500000000000"
              ],
              [
                "-324041/1000000",
                "45041/1000000"
              ],
              [
                "-730817/1000000",
                "84868857987/500000000000"
              ],
              [
                "-730817/1000000",
                "451817/1000000"
              ]
            ],
            "raw": [
              "139/1000",
              "451817/730817"
            ],
            "new": [
              "139/1000",
              "154559/250000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "324041/1000000",
              "45819/62500"
            ],
            "lines": [
              [
                "-143653/200000",
                "22296707507/125000000000"
              ],
              [
                "-143653/200000",
                "106643769477/500000000000"
              ],
              [
                "-143653/200000",
                "161462159/500000000"
              ],
              [
                "-143653/200000",
                "48849574053/100000000000"
              ],
              [
                "-143653/200000",
                "52114201859/125000000000"
              ],
              [
                "-143653/200000",
                "45182749377/100000000000"
              ],
              [
                "-143653/200000",
                "180377243/500000000"
              ],
              [
                "-143653/200000",
                "52632590853/100000000000"
              ],
              [
                "-316397/1000000",
                "-8697361993/125000000000"
              ],
              [
                "-316397/1000000",
                "-70540233591/500000000000"
              ],
              [
                "-316397/1000000",
                "37485881/500000000"
              ],
              [
                "-316397/1000000",
                "67063867197/500000000000"
              ],
              [
                "-316397/1000000",
                "21120132359/125000000000"
              ],
              [
                "-316397/1000000",
                "48729743817/500000000000"
              ],
              [
                "-316397/1000000",
                "11280193/100000000"
              ],
              [
                "-316397/1000000",
                "85978951197/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "52632590853/71826500000"
            ],
            "new": [
              "324041/1000000",
              "366387/500000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "305069/1000000",
              "6077/8000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-666824357/3906250000"
              ],
              [
                "324041/1000000",
                "-1344938979/5000000000"
              ],
              [
                "324041/1000000",
                "-35096033191/125000000000"
              ],
              [
                "324041/1000000",
                "-46739334823/250000000000"
              ],
              [
                "366387/500000",
                "-28440115299/125000000000"
              ],
              [
                "366387/500000",
                "-130420312697/250000000000"
              ],
              [
                "366387/500000",
                "-21098884533/62500000000"
              ],
              [
                "366387/500000",
                "-10991269857/25000000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-20480377713/62500000000"
              ],
              [
                "324041/1000000",
                "-107448391/200000000"
              ],
              [
                "324041/1000000",
                "-110857757191/250000000000"
              ],
              [
                "366387/500000",
                "-28621917/100000000"
              ],
              [
                "366387/500000",
                "-145094874599/250000000000"
              ],
              [
                "366387/500000",
                "-297027921/500000000"
              ],
              [
                "366387/500000",
                "-87015560469/125000000000"
              ]
            ],
            "raw": [
              "9480038433/30532250000",
              "6077/8000"
            ],
            "new": [
              "77623/250000",
              "6077/8000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "56347/200000",
              "683603/1000000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-163763785707/500000000000"
              ],
              [
                "881037/1000000",
                "-213395737877/500000000000"
              ],
              [
                "30013/62500",
                "-279353136391/1000000000000"
              ],
              [
                "30013/62500",
                "-184603779861/1000000000000"
              ],
              [
                "881037/1000000",
                "-631123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-730386969301/1000000000000"
              ],
              [
                "30013/62500",
                "-291474314969/500000000000"
              ],
              [
                "30013/62500",
                "-7628113647/15625000000"
              ],
              [
                "881037/1000000",
                "-125058032367/500000000000"
              ],
              [
                "881037/1000000",
                "-273135878177/500000000000"
              ],
              [
                "30013/62500",
                "-201941629711/1000000000000"
              ],
              [
                "30013/62500",
                "-304084060461/1000000000000"
              ],
              [
                "881037/1000000",
                "-371015033073/1000000000000"
              ],
              [
                "881037/1000000",
                "-667170724693/1000000000000"
              ],
              [
                "30013/62500",
                "-6456811961/20000000000"
              ],
              [
                "30013/62500",
                "-265614393/625000000"
              ]
            ],
            "raw": [
              "41686010789/146839500000",
              "683603/1000000"
            ],
            "new": [
              "17743/62500",
              "683603/1000000"
            ]
          },
          {
            "factor": 478,
            "target": "y",
            "old": [
              "25849/62500",
              "907/1000"
            ],
            "lines": [
              [
                "1/1",
                "-126226158503/200000000000"
              ],
              [
                "1/1",
                "-144888380687/200000000000"
              ],
              [
                "1/1",
                "-90523234449/200000000000"
              ],
              [
                "1/1",
                "-90893769321/200000000000"
              ],
              [
                "1/1",
                "-773482952717/1000000000000"
              ],
              [
                "1/1",
                "-939725378693/1000000000000"
              ],
              [
                "1/1",
                "-594968332447/1000000000000"
              ],
              [
                "1/1",
                "-669752321863/1000000000000"
              ],
              [
                "1/1",
                "-21464206573/50000000000"
              ],
              [
                "1/1",
                "-26129762119/50000000000"
              ],
              [
                "1/1",
                "-22430427259/50000000000"
              ],
              [
                "1/1",
                "-22523060977/50000000000"
              ],
              [
                "1/1",
                "-103468586447/250000000000"
              ],
              [
                "1/1",
                "-145029192941/250000000000"
              ],
              [
                "1/1",
                "-108299689877/250000000000"
              ],
              [
                "1/1",
                "-126995687231/250000000000"
              ]
            ],
            "raw": [
              "103468586447/250000000000",
              "907/1000"
            ],
            "new": [
              "206937/500000",
              "907/1000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "32487/62500"
            ],
            "lines": [
              [
                "-307011/500000",
                "234601521/2000000000"
              ],
              [
                "-307011/500000",
                "8732668053/50000000000"
              ],
              [
                "-1/1",
                "1923628089/5000000000"
              ],
              [
                "-1/1",
                "64376191677/125000000000"
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
              "64376191677/125000000000"
            ],
            "new": [
              "118963/1000000",
              "51501/100000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "324041/1000000",
              "366387/500000"
            ],
            "lines": [
              [
                "-44757/62500",
                "88565108583/500000000000"
              ],
              [
                "-44757/62500",
                "105775384969/500000000000"
              ],
              [
                "-44757/62500",
                "321595917/1000000000"
              ],
              [
                "-44757/62500",
                "60824652603/125000000000"
              ],
              [
                "-44757/62500",
                "207776103471/500000000000"
              ],
              [
                "-44757/62500",
                "224986379857/500000000000"
              ],
              [
                "-44757/62500",
                "71885217/200000000"
              ],
              [
                "-44757/62500",
                "65553423603/125000000000"
              ],
              [
                "-316397/1000000",
                "-34746968917/500000000000"
              ],
              [
                "-316397/1000000",
                "-35229679123/250000000000"
              ],
              [
                "-316397/1000000",
                "37485881/500000000"
              ],
              [
                "-316397/1000000",
                "67063867197/500000000000"
              ],
              [
                "-316397/1000000",
                "84464025971/500000000000"
              ],
              [
                "-316397/1000000",
                "24375818321/250000000000"
              ],
              [
                "-316397/1000000",
                "11280193/100000000"
              ],
              [
                "-316397/1000000",
                "85978951197/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "21851141201/29838000000"
            ],
            "new": [
              "324041/1000000",
              "366163/500000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "77623/250000",
              "6077/8000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-85370767331/500000000000"
              ],
              [
                "324041/1000000",
                "-26902229507/100000000000"
              ],
              [
                "324041/1000000",
                "-13980227887/50000000000"
              ],
              [
                "324041/1000000",
                "-23510667257/125000000000"
              ],
              [
                "366163/500000",
                "-113746574831/500000000000"
              ],
              [
                "366163/500000",
                "-52143878033/100000000000"
              ],
              [
                "366163/500000",
                "-16817808637/50000000000"
              ],
              [
                "366163/500000",
                "-110125455829/250000000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-20480377713/62500000000"
              ],
              [
                "324041/1000000",
                "-533569379/1000000000"
              ],
              [
                "324041/1000000",
                "-110512539829/250000000000"
              ],
              [
                "366163/500000",
                "-143078449/500000000"
              ],
              [
                "366163/500000",
                "-145025632167/250000000000"
              ],
              [
                "366163/500000",
                "-295160497/500000000"
              ],
              [
                "366163/500000",
                "-21702082643/31250000000"
              ]
            ],
            "raw": [
              "113746574831/366163000000",
              "6077/8000"
            ],
            "new": [
              "77661/250000",
              "6077/8000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "17743/62500",
              "683603/1000000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-163815158591/500000000000"
              ],
              [
                "881037/1000000",
                "-213447110761/500000000000"
              ],
              [
                "48499/100000",
                "-280030616393/1000000000000"
              ],
              [
                "48499/100000",
                "-187595891323/1000000000000"
              ],
              [
                "881037/1000000",
                "-631123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-730386969301/1000000000000"
              ],
              [
                "48499/100000",
                "-145880841043/250000000000"
              ],
              [
                "48499/100000",
                "-245544319551/500000000000"
              ],
              [
                "881037/1000000",
                "-5003139611/20000000000"
              ],
              [
                "881037/1000000",
                "-54631267217/100000000000"
              ],
              [
                "48499/100000",
                "-202557279761/1000000000000"
              ],
              [
                "48499/100000",
                "-307014341971/1000000000000"
              ],
              [
                "881037/1000000",
                "-371015033073/1000000000000"
              ],
              [
                "881037/1000000",
                "-667170724693/1000000000000"
              ],
              [
                "48499/100000",
                "-80853833071/250000000000"
              ],
              [
                "48499/100000",
                "-213936197247/500000000000"
              ]
            ],
            "raw": [
              "5003139611/17620740000",
              "683603/1000000"
            ],
            "new": [
              "141967/500000",
              "683603/1000000"
            ]
          },
          {
            "factor": 478,
            "target": "y",
            "old": [
              "206937/500000",
              "907/1000"
            ],
            "lines": [
              [
                "1/1",
                "-126226158503/200000000000"
              ],
              [
                "1/1",
                "-144888380687/200000000000"
              ],
              [
                "1/1",
                "-90523234449/200000000000"
              ],
              [
                "1/1",
                "-90893769321/200000000000"
              ],
              [
                "1/1",
                "-773482952717/1000000000000"
              ],
              [
                "1/1",
                "-939725378693/1000000000000"
              ],
              [
                "1/1",
                "-594968332447/1000000000000"
              ],
              [
                "1/1",
                "-669752321863/1000000000000"
              ],
              [
                "1/1",
                "-21475268477/50000000000"
              ],
              [
                "1/1",
                "-26140824023/50000000000"
              ],
              [
                "1/1",
                "-22430646891/50000000000"
              ],
              [
                "1/1",
                "-22523280609/50000000000"
              ],
              [
                "1/1",
                "-103567125503/250000000000"
              ],
              [
                "1/1",
                "-145127731997/250000000000"
              ],
              [
                "1/1",
                "-108344017573/250000000000"
              ],
              [
                "1/1",
                "-127040014927/250000000000"
              ]
            ],
            "raw": [
              "103567125503/250000000000",
              "907/1000"
            ],
            "new": [
              "103567/250000",
              "907/1000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "51501/100000"
            ],
            "lines": [
              [
                "-307011/500000",
                "1171954473/10000000000"
              ],
              [
                "-307011/500000",
                "43629831789/250000000000"
              ],
              [
                "-1/1",
                "1923101523/5000000000"
              ],
              [
                "-1/1",
                "64359437439/125000000000"
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
              "64359437439/125000000000"
            ],
            "new": [
              "118963/1000000",
              "128719/250000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "324041/1000000",
              "366163/500000"
            ],
            "lines": [
              [
                "-358033/500000",
                "44304315253/250000000000"
              ],
              [
                "-358033/500000",
                "2646624561/12500000000"
              ],
              [
                "-358033/500000",
                "64313507/200000000"
              ],
              [
                "-358033/500000",
                "121639164483/250000000000"
              ],
              [
                "-358033/500000",
                "103869745261/250000000000"
              ],
              [
                "-358033/500000",
                "28124480307/62500000000"
              ],
              [
                "-358033/500000",
                "359397703/1000000000"
              ],
              [
                "-358033/500000",
                "131096706483/250000000000"
              ],
              [
                "-316397/1000000",
                "-17344627997/250000000000"
              ],
              [
                "-316397/1000000",
                "-70349479329/500000000000"
              ],
              [
                "-316397/1000000",
                "37485881/500000000"
              ],
              [
                "-316397/1000000",
                "67063867197/500000000000"
              ],
              [
                "-316397/1000000",
                "42220802011/250000000000"
              ],
              [
                "-316397/1000000",
                "48781380687/500000000000"
              ],
              [
                "-316397/1000000",
                "11280193/100000000"
              ],
              [
                "-316397/1000000",
                "85978951197/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "131096706483/179016500000"
            ],
            "new": [
              "324041/1000000",
              "732317/1000000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "77661/250000",
              "6077/8000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-42697101521/250000000000"
              ],
              [
                "324041/1000000",
                "-67267291623/250000000000"
              ],
              [
                "324041/1000000",
                "-34971323221/125000000000"
              ],
              [
                "324041/1000000",
                "-47078895927/250000000000"
              ],
              [
                "732317/1000000",
                "-56884692521/250000000000"
              ],
              [
                "732317/1000000",
                "-130370021907/250000000000"
              ],
              [
                "732317/1000000",
                "-42065118721/125000000000"
              ],
              [
                "732317/1000000",
                "-110181626211/250000000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-20480377713/62500000000"
              ],
              [
                "324041/1000000",
                "-533466467/1000000000"
              ],
              [
                "324041/1000000",
                "-22100573247/50000000000"
              ],
              [
                "732317/1000000",
                "-286155647/1000000000"
              ],
              [
                "732317/1000000",
                "-9064015071/15625000000"
              ],
              [
                "732317/1000000",
                "-590216831/1000000000"
              ],
              [
                "732317/1000000",
                "-173605596519/250000000000"
              ]
            ],
            "raw": [
              "56884692521/183079250000",
              "6077/8000"
            ],
            "new": [
              "31071/100000",
              "6077/8000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "141967/500000",
              "683603/1000000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-81918732619/250000000000"
              ],
              [
                "881037/1000000",
                "-3335459647/7812500000"
              ],
              [
                "121281/250000",
                "-56018266949/200000000000"
              ],
              [
                "121281/250000",
                "-37544293939/200000000000"
              ],
              [
                "881037/1000000",
                "-631123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-730386969301/1000000000000"
              ],
              [
                "121281/250000",
                "-58353946923/100000000000"
              ],
              [
                "121281/250000",
                "-24558480209/50000000000"
              ],
              [
                "881037/1000000",
                "-62543686657/250000000000"
              ],
              [
                "881037/1000000",
                "-68291304781/125000000000"
              ],
              [
                "121281/250000",
                "-202591150897/1000000000000"
              ],
              [
                "121281/250000",
                "-307113073127/1000000000000"
              ],
              [
                "881037/1000000",
                "-371015033073/1000000000000"
              ],
              [
                "881037/1000000",
                "-667170724693/1000000000000"
              ],
              [
                "121281/250000",
                "-161715718671/500000000000"
              ],
              [
                "121281/250000",
                "-106988339893/250000000000"
              ]
            ],
            "raw": [
              "62543686657/220259250000",
              "683603/1000000"
            ],
            "new": [
              "141977/500000",
              "683603/1000000"
            ]
          },
          {
            "factor": 478,
            "target": "y",
            "old": [
              "103567/250000",
              "907/1000"
            ],
            "lines": [
              [
                "1/1",
                "-126226158503/200000000000"
              ],
              [
                "1/1",
                "-144888380687/200000000000"
              ],
              [
                "1/1",
                "-90523234449/200000000000"
              ],
              [
                "1/1",
                "-90893769321/200000000000"
              ],
              [
                "1/1",
                "-773482952717/1000000000000"
              ],
              [
                "1/1",
                "-939725378693/1000000000000"
              ],
              [
                "1/1",
                "-594968332447/1000000000000"
              ],
              [
                "1/1",
                "-669752321863/1000000000000"
              ],
              [
                "1/1",
                "-85901962811/200000000000"
              ],
              [
                "1/1",
                "-20912836999/40000000000"
              ],
              [
                "1/1",
                "-89722605213/200000000000"
              ],
              [
                "1/1",
                "-18018628017/40000000000"
              ],
              [
                "1/1",
                "-414276420329/1000000000000"
              ],
              [
                "1/1",
                "-116103769261/200000000000"
              ],
              [
                "1/1",
                "-433379632339/1000000000000"
              ],
              [
                "1/1",
                "-101632724351/200000000000"
              ]
            ],
            "raw": [
              "414276420329/1000000000000",
              "907/1000"
            ],
            "new": [
              "103569/250000",
              "907/1000"
            ]
          }
        ]
      }
    },
    {
      "id": 2,
      "assumptions": [
        "AGO-",
        "AGP-",
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
          "31071/100000",
          "324041/1000000",
          "103569/250000",
          "324041/1000000",
          "141977/500000"
        ],
        "high": [
          "154559/250000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "128719/250000",
          "1",
          "6077/8000",
          "732317/1000000",
          "907/1000",
          "730817/1000000",
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
        "AGO": -1,
        "AGP": -1,
        "DGP": -1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "BDG": 1,
        "DGH": -1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "ADP": 1,
        "BDP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEO": 1,
        "BEG": 1,
        "DHO": -1,
        "AOP": -1,
        "GOP": -1,
        "FGP": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "CABHO"
          ],
          "target": "ACO",
          "sign": 1,
          "deps": [
            "ABC",
            "CHO",
            "ACH",
            "BCO",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CABHP"
          ],
          "target": "ACP",
          "sign": 1,
          "deps": [
            "ABC",
            "CHP",
            "ACH",
            "BCP",
            "BCH"
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
            "GABCO"
          ],
          "target": "BGO",
          "sign": -1,
          "deps": [
            "ABG",
            "CGO",
            "ACG",
            "AGO",
            "BCG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GABCP"
          ],
          "target": "BGP",
          "sign": -1,
          "deps": [
            "ABG",
            "CGP",
            "ACG",
            "AGP",
            "BCG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACDO"
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ACG",
            "DGO",
            "CGO",
            "AGO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACHO"
          ],
          "target": "GHO",
          "sign": -1,
          "deps": [
            "ACG",
            "AGH",
            "CGO",
            "AGO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACHP"
          ],
          "target": "GHP",
          "sign": -1,
          "deps": [
            "ACG",
            "AGH",
            "CGP",
            "AGP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GBCDO"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "BCG",
            "DGO",
            "CGO",
            "BGO",
            "CDG"
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
            "OACDG"
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACO",
            "DGO",
            "CGO",
            "AGO",
            "CDO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OBCDG"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "BCO",
            "DGO",
            "CGO",
            "BGO",
            "CDO"
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
            "PACDG"
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACP",
            "DGP",
            "CGP",
            "AGP",
            "CDP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PBCDG"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "BCP",
            "DGP",
            "CGP",
            "BGP",
            "CDP"
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
            "BAEGO"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "BGO",
            "ABG",
            "BEO",
            "ABO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "GDH",
            "OP",
            "DHG",
            [
              "area",
              "DGH",
              "T0004",
              "27/40"
            ]
          ],
          "target": "DHO",
          "sign": -1,
          "deps": [
            "GHO",
            "DGO",
            "GHP",
            "DGP",
            "DOP"
          ],
          "area_stage": 0
        },
        {
          "rule": [
            "cap",
            "HAO",
            [
              "G"
            ],
            "P",
            [
              "area",
              "AHO",
              "U_AHO",
              "126285453/200000000"
            ]
          ],
          "target": "AOP",
          "sign": -1,
          "deps": [
            "AHP",
            "HOP"
          ],
          "area_stage": 1
        },
        {
          "rule": [
            "plu",
            "OACGP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ACO",
            "AGO",
            "COP",
            "AOP",
            "CGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "GFH",
            "OP",
            "GFH",
            [
              "area",
              "FGH",
              "U_FGH",
              "30642178599/50000000000"
            ]
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "FHO",
            "GHO",
            "FHP",
            "GHP",
            "GOP"
          ],
          "area_stage": 1
        }
      ],
      "initial": {
        "L_AGO": {
          "triangle": "AGO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GAO",
            "points": []
          }
        },
        "L_AHP": {
          "triangle": "AHP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HAP",
            "points": [
              "G"
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
        "L_DGP": {
          "triangle": "DGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GDP",
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
        "U_FHP": {
          "triangle": "FHP",
          "side": "hi",
          "value": "157852698723/250000000000",
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
              "7964504017/125000000000",
              "41070610049/500000000000",
              "195216949/1000000000",
              "27590327383/125000000000",
              "119573903513/500000000000",
              "139499753697/500000000000",
              "164362326549/500000000000",
              "208063659817/500000000000",
              "220900191/500000000",
              "242865620013/500000000000",
              "286566953281/500000000000",
              "157852698723/250000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "3549": {
          "row": [
            "linear",
            {
              "CFP": "111352698723/250000000000",
              "CHP": "-93/1000",
              "COP": "-157852698723/250000000000"
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
              "value": "157852698723/250000000000"
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
            "residual": "88102698723/250000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0060",
          "relation": 3549,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "75627/500000",
          "sources": [
            "L_CHP",
            "L_COP"
          ]
        }
      ],
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
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AHP",
            "side": "lo",
            "reference": "L_AHP",
            "value": "279/1000"
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
        "138": {
          "name": "AREA_LO_AGO",
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
                0,
                6
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
            "triangle": "AGO",
            "side": "lo",
            "reference": "L_AGO",
            "value": "93/1000"
          }
        },
        "142": {
          "name": "AREA_LO_DGP",
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
                3,
                6
              ],
              "1"
            ],
            [
              [
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
                8
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
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DGP",
            "side": "lo",
            "reference": "L_DGP",
            "value": "93/1000"
          }
        },
        "192": {
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
              "-75627/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "lo",
            "reference": "T0060",
            "value": "75627/500000"
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
          "162377/500000",
          "324041/1000000",
          "499229/1000000",
          "324041/1000000",
          "72077/250000"
        ],
        "high": [
          "123619/200000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "251221/500000",
          "1/1",
          "6077/8000",
          "182841/250000",
          "907/1000",
          "182637/250000",
          "683603/1000000"
        ],
        "steps": [
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "128719/250000"
            ],
            "lines": [
              [
                "-307011/500000",
                "146437149/1250000000"
              ],
              [
                "-307011/500000",
                "5451910257/31250000000"
              ],
              [
                "-1/1",
                "769149153/2000000000"
              ],
              [
                "-1/1",
                "25740865029/50000000000"
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
              "25740865029/50000000000"
            ],
            "new": [
              "118963/1000000",
              "257409/500000"
            ]
          },
          {
            "factor": 130,
            "target": "y",
            "old": [
              "103569/250000",
              "907/1000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-128418732619/250000000000"
              ],
              [
                "881037/1000000",
                "-4788584647/7812500000"
              ],
              [
                "242591/500000",
                "-466098305591/1000000000000"
              ],
              [
                "242591/500000",
                "-373756514281/1000000000000"
              ],
              [
                "881037/1000000",
                "-817123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-916386969301/1000000000000"
              ],
              [
                "242591/500000",
                "-192386610019/250000000000"
              ],
              [
                "242591/500000",
                "-338602324383/500000000000"
              ],
              [
                "881037/1000000",
                "-27243060133/62500000000"
              ],
              [
                "881037/1000000",
                "-183192674687/250000000000"
              ],
              [
                "242591/500000",
                "-388312337243/1000000000000"
              ],
              [
                "242591/500000",
                "-493588378213/1000000000000"
              ],
              [
                "881037/1000000",
                "-556055876073/1000000000000"
              ],
              [
                "881037/1000000",
                "-852937612693/1000000000000"
              ],
              [
                "242591/500000",
                "-127119812797/250000000000"
              ],
              [
                "242591/500000",
                "-306877646079/500000000000"
              ]
            ],
            "raw": [
              "27243060133/55064812500",
              "907/1000"
            ],
            "new": [
              "98949/200000",
              "907/1000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "324041/1000000",
              "732317/1000000"
            ],
            "lines": [
              [
                "-358023/500000",
                "40156276491/200000000000"
              ],
              [
                "-358023/500000",
                "256599260837/1000000000000"
              ],
              [
                "-358023/500000",
                "64311039/200000000"
              ],
              [
                "-358023/500000",
                "121634755473/250000000000"
              ],
              [
                "-358023/500000",
                "81261398067/200000000000"
              ],
              [
                "-358023/500000",
                "462124868717/1000000000000"
              ],
              [
                "-358023/500000",
                "359385363/1000000000"
              ],
              [
                "-358023/500000",
                "131092297473/250000000000"
              ],
              [
                "-316397/1000000",
                "-9160410109/200000000000"
              ],
              [
                "-316397/1000000",
                "-95812026661/1000000000000"
              ],
              [
                "-316397/1000000",
                "37485881/500000000"
              ],
              [
                "-316397/1000000",
                "67063867197/500000000000"
              ],
              [
                "-316397/1000000",
                "31944711467/200000000000"
              ],
              [
                "-316397/1000000",
                "109713581219/1000000000000"
              ],
              [
                "-316397/1000000",
                "11280193/100000000"
              ],
              [
                "-316397/1000000",
                "85978951197/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "43697432491/59670500000"
            ],
            "new": [
              "324041/1000000",
              "732313/1000000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "31071/100000",
              "6077/8000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-36072438287/200000000000"
              ],
              [
                "324041/1000000",
                "-278642951843/1000000000000"
              ],
              [
                "324041/1000000",
                "-32118562841/100000000000"
              ],
              [
                "324041/1000000",
                "-114879211019/500000000000"
              ],
              [
                "732313/1000000",
                "-47422399887/200000000000"
              ],
              [
                "732313/1000000",
                "-106210280007/200000000000"
              ],
              [
                "732313/1000000",
                "-37793543641/100000000000"
              ],
              [
                "732313/1000000",
                "-48216687023/100000000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-20480377713/62500000000"
              ],
              [
                "324041/1000000",
                "-533421923/1000000000"
              ],
              [
                "324041/1000000",
                "-110498679157/250000000000"
              ],
              [
                "732313/1000000",
                "-286155091/1000000000"
              ],
              [
                "732313/1000000",
                "-1450236229/2500000000"
              ],
              [
                "732313/1000000",
                "-590171731/1000000000"
              ],
              [
                "732313/1000000",
                "-34720158241/50000000000"
              ]
            ],
            "raw": [
              "47422399887/146462600000",
              "6077/8000"
            ],
            "new": [
              "64757/200000",
              "6077/8000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "141977/500000",
              "683603/1000000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-336513094401/1000000000000"
              ],
              [
                "881037/1000000",
                "-435776998741/1000000000000"
              ],
              [
                "242591/500000",
                "-72234117379/250000000000"
              ],
              [
                "242591/500000",
                "-98297339103/500000000000"
              ],
              [
                "881037/1000000",
                "-631123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-730386969301/1000000000000"
              ],
              [
                "242591/500000",
                "-145886610019/250000000000"
              ],
              [
                "242591/500000",
                "-245602324383/500000000000"
              ],
              [
                "881037/1000000",
                "-253694314353/1000000000000"
              ],
              [
                "881037/1000000",
                "-549850005973/1000000000000"
              ],
              [
                "242591/500000",
                "-51529422367/250000000000"
              ],
              [
                "242591/500000",
                "-155333842719/500000000000"
              ],
              [
                "881037/1000000",
                "-371015033073/1000000000000"
              ],
              [
                "881037/1000000",
                "-667170724693/1000000000000"
              ],
              [
                "242591/500000",
                "-80859602047/250000000000"
              ],
              [
                "242591/500000",
                "-213994202079/500000000000"
              ]
            ],
            "raw": [
              "84564771451/293679000000",
              "683603/1000000"
            ],
            "new": [
              "287949/1000000",
              "683603/1000000"
            ]
          },
          {
            "factor": 192,
            "target": "u",
            "old": [
              "324041/1000000",
              "730817/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "10395101367/20000000000"
              ],
              [
                "-1/1",
                "327149264451/500000000000"
              ],
              [
                "-1/1",
                "74500567431/125000000000"
              ],
              [
                "-1/1",
                "182637/250000"
              ],
              [
                "-1/1",
                "9794894249/20000000000"
              ],
              [
                "-1/1",
                "274764279197/500000000000"
              ],
              [
                "-1/1",
                "83845519257/125000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "182637/250000"
            ],
            "new": [
              "324041/1000000",
              "182637/250000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "257409/500000"
            ],
            "lines": [
              [
                "-307011/500000",
                "2161814109/20000000000"
              ],
              [
                "-307011/500000",
                "81465783537/500000000000"
              ],
              [
                "-1/1",
                "1502062251/4000000000"
              ],
              [
                "-1/1",
                "50328773943/100000000000"
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
              "50328773943/100000000000"
            ],
            "new": [
              "118963/1000000",
              "62911/125000"
            ]
          },
          {
            "factor": 116,
            "target": "a",
            "old": [
              "139/1000",
              "154559/250000"
            ],
            "lines": [
              [
                "-324041/1000000",
                "-40015848549/500000000000"
              ],
              [
                "-324041/1000000",
                "45041/1000000"
              ],
              [
                "-182637/250000",
                "21196568007/125000000000"
              ],
              [
                "-182637/250000",
                "112887/250000"
              ]
            ],
            "raw": [
              "139/1000",
              "12543/20293"
            ],
            "new": [
              "139/1000",
              "123619/200000"
            ]
          },
          {
            "factor": 130,
            "target": "y",
            "old": [
              "98949/200000",
              "907/1000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-522513094401/1000000000000"
              ],
              [
                "881037/1000000",
                "-621776998741/1000000000000"
              ],
              [
                "62089/125000",
                "-238161112813/500000000000"
              ],
              [
                "62089/125000",
                "-48695162527/125000000000"
              ],
              [
                "881037/1000000",
                "-817123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-916386969301/1000000000000"
              ],
              [
                "62089/125000",
                "-385466098093/500000000000"
              ],
              [
                "62089/125000",
                "-85521408847/125000000000"
              ],
              [
                "881037/1000000",
                "-87877946349/200000000000"
              ],
              [
                "881037/1000000",
                "-147253906449/200000000000"
              ],
              [
                "62089/125000",
                "-39319886297/100000000000"
              ],
              [
                "62089/125000",
                "-12601345843/25000000000"
              ],
              [
                "881037/1000000",
                "-22242337353/40000000000"
              ],
              [
                "881037/1000000",
                "-34117529373/40000000000"
              ],
              [
                "62089/125000",
                "-10197351301/20000000000"
              ],
              [
                "62089/125000",
                "-3103612679/5000000000"
              ]
            ],
            "raw": [
              "9764216261/19578600000",
              "907/1000"
            ],
            "new": [
              "249359/500000",
              "907/1000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "324041/1000000",
              "732313/1000000"
            ],
            "lines": [
              [
                "-712051/1000000",
                "99740196781/500000000000"
              ],
              [
                "-712051/1000000",
                "2552924463/10000000000"
              ],
              [
                "-712051/1000000",
                "7977257/25000000"
              ],
              [
                "-712051/1000000",
                "241508111451/500000000000"
              ],
              [
                "-712051/1000000",
                "25203439721/62500000000"
              ],
              [
                "-712051/1000000",
                "229533544137/500000000000"
              ],
              [
                "-712051/1000000",
                "356895431/1000000000"
              ],
              [
                "-712051/1000000",
                "260410686951/500000000000"
              ],
              [
                "-316397/1000000",
                "-22319062219/500000000000"
              ],
              [
                "-316397/1000000",
                "-2924876319/31250000000"
              ],
              [
                "-316397/1000000",
                "37485881/500000000"
              ],
              [
                "-316397/1000000",
                "67063867197/500000000000"
              ],
              [
                "-316397/1000000",
                "4973016173/31250000000"
              ],
              [
                "-316397/1000000",
                "55089299883/500000000000"
              ],
              [
                "-316397/1000000",
                "112776913/1000000000"
              ],
              [
                "-316397/1000000",
                "85966442697/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "260410686951/356025500000"
            ],
            "new": [
              "324041/1000000",
              "731439/1000000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "64757/200000",
              "6077/8000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-90417415717/500000000000"
              ],
              [
                "324041/1000000",
                "-69771668961/250000000000"
              ],
              [
                "324041/1000000",
                "-39885431473/125000000000"
              ],
              [
                "324041/1000000",
                "-233207110319/1000000000000"
              ],
              [
                "731439/1000000",
                "-118731576717/500000000000"
              ],
              [
                "731439/1000000",
                "-265448671327/500000000000"
              ],
              [
                "731439/1000000",
                "-46963971723/125000000000"
              ],
              [
                "731439/1000000",
                "-485017777129/1000000000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-32765712741/100000000000"
              ],
              [
                "324041/1000000",
                "-524566883/1000000000"
              ],
              [
                "324041/1000000",
                "-87738108307/200000000000"
              ],
              [
                "731439/1000000",
                "-57206721/200000000"
              ],
              [
                "731439/1000000",
                "-28973389711/50000000000"
              ],
              [
                "731439/1000000",
                "-116239041/200000000"
              ],
              [
                "731439/1000000",
                "-138100241669/200000000000"
              ]
            ],
            "raw": [
              "13192397413/40635500000",
              "6077/8000"
            ],
            "new": [
              "81163/250000",
              "6077/8000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "287949/1000000",
              "683603/1000000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-168549575427/500000000000"
              ],
              [
                "881037/1000000",
                "-218181527597/500000000000"
              ],
              [
                "62089/125000",
                "-290908282079/1000000000000"
              ],
              [
                "62089/125000",
                "-204147356669/1000000000000"
              ],
              [
                "881037/1000000",
                "-631123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-730386969301/1000000000000"
              ],
              [
                "62089/125000",
                "-292466098093/500000000000"
              ],
              [
                "62089/125000",
                "-62271408847/125000000000"
              ],
              [
                "881037/1000000",
                "-253982697099/1000000000000"
              ],
              [
                "881037/1000000",
                "-550008184649/1000000000000"
              ],
              [
                "62089/125000",
                "-51947957081/250000000000"
              ],
              [
                "62089/125000",
                "-79448121531/250000000000"
              ],
              [
                "881037/1000000",
                "-74237408379/200000000000"
              ],
              [
                "881037/1000000",
                "-133442505889/200000000000"
              ],
              [
                "62089/125000",
                "-1015613041/3125000000"
              ],
              [
                "62089/125000",
                "-10874920773/25000000000"
              ]
            ],
            "raw": [
              "84660899033/293679000000",
              "683603/1000000"
            ],
            "new": [
              "72069/250000",
              "683603/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "62911/125000"
            ],
            "lines": [
              [
                "-307011/500000",
                "214980009/2000000000"
              ],
              [
                "-307011/500000",
                "8108352237/50000000000"
              ],
              [
                "-1/1",
                "1874574309/5000000000"
              ],
              [
                "-1/1",
                "62815402137/125000000000"
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
              "62815402137/125000000000"
            ],
            "new": [
              "118963/1000000",
              "125631/250000"
            ]
          },
          {
            "factor": 130,
            "target": "y",
            "old": [
              "249359/500000",
              "907/1000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-261549575427/500000000000"
              ],
              [
                "881037/1000000",
                "-311181527597/500000000000"
              ],
              [
                "124369/250000",
                "-477000104947/1000000000000"
              ],
              [
                "124369/250000",
                "-390608978457/1000000000000"
              ],
              [
                "881037/1000000",
                "-817123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-916386969301/1000000000000"
              ],
              [
                "124369/250000",
                "-385512009527/500000000000"
              ],
              [
                "124369/250000",
                "-171158223141/250000000000"
              ],
              [
                "881037/1000000",
                "-3435941553/7812500000"
              ],
              [
                "881037/1000000",
                "-92032159633/125000000000"
              ],
              [
                "124369/250000",
                "-393701472877/1000000000000"
              ],
              [
                "124369/250000",
                "-504503200327/1000000000000"
              ],
              [
                "881037/1000000",
                "-556617302637/1000000000000"
              ],
              [
                "881037/1000000",
                "-853074060917/1000000000000"
              ],
              [
                "124369/250000",
                "-51051825673/100000000000"
              ],
              [
                "124369/250000",
                "-31065999209/50000000000"
              ]
            ],
            "raw": [
              "2290627702/4588734375",
              "907/1000"
            ],
            "new": [
              "99837/200000",
              "907/1000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "324041/1000000",
              "731439/1000000"
            ],
            "lines": [
              [
                "-177931/250000",
                "39883089283/200000000000"
              ],
              [
                "-177931/250000",
                "255264571433/1000000000000"
              ],
              [
                "-177931/250000",
                "318888521/1000000000"
              ],
              [
                "-177931/250000",
                "30170492103/62500000000"
              ],
              [
                "-177931/250000",
                "20150012481/50000000000"
              ],
              [
                "-177931/250000",
                "229424687319/500000000000"
              ],
              [
                "-177931/250000",
                "44586709/125000000"
              ],
              [
                "-177931/250000",
                "65066628081/125000000000"
              ],
              [
                "-316397/1000000",
                "-8900262517/200000000000"
              ],
              [
                "-316397/1000000",
                "-93335567821/1000000000000"
              ],
              [
                "-316397/1000000",
                "37485881/500000000"
              ],
              [
                "-316397/1000000",
                "67063867197/500000000000"
              ],
              [
                "-316397/1000000",
                "7954174531/50000000000"
              ],
              [
                "-316397/1000000",
                "13781154423/125000000000"
              ],
              [
                "-316397/1000000",
                "112776913/1000000000"
              ],
              [
                "-316397/1000000",
                "85966442697/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "5005125237/6843500000"
            ],
            "new": [
              "324041/1000000",
              "73137/100000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "81163/250000",
              "6077/8000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-36178077431/200000000000"
              ],
              [
                "324041/1000000",
                "-55828446313/200000000000"
              ],
              [
                "324041/1000000",
                "-15952165297/50000000000"
              ],
              [
                "324041/1000000",
                "-46706598611/200000000000"
              ],
              [
                "73137/100000",
                "-47501823631/200000000000"
              ],
              [
                "73137/100000",
                "-26545512491/50000000000"
              ],
              [
                "73137/100000",
                "-18783101847/50000000000"
              ],
              [
                "73137/100000",
                "-48530101131/100000000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-32765712741/100000000000"
              ],
              [
                "324041/1000000",
                "-523980131/1000000000"
              ],
              [
                "324041/1000000",
                "-87693963623/200000000000"
              ],
              [
                "73137/100000",
                "-143012007/500000000"
              ],
              [
                "73137/100000",
                "-115885029133/200000000000"
              ],
              [
                "73137/100000",
                "-290299431/500000000"
              ],
              [
                "73137/100000",
                "-69023783637/100000000000"
              ]
            ],
            "raw": [
              "47501823631/146274000000",
              "6077/8000"
            ],
            "new": [
              "64949/200000",
              "6077/8000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "72069/250000",
              "683603/1000000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-337162015041/1000000000000"
              ],
              [
                "881037/1000000",
                "-436425919381/1000000000000"
              ],
              [
                "124369/250000",
                "-145531484567/500000000000"
              ],
              [
                "124369/250000",
                "-51167960661/250000000000"
              ],
              [
                "881037/1000000",
                "-631123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-730386969301/1000000000000"
              ],
              [
                "124369/250000",
                "-292512009527/500000000000"
              ],
              [
                "124369/250000",
                "-124658223141/250000000000"
              ],
              [
                "881037/1000000",
                "-50801551227/200000000000"
              ],
              [
                "881037/1000000",
                "-110006648737/200000000000"
              ],
              [
                "124369/250000",
                "-51977177557/250000000000"
              ],
              [
                "124369/250000",
                "-79569791737/250000000000"
              ],
              [
                "881037/1000000",
                "-74237408379/200000000000"
              ],
              [
                "881037/1000000",
                "-133442505889/200000000000"
              ],
              [
                "124369/250000",
                "-81271998997/250000000000"
              ],
              [
                "124369/250000",
                "-108864613177/250000000000"
              ]
            ],
            "raw": [
              "5644616803/19578600000",
              "683603/1000000"
            ],
            "new": [
              "57661/200000",
              "683603/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "125631/250000"
            ],
            "lines": [
              [
                "-307011/500000",
                "2148511389/20000000000"
              ],
              [
                "-307011/500000",
                "81042518577/500000000000"
              ],
              [
                "-1/1",
                "1499401707/4000000000"
              ],
              [
                "-1/1",
                "50244120951/100000000000"
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
              "50244120951/100000000000"
            ],
            "new": [
              "118963/1000000",
              "251221/500000"
            ]
          },
          {
            "factor": 130,
            "target": "y",
            "old": [
              "99837/200000",
              "907/1000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-523162015041/1000000000000"
              ],
              [
                "881037/1000000",
                "-622425919381/1000000000000"
              ],
              [
                "248779/500000",
                "-119268206117/250000000000"
              ],
              [
                "248779/500000",
                "-195360694219/500000000000"
              ],
              [
                "881037/1000000",
                "-817123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-916386969301/1000000000000"
              ],
              [
                "248779/500000",
                "-192758468597/250000000000"
              ],
              [
                "248779/500000",
                "-342341219179/500000000000"
              ],
              [
                "881037/1000000",
                "-439839609459/1000000000000"
              ],
              [
                "881037/1000000",
                "-736262969669/1000000000000"
              ],
              [
                "248779/500000",
                "-196875209443/500000000000"
              ],
              [
                "248779/500000",
                "-252279219363/500000000000"
              ],
              [
                "881037/1000000",
                "-556661423859/1000000000000"
              ],
              [
                "881037/1000000",
                "-853084784069/1000000000000"
              ],
              [
                "248779/500000",
                "-255286116643/500000000000"
              ],
              [
                "248779/500000",
                "-310690126563/500000000000"
              ]
            ],
            "raw": [
              "146613203153/293679000000",
              "907/1000"
            ],
            "new": [
              "499229/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "324041/1000000",
              "73137/100000"
            ],
            "lines": [
              [
                "-142339/200000",
                "199410443611/1000000000000"
              ],
              [
                "-142339/200000",
                "255263540659/1000000000000"
              ],
              [
                "-142339/200000",
                "79717657/250000000"
              ],
              [
                "-142339/200000",
                "48270230139/100000000000"
              ],
              [
                "-142339/200000",
                "100744340127/250000000000"
              ],
              [
                "-142339/200000",
                "114707614389/250000000000"
              ],
              [
                "-142339/200000",
                "356675779/1000000000"
              ],
              [
                "-142339/200000",
                "52050745239/100000000000"
              ],
              [
                "-316397/1000000",
                "-44488422389/1000000000000"
              ],
              [
                "-316397/1000000",
                "-93311026337/1000000000000"
              ],
              [
                "-316397/1000000",
                "37485881/500000000"
              ],
              [
                "-316397/1000000",
                "67063867197/500000000000"
              ],
              [
                "-316397/1000000",
                "39769623627/250000000000"
              ],
              [
                "-316397/1000000",
                "172274829/1562500000"
              ],
              [
                "-316397/1000000",
                "112776913/1000000000"
              ],
              [
                "-316397/1000000",
                "85966442697/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "52050745239/71169500000"
            ],
            "new": [
              "324041/1000000",
              "182841/250000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "64949/200000",
              "6077/8000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-180895621527/1000000000000"
              ],
              [
                "324041/1000000",
                "-279147465937/1000000000000"
              ],
              [
                "324041/1000000",
                "-159517939109/500000000000"
              ],
              [
                "324041/1000000",
                "-233564851123/1000000000000"
              ],
              [
                "182841/250000",
                "-237513518527/1000000000000"
              ],
              [
                "182841/250000",
                "-265455887811/500000000000"
              ],
              [
                "182841/250000",
                "-187826887609/500000000000"
              ],
              [
                "182841/250000",
                "-60666145101/125000000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-32765712741/100000000000"
              ],
              [
                "324041/1000000",
                "-104783431/200000000"
              ],
              [
                "324041/1000000",
                "-87689225581/200000000000"
              ],
              [
                "182841/250000",
                "-14301159/50000000"
              ],
              [
                "182841/250000",
                "-115884287419/200000000000"
              ],
              [
                "182841/250000",
                "-145133763/250000000"
              ],
              [
                "182841/250000",
                "-69021043759/100000000000"
              ]
            ],
            "raw": [
              "237513518527/731364000000",
              "6077/8000"
            ],
            "new": [
              "162377/500000",
              "6077/8000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "57661/200000",
              "683603/1000000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-21073006167/62500000000"
              ],
              [
                "881037/1000000",
                "-109108000753/250000000000"
              ],
              [
                "248779/500000",
                "-291078908099/1000000000000"
              ],
              [
                "248779/500000",
                "-204727472069/1000000000000"
              ],
              [
                "881037/1000000",
                "-631123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-730386969301/1000000000000"
              ],
              [
                "248779/500000",
                "-146258468597/250000000000"
              ],
              [
                "248779/500000",
                "-249341219179/500000000000"
              ],
              [
                "881037/1000000",
                "-254010181203/1000000000000"
              ],
              [
                "881037/1000000",
                "-550035668753/1000000000000"
              ],
              [
                "248779/500000",
                "-20792099063/100000000000"
              ],
              [
                "248779/500000",
                "-31833113781/100000000000"
              ],
              [
                "881037/1000000",
                "-74237408379/200000000000"
              ],
              [
                "881037/1000000",
                "-133442505889/200000000000"
              ],
              [
                "248779/500000",
                "-162548925661/500000000000"
              ],
              [
                "248779/500000",
                "-217753999251/500000000000"
              ]
            ],
            "raw": [
              "3135928163/10877000000",
              "683603/1000000"
            ],
            "new": [
              "72077/250000",
              "683603/1000000"
            ]
          }
        ]
      }
    },
    {
      "id": 3,
      "assumptions": [
        "AGO-",
        "AGP-",
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
          "162377/500000",
          "324041/1000000",
          "499229/1000000",
          "324041/1000000",
          "72077/250000"
        ],
        "high": [
          "123619/200000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "251221/500000",
          "1",
          "6077/8000",
          "182841/250000",
          "907/1000",
          "182637/250000",
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
        "AGO": -1,
        "AGP": -1,
        "DGP": -1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "BDG": 1,
        "DGH": -1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "ADP": 1,
        "BDP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEO": 1,
        "BEG": 1,
        "DHO": -1,
        "AOP": -1,
        "GOP": -1,
        "FGP": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "CABHO"
          ],
          "target": "ACO",
          "sign": 1,
          "deps": [
            "ABC",
            "CHO",
            "ACH",
            "BCO",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CABHP"
          ],
          "target": "ACP",
          "sign": 1,
          "deps": [
            "ABC",
            "CHP",
            "ACH",
            "BCP",
            "BCH"
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
            "GABCO"
          ],
          "target": "BGO",
          "sign": -1,
          "deps": [
            "ABG",
            "CGO",
            "ACG",
            "AGO",
            "BCG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GABCP"
          ],
          "target": "BGP",
          "sign": -1,
          "deps": [
            "ABG",
            "CGP",
            "ACG",
            "AGP",
            "BCG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACDO"
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ACG",
            "DGO",
            "CGO",
            "AGO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACHO"
          ],
          "target": "GHO",
          "sign": -1,
          "deps": [
            "ACG",
            "AGH",
            "CGO",
            "AGO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACHP"
          ],
          "target": "GHP",
          "sign": -1,
          "deps": [
            "ACG",
            "AGH",
            "CGP",
            "AGP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GBCDO"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "BCG",
            "DGO",
            "CGO",
            "BGO",
            "CDG"
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
            "OACDG"
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACO",
            "DGO",
            "CGO",
            "AGO",
            "CDO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OBCDG"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "BCO",
            "DGO",
            "CGO",
            "BGO",
            "CDO"
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
            "PACDG"
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACP",
            "DGP",
            "CGP",
            "AGP",
            "CDP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PBCDG"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "BCP",
            "DGP",
            "CGP",
            "BGP",
            "CDP"
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
            "BAEGO"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "BGO",
            "ABG",
            "BEO",
            "ABO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "GDH",
            "OP",
            "DHG",
            [
              "area",
              "DGH",
              "T0004",
              "27/40"
            ]
          ],
          "target": "DHO",
          "sign": -1,
          "deps": [
            "GHO",
            "DGO",
            "GHP",
            "DGP",
            "DOP"
          ],
          "area_stage": 0
        },
        {
          "rule": [
            "cap",
            "HAO",
            [
              "G"
            ],
            "P",
            [
              "area",
              "AHO",
              "U_AHO",
              "126285453/200000000"
            ]
          ],
          "target": "AOP",
          "sign": -1,
          "deps": [
            "AHP",
            "HOP"
          ],
          "area_stage": 1
        },
        {
          "rule": [
            "plu",
            "OACGP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ACO",
            "AGO",
            "COP",
            "AOP",
            "CGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "GFH",
            "OP",
            "GFH",
            [
              "area",
              "FGH",
              "U_FGH",
              "30642178599/50000000000"
            ]
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "FHO",
            "GHO",
            "FHP",
            "GHP",
            "GOP"
          ],
          "area_stage": 1
        }
      ],
      "initial": {
        "L_AGO": {
          "triangle": "AGO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GAO",
            "points": []
          }
        },
        "L_AHP": {
          "triangle": "AHP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HAP",
            "points": [
              "G"
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
        "L_DGP": {
          "triangle": "DGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GDP",
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
        "U_FHP": {
          "triangle": "FHP",
          "side": "hi",
          "value": "78446428623/125000000000",
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
              "7964504017/125000000000",
              "41070610049/500000000000",
              "195216949/1000000000",
              "110309395491/500000000000",
              "3735062171/15625000000",
              "139499753697/500000000000",
              "163019117549/500000000000",
              "206143976863/500000000000",
              "109778491/250000000",
              "60367624243/125000000000",
              "142297678143/250000000000",
              "78446428623/125000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "3549": {
          "row": [
            "linear",
            {
              "CFP": "55196428623/125000000000",
              "CHP": "-93/1000",
              "COP": "-78446428623/125000000000"
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
              "value": "78446428623/125000000000"
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
            "residual": "43571428623/125000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0057",
          "relation": 3549,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "1897/12500",
          "sources": [
            "L_CHP",
            "L_COP"
          ]
        }
      ],
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
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AHP",
            "side": "lo",
            "reference": "L_AHP",
            "value": "279/1000"
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
        "138": {
          "name": "AREA_LO_AGO",
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
                0,
                6
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
            "triangle": "AGO",
            "side": "lo",
            "reference": "L_AGO",
            "value": "93/1000"
          }
        },
        "142": {
          "name": "AREA_LO_DGP",
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
                3,
                6
              ],
              "1"
            ],
            [
              [
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
                8
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
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DGP",
            "side": "lo",
            "reference": "L_DGP",
            "value": "93/1000"
          }
        },
        "192": {
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
              "-1897/12500"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "lo",
            "reference": "T0057",
            "value": "1897/12500"
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
          "324783/1000000",
          "324041/1000000",
          "499263/1000000",
          "324041/1000000",
          "144217/500000"
        ],
        "high": [
          "617831/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "50241/100000",
          "1/1",
          "6077/8000",
          "73127/100000",
          "907/1000",
          "365021/500000",
          "683603/1000000"
        ],
        "steps": [
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "251221/500000"
            ],
            "lines": [
              [
                "-307011/500000",
                "537096669/5000000000"
              ],
              [
                "-307011/500000",
                "20259637617/125000000000"
              ],
              [
                "-1/1",
                "3748441911/10000000000"
              ],
              [
                "-1/1",
                "125608318323/250000000000"
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
              "125608318323/250000000000"
            ],
            "new": [
              "118963/1000000",
              "251217/500000"
            ]
          },
          {
            "factor": 130,
            "target": "y",
            "old": [
              "499229/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-32698006167/62500000000"
              ],
              [
                "881037/1000000",
                "-155608000753/250000000000"
              ],
              [
                "248783/500000",
                "-95415973919/200000000000"
              ],
              [
                "248783/500000",
                "-78146461161/200000000000"
              ],
              [
                "881037/1000000",
                "-817123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-916386969301/1000000000000"
              ],
              [
                "248783/500000",
                "-192758708971/250000000000"
              ],
              [
                "248783/500000",
                "-342343636047/500000000000"
              ],
              [
                "881037/1000000",
                "-439843254531/1000000000000"
              ],
              [
                "881037/1000000",
                "-736263710561/1000000000000"
              ],
              [
                "248783/500000",
                "-196877512727/500000000000"
              ],
              [
                "248783/500000",
                "-252282006677/500000000000"
              ],
              [
                "881037/1000000",
                "-556665260487/1000000000000"
              ],
              [
                "881037/1000000",
                "-853085716517/1000000000000"
              ],
              [
                "248783/500000",
                "-51057703141/100000000000"
              ],
              [
                "248783/500000",
                "-62138601931/100000000000"
              ]
            ],
            "raw": [
              "146614418177/293679000000",
              "907/1000"
            ],
            "new": [
              "499233/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "324041/1000000",
              "182841/250000"
            ],
            "lines": [
              [
                "-177923/250000",
                "199409764447/1000000000000"
              ],
              [
                "-177923/250000",
                "255263126297/1000000000000"
              ],
              [
                "-177923/250000",
                "318868777/1000000000"
              ],
              [
                "-177923/250000",
                "30168728499/62500000000"
              ],
              [
                "-177923/250000",
                "100743763829/250000000000"
              ],
              [
                "-177923/250000",
                "229414208583/500000000000"
              ],
              [
                "-177923/250000",
                "44584241/125000000"
              ],
              [
                "-177923/250000",
                "65063100873/125000000000"
              ],
              [
                "-316397/1000000",
                "-44487250553/1000000000000"
              ],
              [
                "-316397/1000000",
                "-93308795293/1000000000000"
              ],
              [
                "-316397/1000000",
                "37485881/500000000"
              ],
              [
                "-316397/1000000",
                "67063867197/500000000000"
              ],
              [
                "-316397/1000000",
                "39769510079/250000000000"
              ],
              [
                "-316397/1000000",
                "13782061947/125000000000"
              ],
              [
                "-316397/1000000",
                "112776913/1000000000"
              ],
              [
                "-316397/1000000",
                "85966442697/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "65063100873/88961500000"
            ],
            "new": [
              "324041/1000000",
              "731363/1000000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "162377/500000",
              "6077/8000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-180896097379/1000000000000"
              ],
              [
                "324041/1000000",
                "-279147941789/1000000000000"
              ],
              [
                "324041/1000000",
                "-159517503061/500000000000"
              ],
              [
                "324041/1000000",
                "-233567811787/1000000000000"
              ],
              [
                "731363/1000000",
                "-237513855379/1000000000000"
              ],
              [
                "731363/1000000",
                "-530911633379/1000000000000"
              ],
              [
                "731363/1000000",
                "-187826382061/500000000000"
              ],
              [
                "731363/1000000",
                "-485331503377/1000000000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-32765712741/100000000000"
              ],
              [
                "324041/1000000",
                "-523911011/1000000000"
              ],
              [
                "324041/1000000",
                "-87688763333/200000000000"
              ],
              [
                "731363/1000000",
                "-286023041/1000000000"
              ],
              [
                "731363/1000000",
                "-579420819/1000000000"
              ],
              [
                "731363/1000000",
                "-580528769/1000000000"
              ],
              [
                "731363/1000000",
                "-138041501651/200000000000"
              ]
            ],
            "raw": [
              "237513855379/731363000000",
              "6077/8000"
            ],
            "new": [
              "64951/200000",
              "6077/8000"
            ]
          },
          {
            "factor": 192,
            "target": "u",
            "old": [
              "324041/1000000",
              "182637/250000"
            ],
            "lines": [
              [
                "-1/1",
                "2596109191/5000000000"
              ],
              [
                "-1/1",
                "81712183123/125000000000"
              ],
              [
                "-1/1",
                "18611449163/31250000000"
              ],
              [
                "-1/1",
                "365021/500000"
              ],
              [
                "-1/1",
                "9784774249/20000000000"
              ],
              [
                "-1/1",
                "274511279197/500000000000"
              ],
              [
                "-1/1",
                "83782269257/125000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "365021/500000"
            ],
            "new": [
              "324041/1000000",
              "365021/500000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "251217/500000"
            ],
            "lines": [
              [
                "-307011/500000",
                "2148372819/20000000000"
              ],
              [
                "-307011/500000",
                "81038109567/500000000000"
              ],
              [
                "-1/1",
                "1499373993/4000000000"
              ],
              [
                "-1/1",
                "50243239149/100000000000"
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
              "50243239149/100000000000"
            ],
            "new": [
              "118963/1000000",
              "502433/1000000"
            ]
          },
          {
            "factor": 116,
            "target": "a",
            "old": [
              "139/1000",
              "123619/200000"
            ],
            "lines": [
              [
                "-324041/1000000",
                "-40015848549/500000000000"
              ],
              [
                "-324041/1000000",
                "45041/1000000"
              ],
              [
                "-365021/500000",
                "42315462231/250000000000"
              ],
              [
                "-365021/500000",
                "225521/500000"
              ]
            ],
            "raw": [
              "139/1000",
              "225521/365021"
            ],
            "new": [
              "139/1000",
              "617831/1000000"
            ]
          },
          {
            "factor": 130,
            "target": "y",
            "old": [
              "499233/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-523168774631/1000000000000"
              ],
              [
                "881037/1000000",
                "-622432678971/1000000000000"
              ],
              [
                "497567/1000000",
                "-477080665741/1000000000000"
              ],
              [
                "497567/1000000",
                "-390733585981/1000000000000"
              ],
              [
                "881037/1000000",
                "-817123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-916386969301/1000000000000"
              ],
              [
                "497567/1000000",
                "-771034956071/1000000000000"
              ],
              [
                "497567/1000000",
                "-684687876311/1000000000000"
              ],
              [
                "881037/1000000",
                "-87968745547/200000000000"
              ],
              [
                "881037/1000000",
                "-147252739947/200000000000"
              ],
              [
                "497567/1000000",
                "-78751123769/200000000000"
              ],
              [
                "497567/1000000",
                "-100912921349/200000000000"
              ],
              [
                "881037/1000000",
                "-22266635997/40000000000"
              ],
              [
                "881037/1000000",
                "-34123434877/40000000000"
              ],
              [
                "497567/1000000",
                "-102115558207/200000000000"
              ],
              [
                "497567/1000000",
                "-124277355787/200000000000"
              ]
            ],
            "raw": [
              "87968745547/176207400000",
              "907/1000"
            ],
            "new": [
              "249617/500000",
              "907/1000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "324041/1000000",
              "731363/1000000"
            ],
            "lines": [
              [
                "-177923/250000",
                "99705028703/500000000000"
              ],
              [
                "-177923/250000",
                "127631842029/500000000000"
              ],
              [
                "-177923/250000",
                "318868777/1000000000"
              ],
              [
                "-177923/250000",
                "30168728499/62500000000"
              ],
              [
                "-177923/250000",
                "100680388543/250000000000"
              ],
              [
                "-177923/250000",
                "57321897603/125000000000"
              ],
              [
                "-177923/250000",
                "35662687/100000000"
              ],
              [
                "-177923/250000",
                "65057218623/125000000000"
              ],
              [
                "-316397/1000000",
                "-22243478797/500000000000"
              ],
              [
                "-316397/1000000",
                "-23327059383/250000000000"
              ],
              [
                "-316397/1000000",
                "37485881/500000000"
              ],
              [
                "-316397/1000000",
                "67063867197/500000000000"
              ],
              [
                "-316397/1000000",
                "39706134793/250000000000"
              ],
              [
                "-316397/1000000",
                "55001629617/500000000000"
              ],
              [
                "-316397/1000000",
                "22545971/200000000"
              ],
              [
                "-316397/1000000",
                "85942913697/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "65057218623/88961500000"
            ],
            "new": [
              "324041/1000000",
              "731297/1000000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "64951/200000",
              "6077/8000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-90448108171/500000000000"
              ],
              [
                "324041/1000000",
                "-1744337001/6250000000"
              ],
              [
                "324041/1000000",
                "-159517574161/500000000000"
              ],
              [
                "324041/1000000",
                "-23361552857/100000000000"
              ],
              [
                "731297/1000000",
                "-118752400171/500000000000"
              ],
              [
                "731297/1000000",
                "-66338662737/125000000000"
              ],
              [
                "731297/1000000",
                "-187821866161/500000000000"
              ],
              [
                "731297/1000000",
                "-242615455153/500000000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-163801493409/500000000000"
              ],
              [
                "324041/1000000",
                "-523910243/1000000000"
              ],
              [
                "324041/1000000",
                "-27405663953/62500000000"
              ],
              [
                "731297/1000000",
                "-286013867/1000000000"
              ],
              [
                "731297/1000000",
                "-289609184277/500000000000"
              ],
              [
                "731297/1000000",
                "-580518827/1000000000"
              ],
              [
                "731297/1000000",
                "-86263250623/125000000000"
              ]
            ],
            "raw": [
              "118752400171/365648500000",
              "6077/8000"
            ],
            "new": [
              "81193/250000",
              "6077/8000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "72077/250000",
              "683603/1000000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-168590132967/500000000000"
              ],
              [
                "881037/1000000",
                "-218222085137/500000000000"
              ],
              [
                "497567/1000000",
                "-72773039261/250000000000"
              ],
              [
                "497567/1000000",
                "-51186269321/250000000000"
              ],
              [
                "881037/1000000",
                "-631123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-730386969301/1000000000000"
              ],
              [
                "497567/1000000",
                "-585034956071/1000000000000"
              ],
              [
                "497567/1000000",
                "-498687876311/1000000000000"
              ],
              [
                "881037/1000000",
                "-254118551349/1000000000000"
              ],
              [
                "881037/1000000",
                "-549899119719/1000000000000"
              ],
              [
                "497567/1000000",
                "-208030442459/1000000000000"
              ],
              [
                "497567/1000000",
                "-318200026729/1000000000000"
              ],
              [
                "881037/1000000",
                "-371510597523/1000000000000"
              ],
              [
                "881037/1000000",
                "-667291165893/1000000000000"
              ],
              [
                "497567/1000000",
                "-325422488633/1000000000000"
              ],
              [
                "497567/1000000",
                "-435592072903/1000000000000"
              ]
            ],
            "raw": [
              "84706183783/293679000000",
              "683603/1000000"
            ],
            "new": [
              "288431/1000000",
              "683603/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "502433/1000000"
            ],
            "lines": [
              [
                "-307011/500000",
                "8592549/80000000"
              ],
              [
                "-307011/500000",
                "324122457/2000000000"
              ],
              [
                "-1/1",
                "1874158599/5000000000"
              ],
              [
                "-1/1",
                "62802175107/125000000000"
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
              "62802175107/125000000000"
            ],
            "new": [
              "118963/1000000",
              "251209/500000"
            ]
          },
          {
            "factor": 130,
            "target": "y",
            "old": [
              "249617/500000",
              "907/1000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-261590132967/500000000000"
              ],
              [
                "881037/1000000",
                "-311222085137/500000000000"
              ],
              [
                "248791/500000",
                "-477093959849/1000000000000"
              ],
              [
                "248791/500000",
                "-390754140539/1000000000000"
              ],
              [
                "881037/1000000",
                "-817123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-916386969301/1000000000000"
              ],
              [
                "248791/500000",
                "-192759189719/250000000000"
              ],
              [
                "248791/500000",
                "-342348469783/500000000000"
              ],
              [
                "881037/1000000",
                "-219930898587/500000000000"
              ],
              [
                "881037/1000000",
                "-368124911597/500000000000"
              ],
              [
                "248791/500000",
                "-393775491089/1000000000000"
              ],
              [
                "248791/500000",
                "-504559793459/1000000000000"
              ],
              [
                "881037/1000000",
                "-556708102833/1000000000000"
              ],
              [
                "881037/1000000",
                "-853096128853/1000000000000"
              ],
              [
                "248791/500000",
                "-127655449187/250000000000"
              ],
              [
                "248791/500000",
                "-310703049559/500000000000"
              ]
            ],
            "raw": [
              "73310299529/146839500000",
              "907/1000"
            ],
            "new": [
              "249627/500000",
              "907/1000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "324041/1000000",
              "731297/1000000"
            ],
            "lines": [
              [
                "-711569/1000000",
                "99670012793/500000000000"
              ],
              [
                "-711569/1000000",
                "7973949301/31250000000"
              ],
              [
                "-711569/1000000",
                "159396443/500000000"
              ],
              [
                "-711569/1000000",
                "241295597169/500000000000"
              ],
              [
                "-711569/1000000",
                "100660850583/250000000000"
              ],
              [
                "-711569/1000000",
                "229234877189/500000000000"
              ],
              [
                "-711569/1000000",
                "356550979/1000000000"
              ],
              [
                "-711569/1000000",
                "260174643669/500000000000"
              ],
              [
                "-316397/1000000",
                "-22240549207/500000000000"
              ],
              [
                "-316397/1000000",
                "-11662135289/125000000000"
              ],
              [
                "-316397/1000000",
                "37485881/500000000"
              ],
              [
                "-316397/1000000",
                "67063867197/500000000000"
              ],
              [
                "-316397/1000000",
                "39705569583/250000000000"
              ],
              [
                "-316397/1000000",
                "55003147217/500000000000"
              ],
              [
                "-316397/1000000",
                "22545971/200000000"
              ],
              [
                "-316397/1000000",
                "85942913697/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "260174643669/355784500000"
            ],
            "new": [
              "324041/1000000",
              "731271/1000000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "81193/250000",
              "6077/8000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-90449297801/500000000000"
              ],
              [
                "324041/1000000",
                "-13954814971/50000000000"
              ],
              [
                "324041/1000000",
                "-79759948293/250000000000"
              ],
              [
                "324041/1000000",
                "-46725471177/200000000000"
              ],
              [
                "731271/1000000",
                "-118751782801/500000000000"
              ],
              [
                "731271/1000000",
                "-10613912351/20000000000"
              ],
              [
                "731271/1000000",
                "-93911190793/250000000000"
              ],
              [
                "731271/1000000",
                "-97045334803/200000000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-163801493409/500000000000"
              ],
              [
                "324041/1000000",
                "-523898723/1000000000"
              ],
              [
                "324041/1000000",
                "-438486285713/1000000000000"
              ],
              [
                "731271/1000000",
                "-286010253/1000000000"
              ],
              [
                "731271/1000000",
                "-144800576237/250000000000"
              ],
              [
                "731271/1000000",
                "-580503693/1000000000"
              ],
              [
                "731271/1000000",
                "-690085603843/1000000000000"
              ]
            ],
            "raw": [
              "118751782801/365635500000",
              "6077/8000"
            ],
            "new": [
              "324781/1000000",
              "6077/8000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "288431/1000000",
              "683603/1000000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-67437269913/200000000000"
              ],
              [
                "881037/1000000",
                "-87290050781/200000000000"
              ],
              [
                "248791/500000",
                "-7277501087/25000000000"
              ],
              [
                "248791/500000",
                "-20476022417/100000000000"
              ],
              [
                "881037/1000000",
                "-631123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-730386969301/1000000000000"
              ],
              [
                "248791/500000",
                "-146259189719/250000000000"
              ],
              [
                "248791/500000",
                "-249348469783/500000000000"
              ],
              [
                "881037/1000000",
                "-254120980971/1000000000000"
              ],
              [
                "881037/1000000",
                "-549901549341/1000000000000"
              ],
              [
                "248791/500000",
                "-104017337443/500000000000"
              ],
              [
                "248791/500000",
                "-159105759803/500000000000"
              ],
              [
                "881037/1000000",
                "-371510597523/1000000000000"
              ],
              [
                "881037/1000000",
                "-667291165893/1000000000000"
              ],
              [
                "248791/500000",
                "-162712145719/500000000000"
              ],
              [
                "248791/500000",
                "-217800568079/500000000000"
              ]
            ],
            "raw": [
              "84706993657/293679000000",
              "683603/1000000"
            ],
            "new": [
              "288433/1000000",
              "683603/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "251209/500000"
            ],
            "lines": [
              [
                "-307011/500000",
                "2148012537/20000000000"
              ],
              [
                "-307011/500000",
                "81026646141/500000000000"
              ],
              [
                "-1/1",
                "7496509683/20000000000"
              ],
              [
                "-1/1",
                "251204732319/500000000000"
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
              "251204732319/500000000000"
            ],
            "new": [
              "118963/1000000",
              "50241/100000"
            ]
          },
          {
            "factor": 130,
            "target": "y",
            "old": [
              "249627/500000",
              "907/1000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-104637269913/200000000000"
              ],
              [
                "881037/1000000",
                "-124490050781/200000000000"
              ],
              [
                "49759/100000",
                "-29818812811/62500000000"
              ],
              [
                "49759/100000",
                "-195382528953/500000000000"
              ],
              [
                "881037/1000000",
                "-817123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-916386969301/1000000000000"
              ],
              [
                "49759/100000",
                "-192759430093/250000000000"
              ],
              [
                "49759/100000",
                "-342350886651/500000000000"
              ],
              [
                "881037/1000000",
                "-87973906989/200000000000"
              ],
              [
                "881037/1000000",
                "-147248995237/200000000000"
              ],
              [
                "49759/100000",
                "-98446047589/250000000000"
              ],
              [
                "49759/100000",
                "-252279890093/500000000000"
              ],
              [
                "881037/1000000",
                "-556724728221/1000000000000"
              ],
              [
                "881037/1000000",
                "-853100169461/1000000000000"
              ],
              [
                "49759/100000",
                "-31914961477/62500000000"
              ],
              [
                "49759/100000",
                "-310707486731/500000000000"
              ]
            ],
            "raw": [
              "29324635663/58735800000",
              "907/1000"
            ],
            "new": [
              "499263/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "324041/1000000",
              "731271/1000000"
            ],
            "lines": [
              [
                "-711567/1000000",
                "199341428217/1000000000000"
              ],
              [
                "-711567/1000000",
                "255169633877/1000000000000"
              ],
              [
                "-711567/1000000",
                "79697913/250000000"
              ],
              [
                "-711567/1000000",
                "241294715367/500000000000"
              ],
              [
                "-711567/1000000",
                "201320575477/500000000000"
              ],
              [
                "-711567/1000000",
                "229234678307/500000000000"
              ],
              [
                "-711567/1000000",
                "71309949/200000000"
              ],
              [
                "-711567/1000000",
                "260173761867/500000000000"
              ],
              [
                "-316397/1000000",
                "-44478461783/1000000000000"
              ],
              [
                "-316397/1000000",
                "-93292062463/1000000000000"
              ],
              [
                "-316397/1000000",
                "37485881/500000000"
              ],
              [
                "-316397/1000000",
                "67063867197/500000000000"
              ],
              [
                "-316397/1000000",
                "79410630477/500000000000"
              ],
              [
                "-316397/1000000",
                "55003830137/500000000000"
              ],
              [
                "-316397/1000000",
                "22545971/200000000"
              ],
              [
                "-316397/1000000",
                "85942913697/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "28908195763/39531500000"
            ],
            "new": [
              "324041/1000000",
              "73127/100000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "324781/1000000",
              "6077/8000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-180899666269/1000000000000"
              ],
              [
                "324041/1000000",
                "-279097370087/1000000000000"
              ],
              [
                "324041/1000000",
                "-31904143283/100000000000"
              ],
              [
                "324041/1000000",
                "-233632826191/1000000000000"
              ],
              [
                "73127/100000",
                "-237504497269/1000000000000"
              ],
              [
                "73127/100000",
                "-265348035193/500000000000"
              ],
              [
                "73127/100000",
                "-37564626383/100000000000"
              ],
              [
                "73127/100000",
                "-48523152649/100000000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-163801493409/500000000000"
              ],
              [
                "324041/1000000",
                "-523892579/1000000000"
              ],
              [
                "324041/1000000",
                "-438483972361/1000000000000"
              ],
              [
                "73127/100000",
                "-143005057/500000000"
              ],
              [
                "73127/100000",
                "-579201687117/1000000000000"
              ],
              [
                "73127/100000",
                "-58049741/100000000"
              ],
              [
                "73127/100000",
                "-34504133633/50000000000"
              ]
            ],
            "raw": [
              "237504497269/731270000000",
              "6077/8000"
            ],
            "new": [
              "324783/1000000",
              "6077/8000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "288433/1000000",
              "683603/1000000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-337187701483/1000000000000"
              ],
              [
                "881037/1000000",
                "-436451605823/1000000000000"
              ],
              [
                "49759/100000",
                "-145551178447/500000000000"
              ],
              [
                "49759/100000",
                "-6398950307/31250000000"
              ],
              [
                "881037/1000000",
                "-631123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-730386969301/1000000000000"
              ],
              [
                "49759/100000",
                "-146259430093/250000000000"
              ],
              [
                "49759/100000",
                "-249350886651/500000000000"
              ],
              [
                "881037/1000000",
                "-254121520887/1000000000000"
              ],
              [
                "881037/1000000",
                "-549902089257/1000000000000"
              ],
              [
                "49759/100000",
                "-104018088149/500000000000"
              ],
              [
                "49759/100000",
                "-159108446629/500000000000"
              ],
              [
                "881037/1000000",
                "-371510597523/1000000000000"
              ],
              [
                "881037/1000000",
                "-667291165893/1000000000000"
              ],
              [
                "49759/100000",
                "-162712626467/500000000000"
              ],
              [
                "49759/100000",
                "-217802984947/500000000000"
              ]
            ],
            "raw": [
              "21055723/73000000",
              "683603/1000000"
            ],
            "new": [
              "144217/500000",
              "683603/1000000"
            ]
          }
        ]
      }
    },
    {
      "id": 4,
      "assumptions": [
        "AGO-",
        "AGP-",
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
          "324783/1000000",
          "324041/1000000",
          "499263/1000000",
          "324041/1000000",
          "144217/500000"
        ],
        "high": [
          "617831/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "50241/100000",
          "1",
          "6077/8000",
          "73127/100000",
          "907/1000",
          "365021/500000",
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
        "AGO": -1,
        "AGP": -1,
        "DGP": -1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "BDG": 1,
        "DGH": -1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "ADP": 1,
        "BDP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEO": 1,
        "BEG": 1,
        "DHO": -1,
        "AOP": -1,
        "GOP": -1,
        "FGP": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "CABHO"
          ],
          "target": "ACO",
          "sign": 1,
          "deps": [
            "ABC",
            "CHO",
            "ACH",
            "BCO",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CABHP"
          ],
          "target": "ACP",
          "sign": 1,
          "deps": [
            "ABC",
            "CHP",
            "ACH",
            "BCP",
            "BCH"
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
            "GABCO"
          ],
          "target": "BGO",
          "sign": -1,
          "deps": [
            "ABG",
            "CGO",
            "ACG",
            "AGO",
            "BCG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GABCP"
          ],
          "target": "BGP",
          "sign": -1,
          "deps": [
            "ABG",
            "CGP",
            "ACG",
            "AGP",
            "BCG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACDO"
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ACG",
            "DGO",
            "CGO",
            "AGO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACHO"
          ],
          "target": "GHO",
          "sign": -1,
          "deps": [
            "ACG",
            "AGH",
            "CGO",
            "AGO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACHP"
          ],
          "target": "GHP",
          "sign": -1,
          "deps": [
            "ACG",
            "AGH",
            "CGP",
            "AGP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GBCDO"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "BCG",
            "DGO",
            "CGO",
            "BGO",
            "CDG"
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
            "OACDG"
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACO",
            "DGO",
            "CGO",
            "AGO",
            "CDO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OBCDG"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "BCO",
            "DGO",
            "CGO",
            "BGO",
            "CDO"
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
            "PACDG"
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACP",
            "DGP",
            "CGP",
            "AGP",
            "CDP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PBCDG"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "BCP",
            "DGP",
            "CGP",
            "BGP",
            "CDP"
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
            "BAEGO"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "BGO",
            "ABG",
            "BEO",
            "ABO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "GDH",
            "OP",
            "DHG",
            [
              "area",
              "DGH",
              "T0004",
              "27/40"
            ]
          ],
          "target": "DHO",
          "sign": -1,
          "deps": [
            "GHO",
            "DGO",
            "GHP",
            "DGP",
            "DOP"
          ],
          "area_stage": 0
        },
        {
          "rule": [
            "cap",
            "HAO",
            [
              "G"
            ],
            "P",
            [
              "area",
              "AHO",
              "U_AHO",
              "126285453/200000000"
            ]
          ],
          "target": "AOP",
          "sign": -1,
          "deps": [
            "AHP",
            "HOP"
          ],
          "area_stage": 1
        },
        {
          "rule": [
            "plu",
            "OACGP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ACO",
            "AGO",
            "COP",
            "AOP",
            "CGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "GFH",
            "OP",
            "GFH",
            [
              "area",
              "FGH",
              "U_FGH",
              "30642178599/50000000000"
            ]
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "FHO",
            "GHO",
            "FHP",
            "GHP",
            "GOP"
          ],
          "area_stage": 1
        }
      ],
      "initial": {
        "L_AGO": {
          "triangle": "AGO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GAO",
            "points": []
          }
        },
        "L_AHP": {
          "triangle": "AHP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HAP",
            "points": [
              "G"
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
        "L_DGP": {
          "triangle": "DGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GDP",
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
        "U_FHP": {
          "triangle": "FHP",
          "side": "hi",
          "value": "156865080483/250000000000",
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
              "7964504017/125000000000",
              "41070610049/500000000000",
              "195216949/1000000000",
              "110211743057/500000000000",
              "59712168519/250000000000",
              "139499753697/500000000000",
              "162980246549/500000000000",
              "206088423337/500000000000",
              "219518111/500000000",
              "120666986769/250000000000",
              "142221075163/250000000000",
              "156865080483/250000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "3549": {
          "row": [
            "linear",
            {
              "CFP": "110365080483/250000000000",
              "CHP": "-93/1000",
              "COP": "-156865080483/250000000000"
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
              "value": "156865080483/250000000000"
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
            "residual": "87115080483/250000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0058",
          "relation": 3549,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "6071/40000",
          "sources": [
            "L_CHP",
            "L_COP"
          ]
        }
      ],
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
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AHP",
            "side": "lo",
            "reference": "L_AHP",
            "value": "279/1000"
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
        "138": {
          "name": "AREA_LO_AGO",
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
                0,
                6
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
            "triangle": "AGO",
            "side": "lo",
            "reference": "L_AGO",
            "value": "93/1000"
          }
        },
        "142": {
          "name": "AREA_LO_DGP",
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
                3,
                6
              ],
              "1"
            ],
            [
              [
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
                8
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
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DGP",
            "side": "lo",
            "reference": "L_DGP",
            "value": "93/1000"
          }
        },
        "192": {
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
              "-6071/40000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "lo",
            "reference": "T0058",
            "value": "6071/40000"
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
          "20299/62500",
          "324041/1000000",
          "99853/200000",
          "324041/1000000",
          "144219/500000"
        ],
        "high": [
          "617823/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "502407/1000000",
          "1/1",
          "6077/8000",
          "731267/1000000",
          "907/1000",
          "730027/1000000",
          "683603/1000000"
        ],
        "steps": [
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "50241/100000"
            ],
            "lines": [
              [
                "-307011/500000",
                "2147984823/20000000000"
              ],
              [
                "-307011/500000",
                "81025764339/500000000000"
              ],
              [
                "-1/1",
                "7496481969/20000000000"
              ],
              [
                "-1/1",
                "251203850517/500000000000"
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
              "251203850517/500000000000"
            ],
            "new": [
              "118963/1000000",
              "62801/125000"
            ]
          },
          {
            "factor": 130,
            "target": "y",
            "old": [
              "499263/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-523187701483/1000000000000"
              ],
              [
                "881037/1000000",
                "-622451605823/1000000000000"
              ],
              [
                "62199/125000",
                "-119275649317/250000000000"
              ],
              [
                "62199/125000",
                "-195383809129/500000000000"
              ],
              [
                "881037/1000000",
                "-817123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-916386969301/1000000000000"
              ],
              [
                "62199/125000",
                "-385518980373/500000000000"
              ],
              [
                "62199/125000",
                "-85587872717/125000000000"
              ],
              [
                "881037/1000000",
                "-439870276999/1000000000000"
              ],
              [
                "881037/1000000",
                "-736245234209/1000000000000"
              ],
              [
                "62199/125000",
                "-24611573299/62500000000"
              ],
              [
                "62199/125000",
                "-126140311661/250000000000"
              ],
              [
                "881037/1000000",
                "-556725367659/1000000000000"
              ],
              [
                "881037/1000000",
                "-853100324869/1000000000000"
              ],
              [
                "62199/125000",
                "-127660065861/250000000000"
              ],
              [
                "62199/125000",
                "-77677042163/125000000000"
              ]
            ],
            "raw": [
              "439870276999/881037000000",
              "907/1000"
            ],
            "new": [
              "7801/15625",
              "907/1000"
            ]
          },
          {
            "factor": 192,
            "target": "u",
            "old": [
              "324041/1000000",
              "365021/500000"
            ],
            "lines": [
              [
                "-1/1",
                "5191972811/10000000000"
              ],
              [
                "-1/1",
                "163412274983/250000000000"
              ],
              [
                "-1/1",
                "37223448823/62500000000"
              ],
              [
                "-1/1",
                "730027/1000000"
              ],
              [
                "-1/1",
                "9784474249/20000000000"
              ],
              [
                "-1/1",
                "274503779197/500000000000"
              ],
              [
                "-1/1",
                "83780394257/125000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "730027/1000000"
            ],
            "new": [
              "324041/1000000",
              "730027/1000000"
            ]
          },
          {
            "factor": 116,
            "target": "a",
            "old": [
              "139/1000",
              "617831/1000000"
            ],
            "lines": [
              [
                "-324041/1000000",
                "-40015848549/500000000000"
              ],
              [
                "-324041/1000000",
                "45041/1000000"
              ],
              [
                "-730027/1000000",
                "84626319297/500000000000"
              ],
              [
                "-730027/1000000",
                "451027/1000000"
              ]
            ],
            "raw": [
              "139/1000",
              "451027/730027"
            ],
            "new": [
              "139/1000",
              "617823/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "324041/1000000",
              "73127/100000"
            ],
            "lines": [
              [
                "-355783/500000",
                "12458819011/62500000000"
              ],
              [
                "-355783/500000",
                "63792327459/250000000000"
              ],
              [
                "-355783/500000",
                "63758207/200000000"
              ],
              [
                "-355783/500000",
                "120647137233/250000000000"
              ],
              [
                "-355783/500000",
                "25164556867/62500000000"
              ],
              [
                "-355783/500000",
                "114615278883/250000000000"
              ],
              [
                "-355783/500000",
                "356547733/1000000000"
              ],
              [
                "-355783/500000",
                "130086311733/250000000000"
              ],
              [
                "-316397/1000000",
                "-5559771103/125000000000"
              ],
              [
                "-316397/1000000",
                "-46645752351/500000000000"
              ],
              [
                "-316397/1000000",
                "37485881/500000000"
              ],
              [
                "-316397/1000000",
                "67063867197/500000000000"
              ],
              [
                "-316397/1000000",
                "19851704609/125000000000"
              ],
              [
                "-316397/1000000",
                "55000150497/500000000000"
              ],
              [
                "-316397/1000000",
                "5636423/50000000"
              ],
              [
                "-316397/1000000",
                "85942216197/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "130086311733/177891500000"
            ],
            "new": [
              "324041/1000000",
              "182817/250000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "324783/1000000",
              "6077/8000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-11306236577/62500000000"
              ],
              [
                "324041/1000000",
                "-139547924213/500000000000"
              ],
              [
                "324041/1000000",
                "-39880151839/125000000000"
              ],
              [
                "324041/1000000",
                "-233634992671/1000000000000"
              ],
              [
                "182817/250000",
                "-29688042279/125000000000"
              ],
              [
                "182817/250000",
                "-530690055247/1000000000000"
              ],
              [
                "182817/250000",
                "-11738930241/31250000000"
              ],
              [
                "182817/250000",
                "-121307299873/250000000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-163800673097/500000000000"
              ],
              [
                "324041/1000000",
                "-523891043/1000000000"
              ],
              [
                "324041/1000000",
                "-438484820959/1000000000000"
              ],
              [
                "182817/250000",
                "-71502459/250000000"
              ],
              [
                "182817/250000",
                "-115839110603/200000000000"
              ],
              [
                "182817/250000",
                "-145123899/250000000"
              ],
              [
                "182817/250000",
                "-34503951389/50000000000"
              ]
            ],
            "raw": [
              "9896014093/30469500000",
              "6077/8000"
            ],
            "new": [
              "20299/62500",
              "6077/8000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "144217/500000",
              "683603/1000000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-168594188721/500000000000"
              ],
              [
                "881037/1000000",
                "-218226140891/500000000000"
              ],
              [
                "62199/125000",
                "-291103273227/1000000000000"
              ],
              [
                "62199/125000",
                "-204768294217/1000000000000"
              ],
              [
                "881037/1000000",
                "-631123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-730386969301/1000000000000"
              ],
              [
                "62199/125000",
                "-292518980373/500000000000"
              ],
              [
                "62199/125000",
                "-62337872717/125000000000"
              ],
              [
                "881037/1000000",
                "-1270624299/5000000000"
              ],
              [
                "881037/1000000",
                "-13747454193/25000000000"
              ],
              [
                "62199/125000",
                "-41607951117/200000000000"
              ],
              [
                "62199/125000",
                "-63642836031/200000000000"
              ],
              [
                "881037/1000000",
                "-371520189093/1000000000000"
              ],
              [
                "881037/1000000",
                "-667293497013/1000000000000"
              ],
              [
                "62199/125000",
                "-162717542439/500000000000"
              ],
              [
                "62199/125000",
                "-54451188681/125000000000"
              ]
            ],
            "raw": [
              "423541433/1468395000",
              "683603/1000000"
            ],
            "new": [
              "144219/500000",
              "683603/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "62801/125000"
            ],
            "lines": [
              [
                "-307011/500000",
                "1073985483/10000000000"
              ],
              [
                "-307011/500000",
                "40512661719/250000000000"
              ],
              [
                "-1/1",
                "468529257/1250000000"
              ],
              [
                "-1/1",
                "15700213101/31250000000"
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
              "15700213101/31250000000"
            ],
            "new": [
              "118963/1000000",
              "502407/1000000"
            ]
          },
          {
            "factor": 130,
            "target": "y",
            "old": [
              "7801/15625",
              "907/1000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-261594188721/500000000000"
              ],
              [
                "881037/1000000",
                "-311226140891/500000000000"
              ],
              [
                "497593/1000000",
                "-238551696707/500000000000"
              ],
              [
                "497593/1000000",
                "-195384449217/500000000000"
              ],
              [
                "881037/1000000",
                "-817123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-916386969301/1000000000000"
              ],
              [
                "497593/1000000",
                "-771038080933/1000000000000"
              ],
              [
                "497593/1000000",
                "-684703585953/1000000000000"
              ],
              [
                "881037/1000000",
                "-439870954923/1000000000000"
              ],
              [
                "881037/1000000",
                "-736244944073/1000000000000"
              ],
              [
                "497593/1000000",
                "-78757194179/200000000000"
              ],
              [
                "497593/1000000",
                "-20182462429/40000000000"
              ],
              [
                "881037/1000000",
                "-111345329307/200000000000"
              ],
              [
                "881037/1000000",
                "-170620127137/200000000000"
              ],
              [
                "497593/1000000",
                "-510641662507/1000000000000"
              ],
              [
                "497593/1000000",
                "-621417252337/1000000000000"
              ]
            ],
            "raw": [
              "16291516849/32631000000",
              "907/1000"
            ],
            "new": [
              "99853/200000",
              "907/1000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "324041/1000000",
              "182817/250000"
            ],
            "lines": [
              [
                "-355781/500000",
                "39867785827/200000000000"
              ],
              [
                "-355781/500000",
                "255166340389/1000000000000"
              ],
              [
                "-355781/500000",
                "318788567/1000000000"
              ],
              [
                "-355781/500000",
                "120646255431/250000000000"
              ],
              [
                "-355781/500000",
                "80526065769/200000000000"
              ],
              [
                "-355781/500000",
                "458457740099/1000000000000"
              ],
              [
                "-355781/500000",
                "71309053/200000000"
              ],
              [
                "-355781/500000",
                "130085429931/250000000000"
              ],
              [
                "-316397/1000000",
                "-8895575173/200000000000"
              ],
              [
                "-316397/1000000",
                "-93290946941/1000000000000"
              ],
              [
                "-316397/1000000",
                "37485881/500000000"
              ],
              [
                "-316397/1000000",
                "67063867197/500000000000"
              ],
              [
                "-316397/1000000",
                "31762704769/200000000000"
              ],
              [
                "-316397/1000000",
                "110000452769/1000000000000"
              ],
              [
                "-316397/1000000",
                "5636423/50000000"
              ],
              [
                "-316397/1000000",
                "85942216197/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "130085429931/177890500000"
            ],
            "new": [
              "324041/1000000",
              "731267/1000000"
            ]
          }
        ]
      }
    },
    {
      "id": 5,
      "assumptions": [
        "AGO-",
        "AGP-",
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
          "20299/62500",
          "324041/1000000",
          "99853/200000",
          "324041/1000000",
          "144219/500000"
        ],
        "high": [
          "617823/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "502407/1000000",
          "1",
          "6077/8000",
          "731267/1000000",
          "907/1000",
          "730027/1000000",
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
        "AGO": -1,
        "AGP": -1,
        "DGP": -1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "BDG": 1,
        "DGH": -1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "ADP": 1,
        "BDP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEO": 1,
        "BEG": 1,
        "DHO": -1,
        "AOP": -1,
        "GOP": -1,
        "FGP": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "CABHO"
          ],
          "target": "ACO",
          "sign": 1,
          "deps": [
            "ABC",
            "CHO",
            "ACH",
            "BCO",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CABHP"
          ],
          "target": "ACP",
          "sign": 1,
          "deps": [
            "ABC",
            "CHP",
            "ACH",
            "BCP",
            "BCH"
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
            "GABCO"
          ],
          "target": "BGO",
          "sign": -1,
          "deps": [
            "ABG",
            "CGO",
            "ACG",
            "AGO",
            "BCG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GABCP"
          ],
          "target": "BGP",
          "sign": -1,
          "deps": [
            "ABG",
            "CGP",
            "ACG",
            "AGP",
            "BCG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACDO"
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ACG",
            "DGO",
            "CGO",
            "AGO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACHO"
          ],
          "target": "GHO",
          "sign": -1,
          "deps": [
            "ACG",
            "AGH",
            "CGO",
            "AGO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACHP"
          ],
          "target": "GHP",
          "sign": -1,
          "deps": [
            "ACG",
            "AGH",
            "CGP",
            "AGP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GBCDO"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "BCG",
            "DGO",
            "CGO",
            "BGO",
            "CDG"
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
            "OACDG"
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACO",
            "DGO",
            "CGO",
            "AGO",
            "CDO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OBCDG"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "BCO",
            "DGO",
            "CGO",
            "BGO",
            "CDO"
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
            "PACDG"
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACP",
            "DGP",
            "CGP",
            "AGP",
            "CDP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PBCDG"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "BCP",
            "DGP",
            "CGP",
            "BGP",
            "CDP"
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
            "BAEGO"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "BGO",
            "ABG",
            "BEO",
            "ABO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "GDH",
            "OP",
            "DHG",
            [
              "area",
              "DGH",
              "T0004",
              "27/40"
            ]
          ],
          "target": "DHO",
          "sign": -1,
          "deps": [
            "GHO",
            "DGO",
            "GHP",
            "DGP",
            "DOP"
          ],
          "area_stage": 0
        },
        {
          "rule": [
            "cap",
            "HAO",
            [
              "G"
            ],
            "P",
            [
              "area",
              "AHO",
              "U_AHO",
              "126285453/200000000"
            ]
          ],
          "target": "AOP",
          "sign": -1,
          "deps": [
            "AHP",
            "HOP"
          ],
          "area_stage": 1
        },
        {
          "rule": [
            "plu",
            "OACGP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ACO",
            "AGO",
            "COP",
            "AOP",
            "CGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "GFH",
            "OP",
            "GFH",
            [
              "area",
              "FGH",
              "U_FGH",
              "30642178599/50000000000"
            ]
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "FHO",
            "GHO",
            "FHP",
            "GHP",
            "GOP"
          ],
          "area_stage": 1
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
          "20299/62500",
          "324041/1000000",
          "99853/200000",
          "324041/1000000",
          "144219/500000"
        ],
        "high": [
          "617823/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "502407/1000000",
          "1/1",
          "6077/8000",
          "731267/1000000",
          "907/1000",
          "730027/1000000",
          "683603/1000000"
        ],
        "steps": []
      }
    },
    {
      "id": 6,
      "assumptions": [
        "AGO-",
        "AGP-",
        "DGP-",
        "AFG+"
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
          "20299/62500",
          "324041/1000000",
          "99853/200000",
          "324041/1000000",
          "144219/500000"
        ],
        "high": [
          "617823/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "502407/1000000",
          "1",
          "6077/8000",
          "731267/1000000",
          "907/1000",
          "730027/1000000",
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
        "AGO": -1,
        "AGP": -1,
        "DGP": -1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "BDG": 1,
        "DGH": -1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "ADP": 1,
        "BDP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEO": 1,
        "BEG": 1,
        "DHO": -1,
        "AOP": -1,
        "GOP": -1,
        "FGP": 1,
        "AFG": 1,
        "AEG": 1,
        "BFG": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "CABHO"
          ],
          "target": "ACO",
          "sign": 1,
          "deps": [
            "ABC",
            "CHO",
            "ACH",
            "BCO",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CABHP"
          ],
          "target": "ACP",
          "sign": 1,
          "deps": [
            "ABC",
            "CHP",
            "ACH",
            "BCP",
            "BCH"
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
            "GABCO"
          ],
          "target": "BGO",
          "sign": -1,
          "deps": [
            "ABG",
            "CGO",
            "ACG",
            "AGO",
            "BCG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GABCP"
          ],
          "target": "BGP",
          "sign": -1,
          "deps": [
            "ABG",
            "CGP",
            "ACG",
            "AGP",
            "BCG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACDO"
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ACG",
            "DGO",
            "CGO",
            "AGO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACHO"
          ],
          "target": "GHO",
          "sign": -1,
          "deps": [
            "ACG",
            "AGH",
            "CGO",
            "AGO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACHP"
          ],
          "target": "GHP",
          "sign": -1,
          "deps": [
            "ACG",
            "AGH",
            "CGP",
            "AGP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GBCDO"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "BCG",
            "DGO",
            "CGO",
            "BGO",
            "CDG"
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
            "OACDG"
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACO",
            "DGO",
            "CGO",
            "AGO",
            "CDO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OBCDG"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "BCO",
            "DGO",
            "CGO",
            "BGO",
            "CDO"
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
            "PACDG"
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACP",
            "DGP",
            "CGP",
            "AGP",
            "CDP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PBCDG"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "BCP",
            "DGP",
            "CGP",
            "BGP",
            "CDP"
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
            "BAEGO"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "BGO",
            "ABG",
            "BEO",
            "ABO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "GDH",
            "OP",
            "DHG",
            [
              "area",
              "DGH",
              "T0004",
              "27/40"
            ]
          ],
          "target": "DHO",
          "sign": -1,
          "deps": [
            "GHO",
            "DGO",
            "GHP",
            "DGP",
            "DOP"
          ],
          "area_stage": 0
        },
        {
          "rule": [
            "cap",
            "HAO",
            [
              "G"
            ],
            "P",
            [
              "area",
              "AHO",
              "U_AHO",
              "126285453/200000000"
            ]
          ],
          "target": "AOP",
          "sign": -1,
          "deps": [
            "AHP",
            "HOP"
          ],
          "area_stage": 1
        },
        {
          "rule": [
            "plu",
            "OACGP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ACO",
            "AGO",
            "COP",
            "AOP",
            "CGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "GFH",
            "OP",
            "GFH",
            [
              "area",
              "FGH",
              "U_FGH",
              "30642178599/50000000000"
            ]
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "FHO",
            "GHO",
            "FHP",
            "GHP",
            "GOP"
          ],
          "area_stage": 1
        },
        {
          "rule": [
            "plu",
            "ABEFG"
          ],
          "target": "AEG",
          "sign": 1,
          "deps": [
            "ABE",
            "AFG",
            "ABF",
            "ABG",
            "AEF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "FABCG"
          ],
          "target": "BFG",
          "sign": 1,
          "deps": [
            "ABF",
            "CFG",
            "ACF",
            "AFG",
            "BCF"
          ],
          "area_stage": null
        }
      ],
      "initial": {
        "L_AFG": {
          "triangle": "AFG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "AFG",
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
        "L_DGP": {
          "triangle": "DGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GDP",
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
        "U_DFG": {
          "triangle": "DFG",
          "side": "hi",
          "value": "6007718799/8000000000",
          "witness": {
            "kind": "vertices",
            "signed": "DFG",
            "used": [
              3,
              5,
              6,
              8
            ],
            "values": [
              "137417586319/1000000000000",
              "35713987107/200000000000",
              "192884036109/1000000000000",
              "229967272053/1000000000000",
              "289178202971/1000000000000",
              "303961689319/1000000000000",
              "330330552187/1000000000000",
              "359428139109/1000000000000",
              "72441699477/200000000000",
              "76345577741/200000000000",
              "413605833903/1000000000000",
              "455722305971/1000000000000",
              "530243052081/1000000000000",
              "696787155081/1000000000000",
              "699567513357/1000000000000",
              "6007718799/8000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "4083": {
          "row": [
            "linear",
            {
              "DFG": "-93/1000",
              "DGP": "6007718799/8000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "DFG",
            "point": "P",
            "line": "DG",
            "side": "upper",
            "outer_upper": {
              "triangle": "DFG",
              "ref": "U_DFG",
              "value": "6007718799/8000000000"
            },
            "fan_lower": [
              {
                "triangle": "FGP",
                "ref": "L_FGP",
                "value": "93/1000"
              },
              {
                "triangle": "DGP",
                "ref": "L_DGP",
                "value": "93/1000"
              },
              {
                "triangle": "DFP",
                "ref": "L_DFP",
                "value": "93/1000"
              }
            ],
            "residual": "3775718799/8000000000"
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
        "142": {
          "name": "AREA_LO_DGP",
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
                3,
                6
              ],
              "1"
            ],
            [
              [
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
                8
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
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DGP",
            "side": "lo",
            "reference": "L_DGP",
            "value": "93/1000"
          }
        },
        "208": {
          "name": "AREA_LO_AFG",
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
                0,
                5
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
            "triangle": "AFG",
            "side": "lo",
            "reference": "L_AFG",
            "value": "93/1000"
          }
        },
        "2801": {
          "name": "LINEAR_4083",
          "terms": [
            [
              [
                5,
                8
              ],
              "-93/1000"
            ],
            [
              [
                3,
                5
              ],
              "93/1000"
            ],
            [
              [
                8
              ],
              "-5263718799/8000000000"
            ],
            [
              [
                6
              ],
              "93/1000"
            ],
            [
              [],
              "-93/1000"
            ],
            [
              [
                3,
                6
              ],
              "5263718799/8000000000"
            ],
            [
              [
                6,
                12
              ],
              "-6007718799/8000000000"
            ],
            [
              [
                12
              ],
              "6007718799/8000000000"
            ],
            [
              [
                8,
                11
              ],
              "6007718799/8000000000"
            ],
            [
              [
                3,
                11
              ],
              "-6007718799/8000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 4083
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
          "180311/500000",
          "324041/1000000",
          "25543/50000",
          "324041/1000000",
          "29977/100000"
        ],
        "high": [
          "600227/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "94161/200000",
          "1/1",
          "6077/8000",
          "11386/15625",
          "907/1000",
          "728743/1000000",
          "683603/1000000"
        ],
        "steps": [
          {
            "factor": 208,
            "target": "a",
            "old": [
              "139/1000",
              "617823/1000000"
            ],
            "lines": [
              [
                "-498037/1000000",
                "-1446409/125000000"
              ],
              [
                "-762839/1000000",
                "2326005649/31250000000"
              ],
              [
                "-114593/1000000",
                "-49376909/125000000"
              ],
              [
                "-75879/200000",
                "-9656619351/31250000000"
              ],
              [
                "-498037/1000000",
                "410761/1600000"
              ],
              [
                "-762839/1000000",
                "1831503377/4000000000"
              ],
              [
                "-114593/1000000",
                "-1013747/8000000"
              ],
              [
                "-75879/200000",
                "297727377/4000000000"
              ]
            ],
            "raw": [
              "139/1000",
              "166500307/277396000"
            ],
            "new": [
              "139/1000",
              "600227/1000000"
            ]
          },
          {
            "factor": 208,
            "target": "z",
            "old": [
              "20299/62500",
              "6077/8000"
            ],
            "lines": [
              [
                "617/1000",
                "-281190143/1000000000"
              ],
              [
                "617/1000",
                "-510898254399/1000000000000"
              ],
              [
                "440901/500000",
                "-317997621/1000000000"
              ],
              [
                "440901/500000",
                "-669839564453/1000000000000"
              ],
              [
                "617/1000",
                "-611335427/1000000000"
              ],
              [
                "617/1000",
                "-664188812611/1000000000000"
              ],
              [
                "440901/500000",
                "-129628581/200000000"
              ],
              [
                "440901/500000",
                "-164626024533/200000000000"
              ]
            ],
            "raw": [
              "35333069/97978000",
              "6077/8000"
            ],
            "new": [
              "180311/500000",
              "6077/8000"
            ]
          },
          {
            "factor": 2801,
            "target": "v",
            "old": [
              "144219/500000",
              "683603/1000000"
            ],
            "lines": [
              [
                "5293022547514563/8000000000000000",
                "-530187434790385945779/2000000000000000000000"
              ],
              [
                "5293022547514563/8000000000000000",
                "-317218389448657433847/1000000000000000000000"
              ],
              [
                "5293022547514563/8000000000000000",
                "-542029621200205945779/2000000000000000000000"
              ],
              [
                "5293022547514563/8000000000000000",
                "-311219476231987433847/1000000000000000000000"
              ],
              [
                "2989398820350807/8000000000000000",
                "-199111125797718180093/1000000000000000000000"
              ],
              [
                "2989398820350807/8000000000000000",
                "-258237149811117077931/2000000000000000000000"
              ],
              [
                "2989398820350807/8000000000000000",
                "-205032219002628180093/1000000000000000000000"
              ],
              [
                "2989398820350807/8000000000000000",
                "-246239323377777077931/2000000000000000000000"
              ],
              [
                "5293022547514563/8000000000000000",
                "-3627392884289961901839/8000000000000000000000"
              ],
              [
                "5293022547514563/8000000000000000",
                "-4044390260717677589499/8000000000000000000000"
              ],
              [
                "5293022547514563/8000000000000000",
                "-3753370283479305901839/8000000000000000000000"
              ],
              [
                "5293022547514563/8000000000000000",
                "-4075007608534381589499/8000000000000000000000"
              ],
              [
                "2989398820350807/8000000000000000",
                "-3099532151510163559467/8000000000000000000000"
              ],
              [
                "2989398820350807/8000000000000000",
                "-2539591744372886430447/8000000000000000000000"
              ],
              [
                "2989398820350807/8000000000000000",
                "-3225509550699507559467/8000000000000000000000"
              ],
              [
                "2989398820350807/8000000000000000",
                "-2570209092189590430447/8000000000000000000000"
              ],
              [
                "5293022547514563/8000000000000000",
                "-767158409346032259513/4000000000000000000000"
              ],
              [
                "5293022547514563/8000000000000000",
                "-1565943716593812053553/4000000000000000000000"
              ],
              [
                "5293022547514563/8000000000000000",
                "-790842782165672259513/4000000000000000000000"
              ],
              [
                "5293022547514563/8000000000000000",
                "-1541948063727132053553/4000000000000000000000"
              ],
              [
                "2989398820350807/8000000000000000",
                "-503228042956133088327/4000000000000000000000"
              ],
              [
                "2989398820350807/8000000000000000",
                "-813544458421416474027/4000000000000000000000"
              ],
              [
                "2989398820350807/8000000000000000",
                "-526912415775773088327/4000000000000000000000"
              ],
              [
                "2989398820350807/8000000000000000",
                "-789548805554736474027/4000000000000000000000"
              ],
              [
                "5293022547514563/8000000000000000",
                "-2067771806663314859307/8000000000000000000000"
              ],
              [
                "5293022547514563/8000000000000000",
                "-3665342421158874447387/8000000000000000000000"
              ],
              [
                "5293022547514563/8000000000000000",
                "-2193749205852658859307/8000000000000000000000"
              ],
              [
                "5293022547514563/8000000000000000",
                "-3695959768975578447387/8000000000000000000000"
              ],
              [
                "2989398820350807/8000000000000000",
                "-307982214776703303387/1600000000000000000000"
              ],
              [
                "2989398820350807/8000000000000000",
                "-432108780962816657667/1600000000000000000000"
              ],
              [
                "2989398820350807/8000000000000000",
                "-333177694614572103387/1600000000000000000000"
              ],
              [
                "2989398820350807/8000000000000000",
                "-438232250526157457667/1600000000000000000000"
              ]
            ],
            "raw": [
              "9471091473407805673/32672978688361500000",
              "683603/1000000"
            ],
            "new": [
              "2319/8000",
              "683603/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "502407/1000000"
            ],
            "lines": [
              [
                "-307011/500000",
                "8256819/100000000"
              ],
              [
                "-307011/500000",
                "326121567/2500000000"
              ],
              [
                "-1/1",
                "3499930473/10000000000"
              ],
              [
                "-1/1",
                "117701199789/250000000000"
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
              "117701199789/250000000000"
            ],
            "new": [
              "118963/1000000",
              "94161/200000"
            ]
          },
          {
            "factor": 130,
            "target": "y",
            "old": [
              "99853/200000",
              "907/1000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-136853349021/250000000000"
              ],
              [
                "881037/1000000",
                "-80834662553/125000000000"
              ],
              [
                "105839/200000",
                "-50512656163/100000000000"
              ],
              [
                "105839/200000",
                "-43408838271/100000000000"
              ],
              [
                "881037/1000000",
                "-817123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-916386969301/1000000000000"
              ],
              [
                "105839/200000",
                "-774836230507/1000000000000"
              ],
              [
                "105839/200000",
                "-703798051587/1000000000000"
              ],
              [
                "881037/1000000",
                "-224751006387/500000000000"
              ],
              [
                "881037/1000000",
                "-372937758947/500000000000"
              ],
              [
                "105839/200000",
                "-5090189729/12500000000"
              ],
              [
                "105839/200000",
                "-26664330009/50000000000"
              ],
              [
                "881037/1000000",
                "-556727285973/1000000000000"
              ],
              [
                "881037/1000000",
                "-853100791093/1000000000000"
              ],
              [
                "105839/200000",
                "-514440451519/1000000000000"
              ],
              [
                "105839/200000",
                "-640511873379/1000000000000"
              ]
            ],
            "raw": [
              "24972334043/48946500000",
              "907/1000"
            ],
            "new": [
              "127549/250000",
              "907/1000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "324041/1000000",
              "731267/1000000"
            ],
            "lines": [
              [
                "-5681/8000",
                "50413658741/250000000000"
              ],
              [
                "-5681/8000",
                "129998038203/500000000000"
              ],
              [
                "-5681/8000",
                "158950969/500000000"
              ],
              [
                "-5681/8000",
                "1925271489/4000000000"
              ],
              [
                "-5681/8000",
                "100127050427/250000000000"
              ],
              [
                "-5681/8000",
                "9176992863/20000000000"
              ],
              [
                "-5681/8000",
                "88914659/250000000"
              ],
              [
                "-5681/8000",
                "2076298281/4000000000"
              ],
              [
                "-316397/1000000",
                "-10318885259/250000000000"
              ],
              [
                "-316397/1000000",
                "-1743881229/20000000000"
              ],
              [
                "-316397/1000000",
                "37485881/500000000"
              ],
              [
                "-316397/1000000",
                "67063867197/500000000000"
              ],
              [
                "-316397/1000000",
                "39394506427/250000000000"
              ],
              [
                "-316397/1000000",
                "55829752647/500000000000"
              ],
              [
                "-316397/1000000",
                "5636423/50000000"
              ],
              [
                "-316397/1000000",
                "85942216197/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "2076298281/2840500000"
            ],
            "new": [
              "324041/1000000",
              "730963/1000000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "2319/8000",
              "683603/1000000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-90353349021/250000000000"
              ],
              [
                "881037/1000000",
                "-57584662553/125000000000"
              ],
              [
                "105839/200000",
                "-31912656163/100000000000"
              ],
              [
                "105839/200000",
                "-24808838271/100000000000"
              ],
              [
                "881037/1000000",
                "-631123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-730386969301/1000000000000"
              ],
              [
                "105839/200000",
                "-588836230507/1000000000000"
              ],
              [
                "105839/200000",
                "-517798051587/1000000000000"
              ],
              [
                "881037/1000000",
                "-131900076087/500000000000"
              ],
              [
                "881037/1000000",
                "-279786730047/500000000000"
              ],
              [
                "105839/200000",
                "-5537832943/25000000000"
              ],
              [
                "105839/200000",
                "-17349227119/50000000000"
              ],
              [
                "881037/1000000",
                "-371520189093/1000000000000"
              ],
              [
                "881037/1000000",
                "-667293497013/1000000000000"
              ],
              [
                "105839/200000",
                "-329233354639/1000000000000"
              ],
              [
                "105839/200000",
                "-454704579299/1000000000000"
              ]
            ],
            "raw": [
              "43966692029/146839500000",
              "683603/1000000"
            ],
            "new": [
              "14971/50000",
              "683603/1000000"
            ]
          },
          {
            "factor": 130,
            "target": "y",
            "old": [
              "127549/250000",
              "907/1000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-136853349021/250000000000"
              ],
              [
                "881037/1000000",
                "-80834662553/125000000000"
              ],
              [
                "105839/200000",
                "-50512656163/100000000000"
              ],
              [
                "105839/200000",
                "-43408838271/100000000000"
              ],
              [
                "881037/1000000",
                "-817123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-916386969301/1000000000000"
              ],
              [
                "105839/200000",
                "-774836230507/1000000000000"
              ],
              [
                "105839/200000",
                "-703798051587/1000000000000"
              ],
              [
                "881037/1000000",
                "-224787552507/500000000000"
              ],
              [
                "881037/1000000",
                "-372900732507/500000000000"
              ],
              [
                "105839/200000",
                "-2545551691/6250000000"
              ],
              [
                "105839/200000",
                "-5332125473/10000000000"
              ],
              [
                "881037/1000000",
                "-4455373401/8000000000"
              ],
              [
                "881037/1000000",
                "-6825184281/8000000000"
              ],
              [
                "105839/200000",
                "-514634840671/1000000000000"
              ],
              [
                "105839/200000",
                "-640559117411/1000000000000"
              ]
            ],
            "raw": [
              "24976394723/48946500000",
              "907/1000"
            ],
            "new": [
              "510279/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "324041/1000000",
              "730027/1000000"
            ],
            "lines": [
              [
                "-510279/1000000",
                "15011801437/100000000000"
              ],
              [
                "-510279/1000000",
                "94980122069/500000000000"
              ],
              [
                "-510279/1000000",
                "27195859961/100000000000"
              ],
              [
                "-510279/1000000",
                "155900414689/500000000000"
              ],
              [
                "-907/1000",
                "21249307961/50000000000"
              ],
              [
                "-907/1000",
                "26989480769/50000000000"
              ],
              [
                "-907/1000",
                "27341337223/50000000000"
              ],
              [
                "-907/1000",
                "33081510031/50000000000"
              ],
              [
                "-510279/1000000",
                "8427866323/1000000000000"
              ],
              [
                "-510279/1000000",
                "-194576401/8000000000"
              ],
              [
                "-510279/1000000",
                "286600966289/1000000000000"
              ],
              [
                "-510279/1000000",
                "253851049841/1000000000000"
              ],
              [
                "-907/1000",
                "283296011173/1000000000000"
              ],
              [
                "-907/1000",
                "325507321117/1000000000000"
              ],
              [
                "-907/1000",
                "561469111139/1000000000000"
              ],
              [
                "-907/1000",
                "603680421083/1000000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "33081510031/45350000000"
            ],
            "new": [
              "324041/1000000",
              "11398/15625"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "324041/1000000",
              "730963/1000000"
            ],
            "lines": [
              [
                "-35029/50000",
                "195789685561/1000000000000"
              ],
              [
                "-35029/50000",
                "251625570479/1000000000000"
              ],
              [
                "-35029/50000",
                "312012673/1000000000"
              ],
              [
                "-35029/50000",
                "2955631701/6250000000"
              ],
              [
                "-35029/50000",
                "49292220039/125000000000"
              ],
              [
                "-35029/50000",
                "45017364523/100000000000"
              ],
              [
                "-35029/50000",
                "87429439/250000000"
              ],
              [
                "-35029/50000",
                "12765153879/25000000000"
              ],
              [
                "-316397/1000000",
                "-41251225439/1000000000000"
              ],
              [
                "-316397/1000000",
                "-87147767287/1000000000000"
              ],
              [
                "-316397/1000000",
                "37485881/500000000"
              ],
              [
                "-316397/1000000",
                "67063867197/500000000000"
              ],
              [
                "-316397/1000000",
                "4915526541/31250000000"
              ],
              [
                "-316397/1000000",
                "13925038433/125000000000"
              ],
              [
                "-316397/1000000",
                "22535369/200000000"
              ],
              [
                "-316397/1000000",
                "85916408697/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "12765153879/17514500000"
            ],
            "new": [
              "324041/1000000",
              "364417/500000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "14971/50000",
              "683603/1000000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-90353349021/250000000000"
              ],
              [
                "881037/1000000",
                "-57584662553/125000000000"
              ],
              [
                "105839/200000",
                "-31912656163/100000000000"
              ],
              [
                "105839/200000",
                "-24808838271/100000000000"
              ],
              [
                "881037/1000000",
                "-631123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-730386969301/1000000000000"
              ],
              [
                "105839/200000",
                "-588836230507/1000000000000"
              ],
              [
                "105839/200000",
                "-517798051587/1000000000000"
              ],
              [
                "881037/1000000",
                "-263933593599/1000000000000"
              ],
              [
                "881037/1000000",
                "-559438264869/1000000000000"
              ],
              [
                "105839/200000",
                "-44329351829/200000000000"
              ],
              [
                "105839/200000",
                "-69369869431/200000000000"
              ],
              [
                "881037/1000000",
                "-371875077183/1000000000000"
              ],
              [
                "881037/1000000",
                "-667379748453/1000000000000"
              ],
              [
                "105839/200000",
                "-329588242729/1000000000000"
              ],
              [
                "105839/200000",
                "-454790830739/1000000000000"
              ]
            ],
            "raw": [
              "87977864533/293679000000",
              "683603/1000000"
            ],
            "new": [
              "299571/1000000",
              "683603/1000000"
            ]
          },
          {
            "factor": 130,
            "target": "y",
            "old": [
              "510279/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-136853349021/250000000000"
              ],
              [
                "881037/1000000",
                "-80834662553/125000000000"
              ],
              [
                "105839/200000",
                "-50512656163/100000000000"
              ],
              [
                "105839/200000",
                "-43408838271/100000000000"
              ],
              [
                "881037/1000000",
                "-817123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-916386969301/1000000000000"
              ],
              [
                "105839/200000",
                "-774836230507/1000000000000"
              ],
              [
                "105839/200000",
                "-703798051587/1000000000000"
              ],
              [
                "881037/1000000",
                "-450086991129/1000000000000"
              ],
              [
                "881037/1000000",
                "-745282851259/1000000000000"
              ],
              [
                "105839/200000",
                "-16312006267/40000000000"
              ],
              [
                "105839/200000",
                "-106538786709/200000000000"
              ],
              [
                "881037/1000000",
                "-558283038627/1000000000000"
              ],
              [
                "881037/1000000",
                "-853478898757/1000000000000"
              ],
              [
                "105839/200000",
                "-515996204173/1000000000000"
              ],
              [
                "105839/200000",
                "-640889981043/1000000000000"
              ]
            ],
            "raw": [
              "50009665681/97893000000",
              "907/1000"
            ],
            "new": [
              "25543/50000",
              "907/1000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "324041/1000000",
              "11398/15625"
            ],
            "lines": [
              [
                "-25543/50000",
                "150464870061/1000000000000"
              ],
              [
                "-25543/50000",
                "190388349189/1000000000000"
              ],
              [
                "-25543/50000",
                "33966139233/125000000000"
              ],
              [
                "-25543/50000",
                "9739143531/31250000000"
              ],
              [
                "-907/1000",
                "424930469061/1000000000000"
              ],
              [
                "-907/1000",
                "539705393469/1000000000000"
              ],
              [
                "-907/1000",
                "17068584777/31250000000"
              ],
              [
                "-907/1000",
                "82621204659/125000000000"
              ],
              [
                "-25543/50000",
                "8830412173/1000000000000"
              ],
              [
                "-25543/50000",
                "-23809723163/1000000000000"
              ],
              [
                "-25543/50000",
                "35693515169/125000000000"
              ],
              [
                "-25543/50000",
                "7903374563/31250000000"
              ],
              [
                "-907/1000",
                "283296011173/1000000000000"
              ],
              [
                "-907/1000",
                "325507321117/1000000000000"
              ],
              [
                "-907/1000",
                "17500428761/31250000000"
              ],
              [
                "-907/1000",
                "75278128787/125000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "82621204659/113375000000"
            ],
            "new": [
              "324041/1000000",
              "728743/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "324041/1000000",
              "364417/500000"
            ],
            "lines": [
              [
                "-700429/1000000",
                "9793336387/50000000000"
              ],
              [
                "-700429/1000000",
                "125908238759/500000000000"
              ],
              [
                "-700429/1000000",
                "155959753/500000000"
              ],
              [
                "-700429/1000000",
                "236383960029/500000000000"
              ],
              [
                "-700429/1000000",
                "19691133201/50000000000"
              ],
              [
                "-700429/1000000",
                "224886206899/500000000000"
              ],
              [
                "-700429/1000000",
                "43694599/125000000"
              ],
              [
                "-700429/1000000",
                "255202603029/500000000000"
              ],
              [
                "-316397/1000000",
                "-2054050813/50000000000"
              ],
              [
                "-316397/1000000",
                "-43411854073/500000000000"
              ],
              [
                "-316397/1000000",
                "37485881/500000000"
              ],
              [
                "-316397/1000000",
                "67063867197/500000000000"
              ],
              [
                "-316397/1000000",
                "7843746001/50000000000"
              ],
              [
                "-316397/1000000",
                "55566114067/500000000000"
              ],
              [
                "-316397/1000000",
                "14076131/125000000"
              ],
              [
                "-316397/1000000",
                "85882510197/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "255202603029/350214500000"
            ],
            "new": [
              "324041/1000000",
              "11386/15625"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "299571/1000000",
              "683603/1000000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-90353349021/250000000000"
              ],
              [
                "881037/1000000",
                "-57584662553/125000000000"
              ],
              [
                "105839/200000",
                "-31912656163/100000000000"
              ],
              [
                "105839/200000",
                "-24808838271/100000000000"
              ],
              [
                "881037/1000000",
                "-631123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-730386969301/1000000000000"
              ],
              [
                "105839/200000",
                "-588836230507/1000000000000"
              ],
              [
                "105839/200000",
                "-517798051587/1000000000000"
              ],
              [
                "881037/1000000",
                "-132054435357/500000000000"
              ],
              [
                "881037/1000000",
                "-279630342057/500000000000"
              ],
              [
                "105839/200000",
                "-11091101813/50000000000"
              ],
              [
                "105839/200000",
                "-108334927/312500000"
              ],
              [
                "881037/1000000",
                "-74468245497/200000000000"
              ],
              [
                "881037/1000000",
                "-133498608177/200000000000"
              ],
              [
                "105839/200000",
                "-330054393031/1000000000000"
              ],
              [
                "105839/200000",
                "-454904123171/1000000000000"
              ]
            ],
            "raw": [
              "44018145119/146839500000",
              "683603/1000000"
            ],
            "new": [
              "29977/100000",
              "683603/1000000"
            ]
          }
        ]
      }
    },
    {
      "id": 7,
      "assumptions": [
        "AGO-",
        "AGP-",
        "DGP-",
        "AFG+"
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
          "180311/500000",
          "324041/1000000",
          "25543/50000",
          "324041/1000000",
          "29977/100000"
        ],
        "high": [
          "600227/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "94161/200000",
          "1",
          "6077/8000",
          "11386/15625",
          "907/1000",
          "728743/1000000",
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
        "AGO": -1,
        "AGP": -1,
        "DGP": -1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "BDG": 1,
        "DGH": -1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "ADP": 1,
        "BDP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEO": 1,
        "BEG": 1,
        "DHO": -1,
        "AOP": -1,
        "GOP": -1,
        "FGP": 1,
        "AFG": 1,
        "AEG": 1,
        "BFG": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "CABHO"
          ],
          "target": "ACO",
          "sign": 1,
          "deps": [
            "ABC",
            "CHO",
            "ACH",
            "BCO",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CABHP"
          ],
          "target": "ACP",
          "sign": 1,
          "deps": [
            "ABC",
            "CHP",
            "ACH",
            "BCP",
            "BCH"
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
            "GABCO"
          ],
          "target": "BGO",
          "sign": -1,
          "deps": [
            "ABG",
            "CGO",
            "ACG",
            "AGO",
            "BCG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GABCP"
          ],
          "target": "BGP",
          "sign": -1,
          "deps": [
            "ABG",
            "CGP",
            "ACG",
            "AGP",
            "BCG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACDO"
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ACG",
            "DGO",
            "CGO",
            "AGO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACHO"
          ],
          "target": "GHO",
          "sign": -1,
          "deps": [
            "ACG",
            "AGH",
            "CGO",
            "AGO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACHP"
          ],
          "target": "GHP",
          "sign": -1,
          "deps": [
            "ACG",
            "AGH",
            "CGP",
            "AGP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GBCDO"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "BCG",
            "DGO",
            "CGO",
            "BGO",
            "CDG"
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
            "OACDG"
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACO",
            "DGO",
            "CGO",
            "AGO",
            "CDO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OBCDG"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "BCO",
            "DGO",
            "CGO",
            "BGO",
            "CDO"
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
            "PACDG"
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACP",
            "DGP",
            "CGP",
            "AGP",
            "CDP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PBCDG"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "BCP",
            "DGP",
            "CGP",
            "BGP",
            "CDP"
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
            "BAEGO"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "BGO",
            "ABG",
            "BEO",
            "ABO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "GDH",
            "OP",
            "DHG",
            [
              "area",
              "DGH",
              "T0004",
              "27/40"
            ]
          ],
          "target": "DHO",
          "sign": -1,
          "deps": [
            "GHO",
            "DGO",
            "GHP",
            "DGP",
            "DOP"
          ],
          "area_stage": 0
        },
        {
          "rule": [
            "cap",
            "HAO",
            [
              "G"
            ],
            "P",
            [
              "area",
              "AHO",
              "U_AHO",
              "126285453/200000000"
            ]
          ],
          "target": "AOP",
          "sign": -1,
          "deps": [
            "AHP",
            "HOP"
          ],
          "area_stage": 1
        },
        {
          "rule": [
            "plu",
            "OACGP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ACO",
            "AGO",
            "COP",
            "AOP",
            "CGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "GFH",
            "OP",
            "GFH",
            [
              "area",
              "FGH",
              "U_FGH",
              "30642178599/50000000000"
            ]
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "FHO",
            "GHO",
            "FHP",
            "GHP",
            "GOP"
          ],
          "area_stage": 1
        },
        {
          "rule": [
            "plu",
            "ABEFG"
          ],
          "target": "AEG",
          "sign": 1,
          "deps": [
            "ABE",
            "AFG",
            "ABF",
            "ABG",
            "AEF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "FABCG"
          ],
          "target": "BFG",
          "sign": 1,
          "deps": [
            "ABF",
            "CFG",
            "ACF",
            "AFG",
            "BCF"
          ],
          "area_stage": null
        }
      ],
      "initial": {
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
        "L_DGP": {
          "triangle": "DGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GDP",
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
        "U_FHP": {
          "triangle": "FHP",
          "side": "hi",
          "value": "30873210723/50000000000",
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
              "7964504017/125000000000",
              "41070610049/500000000000",
              "195216949/1000000000",
              "54980525173/250000000000",
              "119173644327/500000000000",
              "139499753697/500000000000",
              "159483090549/500000000000",
              "201090369601/500000000000",
              "43204191/100000000",
              "237586124827/500000000000",
              "279193403879/500000000000",
              "30873210723/50000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "4262": {
          "row": [
            "linear",
            {
              "CFP": "21573210723/50000000000",
              "CHP": "-93/1000",
              "COP": "-30873210723/50000000000"
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
              "value": "30873210723/50000000000"
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
            "residual": "16923210723/50000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0050",
          "relation": 4262,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "153137/1000000",
          "sources": [
            "L_CHP",
            "L_COP"
          ]
        }
      ],
      "physical": {
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
        "142": {
          "name": "AREA_LO_DGP",
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
                3,
                6
              ],
              "1"
            ],
            [
              [
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
                8
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
              [],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DGP",
            "side": "lo",
            "reference": "L_DGP",
            "value": "93/1000"
          }
        },
        "192": {
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
              "-153137/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "lo",
            "reference": "T0050",
            "value": "153137/1000000"
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
          "180311/500000",
          "324041/1000000",
          "7983/15625",
          "324041/1000000",
          "149899/500000"
        ],
        "high": [
          "600227/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "94161/200000",
          "1/1",
          "6077/8000",
          "728641/1000000",
          "907/1000",
          "728641/1000000",
          "683603/1000000"
        ],
        "steps": [
          {
            "factor": 130,
            "target": "y",
            "old": [
              "25543/50000",
              "907/1000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-136853349021/250000000000"
              ],
              [
                "881037/1000000",
                "-80834662553/125000000000"
              ],
              [
                "105839/200000",
                "-50512656163/100000000000"
              ],
              [
                "105839/200000",
                "-43408838271/100000000000"
              ],
              [
                "881037/1000000",
                "-817123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-916386969301/1000000000000"
              ],
              [
                "105839/200000",
                "-774836230507/1000000000000"
              ],
              [
                "105839/200000",
                "-703798051587/1000000000000"
              ],
              [
                "881037/1000000",
                "-450118247679/1000000000000"
              ],
              [
                "881037/1000000",
                "-745251183909/1000000000000"
              ],
              [
                "105839/200000",
                "-16313256529/40000000000"
              ],
              [
                "105839/200000",
                "-106532453239/200000000000"
              ],
              [
                "881037/1000000",
                "-558366165567/1000000000000"
              ],
              [
                "881037/1000000",
                "-853499101797/1000000000000"
              ],
              [
                "105839/200000",
                "-516079331113/1000000000000"
              ],
              [
                "105839/200000",
                "-640910184083/1000000000000"
              ]
            ],
            "raw": [
              "50013138631/97893000000",
              "907/1000"
            ],
            "new": [
              "102179/200000",
              "907/1000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "324041/1000000",
              "728743/1000000"
            ],
            "lines": [
              [
                "-102179/200000",
                "7520786341/50000000000"
              ],
              [
                "-102179/200000",
                "9515410891/50000000000"
              ],
              [
                "-102179/200000",
                "27172155433/100000000000"
              ],
              [
                "-102179/200000",
                "31161404533/100000000000"
              ],
              [
                "-907/1000",
                "42485707607/100000000000"
              ],
              [
                "-907/1000",
                "53959439903/100000000000"
              ],
              [
                "-907/1000",
                "27308145179/50000000000"
              ],
              [
                "-907/1000",
                "33045011327/50000000000"
              ],
              [
                "-102179/200000",
                "8854661923/1000000000000"
              ],
              [
                "-102179/200000",
                "-23778860093/1000000000000"
              ],
              [
                "-102179/200000",
                "35685437839/125000000000"
              ],
              [
                "-102179/200000",
                "31606247587/125000000000"
              ],
              [
                "-907/1000",
                "283296011173/1000000000000"
              ],
              [
                "-907/1000",
                "325507321117/1000000000000"
              ],
              [
                "-907/1000",
                "279962425981/500000000000"
              ],
              [
                "-907/1000",
                "301068080953/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "33045011327/45350000000"
            ],
            "new": [
              "324041/1000000",
              "728667/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "324041/1000000",
              "11386/15625"
            ],
            "lines": [
              [
                "-70023/100000",
                "39150839661/200000000000"
              ],
              [
                "-70023/100000",
                "50332104111/200000000000"
              ],
              [
                "-70023/100000",
                "311796723/1000000000"
              ],
              [
                "-70023/100000",
                "23629622073/50000000000"
              ],
              [
                "-70023/100000",
                "78731759607/200000000000"
              ],
              [
                "-70023/100000",
                "89913024057/200000000000"
              ],
              [
                "-70023/100000",
                "349426941/1000000000"
              ],
              [
                "-70023/100000",
                "25511132973/50000000000"
              ],
              [
                "-316397/1000000",
                "-8214152539/200000000000"
              ],
              [
                "-316397/1000000",
                "-86804186511/1000000000000"
              ],
              [
                "-316397/1000000",
                "37485881/500000000"
              ],
              [
                "-316397/1000000",
                "67063867197/500000000000"
              ],
              [
                "-316397/1000000",
                "31366767407/200000000000"
              ],
              [
                "-316397/1000000",
                "111100413219/1000000000000"
              ],
              [
                "-316397/1000000",
                "5630099/50000000"
              ],
              [
                "-316397/1000000",
                "85878976197/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "8503710991/11670500000"
            ],
            "new": [
              "324041/1000000",
              "728651/1000000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "29977/100000",
              "683603/1000000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-90353349021/250000000000"
              ],
              [
                "881037/1000000",
                "-57584662553/125000000000"
              ],
              [
                "105839/200000",
                "-31912656163/100000000000"
              ],
              [
                "105839/200000",
                "-24808838271/100000000000"
              ],
              [
                "881037/1000000",
                "-631123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-730386969301/1000000000000"
              ],
              [
                "105839/200000",
                "-588836230507/1000000000000"
              ],
              [
                "105839/200000",
                "-517798051587/1000000000000"
              ],
              [
                "881037/1000000",
                "-132063571887/500000000000"
              ],
              [
                "881037/1000000",
                "-279621085447/500000000000"
              ],
              [
                "105839/200000",
                "-5546007733/25000000000"
              ],
              [
                "105839/200000",
                "-17332662659/50000000000"
              ],
              [
                "881037/1000000",
                "-372389824773/1000000000000"
              ],
              [
                "881037/1000000",
                "-667504851893/1000000000000"
              ],
              [
                "105839/200000",
                "-330102990319/1000000000000"
              ],
              [
                "105839/200000",
                "-454915934179/1000000000000"
              ]
            ],
            "raw": [
              "44021190629/146839500000",
              "683603/1000000"
            ],
            "new": [
              "299791/1000000",
              "683603/1000000"
            ]
          },
          {
            "factor": 192,
            "target": "u",
            "old": [
              "324041/1000000",
              "728667/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "10339477053/20000000000"
              ],
              [
                "-1/1",
                "324639871809/500000000000"
              ],
              [
                "-1/1",
                "74544888629/125000000000"
              ],
              [
                "-1/1",
                "145733/200000"
              ],
              [
                "-1/1",
                "9757234249/20000000000"
              ],
              [
                "-1/1",
                "273822779197/500000000000"
              ],
              [
                "-1/1",
                "83610144257/125000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "145733/200000"
            ],
            "new": [
              "324041/1000000",
              "145733/200000"
            ]
          },
          {
            "factor": 130,
            "target": "y",
            "old": [
              "102179/200000",
              "907/1000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-136853349021/250000000000"
              ],
              [
                "881037/1000000",
                "-80834662553/125000000000"
              ],
              [
                "105839/200000",
                "-50512656163/100000000000"
              ],
              [
                "105839/200000",
                "-43408838271/100000000000"
              ],
              [
                "881037/1000000",
                "-817123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-916386969301/1000000000000"
              ],
              [
                "105839/200000",
                "-774836230507/1000000000000"
              ],
              [
                "105839/200000",
                "-703798051587/1000000000000"
              ],
              [
                "881037/1000000",
                "-225065495367/500000000000"
              ],
              [
                "881037/1000000",
                "-372619136687/500000000000"
              ],
              [
                "105839/200000",
                "-10196103907/25000000000"
              ],
              [
                "105839/200000",
                "-26632467783/50000000000"
              ],
              [
                "881037/1000000",
                "-558400055781/1000000000000"
              ],
              [
                "881037/1000000",
                "-853507338421/1000000000000"
              ],
              [
                "105839/200000",
                "-516113221327/1000000000000"
              ],
              [
                "105839/200000",
                "-640918420707/1000000000000"
              ]
            ],
            "raw": [
              "25007277263/48946500000",
              "907/1000"
            ],
            "new": [
              "51091/100000",
              "907/1000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "324041/1000000",
              "145733/200000"
            ],
            "lines": [
              [
                "-51091/100000",
                "150418374581/1000000000000"
              ],
              [
                "-51091/100000",
                "190309731869/1000000000000"
              ],
              [
                "-51091/100000",
                "271716811091/1000000000000"
              ],
              [
                "-51091/100000",
                "311608168379/1000000000000"
              ],
              [
                "-907/1000",
                "424849331081/1000000000000"
              ],
              [
                "-907/1000",
                "539582686049/1000000000000"
              ],
              [
                "-907/1000",
                "546147767591/1000000000000"
              ],
              [
                "-907/1000",
                "660881122559/1000000000000"
              ],
              [
                "-51091/100000",
                "8865054673/1000000000000"
              ],
              [
                "-51091/100000",
                "-23765633063/1000000000000"
              ],
              [
                "-51091/100000",
                "285457664503/1000000000000"
              ],
              [
                "-51091/100000",
                "252826976767/1000000000000"
              ],
              [
                "-907/1000",
                "283296011173/1000000000000"
              ],
              [
                "-907/1000",
                "325507321117/1000000000000"
              ],
              [
                "-907/1000",
                "559888621003/1000000000000"
              ],
              [
                "-907/1000",
                "602099930947/1000000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "660881122559/907000000000"
            ],
            "new": [
              "324041/1000000",
              "364323/500000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "324041/1000000",
              "728651/1000000"
            ],
            "lines": [
              [
                "-700209/1000000",
                "19574563569/100000000000"
              ],
              [
                "-700209/1000000",
                "31456296141/125000000000"
              ],
              [
                "-700209/1000000",
                "155891883/500000000"
              ],
              [
                "-700209/1000000",
                "236286961809/500000000000"
              ],
              [
                "-700209/1000000",
                "19681694757/50000000000"
              ],
              [
                "-700209/1000000",
                "224769314289/500000000000"
              ],
              [
                "-700209/1000000",
                "349412031/1000000000"
              ],
              [
                "-700209/1000000",
                "255101094309/500000000000"
              ],
              [
                "-316397/1000000",
                "-4106636831/100000000000"
              ],
              [
                "-316397/1000000",
                "-1356184689/15625000000"
              ],
              [
                "-316397/1000000",
                "37485881/500000000"
              ],
              [
                "-316397/1000000",
                "67063867197/500000000000"
              ],
              [
                "-316397/1000000",
                "7841094557/50000000000"
              ],
              [
                "-316397/1000000",
                "55546219677/500000000000"
              ],
              [
                "-316397/1000000",
                "112600027/1000000000"
              ],
              [
                "-316397/1000000",
                "85877999697/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "85033698103/116701500000"
            ],
            "new": [
              "324041/1000000",
              "728643/1000000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "299791/1000000",
              "683603/1000000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-90353349021/250000000000"
              ],
              [
                "881037/1000000",
                "-57584662553/125000000000"
              ],
              [
                "105839/200000",
                "-31912656163/100000000000"
              ],
              [
                "105839/200000",
                "-24808838271/100000000000"
              ],
              [
                "881037/1000000",
                "-631123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-730386969301/1000000000000"
              ],
              [
                "105839/200000",
                "-588836230507/1000000000000"
              ],
              [
                "105839/200000",
                "-517798051587/1000000000000"
              ],
              [
                "881037/1000000",
                "-264132192909/1000000000000"
              ],
              [
                "881037/1000000",
                "-559237055399/1000000000000"
              ],
              [
                "105839/200000",
                "-44369071691/200000000000"
              ],
              [
                "105839/200000",
                "-69329627537/200000000000"
              ],
              [
                "881037/1000000",
                "-372403252971/1000000000000"
              ],
              [
                "881037/1000000",
                "-667508115461/1000000000000"
              ],
              [
                "105839/200000",
                "-330116418517/1000000000000"
              ],
              [
                "105839/200000",
                "-454919197747/1000000000000"
              ]
            ],
            "raw": [
              "88044064303/293679000000",
              "683603/1000000"
            ],
            "new": [
              "74949/250000",
              "683603/1000000"
            ]
          },
          {
            "factor": 130,
            "target": "y",
            "old": [
              "51091/100000",
              "907/1000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-136853349021/250000000000"
              ],
              [
                "881037/1000000",
                "-80834662553/125000000000"
              ],
              [
                "105839/200000",
                "-50512656163/100000000000"
              ],
              [
                "105839/200000",
                "-43408838271/100000000000"
              ],
              [
                "881037/1000000",
                "-817123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-916386969301/1000000000000"
              ],
              [
                "105839/200000",
                "-774836230507/1000000000000"
              ],
              [
                "105839/200000",
                "-703798051587/1000000000000"
              ],
              [
                "881037/1000000",
                "-225066457107/500000000000"
              ],
              [
                "881037/1000000",
                "-372618162307/500000000000"
              ],
              [
                "105839/200000",
                "-5098075997/12500000000"
              ],
              [
                "105839/200000",
                "-5326474069/10000000000"
              ],
              [
                "881037/1000000",
                "-111681034257/200000000000"
              ],
              [
                "881037/1000000",
                "-170701716337/200000000000"
              ],
              [
                "105839/200000",
                "-516118336831/1000000000000"
              ],
              [
                "105839/200000",
                "-640919663971/1000000000000"
              ]
            ],
            "raw": [
              "25007384123/48946500000",
              "907/1000"
            ],
            "new": [
              "7983/15625",
              "907/1000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "324041/1000000",
              "364323/500000"
            ],
            "lines": [
              [
                "-7983/15625",
                "37604479059/250000000000"
              ],
              [
                "-7983/15625",
                "47577176667/250000000000"
              ],
              [
                "-7983/15625",
                "67928994357/250000000000"
              ],
              [
                "-7983/15625",
                "15580338393/50000000000"
              ],
              [
                "-907/1000",
                "106211871759/250000000000"
              ],
              [
                "-907/1000",
                "134894974311/250000000000"
              ],
              [
                "-907/1000",
                "136536387057/250000000000"
              ],
              [
                "-907/1000",
                "165219489609/250000000000"
              ],
              [
                "-7983/15625",
                "8866440373/1000000000000"
              ],
              [
                "-7983/15625",
                "-23763869459/1000000000000"
              ],
              [
                "-7983/15625",
                "285453581379/1000000000000"
              ],
              [
                "-7983/15625",
                "252823271547/1000000000000"
              ],
              [
                "-907/1000",
                "283296011173/1000000000000"
              ],
              [
                "-907/1000",
                "325507321117/1000000000000"
              ],
              [
                "-907/1000",
                "559883152179/1000000000000"
              ],
              [
                "-907/1000",
                "602094462123/1000000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "165219489609/226750000000"
            ],
            "new": [
              "324041/1000000",
              "364321/500000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "324041/1000000",
              "728643/1000000"
            ],
            "lines": [
              [
                "-175051/250000",
                "6116973019/31250000000"
              ],
              [
                "-175051/250000",
                "6291176891/25000000000"
              ],
              [
                "-175051/250000",
                "311780681/1000000000"
              ],
              [
                "-175051/250000",
                "29535594663/62500000000"
              ],
              [
                "-175051/250000",
                "12300894703/31250000000"
              ],
              [
                "-175051/250000",
                "56191571191/125000000000"
              ],
              [
                "-175051/250000",
                "174704287/500000000"
              ],
              [
                "-175051/250000",
                "63774675951/125000000000"
              ],
              [
                "-316397/1000000",
                "-5133222799/125000000000"
              ],
              [
                "-316397/1000000",
                "-43397352287/500000000000"
              ],
              [
                "-316397/1000000",
                "37485881/500000000"
              ],
              [
                "-316397/1000000",
                "67063867197/500000000000"
              ],
              [
                "-316397/1000000",
                "19602463937/125000000000"
              ],
              [
                "-316397/1000000",
                "55545394657/500000000000"
              ],
              [
                "-316397/1000000",
                "22519931/200000000"
              ],
              [
                "-316397/1000000",
                "85877813697/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "63774675951/87525500000"
            ],
            "new": [
              "324041/1000000",
              "364321/500000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "74949/250000",
              "683603/1000000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-90353349021/250000000000"
              ],
              [
                "881037/1000000",
                "-57584662553/125000000000"
              ],
              [
                "105839/200000",
                "-31912656163/100000000000"
              ],
              [
                "105839/200000",
                "-24808838271/100000000000"
              ],
              [
                "881037/1000000",
                "-631123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-730386969301/1000000000000"
              ],
              [
                "105839/200000",
                "-588836230507/1000000000000"
              ],
              [
                "105839/200000",
                "-517798051587/1000000000000"
              ],
              [
                "881037/1000000",
                "-264133154649/1000000000000"
              ],
              [
                "881037/1000000",
                "-559236081019/1000000000000"
              ],
              [
                "105839/200000",
                "-44369264039/200000000000"
              ],
              [
                "105839/200000",
                "-69329432661/200000000000"
              ],
              [
                "881037/1000000",
                "-372405810723/1000000000000"
              ],
              [
                "881037/1000000",
                "-667508737093/1000000000000"
              ],
              [
                "105839/200000",
                "-330118976269/1000000000000"
              ],
              [
                "105839/200000",
                "-454919819379/1000000000000"
              ]
            ],
            "raw": [
              "88044384883/293679000000",
              "683603/1000000"
            ],
            "new": [
              "149899/500000",
              "683603/1000000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "324041/1000000",
              "364321/500000"
            ],
            "lines": [
              [
                "-7983/15625",
                "75208589309/500000000000"
              ],
              [
                "-7983/15625",
                "95153795573/500000000000"
              ],
              [
                "-7983/15625",
                "8491117163/31250000000"
              ],
              [
                "-7983/15625",
                "19475385109/62500000000"
              ],
              [
                "-907/1000",
                "212423374709/500000000000"
              ],
              [
                "-907/1000",
                "269789390861/500000000000"
              ],
              [
                "-907/1000",
                "34134082501/62500000000"
              ],
              [
                "-907/1000",
                "1032620863/1562500000"
              ],
              [
                "-7983/15625",
                "8866440373/1000000000000"
              ],
              [
                "-7983/15625",
                "-23763869459/1000000000000"
              ],
              [
                "-7983/15625",
                "17840806111/62500000000"
              ],
              [
                "-7983/15625",
                "31602823493/125000000000"
              ],
              [
                "-907/1000",
                "283296011173/1000000000000"
              ],
              [
                "-907/1000",
                "325507321117/1000000000000"
              ],
              [
                "-907/1000",
                "17496327143/31250000000"
              ],
              [
                "-907/1000",
                "15052344463/25000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "1032620863/1417187500"
            ],
            "new": [
              "324041/1000000",
              "728641/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "324041/1000000",
              "364321/500000"
            ],
            "lines": [
              [
                "-350101/500000",
                "12233868913/62500000000"
              ],
              [
                "-350101/500000",
                "62911328009/250000000000"
              ],
              [
                "-350101/500000",
                "311779447/1000000000"
              ],
              [
                "-350101/500000",
                "118141937751/250000000000"
              ],
              [
                "-350101/500000",
                "24601681713/62500000000"
              ],
              [
                "-350101/500000",
                "112382579209/250000000000"
              ],
              [
                "-350101/500000",
                "349407247/1000000000"
              ],
              [
                "-350101/500000",
                "127548887751/250000000000"
              ],
              [
                "-316397/1000000",
                "-5133222799/125000000000"
              ],
              [
                "-316397/1000000",
                "-43397352287/500000000000"
              ],
              [
                "-316397/1000000",
                "37485881/500000000"
              ],
              [
                "-316397/1000000",
                "67063867197/500000000000"
              ],
              [
                "-316397/1000000",
                "19602402801/125000000000"
              ],
              [
                "-316397/1000000",
                "55545150113/500000000000"
              ],
              [
                "-316397/1000000",
                "56299781/500000000"
              ],
              [
                "-316397/1000000",
                "85877767197/500000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "127548887751/175050500000"
            ],
            "new": [
              "324041/1000000",
              "728641/1000000"
            ]
          }
        ]
      }
    },
    {
      "id": 8,
      "assumptions": [
        "AGO-",
        "AGP-",
        "DGP-",
        "AFG+"
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
          "180311/500000",
          "324041/1000000",
          "7983/15625",
          "324041/1000000",
          "149899/500000"
        ],
        "high": [
          "600227/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "94161/200000",
          "1",
          "6077/8000",
          "728641/1000000",
          "907/1000",
          "728641/1000000",
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
        "AGO": -1,
        "AGP": -1,
        "DGP": -1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "BDG": 1,
        "DGH": -1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "ADP": 1,
        "BDP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEO": 1,
        "BEG": 1,
        "DHO": -1,
        "AOP": -1,
        "GOP": -1,
        "FGP": 1,
        "AFG": 1,
        "AEG": 1,
        "BFG": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "CABHO"
          ],
          "target": "ACO",
          "sign": 1,
          "deps": [
            "ABC",
            "CHO",
            "ACH",
            "BCO",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CABHP"
          ],
          "target": "ACP",
          "sign": 1,
          "deps": [
            "ABC",
            "CHP",
            "ACH",
            "BCP",
            "BCH"
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
            "GABCO"
          ],
          "target": "BGO",
          "sign": -1,
          "deps": [
            "ABG",
            "CGO",
            "ACG",
            "AGO",
            "BCG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GABCP"
          ],
          "target": "BGP",
          "sign": -1,
          "deps": [
            "ABG",
            "CGP",
            "ACG",
            "AGP",
            "BCG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACDO"
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ACG",
            "DGO",
            "CGO",
            "AGO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACHO"
          ],
          "target": "GHO",
          "sign": -1,
          "deps": [
            "ACG",
            "AGH",
            "CGO",
            "AGO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACHP"
          ],
          "target": "GHP",
          "sign": -1,
          "deps": [
            "ACG",
            "AGH",
            "CGP",
            "AGP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GBCDO"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "BCG",
            "DGO",
            "CGO",
            "BGO",
            "CDG"
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
            "OACDG"
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACO",
            "DGO",
            "CGO",
            "AGO",
            "CDO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OBCDG"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "BCO",
            "DGO",
            "CGO",
            "BGO",
            "CDO"
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
            "PACDG"
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACP",
            "DGP",
            "CGP",
            "AGP",
            "CDP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PBCDG"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "BCP",
            "DGP",
            "CGP",
            "BGP",
            "CDP"
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
            "BAEGO"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "BGO",
            "ABG",
            "BEO",
            "ABO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "GDH",
            "OP",
            "DHG",
            [
              "area",
              "DGH",
              "T0004",
              "27/40"
            ]
          ],
          "target": "DHO",
          "sign": -1,
          "deps": [
            "GHO",
            "DGO",
            "GHP",
            "DGP",
            "DOP"
          ],
          "area_stage": 0
        },
        {
          "rule": [
            "cap",
            "HAO",
            [
              "G"
            ],
            "P",
            [
              "area",
              "AHO",
              "U_AHO",
              "126285453/200000000"
            ]
          ],
          "target": "AOP",
          "sign": -1,
          "deps": [
            "AHP",
            "HOP"
          ],
          "area_stage": 1
        },
        {
          "rule": [
            "plu",
            "OACGP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ACO",
            "AGO",
            "COP",
            "AOP",
            "CGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "GFH",
            "OP",
            "GFH",
            [
              "area",
              "FGH",
              "U_FGH",
              "30642178599/50000000000"
            ]
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "FHO",
            "GHO",
            "FHP",
            "GHP",
            "GOP"
          ],
          "area_stage": 1
        },
        {
          "rule": [
            "plu",
            "ABEFG"
          ],
          "target": "AEG",
          "sign": 1,
          "deps": [
            "ABE",
            "AFG",
            "ABF",
            "ABG",
            "AEF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "FABCG"
          ],
          "target": "BFG",
          "sign": 1,
          "deps": [
            "ABF",
            "CFG",
            "ACF",
            "AFG",
            "BCF"
          ],
          "area_stage": null
        }
      ],
      "initial": {
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
        }
      },
      "relations": {},
      "updates": [],
      "physical": {
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
          "180311/500000",
          "324041/1000000",
          "510913/1000000",
          "324041/1000000",
          "149899/500000"
        ],
        "high": [
          "600227/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "94161/200000",
          "1/1",
          "6077/8000",
          "728641/1000000",
          "907/1000",
          "728641/1000000",
          "683603/1000000"
        ],
        "steps": [
          {
            "factor": 130,
            "target": "y",
            "old": [
              "7983/15625",
              "907/1000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-136853349021/250000000000"
              ],
              [
                "881037/1000000",
                "-80834662553/125000000000"
              ],
              [
                "105839/200000",
                "-50512656163/100000000000"
              ],
              [
                "105839/200000",
                "-43408838271/100000000000"
              ],
              [
                "881037/1000000",
                "-817123064961/1000000000000"
              ],
              [
                "881037/1000000",
                "-916386969301/1000000000000"
              ],
              [
                "105839/200000",
                "-774836230507/1000000000000"
              ],
              [
                "105839/200000",
                "-703798051587/1000000000000"
              ],
              [
                "881037/1000000",
                "-112533348771/250000000000"
              ],
              [
                "881037/1000000",
                "-46577239839/62500000000"
              ],
              [
                "105839/200000",
                "-40784656063/100000000000"
              ],
              [
                "105839/200000",
                "-53264691971/100000000000"
              ],
              [
                "881037/1000000",
                "-558406450161/1000000000000"
              ],
              [
                "881037/1000000",
                "-853508892501/1000000000000"
              ],
              [
                "105839/200000",
                "-516119615707/1000000000000"
              ],
              [
                "105839/200000",
                "-640919974787/1000000000000"
              ]
            ],
            "raw": [
              "12503705419/24473250000",
              "907/1000"
            ],
            "new": [
              "510913/1000000",
              "907/1000"
            ]
          }
        ]
      }
    },
    {
      "id": 9,
      "assumptions": [
        "AGO-",
        "AGP-",
        "DGP-",
        "AFG+"
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
          "180311/500000",
          "324041/1000000",
          "510913/1000000",
          "324041/1000000",
          "149899/500000"
        ],
        "high": [
          "600227/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "94161/200000",
          "1",
          "6077/8000",
          "728641/1000000",
          "907/1000",
          "728641/1000000",
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
        "AGO": -1,
        "AGP": -1,
        "DGP": -1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "BDG": 1,
        "DGH": -1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "ADP": 1,
        "BDP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEO": 1,
        "BEG": 1,
        "DHO": -1,
        "AOP": -1,
        "GOP": -1,
        "FGP": 1,
        "AFG": 1,
        "AEG": 1,
        "BFG": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "CABHO"
          ],
          "target": "ACO",
          "sign": 1,
          "deps": [
            "ABC",
            "CHO",
            "ACH",
            "BCO",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CABHP"
          ],
          "target": "ACP",
          "sign": 1,
          "deps": [
            "ABC",
            "CHP",
            "ACH",
            "BCP",
            "BCH"
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
            "GABCO"
          ],
          "target": "BGO",
          "sign": -1,
          "deps": [
            "ABG",
            "CGO",
            "ACG",
            "AGO",
            "BCG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GABCP"
          ],
          "target": "BGP",
          "sign": -1,
          "deps": [
            "ABG",
            "CGP",
            "ACG",
            "AGP",
            "BCG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACDO"
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ACG",
            "DGO",
            "CGO",
            "AGO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACHO"
          ],
          "target": "GHO",
          "sign": -1,
          "deps": [
            "ACG",
            "AGH",
            "CGO",
            "AGO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACHP"
          ],
          "target": "GHP",
          "sign": -1,
          "deps": [
            "ACG",
            "AGH",
            "CGP",
            "AGP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GBCDO"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "BCG",
            "DGO",
            "CGO",
            "BGO",
            "CDG"
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
            "OACDG"
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACO",
            "DGO",
            "CGO",
            "AGO",
            "CDO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OBCDG"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "BCO",
            "DGO",
            "CGO",
            "BGO",
            "CDO"
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
            "PACDG"
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACP",
            "DGP",
            "CGP",
            "AGP",
            "CDP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PBCDG"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "BCP",
            "DGP",
            "CGP",
            "BGP",
            "CDP"
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
            "BAEGO"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "BGO",
            "ABG",
            "BEO",
            "ABO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "GDH",
            "OP",
            "DHG",
            [
              "area",
              "DGH",
              "T0004",
              "27/40"
            ]
          ],
          "target": "DHO",
          "sign": -1,
          "deps": [
            "GHO",
            "DGO",
            "GHP",
            "DGP",
            "DOP"
          ],
          "area_stage": 0
        },
        {
          "rule": [
            "cap",
            "HAO",
            [
              "G"
            ],
            "P",
            [
              "area",
              "AHO",
              "U_AHO",
              "126285453/200000000"
            ]
          ],
          "target": "AOP",
          "sign": -1,
          "deps": [
            "AHP",
            "HOP"
          ],
          "area_stage": 1
        },
        {
          "rule": [
            "plu",
            "OACGP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ACO",
            "AGO",
            "COP",
            "AOP",
            "CGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "GFH",
            "OP",
            "GFH",
            [
              "area",
              "FGH",
              "U_FGH",
              "30642178599/50000000000"
            ]
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "FHO",
            "GHO",
            "FHP",
            "GHP",
            "GOP"
          ],
          "area_stage": 1
        },
        {
          "rule": [
            "plu",
            "ABEFG"
          ],
          "target": "AEG",
          "sign": 1,
          "deps": [
            "ABE",
            "AFG",
            "ABF",
            "ABG",
            "AEF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "FABCG"
          ],
          "target": "BFG",
          "sign": 1,
          "deps": [
            "ABF",
            "CFG",
            "ACF",
            "AFG",
            "BCF"
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
          "180311/500000",
          "324041/1000000",
          "510913/1000000",
          "324041/1000000",
          "149899/500000"
        ],
        "high": [
          "600227/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "94161/200000",
          "1/1",
          "6077/8000",
          "728641/1000000",
          "907/1000",
          "728641/1000000",
          "683603/1000000"
        ],
        "steps": []
      }
    },
    {
      "id": 10,
      "assumptions": [
        "AGO-",
        "AGP-",
        "DGP-",
        "AFG+",
        "FGO+"
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
          "180311/500000",
          "324041/1000000",
          "510913/1000000",
          "324041/1000000",
          "149899/500000"
        ],
        "high": [
          "600227/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "94161/200000",
          "1",
          "6077/8000",
          "728641/1000000",
          "907/1000",
          "728641/1000000",
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
        "AGO": -1,
        "AGP": -1,
        "DGP": -1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "BDG": 1,
        "DGH": -1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "ADP": 1,
        "BDP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEO": 1,
        "BEG": 1,
        "DHO": -1,
        "AOP": -1,
        "GOP": -1,
        "FGP": 1,
        "AFG": 1,
        "AEG": 1,
        "BFG": 1,
        "FGO": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "CABHO"
          ],
          "target": "ACO",
          "sign": 1,
          "deps": [
            "ABC",
            "CHO",
            "ACH",
            "BCO",
            "BCH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "CABHP"
          ],
          "target": "ACP",
          "sign": 1,
          "deps": [
            "ABC",
            "CHP",
            "ACH",
            "BCP",
            "BCH"
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
            "GABCO"
          ],
          "target": "BGO",
          "sign": -1,
          "deps": [
            "ABG",
            "CGO",
            "ACG",
            "AGO",
            "BCG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GABCP"
          ],
          "target": "BGP",
          "sign": -1,
          "deps": [
            "ABG",
            "CGP",
            "ACG",
            "AGP",
            "BCG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACDO"
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ACG",
            "DGO",
            "CGO",
            "AGO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACHO"
          ],
          "target": "GHO",
          "sign": -1,
          "deps": [
            "ACG",
            "AGH",
            "CGO",
            "AGO",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACHP"
          ],
          "target": "GHP",
          "sign": -1,
          "deps": [
            "ACG",
            "AGH",
            "CGP",
            "AGP",
            "CGH"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GBCDO"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "BCG",
            "DGO",
            "CGO",
            "BGO",
            "CDG"
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
            "OACDG"
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACO",
            "DGO",
            "CGO",
            "AGO",
            "CDO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OBCDG"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "BCO",
            "DGO",
            "CGO",
            "BGO",
            "CDO"
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
            "PACDG"
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACP",
            "DGP",
            "CGP",
            "AGP",
            "CDP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PBCDG"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "BCP",
            "DGP",
            "CGP",
            "BGP",
            "CDP"
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
            "BAEGO"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "BGO",
            "ABG",
            "BEO",
            "ABO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "GDH",
            "OP",
            "DHG",
            [
              "area",
              "DGH",
              "T0004",
              "27/40"
            ]
          ],
          "target": "DHO",
          "sign": -1,
          "deps": [
            "GHO",
            "DGO",
            "GHP",
            "DGP",
            "DOP"
          ],
          "area_stage": 0
        },
        {
          "rule": [
            "cap",
            "HAO",
            [
              "G"
            ],
            "P",
            [
              "area",
              "AHO",
              "U_AHO",
              "126285453/200000000"
            ]
          ],
          "target": "AOP",
          "sign": -1,
          "deps": [
            "AHP",
            "HOP"
          ],
          "area_stage": 1
        },
        {
          "rule": [
            "plu",
            "OACGP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ACO",
            "AGO",
            "COP",
            "AOP",
            "CGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "GFH",
            "OP",
            "GFH",
            [
              "area",
              "FGH",
              "U_FGH",
              "30642178599/50000000000"
            ]
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "FHO",
            "GHO",
            "FHP",
            "GHP",
            "GOP"
          ],
          "area_stage": 1
        },
        {
          "rule": [
            "plu",
            "ABEFG"
          ],
          "target": "AEG",
          "sign": 1,
          "deps": [
            "ABE",
            "AFG",
            "ABF",
            "ABG",
            "AEF"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "FABCG"
          ],
          "target": "BFG",
          "sign": 1,
          "deps": [
            "ABF",
            "CFG",
            "ACF",
            "AFG",
            "BCF"
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
        "L_AFG": {
          "triangle": "AFG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "AFG",
            "points": []
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
        "L_CDP": {
          "triangle": "CDP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CDP",
            "points": []
          }
        },
        "L_CFG": {
          "triangle": "CFG",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "CFG",
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
        "L_DFG": {
          "triangle": "DFG",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "DFG",
            "points": [
              "O",
              "P"
            ]
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
        "L_DGP": {
          "triangle": "DGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GDP",
            "points": []
          }
        },
        "L_FGO": {
          "triangle": "FGO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FGO",
            "points": []
          }
        },
        "L_FGP": {
          "triangle": "FGP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "FGP",
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
            "triangle": "OGP",
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
              "38231463/4000000000",
              "1216445859/100000000000",
              "5539654461/20000000000",
              "3291189927/10000000000",
              "176260315473/500000000000",
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
              "26308391/160000000",
              "1946918213/10000000000",
              "839387123/4000000000",
              "18136578009/62500000000",
              "78875893289/250000000000",
              "365577663/1000000000",
              "410997/1000000",
              "82603111/160000000",
              "5465338213/10000000000",
              "2246755123/4000000000",
              "40126703009/62500000000",
              "166836393289/250000000000",
              "717419663/1000000000",
              "762839/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_DEG": {
          "triangle": "DEG",
          "side": "hi",
          "value": "693211365081/1000000000000",
          "witness": {
            "kind": "vertices",
            "signed": "DEG",
            "used": [
              3,
              4,
              6,
              8
            ],
            "values": [
              "-159685313139/1000000000000",
              "-19183001233/200000000000",
              "32046249937/200000000000",
              "266763025971/1000000000000",
              "83275501107/200000000000",
              "693211365081/1000000000000"
            ],
            "cell": "CA"
          }
        },
        "U_DFG": {
          "triangle": "DFG",
          "side": "hi",
          "value": "746728869951/1000000000000",
          "witness": {
            "kind": "vertices",
            "signed": "DFG",
            "used": [
              3,
              5,
              6,
              8
            ],
            "values": [
              "29985024137/200000000000",
              "191077469901/1000000000000",
              "44137577307/200000000000",
              "47647765299/200000000000",
              "289178202971/1000000000000",
              "60548653937/200000000000",
              "330330552187/1000000000000",
              "74701207107/200000000000",
              "377491908781/1000000000000",
              "390012347811/1000000000000",
              "87434740881/200000000000",
              "441996351971/1000000000000",
              "530243052081/1000000000000",
              "683061201081/1000000000000",
              "699567513357/1000000000000",
              "746728869951/1000000000000"
            ],
            "cell": "CA"
          }
        },
        "U_FGH": {
          "triangle": "FGH",
          "side": "hi",
          "value": "140951199789/250000000000",
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
              "-5154744737/62500000000",
              "-21959975093/500000000000",
              "13331838921/250000000000",
              "9188332129/100000000000",
              "1186491/8000000",
              "101132450407/500000000000",
              "847852623/4000000000",
              "134682863807/500000000000",
              "33806817229/100000000000",
              "197248113/500000000",
              "40516899909/100000000000",
              "140951199789/250000000000"
            ],
            "cell": "CA"
          }
        },
        "U_FGP": {
          "triangle": "FGP",
          "side": "hi",
          "value": "497325318103/1000000000000",
          "witness": {
            "kind": "vertices",
            "signed": "FGP",
            "used": [
              5,
              6,
              8,
              11,
              12
            ],
            "values": [
              "-226581894849/1000000000000",
              "-141055880087/1000000000000",
              "-4610405663/40000000000",
              "-5309094257/62500000000",
              "-2151224727/31250000000",
              "-29734126813/1000000000000",
              "-2416436021/100000000000",
              "-2016791283/500000000000",
              "6389202353/200000000000",
              "32110443951/1000000000000",
              "7309136479/100000000000",
              "10894674133/125000000000",
              "46611071217/500000000000",
              "26822042677/250000000000",
              "117636458713/1000000000000",
              "25840347353/200000000000",
              "5737287889/40000000000",
              "153709121019/1000000000000",
              "40353740993/250000000000",
              "5429588459/31250000000",
              "8876064041/50000000000",
              "11525819879/62500000000",
              "11865821721/62500000000",
              "51135973927/250000000000",
              "228958211987/1000000000000",
              "250964846019/1000000000000",
              "278306483849/1000000000000",
              "375562208849/1000000000000",
              "400069593103/1000000000000",
              "105026825693/250000000000",
              "21810680981/50000000000",
              "497325318103/1000000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "0": {
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
        "15": {
          "row": [
            "fan",
            "CFG",
            "CFO",
            "FGO",
            "CGO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "CFG",
            "point": "O"
          }
        },
        "16": {
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
        "19": {
          "row": [
            "fan",
            "CGO",
            "CGP",
            "COP",
            "GOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "GCO",
            "point": "P"
          }
        },
        "21": {
          "row": [
            "fan",
            "DFG",
            "DFO",
            "FGO",
            "DGO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "DFG",
            "point": "O"
          }
        },
        "22": {
          "row": [
            "fan",
            "DFG",
            "DFP",
            "FGP",
            "DGP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "DFG",
            "point": "P"
          }
        },
        "24": {
          "row": [
            "fan",
            "DGO",
            "DGP",
            "DOP",
            "GOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "GDO",
            "point": "P"
          }
        },
        "25": {
          "row": [
            "fan",
            "FGP",
            "FGO",
            "GOP",
            "FOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "FGP",
            "point": "O"
          }
        },
        "218": {
          "row": [
            "plu",
            "BCF",
            "CDG",
            "BCD",
            "CFG",
            "BCG",
            "CDF"
          ],
          "witness": {
            "kind": "plu",
            "word": "CBDFG"
          }
        },
        "280": {
          "row": [
            "plu",
            "CFP",
            "CGO",
            "CFG",
            "COP",
            "CFO",
            "CGP"
          ],
          "witness": {
            "kind": "plu",
            "word": "CFGOP"
          }
        },
        "363": {
          "row": [
            "plu",
            "CDF",
            "DEG",
            "CDE",
            "DFG",
            "CDG",
            "DEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "DCEFG"
          }
        },
        "376": {
          "row": [
            "plu",
            "CDO",
            "DFP",
            "CDF",
            "DOP",
            "CDP",
            "DFO"
          ],
          "witness": {
            "kind": "plu",
            "word": "DCFOP"
          }
        },
        "470": {
          "row": [
            "plu",
            "CFG",
            "DFP",
            "CDF",
            "FGP",
            "CFP",
            "DFG"
          ],
          "witness": {
            "kind": "plu",
            "word": "FCDGP"
          }
        },
        "482": {
          "row": [
            "plu",
            "CFO",
            "FGP",
            "CFG",
            "FOP",
            "CFP",
            "FGO"
          ],
          "witness": {
            "kind": "plu",
            "word": "FCGOP"
          }
        },
        "492": {
          "row": [
            "plu",
            "DFO",
            "FGP",
            "DFG",
            "FOP",
            "DFP",
            "FGO"
          ],
          "witness": {
            "kind": "plu",
            "word": "FDGOP"
          }
        },
        "501": {
          "row": [
            "plu",
            "ACG",
            "BFG",
            "ABG",
            "CFG",
            "AFG",
            "BCG"
          ],
          "witness": {
            "kind": "plu",
            "word": "GABCF"
          }
        },
        "551": {
          "row": [
            "plu",
            "BCG",
            "FGH",
            "BFG",
            "CGH",
            "BGH",
            "CFG"
          ],
          "witness": {
            "kind": "plu",
            "word": "GBCFH"
          }
        },
        "574": {
          "row": [
            "plu",
            "CGP",
            "DFG",
            "CDG",
            "FGP",
            "CFG",
            "DGP"
          ],
          "witness": {
            "kind": "plu",
            "word": "GCDFP"
          }
        },
        "705": {
          "row": [
            "plu",
            "CFO",
            "GOP",
            "CGO",
            "FOP",
            "COP",
            "FGO"
          ],
          "witness": {
            "kind": "plu",
            "word": "OCFGP"
          }
        },
        "710": {
          "row": [
            "plu",
            "DFO",
            "GOP",
            "DGO",
            "FOP",
            "DOP",
            "FGO"
          ],
          "witness": {
            "kind": "plu",
            "word": "ODFGP"
          }
        },
        "730": {
          "row": [
            "plu",
            "CGP",
            "DFP",
            "CDP",
            "FGP",
            "CFP",
            "DGP"
          ],
          "witness": {
            "kind": "plu",
            "word": "PCDFG"
          }
        },
        "737": {
          "row": [
            "plu",
            "CFP",
            "GOP",
            "CGP",
            "FOP",
            "COP",
            "FGP"
          ],
          "witness": {
            "kind": "plu",
            "word": "PCFGO"
          }
        },
        "741": {
          "row": [
            "plu",
            "DFP",
            "GOP",
            "DGP",
            "FOP",
            "DOP",
            "FGP"
          ],
          "witness": {
            "kind": "plu",
            "word": "PDFGO"
          }
        },
        "1129": {
          "row": [
            "support",
            "CFG",
            "BCF",
            "BFG",
            "1023/1000"
          ],
          "witness": {
            "kind": "five_support",
            "poly": "FGABC"
          }
        },
        "2349": {
          "row": [
            "balance",
            [
              [
                1,
                "CDF",
                "GOP"
              ],
              [
                1,
                "CDG",
                "FOP"
              ],
              [
                -1,
                "CFG",
                "DOP"
              ],
              [
                1,
                "COP",
                "DFG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CDF",
            "point": "G",
            "line": "OP"
          }
        },
        "2555": {
          "row": [
            "balance",
            [
              [
                1,
                "CDG",
                "FOP"
              ],
              [
                1,
                "CFO",
                "DGP"
              ],
              [
                -1,
                "CFP",
                "DGO"
              ],
              [
                1,
                "COP",
                "DFG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CFO",
            "point": "P",
            "line": "DG"
          }
        },
        "2684": {
          "row": [
            "balance",
            [
              [
                1,
                "CDO",
                "FGP"
              ],
              [
                1,
                "CFO",
                "DGP"
              ],
              [
                -1,
                "CGO",
                "DFP"
              ],
              [
                1,
                "COP",
                "DFG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "DFG",
            "point": "P",
            "line": "CO"
          }
        },
        "4349": {
          "row": [
            "linear",
            {
              "CDF": "-279/1000",
              "CFG": "374728869951/1000000000000",
              "CFP": "-746728869951/1000000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "DFG",
            "point": "P",
            "line": "CF",
            "side": "upper",
            "outer_upper": {
              "triangle": "DFG",
              "ref": "U_DFG",
              "value": "746728869951/1000000000000"
            },
            "fan_lower": [
              {
                "triangle": "FGP",
                "ref": "L_FGP",
                "value": "279/1000"
              },
              {
                "triangle": "DGP",
                "ref": "L_DGP",
                "value": "93/1000"
              },
              {
                "triangle": "DFP",
                "ref": "L_DFP",
                "value": "93/1000"
              }
            ],
            "residual": "281728869951/1000000000000"
          }
        },
        "4390": {
          "row": [
            "linear",
            {
              "DOP": "-279/1000",
              "FOP": "-93/1000",
              "GOP": "374728869951/1000000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "DFG",
            "point": "P",
            "line": "OP",
            "side": "lower",
            "outer_upper": {
              "triangle": "DFG",
              "ref": "U_DFG",
              "value": "746728869951/1000000000000"
            },
            "fan_lower": [
              {
                "triangle": "FGP",
                "ref": "L_FGP",
                "value": "279/1000"
              },
              {
                "triangle": "DGP",
                "ref": "L_DGP",
                "value": "93/1000"
              },
              {
                "triangle": "DFP",
                "ref": "L_DFP",
                "value": "93/1000"
              }
            ],
            "residual": "281728869951/1000000000000"
          }
        },
        "4546": {
          "row": [
            "linear",
            {
              "CFG": "-93/1000",
              "CFP": "-93/1000",
              "CFO": "497325318103/1000000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "FGP",
            "point": "O",
            "line": "CF",
            "side": "lower",
            "outer_upper": {
              "triangle": "FGP",
              "ref": "U_FGP",
              "value": "497325318103/1000000000000"
            },
            "fan_lower": [
              {
                "triangle": "GOP",
                "ref": "L_GOP",
                "value": "93/1000"
              },
              {
                "triangle": "FOP",
                "ref": "L_FOP",
                "value": "93/1000"
              },
              {
                "triangle": "FGO",
                "ref": "L_FGO",
                "value": "93/1000"
              }
            ],
            "residual": "218325318103/1000000000000"
          }
        },
        "4554": {
          "row": [
            "linear",
            {
              "CFP": "311325318103/1000000000000",
              "CGP": "-93/1000",
              "COP": "-497325318103/1000000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "FGP",
            "point": "O",
            "line": "CP",
            "side": "lower",
            "outer_upper": {
              "triangle": "FGP",
              "ref": "U_FGP",
              "value": "497325318103/1000000000000"
            },
            "fan_lower": [
              {
                "triangle": "GOP",
                "ref": "L_GOP",
                "value": "93/1000"
              },
              {
                "triangle": "FOP",
                "ref": "L_FOP",
                "value": "93/1000"
              },
              {
                "triangle": "FGO",
                "ref": "L_FGO",
                "value": "93/1000"
              }
            ],
            "residual": "218325318103/1000000000000"
          }
        },
        "4564": {
          "row": [
            "linear",
            {
              "DFP": "311325318103/1000000000000",
              "DGP": "-93/1000",
              "DOP": "-497325318103/1000000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "FGP",
            "point": "O",
            "line": "DP",
            "side": "lower",
            "outer_upper": {
              "triangle": "FGP",
              "ref": "U_FGP",
              "value": "497325318103/1000000000000"
            },
            "fan_lower": [
              {
                "triangle": "GOP",
                "ref": "L_GOP",
                "value": "93/1000"
              },
              {
                "triangle": "FOP",
                "ref": "L_FOP",
                "value": "93/1000"
              },
              {
                "triangle": "FGO",
                "ref": "L_FGO",
                "value": "93/1000"
              }
            ],
            "residual": "218325318103/1000000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0001",
          "relation": 0,
          "rule": "sub",
          "triangle": "ACG",
          "side": "hi",
          "value": "35827/62500",
          "sources": [
            "U_ACH",
            "L_CGH",
            "L_AGH"
          ]
        },
        {
          "id": "T0005",
          "relation": 15,
          "rule": "sub",
          "triangle": "CGO",
          "side": "hi",
          "value": "576839/1000000",
          "sources": [
            "U_CFG",
            "L_CFO",
            "L_FGO"
          ]
        },
        {
          "id": "T0011",
          "relation": 21,
          "rule": "sub",
          "triangle": "DGO",
          "side": "hi",
          "value": "560729/1000000",
          "sources": [
            "U_DFG",
            "L_DFO",
            "L_FGO"
          ]
        },
        {
          "id": "T0012",
          "relation": 22,
          "rule": "sub",
          "triangle": "DFP",
          "side": "hi",
          "value": "374729/1000000",
          "sources": [
            "U_DFG",
            "L_FGP",
            "L_DGP"
          ]
        },
        {
          "id": "T0024",
          "relation": 218,
          "rule": "sumlo",
          "triangle": "CDG",
          "side": "lo",
          "value": "94449/1000000",
          "sources": [
            "L_BCD",
            "L_CFG",
            "L_BCG",
            "L_CDF",
            "U_BCF"
          ]
        },
        {
          "id": "T0030",
          "relation": 280,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "126697/1000000",
          "sources": [
            "L_CFG",
            "L_COP",
            "L_CFO",
            "L_CGP",
            "T0005"
          ]
        },
        {
          "id": "T0035",
          "relation": 363,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "52811/500000",
          "sources": [
            "L_CDE",
            "L_DFG",
            "T0024",
            "L_DEF",
            "U_DEG"
          ]
        },
        {
          "id": "T0046",
          "relation": 470,
          "rule": "diffhi",
          "triangle": "CFP",
          "side": "hi",
          "value": "370051/1000000",
          "sources": [
            "U_CFG",
            "T0012",
            "T0035",
            "L_FGP",
            "L_DFG"
          ]
        },
        {
          "id": "T0048",
          "relation": 482,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "30651/200000",
          "sources": [
            "L_CFG",
            "L_FOP",
            "T0030",
            "L_FGO",
            "U_FGP"
          ]
        },
        {
          "id": "T0053",
          "relation": 501,
          "rule": "sumlo",
          "triangle": "BFG",
          "side": "lo",
          "value": "63747/500000",
          "sources": [
            "L_ABG",
            "L_CFG",
            "L_AFG",
            "L_BCG",
            "T0001"
          ]
        },
        {
          "id": "T0060",
          "relation": 551,
          "rule": "sumlo",
          "triangle": "BCG",
          "side": "lo",
          "value": "33829/250000",
          "sources": [
            "T0053",
            "L_CGH",
            "L_BGH",
            "L_CFG",
            "U_FGH"
          ]
        },
        {
          "id": "T0064",
          "relation": 574,
          "rule": "sumlo",
          "triangle": "CGP",
          "side": "lo",
          "value": "60789/500000",
          "sources": [
            "T0024",
            "L_FGP",
            "L_CFG",
            "L_DGP",
            "U_DFG"
          ]
        },
        {
          "id": "T0065",
          "relation": 737,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "100671/1000000",
          "sources": [
            "T0064",
            "L_FOP",
            "L_COP",
            "L_FGP",
            "T0046"
          ]
        },
        {
          "id": "T0079",
          "relation": 1129,
          "rule": "support_z",
          "triangle": "BFG",
          "side": "lo",
          "value": "168783/1000000",
          "sources": [
            "L_CFG",
            "U_BCF"
          ]
        },
        {
          "id": "T0090",
          "relation": 2349,
          "rule": "balance_lo",
          "triangle": "DOP",
          "side": "lo",
          "value": "687/6250",
          "sources": [
            "T0035",
            "T0065",
            "T0024",
            "L_FOP",
            "L_COP",
            "L_DFG",
            "U_CFG"
          ]
        },
        {
          "id": "T0094",
          "relation": 2555,
          "rule": "balance_lo",
          "triangle": "CFP",
          "side": "lo",
          "value": "38999/250000",
          "sources": [
            "T0024",
            "L_FOP",
            "T0048",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0011"
          ]
        },
        {
          "id": "T0120",
          "relation": 4349,
          "rule": "linear",
          "triangle": "CFP",
          "side": "hi",
          "value": "6867/20000",
          "sources": [
            "T0035",
            "U_CFG"
          ]
        },
        {
          "id": "T0126",
          "relation": 4390,
          "rule": "linear",
          "triangle": "GOP",
          "side": "lo",
          "value": "2623/25000",
          "sources": [
            "T0090",
            "L_FOP"
          ]
        },
        {
          "id": "T0127",
          "relation": 4546,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "79367/500000",
          "sources": [
            "L_CFG",
            "T0094"
          ]
        },
        {
          "id": "T0128",
          "relation": 4554,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "2311/12500",
          "sources": [
            "T0064",
            "L_COP"
          ]
        },
        {
          "id": "T0131",
          "relation": 4564,
          "rule": "linear",
          "triangle": "DFP",
          "side": "lo",
          "value": "50843/250000",
          "sources": [
            "L_DGP",
            "T0090"
          ]
        },
        {
          "id": "T0144",
          "relation": 15,
          "rule": "sub",
          "triangle": "CGO",
          "side": "hi",
          "value": "102221/200000",
          "sources": [
            "U_CFG",
            "T0127",
            "L_FGO"
          ]
        },
        {
          "id": "T0155",
          "relation": 22,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "450357/1000000",
          "sources": [
            "U_DFG",
            "T0131",
            "L_DGP"
          ]
        },
        {
          "id": "T0160",
          "relation": 25,
          "rule": "sum",
          "triangle": "FGP",
          "side": "lo",
          "value": "7273/25000",
          "sources": [
            "L_FGO",
            "T0126",
            "L_FOP"
          ]
        },
        {
          "id": "T0166",
          "relation": 218,
          "rule": "sumlo",
          "triangle": "CDG",
          "side": "lo",
          "value": "50871/500000",
          "sources": [
            "L_BCD",
            "L_CFG",
            "T0060",
            "T0035",
            "U_BCF"
          ]
        },
        {
          "id": "T0173",
          "relation": 363,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "106601/1000000",
          "sources": [
            "L_CDE",
            "L_DFG",
            "T0166",
            "L_DEF",
            "U_DEG"
          ]
        },
        {
          "id": "T0178",
          "relation": 470,
          "rule": "sumlo",
          "triangle": "DFP",
          "side": "lo",
          "value": "208571/1000000",
          "sources": [
            "T0173",
            "T0160",
            "T0128",
            "L_DFG",
            "U_CFG"
          ]
        },
        {
          "id": "T0181",
          "relation": 482,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "181253/1000000",
          "sources": [
            "L_CFG",
            "L_FOP",
            "T0128",
            "L_FGO",
            "T0155"
          ]
        },
        {
          "id": "T0183",
          "relation": 492,
          "rule": "sumlo",
          "triangle": "DFO",
          "side": "lo",
          "value": "37229/200000",
          "sources": [
            "L_DFG",
            "L_FOP",
            "T0178",
            "L_FGO",
            "T0155"
          ]
        },
        {
          "id": "T0185",
          "relation": 551,
          "rule": "sumlo",
          "triangle": "BCG",
          "side": "lo",
          "value": "71063/500000",
          "sources": [
            "T0079",
            "L_CGH",
            "L_BGH",
            "L_CFG",
            "U_FGH"
          ]
        },
        {
          "id": "T0187",
          "relation": 574,
          "rule": "sumlo",
          "triangle": "CGP",
          "side": "lo",
          "value": "125927/1000000",
          "sources": [
            "T0166",
            "T0160",
            "L_CFG",
            "L_DGP",
            "U_DFG"
          ]
        },
        {
          "id": "T0191",
          "relation": 737,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "112907/1000000",
          "sources": [
            "T0187",
            "L_FOP",
            "L_COP",
            "T0160",
            "T0120"
          ]
        },
        {
          "id": "T0209",
          "relation": 2349,
          "rule": "balance_lo",
          "triangle": "DOP",
          "side": "lo",
          "value": "112649/1000000",
          "sources": [
            "T0173",
            "T0191",
            "T0166",
            "L_FOP",
            "L_COP",
            "L_DFG",
            "U_CFG"
          ]
        },
        {
          "id": "T0218",
          "relation": 2684,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "105993/500000",
          "sources": [
            "L_CDO",
            "T0160",
            "T0181",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0144"
          ]
        },
        {
          "id": "T0228",
          "relation": 4554,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "186179/1000000",
          "sources": [
            "T0187",
            "L_COP"
          ]
        },
        {
          "id": "T0240",
          "relation": 15,
          "rule": "sub",
          "triangle": "CGO",
          "side": "hi",
          "value": "244293/500000",
          "sources": [
            "U_CFG",
            "T0181",
            "L_FGO"
          ]
        },
        {
          "id": "T0248",
          "relation": 21,
          "rule": "sub",
          "triangle": "DGO",
          "side": "hi",
          "value": "7306/15625",
          "sources": [
            "U_DFG",
            "T0183",
            "L_FGO"
          ]
        },
        {
          "id": "T0249",
          "relation": 22,
          "rule": "sub",
          "triangle": "DFP",
          "side": "hi",
          "value": "362809/1000000",
          "sources": [
            "U_DFG",
            "T0160",
            "L_DGP"
          ]
        },
        {
          "id": "T0250",
          "relation": 22,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "441743/1000000",
          "sources": [
            "U_DFG",
            "T0218",
            "L_DGP"
          ]
        },
        {
          "id": "T0254",
          "relation": 24,
          "rule": "sum",
          "triangle": "DGO",
          "side": "lo",
          "value": "79639/250000",
          "sources": [
            "L_DGP",
            "T0209",
            "T0191"
          ]
        },
        {
          "id": "T0257",
          "relation": 25,
          "rule": "sum",
          "triangle": "FGP",
          "side": "lo",
          "value": "298907/1000000",
          "sources": [
            "L_FGO",
            "T0191",
            "L_FOP"
          ]
        },
        {
          "id": "T0262",
          "relation": 218,
          "rule": "sumlo",
          "triangle": "CDG",
          "side": "lo",
          "value": "25713/250000",
          "sources": [
            "L_BCD",
            "L_CFG",
            "T0185",
            "T0173",
            "U_BCF"
          ]
        },
        {
          "id": "T0267",
          "relation": 363,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "106749/1000000",
          "sources": [
            "L_CDE",
            "L_DFG",
            "T0262",
            "L_DEF",
            "U_DEG"
          ]
        },
        {
          "id": "T0273",
          "relation": 482,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "185061/1000000",
          "sources": [
            "L_CFG",
            "L_FOP",
            "T0228",
            "L_FGO",
            "T0250"
          ]
        },
        {
          "id": "T0276",
          "relation": 492,
          "rule": "sumlo",
          "triangle": "DFO",
          "side": "lo",
          "value": "95247/500000",
          "sources": [
            "L_DFG",
            "L_FOP",
            "T0218",
            "L_FGO",
            "T0250"
          ]
        },
        {
          "id": "T0286",
          "relation": 741,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "58323/500000",
          "sources": [
            "L_DGP",
            "L_FOP",
            "T0209",
            "T0257",
            "T0249"
          ]
        },
        {
          "id": "T0298",
          "relation": 2349,
          "rule": "balance_lo",
          "triangle": "DOP",
          "side": "lo",
          "value": "113329/1000000",
          "sources": [
            "T0267",
            "T0286",
            "T0262",
            "L_FOP",
            "L_COP",
            "L_DFG",
            "U_CFG"
          ]
        },
        {
          "id": "T0302",
          "relation": 2555,
          "rule": "balance_lo",
          "triangle": "CFP",
          "side": "lo",
          "value": "48767/250000",
          "sources": [
            "T0262",
            "L_FOP",
            "T0273",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0248"
          ]
        },
        {
          "id": "T0308",
          "relation": 2684,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "224001/1000000",
          "sources": [
            "L_CDO",
            "T0257",
            "T0273",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0240"
          ]
        },
        {
          "id": "T0325",
          "relation": 15,
          "rule": "sub",
          "triangle": "CGO",
          "side": "hi",
          "value": "242389/500000",
          "sources": [
            "U_CFG",
            "T0273",
            "L_FGO"
          ]
        },
        {
          "id": "T0333",
          "relation": 21,
          "rule": "sub",
          "triangle": "DFO",
          "side": "hi",
          "value": "335173/1000000",
          "sources": [
            "U_DFG",
            "L_FGO",
            "T0254"
          ]
        },
        {
          "id": "T0334",
          "relation": 21,
          "rule": "sub",
          "triangle": "DGO",
          "side": "hi",
          "value": "92647/200000",
          "sources": [
            "U_DFG",
            "T0276",
            "L_FGO"
          ]
        },
        {
          "id": "T0335",
          "relation": 22,
          "rule": "sub",
          "triangle": "DFP",
          "side": "hi",
          "value": "177411/500000",
          "sources": [
            "U_DFG",
            "T0257",
            "L_DGP"
          ]
        },
        {
          "id": "T0336",
          "relation": 22,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "13429/31250",
          "sources": [
            "U_DFG",
            "T0308",
            "L_DGP"
          ]
        },
        {
          "id": "T0340",
          "relation": 24,
          "rule": "sum",
          "triangle": "DGO",
          "side": "lo",
          "value": "12919/40000",
          "sources": [
            "L_DGP",
            "T0298",
            "T0286"
          ]
        },
        {
          "id": "T0341",
          "relation": 25,
          "rule": "sum",
          "triangle": "FGP",
          "side": "lo",
          "value": "151323/500000",
          "sources": [
            "L_FGO",
            "T0286",
            "L_FOP"
          ]
        },
        {
          "id": "T0347",
          "relation": 218,
          "rule": "sumlo",
          "triangle": "CDG",
          "side": "lo",
          "value": "102879/1000000",
          "sources": [
            "L_BCD",
            "L_CFG",
            "T0185",
            "T0267",
            "U_BCF"
          ]
        },
        {
          "id": "T0354",
          "relation": 363,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "106753/1000000",
          "sources": [
            "L_CDE",
            "L_DFG",
            "T0347",
            "L_DEF",
            "U_DEG"
          ]
        },
        {
          "id": "T0359",
          "relation": 482,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "192159/1000000",
          "sources": [
            "L_CFG",
            "L_FOP",
            "T0302",
            "L_FGO",
            "T0336"
          ]
        },
        {
          "id": "T0362",
          "relation": 492,
          "rule": "sumlo",
          "triangle": "DFO",
          "side": "lo",
          "value": "198421/1000000",
          "sources": [
            "L_DFG",
            "L_FOP",
            "T0308",
            "L_FGO",
            "T0336"
          ]
        },
        {
          "id": "T0370",
          "relation": 710,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "6053/50000",
          "sources": [
            "T0340",
            "L_FOP",
            "T0298",
            "L_FGO",
            "T0333"
          ]
        },
        {
          "id": "T0371",
          "relation": 730,
          "rule": "sumlo",
          "triangle": "CGP",
          "side": "lo",
          "value": "32613/250000",
          "sources": [
            "L_CDP",
            "T0341",
            "T0302",
            "L_DGP",
            "T0335"
          ]
        },
        {
          "id": "T0387",
          "relation": 2555,
          "rule": "balance_lo",
          "triangle": "CFP",
          "side": "lo",
          "value": "19833/100000",
          "sources": [
            "T0347",
            "L_FOP",
            "T0359",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0334"
          ]
        },
        {
          "id": "T0394",
          "relation": 2684,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "712/3125",
          "sources": [
            "L_CDO",
            "T0341",
            "T0359",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0325"
          ]
        },
        {
          "id": "T0408",
          "relation": 15,
          "rule": "sub",
          "triangle": "CGO",
          "side": "hi",
          "value": "5971/12500",
          "sources": [
            "U_CFG",
            "T0359",
            "L_FGO"
          ]
        },
        {
          "id": "T0409",
          "relation": 16,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "329741/1000000",
          "sources": [
            "U_CFG",
            "T0341",
            "T0371"
          ]
        },
        {
          "id": "T0416",
          "relation": 21,
          "rule": "sub",
          "triangle": "DGO",
          "side": "hi",
          "value": "113827/250000",
          "sources": [
            "U_DFG",
            "T0362",
            "L_FGO"
          ]
        },
        {
          "id": "T0417",
          "relation": 22,
          "rule": "sub",
          "triangle": "DFP",
          "side": "hi",
          "value": "351083/1000000",
          "sources": [
            "U_DFG",
            "T0341",
            "L_DGP"
          ]
        },
        {
          "id": "T0418",
          "relation": 22,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "425889/1000000",
          "sources": [
            "U_DFG",
            "T0394",
            "L_DGP"
          ]
        },
        {
          "id": "T0423",
          "relation": 25,
          "rule": "sum",
          "triangle": "FGP",
          "side": "lo",
          "value": "15353/50000",
          "sources": [
            "L_FGO",
            "T0370",
            "L_FOP"
          ]
        },
        {
          "id": "T0431",
          "relation": 218,
          "rule": "sumlo",
          "triangle": "CDG",
          "side": "lo",
          "value": "643/6250",
          "sources": [
            "L_BCD",
            "L_CFG",
            "T0185",
            "T0354",
            "U_BCF"
          ]
        },
        {
          "id": "T0444",
          "relation": 482,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "48651/250000",
          "sources": [
            "L_CFG",
            "L_FOP",
            "T0387",
            "L_FGO",
            "T0418"
          ]
        },
        {
          "id": "T0446",
          "relation": 492,
          "rule": "sumlo",
          "triangle": "DFO",
          "side": "lo",
          "value": "25131/125000",
          "sources": [
            "L_DFG",
            "L_FOP",
            "T0394",
            "L_FGO",
            "T0418"
          ]
        },
        {
          "id": "T0454",
          "relation": 730,
          "rule": "sumlo",
          "triangle": "CGP",
          "side": "lo",
          "value": "1071/8000",
          "sources": [
            "L_CDP",
            "T0423",
            "T0387",
            "L_DGP",
            "T0417"
          ]
        },
        {
          "id": "T0456",
          "relation": 737,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "124361/1000000",
          "sources": [
            "T0454",
            "L_FOP",
            "L_COP",
            "T0423",
            "T0409"
          ]
        },
        {
          "id": "T0472",
          "relation": 2555,
          "rule": "balance_lo",
          "triangle": "CFP",
          "side": "lo",
          "value": "101141/500000",
          "sources": [
            "T0431",
            "L_FOP",
            "T0444",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0416"
          ]
        },
        {
          "id": "T0479",
          "relation": 2684,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "232561/1000000",
          "sources": [
            "L_CDO",
            "T0423",
            "T0444",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0408"
          ]
        },
        {
          "id": "T0493",
          "relation": 15,
          "rule": "sub",
          "triangle": "CGO",
          "side": "hi",
          "value": "95047/200000",
          "sources": [
            "U_CFG",
            "T0444",
            "L_FGO"
          ]
        },
        {
          "id": "T0494",
          "relation": 16,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "20119/62500",
          "sources": [
            "U_CFG",
            "T0423",
            "T0454"
          ]
        },
        {
          "id": "T0501",
          "relation": 21,
          "rule": "sub",
          "triangle": "DGO",
          "side": "hi",
          "value": "452681/1000000",
          "sources": [
            "U_DFG",
            "T0446",
            "L_FGO"
          ]
        },
        {
          "id": "T0502",
          "relation": 22,
          "rule": "sub",
          "triangle": "DFP",
          "side": "hi",
          "value": "346669/1000000",
          "sources": [
            "U_DFG",
            "T0423",
            "L_DGP"
          ]
        },
        {
          "id": "T0503",
          "relation": 22,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "26323/62500",
          "sources": [
            "U_DFG",
            "T0479",
            "L_DGP"
          ]
        },
        {
          "id": "T0508",
          "relation": 25,
          "rule": "sum",
          "triangle": "FGP",
          "side": "lo",
          "value": "310361/1000000",
          "sources": [
            "L_FGO",
            "T0456",
            "L_FOP"
          ]
        },
        {
          "id": "T0529",
          "relation": 482,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "98829/500000",
          "sources": [
            "L_CFG",
            "L_FOP",
            "T0472",
            "L_FGO",
            "T0503"
          ]
        },
        {
          "id": "T0532",
          "relation": 492,
          "rule": "sumlo",
          "triangle": "DFO",
          "side": "lo",
          "value": "25543/125000",
          "sources": [
            "L_DFG",
            "L_FOP",
            "T0479",
            "L_FGO",
            "T0503"
          ]
        },
        {
          "id": "T0538",
          "relation": 730,
          "rule": "sumlo",
          "triangle": "CGP",
          "side": "lo",
          "value": "5501/40000",
          "sources": [
            "L_CDP",
            "T0508",
            "T0472",
            "L_DGP",
            "T0502"
          ]
        },
        {
          "id": "T0540",
          "relation": 737,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "32349/250000",
          "sources": [
            "T0538",
            "L_FOP",
            "L_COP",
            "T0508",
            "T0494"
          ]
        },
        {
          "id": "T0556",
          "relation": 2555,
          "rule": "balance_lo",
          "triangle": "CFP",
          "side": "lo",
          "value": "51021/250000",
          "sources": [
            "T0431",
            "L_FOP",
            "T0529",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0501"
          ]
        },
        {
          "id": "T0563",
          "relation": 2684,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "235001/1000000",
          "sources": [
            "L_CDO",
            "T0508",
            "T0529",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0493"
          ]
        },
        {
          "id": "T0575",
          "relation": 15,
          "rule": "sub",
          "triangle": "CGO",
          "side": "hi",
          "value": "472181/1000000",
          "sources": [
            "U_CFG",
            "T0529",
            "L_FGO"
          ]
        },
        {
          "id": "T0576",
          "relation": 16,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "314953/1000000",
          "sources": [
            "U_CFG",
            "T0508",
            "T0538"
          ]
        },
        {
          "id": "T0583",
          "relation": 21,
          "rule": "sub",
          "triangle": "DGO",
          "side": "hi",
          "value": "89877/200000",
          "sources": [
            "U_DFG",
            "T0532",
            "L_FGO"
          ]
        },
        {
          "id": "T0584",
          "relation": 22,
          "rule": "sub",
          "triangle": "DFP",
          "side": "hi",
          "value": "42921/125000",
          "sources": [
            "U_DFG",
            "T0508",
            "L_DGP"
          ]
        },
        {
          "id": "T0585",
          "relation": 22,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "52341/125000",
          "sources": [
            "U_DFG",
            "T0563",
            "L_DGP"
          ]
        },
        {
          "id": "T0590",
          "relation": 25,
          "rule": "sum",
          "triangle": "FGP",
          "side": "lo",
          "value": "78849/250000",
          "sources": [
            "L_FGO",
            "T0540",
            "L_FOP"
          ]
        },
        {
          "id": "T0612",
          "relation": 482,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "19921/100000",
          "sources": [
            "L_CFG",
            "L_FOP",
            "T0556",
            "L_FGO",
            "T0585"
          ]
        },
        {
          "id": "T0615",
          "relation": 492,
          "rule": "sumlo",
          "triangle": "DFO",
          "side": "lo",
          "value": "51519/250000",
          "sources": [
            "L_DFG",
            "L_FOP",
            "T0563",
            "L_FGO",
            "T0585"
          ]
        },
        {
          "id": "T0620",
          "relation": 730,
          "rule": "sumlo",
          "triangle": "CGP",
          "side": "lo",
          "value": "140699/1000000",
          "sources": [
            "L_CDP",
            "T0590",
            "T0556",
            "L_DGP",
            "T0584"
          ]
        },
        {
          "id": "T0622",
          "relation": 737,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "33669/250000",
          "sources": [
            "T0620",
            "L_FOP",
            "L_COP",
            "T0590",
            "T0576"
          ]
        },
        {
          "id": "T0631",
          "relation": 2349,
          "rule": "balance_lo",
          "triangle": "DOP",
          "side": "lo",
          "value": "7241/62500",
          "sources": [
            "T0354",
            "T0622",
            "T0431",
            "L_FOP",
            "L_COP",
            "L_DFG",
            "U_CFG"
          ]
        },
        {
          "id": "T0637",
          "relation": 2555,
          "rule": "balance_lo",
          "triangle": "CFP",
          "side": "lo",
          "value": "102951/500000",
          "sources": [
            "T0431",
            "L_FOP",
            "T0612",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0583"
          ]
        },
        {
          "id": "T0643",
          "relation": 2684,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "118909/500000",
          "sources": [
            "L_CDO",
            "T0590",
            "T0612",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0575"
          ]
        },
        {
          "id": "T0654",
          "relation": 15,
          "rule": "sub",
          "triangle": "CGO",
          "side": "hi",
          "value": "470629/1000000",
          "sources": [
            "U_CFG",
            "T0612",
            "L_FGO"
          ]
        },
        {
          "id": "T0655",
          "relation": 16,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "38343/125000",
          "sources": [
            "U_CFG",
            "T0590",
            "T0620"
          ]
        },
        {
          "id": "T0663",
          "relation": 21,
          "rule": "sub",
          "triangle": "DGO",
          "side": "hi",
          "value": "447653/1000000",
          "sources": [
            "U_DFG",
            "T0615",
            "L_FGO"
          ]
        },
        {
          "id": "T0664",
          "relation": 22,
          "rule": "sub",
          "triangle": "DFP",
          "side": "hi",
          "value": "338333/1000000",
          "sources": [
            "U_DFG",
            "T0590",
            "L_DGP"
          ]
        },
        {
          "id": "T0665",
          "relation": 22,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "415911/1000000",
          "sources": [
            "U_DFG",
            "T0643",
            "L_DGP"
          ]
        },
        {
          "id": "T0670",
          "relation": 25,
          "rule": "sum",
          "triangle": "FGP",
          "side": "lo",
          "value": "80169/250000",
          "sources": [
            "L_FGO",
            "T0622",
            "L_FOP"
          ]
        },
        {
          "id": "T0690",
          "relation": 376,
          "rule": "sumlo",
          "triangle": "CDO",
          "side": "lo",
          "value": "93201/1000000",
          "sources": [
            "T0354",
            "T0631",
            "L_CDP",
            "T0615",
            "T0664"
          ]
        },
        {
          "id": "T0697",
          "relation": 482,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "40193/200000",
          "sources": [
            "L_CFG",
            "L_FOP",
            "T0637",
            "L_FGO",
            "T0665"
          ]
        },
        {
          "id": "T0700",
          "relation": 492,
          "rule": "sumlo",
          "triangle": "DFO",
          "side": "lo",
          "value": "104051/500000",
          "sources": [
            "L_DFG",
            "L_FOP",
            "T0643",
            "L_FGO",
            "T0665"
          ]
        },
        {
          "id": "T0705",
          "relation": 730,
          "rule": "sumlo",
          "triangle": "CGP",
          "side": "lo",
          "value": "18093/125000",
          "sources": [
            "L_CDP",
            "T0670",
            "T0637",
            "L_DGP",
            "T0664"
          ]
        },
        {
          "id": "T0707",
          "relation": 737,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "35277/250000",
          "sources": [
            "T0705",
            "L_FOP",
            "L_COP",
            "T0670",
            "T0655"
          ]
        },
        {
          "id": "T0725",
          "relation": 2555,
          "rule": "balance_lo",
          "triangle": "CFP",
          "side": "lo",
          "value": "207063/1000000",
          "sources": [
            "T0431",
            "L_FOP",
            "T0697",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0663"
          ]
        },
        {
          "id": "T0731",
          "relation": 2684,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "240129/1000000",
          "sources": [
            "T0690",
            "T0670",
            "T0697",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0654"
          ]
        },
        {
          "id": "T0744",
          "relation": 16,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "297419/1000000",
          "sources": [
            "U_CFG",
            "T0670",
            "T0705"
          ]
        },
        {
          "id": "T0745",
          "relation": 16,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "51379/125000",
          "sources": [
            "U_CFG",
            "T0725",
            "T0705"
          ]
        },
        {
          "id": "T0753",
          "relation": 21,
          "rule": "sub",
          "triangle": "DGO",
          "side": "hi",
          "value": "445627/1000000",
          "sources": [
            "U_DFG",
            "T0700",
            "L_FGO"
          ]
        },
        {
          "id": "T0754",
          "relation": 22,
          "rule": "sub",
          "triangle": "DFP",
          "side": "hi",
          "value": "333053/1000000",
          "sources": [
            "U_DFG",
            "T0670",
            "L_DGP"
          ]
        },
        {
          "id": "T0759",
          "relation": 25,
          "rule": "sum",
          "triangle": "FGP",
          "side": "lo",
          "value": "81777/250000",
          "sources": [
            "L_FGO",
            "T0707",
            "L_FOP"
          ]
        },
        {
          "id": "T0787",
          "relation": 482,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "101807/500000",
          "sources": [
            "L_CFG",
            "L_FOP",
            "T0725",
            "L_FGO",
            "T0745"
          ]
        },
        {
          "id": "T0790",
          "relation": 492,
          "rule": "sumlo",
          "triangle": "DFO",
          "side": "lo",
          "value": "42219/200000",
          "sources": [
            "L_DFG",
            "L_FOP",
            "T0731",
            "L_FGO",
            "T0745"
          ]
        },
        {
          "id": "T0794",
          "relation": 730,
          "rule": "sumlo",
          "triangle": "CGP",
          "side": "lo",
          "value": "149159/1000000",
          "sources": [
            "L_CDP",
            "T0759",
            "T0725",
            "L_DGP",
            "T0754"
          ]
        },
        {
          "id": "T0796",
          "relation": 737,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "37231/250000",
          "sources": [
            "T0794",
            "L_FOP",
            "L_COP",
            "T0759",
            "T0744"
          ]
        },
        {
          "id": "T0813",
          "relation": 2555,
          "rule": "balance_lo",
          "triangle": "CFP",
          "side": "lo",
          "value": "208557/1000000",
          "sources": [
            "T0431",
            "L_FOP",
            "T0787",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0753"
          ]
        },
        {
          "id": "T0833",
          "relation": 16,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "71643/250000",
          "sources": [
            "U_CFG",
            "T0759",
            "T0794"
          ]
        },
        {
          "id": "T0834",
          "relation": 16,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "405123/1000000",
          "sources": [
            "U_CFG",
            "T0813",
            "T0794"
          ]
        },
        {
          "id": "T0843",
          "relation": 21,
          "rule": "sub",
          "triangle": "DGO",
          "side": "hi",
          "value": "221317/500000",
          "sources": [
            "U_DFG",
            "T0790",
            "L_FGO"
          ]
        },
        {
          "id": "T0844",
          "relation": 22,
          "rule": "sub",
          "triangle": "DFP",
          "side": "hi",
          "value": "326621/1000000",
          "sources": [
            "U_DFG",
            "T0759",
            "L_DGP"
          ]
        },
        {
          "id": "T0849",
          "relation": 25,
          "rule": "sum",
          "triangle": "FGP",
          "side": "lo",
          "value": "83731/250000",
          "sources": [
            "L_FGO",
            "T0796",
            "L_FOP"
          ]
        },
        {
          "id": "T0883",
          "relation": 482,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "103463/500000",
          "sources": [
            "L_CFG",
            "L_FOP",
            "T0813",
            "L_FGO",
            "T0834"
          ]
        },
        {
          "id": "T0892",
          "relation": 730,
          "rule": "sumlo",
          "triangle": "CGP",
          "side": "lo",
          "value": "154747/1000000",
          "sources": [
            "L_CDP",
            "T0849",
            "T0813",
            "L_DGP",
            "T0844"
          ]
        },
        {
          "id": "T0894",
          "relation": 737,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "15891/100000",
          "sources": [
            "T0892",
            "L_FOP",
            "L_COP",
            "T0849",
            "T0833"
          ]
        },
        {
          "id": "T0914",
          "relation": 2555,
          "rule": "balance_lo",
          "triangle": "CFP",
          "side": "lo",
          "value": "210663/1000000",
          "sources": [
            "T0431",
            "L_FOP",
            "T0883",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0843"
          ]
        },
        {
          "id": "T0938",
          "relation": 16,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "17073/62500",
          "sources": [
            "U_CFG",
            "T0849",
            "T0892"
          ]
        },
        {
          "id": "T0939",
          "relation": 16,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "397429/1000000",
          "sources": [
            "U_CFG",
            "T0914",
            "T0892"
          ]
        },
        {
          "id": "T0943",
          "relation": 19,
          "rule": "sum",
          "triangle": "CGO",
          "side": "lo",
          "value": "406657/1000000",
          "sources": [
            "T0892",
            "L_COP",
            "T0894"
          ]
        },
        {
          "id": "T0949",
          "relation": 22,
          "rule": "sub",
          "triangle": "DFP",
          "side": "hi",
          "value": "63761/200000",
          "sources": [
            "U_DFG",
            "T0849",
            "L_DGP"
          ]
        },
        {
          "id": "T0954",
          "relation": 25,
          "rule": "sum",
          "triangle": "FGP",
          "side": "lo",
          "value": "34491/100000",
          "sources": [
            "L_FGO",
            "T0894",
            "L_FOP"
          ]
        },
        {
          "id": "T0956",
          "relation": 25,
          "rule": "sub",
          "triangle": "GOP",
          "side": "hi",
          "value": "211429/1000000",
          "sources": [
            "T0939",
            "L_FGO",
            "L_FOP"
          ]
        },
        {
          "id": "T1002",
          "relation": 705,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "219781/1000000",
          "sources": [
            "T0943",
            "L_FOP",
            "L_COP",
            "L_FGO",
            "T0956"
          ]
        },
        {
          "id": "T1007",
          "relation": 730,
          "rule": "sumlo",
          "triangle": "CGP",
          "side": "lo",
          "value": "40517/250000",
          "sources": [
            "L_CDP",
            "T0954",
            "T0914",
            "L_DGP",
            "T0949"
          ]
        },
        {
          "id": "T1009",
          "relation": 737,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "223001/1000000",
          "sources": [
            "T1007",
            "L_FOP",
            "L_COP",
            "T0954",
            "T0956"
          ]
        },
        {
          "id": "T1010",
          "relation": 737,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "863/5000",
          "sources": [
            "T1007",
            "L_FOP",
            "L_COP",
            "T0954",
            "T0938"
          ]
        },
        {
          "id": "T1069",
          "relation": 15,
          "rule": "sub",
          "triangle": "CGO",
          "side": "hi",
          "value": "225029/500000",
          "sources": [
            "U_CFG",
            "T1002",
            "L_FGO"
          ]
        },
        {
          "id": "T1070",
          "relation": 16,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "729979/1000000",
          "sources": [
            "T1009",
            "T0954",
            "T1007"
          ]
        },
        {
          "id": "T1072",
          "relation": 16,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "37777/100000",
          "sources": [
            "U_CFG",
            "T1009",
            "T1007"
          ]
        },
        {
          "id": "T1078",
          "relation": 19,
          "rule": "sub",
          "triangle": "CGP",
          "side": "hi",
          "value": "92229/500000",
          "sources": [
            "T1069",
            "L_COP",
            "T1010"
          ]
        },
        {
          "id": "T1085",
          "relation": 22,
          "rule": "sub",
          "triangle": "DFP",
          "side": "hi",
          "value": "308819/1000000",
          "sources": [
            "U_DFG",
            "T0954",
            "L_DGP"
          ]
        },
        {
          "id": "T1092",
          "relation": 25,
          "rule": "sum",
          "triangle": "FGP",
          "side": "lo",
          "value": "1793/5000",
          "sources": [
            "L_FGO",
            "T1010",
            "L_FOP"
          ]
        },
        {
          "id": "T1094",
          "relation": 25,
          "rule": "sub",
          "triangle": "GOP",
          "side": "hi",
          "value": "19177/100000",
          "sources": [
            "T1072",
            "L_FGO",
            "L_FOP"
          ]
        },
        {
          "id": "T1122",
          "relation": 280,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "229987/1000000",
          "sources": [
            "T1070",
            "L_COP",
            "T1002",
            "T1007",
            "T1069"
          ]
        },
        {
          "id": "T1180",
          "relation": 730,
          "rule": "sumlo",
          "triangle": "CGP",
          "side": "lo",
          "value": "177251/1000000",
          "sources": [
            "L_CDP",
            "T1092",
            "T1122",
            "L_DGP",
            "T1085"
          ]
        },
        {
          "id": "T1183",
          "relation": 730,
          "rule": "diffhi",
          "triangle": "CFP",
          "side": "hi",
          "value": "126959/500000",
          "sources": [
            "T1078",
            "T1085",
            "L_CDP",
            "T1092",
            "L_DGP"
          ]
        },
        {
          "id": "T1190",
          "relation": 737,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "32483/125000",
          "sources": [
            "T1180",
            "L_FOP",
            "L_COP",
            "T1092",
            "T1094"
          ]
        }
      ],
      "physical": {}
    }
  ],
  "terminal": {
    "kind": "scalar",
    "stage": 10,
    "contradiction": {
      "triangle": "CFP",
      "lower": "T1190",
      "upper": "T1183"
    }
  },
  "word": "CEF"
}
```
