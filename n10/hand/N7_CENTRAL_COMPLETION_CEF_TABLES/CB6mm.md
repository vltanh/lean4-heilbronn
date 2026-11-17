# CB6mm

```n7-central-cef-packet
{
  "id": "CB6mm",
  "cell": "CB",
  "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "AFG-",
    "BGO-",
    "GOP-"
  ],
  "stages": [
    {
      "id": 0,
      "assumptions": [
        "AGO+",
        "AGP+",
        "DGP-",
        "AFG-"
      ],
      "initial_box": {
        "low": [
          "61/500",
          "123/1000",
          "13857/20000",
          "61/500",
          "129642/311765",
          "617/1000",
          "123/1000",
          "613/1000",
          "67/500",
          "7347/69700",
          "61/500",
          "7347/69700",
          "61/500"
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
          "31/40",
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
        "AFG": -1,
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
            "FACDG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "ACF",
            "ADF",
            "CFG",
            "AFG",
            "CDF"
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
              "6835963/10000000",
              "70079/100000",
              "7160483/10000000",
              "3292411/4000000",
              "212637/250000",
              "883/1000"
            ],
            "cell": "CB"
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
            "cell": "CB"
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
              "-233447989/348500000",
              "-3505306431/6970000000",
              "-257149331/697000000",
              "-3841497339/13940000000",
              "16233057/697000000",
              "571175403/13940000000",
              "53863/500000",
              "4021793/20000000",
              "1870145463/6970000000",
              "2746777/10000000",
              "28247463/87125000",
              "7449769/10000000",
              "800881/1000000",
              "16371299/20000000"
            ],
            "cell": "CB"
          }
        },
        "U_DEG": {
          "triangle": "DEG",
          "side": "hi",
          "value": "137689/200000",
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
              "-3162543561/12470600000",
              "-227183859/2494120000",
              "6363/100000",
              "577122021/6235300000",
              "88577/500000",
              "9891/40000",
              "8033904959/31176500000",
              "137689/200000"
            ],
            "cell": "CB"
          }
        },
        "U_FHP": {
          "triangle": "FHP",
          "side": "hi",
          "value": "387637/500000",
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
              "-19063713/87125000",
              "-24500379/174250000",
              "57381/1000000",
              "82119/1000000",
              "160323/1000000",
              "239586949/697000000",
              "330619331/697000000",
              "270863/500000",
              "161167/250000",
              "387637/500000"
            ],
            "cell": "CB"
          }
        }
      },
      "relations": {
        "6": {
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
        "7": {
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
        "500": {
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
        "1755": {
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
        "1763": {
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
        "1774": {
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
        "1816": {
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
        "1828": {
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
        "1906": {
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
        "1947": {
          "row": [
            "linear",
            {
              "CFP": "294637/500000",
              "CHP": "-93/1000",
              "COP": "-387637/500000"
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
              "value": "387637/500000"
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
            "residual": "248137/500000"
          }
        }
      },
      "updates": [
        {
          "id": "T0016",
          "relation": 6,
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
          "id": "T0019",
          "relation": 7,
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
          "id": "T0041",
          "relation": 500,
          "rule": "quad",
          "triangle": "AFH",
          "side": "lo",
          "value": "69489/500000",
          "sources": [
            "U_ACF"
          ]
        },
        {
          "id": "T0070",
          "relation": 1816,
          "rule": "linear",
          "triangle": "AHP",
          "side": "lo",
          "value": "12849/125000",
          "sources": [
            "L_ACH",
            "T0041"
          ]
        },
        {
          "id": "T0079",
          "relation": 1906,
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
          "id": "T0081",
          "relation": 1947,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "17129/125000",
          "sources": [
            "L_CHP",
            "L_COP"
          ]
        }
      ],
      "physical": {
        "0": {
          "name": "AREA_LO_ABC",
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
                0,
                2
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
            "triangle": "ABC",
            "side": "lo",
            "reference": "L_ABC",
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
            "reference": "T0070",
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
        "146": {
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
        "148": {
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
        "174": {
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
            "reference": "T0079",
            "value": "67009/500000"
          }
        },
        "175": {
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
            "reference": "T0016",
            "value": "511/1000"
          }
        },
        "178": {
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
              "-17129/125000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "lo",
            "reference": "T0081",
            "value": "17129/125000"
          }
        },
        "179": {
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
            "reference": "T0019",
            "value": "511/1000"
          }
        },
        "202": {
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
        "207": {
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
        "208": {
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
        "1240": {
          "name": "LINEAR_1755",
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
            "index": 1755
          }
        },
        "1248": {
          "name": "LINEAR_1763",
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
            "index": 1763
          }
        },
        "1259": {
          "name": "LINEAR_1774",
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
            "index": 1774
          }
        },
        "1313": {
          "name": "LINEAR_1828",
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
            "index": 1828
          }
        }
      },
      "coordinate": {
        "low": [
          "6131/50000",
          "123/1000",
          "13857/20000",
          "6131/50000",
          "425403/1000000",
          "617/1000",
          "30791/250000",
          "614277/1000000",
          "135001/1000000",
          "225501/1000000",
          "76133/200000",
          "246713/1000000",
          "339149/1000000"
        ],
        "high": [
          "42717/62500",
          "535/907",
          "220359/250000",
          "604217/1000000",
          "907/1000",
          "220359/250000",
          "334721/500000",
          "1/1",
          "18869/25000",
          "359087/500000",
          "907/1000",
          "718833/1000000",
          "42717/62500"
        ],
        "steps": [
          {
            "factor": 0,
            "target": "a",
            "old": [
              "61/500",
              "137/200"
            ],
            "lines": [
              [
                "11397/20000",
                "-93/1000"
              ],
              [
                "1868299/18140000",
                "-93/1000"
              ],
              [
                "19/25",
                "-93/1000"
              ],
              [
                "265881/907000",
                "-93/1000"
              ]
            ],
            "raw": [
              "93/760",
              "137/200"
            ],
            "new": [
              "1912/15625",
              "137/200"
            ]
          },
          {
            "factor": 16,
            "target": "a",
            "old": [
              "1912/15625",
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
              "1912/15625",
              "604/883"
            ],
            "new": [
              "1912/15625",
              "10688/15625"
            ]
          },
          {
            "factor": 30,
            "target": "d",
            "old": [
              "61/500",
              "141/200"
            ],
            "lines": [
              [
                "11397/20000",
                "-93/1000"
              ],
              [
                "1868299/18140000",
                "-93/1000"
              ],
              [
                "19/25",
                "-93/1000"
              ],
              [
                "265881/907000",
                "-93/1000"
              ]
            ],
            "raw": [
              "93/760",
              "141/200"
            ],
            "new": [
              "1912/15625",
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
                "-285912314/974265625",
                "1562444887/7794125000"
              ],
              [
                "3606093/12470600",
                "-11914647/31176500"
              ],
              [
                "-98079/125000",
                "43227/62500"
              ],
              [
                "-101/500",
                "109/1000"
              ]
            ],
            "raw": [
              "13857/20000",
              "28818/32693"
            ],
            "new": [
              "13857/20000",
              "440737/500000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "1912/15625",
              "141/200"
            ],
            "lines": [
              [
                "-6143/20000",
                "108253953/3117650000"
              ],
              [
                "-59263/500000",
                "-3407049327/77941250000"
              ],
              [
                "-6143/20000",
                "3711701/20000000"
              ],
              [
                "-59263/500000",
                "7251541/500000000"
              ]
            ],
            "raw": [
              "1912/15625",
              "3711701/6143000"
            ],
            "new": [
              "1912/15625",
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
                "-10201979/78125000"
              ],
              [
                "59263/500000",
                "-209968339/1953125000"
              ],
              [
                "6143/20000",
                "-5571705031/20000000000"
              ],
              [
                "59263/500000",
                "-82307712071/500000000000"
              ]
            ],
            "raw": [
              "40807916/95984375",
              "907/1000"
            ],
            "new": [
              "425151/1000000",
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
                "89533/500000",
                "-136033/500000"
              ],
              [
                "-98079/125000",
                "43227/62500"
              ]
            ],
            "raw": [
              "617/1000",
              "28818/32693"
            ],
            "new": [
              "617/1000",
              "440737/500000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "123/1000",
              "137/200"
            ],
            "lines": [
              [
                "-613/1000",
                "4777503/20000000"
              ],
              [
                "-613/1000",
                "164613023/500000000"
              ],
              [
                "-1/1",
                "5070081/10000000"
              ],
              [
                "-1/1",
                "167589121/250000000"
              ],
              [
                "-613/1000",
                "-2052417/10000000"
              ],
              [
                "-613/1000",
                "-58949697/250000000"
              ],
              [
                "-1/1",
                "50313/800000"
              ],
              [
                "-1/1",
                "2106633/20000000"
              ]
            ],
            "raw": [
              "123/1000",
              "167589121/250000000"
            ],
            "new": [
              "123/1000",
              "670357/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "67/500",
              "31/40"
            ],
            "lines": [
              [
                "-13857/20000",
                "5126361/20000000"
              ],
              [
                "-440737/500000",
                "185972281/500000000"
              ],
              [
                "-13857/20000",
                "-79211791/1000000000"
              ],
              [
                "-440737/500000",
                "36414721/1000000000"
              ],
              [
                "-13857/20000",
                "9537/20000"
              ],
              [
                "-440737/500000",
                "332737/500000"
              ],
              [
                "-13857/20000",
                "-70507/1000000"
              ],
              [
                "-440737/500000",
                "118117/1000000"
              ]
            ],
            "raw": [
              "67/500",
              "332737/440737"
            ],
            "new": [
              "67/500",
              "188739/250000"
            ]
          },
          {
            "factor": 88,
            "target": "y",
            "old": [
              "61/500",
              "907/1000"
            ],
            "lines": [
              [
                "11397/20000",
                "-93/1000"
              ],
              [
                "1868299/18140000",
                "-93/1000"
              ],
              [
                "379237/500000",
                "-93/1000"
              ],
              [
                "132248459/453500000",
                "-93/1000"
              ]
            ],
            "raw": [
              "46500/379237",
              "907/1000"
            ],
            "new": [
              "61307/500000",
              "907/1000"
            ]
          },
          {
            "factor": 92,
            "target": "x",
            "old": [
              "7347/69700",
              "883/1000"
            ],
            "lines": [
              [
                "-302783/1000000",
                "209783/1000000"
              ],
              [
                "89533/500000",
                "-136033/500000"
              ],
              [
                "-98079/125000",
                "43227/62500"
              ]
            ],
            "raw": [
              "7347/69700",
              "28818/32693"
            ],
            "new": [
              "7347/69700",
              "440737/500000"
            ]
          },
          {
            "factor": 98,
            "target": "x",
            "old": [
              "7347/69700",
              "440737/500000"
            ],
            "lines": [
              [
                "61329/125000",
                "-93/1000"
              ],
              [
                "-8879/125000",
                "-93/1000"
              ],
              [
                "13713/15625",
                "-93/1000"
              ],
              [
                "4937/15625",
                "-93/1000"
              ]
            ],
            "raw": [
              "3875/36568",
              "440737/500000"
            ],
            "new": [
              "52983/500000",
              "440737/500000"
            ]
          },
          {
            "factor": 100,
            "target": "y",
            "old": [
              "61307/500000",
              "907/1000"
            ],
            "lines": [
              [
                "13857/20000",
                "-159689973/250000000"
              ],
              [
                "440737/500000",
                "-188596601/250000000"
              ],
              [
                "13857/20000",
                "-216471/250000"
              ],
              [
                "440737/500000",
                "-263627/250000"
              ],
              [
                "13857/20000",
                "-10210843/62500000"
              ],
              [
                "440737/500000",
                "-279/1000"
              ],
              [
                "13857/20000",
                "-11297/125000"
              ]
            ],
            "raw": [
              "45188/346425",
              "907/1000"
            ],
            "new": [
              "3261/25000",
              "907/1000"
            ]
          },
          {
            "factor": 106,
            "target": "v",
            "old": [
              "61/500",
              "907/1000"
            ],
            "lines": [
              [
                "11397/20000",
                "-93/1000"
              ],
              [
                "1868299/18140000",
                "-93/1000"
              ],
              [
                "379237/500000",
                "-93/1000"
              ],
              [
                "132248459/453500000",
                "-93/1000"
              ]
            ],
            "raw": [
              "46500/379237",
              "907/1000"
            ],
            "new": [
              "61307/500000",
              "907/1000"
            ]
          },
          {
            "factor": 110,
            "target": "u",
            "old": [
              "7347/69700",
              "883/1000"
            ],
            "lines": [
              [
                "-302783/1000000",
                "209783/1000000"
              ],
              [
                "89533/500000",
                "-136033/500000"
              ],
              [
                "-98079/125000",
                "43227/62500"
              ]
            ],
            "raw": [
              "7347/69700",
              "28818/32693"
            ],
            "new": [
              "7347/69700",
              "440737/500000"
            ]
          },
          {
            "factor": 114,
            "target": "v",
            "old": [
              "61307/500000",
              "907/1000"
            ],
            "lines": [
              [
                "-617/1000",
                "97589927/697000000"
              ],
              [
                "-440737/500000",
                "105294676357/348500000000"
              ],
              [
                "-617/1000",
                "169/500"
              ],
              [
                "-440737/500000",
                "301237/500000"
              ],
              [
                "-617/1000",
                "220175719/500000000"
              ]
            ],
            "raw": [
              "61307/500000",
              "220175719/308500000"
            ],
            "new": [
              "61307/500000",
              "356849/500000"
            ]
          },
          {
            "factor": 116,
            "target": "u",
            "old": [
              "7347/69700",
              "440737/500000"
            ],
            "lines": [
              [
                "61329/125000",
                "-12849/125000"
              ],
              [
                "-8879/125000",
                "-12849/125000"
              ],
              [
                "13713/15625",
                "-12849/125000"
              ],
              [
                "4937/15625",
                "-12849/125000"
              ]
            ],
            "raw": [
              "4283/36568",
              "440737/500000"
            ],
            "new": [
              "29281/250000",
              "440737/500000"
            ]
          },
          {
            "factor": 126,
            "target": "z",
            "old": [
              "67/500",
              "188739/250000"
            ],
            "lines": [
              [
                "13857/20000",
                "-12713391/78125000"
              ],
              [
                "13857/20000",
                "-37718409/78125000"
              ],
              [
                "440737/500000",
                "-362915911/1953125000"
              ],
              [
                "440737/500000",
                "-1194961889/1953125000"
              ],
              [
                "13857/20000",
                "-46754113/488281250"
              ],
              [
                "13857/20000",
                "-211691273/1953125000"
              ],
              [
                "440737/500000",
                "-58024397/488281250"
              ],
              [
                "440737/500000",
                "-463692937/1953125000"
              ]
            ],
            "raw": [
              "928390352/6886515625",
              "188739/250000"
            ],
            "new": [
              "33703/250000",
              "188739/250000"
            ]
          },
          {
            "factor": 146,
            "target": "y",
            "old": [
              "3261/25000",
              "907/1000"
            ],
            "lines": [
              [
                "13857/20000",
                "-685187151/1953125000"
              ],
              [
                "13857/20000",
                "-1328998899/1953125000"
              ],
              [
                "440737/500000",
                "-730268287/1953125000"
              ],
              [
                "440737/500000",
                "-1581000563/1953125000"
              ],
              [
                "13857/20000",
                "-499840739/1953125000"
              ],
              [
                "13857/20000",
                "-292920211/1953125000"
              ],
              [
                "440737/500000",
                "-279/1000"
              ]
            ],
            "raw": [
              "1171680844/5412890625",
              "907/1000"
            ],
            "new": [
              "216461/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 148,
            "target": "v",
            "old": [
              "61307/500000",
              "356849/500000"
            ],
            "lines": [
              [
                "13857/20000",
                "-682520389/1953125000"
              ],
              [
                "13857/20000",
                "-1314091811/1953125000"
              ],
              [
                "440737/500000",
                "-29104061/78125000"
              ],
              [
                "440737/500000",
                "-62643739/78125000"
              ],
              [
                "13857/20000",
                "-499840739/1953125000"
              ],
              [
                "13857/20000",
                "-292920211/1953125000"
              ],
              [
                "440737/500000",
                "-279/1000"
              ]
            ],
            "raw": [
              "1171680844/5412890625",
              "356849/500000"
            ],
            "new": [
              "216461/1000000",
              "356849/500000"
            ]
          },
          {
            "factor": 174,
            "target": "x",
            "old": [
              "52983/500000",
              "440737/500000"
            ],
            "lines": [
              [
                "-1/1",
                "10848268663/20000000000"
              ],
              [
                "-1/1",
                "345103846743/500000000000"
              ],
              [
                "-1/1",
                "37478858729/62500000000"
              ],
              [
                "-1/1",
                "11679/15625"
              ],
              [
                "-1/1",
                "9800721/20000000"
              ],
              [
                "-1/1",
                "253789041/500000000"
              ],
              [
                "-1/1",
                "45619623/62500000"
              ]
            ],
            "raw": [
              "52983/500000",
              "11679/15625"
            ],
            "new": [
              "52983/500000",
              "11679/15625"
            ]
          },
          {
            "factor": 175,
            "target": "x",
            "old": [
              "52983/500000",
              "11679/15625"
            ],
            "lines": [
              [
                "1/1",
                "-3308628663/20000000000"
              ],
              [
                "1/1",
                "-156612846743/500000000000"
              ],
              [
                "1/1",
                "-13917483729/62500000000"
              ],
              [
                "1/1",
                "-185237/500000"
              ],
              [
                "1/1",
                "-2261081/20000000"
              ],
              [
                "1/1",
                "-65298041/500000000"
              ],
              [
                "1/1",
                "-2757281/7812500"
              ]
            ],
            "raw": [
              "2261081/20000000",
              "11679/15625"
            ],
            "new": [
              "56527/500000",
              "11679/15625"
            ]
          },
          {
            "factor": 178,
            "target": "u",
            "old": [
              "29281/250000",
              "440737/500000"
            ],
            "lines": [
              [
                "-1/1",
                "10787988663/20000000000"
              ],
              [
                "-1/1",
                "343596846743/500000000000"
              ],
              [
                "-1/1",
                "37290483729/62500000000"
              ],
              [
                "-1/1",
                "372221/500000"
              ],
              [
                "-1/1",
                "5016840067/10000000000"
              ],
              [
                "-1/1",
                "138921858787/250000000000"
              ],
              [
                "-1/1",
                "21576205361/31250000000"
              ]
            ],
            "raw": [
              "29281/250000",
              "372221/500000"
            ],
            "new": [
              "29281/250000",
              "372221/500000"
            ]
          },
          {
            "factor": 179,
            "target": "u",
            "old": [
              "29281/250000",
              "372221/500000"
            ],
            "lines": [
              [
                "1/1",
                "-3308628663/20000000000"
              ],
              [
                "1/1",
                "-156612846743/500000000000"
              ],
              [
                "1/1",
                "-13917483729/62500000000"
              ],
              [
                "1/1",
                "-185237/500000"
              ],
              [
                "1/1",
                "-1277160067/10000000000"
              ],
              [
                "1/1",
                "-45429858787/250000000000"
              ],
              [
                "1/1",
                "-9889705361/31250000000"
              ]
            ],
            "raw": [
              "1277160067/10000000000",
              "372221/500000"
            ],
            "new": [
              "31929/250000",
              "372221/500000"
            ]
          },
          {
            "factor": 202,
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
                "440737/500000",
                "-270723/500000"
              ]
            ],
            "raw": [
              "270723/440737",
              "1/1"
            ],
            "new": [
              "2457/4000",
              "1/1"
            ]
          },
          {
            "factor": 207,
            "target": "g",
            "old": [
              "123/1000",
              "670357/1000000"
            ],
            "lines": [
              [
                "28002429/80000000",
                "-1517481/20000000"
              ],
              [
                "4590410643/72560000000",
                "-2163951807/18140000000"
              ],
              [
                "931785309/2000000000",
                "-46708041/500000000"
              ],
              [
                "324934463763/1814000000000",
                "-62054106687/453500000000"
              ],
              [
                "11397/20000",
                "-1517481/20000000"
              ],
              [
                "1868299/18140000",
                "-2163951807/18140000000"
              ],
              [
                "379237/500000",
                "-46708041/500000000"
              ],
              [
                "132248459/453500000",
                "-62054106687/453500000000"
              ]
            ],
            "raw": [
              "46708041/379237000",
              "670357/1000000"
            ],
            "new": [
              "123163/1000000",
              "670357/1000000"
            ]
          },
          {
            "factor": 208,
            "target": "z",
            "old": [
              "33703/250000",
              "188739/250000"
            ],
            "lines": [
              [
                "3408004437/10000000000",
                "-34252737/500000000"
              ],
              [
                "-483484587/10000000000",
                "-60370113/500000000"
              ],
              [
                "108395298517/250000000000",
                "-34252737/500000000"
              ],
              [
                "-15377754667/250000000000",
                "-60370113/500000000"
              ],
              [
                "190021041/312500000",
                "-1630941/15625000"
              ],
              [
                "68412009/312500000",
                "-2447109/15625000"
              ],
              [
                "6043826481/7812500000",
                "-1630941/15625000"
              ],
              [
                "2175918569/7812500000",
                "-2447109/15625000"
              ]
            ],
            "raw": [
              "271823500/2014608827",
              "188739/250000"
            ],
            "new": [
              "67463/500000",
              "188739/250000"
            ]
          },
          {
            "factor": 1240,
            "target": "y",
            "old": [
              "216461/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "12235731/20000000",
                "-71264381605081/250000000000000"
              ],
              [
                "12235731/20000000",
                "-131132521994969/250000000000000"
              ],
              [
                "389170771/500000000",
                "-90063370837569/250000000000000"
              ],
              [
                "389170771/500000000",
                "-163465769122881/250000000000000"
              ],
              [
                "12235731/20000000",
                "-73521711626713/250000000000000"
              ],
              [
                "12235731/20000000",
                "-143750902366937/250000000000000"
              ],
              [
                "389170771/500000000",
                "-92320700859201/250000000000000"
              ],
              [
                "389170771/500000000",
                "-176084149494849/250000000000000"
              ],
              [
                "12235731/20000000",
                "-605299505777/1953125000000"
              ],
              [
                "12235731/20000000",
                "-1073019352573/1953125000000"
              ],
              [
                "389170771/500000000",
                "-765383091273/1953125000000"
              ],
              [
                "389170771/500000000",
                "-1338839327877/1953125000000"
              ],
              [
                "12235731/20000000",
                "-622934896571/1953125000000"
              ],
              [
                "12235731/20000000",
                "-1171600449229/1953125000000"
              ],
              [
                "389170771/500000000",
                "-783018482067/1953125000000"
              ],
              [
                "389170771/500000000",
                "-1437420424533/1953125000000"
              ],
              [
                "12235731/20000000",
                "-54127447861209/250000000000000"
              ],
              [
                "12235731/20000000",
                "-35337779393241/250000000000000"
              ],
              [
                "389170771/500000000",
                "-72926437093697/250000000000000"
              ],
              [
                "389170771/500000000",
                "-67671026521153/250000000000000"
              ],
              [
                "12235731/20000000",
                "-56384777882841/250000000000000"
              ],
              [
                "12235731/20000000",
                "-47956159765209/250000000000000"
              ],
              [
                "389170771/500000000",
                "-75183767115329/250000000000000"
              ],
              [
                "389170771/500000000",
                "-80289406893121/250000000000000"
              ],
              [
                "12235731/20000000",
                "-471417210903/1953125000000"
              ],
              [
                "12235731/20000000",
                "-324622925997/1953125000000"
              ],
              [
                "389170771/500000000",
                "-631500796399/1953125000000"
              ],
              [
                "389170771/500000000",
                "-590442901301/1953125000000"
              ],
              [
                "12235731/20000000",
                "-489052601697/1953125000000"
              ],
              [
                "12235731/20000000",
                "-423204022653/1953125000000"
              ],
              [
                "389170771/500000000",
                "-649136187193/1953125000000"
              ],
              [
                "389170771/500000000",
                "-689023997957/1953125000000"
              ]
            ],
            "raw": [
              "11779259797747/50982212500000",
              "907/1000"
            ],
            "new": [
              "115523/500000",
              "907/1000"
            ]
          },
          {
            "factor": 1248,
            "target": "y",
            "old": [
              "115523/500000",
              "907/1000"
            ],
            "lines": [
              [
                "10063551/20000000",
                "-15323277897/80000000000"
              ],
              [
                "1649708017/18140000000",
                "-2511929873799/72560000000000"
              ],
              [
                "334866271/500000000",
                "-509884525737/2000000000000"
              ],
              [
                "116775389297/453500000000",
                "-177808185373959/1814000000000000"
              ],
              [
                "10063551/20000000",
                "-1059921/5000000"
              ],
              [
                "1649708017/18140000000",
                "-173751807/4535000000"
              ],
              [
                "334866271/500000000",
                "-35269041/125000000"
              ],
              [
                "116775389297/453500000000",
                "-12299106687/113375000000"
              ]
            ],
            "raw": [
              "1344501/3532000",
              "907/1000"
            ],
            "new": [
              "190331/500000",
              "907/1000"
            ]
          },
          {
            "factor": 1259,
            "target": "x",
            "old": [
              "56527/500000",
              "11679/15625"
            ],
            "lines": [
              [
                "883/1000",
                "-1280265419617/5000000000000"
              ],
              [
                "883/1000",
                "-40253210846337/125000000000000"
              ],
              [
                "883/1000",
                "-4092745705511/15625000000000"
              ],
              [
                "883/1000",
                "-40988541/125000000"
              ],
              [
                "883/1000",
                "-2710045031859/10000000000000"
              ],
              [
                "883/1000",
                "-93539584705299/250000000000000"
              ],
              [
                "883/1000",
                "-7023577886397/31250000000000"
              ],
              [
                "883/1000",
                "-17664104551/80000000000"
              ],
              [
                "883/1000",
                "-398219376711/2000000000000"
              ],
              [
                "883/1000",
                "-87399986633/250000000000"
              ],
              [
                "883/1000",
                "-4715054523/20000000000"
              ],
              [
                "883/1000",
                "-125621170203/500000000000"
              ],
              [
                "883/1000",
                "-19526169609/62500000000"
              ]
            ],
            "raw": [
              "398219376711/1766000000000",
              "11679/15625"
            ],
            "new": [
              "56373/250000",
              "11679/15625"
            ]
          },
          {
            "factor": 1313,
            "target": "u",
            "old": [
              "31929/250000",
              "372221/500000"
            ],
            "lines": [
              [
                "883/1000",
                "-5341010724179/20000000000000"
              ],
              [
                "883/1000",
                "-180185817648819/500000000000000"
              ],
              [
                "883/1000",
                "-14661701806957/62500000000000"
              ],
              [
                "883/1000",
                "-40988541/125000000"
              ],
              [
                "883/1000",
                "-5640039109429/20000000000000"
              ],
              [
                "883/1000",
                "-206252143674069/500000000000000"
              ],
              [
                "883/1000",
                "-12337874757707/62500000000000"
              ],
              [
                "883/1000",
                "-292184768317/1250000000000"
              ],
              [
                "883/1000",
                "-7632862787037/31250000000000"
              ],
              [
                "883/1000",
                "-1239861458861/3906250000000"
              ],
              [
                "883/1000",
                "-2486992339161/10000000000000"
              ],
              [
                "883/1000",
                "-74096065308921/250000000000000"
              ],
              [
                "883/1000",
                "-8756978146263/31250000000000"
              ]
            ],
            "raw": [
              "12337874757707/55187500000000",
              "372221/500000"
            ],
            "new": [
              "111781/500000",
              "372221/500000"
            ]
          },
          {
            "factor": 0,
            "target": "a",
            "old": [
              "1912/15625",
              "10688/15625"
            ],
            "lines": [
              [
                "11397/20000",
                "-93/1000"
              ],
              [
                "1868299/18140000",
                "-93/1000"
              ],
              [
                "379237/500000",
                "-93/1000"
              ],
              [
                "132248459/453500000",
                "-93/1000"
              ]
            ],
            "raw": [
              "46500/379237",
              "10688/15625"
            ],
            "new": [
              "61307/500000",
              "10688/15625"
            ]
          },
          {
            "factor": 16,
            "target": "a",
            "old": [
              "61307/500000",
              "10688/15625"
            ],
            "lines": [
              [
                "-13857/20000",
                "11726649/80000000"
              ],
              [
                "-440737/500000",
                "524890809/2000000000"
              ],
              [
                "-13857/20000",
                "8277/20000"
              ],
              [
                "-440737/500000",
                "301237/500000"
              ]
            ],
            "raw": [
              "61307/500000",
              "301237/440737"
            ],
            "new": [
              "61307/500000",
              "136697/200000"
            ]
          },
          {
            "factor": 30,
            "target": "d",
            "old": [
              "1912/15625",
              "604217/1000000"
            ],
            "lines": [
              [
                "11397/20000",
                "-93/1000"
              ],
              [
                "1868299/18140000",
                "-93/1000"
              ],
              [
                "379237/500000",
                "-93/1000"
              ],
              [
                "132248459/453500000",
                "-93/1000"
              ]
            ],
            "raw": [
              "46500/379237",
              "604217/1000000"
            ],
            "new": [
              "61307/500000",
              "604217/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "13857/20000",
              "440737/500000"
            ],
            "lines": [
              [
                "-302537/1000000",
                "209537/1000000"
              ],
              [
                "89533/500000",
                "-136033/500000"
              ],
              [
                "-392193/500000",
                "345693/500000"
              ],
              [
                "-302783/1000000",
                "209783/1000000"
              ]
            ],
            "raw": [
              "13857/20000",
              "115231/130731"
            ],
            "new": [
              "13857/20000",
              "220359/250000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "425151/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "6143/20000",
                "-1306608901/10000000000"
              ],
              [
                "29641/250000",
                "-13442200787/125000000000"
              ],
              [
                "6143/20000",
                "-5571705031/20000000000"
              ],
              [
                "29641/250000",
                "-41159596097/250000000000"
              ]
            ],
            "raw": [
              "1306608901/3071500000",
              "907/1000"
            ],
            "new": [
              "425397/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "617/1000",
              "440737/500000"
            ],
            "lines": [
              [
                "-302783/1000000",
                "209783/1000000"
              ],
              [
                "8941/50000",
                "-13591/50000"
              ],
              [
                "-392193/500000",
                "345693/500000"
              ]
            ],
            "raw": [
              "617/1000",
              "115231/130731"
            ],
            "new": [
              "617/1000",
              "220359/250000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "123163/1000000",
              "670357/1000000"
            ],
            "lines": [
              [
                "-2457/4000",
                "1195498167/5000000000"
              ],
              [
                "-2457/4000",
                "20593339329/62500000000"
              ],
              [
                "-1/1",
                "5063665209/10000000000"
              ],
              [
                "-1/1",
                "83688420783/125000000000"
              ],
              [
                "-2457/4000",
                "-1904881521/10000000000"
              ],
              [
                "-2457/4000",
                "-27127916727/125000000000"
              ],
              [
                "-1/1",
                "383893677/5000000000"
              ],
              [
                "-1/1",
                "7686912699/62500000000"
              ]
            ],
            "raw": [
              "123163/1000000",
              "83688420783/125000000000"
            ],
            "new": [
              "123163/1000000",
              "167377/250000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "67463/500000",
              "188739/250000"
            ],
            "lines": [
              [
                "-13857/20000",
                "1027720959/4000000000"
              ],
              [
                "-220359/250000",
                "1491076761/4000000000"
              ],
              [
                "-13857/20000",
                "-157324353/2000000000"
              ],
              [
                "-220359/250000",
                "18588387/500000000"
              ],
              [
                "-13857/20000",
                "476687/1000000"
              ],
              [
                "-220359/250000",
                "665273/1000000"
              ],
              [
                "-13857/20000",
                "-34829/500000"
              ],
              [
                "-220359/250000",
                "7433/62500"
              ]
            ],
            "raw": [
              "67463/500000",
              "665273/881436"
            ],
            "new": [
              "67463/500000",
              "754761/1000000"
            ]
          },
          {
            "factor": 114,
            "target": "v",
            "old": [
              "216461/1000000",
              "356849/500000"
            ],
            "lines": [
              [
                "-617/1000",
                "372462583/2000000000"
              ],
              [
                "-220359/250000",
                "697322209/2000000000"
              ],
              [
                "-617/1000",
                "169/500"
              ],
              [
                "-220359/250000",
                "150609/250000"
              ],
              [
                "-617/1000",
                "774321503/2000000000"
              ],
              [
                "-220359/250000",
                "1099181129/2000000000"
              ]
            ],
            "raw": [
              "216461/1000000",
              "50203/73453"
            ],
            "new": [
              "216461/1000000",
              "42717/62500"
            ]
          },
          {
            "factor": 126,
            "target": "z",
            "old": [
              "67463/500000",
              "754761/1000000"
            ],
            "lines": [
              [
                "13857/20000",
                "-81425800909/500000000000"
              ],
              [
                "13857/20000",
                "-96474503839/200000000000"
              ],
              [
                "220359/250000",
                "-92987442811/500000000000"
              ],
              [
                "220359/250000",
                "-122253644281/200000000000"
              ],
              [
                "13857/20000",
                "-23965513997/250000000000"
              ],
              [
                "13857/20000",
                "-10895390687/100000000000"
              ],
              [
                "220359/250000",
                "-7436583737/62500000000"
              ],
              [
                "220359/250000",
                "-5946240227/25000000000"
              ]
            ],
            "raw": [
              "7436583737/55089750000",
              "754761/1000000"
            ],
            "new": [
              "13499/100000",
              "754761/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "56373/250000",
              "11679/15625"
            ],
            "lines": [
              [
                "-783539/1000000",
                "36693114739/250000000000"
              ],
              [
                "-783539/1000000",
                "5943534831/31250000000"
              ],
              [
                "-783539/1000000",
                "353853829/1000000000"
              ],
              [
                "-783539/1000000",
                "134114300001/250000000000"
              ],
              [
                "-783539/1000000",
                "117343309099/250000000000"
              ],
              [
                "-783539/1000000",
                "8012404563/15625000000"
              ],
              [
                "-783539/1000000",
                "402295669/1000000000"
              ],
              [
                "-783539/1000000",
                "146224760001/250000000000"
              ],
              [
                "-19783/62500",
                "-35343332011/250000000000"
              ],
              [
                "-19783/62500",
                "-55361798301/250000000000"
              ],
              [
                "-19783/62500",
                "32854021/500000000"
              ],
              [
                "-19783/62500",
                "7801055763/62500000000"
              ],
              [
                "-19783/62500",
                "45306862349/250000000000"
              ],
              [
                "-19783/62500",
                "25288396059/250000000000"
              ],
              [
                "-19783/62500",
                "57074941/500000000"
              ],
              [
                "-19783/62500",
                "10828670763/62500000000"
              ]
            ],
            "raw": [
              "56373/250000",
              "146224760001/195884750000"
            ],
            "new": [
              "56373/250000",
              "186621/250000"
            ]
          },
          {
            "factor": 148,
            "target": "v",
            "old": [
              "216461/1000000",
              "42717/62500"
            ],
            "lines": [
              [
                "13857/20000",
                "-21033829927/62500000000"
              ],
              [
                "13857/20000",
                "-14993782717/25000000000"
              ],
              [
                "220359/250000",
                "-89916140659/250000000000"
              ],
              [
                "220359/250000",
                "-72864701089/100000000000"
              ],
              [
                "13857/20000",
                "-17042131157/62500000000"
              ],
              [
                "13857/20000",
                "-6093441047/25000000000"
              ],
              [
                "220359/250000",
                "-73949345579/250000000000"
              ],
              [
                "220359/250000",
                "-37263334409/100000000000"
              ]
            ],
            "raw": [
              "73949345579/220359000000",
              "42717/62500"
            ],
            "new": [
              "67117/200000",
              "42717/62500"
            ]
          },
          {
            "factor": 178,
            "target": "u",
            "old": [
              "111781/500000",
              "372221/500000"
            ],
            "lines": [
              [
                "-1/1",
                "2121455511/4000000000"
              ],
              [
                "-1/1",
                "32783162247/50000000000"
              ],
              [
                "-1/1",
                "61910463281/100000000000"
              ],
              [
                "-1/1",
                "186101/250000"
              ],
              [
                "-1/1",
                "629970811/1250000000"
              ],
              [
                "-1/1",
                "8807334347/15625000000"
              ],
              [
                "-1/1",
                "21397226581/31250000000"
              ]
            ],
            "raw": [
              "111781/500000",
              "186101/250000"
            ],
            "new": [
              "111781/500000",
              "186101/250000"
            ]
          },
          {
            "factor": 202,
            "target": "h",
            "old": [
              "2457/4000",
              "1/1"
            ],
            "lines": [
              [
                "13857/20000",
                "-270723/500000"
              ],
              [
                "220359/250000",
                "-270723/500000"
              ]
            ],
            "raw": [
              "90241/146906",
              "1/1"
            ],
            "new": [
              "614277/1000000",
              "1/1"
            ]
          },
          {
            "factor": 207,
            "target": "g",
            "old": [
              "123163/1000000",
              "167377/250000"
            ],
            "lines": [
              [
                "7000914969/20000000000",
                "-1517481/20000000"
              ],
              [
                "1147653104823/18140000000000",
                "-2163951807/18140000000"
              ],
              [
                "116472447693/250000000000",
                "-23353137/250000000"
              ],
              [
                "40613300406801/226750000000000",
                "-31026252009/226750000000"
              ],
              [
                "11397/20000",
                "-1517481/20000000"
              ],
              [
                "1868299/18140000",
                "-2163951807/18140000000"
              ],
              [
                "189609/250000",
                "-23353137/250000000"
              ],
              [
                "66115613/226750000",
                "-31026252009/226750000000"
              ]
            ],
            "raw": [
              "7784379/63203000",
              "167377/250000"
            ],
            "new": [
              "30791/250000",
              "167377/250000"
            ]
          },
          {
            "factor": 208,
            "target": "z",
            "old": [
              "13499/100000",
              "754761/1000000"
            ],
            "lines": [
              [
                "6812974191/20000000000",
                "-68530863/1000000000"
              ],
              [
                "-119876907/2500000000",
                "-60345933/500000000"
              ],
              [
                "108342367017/250000000000",
                "-68530863/1000000000"
              ],
              [
                "-1906325709/31250000000",
                "-60345933/500000000"
              ],
              [
                "6078968901/10000000000",
                "-52201551/500000000"
              ],
              [
                "877189671/4000000000",
                "-31312821/200000000"
              ],
              [
                "96669950787/125000000000",
                "-52201551/500000000"
              ],
              [
                "13949385777/50000000000",
                "-31312821/200000000"
              ]
            ],
            "raw": [
              "4350129250/32223316929",
              "754761/1000000"
            ],
            "new": [
              "134999/1000000",
              "754761/1000000"
            ]
          },
          {
            "factor": 1248,
            "target": "y",
            "old": [
              "190331/500000",
              "907/1000"
            ],
            "lines": [
              [
                "10063551/20000000",
                "-3830848092117/20000000000000"
              ],
              [
                "1649708017/18140000000",
                "-627987159748539/18140000000000000"
              ],
              [
                "167424747/250000000",
                "-63732848635449/250000000000000"
              ],
              [
                "58380086279/226750000000",
                "-22223292964832493/226750000000000000"
              ],
              [
                "10063551/20000000",
                "-1059921/5000000"
              ],
              [
                "1649708017/18140000000",
                "-173751807/4535000000"
              ],
              [
                "167424747/250000000",
                "-17633637/62500000"
              ],
              [
                "58380086279/226750000000",
                "-6148752009/56687500000"
              ]
            ],
            "raw": [
              "336127761/883000000",
              "907/1000"
            ],
            "new": [
              "76133/200000",
              "907/1000"
            ]
          },
          {
            "factor": 1259,
            "target": "x",
            "old": [
              "56373/250000",
              "186621/250000"
            ],
            "lines": [
              [
                "883/1000",
                "-160033705937/625000000000"
              ],
              [
                "883/1000",
                "-2515744874449/7812500000000"
              ],
              [
                "883/1000",
                "-4092699649527/15625000000000"
              ],
              [
                "883/1000",
                "-20493387/62500000"
              ],
              [
                "883/1000",
                "-1084017209037/4000000000000"
              ],
              [
                "883/1000",
                "-18706842853149/50000000000000"
              ],
              [
                "883/1000",
                "-22476163719627/100000000000000"
              ],
              [
                "883/1000",
                "-4416047067799/20000000000000"
              ],
              [
                "883/1000",
                "-49779426687623/250000000000000"
              ],
              [
                "883/1000",
                "-174789419319729/500000000000000"
              ],
              [
                "883/1000",
                "-4715054523/20000000000"
              ],
              [
                "883/1000",
                "-62809804971/250000000000"
              ],
              [
                "883/1000",
                "-156203849133/500000000000"
              ]
            ],
            "raw": [
              "49779426687623/220750000000000",
              "186621/250000"
            ],
            "new": [
              "225501/1000000",
              "186621/250000"
            ]
          },
          {
            "factor": 1313,
            "target": "u",
            "old": [
              "111781/500000",
              "186101/250000"
            ],
            "lines": [
              [
                "883/1000",
                "-647682968233/2500000000000"
              ],
              [
                "883/1000",
                "-10391918379641/31250000000000"
              ],
              [
                "883/1000",
                "-15901624446543/62500000000000"
              ],
              [
                "883/1000",
                "-20493387/62500000"
              ],
              [
                "883/1000",
                "-1096094240213/4000000000000"
              ],
              [
                "883/1000",
                "-19233145064101/50000000000000"
              ],
              [
                "883/1000",
                "-21725485077123/100000000000000"
              ],
              [
                "883/1000",
                "-4715465282607/20000000000000"
              ],
              [
                "883/1000",
                "-62827705371039/250000000000000"
              ],
              [
                "883/1000",
                "-156178317323097/500000000000000"
              ],
              [
                "883/1000",
                "-313404546113/1250000000000"
              ],
              [
                "883/1000",
                "-4741130228401/15625000000000"
              ],
              [
                "883/1000",
                "-8599546696023/31250000000000"
              ]
            ],
            "raw": [
              "21725485077123/88300000000000",
              "186101/250000"
            ],
            "new": [
              "246041/1000000",
              "186101/250000"
            ]
          },
          {
            "factor": 0,
            "target": "a",
            "old": [
              "61307/500000",
              "136697/200000"
            ],
            "lines": [
              [
                "11397/20000",
                "-93/1000"
              ],
              [
                "1868299/18140000",
                "-93/1000"
              ],
              [
                "189609/250000",
                "-93/1000"
              ],
              [
                "66115613/226750000",
                "-93/1000"
              ]
            ],
            "raw": [
              "7750/63203",
              "136697/200000"
            ],
            "new": [
              "6131/50000",
              "136697/200000"
            ]
          },
          {
            "factor": 16,
            "target": "a",
            "old": [
              "6131/50000",
              "136697/200000"
            ],
            "lines": [
              [
                "-13857/20000",
                "2932036389/20000000000"
              ],
              [
                "-220359/250000",
                "65611465443/250000000000"
              ],
              [
                "-13857/20000",
                "8277/20000"
              ],
              [
                "-220359/250000",
                "150609/250000"
              ]
            ],
            "raw": [
              "6131/50000",
              "50203/73453"
            ],
            "new": [
              "6131/50000",
              "42717/62500"
            ]
          },
          {
            "factor": 30,
            "target": "d",
            "old": [
              "61307/500000",
              "604217/1000000"
            ],
            "lines": [
              [
                "11397/20000",
                "-93/1000"
              ],
              [
                "1868299/18140000",
                "-93/1000"
              ],
              [
                "189609/250000",
                "-93/1000"
              ],
              [
                "66115613/226750000",
                "-93/1000"
              ]
            ],
            "raw": [
              "7750/63203",
              "604217/1000000"
            ],
            "new": [
              "6131/50000",
              "604217/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "425397/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "6143/20000",
                "-130662733/1000000000"
              ],
              [
                "29641/250000",
                "-1344228971/12500000000"
              ],
              [
                "6143/20000",
                "-5571705031/20000000000"
              ],
              [
                "29641/250000",
                "-41159596097/250000000000"
              ]
            ],
            "raw": [
              "130662733/307150000",
              "907/1000"
            ],
            "new": [
              "425403/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "30791/250000",
              "167377/250000"
            ],
            "lines": [
              [
                "-614277/1000000",
                "2390677623/10000000000"
              ],
              [
                "-614277/1000000",
                "41181610401/125000000000"
              ],
              [
                "-1/1",
                "10126318857/20000000000"
              ],
              [
                "-1/1",
                "167360755359/250000000000"
              ],
              [
                "-614277/1000000",
                "-951671697/5000000000"
              ],
              [
                "-614277/1000000",
                "-13551728439/62500000000"
              ],
              [
                "-1/1",
                "1538276823/20000000000"
              ],
              [
                "-1/1",
                "30790620801/250000000000"
              ]
            ],
            "raw": [
              "30791/250000",
              "167360755359/250000000000"
            ],
            "new": [
              "30791/250000",
              "167361/250000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "134999/1000000",
              "754761/1000000"
            ],
            "lines": [
              [
                "-13857/20000",
                "128472503511/500000000000"
              ],
              [
                "-220359/250000",
                "182025903/488281250"
              ],
              [
                "-13857/20000",
                "-39311116269/500000000000"
              ],
              [
                "-220359/250000",
                "4652726223/125000000000"
              ],
              [
                "-13857/20000",
                "238343/500000"
              ],
              [
                "-220359/250000",
                "83159/125000"
              ],
              [
                "-13857/20000",
                "-34797/500000"
              ],
              [
                "-220359/250000",
                "7437/62500"
              ]
            ],
            "raw": [
              "134999/1000000",
              "166318/220359"
            ],
            "new": [
              "134999/1000000",
              "18869/25000"
            ]
          },
          {
            "factor": 126,
            "target": "z",
            "old": [
              "134999/1000000",
              "18869/25000"
            ],
            "lines": [
              [
                "13857/20000",
                "-4071372433/25000000000"
              ],
              [
                "13857/20000",
                "-15073888431/31250000000"
              ],
              [
                "220359/250000",
                "-72648169/390625000"
              ],
              [
                "220359/250000",
                "-1193862657/1953125000"
              ],
              [
                "13857/20000",
                "-2396751093/25000000000"
              ],
              [
                "13857/20000",
                "-3406167051/31250000000"
              ],
              [
                "220359/250000",
                "-743715369/6250000000"
              ],
              [
                "220359/250000",
                "-1858520283/7812500000"
              ]
            ],
            "raw": [
              "247905123/1836325000",
              "18869/25000"
            ],
            "new": [
              "27/200",
              "18869/25000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "246041/1000000",
              "186101/250000"
            ],
            "lines": [
              [
                "-76133/200000",
                "2781686217/200000000000"
              ],
              [
                "-76133/200000",
                "4481977593/200000000000"
              ],
              [
                "-76133/200000",
                "9437125557/50000000000"
              ],
              [
                "-76133/200000",
                "9862198401/50000000000"
              ],
              [
                "-907/1000",
                "75715927167/200000000000"
              ],
              [
                "-907/1000",
                "19453620201/40000000000"
              ],
              [
                "-907/1000",
                "55341371589/100000000000"
              ],
              [
                "-907/1000",
                "16529364627/25000000000"
              ],
              [
                "-76133/200000",
                "-74338105239/500000000000"
              ],
              [
                "-76133/200000",
                "-10289068569/50000000000"
              ],
              [
                "-76133/200000",
                "103700541249/500000000000"
              ],
              [
                "-76133/200000",
                "37573980399/250000000000"
              ],
              [
                "-907/1000",
                "6749843571/31250000000"
              ],
              [
                "-907/1000",
                "3226865571/12500000000"
              ],
              [
                "-907/1000",
                "35754517953/62500000000"
              ],
              [
                "-907/1000",
                "19194579333/31250000000"
              ]
            ],
            "raw": [
              "246041/1000000",
              "16529364627/22675000000"
            ],
            "new": [
              "246041/1000000",
              "728969/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "225501/1000000",
              "186621/250000"
            ],
            "lines": [
              [
                "-132883/200000",
                "17439232547/200000000000"
              ],
              [
                "-132883/200000",
                "19823387523/200000000000"
              ],
              [
                "-132883/200000",
                "70611217/250000000"
              ],
              [
                "-132883/200000",
                "21677378247/50000000000"
              ],
              [
                "-132883/200000",
                "77258075123/200000000000"
              ],
              [
                "-132883/200000",
                "79642230099/200000000000"
              ],
              [
                "-132883/200000",
                "81839293/250000000"
              ],
              [
                "-132883/200000",
                "23922993447/50000000000"
              ],
              [
                "-19783/62500",
                "-25490023253/200000000000"
              ],
              [
                "-19783/62500",
                "-207523188117/1000000000000"
              ],
              [
                "-19783/62500",
                "67798589/1000000000"
              ],
              [
                "-19783/62500",
                "15863429901/125000000000"
              ],
              [
                "-19783/62500",
                "34328819323/200000000000"
              ],
              [
                "-19783/62500",
                "91571024763/1000000000000"
              ],
              [
                "-19783/62500",
                "112710893/1000000000"
              ],
              [
                "-19783/62500",
                "21477467901/125000000000"
              ]
            ],
            "raw": [
              "225501/1000000",
              "23922993447/33220750000"
            ],
            "new": [
              "225501/1000000",
              "720123/1000000"
            ]
          },
          {
            "factor": 148,
            "target": "v",
            "old": [
              "67117/200000",
              "42717/62500"
            ],
            "lines": [
              [
                "13857/20000",
                "-16689385979/50000000000"
              ],
              [
                "13857/20000",
                "-36523840053/62500000000"
              ],
              [
                "220359/250000",
                "-3569121349/10000000000"
              ],
              [
                "220359/250000",
                "-8915933643/12500000000"
              ],
              [
                "13857/20000",
                "-13728554411/50000000000"
              ],
              [
                "13857/20000",
                "-15894604677/62500000000"
              ],
              [
                "220359/250000",
                "-14884775177/50000000000"
              ],
              [
                "220359/250000",
                "-23950432839/62500000000"
              ]
            ],
            "raw": [
              "14884775177/44071800000",
              "42717/62500"
            ],
            "new": [
              "337739/1000000",
              "42717/62500"
            ]
          },
          {
            "factor": 208,
            "target": "z",
            "old": [
              "27/200",
              "18869/25000"
            ],
            "lines": [
              [
                "6812891049/20000000000",
                "-68531421/1000000000"
              ],
              [
                "-191767023/4000000000",
                "-120690657/1000000000"
              ],
              [
                "108341044863/250000000000",
                "-68531421/1000000000"
              ],
              [
                "-3049548201/50000000000",
                "-120690657/1000000000"
              ],
              [
                "607892733/1000000000",
                "-5220183/50000000"
              ],
              [
                "274133031/1250000000",
                "-9785181/62500000"
              ],
              [
                "9666928971/12500000000",
                "-5220183/50000000"
              ],
              [
                "4359362097/15625000000",
                "-9785181/62500000"
              ]
            ],
            "raw": [
              "435015250/3222309657",
              "18869/25000"
            ],
            "new": [
              "135001/1000000",
              "18869/25000"
            ]
          },
          {
            "factor": 1313,
            "target": "u",
            "old": [
              "246041/1000000",
              "728969/1000000"
            ],
            "lines": [
              [
                "883/1000",
                "-517857843917/2000000000000"
              ],
              [
                "883/1000",
                "-8300960890909/25000000000000"
              ],
              [
                "883/1000",
                "-12739233916107/50000000000000"
              ],
              [
                "883/1000",
                "-20493387/62500000"
              ],
              [
                "883/1000",
                "-5477585894371/20000000000000"
              ],
              [
                "883/1000",
                "-96039987192467/250000000000000"
              ],
              [
                "883/1000",
                "-108806768974341/500000000000000"
              ],
              [
                "883/1000",
                "-4715465282607/20000000000000"
              ],
              [
                "883/1000",
                "-62827705371039/250000000000000"
              ],
              [
                "883/1000",
                "-156178317323097/500000000000000"
              ],
              [
                "883/1000",
                "-313404546113/1250000000000"
              ],
              [
                "883/1000",
                "-4741130228401/15625000000000"
              ],
              [
                "883/1000",
                "-8599546696023/31250000000000"
              ]
            ],
            "raw": [
              "108806768974341/441500000000000",
              "728969/1000000"
            ],
            "new": [
              "246447/1000000",
              "728969/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "30791/250000",
              "167361/250000"
            ],
            "lines": [
              [
                "-614277/1000000",
                "1195331883/5000000000"
              ],
              [
                "-614277/1000000",
                "20590695021/62500000000"
              ],
              [
                "-1/1",
                "10126291143/20000000000"
              ],
              [
                "-1/1",
                "167360314641/250000000000"
              ],
              [
                "-614277/1000000",
                "-3806672931/20000000000"
              ],
              [
                "-614277/1000000",
                "-54206693397/250000000000"
              ],
              [
                "-1/1",
                "38457267/500000000"
              ],
              [
                "-1/1",
                "769771029/6250000000"
              ]
            ],
            "raw": [
              "30791/250000",
              "167360314641/250000000000"
            ],
            "new": [
              "30791/250000",
              "334721/500000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "246447/1000000",
              "728969/1000000"
            ],
            "lines": [
              [
                "-76133/200000",
                "12901761339/1000000000000"
              ],
              [
                "-76133/200000",
                "839880159/40000000000"
              ],
              [
                "-76133/200000",
                "179954900997/1000000000000"
              ],
              [
                "-76133/200000",
                "188050143633/1000000000000"
              ],
              [
                "-907/1000",
                "377572966089/1000000000000"
              ],
              [
                "-907/1000",
                "96985524207/200000000000"
              ],
              [
                "-907/1000",
                "544626105747/1000000000000"
              ],
              [
                "-907/1000",
                "651980760693/1000000000000"
              ],
              [
                "-76133/200000",
                "-74338105239/500000000000"
              ],
              [
                "-76133/200000",
                "-10289068569/50000000000"
              ],
              [
                "-76133/200000",
                "94692038553/500000000000"
              ],
              [
                "-76133/200000",
                "33069729051/250000000000"
              ],
              [
                "-907/1000",
                "6749843571/31250000000"
              ],
              [
                "-907/1000",
                "3226865571/12500000000"
              ],
              [
                "-907/1000",
                "8657113779/15625000000"
              ],
              [
                "-907/1000",
                "37263095829/62500000000"
              ]
            ],
            "raw": [
              "246447/1000000",
              "651980760693/907000000000"
            ],
            "new": [
              "246447/1000000",
              "718833/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "225501/1000000",
              "720123/1000000"
            ],
            "lines": [
              [
                "-662261/1000000",
                "17223718949/200000000000"
              ],
              [
                "-662261/1000000",
                "97469774481/1000000000000"
              ],
              [
                "-662261/1000000",
                "35144201/125000000"
              ],
              [
                "-662261/1000000",
                "107921677449/250000000000"
              ],
              [
                "-662261/1000000",
                "75736755611/200000000000"
              ],
              [
                "-662261/1000000",
                "390034957791/1000000000000"
              ],
              [
                "-662261/1000000",
                "162542753/500000000"
              ],
              [
                "-662261/1000000",
                "118904651949/250000000000"
              ],
              [
                "-19783/62500",
                "-25439733251/200000000000"
              ],
              [
                "-19783/62500",
                "-207271738107/1000000000000"
              ],
              [
                "-19783/62500",
                "67836347/1000000000"
              ],
              [
                "-19783/62500",
                "15868149651/125000000000"
              ],
              [
                "-19783/62500",
                "33073303411/200000000000"
              ],
              [
                "-19783/62500",
                "85293445203/1000000000000"
              ],
              [
                "-19783/62500",
                "22353649/200000000"
              ],
              [
                "-19783/62500",
                "21359636901/125000000000"
              ]
            ],
            "raw": [
              "225501/1000000",
              "118904651949/165565250000"
            ],
            "new": [
              "225501/1000000",
              "359087/500000"
            ]
          },
          {
            "factor": 148,
            "target": "v",
            "old": [
              "337739/1000000",
              "42717/62500"
            ],
            "lines": [
              [
                "13857/20000",
                "-16686896793/50000000000"
              ],
              [
                "13857/20000",
                "-36506496951/62500000000"
              ],
              [
                "220359/250000",
                "-17843117559/50000000000"
              ],
              [
                "220359/250000",
                "-44562325113/62500000000"
              ],
              [
                "13857/20000",
                "-13790698227/50000000000"
              ],
              [
                "13857/20000",
                "-16327584189/62500000000"
              ],
              [
                "220359/250000",
                "-14946918993/50000000000"
              ],
              [
                "220359/250000",
                "-24383412351/62500000000"
              ]
            ],
            "raw": [
              "4982306331/14690600000",
              "42717/62500"
            ],
            "new": [
              "339149/1000000",
              "42717/62500"
            ]
          },
          {
            "factor": 1313,
            "target": "u",
            "old": [
              "246447/1000000",
              "718833/1000000"
            ],
            "lines": [
              [
                "883/1000",
                "-258834486433/1000000000000"
              ],
              [
                "883/1000",
                "-4146365061041/12500000000000"
              ],
              [
                "883/1000",
                "-6375486838743/25000000000000"
              ],
              [
                "883/1000",
                "-20493387/62500000"
              ],
              [
                "883/1000",
                "-5475697183861/20000000000000"
              ],
              [
                "883/1000",
                "-95957679504197/250000000000000"
              ],
              [
                "883/1000",
                "-108924166588131/500000000000000"
              ],
              [
                "883/1000",
                "-4715465282607/20000000000000"
              ],
              [
                "883/1000",
                "-62827705371039/250000000000000"
              ],
              [
                "883/1000",
                "-156178317323097/500000000000000"
              ],
              [
                "883/1000",
                "-313404546113/1250000000000"
              ],
              [
                "883/1000",
                "-4741130228401/15625000000000"
              ],
              [
                "883/1000",
                "-8599546696023/31250000000000"
              ]
            ],
            "raw": [
              "108924166588131/441500000000000",
              "718833/1000000"
            ],
            "new": [
              "246713/1000000",
              "718833/1000000"
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
        "DGP-",
        "AFG-"
      ],
      "initial_box": {
        "low": [
          "6131/50000",
          "123/1000",
          "13857/20000",
          "6131/50000",
          "425403/1000000",
          "617/1000",
          "30791/250000",
          "614277/1000000",
          "135001/1000000",
          "225501/1000000",
          "76133/200000",
          "246713/1000000",
          "339149/1000000"
        ],
        "high": [
          "42717/62500",
          "535/907",
          "220359/250000",
          "604217/1000000",
          "907/1000",
          "220359/250000",
          "334721/500000",
          "1",
          "18869/25000",
          "359087/500000",
          "907/1000",
          "718833/1000000",
          "42717/62500"
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
        "AFG": -1,
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
            "FACDG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "ACF",
            "ADF",
            "CFG",
            "AFG",
            "CDF"
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
            "DEG",
            "OP",
            "EGD",
            [
              "area",
              "DEG",
              "U_DEG",
              "137689/200000"
            ]
          ],
          "target": "EGO",
          "sign": -1,
          "deps": [
            "DGO",
            "DEO",
            "DGP",
            "DEP",
            "EOP"
          ],
          "area_stage": 0
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
          "value": "189609/250000",
          "witness": {
            "kind": "vertices",
            "signed": "BCH",
            "used": [
              1,
              2,
              7
            ],
            "values": [
              "1147653104823/18140000000000",
              "1868299/18140000",
              "40613300406801/226750000000000",
              "66115613/226750000",
              "7000914969/20000000000",
              "116472447693/250000000000",
              "11397/20000",
              "189609/250000"
            ],
            "cell": "CB"
          }
        },
        "U_CFH": {
          "triangle": "CFH",
          "side": "hi",
          "value": "220359/250000",
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
              "12925141791/20000000000",
              "179749761807/250000000000",
              "404347021161/500000000000",
              "220359/250000"
            ],
            "cell": "CB"
          }
        }
      },
      "relations": {
        "1704": {
          "row": [
            "linear",
            {
              "BCH": "143109/250000",
              "BCG": "-189609/250000"
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
              "value": "189609/250000"
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
            "residual": "119859/250000"
          }
        },
        "1805": {
          "row": [
            "linear",
            {
              "BCF": "-279/1000",
              "BCH": "-93/1000",
              "BCO": "220359/250000"
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
              "value": "220359/250000"
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
            "residual": "104109/250000"
          }
        },
        "1816": {
          "row": [
            "linear",
            {
              "CFH": "127359/250000",
              "CFO": "-220359/250000"
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
              "value": "220359/250000"
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
            "residual": "104109/250000"
          }
        },
        "1872": {
          "row": [
            "linear",
            {
              "CFH": "127359/250000",
              "CFP": "-220359/250000"
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
              "value": "220359/250000"
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
            "residual": "104109/250000"
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
        "148": {
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
        "1169": {
          "name": "LINEAR_1704",
          "terms": [
            [
              [
                2,
                7
              ],
              "143109/250000"
            ],
            [
              [
                1,
                7
              ],
              "-143109/250000"
            ],
            [
              [
                2,
                8
              ],
              "-189609/250000"
            ],
            [
              [
                1,
                8
              ],
              "189609/250000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1704
          }
        },
        "1270": {
          "name": "LINEAR_1805",
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
              "220359/250000"
            ],
            [
              [
                1,
                10
              ],
              "-220359/250000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1805
          }
        },
        "1281": {
          "name": "LINEAR_1816",
          "terms": [
            [
              [
                5,
                7
              ],
              "127359/250000"
            ],
            [
              [
                2,
                7
              ],
              "-127359/250000"
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
              "-220359/250000"
            ],
            [
              [
                2,
                10
              ],
              "220359/250000"
            ],
            [
              [
                9
              ],
              "220359/250000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1816
          }
        },
        "1337": {
          "name": "LINEAR_1872",
          "terms": [
            [
              [
                5,
                7
              ],
              "127359/250000"
            ],
            [
              [
                2,
                7
              ],
              "-127359/250000"
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
              "-220359/250000"
            ],
            [
              [
                2,
                12
              ],
              "220359/250000"
            ],
            [
              [
                11
              ],
              "220359/250000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1872
          }
        }
      },
      "coordinate": {
        "low": [
          "6131/50000",
          "123/1000",
          "13857/20000",
          "6131/50000",
          "425403/1000000",
          "617/1000",
          "30791/250000",
          "614277/1000000",
          "135001/1000000",
          "113019/500000",
          "381341/1000000",
          "61851/250000",
          "169659/500000"
        ],
        "high": [
          "42717/62500",
          "535/907",
          "220359/250000",
          "604217/1000000",
          "907/1000",
          "220359/250000",
          "334721/500000",
          "1/1",
          "754759/1000000",
          "717613/1000000",
          "907/1000",
          "717613/1000000",
          "42717/62500"
        ],
        "steps": [
          {
            "factor": 132,
            "target": "u",
            "old": [
              "246713/1000000",
              "718833/1000000"
            ],
            "lines": [
              [
                "-76133/200000",
                "12242799249/1000000000000"
              ],
              [
                "-76133/200000",
                "32115417/1600000000"
              ],
              [
                "-76133/200000",
                "89666177263/500000000000"
              ],
              [
                "-76133/200000",
                "93580845451/500000000000"
              ],
              [
                "-907/1000",
                "376914003999/1000000000000"
              ],
              [
                "-907/1000",
                "96800550537/200000000000"
              ],
              [
                "-907/1000",
                "136000889819/250000000000"
              ],
              [
                "-907/1000",
                "325546153981/500000000000"
              ],
              [
                "-76133/200000",
                "-74338105239/500000000000"
              ],
              [
                "-76133/200000",
                "-10289068569/50000000000"
              ],
              [
                "-76133/200000",
                "94025995089/500000000000"
              ],
              [
                "-76133/200000",
                "32736707319/250000000000"
              ],
              [
                "-907/1000",
                "6749843571/31250000000"
              ],
              [
                "-907/1000",
                "3226865571/12500000000"
              ],
              [
                "-907/1000",
                "34545199683/62500000000"
              ],
              [
                "-907/1000",
                "9294960099/15625000000"
              ]
            ],
            "raw": [
              "246713/1000000",
              "325546153981/453500000000"
            ],
            "new": [
              "246713/1000000",
              "717853/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "225501/1000000",
              "359087/500000"
            ],
            "lines": [
              [
                "-660851/1000000",
                "17082673571/200000000000"
              ],
              [
                "-660851/1000000",
                "96391692831/1000000000000"
              ],
              [
                "-660851/1000000",
                "35038547/125000000"
              ],
              [
                "-660851/1000000",
                "107617155759/250000000000"
              ],
              [
                "-660851/1000000",
                "75441371951/200000000000"
              ],
              [
                "-660851/1000000",
                "388185184731/1000000000000"
              ],
              [
                "-660851/1000000",
                "81031099/250000000"
              ],
              [
                "-660851/1000000",
                "118571160759/250000000000"
              ],
              [
                "-19783/62500",
                "-25406784629/200000000000"
              ],
              [
                "-19783/62500",
                "-207106994997/1000000000000"
              ],
              [
                "-19783/62500",
                "13572217/200000000"
              ],
              [
                "-19783/62500",
                "15871241901/125000000000"
              ],
              [
                "-19783/62500",
                "32951913751/200000000000"
              ],
              [
                "-19783/62500",
                "84686496903/1000000000000"
              ],
              [
                "-19783/62500",
                "22335421/200000000"
              ],
              [
                "-19783/62500",
                "21348244401/125000000000"
              ]
            ],
            "raw": [
              "225501/1000000",
              "118571160759/165212750000"
            ],
            "new": [
              "225501/1000000",
              "89711/125000"
            ]
          },
          {
            "factor": 148,
            "target": "v",
            "old": [
              "339149/1000000",
              "42717/62500"
            ],
            "lines": [
              [
                "13857/20000",
                "-16685265947/50000000000"
              ],
              [
                "13857/20000",
                "-36495134229/62500000000"
              ],
              [
                "220359/250000",
                "-17841486713/50000000000"
              ],
              [
                "220359/250000",
                "-44550962391/62500000000"
              ],
              [
                "13857/20000",
                "-13796706607/50000000000"
              ],
              [
                "13857/20000",
                "-16369446849/62500000000"
              ],
              [
                "220359/250000",
                "-14952927373/50000000000"
              ],
              [
                "220359/250000",
                "-24425275011/62500000000"
              ]
            ],
            "raw": [
              "14952927373/44071800000",
              "42717/62500"
            ],
            "new": [
              "67857/200000",
              "42717/62500"
            ]
          },
          {
            "factor": 1169,
            "target": "z",
            "old": [
              "135001/1000000",
              "18869/25000"
            ],
            "lines": [
              [
                "-2160973773/5000000000",
                "1001893940298621/5000000000000000"
              ],
              [
                "-354246305091/4535000000000",
                "164239488178114707/4535000000000000000"
              ],
              [
                "-35951572881/62500000000",
                "16668255516897537/62500000000000000"
              ],
              [
                "-12536115265317/56687500000000",
                "5812128807916884309/56687500000000000000"
              ],
              [
                "-2160973773/5000000000",
                "1631013273/5000000000"
              ],
              [
                "-354246305091/4535000000000",
                "267370401591/4535000000000"
              ],
              [
                "-35951572881/62500000000",
                "27134754381/62500000000"
              ],
              [
                "-12536115265317/56687500000000",
                "9461739260817/56687500000000"
              ]
            ],
            "raw": [
              "135001/1000000",
              "47703/63203"
            ],
            "new": [
              "135001/1000000",
              "754759/1000000"
            ]
          },
          {
            "factor": 1270,
            "target": "y",
            "old": [
              "76133/200000",
              "907/1000"
            ],
            "lines": [
              [
                "2511431523/5000000000",
                "-3830848092117/20000000000000"
              ],
              [
                "411696499341/4535000000000",
                "-627987159748539/18140000000000000"
              ],
              [
                "41782049631/62500000000",
                "-63732848635449/250000000000000"
              ],
              [
                "14569170365067/56687500000000",
                "-22223292964832493/226750000000000000"
              ],
              [
                "2511431523/5000000000",
                "-1059921/5000000"
              ],
              [
                "411696499341/4535000000000",
                "-173751807/4535000000"
              ],
              [
                "41782049631/62500000000",
                "-17633637/62500000"
              ],
              [
                "14569170365067/56687500000000",
                "-6148752009/56687500000"
              ]
            ],
            "raw": [
              "112042587/293812000",
              "907/1000"
            ],
            "new": [
              "381341/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 1281,
            "target": "x",
            "old": [
              "225501/1000000",
              "89711/125000"
            ],
            "lines": [
              [
                "220359/250000",
                "-79994069052963/312500000000000"
              ],
              [
                "220359/250000",
                "-1256879542120851/3906250000000000"
              ],
              [
                "220359/250000",
                "-2047766017082373/7812500000000000"
              ],
              [
                "220359/250000",
                "-20493387/62500000"
              ],
              [
                "220359/250000",
                "-1354428178207377/5000000000000000"
              ],
              [
                "220359/250000",
                "-23357696837911329/62500000000000000"
              ],
              [
                "220359/250000",
                "-28132084779361767/125000000000000000"
              ],
              [
                "220359/250000",
                "-1104185394719031/5000000000000000"
              ],
              [
                "220359/250000",
                "-12452423157205287/62500000000000000"
              ],
              [
                "220359/250000",
                "-43686562553565201/125000000000000000"
              ],
              [
                "220359/250000",
                "-1178708468079/5000000000000"
              ],
              [
                "220359/250000",
                "-15700047321183/62500000000000"
              ],
              [
                "220359/250000",
                "-39054391059609/125000000000000"
              ]
            ],
            "raw": [
              "4150807719068429/18363250000000000",
              "89711/125000"
            ],
            "new": [
              "113019/500000",
              "89711/125000"
            ]
          },
          {
            "factor": 1337,
            "target": "u",
            "old": [
              "246713/1000000",
              "717853/1000000"
            ],
            "lines": [
              [
                "220359/250000",
                "-161745472263897/625000000000000"
              ],
              [
                "220359/250000",
                "-2590341552171369/7812500000000000"
              ],
              [
                "220359/250000",
                "-3986300452254687/15625000000000000"
              ],
              [
                "220359/250000",
                "-20493387/62500000"
              ],
              [
                "220359/250000",
                "-273697370294229/1000000000000000"
              ],
              [
                "220359/250000",
                "-4794071316269733/12500000000000000"
              ],
              [
                "220359/250000",
                "-5451646424816259/25000000000000000"
              ],
              [
                "220359/250000",
                "-235781472691683/1000000000000000"
              ],
              [
                "220359/250000",
                "-3141742987590291/12500000000000000"
              ],
              [
                "220359/250000",
                "-7808405642111493/25000000000000000"
              ],
              [
                "220359/250000",
                "-78339402301149/312500000000000"
              ],
              [
                "220359/250000",
                "-1184771193870573/3906250000000000"
              ],
              [
                "220359/250000",
                "-2150616044787579/7812500000000000"
              ]
            ],
            "raw": [
              "24739840101/100000000000",
              "717853/1000000"
            ],
            "new": [
              "123699/500000",
              "717853/1000000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "123699/500000",
              "717853/1000000"
            ],
            "lines": [
              [
                "-381341/1000000",
                "1282980243/100000000000"
              ],
              [
                "-381341/1000000",
                "10380487623/500000000000"
              ],
              [
                "-381341/1000000",
                "4490981817/25000000000"
              ],
              [
                "-381341/1000000",
                "23446305687/125000000000"
              ],
              [
                "-907/1000",
                "18851632029/50000000000"
              ],
              [
                "-907/1000",
                "48409574157/100000000000"
              ],
              [
                "-907/1000",
                "54384211083/100000000000"
              ],
              [
                "-907/1000",
                "32545260591/50000000000"
              ],
              [
                "-381341/1000000",
                "-73920409707/500000000000"
              ],
              [
                "-381341/1000000",
                "-10240924809/50000000000"
              ],
              [
                "-381341/1000000",
                "94094094693/500000000000"
              ],
              [
                "-381341/1000000",
                "6560525631/50000000000"
              ],
              [
                "-907/1000",
                "13522626171/62500000000"
              ],
              [
                "-907/1000",
                "4039316721/15625000000"
              ],
              [
                "-907/1000",
                "34524439221/62500000000"
              ],
              [
                "-907/1000",
                "18579539967/31250000000"
              ]
            ],
            "raw": [
              "123699/500000",
              "32545260591/45350000000"
            ],
            "new": [
              "123699/500000",
              "717647/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "113019/500000",
              "89711/125000"
            ],
            "lines": [
              [
                "-132143/200000",
                "43001775641/500000000000"
              ],
              [
                "-132143/200000",
                "48562335849/500000000000"
              ],
              [
                "-132143/200000",
                "280288169/1000000000"
              ],
              [
                "-132143/200000",
                "21520622637/50000000000"
              ],
              [
                "-132143/200000",
                "376927327373/1000000000000"
              ],
              [
                "-132143/200000",
                "388048447789/1000000000000"
              ],
              [
                "-132143/200000",
                "162010663/500000000"
              ],
              [
                "-132143/200000",
                "23707280487/50000000000"
              ],
              [
                "-19783/62500",
                "-63179913859/500000000000"
              ],
              [
                "-19783/62500",
                "-103127070417/500000000000"
              ],
              [
                "-19783/62500",
                "6792479/100000000"
              ],
              [
                "-19783/62500",
                "7939602513/62500000000"
              ],
              [
                "-19783/62500",
                "164563948373/1000000000000"
              ],
              [
                "-19783/62500",
                "84669635257/1000000000000"
              ],
              [
                "-19783/62500",
                "111657947/1000000000"
              ],
              [
                "-19783/62500",
                "21345849651/125000000000"
              ]
            ],
            "raw": [
              "113019/500000",
              "2155207317/3003250000"
            ],
            "new": [
              "113019/500000",
              "358813/500000"
            ]
          },
          {
            "factor": 148,
            "target": "v",
            "old": [
              "67857/200000",
              "42717/62500"
            ],
            "lines": [
              [
                "13857/20000",
                "-4170266553/12500000000"
              ],
              [
                "13857/20000",
                "-9116468271/15625000000"
              ],
              [
                "220359/250000",
                "-8918643489/25000000000"
              ],
              [
                "220359/250000",
                "-22260850623/31250000000"
              ],
              [
                "13857/20000",
                "-13797969593/50000000000"
              ],
              [
                "13857/20000",
                "-16378246551/62500000000"
              ],
              [
                "220359/250000",
                "-14954190359/50000000000"
              ],
              [
                "220359/250000",
                "-24434074713/62500000000"
              ]
            ],
            "raw": [
              "14954190359/44071800000",
              "42717/62500"
            ],
            "new": [
              "169657/500000",
              "42717/62500"
            ]
          },
          {
            "factor": 1337,
            "target": "u",
            "old": [
              "123699/500000",
              "717647/1000000"
            ],
            "lines": [
              [
                "220359/250000",
                "-1293954083857689/5000000000000000"
              ],
              [
                "220359/250000",
                "-20722309953690153/62500000000000000"
              ],
              [
                "220359/250000",
                "-31891006189061919/125000000000000000"
              ],
              [
                "220359/250000",
                "-20493387/62500000"
              ],
              [
                "220359/250000",
                "-684238578608829/2500000000000000"
              ],
              [
                "220359/250000",
                "-11984967058833933/31250000000000000"
              ],
              [
                "220359/250000",
                "-13629417347552859/62500000000000000"
              ],
              [
                "220359/250000",
                "-235781472691683/1000000000000000"
              ],
              [
                "220359/250000",
                "-3141742987590291/12500000000000000"
              ],
              [
                "220359/250000",
                "-7808405642111493/25000000000000000"
              ],
              [
                "220359/250000",
                "-78339402301149/312500000000000"
              ],
              [
                "220359/250000",
                "-1184771193870573/3906250000000000"
              ],
              [
                "220359/250000",
                "-2150616044787579/7812500000000000"
              ]
            ],
            "raw": [
              "61850967501/250000000000",
              "717647/1000000"
            ],
            "new": [
              "247403/1000000",
              "717647/1000000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "247403/1000000",
              "717647/1000000"
            ],
            "lines": [
              [
                "-381341/1000000",
                "6408132441/500000000000"
              ],
              [
                "-381341/1000000",
                "324093261/15625000000"
              ],
              [
                "-381341/1000000",
                "89809477757/500000000000"
              ],
              [
                "-381341/1000000",
                "23443082417/125000000000"
              ],
              [
                "-907/1000",
                "47127387879/125000000000"
              ],
              [
                "-907/1000",
                "121019183757/250000000000"
              ],
              [
                "-907/1000",
                "4248607763/7812500000"
              ],
              [
                "-907/1000",
                "32543971283/50000000000"
              ],
              [
                "-381341/1000000",
                "-73920409707/500000000000"
              ],
              [
                "-381341/1000000",
                "-10240924809/50000000000"
              ],
              [
                "-381341/1000000",
                "94072907061/500000000000"
              ],
              [
                "-381341/1000000",
                "32792034339/250000000000"
              ],
              [
                "-907/1000",
                "13522626171/62500000000"
              ],
              [
                "-907/1000",
                "4039316721/15625000000"
              ],
              [
                "-907/1000",
                "34521790767/62500000000"
              ],
              [
                "-907/1000",
                "928910787/1562500000"
              ]
            ],
            "raw": [
              "247403/1000000",
              "32543971283/45350000000"
            ],
            "new": [
              "247403/1000000",
              "358809/500000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "113019/500000",
              "358813/500000"
            ],
            "lines": [
              [
                "-330343/500000",
                "85988751577/1000000000000"
              ],
              [
                "-330343/500000",
                "97102203349/1000000000000"
              ],
              [
                "-330343/500000",
                "280270741/1000000000"
              ],
              [
                "-330343/500000",
                "6724802439/15625000000"
              ],
              [
                "-330343/500000",
                "188445746631/500000000000"
              ],
              [
                "-330343/500000",
                "194002472517/500000000000"
              ],
              [
                "-330343/500000",
                "10125023/31250000"
              ],
              [
                "-330343/500000",
                "59264668887/125000000000"
              ],
              [
                "-19783/62500",
                "-126356734423/1000000000000"
              ],
              [
                "-19783/62500",
                "-206251047539/1000000000000"
              ],
              [
                "-19783/62500",
                "13585051/200000000"
              ],
              [
                "-19783/62500",
                "15879263151/125000000000"
              ],
              [
                "-19783/62500",
                "82273003631/500000000000"
              ],
              [
                "-19783/62500",
                "42325847073/500000000000"
              ],
              [
                "-19783/62500",
                "446621/4000000"
              ],
              [
                "-19783/62500",
                "10672756263/62500000000"
              ]
            ],
            "raw": [
              "113019/500000",
              "59264668887/82585750000"
            ],
            "new": [
              "113019/500000",
              "358807/500000"
            ]
          },
          {
            "factor": 148,
            "target": "v",
            "old": [
              "169657/500000",
              "42717/62500"
            ],
            "lines": [
              [
                "13857/20000",
                "-16681035557/50000000000"
              ],
              [
                "13857/20000",
                "-36465659499/62500000000"
              ],
              [
                "220359/250000",
                "-17837256323/50000000000"
              ],
              [
                "220359/250000",
                "-44521487661/62500000000"
              ],
              [
                "13857/20000",
                "-215596053/781250000"
              ],
              [
                "13857/20000",
                "-511858917/1953125000"
              ],
              [
                "220359/250000",
                "-7477184079/25000000000"
              ],
              [
                "220359/250000",
                "-12217656753/31250000000"
              ]
            ],
            "raw": [
              "2492394693/7345300000",
              "42717/62500"
            ],
            "new": [
              "169659/500000",
              "42717/62500"
            ]
          },
          {
            "factor": 1337,
            "target": "u",
            "old": [
              "247403/1000000",
              "358809/500000"
            ],
            "lines": [
              [
                "220359/250000",
                "-1293952746719277/5000000000000000"
              ],
              [
                "220359/250000",
                "-20722251682837629/62500000000000000"
              ],
              [
                "220359/250000",
                "-31891089302306667/125000000000000000"
              ],
              [
                "220359/250000",
                "-20493387/62500000"
              ],
              [
                "220359/250000",
                "-684237910039623/2500000000000000"
              ],
              [
                "220359/250000",
                "-11984937923407671/31250000000000000"
              ],
              [
                "220359/250000",
                "-13629458904175233/62500000000000000"
              ],
              [
                "220359/250000",
                "-235781472691683/1000000000000000"
              ],
              [
                "220359/250000",
                "-3141742987590291/12500000000000000"
              ],
              [
                "220359/250000",
                "-7808405642111493/25000000000000000"
              ],
              [
                "220359/250000",
                "-78339402301149/312500000000000"
              ],
              [
                "220359/250000",
                "-1184771193870573/3906250000000000"
              ],
              [
                "220359/250000",
                "-2150616044787579/7812500000000000"
              ]
            ],
            "raw": [
              "61851156087/250000000000",
              "358809/500000"
            ],
            "new": [
              "61851/250000",
              "358809/500000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "61851/250000",
              "358809/500000"
            ],
            "lines": [
              [
                "-381341/1000000",
                "6407198817/500000000000"
              ],
              [
                "-381341/1000000",
                "2592418389/125000000000"
              ],
              [
                "-381341/1000000",
                "89807491401/500000000000"
              ],
              [
                "-381341/1000000",
                "4688498307/25000000000"
              ],
              [
                "-907/1000",
                "47127154473/125000000000"
              ],
              [
                "-907/1000",
                "121018528359/250000000000"
              ],
              [
                "-907/1000",
                "67977227619/125000000000"
              ],
              [
                "-907/1000",
                "162718674651/250000000000"
              ],
              [
                "-381341/1000000",
                "-73920409707/500000000000"
              ],
              [
                "-381341/1000000",
                "-10240924809/50000000000"
              ],
              [
                "-381341/1000000",
                "94068806229/500000000000"
              ],
              [
                "-381341/1000000",
                "32789983923/250000000000"
              ],
              [
                "-907/1000",
                "13522626171/62500000000"
              ],
              [
                "-907/1000",
                "4039316721/15625000000"
              ],
              [
                "-907/1000",
                "34521278163/62500000000"
              ],
              [
                "-907/1000",
                "9288979719/15625000000"
              ]
            ],
            "raw": [
              "61851/250000",
              "162718674651/226750000000"
            ],
            "new": [
              "61851/250000",
              "717613/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "113019/500000",
              "358807/500000"
            ],
            "lines": [
              [
                "-330341/500000",
                "21496725559/250000000000"
              ],
              [
                "-330341/500000",
                "12137412033/125000000000"
              ],
              [
                "-330341/500000",
                "140134183/500000000"
              ],
              [
                "-330341/500000",
                "53797990419/125000000000"
              ],
              [
                "-330341/500000",
                "376885931967/1000000000000"
              ],
              [
                "-330341/500000",
                "77599665199/200000000000"
              ],
              [
                "-330341/500000",
                "323997803/1000000000"
              ],
              [
                "-330341/500000",
                "14816042511/31250000000"
              ],
              [
                "-19783/62500",
                "-31589028941/250000000000"
              ],
              [
                "-19783/62500",
                "-2578130361/12500000000"
              ],
              [
                "-19783/62500",
                "16981337/250000000"
              ],
              [
                "-19783/62500",
                "1984909347/15625000000"
              ],
              [
                "-19783/62500",
                "164542913967/1000000000000"
              ],
              [
                "-19783/62500",
                "84648600851/1000000000000"
              ],
              [
                "-19783/62500",
                "22330957/200000000"
              ],
              [
                "-19783/62500",
                "21345454401/125000000000"
              ]
            ],
            "raw": [
              "113019/500000",
              "14816042511/20646312500"
            ],
            "new": [
              "113019/500000",
              "717613/1000000"
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
        "DGP-",
        "AFG-"
      ],
      "initial_box": {
        "low": [
          "6131/50000",
          "123/1000",
          "13857/20000",
          "6131/50000",
          "425403/1000000",
          "617/1000",
          "30791/250000",
          "614277/1000000",
          "135001/1000000",
          "113019/500000",
          "381341/1000000",
          "61851/250000",
          "169659/500000"
        ],
        "high": [
          "42717/62500",
          "535/907",
          "220359/250000",
          "604217/1000000",
          "907/1000",
          "220359/250000",
          "334721/500000",
          "1",
          "754759/1000000",
          "717613/1000000",
          "907/1000",
          "717613/1000000",
          "42717/62500"
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
        "AFG": -1,
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
            "FACDG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "ACF",
            "ADF",
            "CFG",
            "AFG",
            "CDF"
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
            "DEG",
            "OP",
            "EGD",
            [
              "area",
              "DEG",
              "U_DEG",
              "137689/200000"
            ]
          ],
          "target": "EGO",
          "sign": -1,
          "deps": [
            "DGO",
            "DEO",
            "DGP",
            "DEP",
            "EOP"
          ],
          "area_stage": 0
        }
      ],
      "initial": {},
      "relations": {},
      "updates": [],
      "physical": {},
      "coordinate": {
        "low": [
          "6131/50000",
          "123/1000",
          "13857/20000",
          "6131/50000",
          "425403/1000000",
          "617/1000",
          "30791/250000",
          "614277/1000000",
          "135001/1000000",
          "113019/500000",
          "381341/1000000",
          "61851/250000",
          "169659/500000"
        ],
        "high": [
          "42717/62500",
          "535/907",
          "220359/250000",
          "604217/1000000",
          "907/1000",
          "220359/250000",
          "334721/500000",
          "1/1",
          "754759/1000000",
          "717613/1000000",
          "907/1000",
          "717613/1000000",
          "42717/62500"
        ],
        "steps": []
      }
    },
    {
      "id": 3,
      "assumptions": [
        "AGO+",
        "AGP+",
        "DGP-",
        "AFG-",
        "BGO-"
      ],
      "initial_box": {
        "low": [
          "6131/50000",
          "123/1000",
          "13857/20000",
          "6131/50000",
          "425403/1000000",
          "617/1000",
          "30791/250000",
          "614277/1000000",
          "135001/1000000",
          "113019/500000",
          "381341/1000000",
          "61851/250000",
          "169659/500000"
        ],
        "high": [
          "42717/62500",
          "535/907",
          "220359/250000",
          "604217/1000000",
          "907/1000",
          "220359/250000",
          "334721/500000",
          "1",
          "754759/1000000",
          "717613/1000000",
          "907/1000",
          "717613/1000000",
          "42717/62500"
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
        "AFG": -1,
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
        "EGO": -1,
        "BGO": -1,
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
            "FACDG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "ACF",
            "ADF",
            "CFG",
            "AFG",
            "CDF"
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
            "DEG",
            "OP",
            "EGD",
            [
              "area",
              "DEG",
              "U_DEG",
              "137689/200000"
            ]
          ],
          "target": "EGO",
          "sign": -1,
          "deps": [
            "DGO",
            "DEO",
            "DGP",
            "DEP",
            "EOP"
          ],
          "area_stage": 0
        },
        {
          "rule": [
            "plu",
            "BADGO"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "ABD",
            "BGO",
            "ABG",
            "BDO",
            "ABO"
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
      "initial": {},
      "relations": {},
      "updates": [],
      "physical": {},
      "coordinate": {
        "low": [
          "6131/50000",
          "123/1000",
          "13857/20000",
          "6131/50000",
          "425403/1000000",
          "617/1000",
          "30791/250000",
          "614277/1000000",
          "135001/1000000",
          "113019/500000",
          "381341/1000000",
          "61851/250000",
          "169659/500000"
        ],
        "high": [
          "42717/62500",
          "535/907",
          "220359/250000",
          "604217/1000000",
          "907/1000",
          "220359/250000",
          "334721/500000",
          "1/1",
          "754759/1000000",
          "717613/1000000",
          "907/1000",
          "717613/1000000",
          "42717/62500"
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
        "AFG-",
        "BGO-",
        "GOP-"
      ],
      "initial_box": {
        "low": [
          "6131/50000",
          "123/1000",
          "13857/20000",
          "6131/50000",
          "425403/1000000",
          "617/1000",
          "30791/250000",
          "614277/1000000",
          "135001/1000000",
          "113019/500000",
          "381341/1000000",
          "61851/250000",
          "169659/500000"
        ],
        "high": [
          "42717/62500",
          "535/907",
          "220359/250000",
          "604217/1000000",
          "907/1000",
          "220359/250000",
          "334721/500000",
          "1",
          "754759/1000000",
          "717613/1000000",
          "907/1000",
          "717613/1000000",
          "42717/62500"
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
        "AFG": -1,
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
        "EGO": -1,
        "BGO": -1,
        "BDG": 1,
        "BEG": 1,
        "GOP": -1,
        "BGP": -1,
        "AOP": -1
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
            "FACDG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "ACF",
            "ADF",
            "CFG",
            "AFG",
            "CDF"
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
            "DEG",
            "OP",
            "EGD",
            [
              "area",
              "DEG",
              "U_DEG",
              "137689/200000"
            ]
          ],
          "target": "EGO",
          "sign": -1,
          "deps": [
            "DGO",
            "DEO",
            "DGP",
            "DEP",
            "EOP"
          ],
          "area_stage": 0
        },
        {
          "rule": [
            "plu",
            "BADGO"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "ABD",
            "BGO",
            "ABG",
            "BDO",
            "ABO"
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
            "plu",
            "GABOP"
          ],
          "target": "BGP",
          "sign": -1,
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
        "L_AGO": {
          "triangle": "AGO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "AGO",
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
        "L_BHP": {
          "triangle": "BHP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HBP",
            "points": [
              "G"
            ]
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
          "value": "35277644490547/56687500000000",
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
              "-672408467189/28343750000000",
              "372121641/6250000000",
              "14666066367/125000000000",
              "5990819453/50000000000",
              "3104887989/25000000000",
              "4088871351523/22675000000000",
              "5687018373/31250000000",
              "9223622303/50000000000",
              "10911301319821/45350000000000",
              "8115952939061/28343750000000",
              "17700921678047/56687500000000",
              "56663284917/125000000000",
              "11119560476523/22675000000000",
              "32372646021/62500000000",
              "24972679569821/45350000000000",
              "35277644490547/56687500000000"
            ],
            "cell": "CB"
          }
        },
        "U_ACO": {
          "triangle": "ACO",
          "side": "hi",
          "value": "38968723787/50000000000",
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
              "-5590924809/50000000000",
              "-27420409707/500000000000",
              "20697162441/100000000000",
              "11207962611/50000000000",
              "63940695729/250000000000",
              "26724855091/100000000000",
              "140568464493/500000000000",
              "19335126171/62500000000",
              "39504963677/125000000000",
              "5492441721/15625000000",
              "3569840391/6250000000",
              "31572569453/50000000000",
              "20166867723/31250000000",
              "42968376159/62500000000",
              "17977438731/25000000000",
              "38968723787/50000000000"
            ],
            "cell": "CB"
          }
        },
        "U_ACP": {
          "triangle": "ACP",
          "side": "hi",
          "value": "145587212383/250000000000",
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
              "-16782002307/125000000000",
              "-17338348053/250000000000",
              "2642089167/15625000000",
              "9023794389/50000000000",
              "23389833399/125000000000",
              "27667762101/125000000000",
              "1488330721/6250000000",
              "63005323359/250000000000",
              "69749781097/250000000000",
              "10473074667/25000000000",
              "23829000713/50000000000",
              "30654274521/62500000000",
              "4099154859/7812500000",
              "145587212383/250000000000"
            ],
            "cell": "CB"
          }
        },
        "U_BHO": {
          "triangle": "BHO",
          "side": "hi",
          "value": "353087/500000",
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
              "-125966099/907000000",
              "658069842541/453500000000000",
              "55099408263/500000000000",
              "149942943/1000000000",
              "77630733/453500000",
              "87427436763/500000000000",
              "214599/1000000",
              "275196776846507/907000000000000",
              "141271852342541/453500000000000",
              "159946213/453500000",
              "412162032801/1000000000000",
              "476818089801/1000000000000",
              "556424341846507/907000000000000",
              "641517943/1000000000",
              "601119991/907000000",
              "353087/500000"
            ],
            "cell": "CB"
          }
        },
        "U_FHP": {
          "triangle": "FHP",
          "side": "hi",
          "value": "72793612419/125000000000",
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
              "2152403067/62500000000",
              "13184024523/250000000000",
              "12206111/62500000",
              "215808875179/1000000000000",
              "234106524199/1000000000000",
              "66269779023/250000000000",
              "4359362097/15625000000",
              "42223521777/125000000000",
              "203820397/500000000",
              "446449542199/1000000000000",
              "519158600323/1000000000000",
              "72793612419/125000000000"
            ],
            "cell": "CB"
          }
        }
      },
      "relations": {
        "2041": {
          "row": [
            "linear",
            {
              "ABC": "-93/1000",
              "BCO": "-93/1000",
              "BCG": "35277644490547/56687500000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ABO",
            "point": "G",
            "line": "BC",
            "side": "lower",
            "outer_upper": {
              "triangle": "ABO",
              "ref": "U_ABO",
              "value": "35277644490547/56687500000000"
            },
            "fan_lower": [
              {
                "triangle": "BGO",
                "ref": "L_BGO",
                "value": "93/1000"
              },
              {
                "triangle": "AGO",
                "ref": "L_AGO",
                "value": "93/1000"
              },
              {
                "triangle": "ABG",
                "ref": "L_ABG",
                "value": "93/1000"
              }
            ],
            "residual": "19461831990547/56687500000000"
          }
        },
        "2287": {
          "row": [
            "linear",
            {
              "ABC": "-279/1000",
              "BCO": "-93/1000",
              "BCG": "38968723787/50000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACO",
            "point": "G",
            "line": "BC",
            "side": "lower",
            "outer_upper": {
              "triangle": "ACO",
              "ref": "U_ACO",
              "value": "38968723787/50000000000"
            },
            "fan_lower": [
              {
                "triangle": "CGO",
                "ref": "L_CGO",
                "value": "279/1000"
              },
              {
                "triangle": "AGO",
                "ref": "L_AGO",
                "value": "93/1000"
              },
              {
                "triangle": "ACG",
                "ref": "L_ACG",
                "value": "93/1000"
              }
            ],
            "residual": "15718723787/50000000000"
          }
        },
        "2400": {
          "row": [
            "linear",
            {
              "ACG": "-93/1000",
              "AGP": "99087212383/250000000000"
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
              "value": "145587212383/250000000000"
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
            "residual": "75837212383/250000000000"
          }
        },
        "2711": {
          "row": [
            "linear",
            {
              "BCH": "-93/1000",
              "BCO": "-93/1000",
              "BCG": "353087/500000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "HBO",
            "point": "G",
            "line": "BC",
            "side": "lower",
            "outer_upper": {
              "triangle": "BHO",
              "ref": "U_BHO",
              "value": "353087/500000"
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
            "residual": "213587/500000"
          }
        },
        "3220": {
          "row": [
            "linear",
            {
              "FOP": "49543612419/125000000000",
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
              "value": "72793612419/125000000000"
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
            "residual": "37918612419/125000000000"
          }
        }
      },
      "updates": [],
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
        "146": {
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
        "148": {
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
        "154": {
          "name": "AREA_LO_CGO",
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
                2,
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
                2,
                8
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
            "triangle": "CGO",
            "side": "lo",
            "reference": "L_CGO",
            "value": "279/1000"
          }
        },
        "166": {
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
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BHP",
            "side": "lo",
            "reference": "L_BHP",
            "value": "279/1000"
          }
        },
        "1162": {
          "name": "LINEAR_2041",
          "terms": [
            [
              [
                0,
                1
              ],
              "93/1000"
            ],
            [
              [
                0,
                2
              ],
              "-93/1000"
            ],
            [
              [
                2,
                10
              ],
              "-93/1000"
            ],
            [
              [
                1,
                10
              ],
              "93/1000"
            ],
            [
              [
                2,
                8
              ],
              "35277644490547/56687500000000"
            ],
            [
              [
                1,
                8
              ],
              "-35277644490547/56687500000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2041
          }
        },
        "1408": {
          "name": "LINEAR_2287",
          "terms": [
            [
              [
                0,
                1
              ],
              "279/1000"
            ],
            [
              [
                0,
                2
              ],
              "-279/1000"
            ],
            [
              [
                2,
                10
              ],
              "-93/1000"
            ],
            [
              [
                1,
                10
              ],
              "93/1000"
            ],
            [
              [
                2,
                8
              ],
              "38968723787/50000000000"
            ],
            [
              [
                1,
                8
              ],
              "-38968723787/50000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2287
          }
        },
        "1521": {
          "name": "LINEAR_2400",
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
              "-122337212383/250000000000"
            ],
            [
              [
                6,
                12
              ],
              "99087212383/250000000000"
            ],
            [
              [
                8,
                11
              ],
              "-99087212383/250000000000"
            ],
            [
              [
                0,
                11
              ],
              "99087212383/250000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2400
          }
        },
        "1832": {
          "name": "LINEAR_2711",
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
              "-93/1000"
            ],
            [
              [
                1,
                10
              ],
              "93/1000"
            ],
            [
              [
                2,
                8
              ],
              "353087/500000"
            ],
            [
              [
                1,
                8
              ],
              "-353087/500000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2711
          }
        },
        "2341": {
          "name": "LINEAR_3220",
          "terms": [
            [
              [
                9,
                12
              ],
              "61168612419/125000000000"
            ],
            [
              [
                9
              ],
              "-49543612419/125000000000"
            ],
            [
              [
                5,
                12
              ],
              "-49543612419/125000000000"
            ],
            [
              [
                10,
                11
              ],
              "-61168612419/125000000000"
            ],
            [
              [
                5,
                10
              ],
              "49543612419/125000000000"
            ],
            [
              [
                11
              ],
              "49543612419/125000000000"
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
            "index": 3220
          }
        }
      },
      "coordinate": {
        "low": [
          "6131/50000",
          "123/1000",
          "154271/200000",
          "6131/50000",
          "528957/1000000",
          "617/1000",
          "30791/250000",
          "614277/1000000",
          "46861/250000",
          "113019/500000",
          "10113/12500",
          "79483/250000",
          "67879/200000"
        ],
        "high": [
          "322511/500000",
          "535/907",
          "220359/250000",
          "500663/1000000",
          "907/1000",
          "220359/250000",
          "134919/250000",
          "1/1",
          "698161/1000000",
          "715819/1000000",
          "907/1000",
          "358533/500000",
          "42717/62500"
        ],
        "steps": [
          {
            "factor": 146,
            "target": "a",
            "old": [
              "6131/50000",
              "42717/62500"
            ],
            "lines": [
              [
                "-116703/250000",
                "-8572757763/20000000000"
              ],
              [
                "-327699/500000",
                "-89180578581/250000000000"
              ],
              [
                "24763/1000000",
                "-8572757763/20000000000"
              ],
              [
                "-163823/1000000",
                "-89180578581/250000000000"
              ],
              [
                "-116703/250000",
                "-1288701/20000000"
              ],
              [
                "-327699/500000",
                "26653113/250000000"
              ],
              [
                "24763/1000000",
                "-1288701/20000000"
              ],
              [
                "-163823/1000000",
                "26653113/250000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "26653113/40955750"
            ],
            "new": [
              "6131/50000",
              "650779/1000000"
            ]
          },
          {
            "factor": 146,
            "target": "c",
            "old": [
              "13857/20000",
              "220359/250000"
            ],
            "lines": [
              [
                "258721/1000000",
                "-16628330511/25000000000"
              ],
              [
                "-134719/500000",
                "-272874608199/500000000000"
              ],
              [
                "258721/1000000",
                "-30242814697/50000000000"
              ],
              [
                "-134719/500000",
                "-225842529473/1000000000000"
              ],
              [
                "39219/50000",
                "-16628330511/25000000000"
              ],
              [
                "256221/1000000",
                "-272874608199/500000000000"
              ],
              [
                "39219/50000",
                "-30242814697/50000000000"
              ],
              [
                "256221/1000000",
                "-225842529473/1000000000000"
              ]
            ],
            "raw": [
              "30242814697/39219000000",
              "220359/250000"
            ],
            "new": [
              "385563/500000",
              "220359/250000"
            ]
          },
          {
            "factor": 146,
            "target": "y",
            "old": [
              "381341/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "385563/500000",
                "-1187013579/1562500000"
              ],
              [
                "385563/500000",
                "-16368465993/15625000000"
              ],
              [
                "220359/250000",
                "-19330372569/25000000000"
              ],
              [
                "220359/250000",
                "-559684627521/500000000000"
              ],
              [
                "385563/500000",
                "-34970588203/50000000000"
              ],
              [
                "385563/500000",
                "-727675136627/1000000000000"
              ],
              [
                "220359/250000",
                "-35646898813/50000000000"
              ],
              [
                "220359/250000",
                "-799462568117/1000000000000"
              ]
            ],
            "raw": [
              "35646898813/44071800000",
              "907/1000"
            ],
            "new": [
              "202209/250000",
              "907/1000"
            ]
          },
          {
            "factor": 154,
            "target": "g",
            "old": [
              "30791/250000",
              "334721/500000"
            ],
            "lines": [
              [
                "-202209/250000",
                "33890880531/125000000000"
              ],
              [
                "-202209/250000",
                "172728891549/500000000000"
              ],
              [
                "-202209/250000",
                "-8336950557/125000000000"
              ],
              [
                "-202209/250000",
                "-30365185293/500000000000"
              ],
              [
                "-202209/250000",
                "337490160823/1000000000000"
              ],
              [
                "-202209/250000",
                "411820899673/1000000000000"
              ],
              [
                "-202209/250000",
                "304325050969/1000000000000"
              ],
              [
                "-202209/250000",
                "310290284839/1000000000000"
              ],
              [
                "-907/1000",
                "21676491057/62500000000"
              ],
              [
                "-907/1000",
                "215991533301/500000000000"
              ],
              [
                "-907/1000",
                "562575513/62500000000"
              ],
              [
                "-907/1000",
                "12897456459/500000000000"
              ],
              [
                "-907/1000",
                "413186973487/1000000000000"
              ],
              [
                "-907/1000",
                "498346183177/1000000000000"
              ],
              [
                "-907/1000",
                "380021863633/1000000000000"
              ],
              [
                "-907/1000",
                "396815568343/1000000000000"
              ]
            ],
            "raw": [
              "30791/250000",
              "498346183177/907000000000"
            ],
            "new": [
              "30791/250000",
              "109889/200000"
            ]
          },
          {
            "factor": 166,
            "target": "u",
            "old": [
              "61851/250000",
              "717613/1000000"
            ],
            "lines": [
              [
                "614277/1000000",
                "-312819957/1000000000"
              ],
              [
                "614277/1000000",
                "-80031213/181400000"
              ],
              [
                "1/1",
                "-180131943/500000000"
              ],
              [
                "1/1",
                "-60651787/90700000"
              ],
              [
                "614277/1000000",
                "-54097803/200000000"
              ],
              [
                "614277/1000000",
                "-8641347/36280000"
              ],
              [
                "1/1",
                "-19870809/62500000"
              ],
              [
                "1/1",
                "-10559887/22675000"
              ]
            ],
            "raw": [
              "19870809/62500000",
              "717613/1000000"
            ],
            "new": [
              "79483/250000",
              "717613/1000000"
            ]
          },
          {
            "factor": 1162,
            "target": "z",
            "old": [
              "135001/1000000",
              "754759/1000000"
            ],
            "lines": [
              [
                "11432179306540132461/28343750000000000000",
                "-219313199943/3906250000000"
              ],
              [
                "11432179306540132461/28343750000000000000",
                "-8797934212857/100000000000000"
              ],
              [
                "2900021378315534575627/25707781250000000000000",
                "-55633571808801/3542968750000000"
              ],
              [
                "2900021378315534575627/25707781250000000000000",
                "-2231787712400799/90700000000000000"
              ],
              [
                "6688958894208126123/14171875000000000000",
                "-128319976449/1953125000000"
              ],
              [
                "6688958894208126123/14171875000000000000",
                "-5147664213951/50000000000000"
              ],
              [
                "2332403090688587610311/12853890625000000000000",
                "-44744468369493/1771484375000000"
              ],
              [
                "2332403090688587610311/12853890625000000000000",
                "-1794962132723307/45350000000000000"
              ],
              [
                "11432179306540132461/28343750000000000000",
                "-1551527119179/25000000000000"
              ],
              [
                "11432179306540132461/28343750000000000000",
                "-46948123855161/500000000000000"
              ],
              [
                "2900021378315534575627/25707781250000000000000",
                "-393578660201853/22675000000000000"
              ],
              [
                "2900021378315534575627/25707781250000000000000",
                "-11909414574514527/453500000000000000"
              ],
              [
                "6688958894208126123/14171875000000000000",
                "-907797266397/12500000000000"
              ],
              [
                "6688958894208126123/14171875000000000000",
                "-27469309412223/250000000000000"
              ],
              [
                "2332403090688587610311/12853890625000000000000",
                "-316543902175329/11337500000000000"
              ],
              [
                "2332403090688587610311/12853890625000000000000",
                "-9578396755828011/226750000000000000"
              ]
            ],
            "raw": [
              "4910577816000/35277644490547",
              "754759/1000000"
            ],
            "new": [
              "69599/500000",
              "754759/1000000"
            ]
          },
          {
            "factor": 1408,
            "target": "z",
            "old": [
              "69599/500000",
              "754759/1000000"
            ],
            "lines": [
              [
                "12628321536586581/25000000000000000",
                "-4432887266733/62500000000000"
              ],
              [
                "12628321536586581/25000000000000000",
                "-83215842548607/500000000000000"
              ],
              [
                "3203448917862282467/22675000000000000000",
                "-1124498443952331/56687500000000000"
              ],
              [
                "3203448917862282467/22675000000000000000",
                "-21109511663051049/453500000000000000"
              ],
              [
                "7388820748529283/12500000000000000",
                "-2593678765419/31250000000000"
              ],
              [
                "7388820748529283/12500000000000000",
                "-48689522376201/250000000000000"
              ],
              [
                "2576441061005186431/11337500000000000000",
                "-904401486747783/28343750000000000"
              ],
              [
                "2576441061005186431/11337500000000000000",
                "-16977768030946557/226750000000000000"
              ],
              [
                "12628321536586581/25000000000000000",
                "-1921077546237/25000000000000"
              ],
              [
                "12628321536586581/25000000000000000",
                "-86174295339483/500000000000000"
              ],
              [
                "3203448917862282467/22675000000000000000",
                "-487323178206459/22675000000000000"
              ],
              [
                "3203448917862282467/22675000000000000000",
                "-21859987675561581/453500000000000000"
              ],
              [
                "7388820748529283/12500000000000000",
                "-1124020923291/12500000000000"
              ],
              [
                "7388820748529283/12500000000000000",
                "-50420510718669/250000000000000"
              ],
              [
                "2576441061005186431/11337500000000000000",
                "-391939899309687/11337500000000000"
              ],
              [
                "2576441061005186431/11337500000000000000",
                "-17581354123158033/226750000000000000"
              ]
            ],
            "raw": [
              "5471636400/38968723787",
              "754759/1000000"
            ],
            "new": [
              "14041/100000",
              "754759/1000000"
            ]
          },
          {
            "factor": 1521,
            "target": "z",
            "old": [
              "14041/100000",
              "754759/1000000"
            ],
            "lines": [
              [
                "-12357918776837989/62500000000000000",
                "1044344925856225278187/31250000000000000000000"
              ],
              [
                "-12357918776837989/62500000000000000",
                "3313060802006219848549/31250000000000000000000"
              ],
              [
                "-12999095651837989/62500000000000000",
                "1083655480062475278187/31250000000000000000000"
              ],
              [
                "-12999095651837989/62500000000000000",
                "3521693024774032348549/31250000000000000000000"
              ],
              [
                "-12357918776837989/62500000000000000",
                "325851489220141029087/5000000000000000000000"
              ],
              [
                "-12357918776837989/62500000000000000",
                "6898794181148880891189/250000000000000000000000"
              ],
              [
                "-12999095651837989/62500000000000000",
                "332141177893141029087/5000000000000000000000"
              ],
              [
                "-12999095651837989/62500000000000000",
                "8567851963291380891189/250000000000000000000000"
              ],
              [
                "-89034951239801779/250000000000000000",
                "3302728281552699880439/62500000000000000000000"
              ],
              [
                "-89034951239801779/250000000000000000",
                "52277466854249322150509/250000000000000000000000"
              ],
              [
                "-91599658739801779/250000000000000000",
                "3381349389965199880439/62500000000000000000000"
              ],
              [
                "-91599658739801779/250000000000000000",
                "53946524636391822150509/250000000000000000000000"
              ],
              [
                "-89034951239801779/250000000000000000",
                "2114872818036804875061/25000000000000000000000"
              ],
              [
                "-89034951239801779/250000000000000000",
                "16335887309674222126653/125000000000000000000000"
              ],
              [
                "-91599658739801779/250000000000000000",
                "2146321261401804875061/25000000000000000000000"
              ],
              [
                "-91599658739801779/250000000000000000",
                "17170416200745472126653/125000000000000000000000"
              ],
              [
                "-12357918776837989/62500000000000000",
                "98084430108567908473/1953125000000000000000"
              ],
              [
                "-12357918776837989/62500000000000000",
                "383806675788708110593/3125000000000000000000"
              ],
              [
                "-12999095651837989/62500000000000000",
                "100541339746458533473/1953125000000000000000"
              ],
              [
                "-12999095651837989/62500000000000000",
                "404669898065489360593/3125000000000000000000"
              ],
              [
                "-12357918776837989/62500000000000000",
                "1751467076559364340967/12500000000000000000000"
              ],
              [
                "-12357918776837989/62500000000000000",
                "25635561251329116256179/250000000000000000000000"
              ],
              [
                "-12999095651837989/62500000000000000",
                "1767191298241864340967/12500000000000000000000"
              ],
              [
                "-12999095651837989/62500000000000000",
                "27304619033471616256179/250000000000000000000000"
              ],
              [
                "-89034951239801779/250000000000000000",
                "4352740193314422395201/62500000000000000000000"
              ],
              [
                "-89034951239801779/250000000000000000",
                "56477514501296212209557/250000000000000000000000"
              ],
              [
                "-91599658739801779/250000000000000000",
                "4431361301726922395201/62500000000000000000000"
              ],
              [
                "-91599658739801779/250000000000000000",
                "58146572283438712209557/250000000000000000000000"
              ],
              [
                "-89034951239801779/250000000000000000",
                "99713738126370710289/625000000000000000000"
              ],
              [
                "-89034951239801779/250000000000000000",
                "6426067711191084952287/31250000000000000000000"
              ],
              [
                "-91599658739801779/250000000000000000",
                "100499949210495710289/625000000000000000000"
              ],
              [
                "-91599658739801779/250000000000000000",
                "6634699933958897452287/31250000000000000000000"
              ]
            ],
            "raw": [
              "14041/100000",
              "1751467076559364340967/2471583755367597800000"
            ],
            "new": [
              "14041/100000",
              "354321/500000"
            ]
          },
          {
            "factor": 1832,
            "target": "z",
            "old": [
              "14041/100000",
              "354321/500000"
            ],
            "lines": [
              [
                "114422432481/250000000000",
                "-42889578935067/500000000000000"
              ],
              [
                "29025743163767/226750000000000",
                "-10879876223380269/453500000000000000"
              ],
              [
                "66948472983/125000000000",
                "-25094658051981/250000000000000"
              ],
              [
                "23344563447331/113375000000000",
                "-8750368917784017/226750000000000000"
              ],
              [
                "114422432481/250000000000",
                "-13628611080531/125000000000000"
              ],
              [
                "29025743163767/226750000000000",
                "-3457194156120117/113375000000000000"
              ],
              [
                "66948472983/125000000000",
                "-7974089354133/62500000000000"
              ],
              [
                "23344563447331/113375000000000",
                "-2780520997237881/56687500000000000"
              ],
              [
                "114422432481/250000000000",
                "-45848031725943/500000000000000"
              ],
              [
                "29025743163767/226750000000000",
                "-11630352235890801/453500000000000000"
              ],
              [
                "66948472983/125000000000",
                "-26825646394449/250000000000000"
              ],
              [
                "23344563447331/113375000000000",
                "-9353955009995493/226750000000000000"
              ],
              [
                "114422432481/250000000000",
                "-57472897113/500000000000"
              ],
              [
                "29025743163767/226750000000000",
                "-14579252636991/453500000000000"
              ],
              [
                "66948472983/125000000000",
                "-33627345759/250000000000"
              ],
              [
                "23344563447331/113375000000000",
                "-11725670081163/226750000000000"
              ]
            ],
            "raw": [
              "132349509/706174000",
              "354321/500000"
            ],
            "new": [
              "187417/1000000",
              "354321/500000"
            ]
          },
          {
            "factor": 2341,
            "target": "x",
            "old": [
              "113019/500000",
              "717613/1000000"
            ],
            "lines": [
              [
                "-17964485657604879/62500000000000000",
                "130034810254571936979/976562500000000000000"
              ],
              [
                "-17964485657604879/62500000000000000",
                "2849458110163662427953/15625000000000000000000"
              ],
              [
                "-20206500595104879/62500000000000000",
                "141172439834403968229/976562500000000000000"
              ],
              [
                "-20206500595104879/62500000000000000",
                "3027660183440974927953/15625000000000000000000"
              ],
              [
                "-17964485657604879/62500000000000000",
                "1773613260705084993/12500000000000000000"
              ],
              [
                "-17964485657604879/62500000000000000",
                "3146674949820062985561/15625000000000000000000"
              ],
              [
                "-20206500595104879/62500000000000000",
                "1916174919326934993/12500000000000000000"
              ],
              [
                "-20206500595104879/62500000000000000",
                "3324877023097375485561/15625000000000000000000"
              ],
              [
                "-17964485657604879/62500000000000000",
                "4881459668854603692477/31250000000000000000000"
              ],
              [
                "-17964485657604879/62500000000000000",
                "1283852392207125313011/6250000000000000000000"
              ],
              [
                "-20206500595104879/62500000000000000",
                "5685909201526697442477/31250000000000000000000"
              ],
              [
                "-20206500595104879/62500000000000000",
                "1444742298741544063011/6250000000000000000000"
              ],
              [
                "-17964485657604879/62500000000000000",
                "18217608755343140457/125000000000000000000"
              ],
              [
                "-17964485657604879/62500000000000000",
                "801714867089149825359/3906250000000000000000"
              ],
              [
                "-20206500595104879/62500000000000000",
                "21435406886031515457/125000000000000000000"
              ],
              [
                "-20206500595104879/62500000000000000",
                "902271058673161544109/3906250000000000000000"
              ],
              [
                "-929846792297577/7812500000000000",
                "382763470557029211957/7812500000000000000000"
              ],
              [
                "-929846792297577/7812500000000000",
                "15169186858134344649/244140625000000000000"
              ],
              [
                "-1210098659485077/7812500000000000",
                "471864507195685461957/7812500000000000000000"
              ],
              [
                "-1210098659485077/7812500000000000",
                "35907188506184704923/488281250000000000000"
              ],
              [
                "-929846792297577/7812500000000000",
                "1803973105844527347/31250000000000000000"
              ],
              [
                "-929846792297577/7812500000000000",
                "158505599822124826893/1953125000000000000000"
              ],
              [
                "-1210098659485077/7812500000000000",
                "2160377252399152347/31250000000000000000"
              ],
              [
                "-1210098659485077/7812500000000000",
                "180780858981788889393/1953125000000000000000"
              ],
              [
                "-929846792297577/7812500000000000",
                "2251399622936418556977/31250000000000000000000"
              ],
              [
                "-929846792297577/7812500000000000",
                "2662001658549497824221/31250000000000000000000"
              ],
              [
                "-1210098659485077/7812500000000000",
                "3055849155608512306977/31250000000000000000000"
              ],
              [
                "-1210098659485077/7812500000000000",
                "3466451191221591574221/31250000000000000000000"
              ],
              [
                "-929846792297577/7812500000000000",
                "1539473714334079983/25000000000000000000"
              ],
              [
                "-929846792297577/7812500000000000",
                "1328229317113534931019/15625000000000000000000"
              ],
              [
                "-1210098659485077/7812500000000000",
                "2183033340471754983/25000000000000000000"
              ],
              [
                "-1210098659485077/7812500000000000",
                "1730454083449581806019/15625000000000000000000"
              ]
            ],
            "raw": [
              "113019/500000",
              "385161243469065730469/537821626437812000000"
            ],
            "new": [
              "113019/500000",
              "716151/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "6131/50000",
              "604217/1000000"
            ],
            "lines": [
              [
                "-114437/500000",
                "2181843111/500000000000"
              ],
              [
                "-29641/250000",
                "-10640629677/250000000000"
              ],
              [
                "-114437/500000",
                "57294359/500000000"
              ],
              [
                "-29641/250000",
                "3634387/250000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "57294359/114437000"
            ],
            "new": [
              "6131/50000",
              "500663/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "425403/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "114437/500000",
                "-3026613247/25000000000"
              ],
              [
                "29641/250000",
                "-1344228971/12500000000"
              ],
              [
                "114437/500000",
                "-103794371731/500000000000"
              ],
              [
                "29641/250000",
                "-38090151983/250000000000"
              ]
            ],
            "raw": [
              "3026613247/5721850000",
              "907/1000"
            ],
            "new": [
              "528957/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "79483/250000",
              "717613/1000000"
            ],
            "lines": [
              [
                "-202209/250000",
                "43219537419/125000000000"
              ],
              [
                "-202209/250000",
                "99387207483/250000000000"
              ],
              [
                "-202209/250000",
                "256030231143/500000000000"
              ],
              [
                "-202209/250000",
                "281926496433/500000000000"
              ],
              [
                "-907/1000",
                "26340819501/62500000000"
              ],
              [
                "-907/1000",
                "121018528359/250000000000"
              ],
              [
                "-907/1000",
                "11755145499/20000000000"
              ],
              [
                "-907/1000",
                "65037827637/100000000000"
              ],
              [
                "-202209/250000",
                "790810419/5000000000"
              ],
              [
                "-202209/250000",
                "2149887333/12500000000"
              ],
              [
                "-202209/250000",
                "61642574517/125000000000"
              ],
              [
                "-202209/250000",
                "15842796843/31250000000"
              ],
              [
                "-907/1000",
                "14616181029/62500000000"
              ],
              [
                "-907/1000",
                "4039316721/15625000000"
              ],
              [
                "-907/1000",
                "711046761/1250000000"
              ],
              [
                "-907/1000",
                "7418684781/12500000000"
              ]
            ],
            "raw": [
              "79483/250000",
              "65037827637/90700000000"
            ],
            "new": [
              "79483/250000",
              "358533/500000"
            ]
          },
          {
            "factor": 146,
            "target": "a",
            "old": [
              "6131/50000",
              "650779/1000000"
            ],
            "lines": [
              [
                "-8517/15625",
                "-8641941333/125000000000"
              ],
              [
                "-327699/500000",
                "1255448031/62500000000"
              ],
              [
                "-2199/40000",
                "-8641941333/125000000000"
              ],
              [
                "-33057/200000",
                "1255448031/62500000000"
              ],
              [
                "-8517/15625",
                "3280641/500000000"
              ],
              [
                "-327699/500000",
                "26653113/250000000"
              ],
              [
                "-2199/40000",
                "3280641/500000000"
              ],
              [
                "-33057/200000",
                "26653113/250000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "2961457/4591250"
            ],
            "new": [
              "6131/50000",
              "322511/500000"
            ]
          },
          {
            "factor": 146,
            "target": "c",
            "old": [
              "385563/500000",
              "220359/250000"
            ],
            "lines": [
              [
                "85777/125000",
                "-16628330511/25000000000"
              ],
              [
                "81907/500000",
                "-136762629291/250000000000"
              ],
              [
                "85777/125000",
                "-30251778219/50000000000"
              ],
              [
                "81907/500000",
                "-115458424839/500000000000"
              ],
              [
                "39219/50000",
                "-16628330511/25000000000"
              ],
              [
                "130989/500000",
                "-136762629291/250000000000"
              ],
              [
                "39219/50000",
                "-30251778219/50000000000"
              ],
              [
                "130989/500000",
                "-115458424839/500000000000"
              ]
            ],
            "raw": [
              "10083926073/13073000000",
              "220359/250000"
            ],
            "new": [
              "154271/200000",
              "220359/250000"
            ]
          },
          {
            "factor": 146,
            "target": "y",
            "old": [
              "202209/250000",
              "907/1000"
            ],
            "lines": [
              [
                "154271/200000",
                "-37985838527/50000000000"
              ],
              [
                "154271/200000",
                "-522295730987/500000000000"
              ],
              [
                "220359/250000",
                "-19330372569/25000000000"
              ],
              [
                "220359/250000",
                "-278899032189/250000000000"
              ],
              [
                "154271/200000",
                "-8745238931/12500000000"
              ],
              [
                "154271/200000",
                "-91057224311/125000000000"
              ],
              [
                "220359/250000",
                "-7131172467/10000000000"
              ],
              [
                "220359/250000",
                "-79946246127/100000000000"
              ]
            ],
            "raw": [
              "2377057489/2938120000",
              "907/1000"
            ],
            "new": [
              "10113/12500",
              "907/1000"
            ]
          },
          {
            "factor": 148,
            "target": "v",
            "old": [
              "169659/500000",
              "42717/62500"
            ],
            "lines": [
              [
                "154271/200000",
                "-16729936413/50000000000"
              ],
              [
                "154271/200000",
                "-285733905153/500000000000"
              ],
              [
                "220359/250000",
                "-1087802689/3125000000"
              ],
              [
                "220359/250000",
                "-20077264909/31250000000"
              ],
              [
                "154271/200000",
                "-14282845859/50000000000"
              ],
              [
                "154271/200000",
                "-157008799679/500000000000"
              ],
              [
                "220359/250000",
                "-1495775247/5000000000"
              ],
              [
                "220359/250000",
                "-19251113307/50000000000"
              ]
            ],
            "raw": [
              "498591749/1469060000",
              "42717/62500"
            ],
            "new": [
              "67879/200000",
              "42717/62500"
            ]
          },
          {
            "factor": 154,
            "target": "g",
            "old": [
              "30791/250000",
              "109889/200000"
            ],
            "lines": [
              [
                "-10113/12500",
                "242855373011/1000000000000"
              ],
              [
                "-10113/12500",
                "155642127237/500000000000"
              ],
              [
                "-10113/12500",
                "-20688740157/500000000000"
              ],
              [
                "-10113/12500",
                "-7581392019/250000000000"
              ],
              [
                "-10113/12500",
                "83677720283/250000000000"
              ],
              [
                "-10113/12500",
                "80627952519/200000000000"
              ],
              [
                "-10113/12500",
                "38242147029/125000000000"
              ],
              [
                "-10113/12500",
                "31698908847/100000000000"
              ],
              [
                "-907/1000",
                "318417308811/1000000000000"
              ],
              [
                "-907/1000",
                "198814862517/500000000000"
              ],
              [
                "-907/1000",
                "17092227743/500000000000"
              ],
              [
                "-907/1000",
                "14004975621/250000000000"
              ],
              [
                "-907/1000",
                "102568204233/250000000000"
              ],
              [
                "-907/1000",
                "97897046631/200000000000"
              ],
              [
                "-907/1000",
                "11921847251/31250000000"
              ],
              [
                "-907/1000",
                "40333455903/100000000000"
              ]
            ],
            "raw": [
              "30791/250000",
              "97897046631/181400000000"
            ],
            "new": [
              "30791/250000",
              "134919/250000"
            ]
          },
          {
            "factor": 1521,
            "target": "z",
            "old": [
              "187417/1000000",
              "354321/500000"
            ],
            "lines": [
              [
                "-12359249839337989/62500000000000000",
                "417817598632329979551/12500000000000000000000"
              ],
              [
                "-12359249839337989/62500000000000000",
                "6577756514333541610227/62500000000000000000000"
              ],
              [
                "-12999095651837989/62500000000000000",
                "433509177338079979551/12500000000000000000000"
              ],
              [
                "-12999095651837989/62500000000000000",
                "6990471140003916610227/62500000000000000000000"
              ],
              [
                "-12359249839337989/62500000000000000",
                "805771775406173055071/12500000000000000000000"
              ],
              [
                "-12359249839337989/62500000000000000",
                "1862789760012961616179/62500000000000000000000"
              ],
              [
                "-12999095651837989/62500000000000000",
                "821463354111923055071/12500000000000000000000"
              ],
              [
                "-12999095651837989/62500000000000000",
                "2275504385683336616179/62500000000000000000000"
              ],
              [
                "-44493037392314139/125000000000000000",
                "660292980076961109733/12500000000000000000000"
              ],
              [
                "-44493037392314139/125000000000000000",
                "6477631223448349276249/31250000000000000000000"
              ],
              [
                "-45772729017314139/125000000000000000",
                "675984558782711109733/12500000000000000000000"
              ],
              [
                "-45772729017314139/125000000000000000",
                "6683988536283536776249/31250000000000000000000"
              ],
              [
                "-44493037392314139/125000000000000000",
                "1048247156850804185253/12500000000000000000000"
              ],
              [
                "-44493037392314139/125000000000000000",
                "164805913851522371169/1250000000000000000000"
              ],
              [
                "-45772729017314139/125000000000000000",
                "1063938735556554185253/12500000000000000000000"
              ],
              [
                "-45772729017314139/125000000000000000",
                "173060206364929871169/1250000000000000000000"
              ],
              [
                "-12359249839337989/62500000000000000",
                "98089530573685095973/1953125000000000000000"
              ],
              [
                "-12359249839337989/62500000000000000",
                "953441687441226847951/7812500000000000000000"
              ],
              [
                "-12999095651837989/62500000000000000",
                "100541339746458533473/1953125000000000000000"
              ],
              [
                "-12999095651837989/62500000000000000",
                "1005031015650023722951/7812500000000000000000"
              ],
              [
                "-12359249839337989/62500000000000000",
                "269648045236791344237/1953125000000000000000"
              ],
              [
                "-12359249839337989/62500000000000000",
                "807833541319927419551/7812500000000000000000"
              ],
              [
                "-12999095651837989/62500000000000000",
                "272099854409564781737/1953125000000000000000"
              ],
              [
                "-12999095651837989/62500000000000000",
                "859422869528724294551/7812500000000000000000"
              ],
              [
                "-44493037392314139/125000000000000000",
                "2175620942790539361023/31250000000000000000000"
              ],
              [
                "-44493037392314139/125000000000000000",
                "14005039432092971725879/62500000000000000000000"
              ],
              [
                "-45772729017314139/125000000000000000",
                "2214849889554914361023/31250000000000000000000"
              ],
              [
                "-45772729017314139/125000000000000000",
                "14417754057763346725879/62500000000000000000000"
              ],
              [
                "-44493037392314139/125000000000000000",
                "4920557177400239333247/31250000000000000000000"
              ],
              [
                "-44493037392314139/125000000000000000",
                "12840174263122576298679/62500000000000000000000"
              ],
              [
                "-45772729017314139/125000000000000000",
                "4959786124164614333247/31250000000000000000000"
              ],
              [
                "-45772729017314139/125000000000000000",
                "13252888888792951298679/62500000000000000000000"
              ]
            ],
            "raw": [
              "187417/1000000",
              "269648045236791344237/386226557479312156250"
            ],
            "new": [
              "187417/1000000",
              "698161/1000000"
            ]
          },
          {
            "factor": 1832,
            "target": "z",
            "old": [
              "187417/1000000",
              "698161/1000000"
            ],
            "lines": [
              [
                "45785144377/100000000000",
                "-17164353299751/200000000000000"
              ],
              [
                "11624964711339/90700000000000",
                "-4358072997642357/181400000000000000"
              ],
              [
                "66948472983/125000000000",
                "-25098255313929/250000000000000"
              ],
              [
                "23344563447331/113375000000000",
                "-8751623263193853/226750000000000000"
              ],
              [
                "45785144377/100000000000",
                "-272699280039/2500000000000"
              ],
              [
                "11624964711339/90700000000000",
                "-69239041405173/2267500000000000"
              ],
              [
                "66948472983/125000000000",
                "-398749433481/3125000000000"
              ],
              [
                "23344563447331/113375000000000",
                "-139041729179517/2834375000000000"
              ],
              [
                "45785144377/100000000000",
                "-18345692417631/200000000000000"
              ],
              [
                "11624964711339/90700000000000",
                "-4658018006975517/181400000000000000"
              ],
              [
                "66948472983/125000000000",
                "-26825646394449/250000000000000"
              ],
              [
                "23344563447331/113375000000000",
                "-9353955009995493/226750000000000000"
              ],
              [
                "45785144377/100000000000",
                "-22997281521/200000000000"
              ],
              [
                "11624964711339/90700000000000",
                "-5839068321747/181400000000000"
              ],
              [
                "66948472983/125000000000",
                "-33627345759/250000000000"
              ],
              [
                "23344563447331/113375000000000",
                "-11725670081163/226750000000000"
              ]
            ],
            "raw": [
              "18909783/100882000",
              "698161/1000000"
            ],
            "new": [
              "46861/250000",
              "698161/1000000"
            ]
          },
          {
            "factor": 2341,
            "target": "x",
            "old": [
              "113019/500000",
              "716151/1000000"
            ],
            "lines": [
              [
                "-7184852266410699/25000000000000000",
                "416109265470422361567/3125000000000000000000"
              ],
              [
                "-7184852266410699/25000000000000000",
                "1139862181455353852493/6250000000000000000000"
              ],
              [
                "-8081658241410699/25000000000000000",
                "451749680125884861567/3125000000000000000000"
              ],
              [
                "-8081658241410699/25000000000000000",
                "1211143010766278852493/6250000000000000000000"
              ],
              [
                "-7184852266410699/25000000000000000",
                "17733778839568435659/125000000000000000000"
              ],
              [
                "-7184852266410699/25000000000000000",
                "1258501852262334002541/6250000000000000000000"
              ],
              [
                "-8081658241410699/25000000000000000",
                "19159395425786935659/125000000000000000000"
              ],
              [
                "-8081658241410699/25000000000000000",
                "1329782681573259002541/6250000000000000000000"
              ],
              [
                "-7184852266410699/25000000000000000",
                "487920739826912438571/3125000000000000000000"
              ],
              [
                "-7184852266410699/25000000000000000",
                "1283485130168334006501/6250000000000000000000"
              ],
              [
                "-8081658241410699/25000000000000000",
                "568304373985581188571/3125000000000000000000"
              ],
              [
                "-8081658241410699/25000000000000000",
                "1444252398485671506501/6250000000000000000000"
              ],
              [
                "-7184852266410699/25000000000000000",
                "18214596043719984237/125000000000000000000"
              ],
              [
                "-7184852266410699/25000000000000000",
                "1282542712469911431441/6250000000000000000000"
              ],
              [
                "-8081658241410699/25000000000000000",
                "21429941410066734237/125000000000000000000"
              ],
              [
                "-8081658241410699/25000000000000000",
                "1443309980787248931441/6250000000000000000000"
              ],
              [
                "-929846792297577/7812500000000000",
                "19145263133208025599/390625000000000000000"
              ],
              [
                "-929846792297577/7812500000000000",
                "121430702694943530003/1953125000000000000000"
              ],
              [
                "-1210098659485077/7812500000000000",
                "23600314965140838099/390625000000000000000"
              ],
              [
                "-1210098659485077/7812500000000000",
                "143705961854607592503/1953125000000000000000"
              ],
              [
                "-929846792297577/7812500000000000",
                "1803973105844527347/31250000000000000000"
              ],
              [
                "-929846792297577/7812500000000000",
                "158505599822124826893/1953125000000000000000"
              ],
              [
                "-1210098659485077/7812500000000000",
                "2160377252399152347/31250000000000000000"
              ],
              [
                "-1210098659485077/7812500000000000",
                "180780858981788889393/1953125000000000000000"
              ],
              [
                "-929846792297577/7812500000000000",
                "56243394855538570449/781250000000000000000"
              ],
              [
                "-929846792297577/7812500000000000",
                "332625748335499656261/3906250000000000000000"
              ],
              [
                "-1210098659485077/7812500000000000",
                "76339303395205757949/781250000000000000000"
              ],
              [
                "-1210098659485077/7812500000000000",
                "433105291033835593761/3906250000000000000000"
              ],
              [
                "-929846792297577/7812500000000000",
                "3848354813764828983/62500000000000000000"
              ],
              [
                "-929846792297577/7812500000000000",
                "664073474547971093697/7812500000000000000000"
              ],
              [
                "-1210098659485077/7812500000000000",
                "5456027496938203983/62500000000000000000"
              ],
              [
                "-1210098659485077/7812500000000000",
                "865032559944642968697/7812500000000000000000"
              ]
            ],
            "raw": [
              "113019/500000",
              "48122810114870621529/67227703304726500000"
            ],
            "new": [
              "113019/500000",
              "715819/1000000"
            ]
          }
        ]
      }
    },
    {
      "id": 5,
      "assumptions": [
        "AGO+",
        "AGP+",
        "DGP-",
        "AFG-",
        "BGO-",
        "GOP-"
      ],
      "initial_box": {
        "low": [
          "6131/50000",
          "123/1000",
          "154271/200000",
          "6131/50000",
          "528957/1000000",
          "617/1000",
          "30791/250000",
          "614277/1000000",
          "46861/250000",
          "113019/500000",
          "10113/12500",
          "79483/250000",
          "67879/200000"
        ],
        "high": [
          "322511/500000",
          "535/907",
          "220359/250000",
          "500663/1000000",
          "907/1000",
          "220359/250000",
          "134919/250000",
          "1",
          "698161/1000000",
          "715819/1000000",
          "907/1000",
          "358533/500000",
          "42717/62500"
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
        "AFG": -1,
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
        "EGO": -1,
        "BGO": -1,
        "BDG": 1,
        "BEG": 1,
        "GOP": -1,
        "BGP": -1,
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
            "FACDG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "ACF",
            "ADF",
            "CFG",
            "AFG",
            "CDF"
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
            "DEG",
            "OP",
            "EGD",
            [
              "area",
              "DEG",
              "U_DEG",
              "137689/200000"
            ]
          ],
          "target": "EGO",
          "sign": -1,
          "deps": [
            "DGO",
            "DEO",
            "DGP",
            "DEP",
            "EOP"
          ],
          "area_stage": 0
        },
        {
          "rule": [
            "plu",
            "BADGO"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "ABD",
            "BGO",
            "ABG",
            "BDO",
            "ABO"
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
            "plu",
            "GABOP"
          ],
          "target": "BGP",
          "sign": -1,
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
            "cap",
            "ABO",
            [
              "G"
            ],
            "P",
            [
              "area",
              "ABO",
              "U_ABO",
              "35277644490547/56687500000000"
            ]
          ],
          "target": "BOP",
          "sign": -1,
          "deps": [
            "ABP",
            "AOP"
          ],
          "area_stage": 4
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
        "L_BHP": {
          "triangle": "BHP",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HBP",
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
          "value": "279468682868663/453500000000000",
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
              "2803660989/25000000000",
              "3104887989/25000000000",
              "41493424209/250000000000",
              "8610169289/50000000000",
              "44505694209/250000000000",
              "9212623289/50000000000",
              "54997440233063/226750000000000",
              "68099590233063/226750000000000",
              "9809345476523/22675000000000",
              "240946608509/500000000000",
              "11119560476523/22675000000000",
              "22342273464123/45350000000000",
              "246971148509/500000000000",
              "24962703464123/45350000000000",
              "253264382868663/453500000000000",
              "279468682868663/453500000000000"
            ],
            "cell": "CB"
          }
        },
        "U_ACO": {
          "triangle": "ACO",
          "side": "hi",
          "value": "38957724773/50000000000",
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
              "136157793613/500000000000",
              "72592713171/250000000000",
              "173938761513/500000000000",
              "94179080811/250000000000",
              "27859513933/50000000000",
              "36764694213/62500000000",
              "303145186433/500000000000",
              "7715590311/12500000000",
              "15818801967/25000000000",
              "31637610723/50000000000",
              "82974630401/125000000000",
              "346317921713/500000000000",
              "6928090249/10000000000",
              "17320229017/25000000000",
              "17977438731/25000000000",
              "38957724773/50000000000"
            ],
            "cell": "CB"
          }
        },
        "U_ACP": {
          "triangle": "ACP",
          "side": "hi",
          "value": "72785222049/125000000000",
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
              "-16079376467/250000000000",
              "-30673780081/1000000000000",
              "4828317627/25000000000",
              "41239060393/200000000000",
              "226776430867/1000000000000",
              "11502905537/50000000000",
              "117365867127/500000000000",
              "7467635897/31250000000",
              "51027422609/200000000000",
              "13949996091/50000000000",
              "4716008163/10000000000",
              "246090972601/500000000000",
              "124103639913/250000000000",
              "26027131369/50000000000",
              "4166718479/7812500000",
              "72785222049/125000000000"
            ],
            "cell": "CB"
          }
        },
        "U_BCO": {
          "triangle": "BCO",
          "side": "hi",
          "value": "171975363/250000000",
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
              "332958359061/2267500000000",
              "32923797/200000000",
              "668627194269/2834375000000",
              "66115613/250000000",
              "1311362823/2500000000",
              "117611597/200000000",
              "1917515817/3125000000",
              "171975363/250000000"
            ],
            "cell": "CB"
          }
        },
        "U_BHO": {
          "triangle": "BHO",
          "side": "hi",
          "value": "35219/50000",
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
              "51426433/453500000",
              "81402896763/500000000000",
              "77630733/453500000",
              "87427436763/500000000000",
              "1265937/6250000",
              "214599/1000000",
              "115067552342541/453500000000000",
              "141271852342541/453500000000000",
              "463666996863/1000000000000",
              "475716076863/1000000000000",
              "503016216111741/907000000000000",
              "547084233/907000000",
              "555424816111741/907000000000000",
              "599492833/907000000",
              "17308273/25000000",
              "35219/50000"
            ],
            "cell": "CB"
          }
        },
        "U_CDH": {
          "triangle": "CDH",
          "side": "hi",
          "value": "122966781673/200000000000",
          "witness": {
            "kind": "vertices",
            "signed": "CDH",
            "used": [
              2,
              3,
              7
            ],
            "values": [
              "45228205137/250000000000",
              "2833071029/12500000000",
              "47006982953/200000000000",
              "3232285501/10000000000",
              "64266691287/125000000000",
              "52664027303/100000000000",
              "139966598017/250000000000",
              "122966781673/200000000000"
            ],
            "cell": "CB"
          }
        },
        "U_FHP": {
          "triangle": "FHP",
          "side": "hi",
          "value": "29114051439/50000000000",
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
              "3852670051/62500000000",
              "19985092459/250000000000",
              "12206111/62500000",
              "107798942349/500000000000",
              "116947766859/500000000000",
              "4359362097/15625000000",
              "73058969709/250000000000",
              "91231143847/250000000000",
              "81518657/200000000",
              "223095521359/500000000000",
              "51887973927/100000000000",
              "29114051439/50000000000"
            ],
            "cell": "CB"
          }
        }
      },
      "relations": {
        "5": {
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
        "6": {
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
        "9": {
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
        "565": {
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
        "1421": {
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
        "2575": {
          "row": [
            "linear",
            {
              "ACG": "-93/1000",
              "AGP": "49535222049/125000000000"
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
              "value": "72785222049/125000000000"
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
            "residual": "37910222049/125000000000"
          }
        },
        "2777": {
          "row": [
            "linear",
            {
              "BCO": "125475363/250000000",
              "BCP": "-171975363/250000000"
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
              "value": "171975363/250000000"
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
            "residual": "102225363/250000000"
          }
        },
        "3028": {
          "row": [
            "linear",
            {
              "BCH": "-93/1000",
              "BCO": "-93/1000",
              "BCG": "35219/50000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "HBO",
            "point": "G",
            "line": "BC",
            "side": "lower",
            "outer_upper": {
              "triangle": "BHO",
              "ref": "U_BHO",
              "value": "35219/50000"
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
            "residual": "21269/50000"
          }
        },
        "3559": {
          "row": [
            "linear",
            {
              "FOP": "19814051439/50000000000",
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
              "value": "29114051439/50000000000"
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
            "residual": "15164051439/50000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0012",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "81431/200000",
          "sources": [
            "U_ACO",
            "L_ACP",
            "L_COP"
          ]
        },
        {
          "id": "T0051",
          "relation": 565,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "25491/200000",
          "sources": [
            "L_ABP",
            "L_COP",
            "L_ACP",
            "L_BOP",
            "T0012"
          ]
        },
        {
          "id": "T0065",
          "relation": 1421,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "24561/250000",
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
          "id": "T0113",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "71061/250000",
          "sources": [
            "L_ACG",
            "T0065",
            "L_AGP"
          ]
        },
        {
          "id": "T0118",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "62691/200000",
          "sources": [
            "T0051",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0133",
          "relation": 565,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "32163/250000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0113",
            "L_BOP",
            "T0012"
          ]
        },
        {
          "id": "T0140",
          "relation": 1421,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "20847/200000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0113",
            "L_BGO",
            "L_AGP",
            "T0118",
            "U_ABO"
          ]
        },
        {
          "id": "T0155",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "401911/1000000",
          "sources": [
            "U_ACO",
            "T0113",
            "L_COP"
          ]
        },
        {
          "id": "T0156",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "58047/200000",
          "sources": [
            "L_ACG",
            "T0140",
            "L_AGP"
          ]
        },
        {
          "id": "T0157",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "78663/250000",
          "sources": [
            "T0133",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0165",
          "relation": 565,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "131717/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0156",
            "L_BOP",
            "T0155"
          ]
        },
        {
          "id": "T0170",
          "relation": 1421,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "2633/25000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0156",
            "L_BGO",
            "L_AGP",
            "T0157",
            "U_ABO"
          ]
        },
        {
          "id": "T0175",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "4949/12500",
          "sources": [
            "U_ACO",
            "T0156",
            "L_COP"
          ]
        },
        {
          "id": "T0176",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "7283/25000",
          "sources": [
            "L_ACG",
            "T0170",
            "L_AGP"
          ]
        },
        {
          "id": "T0177",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "317717/1000000",
          "sources": [
            "T0165",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0184",
          "relation": 565,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "26793/200000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0176",
            "L_BOP",
            "T0175"
          ]
        },
        {
          "id": "T0189",
          "relation": 1421,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "52973/500000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0176",
            "L_BGO",
            "L_AGP",
            "T0177",
            "U_ABO"
          ]
        },
        {
          "id": "T0195",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "78967/200000",
          "sources": [
            "U_ACO",
            "T0176",
            "L_COP"
          ]
        },
        {
          "id": "T0196",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "145973/500000",
          "sources": [
            "L_ACG",
            "T0189",
            "L_AGP"
          ]
        },
        {
          "id": "T0197",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "63993/200000",
          "sources": [
            "T0184",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0204",
          "relation": 565,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "134481/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0196",
            "L_BOP",
            "T0195"
          ]
        },
        {
          "id": "T0209",
          "relation": 1421,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "5319/50000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0196",
            "L_BGO",
            "L_AGP",
            "T0197",
            "U_ABO"
          ]
        },
        {
          "id": "T0215",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "394209/1000000",
          "sources": [
            "U_ACO",
            "T0196",
            "L_COP"
          ]
        },
        {
          "id": "T0216",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "14619/50000",
          "sources": [
            "L_ACG",
            "T0209",
            "L_AGP"
          ]
        },
        {
          "id": "T0217",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "320481/1000000",
          "sources": [
            "T0204",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0224",
          "relation": 565,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "134797/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0216",
            "L_BOP",
            "T0215"
          ]
        },
        {
          "id": "T0229",
          "relation": 1421,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "106523/1000000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0216",
            "L_BGO",
            "L_AGP",
            "T0217",
            "U_ABO"
          ]
        },
        {
          "id": "T0235",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "15751/40000",
          "sources": [
            "U_ACO",
            "T0216",
            "L_COP"
          ]
        },
        {
          "id": "T0236",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "292523/1000000",
          "sources": [
            "L_ACG",
            "T0229",
            "L_AGP"
          ]
        },
        {
          "id": "T0237",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "320797/1000000",
          "sources": [
            "T0224",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0244",
          "relation": 565,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "134979/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0236",
            "L_BOP",
            "T0235"
          ]
        },
        {
          "id": "T0249",
          "relation": 1421,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "3331/31250",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0236",
            "L_BGO",
            "L_AGP",
            "T0237",
            "U_ABO"
          ]
        },
        {
          "id": "T0255",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "12301/31250",
          "sources": [
            "U_ACO",
            "T0236",
            "L_COP"
          ]
        },
        {
          "id": "T0256",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "18287/62500",
          "sources": [
            "L_ACG",
            "T0249",
            "L_AGP"
          ]
        },
        {
          "id": "T0257",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "320979/1000000",
          "sources": [
            "T0244",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0264",
          "relation": 565,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "27009/200000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0256",
            "L_BOP",
            "T0255"
          ]
        },
        {
          "id": "T0269",
          "relation": 1421,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "10663/100000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0256",
            "L_BGO",
            "L_AGP",
            "T0257",
            "U_ABO"
          ]
        },
        {
          "id": "T0274",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "393563/1000000",
          "sources": [
            "U_ACO",
            "T0256",
            "L_COP"
          ]
        },
        {
          "id": "T0275",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "29263/100000",
          "sources": [
            "L_ACG",
            "T0269",
            "L_AGP"
          ]
        },
        {
          "id": "T0276",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "64209/200000",
          "sources": [
            "T0264",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0282",
          "relation": 565,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "135077/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0275",
            "L_BOP",
            "T0274"
          ]
        },
        {
          "id": "T0287",
          "relation": 1421,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "53323/500000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0275",
            "L_BGO",
            "L_AGP",
            "T0276",
            "U_ABO"
          ]
        },
        {
          "id": "T0292",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "15741/40000",
          "sources": [
            "U_ACO",
            "T0275",
            "L_COP"
          ]
        },
        {
          "id": "T0293",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "146323/500000",
          "sources": [
            "L_ACG",
            "T0287",
            "L_AGP"
          ]
        },
        {
          "id": "T0294",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "321077/1000000",
          "sources": [
            "T0282",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0300",
          "relation": 565,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "67547/500000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0293",
            "L_BOP",
            "T0292"
          ]
        },
        {
          "id": "T0305",
          "relation": 1421,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "106653/1000000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0293",
            "L_BGO",
            "L_AGP",
            "T0294",
            "U_ABO"
          ]
        },
        {
          "id": "T0310",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "393509/1000000",
          "sources": [
            "U_ACO",
            "T0293",
            "L_COP"
          ]
        },
        {
          "id": "T0311",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "292653/1000000",
          "sources": [
            "L_ACG",
            "T0305",
            "L_AGP"
          ]
        },
        {
          "id": "T0312",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "160547/500000",
          "sources": [
            "T0300",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0318",
          "relation": 565,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "135101/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0311",
            "L_BOP",
            "T0310"
          ]
        },
        {
          "id": "T0323",
          "relation": 1421,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "106657/1000000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0311",
            "L_BGO",
            "L_AGP",
            "T0312",
            "U_ABO"
          ]
        },
        {
          "id": "T0329",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "292657/1000000",
          "sources": [
            "L_ACG",
            "T0323",
            "L_AGP"
          ]
        },
        {
          "id": "T0330",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "321101/1000000",
          "sources": [
            "T0318",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0340",
          "relation": 1421,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "106659/1000000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0329",
            "L_BGO",
            "L_AGP",
            "T0330",
            "U_ABO"
          ]
        },
        {
          "id": "T0345",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "196749/500000",
          "sources": [
            "U_ACO",
            "T0329",
            "L_COP"
          ]
        },
        {
          "id": "T0346",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "292659/1000000",
          "sources": [
            "L_ACG",
            "T0340",
            "L_AGP"
          ]
        },
        {
          "id": "T0353",
          "relation": 565,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "67553/500000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0346",
            "L_BOP",
            "T0345"
          ]
        },
        {
          "id": "T0361",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "160553/500000",
          "sources": [
            "T0353",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0366",
          "relation": 1421,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "5333/50000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0346",
            "L_BGO",
            "L_AGP",
            "T0361",
            "U_ABO"
          ]
        },
        {
          "id": "T0369",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "14633/50000",
          "sources": [
            "L_ACG",
            "T0366",
            "L_AGP"
          ]
        },
        {
          "id": "T0371",
          "relation": 18,
          "rule": "sum",
          "triangle": "CGO",
          "side": "lo",
          "value": "14633/50000",
          "sources": [
            "T0366",
            "L_COP",
            "L_GOP"
          ]
        },
        {
          "id": "T0376",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "78699/200000",
          "sources": [
            "U_ACO",
            "T0369",
            "L_COP"
          ]
        },
        {
          "id": "T0378",
          "relation": 565,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "33777/250000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0369",
            "L_BOP",
            "T0376"
          ]
        },
        {
          "id": "T0380",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "80277/250000",
          "sources": [
            "T0378",
            "L_COP",
            "L_BOP"
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
              "-80277/250000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCO",
            "side": "lo",
            "reference": "T0380",
            "value": "80277/250000"
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
        "146": {
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
        "148": {
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
              "-14633/50000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACP",
            "side": "lo",
            "reference": "T0369",
            "value": "14633/50000"
          }
        },
        "154": {
          "name": "AREA_LO_CGO",
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
                2,
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
                2,
                8
              ],
              "-1"
            ],
            [
              [],
              "-14633/50000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CGO",
            "side": "lo",
            "reference": "T0371",
            "value": "14633/50000"
          }
        },
        "166": {
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
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BHP",
            "side": "lo",
            "reference": "L_BHP",
            "value": "279/1000"
          }
        },
        "1599": {
          "name": "LINEAR_2575",
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
              "-61160222049/125000000000"
            ],
            [
              [
                6,
                12
              ],
              "49535222049/125000000000"
            ],
            [
              [
                8,
                11
              ],
              "-49535222049/125000000000"
            ],
            [
              [
                0,
                11
              ],
              "49535222049/125000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2575
          }
        },
        "1801": {
          "name": "LINEAR_2777",
          "terms": [
            [
              [
                2,
                10
              ],
              "125475363/250000000"
            ],
            [
              [
                1,
                10
              ],
              "-125475363/250000000"
            ],
            [
              [
                2,
                12
              ],
              "-171975363/250000000"
            ],
            [
              [
                1,
                12
              ],
              "171975363/250000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2777
          }
        },
        "2052": {
          "name": "LINEAR_3028",
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
              "-93/1000"
            ],
            [
              [
                1,
                10
              ],
              "93/1000"
            ],
            [
              [
                2,
                8
              ],
              "35219/50000"
            ],
            [
              [
                1,
                8
              ],
              "-35219/50000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3028
          }
        },
        "2583": {
          "name": "LINEAR_3559",
          "terms": [
            [
              [
                9,
                12
              ],
              "24464051439/50000000000"
            ],
            [
              [
                9
              ],
              "-19814051439/50000000000"
            ],
            [
              [
                5,
                12
              ],
              "-19814051439/50000000000"
            ],
            [
              [
                10,
                11
              ],
              "-24464051439/50000000000"
            ],
            [
              [
                5,
                10
              ],
              "19814051439/50000000000"
            ],
            [
              [
                11
              ],
              "19814051439/50000000000"
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
            "index": 3559
          }
        }
      },
      "coordinate": {
        "low": [
          "6131/50000",
          "123/1000",
          "385913/500000",
          "6131/50000",
          "33091/62500",
          "617/1000",
          "30791/250000",
          "614277/1000000",
          "187977/1000000",
          "113019/500000",
          "40473/50000",
          "320603/1000000",
          "355317/1000000"
        ],
        "high": [
          "39591/62500",
          "527403/1000000",
          "220359/250000",
          "125041/250000",
          "907/1000",
          "220359/250000",
          "65487/125000",
          "1/1",
          "163881/250000",
          "713133/1000000",
          "907/1000",
          "178503/250000",
          "661759/1000000"
        ],
        "steps": [
          {
            "factor": 50,
            "target": "d",
            "old": [
              "6131/50000",
              "500663/1000000"
            ],
            "lines": [
              [
                "-45729/200000",
                "5588674653/200000000000"
              ],
              [
                "-29641/250000",
                "-7571185563/250000000000"
              ],
              [
                "-45729/200000",
                "22876203/200000000"
              ],
              [
                "-29641/250000",
                "3634387/250000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "7625401/15243000"
            ],
            "new": [
              "6131/50000",
              "15633/31250"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "528957/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "45729/200000",
                "-1210364499/10000000000"
              ],
              [
                "29641/250000",
                "-1344228971/12500000000"
              ],
              [
                "45729/200000",
                "-1296131457/6250000000"
              ],
              [
                "29641/250000",
                "-1189940253/7812500000"
              ]
            ],
            "raw": [
              "403454833/762150000",
              "907/1000"
            ],
            "new": [
              "132341/250000",
              "907/1000"
            ]
          },
          {
            "factor": 88,
            "target": "b",
            "old": [
              "123/1000",
              "535/907"
            ],
            "lines": [
              [
                "-10113/12500",
                "757372623/2500000000"
              ],
              [
                "-10113/12500",
                "1225028067/3125000000"
              ],
              [
                "-907/1000",
                "75702197/200000000"
              ],
              [
                "-907/1000",
                "119588613/250000000"
              ]
            ],
            "raw": [
              "123/1000",
              "119588613/226750000"
            ],
            "new": [
              "123/1000",
              "527403/1000000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "79483/250000",
              "358533/500000"
            ],
            "lines": [
              [
                "-10113/12500",
                "69195837197/200000000000"
              ],
              [
                "-10113/12500",
                "39767817723/100000000000"
              ],
              [
                "-10113/12500",
                "3201302553/6250000000"
              ],
              [
                "-10113/12500",
                "22556295989/40000000000"
              ],
              [
                "-907/1000",
                "84308224357/200000000000"
              ],
              [
                "-907/1000",
                "48402364779/100000000000"
              ],
              [
                "-907/1000",
                "14694258607/25000000000"
              ],
              [
                "-907/1000",
                "130050574057/200000000000"
              ],
              [
                "-10113/12500",
                "4948379643/31250000000"
              ],
              [
                "-10113/12500",
                "5380337487/31250000000"
              ],
              [
                "-10113/12500",
                "30818734263/62500000000"
              ],
              [
                "-10113/12500",
                "31682649951/62500000000"
              ],
              [
                "-907/1000",
                "29238760547/125000000000"
              ],
              [
                "-907/1000",
                "4039316721/15625000000"
              ],
              [
                "-907/1000",
                "71082710501/125000000000"
              ],
              [
                "-907/1000",
                "37079241861/62500000000"
              ]
            ],
            "raw": [
              "79483/250000",
              "130050574057/181400000000"
            ],
            "new": [
              "79483/250000",
              "11202/15625"
            ]
          },
          {
            "factor": 146,
            "target": "a",
            "old": [
              "6131/50000",
              "322511/500000"
            ],
            "lines": [
              [
                "-545317/1000000",
                "-171982377/2500000000"
              ],
              [
                "-327699/500000",
                "63334317/3125000000"
              ],
              [
                "-3471/62500",
                "-171982377/2500000000"
              ],
              [
                "-165617/1000000",
                "63334317/3125000000"
              ],
              [
                "-545317/1000000",
                "1353797/200000000"
              ],
              [
                "-327699/500000",
                "26653113/250000000"
              ],
              [
                "-3471/62500",
                "1353797/200000000"
              ],
              [
                "-165617/1000000",
                "26653113/250000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "26653113/41404250"
            ],
            "new": [
              "6131/50000",
              "643729/1000000"
            ]
          },
          {
            "factor": 146,
            "target": "c",
            "old": [
              "154271/200000",
              "220359/250000"
            ],
            "lines": [
              [
                "34321/50000",
                "-16628330511/25000000000"
              ],
              [
                "165311/1000000",
                "-273671392149/500000000000"
              ],
              [
                "34321/50000",
                "-30253813711/50000000000"
              ],
              [
                "165311/1000000",
                "-232056550949/1000000000000"
              ],
              [
                "39219/50000",
                "-16628330511/25000000000"
              ],
              [
                "263271/1000000",
                "-273671392149/500000000000"
              ],
              [
                "39219/50000",
                "-30253813711/50000000000"
              ],
              [
                "263271/1000000",
                "-232056550949/1000000000000"
              ]
            ],
            "raw": [
              "30253813711/39219000000",
              "220359/250000"
            ],
            "new": [
              "771407/1000000",
              "220359/250000"
            ]
          },
          {
            "factor": 146,
            "target": "y",
            "old": [
              "10113/12500",
              "907/1000"
            ],
            "lines": [
              [
                "771407/1000000",
                "-37986157339/50000000000"
              ],
              [
                "771407/1000000",
                "-1043919841001/1000000000000"
              ],
              [
                "220359/250000",
                "-19330372569/25000000000"
              ],
              [
                "220359/250000",
                "-557374349571/500000000000"
              ],
              [
                "771407/1000000",
                "-8745827507/12500000000"
              ],
              [
                "771407/1000000",
                "-182158401913/250000000000"
              ],
              [
                "220359/250000",
                "-35657897827/50000000000"
              ],
              [
                "220359/250000",
                "-799462465793/1000000000000"
              ]
            ],
            "raw": [
              "35657897827/44071800000",
              "907/1000"
            ],
            "new": [
              "404543/500000",
              "907/1000"
            ]
          },
          {
            "factor": 148,
            "target": "v",
            "old": [
              "67879/200000",
              "42717/62500"
            ],
            "lines": [
              [
                "771407/1000000",
                "-696530209/2000000000"
              ],
              [
                "771407/1000000",
                "-23383000331/40000000000"
              ],
              [
                "220359/250000",
                "-1130490189/3125000000"
              ],
              [
                "220359/250000",
                "-40962741651/62500000000"
              ],
              [
                "771407/1000000",
                "-14967010749/50000000000"
              ],
              [
                "771407/1000000",
                "-327729712191/1000000000000"
              ],
              [
                "220359/250000",
                "-3910399637/12500000000"
              ],
              [
                "220359/250000",
                "-99639642583/250000000000"
              ]
            ],
            "raw": [
              "3910399637/11017950000",
              "42717/62500"
            ],
            "new": [
              "354911/1000000",
              "42717/62500"
            ]
          },
          {
            "factor": 154,
            "target": "g",
            "old": [
              "30791/250000",
              "134919/250000"
            ],
            "lines": [
              [
                "-404543/500000",
                "114624228583/500000000000"
              ],
              [
                "-404543/500000",
                "18602944049/62500000000"
              ],
              [
                "-404543/500000",
                "-49280762407/1000000000000"
              ],
              [
                "-404543/500000",
                "-18537897791/500000000000"
              ],
              [
                "-404543/500000",
                "32105496693/100000000000"
              ],
              [
                "-404543/500000",
                "97363403637/250000000000"
              ],
              [
                "-404543/500000",
                "146332615167/500000000000"
              ],
              [
                "-404543/500000",
                "304870197159/1000000000000"
              ],
              [
                "-907/1000",
                "76195000541/250000000000"
              ],
              [
                "-907/1000",
                "47994003661/125000000000"
              ],
              [
                "-907/1000",
                "26250782591/1000000000000"
              ],
              [
                "-907/1000",
                "24614564461/500000000000"
              ],
              [
                "-907/1000",
                "49573313991/125000000000"
              ],
              [
                "-907/1000",
                "118939634763/250000000000"
              ],
              [
                "-907/1000",
                "92049193833/250000000000"
              ],
              [
                "-907/1000",
                "391175121663/1000000000000"
              ]
            ],
            "raw": [
              "30791/250000",
              "118939634763/226750000000"
            ],
            "new": [
              "30791/250000",
              "524541/1000000"
            ]
          },
          {
            "factor": 1599,
            "target": "z",
            "old": [
              "46861/250000",
              "698161/1000000"
            ],
            "lines": [
              [
                "-6179109647870667/31250000000000000",
                "1068090460824531506409/31250000000000000000000"
              ],
              [
                "-6179109647870667/31250000000000000",
                "3306735772322776404381/31250000000000000000000"
              ],
              [
                "-6498881429120667/31250000000000000",
                "1107300876641406506409/31250000000000000000000"
              ],
              [
                "-6498881429120667/31250000000000000",
                "3512582141295057654381/31250000000000000000000"
              ],
              [
                "-6179109647870667/31250000000000000",
                "8318695063601212950279/125000000000000000000000"
              ],
              [
                "-6179109647870667/31250000000000000",
                "448093288615832070861/12500000000000000000000"
              ],
              [
                "-6498881429120667/31250000000000000",
                "8475536726868712950279/125000000000000000000000"
              ],
              [
                "-6498881429120667/31250000000000000",
                "530431836204744570861/12500000000000000000000"
              ],
              [
                "-695012407002273/1953125000000000",
                "1673966777348529763029/31250000000000000000000"
              ],
              [
                "-695012407002273/1953125000000000",
                "648745796576329894341/3125000000000000000000"
              ],
              [
                "-357499071665199/976562500000000",
                "1713177193165404763029/31250000000000000000000"
              ],
              [
                "-357499071665199/976562500000000",
                "669330433473558019341/3125000000000000000000"
              ],
              [
                "-695012407002273/1953125000000000",
                "10742200329697205976759/125000000000000000000000"
              ],
              [
                "-695012407002273/1953125000000000",
                "8601910829960205432363/62500000000000000000000"
              ],
              [
                "-357499071665199/976562500000000",
                "10899041992964705976759/125000000000000000000000"
              ],
              [
                "-357499071665199/976562500000000",
                "9013603567904767932363/62500000000000000000000"
              ],
              [
                "-6179109647870667/31250000000000000",
                "49038266224008268569/976562500000000000000"
              ],
              [
                "-6179109647870667/31250000000000000",
                "190393491533325474609/1562500000000000000000"
              ],
              [
                "-6498881429120667/31250000000000000",
                "50263591718285612319/976562500000000000000"
              ],
              [
                "-6498881429120667/31250000000000000",
                "200685809981939537109/1562500000000000000000"
              ],
              [
                "-6179109647870667/31250000000000000",
                "4213944819923232807957/31250000000000000000000"
              ],
              [
                "-6179109647870667/31250000000000000",
                "13018017102250038990159/125000000000000000000000"
              ],
              [
                "-6498881429120667/31250000000000000",
                "4253155235740107807957/31250000000000000000000"
              ],
              [
                "-6498881429120667/31250000000000000",
                "13841402578139163990159/125000000000000000000000"
              ],
              [
                "-695012407002273/1953125000000000",
                "543775208923065712707/7812500000000000000000"
              ],
              [
                "-695012407002273/1953125000000000",
                "6988592024107032031209/31250000000000000000000"
              ],
              [
                "-357499071665199/976562500000000",
                "553577812877284462707/7812500000000000000000"
              ],
              [
                "-357499071665199/976562500000000",
                "7194438393079313281209/31250000000000000000000"
              ],
              [
                "-695012407002273/1953125000000000",
                "4819821136447231064577/31250000000000000000000"
              ],
              [
                "-695012407002273/1953125000000000",
                "1029636235040485165851/5000000000000000000000"
              ],
              [
                "-357499071665199/976562500000000",
                "4859031552264106064577/31250000000000000000000"
              ],
              [
                "-357499071665199/976562500000000",
                "1062571654076050165851/5000000000000000000000"
              ]
            ],
            "raw": [
              "46861/250000",
              "12886681406493066691/18896359779421000000"
            ],
            "new": [
              "46861/250000",
              "681967/1000000"
            ]
          },
          {
            "factor": 1801,
            "target": "v",
            "old": [
              "354911/1000000",
              "42717/62500"
            ],
            "lines": [
              [
                "-111510029196741/250000000000000",
                "32913255886790694363/125000000000000000000"
              ],
              [
                "-10490669118363/62500000000000",
                "3096421726400423109/31250000000000000000"
              ],
              [
                "-32608076603067/62500000000000",
                "9624586926789033381/31250000000000000000"
              ],
              [
                "-60884953688979/250000000000000",
                "17970778725967131597/125000000000000000000"
              ],
              [
                "-111510029196741/250000000000000",
                "73792707052944087/250000000000000000"
              ],
              [
                "-10490669118363/62500000000000",
                "6942289214855241/62500000000000000"
              ],
              [
                "-32608076603067/62500000000000",
                "21578671099481769/62500000000000000"
              ],
              [
                "-60884953688979/250000000000000",
                "40291134204403953/250000000000000000"
              ]
            ],
            "raw": [
              "354911/1000000",
              "41825121/63203000"
            ],
            "new": [
              "354911/1000000",
              "661759/1000000"
            ]
          },
          {
            "factor": 2052,
            "target": "z",
            "old": [
              "46861/250000",
              "681967/1000000"
            ],
            "lines": [
              [
                "22836246133/50000000000",
                "-85831423544913/1000000000000000"
              ],
              [
                "2148394219/12500000000",
                "-8074870671759/250000000000000"
              ],
              [
                "6677839371/12500000000",
                "-25099066461231/250000000000000"
              ],
              [
                "12468688227/50000000000",
                "-46864324987047/1000000000000000"
              ],
              [
                "22836246133/50000000000",
                "-54545617209093/500000000000000"
              ],
              [
                "2148394219/12500000000",
                "-5131556561499/125000000000000"
              ],
              [
                "6677839371/12500000000",
                "-15950382912891/125000000000000"
              ],
              [
                "12468688227/50000000000",
                "-29782140688467/500000000000000"
              ],
              [
                "22836246133/50000000000",
                "-91735818983727/1000000000000000"
              ],
              [
                "2148394219/12500000000",
                "-8630345899761/250000000000000"
              ],
              [
                "6677839371/12500000000",
                "-26825646394449/250000000000000"
              ],
              [
                "12468688227/50000000000",
                "-50088150193113/1000000000000000"
              ],
              [
                "22836246133/50000000000",
                "-114995629857/1000000000000"
              ],
              [
                "2148394219/12500000000",
                "-10818588351/250000000000"
              ],
              [
                "6677839371/12500000000",
                "-33627345759/250000000000"
              ],
              [
                "12468688227/50000000000",
                "-62788106583/1000000000000"
              ]
            ],
            "raw": [
              "154101/820000",
              "681967/1000000"
            ],
            "new": [
              "23491/125000",
              "681967/1000000"
            ]
          },
          {
            "factor": 2583,
            "target": "x",
            "old": [
              "113019/500000",
              "715819/1000000"
            ],
            "lines": [
              [
                "-13987878528733071/50000000000000000",
                "404192260380964958517/3125000000000000000000"
              ],
              [
                "-13987878528733071/50000000000000000",
                "2211687027238717836993/12500000000000000000000"
              ],
              [
                "-15781490478733071/50000000000000000",
                "439832675036427458517/3125000000000000000000"
              ],
              [
                "-15781490478733071/50000000000000000",
                "2354248685860567836993/12500000000000000000000"
              ],
              [
                "-13987878528733071/50000000000000000",
                "6902535456415331571/50000000000000000000"
              ],
              [
                "-13987878528733071/50000000000000000",
                "2448808137930728340489/12500000000000000000000"
              ],
              [
                "-15781490478733071/50000000000000000",
                "7472782090902731571/50000000000000000000"
              ],
              [
                "-15781490478733071/50000000000000000",
                "2591369796552578340489/12500000000000000000000"
              ],
              [
                "-13987878528733071/50000000000000000",
                "951869365878405848661/6250000000000000000000"
              ],
              [
                "-13987878528733071/50000000000000000",
                "2498656717471669700247/12500000000000000000000"
              ],
              [
                "-15781490478733071/50000000000000000",
                "1112605694389605848661/6250000000000000000000"
              ],
              [
                "-15781490478733071/50000000000000000",
                "2820129374494069700247/12500000000000000000000"
              ],
              [
                "-13987878528733071/50000000000000000",
                "7094669918932969263/50000000000000000000"
              ],
              [
                "-13987878528733071/50000000000000000",
                "2496841753560137763489/12500000000000000000000"
              ],
              [
                "-15781490478733071/50000000000000000",
                "8380560547022569263/50000000000000000000"
              ],
              [
                "-15781490478733071/50000000000000000",
                "2818314410582537763489/12500000000000000000000"
              ],
              [
                "-6481133272778799/50000000000000000",
                "169736037348228344517/3125000000000000000000"
              ],
              [
                "-6481133272778799/50000000000000000",
                "174385178018138082669/2500000000000000000000"
              ],
              [
                "-8274745222778799/50000000000000000",
                "205376452003690844517/3125000000000000000000"
              ],
              [
                "-8274745222778799/50000000000000000",
                "202897509742508082669/2500000000000000000000"
              ],
              [
                "-6481133272778799/50000000000000000",
                "3151235887891545747/50000000000000000000"
              ],
              [
                "-6481133272778799/50000000000000000",
                "1109047000782700916841/12500000000000000000000"
              ],
              [
                "-8274745222778799/50000000000000000",
                "3721482522378945747/50000000000000000000"
              ],
              [
                "-8274745222778799/50000000000000000",
                "1251608659404550916841/12500000000000000000000"
              ],
              [
                "-6481133272778799/50000000000000000",
                "482956919812932620661/6250000000000000000000"
              ],
              [
                "-6481133272778799/50000000000000000",
                "1158895580323642276599/12500000000000000000000"
              ],
              [
                "-8274745222778799/50000000000000000",
                "643693248324132620661/6250000000000000000000"
              ],
              [
                "-8274745222778799/50000000000000000",
                "1480368237346042276599/12500000000000000000000"
              ],
              [
                "-6481133272778799/50000000000000000",
                "3343370350409183439/50000000000000000000"
              ],
              [
                "-6481133272778799/50000000000000000",
                "1157080616412110339841/12500000000000000000000"
              ],
              [
                "-8274745222778799/50000000000000000",
                "4629260978498783439/50000000000000000000"
              ],
              [
                "-8274745222778799/50000000000000000",
                "1478553273434510339841/12500000000000000000000"
              ]
            ],
            "raw": [
              "113019/500000",
              "164485359705115808511/229854033966077750000"
            ],
            "new": [
              "113019/500000",
              "89451/125000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "6131/50000",
              "15633/31250"
            ],
            "lines": [
              [
                "-228593/1000000",
                "7002226213/250000000000"
              ],
              [
                "-29641/250000",
                "-1889780419/62500000000"
              ],
              [
                "-228593/1000000",
                "114333851/1000000000"
              ],
              [
                "-29641/250000",
                "3634387/250000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "114333851/228593000"
            ],
            "new": [
              "6131/50000",
              "125041/250000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "132341/250000",
              "907/1000"
            ],
            "lines": [
              [
                "228593/1000000",
                "-6051503683/50000000000"
              ],
              [
                "29641/250000",
                "-1344228971/12500000000"
              ],
              [
                "228593/1000000",
                "-51833497313/250000000000"
              ],
              [
                "29641/250000",
                "-9518840281/62500000000"
              ]
            ],
            "raw": [
              "6051503683/11429650000",
              "907/1000"
            ],
            "new": [
              "33091/62500",
              "907/1000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "79483/250000",
              "11202/15625"
            ],
            "lines": [
              [
                "-404543/500000",
                "337577146843/1000000000000"
              ],
              [
                "-404543/500000",
                "193774783959/500000000000"
              ],
              [
                "-404543/500000",
                "511330925113/1000000000000"
              ],
              [
                "-404543/500000",
                "140325836547/250000000000"
              ],
              [
                "-907/1000",
                "413108691841/1000000000000"
              ],
              [
                "-907/1000",
                "236927246211/500000000000"
              ],
              [
                "-907/1000",
                "586862470111/1000000000000"
              ],
              [
                "-907/1000",
                "161902067673/250000000000"
              ],
              [
                "-404543/500000",
                "170231759931/1000000000000"
              ],
              [
                "-404543/500000",
                "93221001207/500000000000"
              ],
              [
                "-404543/500000",
                "494209113561/1000000000000"
              ],
              [
                "-404543/500000",
                "127604839011/250000000000"
              ],
              [
                "-907/1000",
                "245763304929/1000000000000"
              ],
              [
                "-907/1000",
                "136373463459/500000000000"
              ],
              [
                "-907/1000",
                "569740658559/1000000000000"
              ],
              [
                "-907/1000",
                "149181070137/250000000000"
              ]
            ],
            "raw": [
              "79483/250000",
              "161902067673/226750000000"
            ],
            "new": [
              "79483/250000",
              "178503/250000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "113019/500000",
              "89451/125000"
            ],
            "lines": [
              [
                "-645089/1000000",
                "15495227803/62500000000"
              ],
              [
                "-645089/1000000",
                "92005966287/250000000000"
              ],
              [
                "-645089/1000000",
                "277206589/1000000000"
              ],
              [
                "-645089/1000000",
                "105799698951/250000000000"
              ],
              [
                "-645089/1000000",
                "20221303873/62500000000"
              ],
              [
                "-645089/1000000",
                "110910270567/250000000000"
              ],
              [
                "-645089/1000000",
                "314042029/1000000000"
              ],
              [
                "-645089/1000000",
                "115008558951/250000000000"
              ],
              [
                "-338241/1000000",
                "3662401803/62500000000"
              ],
              [
                "-338241/1000000",
                "4877849571/50000000000"
              ],
              [
                "-338241/1000000",
                "87881373/1000000000"
              ],
              [
                "-338241/1000000",
                "38182980519/250000000000"
              ],
              [
                "-338241/1000000",
                "8388477873/62500000000"
              ],
              [
                "-338241/1000000",
                "8658710427/50000000000"
              ],
              [
                "-338241/1000000",
                "124716813/1000000000"
              ],
              [
                "-338241/1000000",
                "47391840519/250000000000"
              ]
            ],
            "raw": [
              "113019/500000",
              "115008558951/161272250000"
            ],
            "new": [
              "113019/500000",
              "713133/1000000"
            ]
          },
          {
            "factor": 146,
            "target": "a",
            "old": [
              "6131/50000",
              "643729/1000000"
            ],
            "lines": [
              [
                "-545369/1000000",
                "-34357697999/500000000000"
              ],
              [
                "-327699/500000",
                "2538440937/125000000000"
              ],
              [
                "-29137/500000",
                "-34357697999/500000000000"
              ],
              [
                "-168303/1000000",
                "2538440937/125000000000"
              ],
              [
                "-545369/1000000",
                "6816149/1000000000"
              ],
              [
                "-327699/500000",
                "26653113/250000000"
              ],
              [
                "-29137/500000",
                "6816149/1000000000"
              ],
              [
                "-168303/1000000",
                "26653113/250000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "8884371/14025250"
            ],
            "new": [
              "6131/50000",
              "39591/62500"
            ]
          },
          {
            "factor": 146,
            "target": "c",
            "old": [
              "771407/1000000",
              "220359/250000"
            ],
            "lines": [
              [
                "343233/500000",
                "-16628330511/25000000000"
              ],
              [
                "17563/100000",
                "-17177027271/31250000000"
              ],
              [
                "343233/500000",
                "-30270281577/50000000000"
              ],
              [
                "17563/100000",
                "-15069476397/62500000000"
              ],
              [
                "39219/50000",
                "-16628330511/25000000000"
              ],
              [
                "34193/125000",
                "-17177027271/31250000000"
              ],
              [
                "39219/50000",
                "-30270281577/50000000000"
              ],
              [
                "34193/125000",
                "-15069476397/62500000000"
              ]
            ],
            "raw": [
              "10090093859/13073000000",
              "220359/250000"
            ],
            "new": [
              "385913/500000",
              "220359/250000"
            ]
          },
          {
            "factor": 146,
            "target": "y",
            "old": [
              "404543/500000",
              "907/1000"
            ],
            "lines": [
              [
                "385913/500000",
                "-9497181557/12500000000"
              ],
              [
                "385913/500000",
                "-16227854427/15625000000"
              ],
              [
                "220359/250000",
                "-19330372569/25000000000"
              ],
              [
                "220359/250000",
                "-34625493609/31250000000"
              ],
              [
                "385913/500000",
                "-35002346783/50000000000"
              ],
              [
                "385913/500000",
                "-45626839563/62500000000"
              ],
              [
                "220359/250000",
                "-35674365693/50000000000"
              ],
              [
                "220359/250000",
                "-49966409073/62500000000"
              ]
            ],
            "raw": [
              "11891455231/14690600000",
              "907/1000"
            ],
            "new": [
              "40473/50000",
              "907/1000"
            ]
          },
          {
            "factor": 148,
            "target": "v",
            "old": [
              "354911/1000000",
              "661759/1000000"
            ],
            "lines": [
              [
                "385913/500000",
                "-8707912057/25000000000"
              ],
              [
                "385913/500000",
                "-18130683677/31250000000"
              ],
              [
                "220359/250000",
                "-1130490189/3125000000"
              ],
              [
                "220359/250000",
                "-1268779277/1953125000"
              ],
              [
                "385913/500000",
                "-7493728817/25000000000"
              ],
              [
                "385913/500000",
                "-10290082037/31250000000"
              ],
              [
                "220359/250000",
                "-244679321/781250000"
              ],
              [
                "220359/250000",
                "-1557483349/3906250000"
              ]
            ],
            "raw": [
              "244679321/688621875",
              "661759/1000000"
            ],
            "new": [
              "355317/1000000",
              "661759/1000000"
            ]
          },
          {
            "factor": 154,
            "target": "g",
            "old": [
              "30791/250000",
              "524541/1000000"
            ],
            "lines": [
              [
                "-40473/50000",
                "28691678337/125000000000"
              ],
              [
                "-40473/50000",
                "9301860913/31250000000"
              ],
              [
                "-40473/50000",
                "-10026782759/250000000000"
              ],
              [
                "-40473/50000",
                "-13066311653/500000000000"
              ],
              [
                "-40473/50000",
                "20067013491/62500000000"
              ],
              [
                "-40473/50000",
                "48649792297/125000000000"
              ],
              [
                "-40473/50000",
                "292075584829/1000000000000"
              ],
              [
                "-40473/50000",
                "306050092559/1000000000000"
              ],
              [
                "-907/1000",
                "19051083421/62500000000"
              ],
              [
                "-907/1000",
                "23977176041/62500000000"
              ],
              [
                "-907/1000",
                "8794194251/250000000000"
              ],
              [
                "-907/1000",
                "29921322067/500000000000"
              ],
              [
                "-907/1000",
                "49544515487/125000000000"
              ],
              [
                "-907/1000",
                "59396700727/125000000000"
              ],
              [
                "-907/1000",
                "367359492869/1000000000000"
              ],
              [
                "-907/1000",
                "392025359999/1000000000000"
              ]
            ],
            "raw": [
              "30791/250000",
              "59396700727/113375000000"
            ],
            "new": [
              "30791/250000",
              "65487/125000"
            ]
          },
          {
            "factor": 166,
            "target": "u",
            "old": [
              "79483/250000",
              "178503/250000"
            ],
            "lines": [
              [
                "614277/1000000",
                "-3885651/12500000"
              ],
              [
                "614277/1000000",
                "-5194703511/12500000000"
              ],
              [
                "1/1",
                "-358296009/1000000000"
              ],
              [
                "1/1",
                "-619007748249/1000000000000"
              ],
              [
                "614277/1000000",
                "-136579857/500000000"
              ],
              [
                "614277/1000000",
                "-126978925377/500000000000"
              ],
              [
                "1/1",
                "-320603643/1000000000"
              ],
              [
                "1/1",
                "-457389318123/1000000000000"
              ]
            ],
            "raw": [
              "320603643/1000000000",
              "178503/250000"
            ],
            "new": [
              "320603/1000000",
              "178503/250000"
            ]
          },
          {
            "factor": 1599,
            "target": "z",
            "old": [
              "23491/125000",
              "681967/1000000"
            ],
            "lines": [
              [
                "-24853618044575547/125000000000000000",
                "268228736000517670077/7812500000000000000000"
              ],
              [
                "-24853618044575547/125000000000000000",
                "3284947266174297527607/31250000000000000000000"
              ],
              [
                "-26127834294575547/125000000000000000",
                "277994010786455170077/7812500000000000000000"
              ],
              [
                "-26127834294575547/125000000000000000",
                "3486737248389297527607/31250000000000000000000"
              ],
              [
                "-24853618044575547/125000000000000000",
                "2084887477447605896307/31250000000000000000000"
              ],
              [
                "-24853618044575547/125000000000000000",
                "583459020126826170597/15625000000000000000000"
              ],
              [
                "-26127834294575547/125000000000000000",
                "2123948576591355896307/31250000000000000000000"
              ],
              [
                "-26127834294575547/125000000000000000",
                "684354011234326170597/15625000000000000000000"
              ],
              [
                "-11085305053912647/31250000000000000",
                "1670307388556376062163/31250000000000000000000"
              ],
              [
                "-11085305053912647/31250000000000000",
                "6371081896394425320531/31250000000000000000000"
              ],
              [
                "-11403859116412647/31250000000000000",
                "1709368487700126062163/31250000000000000000000"
              ],
              [
                "-11403859116412647/31250000000000000",
                "6572871878609425320531/31250000000000000000000"
              ],
              [
                "-11085305053912647/31250000000000000",
                "1341139961000955639081/15625000000000000000000"
              ],
              [
                "-11085305053912647/31250000000000000",
                "2126526335236890067059/15625000000000000000000"
              ],
              [
                "-11403859116412647/31250000000000000",
                "1360670510572830639081/15625000000000000000000"
              ],
              [
                "-11403859116412647/31250000000000000",
                "2227421326344390067059/15625000000000000000000"
              ],
              [
                "-24853618044575547/125000000000000000",
                "770156120207867944893/15625000000000000000000"
              ],
              [
                "-24853618044575547/125000000000000000",
                "750468912517592547417/6250000000000000000000"
              ],
              [
                "-26127834294575547/125000000000000000",
                "789686669779742944893/15625000000000000000000"
              ],
              [
                "-26127834294575547/125000000000000000",
                "790826908960592547417/6250000000000000000000"
              ],
              [
                "-24853618044575547/125000000000000000",
                "4073029905445507463199/31250000000000000000000"
              ],
              [
                "-24853618044575547/125000000000000000",
                "1577530234125776954043/15625000000000000000000"
              ],
              [
                "-26127834294575547/125000000000000000",
                "4112091004589257463199/31250000000000000000000"
              ],
              [
                "-26127834294575547/125000000000000000",
                "1678425225233276954043/15625000000000000000000"
              ],
              [
                "-11085305053912647/31250000000000000",
                "2137704684970041271641/31250000000000000000000"
              ],
              [
                "-11085305053912647/31250000000000000",
                "6838479192808090530009/31250000000000000000000"
              ],
              [
                "-11403859116412647/31250000000000000",
                "2176765784113791271641/31250000000000000000000"
              ],
              [
                "-11403859116412647/31250000000000000",
                "7040269175023090530009/31250000000000000000000"
              ],
              [
                "-11085305053912647/31250000000000000",
                "2335211174999906422527/15625000000000000000000"
              ],
              [
                "-11085305053912647/31250000000000000",
                "624119509847168170101/3125000000000000000000"
              ],
              [
                "-11403859116412647/31250000000000000",
                "2354741724571781422527/15625000000000000000000"
              ],
              [
                "-11403859116412647/31250000000000000",
                "644298508068668170101/3125000000000000000000"
              ]
            ],
            "raw": [
              "23491/125000",
              "1357676635148502487733/2071134837047962250000"
            ],
            "new": [
              "23491/125000",
              "163881/250000"
            ]
          },
          {
            "factor": 2052,
            "target": "z",
            "old": [
              "23491/125000",
              "163881/250000"
            ],
            "lines": [
              [
                "11425501447/25000000000",
                "-42954727598433/500000000000000"
              ],
              [
                "8608333637/50000000000",
                "-32363448393843/1000000000000000"
              ],
              [
                "6677839371/12500000000",
                "-25105661441469/250000000000000"
              ],
              [
                "12468688227/50000000000",
                "-46876638962853/1000000000000000"
              ],
              [
                "11425501447/25000000000",
                "-2729607413457/25000000000000"
              ],
              [
                "8608333637/50000000000",
                "-2056572433347/50000000000000"
              ],
              [
                "6677839371/12500000000",
                "-1595368040301/12500000000000"
              ],
              [
                "12468688227/50000000000",
                "-2978829767637/50000000000000"
              ],
              [
                "11425501447/25000000000",
                "-45897549292293/500000000000000"
              ],
              [
                "8608333637/50000000000",
                "-34580663199903/1000000000000000"
              ],
              [
                "6677839371/12500000000",
                "-26825646394449/250000000000000"
              ],
              [
                "12468688227/50000000000",
                "-50088150193113/1000000000000000"
              ],
              [
                "11425501447/25000000000",
                "-57534969963/500000000000"
              ],
              [
                "8608333637/50000000000",
                "-43348663473/1000000000000"
              ],
              [
                "6677839371/12500000000",
                "-33627345759/250000000000"
              ],
              [
                "12468688227/50000000000",
                "-62788106583/1000000000000"
              ]
            ],
            "raw": [
              "132407541/704380000",
              "163881/250000"
            ],
            "new": [
              "187977/1000000",
              "163881/250000"
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
        "BGO-",
        "GOP-"
      ],
      "initial_box": {
        "low": [
          "6131/50000",
          "123/1000",
          "385913/500000",
          "6131/50000",
          "33091/62500",
          "617/1000",
          "30791/250000",
          "614277/1000000",
          "187977/1000000",
          "113019/500000",
          "40473/50000",
          "320603/1000000",
          "355317/1000000"
        ],
        "high": [
          "39591/62500",
          "527403/1000000",
          "220359/250000",
          "125041/250000",
          "907/1000",
          "220359/250000",
          "65487/125000",
          "1",
          "163881/250000",
          "713133/1000000",
          "907/1000",
          "178503/250000",
          "661759/1000000"
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
        "AFG": -1,
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
        "EGO": -1,
        "BGO": -1,
        "BDG": 1,
        "BEG": 1,
        "GOP": -1,
        "BGP": -1,
        "AOP": -1,
        "BOP": -1,
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
            "FACDG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "ACF",
            "ADF",
            "CFG",
            "AFG",
            "CDF"
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
            "DEG",
            "OP",
            "EGD",
            [
              "area",
              "DEG",
              "U_DEG",
              "137689/200000"
            ]
          ],
          "target": "EGO",
          "sign": -1,
          "deps": [
            "DGO",
            "DEO",
            "DGP",
            "DEP",
            "EOP"
          ],
          "area_stage": 0
        },
        {
          "rule": [
            "plu",
            "BADGO"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "ABD",
            "BGO",
            "ABG",
            "BDO",
            "ABO"
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
            "plu",
            "GABOP"
          ],
          "target": "BGP",
          "sign": -1,
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
            "cap",
            "ABO",
            [
              "G"
            ],
            "P",
            [
              "area",
              "ABO",
              "U_ABO",
              "35277644490547/56687500000000"
            ]
          ],
          "target": "BOP",
          "sign": -1,
          "deps": [
            "ABP",
            "AOP"
          ],
          "area_stage": 4
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
              "122966781673/200000000000"
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
          "area_stage": 5
        }
      ],
      "initial": {
        "L_ABO": {
          "triangle": "ABO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ABO",
            "points": [
              "G"
            ]
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
          "value": "14900157597/25000000000",
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
              "2804952489/25000000000",
              "3104887989/25000000000",
              "1287762651/7812500000",
              "8596284423/50000000000",
              "5525969979/31250000000",
              "9196155423/50000000000",
              "11800508247/50000000000",
              "7186326339/25000000000",
              "4874478201/12500000000",
              "4414011447/10000000000",
              "22484292249/50000000000",
              "29586679353/62500000000",
              "30336518103/62500000000",
              "626410917/1250000000",
              "27228170763/50000000000",
              "14900157597/25000000000"
            ],
            "cell": "CB"
          }
        },
        "U_ABP": {
          "triangle": "ABP",
          "side": "hi",
          "value": "467222272581/1000000000000",
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
              "56396550951/1000000000000",
              "3396703543/50000000000",
              "5281321843/50000000000",
              "2904347061/25000000000",
              "3846656211/25000000000",
              "162037435751/1000000000000",
              "21109599621/125000000000",
              "25821145371/125000000000",
              "210277247331/1000000000000",
              "218014981077/1000000000000",
              "61120768491/200000000000",
              "323655865877/1000000000000",
              "371895677457/1000000000000",
              "52260511059/125000000000",
              "56972056809/125000000000",
              "467222272581/1000000000000"
            ],
            "cell": "CB"
          }
        },
        "U_ACF": {
          "triangle": "ACF",
          "side": "hi",
          "value": "220359/250000",
          "witness": {
            "kind": "vertices",
            "signed": "ACF",
            "used": [
              0,
              2,
              5
            ],
            "values": [
              "21054704417/31250000000",
              "11155116081/15625000000",
              "18821030897/25000000000",
              "3926331891/5000000000",
              "5257869451/6250000000",
              "10612635721/12500000000",
              "220359/250000"
            ],
            "cell": "CB"
          }
        },
        "U_ACO": {
          "triangle": "ACO",
          "side": "hi",
          "value": "38941256907/50000000000",
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
              "34878698829/125000000000",
              "18645086817/62500000000",
              "22144593667/62500000000",
              "3002317629/7812500000",
              "2789188747/5000000000",
              "73447855119/125000000000",
              "18964832481/31250000000",
              "6175653383/10000000000",
              "3957010359/6250000000",
              "3165611409/5000000000",
              "10357292953/15625000000",
              "34642462317/50000000000",
              "6928498707/10000000000",
              "43303119177/62500000000",
              "17977438731/25000000000",
              "38941256907/50000000000"
            ],
            "cell": "CB"
          }
        },
        "U_ACP": {
          "triangle": "ACP",
          "side": "hi",
          "value": "140692168761/250000000000",
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
              "-10518458409/250000000000",
              "-5793508923/500000000000",
              "51783364467/250000000000",
              "109456967291/500000000000",
              "112466442623/500000000000",
              "57008794269/250000000000",
              "118810136829/500000000000",
              "15276240797/62500000000",
              "133576873081/500000000000",
              "73164916083/250000000000",
              "227716918837/500000000000",
              "1896560707/4000000000",
              "23862123429/50000000000",
              "251836824627/500000000000",
              "64316107933/125000000000",
              "140692168761/250000000000"
            ],
            "cell": "CB"
          }
        },
        "U_BCO": {
          "triangle": "BCO",
          "side": "hi",
          "value": "171975363/250000000",
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
              "9892532079/50000000000",
              "221691661/1000000000",
              "14328777609/50000000000",
              "321107931/1000000000",
              "13129967349/25000000000",
              "294242591/500000000",
              "7674045057/12500000000",
              "171975363/250000000"
            ],
            "cell": "CB"
          }
        },
        "U_BHO": {
          "triangle": "BHO",
          "side": "hi",
          "value": "350847/500000",
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
              "6277331619/50000000000",
              "81428726763/500000000000",
              "87427436763/500000000000",
              "176989521/1000000000",
              "10130079/50000000",
              "214599/1000000",
              "9671601771/40000000000",
              "58646586579/200000000000",
              "462068708841/1000000000000",
              "474066128841/1000000000000",
              "54100129959/100000000000",
              "59244418821/100000000000",
              "30632081619/50000000000",
              "664084521/1000000000",
              "34484829/50000000",
              "350847/500000"
            ],
            "cell": "CB"
          }
        },
        "U_CFH": {
          "triangle": "CFH",
          "side": "hi",
          "value": "220359/250000",
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
              "338359974599/500000000000",
              "179749761807/250000000000",
              "83915690197/100000000000",
              "220359/250000"
            ],
            "cell": "CB"
          }
        },
        "U_FHP": {
          "triangle": "FHP",
          "side": "hi",
          "value": "142061701197/250000000000",
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
              "81811606817/1000000000000",
              "94367556969/1000000000000",
              "208694697/1000000000",
              "58389626631/250000000000",
              "61528614169/250000000000",
              "283442270969/1000000000000",
              "74534448519/250000000000",
              "351920617529/1000000000000",
              "397769411/1000000000",
              "108797292669/250000000000",
              "125916879309/250000000000",
              "142061701197/250000000000"
            ],
            "cell": "CB"
          }
        }
      },
      "relations": {
        "5": {
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
        "6": {
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
        "9": {
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
        "13": {
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
        "18": {
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
        "490": {
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
        "550": {
          "row": [
            "plu",
            "AOP",
            "BCO",
            "ABO",
            "COP",
            "ACO",
            "BOP"
          ],
          "witness": {
            "kind": "plu",
            "word": "OABCP"
          }
        },
        "602": {
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
        "709": {
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
        "751": {
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
        "1524": {
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
        "1928": {
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
        "2763": {
          "row": [
            "linear",
            {
              "ACG": "-93/1000",
              "AGP": "94192168761/250000000000"
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
              "value": "140692168761/250000000000"
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
            "residual": "70942168761/250000000000"
          }
        },
        "2822": {
          "row": [
            "linear",
            {
              "AOP": "94192168761/250000000000",
              "COP": "-93/1000",
              "GOP": "-140692168761/250000000000"
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
              "value": "140692168761/250000000000"
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
            "residual": "70942168761/250000000000"
          }
        },
        "3228": {
          "row": [
            "linear",
            {
              "BCH": "-93/1000",
              "BCO": "-93/1000",
              "BCG": "350847/500000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "HBO",
            "point": "G",
            "line": "BC",
            "side": "lower",
            "outer_upper": {
              "triangle": "BHO",
              "ref": "U_BHO",
              "value": "350847/500000"
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
            "residual": "211347/500000"
          }
        },
        "3477": {
          "row": [
            "linear",
            {
              "ACH": "-279/1000",
              "AFH": "-93/1000",
              "AHP": "220359/250000"
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
              "value": "220359/250000"
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
            "residual": "104109/250000"
          }
        },
        "3837": {
          "row": [
            "linear",
            {
              "FOP": "95561701197/250000000000",
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
              "value": "142061701197/250000000000"
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
            "residual": "72311701197/250000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0012",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "203413/500000",
          "sources": [
            "U_ACO",
            "L_ACP",
            "L_COP"
          ]
        },
        {
          "id": "T0044",
          "relation": 490,
          "rule": "sumlo",
          "triangle": "AHP",
          "side": "lo",
          "value": "98123/1000000",
          "sources": [
            "L_ACH",
            "L_FHP",
            "L_AFH",
            "L_CHP",
            "U_CFH"
          ]
        },
        {
          "id": "T0046",
          "relation": 550,
          "rule": "sumlo",
          "triangle": "AOP",
          "side": "lo",
          "value": "32847/250000",
          "sources": [
            "L_ABO",
            "L_COP",
            "L_ACO",
            "L_BOP",
            "U_BCO"
          ]
        },
        {
          "id": "T0049",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "63779/500000",
          "sources": [
            "L_ABP",
            "L_COP",
            "L_ACP",
            "L_BOP",
            "T0012"
          ]
        },
        {
          "id": "T0051",
          "relation": 751,
          "rule": "quad",
          "triangle": "AFH",
          "side": "lo",
          "value": "70271/500000",
          "sources": [
            "U_ACF"
          ]
        },
        {
          "id": "T0064",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "101581/1000000",
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
          "id": "T0070",
          "relation": 1928,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "50609/500000",
          "sources": [
            "L_AGP",
            "L_BHO",
            "T0044",
            "L_BGO",
            "T0046",
            "L_BGH",
            "U_ABP"
          ]
        },
        {
          "id": "T0088",
          "relation": 2822,
          "rule": "linear",
          "triangle": "AOP",
          "side": "lo",
          "value": "161867/1000000",
          "sources": [
            "L_COP",
            "L_GOP"
          ]
        },
        {
          "id": "T0100",
          "relation": 3477,
          "rule": "linear",
          "triangle": "AHP",
          "side": "lo",
          "value": "5157/50000",
          "sources": [
            "L_ACH",
            "T0051"
          ]
        },
        {
          "id": "T0109",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "287581/1000000",
          "sources": [
            "L_ACG",
            "T0064",
            "L_AGP"
          ]
        },
        {
          "id": "T0113",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "156779/500000",
          "sources": [
            "T0049",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0114",
          "relation": 13,
          "rule": "sum",
          "triangle": "BHO",
          "side": "lo",
          "value": "143609/500000",
          "sources": [
            "L_BGH",
            "L_BGO",
            "T0070"
          ]
        },
        {
          "id": "T0126",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "129519/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0109",
            "L_BOP",
            "T0012"
          ]
        },
        {
          "id": "T0133",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "13539/125000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0109",
            "L_BGO",
            "L_AGP",
            "T0113",
            "U_ABO"
          ]
        },
        {
          "id": "T0136",
          "relation": 1928,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "109919/1000000",
          "sources": [
            "L_AGP",
            "T0114",
            "T0100",
            "L_BGO",
            "T0088",
            "L_BGH",
            "U_ABP"
          ]
        },
        {
          "id": "T0147",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "79649/200000",
          "sources": [
            "U_ACO",
            "T0109",
            "L_COP"
          ]
        },
        {
          "id": "T0148",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "36789/125000",
          "sources": [
            "L_ACG",
            "T0133",
            "L_AGP"
          ]
        },
        {
          "id": "T0149",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "315519/1000000",
          "sources": [
            "T0126",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0151",
          "relation": 13,
          "rule": "sum",
          "triangle": "BHO",
          "side": "lo",
          "value": "295919/1000000",
          "sources": [
            "L_BGH",
            "L_BGO",
            "T0136"
          ]
        },
        {
          "id": "T0159",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "66941/500000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0148",
            "L_BOP",
            "T0147"
          ]
        },
        {
          "id": "T0164",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "27417/250000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0148",
            "L_BGO",
            "L_AGP",
            "T0149",
            "U_ABO"
          ]
        },
        {
          "id": "T0165",
          "relation": 1928,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "111651/1000000",
          "sources": [
            "L_AGP",
            "T0151",
            "T0100",
            "L_BGO",
            "T0088",
            "L_BGH",
            "U_ABP"
          ]
        },
        {
          "id": "T0170",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "195757/500000",
          "sources": [
            "U_ACO",
            "T0148",
            "L_COP"
          ]
        },
        {
          "id": "T0171",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "73917/250000",
          "sources": [
            "L_ACG",
            "T0164",
            "L_AGP"
          ]
        },
        {
          "id": "T0172",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "159941/500000",
          "sources": [
            "T0159",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0174",
          "relation": 13,
          "rule": "sum",
          "triangle": "BHO",
          "side": "lo",
          "value": "297651/1000000",
          "sources": [
            "L_BGH",
            "L_BGO",
            "T0165"
          ]
        },
        {
          "id": "T0181",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "68253/500000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0171",
            "L_BOP",
            "T0170"
          ]
        },
        {
          "id": "T0186",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "110561/1000000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0171",
            "L_BGO",
            "L_AGP",
            "T0172",
            "U_ABO"
          ]
        },
        {
          "id": "T0187",
          "relation": 1928,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "27999/250000",
          "sources": [
            "L_AGP",
            "T0174",
            "T0100",
            "L_BGO",
            "T0088",
            "L_BGH",
            "U_ABP"
          ]
        },
        {
          "id": "T0192",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "195079/500000",
          "sources": [
            "U_ACO",
            "T0171",
            "L_COP"
          ]
        },
        {
          "id": "T0193",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "296561/1000000",
          "sources": [
            "L_ACG",
            "T0186",
            "L_AGP"
          ]
        },
        {
          "id": "T0194",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "161253/500000",
          "sources": [
            "T0181",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0196",
          "relation": 13,
          "rule": "sum",
          "triangle": "BHO",
          "side": "lo",
          "value": "74499/250000",
          "sources": [
            "L_BGH",
            "L_BGO",
            "T0187"
          ]
        },
        {
          "id": "T0201",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "137193/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0193",
            "L_BOP",
            "T0192"
          ]
        },
        {
          "id": "T0206",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "111109/1000000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0193",
            "L_BGO",
            "L_AGP",
            "T0194",
            "U_ABO"
          ]
        },
        {
          "id": "T0207",
          "relation": 1928,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "22413/200000",
          "sources": [
            "L_AGP",
            "T0196",
            "T0100",
            "L_BGO",
            "T0088",
            "L_BGH",
            "U_ABP"
          ]
        },
        {
          "id": "T0212",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "77853/200000",
          "sources": [
            "U_ACO",
            "T0193",
            "L_COP"
          ]
        },
        {
          "id": "T0213",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "297109/1000000",
          "sources": [
            "L_ACG",
            "T0206",
            "L_AGP"
          ]
        },
        {
          "id": "T0214",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "323193/1000000",
          "sources": [
            "T0201",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0216",
          "relation": 13,
          "rule": "sum",
          "triangle": "BHO",
          "side": "lo",
          "value": "59613/200000",
          "sources": [
            "L_BGH",
            "L_BGO",
            "T0207"
          ]
        },
        {
          "id": "T0221",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "137639/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0213",
            "L_BOP",
            "T0212"
          ]
        },
        {
          "id": "T0226",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "55651/500000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0213",
            "L_BGO",
            "L_AGP",
            "T0214",
            "U_ABO"
          ]
        },
        {
          "id": "T0227",
          "relation": 1928,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "56039/500000",
          "sources": [
            "L_AGP",
            "T0216",
            "T0100",
            "L_BGO",
            "T0088",
            "L_BGH",
            "U_ABP"
          ]
        },
        {
          "id": "T0232",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "388717/1000000",
          "sources": [
            "U_ACO",
            "T0213",
            "L_COP"
          ]
        },
        {
          "id": "T0233",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "148651/500000",
          "sources": [
            "L_ACG",
            "T0226",
            "L_AGP"
          ]
        },
        {
          "id": "T0234",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "323639/1000000",
          "sources": [
            "T0221",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0236",
          "relation": 13,
          "rule": "sum",
          "triangle": "BHO",
          "side": "lo",
          "value": "149039/500000",
          "sources": [
            "L_BGH",
            "L_BGO",
            "T0227"
          ]
        },
        {
          "id": "T0241",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "137879/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0233",
            "L_BOP",
            "T0232"
          ]
        },
        {
          "id": "T0246",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "55701/500000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0233",
            "L_BGO",
            "L_AGP",
            "T0234",
            "U_ABO"
          ]
        },
        {
          "id": "T0247",
          "relation": 1928,
          "rule": "balance_lo",
          "triangle": "GHO",
          "side": "lo",
          "value": "112081/1000000",
          "sources": [
            "L_AGP",
            "T0236",
            "T0100",
            "L_BGO",
            "T0088",
            "L_BGH",
            "U_ABP"
          ]
        },
        {
          "id": "T0252",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "97131/250000",
          "sources": [
            "U_ACO",
            "T0233",
            "L_COP"
          ]
        },
        {
          "id": "T0253",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "148701/500000",
          "sources": [
            "L_ACG",
            "T0246",
            "L_AGP"
          ]
        },
        {
          "id": "T0254",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "323879/1000000",
          "sources": [
            "T0241",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0256",
          "relation": 13,
          "rule": "sum",
          "triangle": "BHO",
          "side": "lo",
          "value": "298081/1000000",
          "sources": [
            "L_BGH",
            "L_BGO",
            "T0247"
          ]
        },
        {
          "id": "T0261",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "137971/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0253",
            "L_BOP",
            "T0252"
          ]
        },
        {
          "id": "T0266",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "22291/200000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0253",
            "L_BGO",
            "L_AGP",
            "T0254",
            "U_ABO"
          ]
        },
        {
          "id": "T0271",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "48553/125000",
          "sources": [
            "U_ACO",
            "T0253",
            "L_COP"
          ]
        },
        {
          "id": "T0272",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "59491/200000",
          "sources": [
            "L_ACG",
            "T0266",
            "L_AGP"
          ]
        },
        {
          "id": "T0273",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "323971/1000000",
          "sources": [
            "T0261",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0279",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "6901/50000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0272",
            "L_BOP",
            "T0271"
          ]
        },
        {
          "id": "T0284",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "55739/500000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0272",
            "L_BGO",
            "L_AGP",
            "T0273",
            "U_ABO"
          ]
        },
        {
          "id": "T0289",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "388371/1000000",
          "sources": [
            "U_ACO",
            "T0272",
            "L_COP"
          ]
        },
        {
          "id": "T0290",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "148739/500000",
          "sources": [
            "L_ACG",
            "T0284",
            "L_AGP"
          ]
        },
        {
          "id": "T0291",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "16201/50000",
          "sources": [
            "T0279",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0297",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "34511/250000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0290",
            "L_BOP",
            "T0289"
          ]
        },
        {
          "id": "T0302",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "111489/1000000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0290",
            "L_BGO",
            "L_AGP",
            "T0291",
            "U_ABO"
          ]
        },
        {
          "id": "T0307",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "97087/250000",
          "sources": [
            "U_ACO",
            "T0290",
            "L_COP"
          ]
        },
        {
          "id": "T0308",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "297489/1000000",
          "sources": [
            "L_ACG",
            "T0302",
            "L_AGP"
          ]
        },
        {
          "id": "T0309",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "81011/250000",
          "sources": [
            "T0297",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0315",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "27611/200000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0308",
            "L_BOP",
            "T0307"
          ]
        },
        {
          "id": "T0320",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "55747/500000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0308",
            "L_BGO",
            "L_AGP",
            "T0309",
            "U_ABO"
          ]
        },
        {
          "id": "T0325",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "388337/1000000",
          "sources": [
            "U_ACO",
            "T0308",
            "L_COP"
          ]
        },
        {
          "id": "T0326",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "148747/500000",
          "sources": [
            "L_ACG",
            "T0320",
            "L_AGP"
          ]
        },
        {
          "id": "T0327",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "64811/200000",
          "sources": [
            "T0315",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0333",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "6903/50000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0326",
            "L_BOP",
            "T0325"
          ]
        },
        {
          "id": "T0338",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "111497/1000000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0326",
            "L_BGO",
            "L_AGP",
            "T0327",
            "U_ABO"
          ]
        },
        {
          "id": "T0344",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "297497/1000000",
          "sources": [
            "L_ACG",
            "T0338",
            "L_AGP"
          ]
        },
        {
          "id": "T0345",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "16203/50000",
          "sources": [
            "T0333",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0356",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "55749/500000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0344",
            "L_BGO",
            "L_AGP",
            "T0345",
            "U_ABO"
          ]
        },
        {
          "id": "T0361",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "388329/1000000",
          "sources": [
            "U_ACO",
            "T0344",
            "L_COP"
          ]
        },
        {
          "id": "T0362",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "148749/500000",
          "sources": [
            "L_ACG",
            "T0356",
            "L_AGP"
          ]
        },
        {
          "id": "T0369",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "8629/62500",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0362",
            "L_BOP",
            "T0361"
          ]
        },
        {
          "id": "T0374",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "10127/31250",
          "sources": [
            "T0369",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0377",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "111499/1000000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0362",
            "L_BGO",
            "L_AGP",
            "T0374",
            "U_ABO"
          ]
        },
        {
          "id": "T0380",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "297499/1000000",
          "sources": [
            "L_ACG",
            "T0377",
            "L_AGP"
          ]
        },
        {
          "id": "T0381",
          "relation": 18,
          "rule": "sum",
          "triangle": "CGO",
          "side": "lo",
          "value": "297499/1000000",
          "sources": [
            "T0377",
            "L_COP",
            "L_GOP"
          ]
        },
        {
          "id": "T0387",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "388327/1000000",
          "sources": [
            "U_ACO",
            "T0380",
            "L_COP"
          ]
        },
        {
          "id": "T0389",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "27613/200000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0380",
            "L_BOP",
            "T0387"
          ]
        },
        {
          "id": "T0391",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "64813/200000",
          "sources": [
            "T0389",
            "L_COP",
            "L_BOP"
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
              "-64813/200000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCO",
            "side": "lo",
            "reference": "T0391",
            "value": "64813/200000"
          }
        },
        "128": {
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
        "148": {
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
              "-297499/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACP",
            "side": "lo",
            "reference": "T0380",
            "value": "297499/1000000"
          }
        },
        "154": {
          "name": "AREA_LO_CGO",
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
                2,
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
                2,
                8
              ],
              "-1"
            ],
            [
              [],
              "-297499/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CGO",
            "side": "lo",
            "reference": "T0381",
            "value": "297499/1000000"
          }
        },
        "164": {
          "name": "AREA_LO_BHO",
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
                7,
                9
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
              "-298081/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BHO",
            "side": "lo",
            "reference": "T0256",
            "value": "298081/1000000"
          }
        },
        "366": {
          "name": "QUAD_709",
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
            "index": 709
          }
        },
        "1697": {
          "name": "LINEAR_2763",
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
              "-117442168761/250000000000"
            ],
            [
              [
                6,
                12
              ],
              "94192168761/250000000000"
            ],
            [
              [
                8,
                11
              ],
              "-94192168761/250000000000"
            ],
            [
              [
                0,
                11
              ],
              "94192168761/250000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2763
          }
        },
        "2162": {
          "name": "LINEAR_3228",
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
              "-93/1000"
            ],
            [
              [
                1,
                10
              ],
              "93/1000"
            ],
            [
              [
                2,
                8
              ],
              "350847/500000"
            ],
            [
              [
                1,
                8
              ],
              "-350847/500000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3228
          }
        },
        "2771": {
          "name": "LINEAR_3837",
          "terms": [
            [
              [
                9,
                12
              ],
              "118811701197/250000000000"
            ],
            [
              [
                9
              ],
              "-95561701197/250000000000"
            ],
            [
              [
                5,
                12
              ],
              "-95561701197/250000000000"
            ],
            [
              [
                10,
                11
              ],
              "-118811701197/250000000000"
            ],
            [
              [
                5,
                10
              ],
              "95561701197/250000000000"
            ],
            [
              [
                11
              ],
              "95561701197/250000000000"
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
            "index": 3837
          }
        }
      },
      "coordinate": {
        "low": [
          "6131/50000",
          "123/1000",
          "38607/50000",
          "6131/50000",
          "21211/40000",
          "617/1000",
          "26089/200000",
          "614277/1000000",
          "188733/1000000",
          "235483/1000000",
          "809739/1000000",
          "323339/1000000",
          "90301/250000"
        ],
        "high": [
          "125199/200000",
          "524143/1000000",
          "220359/250000",
          "99869/200000",
          "907/1000",
          "220359/250000",
          "259/500",
          "1/1",
          "317761/500000",
          "44387/62500",
          "907/1000",
          "355579/500000",
          "661759/1000000"
        ],
        "steps": [
          {
            "factor": 50,
            "target": "d",
            "old": [
              "6131/50000",
              "125041/250000"
            ],
            "lines": [
              [
                "-114087/500000",
                "869002917/31250000000"
              ],
              [
                "-29641/250000",
                "-472274669/15625000000"
              ],
              [
                "-114087/500000",
                "56976909/500000000"
              ],
              [
                "-29641/250000",
                "3634387/250000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "18992303/38029000"
            ],
            "new": [
              "6131/50000",
              "499417/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "33091/62500",
              "907/1000"
            ],
            "lines": [
              [
                "114087/500000",
                "-3024467397/25000000000"
              ],
              [
                "29641/250000",
                "-1344228971/12500000000"
              ],
              [
                "114087/500000",
                "-103476987279/500000000000"
              ],
              [
                "29641/250000",
                "-38053219297/250000000000"
              ]
            ],
            "raw": [
              "1008155799/1901450000",
              "907/1000"
            ],
            "new": [
              "530203/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 88,
            "target": "b",
            "old": [
              "123/1000",
              "527403/1000000"
            ],
            "lines": [
              [
                "-40473/50000",
                "7517431849/25000000000"
              ],
              [
                "-40473/50000",
                "4867777307/12500000000"
              ],
              [
                "-907/1000",
                "187990591/500000000"
              ],
              [
                "-907/1000",
                "118849363/250000000"
              ]
            ],
            "raw": [
              "123/1000",
              "118849363/226750000"
            ],
            "new": [
              "123/1000",
              "524143/1000000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "320603/1000000",
              "178503/250000"
            ],
            "lines": [
              [
                "-40473/50000",
                "84458629791/250000000000"
              ],
              [
                "-40473/50000",
                "193806566697/500000000000"
              ],
              [
                "-40473/50000",
                "510907653279/1000000000000"
              ],
              [
                "-40473/50000",
                "560686267509/1000000000000"
              ],
              [
                "-907/1000",
                "103279606801/250000000000"
              ],
              [
                "-907/1000",
                "236794200417/500000000000"
              ],
              [
                "-907/1000",
                "586191561319/1000000000000"
              ],
              [
                "-907/1000",
                "646661534949/1000000000000"
              ],
              [
                "-40473/50000",
                "42645538217/250000000000"
              ],
              [
                "-40473/50000",
                "93385829739/500000000000"
              ],
              [
                "-40473/50000",
                "492921652973/1000000000000"
              ],
              [
                "-40473/50000",
                "509111159583/1000000000000"
              ],
              [
                "-907/1000",
                "61466515227/250000000000"
              ],
              [
                "-907/1000",
                "136373463459/500000000000"
              ],
              [
                "-907/1000",
                "568205561013/1000000000000"
              ],
              [
                "-907/1000",
                "595086427023/1000000000000"
              ]
            ],
            "raw": [
              "320603/1000000",
              "646661534949/907000000000"
            ],
            "new": [
              "320603/1000000",
              "89121/125000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "113019/500000",
              "713133/1000000"
            ],
            "lines": [
              [
                "-644683/1000000",
                "12414696331/50000000000"
              ],
              [
                "-644683/1000000",
                "46048210621/125000000000"
              ],
              [
                "-644683/1000000",
                "27720449/100000000"
              ],
              [
                "-644683/1000000",
                "105772333947/250000000000"
              ],
              [
                "-644683/1000000",
                "8076378843/25000000000"
              ],
              [
                "-644683/1000000",
                "110786728017/250000000000"
              ],
              [
                "-644683/1000000",
                "62738887/200000000"
              ],
              [
                "-644683/1000000",
                "114894820197/250000000000"
              ],
              [
                "-338241/1000000",
                "2960960631/50000000000"
              ],
              [
                "-338241/1000000",
                "6142292141/62500000000"
              ],
              [
                "-338241/1000000",
                "5508111/62500000"
              ],
              [
                "-338241/1000000",
                "38245081269/250000000000"
              ],
              [
                "-338241/1000000",
                "3349510993/25000000000"
              ],
              [
                "-338241/1000000",
                "43259475339/250000000000"
              ],
              [
                "-338241/1000000",
                "124619721/1000000000"
              ],
              [
                "-338241/1000000",
                "47367567519/250000000000"
              ]
            ],
            "raw": [
              "113019/500000",
              "114894820197/161170750000"
            ],
            "new": [
              "113019/500000",
              "712877/1000000"
            ]
          },
          {
            "factor": 146,
            "target": "a",
            "old": [
              "6131/50000",
              "39591/62500"
            ],
            "lines": [
              [
                "-136447/250000",
                "-1702193151/25000000000"
              ],
              [
                "-327699/500000",
                "257964807/12500000000"
              ],
              [
                "-58949/1000000",
                "-1702193151/25000000000"
              ],
              [
                "-168559/1000000",
                "257964807/12500000000"
              ],
              [
                "-136447/250000",
                "3598091/500000000"
              ],
              [
                "-327699/500000",
                "26653113/250000000"
              ],
              [
                "-58949/1000000",
                "3598091/500000000"
              ],
              [
                "-168559/1000000",
                "26653113/250000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "26653113/42139750"
            ],
            "new": [
              "6131/50000",
              "316247/500000"
            ]
          },
          {
            "factor": 146,
            "target": "c",
            "old": [
              "385913/500000",
              "220359/250000"
            ],
            "lines": [
              [
                "17171/25000",
                "-16628330511/25000000000"
              ],
              [
                "88483/500000",
                "-137470580307/250000000000"
              ],
              [
                "17171/25000",
                "-30271851113/50000000000"
              ],
              [
                "88483/500000",
                "-120979787381/500000000000"
              ],
              [
                "39219/50000",
                "-16628330511/25000000000"
              ],
              [
                "137253/500000",
                "-137470580307/250000000000"
              ],
              [
                "39219/50000",
                "-30271851113/50000000000"
              ],
              [
                "137253/500000",
                "-120979787381/500000000000"
              ]
            ],
            "raw": [
              "30271851113/39219000000",
              "220359/250000"
            ],
            "new": [
              "385933/500000",
              "220359/250000"
            ]
          },
          {
            "factor": 146,
            "target": "y",
            "old": [
              "40473/50000",
              "907/1000"
            ],
            "lines": [
              [
                "385933/500000",
                "-9497242867/12500000000"
              ],
              [
                "385933/500000",
                "-129760366879/125000000000"
              ],
              [
                "220359/250000",
                "-19330372569/25000000000"
              ],
              [
                "220359/250000",
                "-276846325653/250000000000"
              ],
              [
                "385933/500000",
                "-35004161559/50000000000"
              ],
              [
                "385933/500000",
                "-365080094283/500000000000"
              ],
              [
                "220359/250000",
                "-35675935229/50000000000"
              ],
              [
                "220359/250000",
                "-399731278073/500000000000"
              ]
            ],
            "raw": [
              "35675935229/44071800000",
              "907/1000"
            ],
            "new": [
              "161899/200000",
              "907/1000"
            ]
          },
          {
            "factor": 148,
            "target": "v",
            "old": [
              "355317/1000000",
              "661759/1000000"
            ],
            "lines": [
              [
                "385933/500000",
                "-17641643453/50000000000"
              ],
              [
                "385933/500000",
                "-291460069961/500000000000"
              ],
              [
                "220359/250000",
                "-18313417123/50000000000"
              ],
              [
                "220359/250000",
                "-326111253751/500000000000"
              ],
              [
                "385933/500000",
                "-7618026819/25000000000"
              ],
              [
                "385933/500000",
                "-83687907903/250000000000"
              ],
              [
                "220359/250000",
                "-3976956827/12500000000"
              ],
              [
                "220359/250000",
                "-50506749899/125000000000"
              ]
            ],
            "raw": [
              "3976956827/11017950000",
              "661759/1000000"
            ],
            "new": [
              "45119/125000",
              "661759/1000000"
            ]
          },
          {
            "factor": 154,
            "target": "g",
            "old": [
              "30791/250000",
              "65487/125000"
            ],
            "lines": [
              [
                "-161899/200000",
                "112359778857/500000000000"
              ],
              [
                "-161899/200000",
                "146409642487/500000000000"
              ],
              [
                "-161899/200000",
                "-15240343101/500000000000"
              ],
              [
                "-161899/200000",
                "-3402520933/250000000000"
              ],
              [
                "-161899/200000",
                "316234092417/1000000000000"
              ],
              [
                "-161899/200000",
                "384333819677/1000000000000"
              ],
              [
                "-161899/200000",
                "144326981217/500000000000"
              ],
              [
                "-161899/200000",
                "38190570613/125000000000"
              ],
              [
                "-907/1000",
                "74995088011/250000000000"
              ],
              [
                "-907/1000",
                "189381851077/500000000000"
              ],
              [
                "-907/1000",
                "1399378379/31250000000"
              ],
              [
                "-907/1000",
                "9041791681/125000000000"
              ],
              [
                "-907/1000",
                "391494886747/1000000000000"
              ],
              [
                "-907/1000",
                "470278236857/1000000000000"
              ],
              [
                "-907/1000",
                "90978689191/250000000000"
              ],
              [
                "-907/1000",
                "97867245521/250000000000"
              ]
            ],
            "raw": [
              "30791/250000",
              "470278236857/907000000000"
            ],
            "new": [
              "30791/250000",
              "518499/1000000"
            ]
          },
          {
            "factor": 164,
            "target": "x",
            "old": [
              "113019/500000",
              "712877/1000000"
            ],
            "lines": [
              [
                "614277/1000000",
                "-137034593/500000000"
              ],
              [
                "614277/1000000",
                "-97879425913/500000000000"
              ],
              [
                "1/1",
                "-64302623/200000000"
              ],
              [
                "1/1",
                "-79586572443/200000000000"
              ],
              [
                "614277/1000000",
                "-262076071/1000000000"
              ],
              [
                "614277/1000000",
                "-144652288611/1000000000000"
              ],
              [
                "1/1",
                "-3869/12500"
              ],
              [
                "1/1",
                "-346826299/1000000000"
              ]
            ],
            "raw": [
              "48217429537/204759000000",
              "712877/1000000"
            ],
            "new": [
              "235483/1000000",
              "712877/1000000"
            ]
          },
          {
            "factor": 1697,
            "target": "z",
            "old": [
              "187977/1000000",
              "163881/250000"
            ],
            "lines": [
              [
                "-48144176381282883/250000000000000000",
                "2079304607458057340097/62500000000000000000000"
              ],
              [
                "-48144176381282883/250000000000000000",
                "12744767327123095631217/125000000000000000000000"
              ],
              [
                "-50691678881282883/250000000000000000",
                "2157398296595557340097/62500000000000000000000"
              ],
              [
                "-50691678881282883/250000000000000000",
                "13550407350240595631217/125000000000000000000000"
              ],
              [
                "-48144176381282883/250000000000000000",
                "2008128814026060128601/31250000000000000000000"
              ],
              [
                "-48144176381282883/250000000000000000",
                "1195550862394919306583/31250000000000000000000"
              ],
              [
                "-50691678881282883/250000000000000000",
                "2047175658594810128601/31250000000000000000000"
              ],
              [
                "-50691678881282883/250000000000000000",
                "1396960868174294306583/31250000000000000000000"
              ],
              [
                "-10637735834649081/31250000000000000",
                "803060804144792796543/15625000000000000000000"
              ],
              [
                "-10637735834649081/31250000000000000",
                "6108133083768417770793/31250000000000000000000"
              ],
              [
                "-10956173647149081/31250000000000000",
                "822584226429167796543/15625000000000000000000"
              ],
              [
                "-10956173647149081/31250000000000000",
                "6309543089547792770793/31250000000000000000000"
              ],
              [
                "-10637735834649081/31250000000000000",
                "5149196237173234103277/62500000000000000000000"
              ],
              [
                "-10637735834649081/31250000000000000",
                "16469968457530252678287/125000000000000000000000"
              ],
              [
                "-10956173647149081/31250000000000000",
                "5227289926310734103277/62500000000000000000000"
              ],
              [
                "-10956173647149081/31250000000000000",
                "17275608480647752678287/125000000000000000000000"
              ],
              [
                "-48144176381282883/250000000000000000",
                "1475863223353088420277/31250000000000000000000"
              ],
              [
                "-48144176381282883/250000000000000000",
                "14489611005619334632131/125000000000000000000000"
              ],
              [
                "-50691678881282883/250000000000000000",
                "1514910067921838420277/31250000000000000000000"
              ],
              [
                "-50691678881282883/250000000000000000",
                "15295251028736834632131/125000000000000000000000"
              ],
              [
                "-48144176381282883/250000000000000000",
                "30756006811396903388181/250000000000000000000000"
              ],
              [
                "-48144176381282883/250000000000000000",
                "24255383198347776812037/250000000000000000000000"
              ],
              [
                "-50691678881282883/250000000000000000",
                "31068381567946903388181/250000000000000000000000"
              ],
              [
                "-50691678881282883/250000000000000000",
                "25866663244582776812037/250000000000000000000000"
              ],
              [
                "-10637735834649081/31250000000000000",
                "4084665055827290686629/62500000000000000000000"
              ],
              [
                "-10637735834649081/31250000000000000",
                "13088688006784955042043/62500000000000000000000"
              ],
              [
                "-10956173647149081/31250000000000000",
                "4162758744964790686629/62500000000000000000000"
              ],
              [
                "-10956173647149081/31250000000000000",
                "13491508018343705042043/62500000000000000000000"
              ],
              [
                "-10637735834649081/31250000000000000",
                "35287761247881358772481/250000000000000000000000"
              ],
              [
                "-10637735834649081/31250000000000000",
                "47630913214248927715947/250000000000000000000000"
              ],
              [
                "-10956173647149081/31250000000000000",
                "35600136004431358772481/250000000000000000000000"
              ],
              [
                "-10956173647149081/31250000000000000",
                "49242193260483927715947/250000000000000000000000"
              ]
            ],
            "raw": [
              "187977/1000000",
              "10252002270465634462727/16048058793760961000000"
            ],
            "new": [
              "187977/1000000",
              "39927/62500"
            ]
          },
          {
            "factor": 2162,
            "target": "z",
            "old": [
              "187977/1000000",
              "39927/62500"
            ],
            "lines": [
              [
                "113826344751/250000000000",
                "-10739607944667/125000000000000"
              ],
              [
                "86912871381/500000000000",
                "-8200299904377/250000000000000"
              ],
              [
                "66523748823/125000000000",
                "-6276569654691/62500000000000"
              ],
              [
                "125355177171/500000000000",
                "-11827362633807/250000000000000"
              ],
              [
                "113826344751/250000000000",
                "-10919313978831/100000000000000"
              ],
              [
                "86912871381/500000000000",
                "-8337515655861/200000000000000"
              ],
              [
                "66523748823/125000000000",
                "-6381595596663/50000000000000"
              ],
              [
                "125355177171/500000000000",
                "-12025270084851/200000000000000"
              ],
              [
                "113826344751/250000000000",
                "-45900378867513/500000000000000"
              ],
              [
                "86912871381/500000000000",
                "-35047543111203/1000000000000000"
              ],
              [
                "66523748823/125000000000",
                "-26825646394449/250000000000000"
              ],
              [
                "125355177171/500000000000",
                "-50549370953973/1000000000000000"
              ],
              [
                "113826344751/250000000000",
                "-57538516983/500000000000"
              ],
              [
                "86912871381/500000000000",
                "-43933921773/1000000000000"
              ],
              [
                "66523748823/125000000000",
                "-33627345759/250000000000"
              ],
              [
                "125355177171/500000000000",
                "-63366270843/1000000000000"
              ]
            ],
            "raw": [
              "1576319/8353500",
              "39927/62500"
            ],
            "new": [
              "188701/1000000",
              "39927/62500"
            ]
          },
          {
            "factor": 2771,
            "target": "x",
            "old": [
              "235483/1000000",
              "712877/1000000"
            ],
            "lines": [
              [
                "-8369790034567557/31250000000000000",
                "6165642462119359920291/50000000000000000000000"
              ],
              [
                "-8369790034567557/31250000000000000",
                "42162873295571418548811/250000000000000000000000"
              ],
              [
                "-9490797503317557/31250000000000000",
                "6740679834125209920291/50000000000000000000000"
              ],
              [
                "-9490797503317557/31250000000000000",
                "45038060155600668548811/250000000000000000000000"
              ],
              [
                "-8369790034567557/31250000000000000",
                "6572631877395060183/50000000000000000000"
              ],
              [
                "-8369790034567557/31250000000000000",
                "5832720904806084122727/31250000000000000000000"
              ],
              [
                "-9490797503317557/31250000000000000",
                "7147669249400910183/50000000000000000000"
              ],
              [
                "-9490797503317557/31250000000000000",
                "6192119262309740372727/31250000000000000000000"
              ],
              [
                "-8369790034567557/31250000000000000",
                "226189603173465017553/1562500000000000000000"
              ],
              [
                "-8369790034567557/31250000000000000",
                "11881249373182255438959/62500000000000000000000"
              ],
              [
                "-9490797503317557/31250000000000000",
                "266151725822452517553/1562500000000000000000"
              ],
              [
                "-9490797503317557/31250000000000000",
                "13479734279141755438959/62500000000000000000000"
              ],
              [
                "-8369790034567557/31250000000000000",
                "841995976630037877/6250000000000000000"
              ],
              [
                "-8369790034567557/31250000000000000",
                "741850733073045111669/3906250000000000000000"
              ],
              [
                "-9490797503317557/31250000000000000",
                "1001844467225987877/6250000000000000000"
              ],
              [
                "-9490797503317557/31250000000000000",
                "841756039695513861669/3906250000000000000000"
              ],
              [
                "-31218928874574477/250000000000000000",
                "2618431886466758111691/50000000000000000000000"
              ],
              [
                "-31218928874574477/250000000000000000",
                "16825441359097133882967/250000000000000000000000"
              ],
              [
                "-40186988624574477/250000000000000000",
                "3193469258472608111691/50000000000000000000000"
              ],
              [
                "-40186988624574477/250000000000000000",
                "19700628219126383882967/250000000000000000000000"
              ],
              [
                "-31218928874574477/250000000000000000",
                "472722078397259121/7812500000000000000"
              ],
              [
                "-31218928874574477/250000000000000000",
                "5331083825493597078993/62500000000000000000000"
              ],
              [
                "-40186988624574477/250000000000000000",
                "1125143335546346367/15625000000000000000"
              ],
              [
                "-40186988624574477/250000000000000000",
                "6049880540500909578993/62500000000000000000000"
              ],
              [
                "-31218928874574477/250000000000000000",
                "461357090737284844137/6250000000000000000000"
              ],
              [
                "-31218928874574477/250000000000000000",
                "2773445694531842136249/31250000000000000000000"
              ],
              [
                "-40186988624574477/250000000000000000",
                "621205581333234844137/6250000000000000000000"
              ],
              [
                "-40186988624574477/250000000000000000",
                "3572688147511592136249/31250000000000000000000"
              ],
              [
                "-31218928874574477/250000000000000000",
                "15943786186938506037/250000000000000000000"
              ],
              [
                "-31218928874574477/250000000000000000",
                "5535253745050150620243/62500000000000000000000"
              ],
              [
                "-40186988624574477/250000000000000000",
                "22337725810776506037/250000000000000000000"
              ],
              [
                "-40186988624574477/250000000000000000",
                "7133738651009650620243/62500000000000000000000"
              ]
            ],
            "raw": [
              "235483/1000000",
              "396965349723510237361/558152619785756625000"
            ],
            "new": [
              "235483/1000000",
              "711213/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "6131/50000",
              "499417/1000000"
            ],
            "lines": [
              [
                "-114067/500000",
                "13978665601/500000000000"
              ],
              [
                "-29641/250000",
                "-7534252877/250000000000"
              ],
              [
                "-114067/500000",
                "56958769/500000000"
              ],
              [
                "-29641/250000",
                "3634387/250000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "56958769/114067000"
            ],
            "new": [
              "6131/50000",
              "99869/200000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "530203/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "114067/500000",
                "-3024344777/25000000000"
              ],
              [
                "29641/250000",
                "-1344228971/12500000000"
              ],
              [
                "114067/500000",
                "-20691757223/100000000000"
              ],
              [
                "29641/250000",
                "-7610217029/50000000000"
              ]
            ],
            "raw": [
              "3024344777/5703350000",
              "907/1000"
            ],
            "new": [
              "21211/40000",
              "907/1000"
            ]
          },
          {
            "factor": 128,
            "target": "g",
            "old": [
              "30791/250000",
              "518499/1000000"
            ],
            "lines": [
              [
                "614277/1000000",
                "-18168231/125000000"
              ],
              [
                "614277/1000000",
                "-39507835171/125000000000"
              ],
              [
                "1/1",
                "-192789777/1000000000"
              ],
              [
                "1/1",
                "-518236691757/1000000000000"
              ],
              [
                "614277/1000000",
                "-17995947/200000000"
              ],
              [
                "614277/1000000",
                "-16025933727/200000000000"
              ],
              [
                "1/1",
                "-8588979/62500000"
              ],
              [
                "1/1",
                "-17643979939/62500000000"
              ]
            ],
            "raw": [
              "593553101/4550200000",
              "518499/1000000"
            ],
            "new": [
              "26089/200000",
              "518499/1000000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "320603/1000000",
              "89121/125000"
            ],
            "lines": [
              [
                "-161899/200000",
                "169106575527/500000000000"
              ],
              [
                "-161899/200000",
                "96840001891/250000000000"
              ],
              [
                "-161899/200000",
                "254964423007/500000000000"
              ],
              [
                "-161899/200000",
                "139768925631/250000000000"
              ],
              [
                "-907/1000",
                "51684243173/125000000000"
              ],
              [
                "-907/1000",
                "59163053093/125000000000"
              ],
              [
                "-907/1000",
                "73148705043/125000000000"
              ],
              [
                "-907/1000",
                "80627514963/125000000000"
              ],
              [
                "-161899/200000",
                "176865389973/1000000000000"
              ],
              [
                "-161899/200000",
                "193052823493/1000000000000"
              ],
              [
                "-161899/200000",
                "491683999043/1000000000000"
              ],
              [
                "-161899/200000",
                "507871432563/1000000000000"
              ],
              [
                "-907/1000",
                "252126184303/1000000000000"
              ],
              [
                "-907/1000",
                "278997240673/1000000000000"
              ],
              [
                "-907/1000",
                "566944793373/1000000000000"
              ],
              [
                "-907/1000",
                "593815849743/1000000000000"
              ]
            ],
            "raw": [
              "320603/1000000",
              "80627514963/113375000000"
            ],
            "new": [
              "320603/1000000",
              "355579/500000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "235483/1000000",
              "711213/1000000"
            ],
            "lines": [
              [
                "-79881/125000",
                "48965501103/200000000000"
              ],
              [
                "-79881/125000",
                "363438422263/1000000000000"
              ],
              [
                "-79881/125000",
                "54745539/200000000"
              ],
              [
                "-79881/125000",
                "52265305491/125000000000"
              ],
              [
                "-79881/125000",
                "31923018579/100000000000"
              ],
              [
                "-79881/125000",
                "218920551269/500000000000"
              ],
              [
                "-79881/125000",
                "31004931/100000000"
              ],
              [
                "-79881/125000",
                "28402753683/62500000000"
              ],
              [
                "-338241/1000000",
                "11845917303/200000000000"
              ],
              [
                "-338241/1000000",
                "98296303411/1000000000000"
              ],
              [
                "-338241/1000000",
                "5508111/62500000"
              ],
              [
                "-338241/1000000",
                "38245081269/250000000000"
              ],
              [
                "-338241/1000000",
                "13363226679/100000000000"
              ],
              [
                "-338241/1000000",
                "86349491843/500000000000"
              ],
              [
                "-338241/1000000",
                "124451391/1000000000"
              ],
              [
                "-338241/1000000",
                "47325485019/250000000000"
              ]
            ],
            "raw": [
              "235483/1000000",
              "9467584561/13313500000"
            ],
            "new": [
              "235483/1000000",
              "711127/1000000"
            ]
          },
          {
            "factor": 146,
            "target": "a",
            "old": [
              "6131/50000",
              "316247/500000"
            ],
            "lines": [
              [
                "-536383/1000000",
                "-6802833233/100000000000"
              ],
              [
                "-645953/1000000",
                "1033401741/50000000000"
              ],
              [
                "-60739/1000000",
                "-6802833233/100000000000"
              ],
              [
                "-170309/1000000",
                "1033401741/50000000000"
              ],
              [
                "-536383/1000000",
                "3616231/500000000"
              ],
              [
                "-645953/1000000",
                "26653113/250000000"
              ],
              [
                "-60739/1000000",
                "3616231/500000000"
              ],
              [
                "-170309/1000000",
                "26653113/250000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "26653113/42577250"
            ],
            "new": [
              "6131/50000",
              "125199/200000"
            ]
          },
          {
            "factor": 146,
            "target": "c",
            "old": [
              "385933/500000",
              "220359/250000"
            ],
            "lines": [
              [
                "1099/1600",
                "-33198753727/50000000000"
              ],
              [
                "367/2000",
                "-109087763883/200000000000"
              ],
              [
                "1099/1600",
                "-30282580363/50000000000"
              ],
              [
                "367/2000",
                "-49537610727/200000000000"
              ],
              [
                "39219/50000",
                "-33198753727/50000000000"
              ],
              [
                "56201/200000",
                "-109087763883/200000000000"
              ],
              [
                "39219/50000",
                "-30282580363/50000000000"
              ],
              [
                "56201/200000",
                "-49537610727/200000000000"
              ]
            ],
            "raw": [
              "30282580363/39219000000",
              "220359/250000"
            ],
            "new": [
              "38607/50000",
              "220359/250000"
            ]
          },
          {
            "factor": 146,
            "target": "y",
            "old": [
              "161899/200000",
              "907/1000"
            ],
            "lines": [
              [
                "38607/50000",
                "-37932744067/50000000000"
              ],
              [
                "38607/50000",
                "-205758919743/200000000000"
              ],
              [
                "220359/250000",
                "-38602837843/50000000000"
              ],
              [
                "220359/250000",
                "-219442669647/200000000000"
              ],
              [
                "38607/50000",
                "-35016570703/50000000000"
              ],
              [
                "38607/50000",
                "-146208766587/200000000000"
              ],
              [
                "220359/250000",
                "-35686664479/50000000000"
              ],
              [
                "220359/250000",
                "-159892516491/200000000000"
              ]
            ],
            "raw": [
              "35686664479/44071800000",
              "907/1000"
            ],
            "new": [
              "809739/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 148,
            "target": "v",
            "old": [
              "45119/125000",
              "661759/1000000"
            ],
            "lines": [
              [
                "38607/50000",
                "-17643323347/50000000000"
              ],
              [
                "38607/50000",
                "-116031780863/200000000000"
              ],
              [
                "220359/250000",
                "-18313417123/50000000000"
              ],
              [
                "220359/250000",
                "-129715530767/200000000000"
              ],
              [
                "38607/50000",
                "-7624415321/25000000000"
              ],
              [
                "38607/50000",
                "-33567342709/100000000000"
              ],
              [
                "220359/250000",
                "-7959462209/25000000000"
              ],
              [
                "220359/250000",
                "-40409217661/100000000000"
              ]
            ],
            "raw": [
              "7959462209/22035900000",
              "661759/1000000"
            ],
            "new": [
              "90301/250000",
              "661759/1000000"
            ]
          },
          {
            "factor": 154,
            "target": "g",
            "old": [
              "26089/200000",
              "518499/1000000"
            ],
            "lines": [
              [
                "-809739/1000000",
                "226465158903/1000000000000"
              ],
              [
                "-809739/1000000",
                "294342128151/1000000000000"
              ],
              [
                "-809739/1000000",
                "-3775198291/250000000000"
              ],
              [
                "-809739/1000000",
                "894664577/250000000000"
              ],
              [
                "-809739/1000000",
                "316219657347/1000000000000"
              ],
              [
                "-809739/1000000",
                "76819325319/200000000000"
              ],
              [
                "-809739/1000000",
                "72188953661/250000000000"
              ],
              [
                "-809739/1000000",
                "76858816529/250000000000"
              ],
              [
                "-907/1000",
                "301564267443/1000000000000"
              ],
              [
                "-907/1000",
                "380071474947/1000000000000"
              ],
              [
                "-907/1000",
                "3749894711/62500000000"
              ],
              [
                "-907/1000",
                "5581750319/62500000000"
              ],
              [
                "-907/1000",
                "391318765887/1000000000000"
              ],
              [
                "-907/1000",
                "469825973391/1000000000000"
              ],
              [
                "-907/1000",
                "22740932699/62500000000"
              ],
              [
                "-907/1000",
                "24572788307/62500000000"
              ]
            ],
            "raw": [
              "26089/200000",
              "469825973391/907000000000"
            ],
            "new": [
              "26089/200000",
              "259/500"
            ]
          },
          {
            "factor": 366,
            "target": "u",
            "old": [
              "320603/1000000",
              "355579/500000"
            ],
            "lines": [
              [
                "809739/1000000",
                "-59479580509/125000000000"
              ],
              [
                "809739/1000000",
                "-419215513947/1000000000000"
              ],
              [
                "809739/1000000",
                "-2375814641/6250000000"
              ],
              [
                "809739/1000000",
                "-26271728503/50000000000"
              ],
              [
                "809739/1000000",
                "-73664711521/125000000000"
              ],
              [
                "809739/1000000",
                "-293269263543/1000000000000"
              ],
              [
                "809739/1000000",
                "-7712677979/15625000000"
              ],
              [
                "809739/1000000",
                "-49936039957/125000000000"
              ],
              [
                "907/1000",
                "-59479580509/125000000000"
              ],
              [
                "907/1000",
                "-419215513947/1000000000000"
              ],
              [
                "907/1000",
                "-2375814641/6250000000"
              ],
              [
                "907/1000",
                "-26271728503/50000000000"
              ],
              [
                "907/1000",
                "-73664711521/125000000000"
              ],
              [
                "907/1000",
                "-293269263543/1000000000000"
              ],
              [
                "907/1000",
                "-7712677979/15625000000"
              ],
              [
                "907/1000",
                "-49936039957/125000000000"
              ],
              [
                "809739/1000000",
                "-509643972137/1000000000000"
              ],
              [
                "809739/1000000",
                "-113255710503/250000000000"
              ],
              [
                "809739/1000000",
                "-14668606813/50000000000"
              ],
              [
                "809739/1000000",
                "-5483454547/12500000000"
              ],
              [
                "809739/1000000",
                "-766082202653/1000000000000"
              ],
              [
                "809739/1000000",
                "-117508443507/250000000000"
              ],
              [
                "809739/1000000",
                "-68726295847/125000000000"
              ],
              [
                "809739/1000000",
                "-14240227993/31250000000"
              ],
              [
                "907/1000",
                "-509643972137/1000000000000"
              ],
              [
                "907/1000",
                "-113255710503/250000000000"
              ],
              [
                "907/1000",
                "-14668606813/50000000000"
              ],
              [
                "907/1000",
                "-5483454547/12500000000"
              ],
              [
                "907/1000",
                "-766082202653/1000000000000"
              ],
              [
                "907/1000",
                "-117508443507/250000000000"
              ],
              [
                "907/1000",
                "-68726295847/125000000000"
              ],
              [
                "907/1000",
                "-14240227993/31250000000"
              ]
            ],
            "raw": [
              "293269263543/907000000000",
              "355579/500000"
            ],
            "new": [
              "323339/1000000",
              "355579/500000"
            ]
          },
          {
            "factor": 1697,
            "target": "z",
            "old": [
              "188701/1000000",
              "39927/62500"
            ],
            "lines": [
              [
                "-48408256655012979/250000000000000000",
                "424769498301733086183/12500000000000000000000"
              ],
              [
                "-48408256655012979/250000000000000000",
                "2515132017273640085091/25000000000000000000000"
              ],
              [
                "-50949388655012979/250000000000000000",
                "440349178593733086183/12500000000000000000000"
              ],
              [
                "-50949388655012979/250000000000000000",
                "2674205609907640085091/25000000000000000000000"
              ],
              [
                "-48408256655012979/250000000000000000",
                "804996402796252155849/12500000000000000000000"
              ],
              [
                "-48408256655012979/250000000000000000",
                "1968918853801356634221/50000000000000000000000"
              ],
              [
                "-50949388655012979/250000000000000000",
                "820576083088252155849/12500000000000000000000"
              ],
              [
                "-50949388655012979/250000000000000000",
                "2287066039069356634221/50000000000000000000000"
              ],
              [
                "-42468884675867619/125000000000000000",
                "40545746290333578507/781250000000000000000"
              ],
              [
                "-42468884675867619/125000000000000000",
                "9603722494664210274723/50000000000000000000000"
              ],
              [
                "-43739450675867619/125000000000000000",
                "41519476308583578507/781250000000000000000"
              ],
              [
                "-43739450675867619/125000000000000000",
                "9921869679932210274723/50000000000000000000000"
              ],
              [
                "-42468884675867619/125000000000000000",
                "514479422569928162889/6250000000000000000000"
              ],
              [
                "-42468884675867619/125000000000000000",
                "3271188656959143369381/25000000000000000000000"
              ],
              [
                "-43739450675867619/125000000000000000",
                "522269262715928162889/6250000000000000000000"
              ],
              [
                "-43739450675867619/125000000000000000",
                "3430262249593143369381/25000000000000000000000"
              ],
              [
                "-48408256655012979/250000000000000000",
                "2437655686066048224327/50000000000000000000000"
              ],
              [
                "-48408256655012979/250000000000000000",
                "5768841727406396049777/50000000000000000000000"
              ],
              [
                "-50949388655012979/250000000000000000",
                "2499974407234048224327/50000000000000000000000"
              ],
              [
                "-50949388655012979/250000000000000000",
                "6086988912674396049777/50000000000000000000000"
              ],
              [
                "-48408256655012979/250000000000000000",
                "1538223519399077150349/12500000000000000000000"
              ],
              [
                "-48408256655012979/250000000000000000",
                "4901827320212656612221/50000000000000000000000"
              ],
              [
                "-50949388655012979/250000000000000000",
                "1553803199691077150349/12500000000000000000000"
              ],
              [
                "-50949388655012979/250000000000000000",
                "5219974505480656612221/50000000000000000000000"
              ],
              [
                "-42468884675867619/125000000000000000",
                "3333505455440464904043/50000000000000000000000"
              ],
              [
                "-42468884675867619/125000000000000000",
                "5171150093761663077159/25000000000000000000000"
              ],
              [
                "-43739450675867619/125000000000000000",
                "3395824176608464904043/50000000000000000000000"
              ],
              [
                "-43739450675867619/125000000000000000",
                "5330223686395663077159/25000000000000000000000"
              ],
              [
                "-42468884675867619/125000000000000000",
                "881092980871340660139/6250000000000000000000"
              ],
              [
                "-42468884675867619/125000000000000000",
                "4737642890164793358381/25000000000000000000000"
              ],
              [
                "-43739450675867619/125000000000000000",
                "888882821017340660139/6250000000000000000000"
              ],
              [
                "-43739450675867619/125000000000000000",
                "4896716482798793358381/25000000000000000000000"
              ]
            ],
            "raw": [
              "188701/1000000",
              "512741173133025716783/806804277583549650000"
            ],
            "new": [
              "188701/1000000",
              "317761/500000"
            ]
          },
          {
            "factor": 2162,
            "target": "z",
            "old": [
              "188701/1000000",
              "317761/500000"
            ],
            "lines": [
              [
                "11387441079/25000000000",
                "-268649607501/3125000000000"
              ],
              [
                "87009003459/500000000000",
                "-2052694232721/62500000000000"
              ],
              [
                "66523748823/125000000000",
                "-1569411326637/15625000000000"
              ],
              [
                "125355177171/500000000000",
                "-2957347389249/62500000000000"
              ],
              [
                "11387441079/25000000000",
                "-5462698981239/50000000000000"
              ],
              [
                "87009003459/500000000000",
                "-41739315378819/1000000000000000"
              ],
              [
                "66523748823/125000000000",
                "-31912280590743/250000000000000"
              ],
              [
                "125355177171/500000000000",
                "-60134458117011/1000000000000000"
              ],
              [
                "11387441079/25000000000",
                "-4591976145777/50000000000000"
              ],
              [
                "87009003459/500000000000",
                "-35086308291717/1000000000000000"
              ],
              [
                "66523748823/125000000000",
                "-26825646394449/250000000000000"
              ],
              [
                "125355177171/500000000000",
                "-50549370953973/1000000000000000"
              ],
              [
                "11387441079/25000000000",
                "-5756281407/50000000000"
              ],
              [
                "87009003459/500000000000",
                "-43982515947/1000000000000"
              ],
              [
                "66523748823/125000000000",
                "-33627345759/250000000000"
              ],
              [
                "125355177171/500000000000",
                "-63366270843/1000000000000"
              ]
            ],
            "raw": [
              "919677/4872875",
              "317761/500000"
            ],
            "new": [
              "188733/1000000",
              "317761/500000"
            ]
          },
          {
            "factor": 2771,
            "target": "x",
            "old": [
              "235483/1000000",
              "711127/1000000"
            ],
            "lines": [
              [
                "-16732094931959703/62500000000000000",
                "30855757625641835385363/250000000000000000000000"
              ],
              [
                "-16732094931959703/62500000000000000",
                "42190216450984312493583/250000000000000000000000"
              ],
              [
                "-18974109869459703/62500000000000000",
                "33755481097147085385363/250000000000000000000000"
              ],
              [
                "-18974109869459703/62500000000000000",
                "45089939922489562493583/250000000000000000000000"
              ],
              [
                "-16732094931959703/62500000000000000",
                "32853995859696560823/250000000000000000000"
              ],
              [
                "-16732094931959703/62500000000000000",
                "5830779460344683119629/31250000000000000000000"
              ],
              [
                "-18974109869459703/62500000000000000",
                "35753719331201810823/250000000000000000000"
              ],
              [
                "-18974109869459703/62500000000000000",
                "6193244894282839369629/31250000000000000000000"
              ],
              [
                "-16732094931959703/62500000000000000",
                "18072256274934251051943/125000000000000000000000"
              ],
              [
                "-16732094931959703/62500000000000000",
                "23739485687605489606053/125000000000000000000000"
              ],
              [
                "-18974109869459703/62500000000000000",
                "21261109992779501051943/125000000000000000000000"
              ],
              [
                "-18974109869459703/62500000000000000",
                "26928339405450739606053/125000000000000000000000"
              ],
              [
                "-16732094931959703/62500000000000000",
                "16830606682068804861/125000000000000000000"
              ],
              [
                "-16732094931959703/62500000000000000",
                "1482920412099953558001/7812500000000000000000"
              ],
              [
                "-18974109869459703/62500000000000000",
                "20019460399914054861/125000000000000000000"
              ],
              [
                "-18974109869459703/62500000000000000",
                "1682223769465281683001/7812500000000000000000"
              ],
              [
                "-31218928874574477/250000000000000000",
                "13134563062927740690363/250000000000000000000000"
              ],
              [
                "-31218928874574477/250000000000000000",
                "16874010858471410108523/250000000000000000000000"
              ],
              [
                "-40186988624574477/250000000000000000",
                "16034286534432990690363/250000000000000000000000"
              ],
              [
                "-40186988624574477/250000000000000000",
                "19773734329976660108523/250000000000000000000000"
              ],
              [
                "-31218928874574477/250000000000000000",
                "945800081061404133/15625000000000000000"
              ],
              [
                "-31218928874574477/250000000000000000",
                "5332507522561140642993/62500000000000000000000"
              ],
              [
                "-40186988624574477/250000000000000000",
                "563516399015241129/7812500000000000000"
              ],
              [
                "-40186988624574477/250000000000000000",
                "6057438390437453142993/62500000000000000000000"
              ],
              [
                "-31218928874574477/250000000000000000",
                "9211658993577203704443/125000000000000000000000"
              ],
              [
                "-31218928874574477/250000000000000000",
                "11081382891349038413523/125000000000000000000000"
              ],
              [
                "-40186988624574477/250000000000000000",
                "12400512711422453704443/125000000000000000000000"
              ],
              [
                "-40186988624574477/250000000000000000",
                "14270236609194288413523/125000000000000000000000"
              ],
              [
                "-31218928874574477/250000000000000000",
                "15940018801423515027/250000000000000000000"
              ],
              [
                "-31218928874574477/250000000000000000",
                "5534311898671402867743/62500000000000000000000"
              ],
              [
                "-40186988624574477/250000000000000000",
                "22317726237114015027/250000000000000000000"
              ],
              [
                "-40186988624574477/250000000000000000",
                "7128738757594027867743/62500000000000000000000"
              ]
            ],
            "raw": [
              "235483/1000000",
              "226511692209433149421/318944354163289500000"
            ],
            "new": [
              "235483/1000000",
              "44387/62500"
            ]
          }
        ]
      }
    },
    {
      "id": 7,
      "assumptions": [
        "AGO+",
        "AGP+",
        "DGP-",
        "AFG-",
        "BGO-",
        "GOP-"
      ],
      "initial_box": {
        "low": [
          "6131/50000",
          "123/1000",
          "38607/50000",
          "6131/50000",
          "21211/40000",
          "617/1000",
          "26089/200000",
          "614277/1000000",
          "188733/1000000",
          "235483/1000000",
          "809739/1000000",
          "323339/1000000",
          "90301/250000"
        ],
        "high": [
          "125199/200000",
          "524143/1000000",
          "220359/250000",
          "99869/200000",
          "907/1000",
          "220359/250000",
          "259/500",
          "1",
          "317761/500000",
          "44387/62500",
          "907/1000",
          "355579/500000",
          "661759/1000000"
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
        "AFG": -1,
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
        "EGO": -1,
        "BGO": -1,
        "BDG": 1,
        "BEG": 1,
        "GOP": -1,
        "BGP": -1,
        "AOP": -1,
        "BOP": -1,
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
            "FACDG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "ACF",
            "ADF",
            "CFG",
            "AFG",
            "CDF"
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
            "DEG",
            "OP",
            "EGD",
            [
              "area",
              "DEG",
              "U_DEG",
              "137689/200000"
            ]
          ],
          "target": "EGO",
          "sign": -1,
          "deps": [
            "DGO",
            "DEO",
            "DGP",
            "DEP",
            "EOP"
          ],
          "area_stage": 0
        },
        {
          "rule": [
            "plu",
            "BADGO"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "ABD",
            "BGO",
            "ABG",
            "BDO",
            "ABO"
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
            "plu",
            "GABOP"
          ],
          "target": "BGP",
          "sign": -1,
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
            "cap",
            "ABO",
            [
              "G"
            ],
            "P",
            [
              "area",
              "ABO",
              "U_ABO",
              "35277644490547/56687500000000"
            ]
          ],
          "target": "BOP",
          "sign": -1,
          "deps": [
            "ABP",
            "AOP"
          ],
          "area_stage": 4
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
              "122966781673/200000000000"
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
          "area_stage": 5
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
        "L_ADE": {
          "triangle": "ADE",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ADE",
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
        "L_AEF": {
          "triangle": "AEF",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "AEF",
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
        "L_BCH": {
          "triangle": "BCH",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BCH",
            "points": [
              "G"
            ]
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
        "L_CEF": {
          "triangle": "CEF",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CEF",
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
        "U_ABC": {
          "triangle": "ABC",
          "side": "hi",
          "value": "403/1000",
          "witness": {
            "kind": "cap",
            "cap": "ABC",
            "value": "403/1000"
          }
        },
        "U_ABO": {
          "triangle": "ABO",
          "side": "hi",
          "value": "118372688951/200000000000",
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
              "5669528123/50000000000",
              "6267683273/50000000000",
              "34002338517/200000000000",
              "4289984501/25000000000",
              "36394959117/200000000000",
              "1147265519/6250000000",
              "243719311977/1000000000000",
              "2946979843/10000000000",
              "389023539477/1000000000000",
              "2200011059/5000000000",
              "447232357057/1000000000000",
              "5839714413/12500000000",
              "11978506401/25000000000",
              "24910551469/50000000000",
              "33805298277/62500000000",
              "118372688951/200000000000"
            ],
            "cell": "CB"
          }
        },
        "U_ABP": {
          "triangle": "ABP",
          "side": "hi",
          "value": "231963401231/500000000000",
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
              "497033189/7812500000",
              "3449683009/50000000000",
              "5298096259/50000000000",
              "2913700649/25000000000",
              "1918953637/12500000000",
              "41174990423/250000000000",
              "33967860861/200000000000",
              "41361513861/200000000000",
              "13265895467/62500000000",
              "221154047557/1000000000000",
              "306393003097/1000000000000",
              "322233761057/1000000000000",
              "369788126837/1000000000000",
              "41261205921/100000000000",
              "44958032421/100000000000",
              "231963401231/500000000000"
            ],
            "cell": "CB"
          }
        },
        "U_ACF": {
          "triangle": "ACF",
          "side": "hi",
          "value": "220359/250000",
          "witness": {
            "kind": "vertices",
            "signed": "ACF",
            "used": [
              0,
              2,
              5
            ],
            "values": [
              "6750231357/10000000000",
              "35795019309/50000000000",
              "1882791833/2500000000",
              "2454818361/3125000000",
              "10506984369/12500000000",
              "10612635721/12500000000",
              "220359/250000"
            ],
            "cell": "CB"
          }
        },
        "U_ACO": {
          "triangle": "ACO",
          "side": "hi",
          "value": "9730806409/12500000000",
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
              "57857454549/200000000000",
              "309369756969/1000000000000",
              "72877276257/200000000000",
              "79019820753/200000000000",
              "13985674753/25000000000",
              "1466131833/2500000000",
              "37908451089/62500000000",
              "6176358077/10000000000",
              "31726304933/50000000000",
              "79315793543/125000000000",
              "33077592087/50000000000",
              "34613228211/50000000000",
              "8659186453/12500000000",
              "173183791481/250000000000",
              "36012784757/50000000000",
              "9730806409/12500000000"
            ],
            "cell": "CB"
          }
        },
        "U_ACP": {
          "triangle": "ACP",
          "side": "hi",
          "value": "140604679391/250000000000",
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
              "-30987722571/1000000000000",
              "-409425087/200000000000",
              "105892516167/500000000000",
              "11193403897/50000000000",
              "46004682453/200000000000",
              "233932274409/1000000000000",
              "24072562947/100000000000",
              "62486088701/250000000000",
              "6785561093/25000000000",
              "37187340073/125000000000",
              "11398465391/25000000000",
              "47279616717/100000000000",
              "238352514657/500000000000",
              "25174649071/50000000000",
              "64358043973/125000000000",
              "140604679391/250000000000"
            ],
            "cell": "CB"
          }
        },
        "U_ADE": {
          "triangle": "ADE",
          "side": "hi",
          "value": "39219/50000",
          "witness": {
            "kind": "vertices",
            "signed": "ADE",
            "used": [
              0,
              3,
              4
            ],
            "values": [
              "3093/100000",
              "81531/200000",
              "39219/50000"
            ],
            "cell": "CB"
          }
        },
        "U_ADF": {
          "triangle": "ADF",
          "side": "hi",
          "value": "43869/50000",
          "witness": {
            "kind": "vertices",
            "signed": "ADF",
            "used": [
              0,
              3,
              5
            ],
            "values": [
              "9042961/20000000",
              "2428194347/5000000000",
              "5453210229/10000000000",
              "25797627/40000000",
              "5476699/8000000",
              "1635395693/2000000000",
              "43869/50000"
            ],
            "cell": "CB"
          }
        },
        "U_ADH": {
          "triangle": "ADH",
          "side": "hi",
          "value": "43869/50000",
          "witness": {
            "kind": "vertices",
            "signed": "ADH",
            "used": [
              0,
              3,
              7
            ],
            "values": [
              "-5859/500000",
              "74801/200000",
              "491657/1000000",
              "43869/50000"
            ],
            "cell": "CB"
          }
        },
        "U_BCF": {
          "triangle": "BCF",
          "side": "hi",
          "value": "189609/250000",
          "witness": {
            "kind": "vertices",
            "signed": "BCF",
            "used": [
              1,
              2,
              5
            ],
            "values": [
              "247997/1000000",
              "357293/1000000",
              "32457/50000",
              "189609/250000"
            ],
            "cell": "CB"
          }
        },
        "U_BCO": {
          "triangle": "BCO",
          "side": "hi",
          "value": "171975363/250000000",
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
              "200812842783/1000000000000",
              "224933279/1000000000",
              "289314076527/1000000000000",
              "324064751/1000000000",
              "26281698723/50000000000",
              "29438499/50000000",
              "153533802051/250000000000",
              "171975363/250000000"
            ],
            "cell": "CB"
          }
        },
        "U_BHO": {
          "triangle": "BHO",
          "side": "hi",
          "value": "698753/1000000",
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
              "135759028677/1000000000000",
              "168693616791/1000000000000",
              "180656719791/1000000000000",
              "186737701/1000000000",
              "212080897/1000000000",
              "56011/250000",
              "247101829857/1000000000000",
              "14904025109/50000000000",
              "7192131831/15625000000",
              "59032442523/125000000000",
              "2154818601/4000000000",
              "589683322573/1000000000000",
              "610468028677/1000000000000",
              "661446701/1000000000",
              "686789897/1000000000",
              "698753/1000000"
            ],
            "cell": "CB"
          }
        },
        "U_BHP": {
          "triangle": "BHP",
          "side": "hi",
          "value": "669554357/1000000000",
          "witness": {
            "kind": "vertices",
            "signed": "HBP",
            "used": [
              1,
              7,
              11,
              12
            ],
            "values": [
              "-2870362957/250000000000",
              "8246658683/125000000000",
              "146052347537/1000000000000",
              "167491731903/1000000000000",
              "204459996903/1000000000000",
              "223507068829/1000000000000",
              "61191773/250000000",
              "281735357/1000000000",
              "304201561327/1000000000000",
              "94084387043/250000000000",
              "202860011883/500000000000",
              "221344144383/500000000000",
              "115433840173/250000000000",
              "533871347537/1000000000000",
              "158146523/250000000",
              "669554357/1000000000"
            ],
            "cell": "CB"
          }
        },
        "U_CDH": {
          "triangle": "CDH",
          "side": "hi",
          "value": "6134242483/10000000000",
          "witness": {
            "kind": "vertices",
            "signed": "CDH",
            "used": [
              2,
              3,
              7
            ],
            "values": [
              "45228205137/250000000000",
              "2833071029/12500000000",
              "11732448201/50000000000",
              "806349517/2500000000",
              "32060737353/62500000000",
              "6569167569/12500000000",
              "27935232971/50000000000",
              "6134242483/10000000000"
            ],
            "cell": "CB"
          }
        },
        "U_CDO": {
          "triangle": "CDO",
          "side": "hi",
          "value": "94929201933/200000000000",
          "witness": {
            "kind": "vertices",
            "signed": "CDO",
            "used": [
              2,
              3,
              9,
              10
            ],
            "values": [
              "29250958519/250000000000",
              "1606693591/12500000000",
              "21901581457/125000000000",
              "22689466247/125000000000",
              "9337215243/50000000000",
              "1921031923/10000000000",
              "9652369159/50000000000",
              "2678313547/12500000000",
              "1077202763/5000000000",
              "11880122203/50000000000",
              "6257800247/25000000000",
              "13623695067/50000000000",
              "418559295581/1000000000000",
              "86018189757/200000000000",
              "90496823641/200000000000",
              "94929201933/200000000000"
            ],
            "cell": "CB"
          }
        },
        "U_CEO": {
          "triangle": "CEO",
          "side": "hi",
          "value": "693416919/1000000000",
          "witness": {
            "kind": "vertices",
            "signed": "CEO",
            "used": [
              2,
              4,
              9,
              10
            ],
            "values": [
              "11675769181/62500000000",
              "1983439601/10000000000",
              "2716957553/12500000000",
              "2395184957/10000000000",
              "12034698227/50000000000",
              "62831050699/250000000000",
              "16428491/62500000",
              "438538621871/1000000000000",
              "18002811003/40000000000",
              "93816583843/200000000000",
              "19649792427/40000000000",
              "33562751377/50000000000",
              "170471316449/250000000000",
              "693416919/1000000000"
            ],
            "cell": "CB"
          }
        },
        "U_CHO": {
          "triangle": "CHO",
          "side": "hi",
          "value": "173567800353/250000000000",
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
              "16945026301/250000000000",
              "4428743573/50000000000",
              "38377363/250000000",
              "8183699/50000000",
              "295575819471/1000000000000",
              "316939034223/1000000000000",
              "370674928011/1000000000000",
              "402668381019/1000000000000",
              "135622276301/250000000000",
              "28164193573/50000000000",
              "73397329983/125000000000",
              "76067731827/125000000000",
              "157054613/250000000",
              "31919149/50000000",
              "165569437101/250000000000",
              "173567800353/250000000000"
            ],
            "cell": "CB"
          }
        },
        "U_EFH": {
          "triangle": "EFH",
          "side": "hi",
          "value": "57470673359/125000000000",
          "witness": {
            "kind": "vertices",
            "signed": "EFH",
            "used": [
              4,
              5,
              7
            ],
            "values": [
              "57381/1000000",
              "20493387/250000000",
              "31926602443/250000000000",
              "205112909/1000000000",
              "11592813/40000000",
              "4140325251/10000000000",
              "218776117/500000000",
              "57470673359/125000000000"
            ],
            "cell": "CB"
          }
        },
        "U_FHO": {
          "triangle": "FHO",
          "side": "hi",
          "value": "41925723699/250000000000",
          "witness": {
            "kind": "vertices",
            "signed": "FHO",
            "used": [
              5,
              7,
              9,
              10
            ],
            "values": [
              "-167185381019/1000000000000",
              "-89778881791/1000000000000",
              "-81456034223/1000000000000",
              "-29768844791/1000000000000",
              "3980199647/250000000000",
              "57381/1000000",
              "20493387/250000000",
              "11665912227/125000000000",
              "12706268173/125000000000",
              "117391037/1000000000",
              "4791791713/31250000000",
              "41925723699/250000000000"
            ],
            "cell": "CB"
          }
        },
        "U_FHP": {
          "triangle": "FHP",
          "side": "hi",
          "value": "35191111941/62500000000",
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
              "16573388989/200000000000",
              "95422895097/1000000000000",
              "208694697/1000000000",
              "116228826541/500000000000",
              "122506801617/500000000000",
              "280865330097/1000000000000",
              "74534448519/250000000000",
              "13911477677/40000000000",
              "98534283/250000000",
              "215228019117/500000000000",
              "248688825031/500000000000",
              "35191111941/62500000000"
            ],
            "cell": "CB"
          }
        }
      },
      "relations": {
        "0": {
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
        "1": {
          "row": [
            "fan",
            "ABP",
            "ABG",
            "BGP",
            "AGP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ABP",
            "point": "G"
          }
        },
        "5": {
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
        "6": {
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
        "9": {
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
        "22": {
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
        "134": {
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
        "154": {
          "row": [
            "plu",
            "ACE",
            "CDO",
            "ACD",
            "CEO",
            "ACO",
            "CDE"
          ],
          "witness": {
            "kind": "plu",
            "word": "CADEO"
          }
        },
        "168": {
          "row": [
            "plu",
            "ACF",
            "CEO",
            "ACE",
            "CFO",
            "ACO",
            "CEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "CAEFO"
          }
        },
        "188": {
          "row": [
            "plu",
            "BCE",
            "CDH",
            "BCD",
            "CEH",
            "BCH",
            "CDE"
          ],
          "witness": {
            "kind": "plu",
            "word": "CBDEH"
          }
        },
        "192": {
          "row": [
            "plu",
            "BCF",
            "CDH",
            "BCD",
            "CFH",
            "BCH",
            "CDF"
          ],
          "witness": {
            "kind": "plu",
            "word": "CBDFH"
          }
        },
        "254": {
          "row": [
            "plu",
            "CFP",
            "CHO",
            "CFH",
            "COP",
            "CFO",
            "CHP"
          ],
          "witness": {
            "kind": "plu",
            "word": "CFHOP"
          }
        },
        "415": {
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
        "602": {
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
        "637": {
          "row": [
            "support",
            "BCF",
            "ACF",
            "ABC",
            "2697/5000"
          ],
          "witness": {
            "kind": "quad_support",
            "poly": "CFAB",
            "occupants": [
              "G"
            ],
            "rate": "29/5"
          }
        },
        "640": {
          "row": [
            "linear",
            {
              "ABC": "-1",
              "ACH": "-1"
            },
            "-43317687/50000000"
          ],
          "witness": {
            "kind": "quad_container",
            "poly": "ABCH",
            "container": "HABC",
            "cap": "43317687/50000000"
          }
        },
        "733": {
          "row": [
            "quad",
            "ACD",
            "ADP",
            "449/1000"
          ],
          "witness": {
            "kind": "quad",
            "poly": "ACDP",
            "occupants": [
              "G"
            ]
          }
        },
        "751": {
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
        "769": {
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
        "817": {
          "row": [
            "quad",
            "BCO",
            "BGO",
            "449/1000"
          ],
          "witness": {
            "kind": "quad",
            "poly": "BCOG",
            "occupants": [
              "P"
            ]
          }
        },
        "830": {
          "row": [
            "linear",
            {
              "BCO": "1",
              "BHO": "1",
              "CGH": "-1",
              "CHP": "-1"
            },
            "2697/5000"
          ],
          "witness": {
            "kind": "spread",
            "poly": "BCOH",
            "pair": [
              "G",
              "P"
            ],
            "diagonal": "CH",
            "rate": "29/5",
            "container": null
          }
        },
        "1020": {
          "row": [
            "support",
            "CFH",
            "BCF",
            "BFH",
            "1023/1000"
          ],
          "witness": {
            "kind": "five_support",
            "poly": "FHABC"
          }
        },
        "1166": {
          "row": [
            "support",
            "CFH",
            "EFH",
            "CEH",
            "1023/1000"
          ],
          "witness": {
            "kind": "five_support",
            "poly": "HCDEF"
          }
        },
        "1276": {
          "row": [
            "balance",
            [
              [
                1,
                "ABC",
                "FHO"
              ],
              [
                -1,
                "ABO",
                "CFH"
              ],
              [
                1,
                "ACO",
                "BFH"
              ],
              [
                -1,
                "AFH",
                "BCO"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ABC",
            "point": "O",
            "line": "FH"
          }
        },
        "1524": {
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
        "1560": {
          "row": [
            "balance",
            [
              [
                1,
                "ACO",
                "DEF"
              ],
              [
                1,
                "ADE",
                "CFO"
              ],
              [
                -1,
                "ADF",
                "CEO"
              ],
              [
                1,
                "AEF",
                "CDO"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ADE",
            "point": "F",
            "line": "CO"
          }
        },
        "2791": {
          "row": [
            "linear",
            {
              "ACH": "94104679391/250000000000",
              "CHP": "-93/1000",
              "CGH": "-140604679391/250000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACP",
            "point": "G",
            "line": "CH",
            "side": "upper",
            "outer_upper": {
              "triangle": "ACP",
              "ref": "U_ACP",
              "value": "140604679391/250000000000"
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
            "residual": "70854679391/250000000000"
          }
        },
        "2822": {
          "row": [
            "linear",
            {
              "AOP": "94104679391/250000000000",
              "COP": "-93/1000",
              "GOP": "-140604679391/250000000000"
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
              "value": "140604679391/250000000000"
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
            "residual": "70854679391/250000000000"
          }
        },
        "2961": {
          "row": [
            "linear",
            {
              "ABG": "-93/1000",
              "ACG": "-93/1000",
              "AGO": "125475363/250000000",
              "AGP": "-171975363/250000000"
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
              "value": "171975363/250000000"
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
            "residual": "102225363/250000000"
          }
        },
        "3280": {
          "row": [
            "linear",
            {
              "BHP": "512753/1000000",
              "HOP": "-93/1000",
              "GHP": "-698753/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "HBO",
            "point": "G",
            "line": "HP",
            "side": "lower",
            "outer_upper": {
              "triangle": "BHO",
              "ref": "U_BHO",
              "value": "698753/1000000"
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
            "residual": "419753/1000000"
          }
        },
        "3647": {
          "row": [
            "linear",
            {
              "FHO": "-93/1000",
              "CFO": "127067800353/250000000000",
              "FOP": "-173567800353/250000000000"
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
              "value": "173567800353/250000000000"
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
            "residual": "103817800353/250000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0003",
          "relation": 1,
          "rule": "sub",
          "triangle": "ABG",
          "side": "hi",
          "value": "277927/1000000",
          "sources": [
            "U_ABP",
            "L_BGP",
            "L_AGP"
          ]
        },
        {
          "id": "T0010",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "81293/200000",
          "sources": [
            "U_ACO",
            "L_ACP",
            "L_COP"
          ]
        },
        {
          "id": "T0019",
          "relation": 22,
          "rule": "sub",
          "triangle": "HOP",
          "side": "hi",
          "value": "188529/500000",
          "sources": [
            "U_FHP",
            "L_FHO",
            "L_FOP"
          ]
        },
        {
          "id": "T0023",
          "relation": 134,
          "rule": "sumlo",
          "triangle": "ACD",
          "side": "lo",
          "value": "53121/500000",
          "sources": [
            "L_ABC",
            "L_CDO",
            "L_ACO",
            "L_BCD",
            "U_BCO"
          ]
        },
        {
          "id": "T0030",
          "relation": 192,
          "rule": "sumlo",
          "triangle": "BCF",
          "side": "lo",
          "value": "7367/50000",
          "sources": [
            "L_BCD",
            "L_CFH",
            "L_BCH",
            "L_CDF",
            "U_CDH"
          ]
        },
        {
          "id": "T0033",
          "relation": 254,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "105267/1000000",
          "sources": [
            "L_CFH",
            "L_COP",
            "L_CFO",
            "L_CHP",
            "U_CHO"
          ]
        },
        {
          "id": "T0037",
          "relation": 415,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "8239/62500",
          "sources": [
            "L_CFH",
            "L_FOP",
            "T0033",
            "L_FHO",
            "U_FHP"
          ]
        },
        {
          "id": "T0045",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "127671/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "L_ACP",
            "L_BOP",
            "T0010"
          ]
        },
        {
          "id": "T0046",
          "relation": 640,
          "rule": "linear",
          "triangle": "ACH",
          "side": "hi",
          "value": "386677/500000",
          "sources": [
            "L_ABC"
          ]
        },
        {
          "id": "T0047",
          "relation": 751,
          "rule": "quad",
          "triangle": "AFH",
          "side": "lo",
          "value": "70271/500000",
          "sources": [
            "U_ACF"
          ]
        },
        {
          "id": "T0055",
          "relation": 1166,
          "rule": "support_z",
          "triangle": "CEH",
          "side": "lo",
          "value": "381463/1000000",
          "sources": [
            "L_CFH",
            "U_EFH"
          ]
        },
        {
          "id": "T0061",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "25573/250000",
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
          "id": "T0066",
          "relation": 1560,
          "rule": "balance_lo",
          "triangle": "CEO",
          "side": "lo",
          "value": "97271/1000000",
          "sources": [
            "L_ACO",
            "L_DEF",
            "L_ADE",
            "T0037",
            "L_AEF",
            "L_CDO",
            "U_ADF"
          ]
        },
        {
          "id": "T0084",
          "relation": 2791,
          "rule": "linear",
          "triangle": "CGH",
          "side": "hi",
          "value": "502217/1000000",
          "sources": [
            "T0046",
            "L_CHP"
          ]
        },
        {
          "id": "T0085",
          "relation": 2822,
          "rule": "linear",
          "triangle": "AOP",
          "side": "lo",
          "value": "161931/1000000",
          "sources": [
            "L_COP",
            "L_GOP"
          ]
        },
        {
          "id": "T0088",
          "relation": 2961,
          "rule": "linear",
          "triangle": "AGO",
          "side": "lo",
          "value": "161929/1000000",
          "sources": [
            "L_ABG",
            "L_ACG",
            "L_AGP"
          ]
        },
        {
          "id": "T0092",
          "relation": 3280,
          "rule": "linear",
          "triangle": "GHP",
          "side": "hi",
          "value": "478949/1000000",
          "sources": [
            "U_BHP",
            "L_HOP"
          ]
        },
        {
          "id": "T0099",
          "relation": 3647,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "144049/1000000",
          "sources": [
            "L_FHO",
            "L_FOP"
          ]
        },
        {
          "id": "T0102",
          "relation": 0,
          "rule": "sum",
          "triangle": "ABO",
          "side": "lo",
          "value": "347929/1000000",
          "sources": [
            "L_ABG",
            "L_BGO",
            "T0088"
          ]
        },
        {
          "id": "T0105",
          "relation": 5,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "261767/500000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0085"
          ]
        },
        {
          "id": "T0106",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "72073/250000",
          "sources": [
            "L_ACG",
            "T0061",
            "L_AGP"
          ]
        },
        {
          "id": "T0107",
          "relation": 6,
          "rule": "sub",
          "triangle": "CGP",
          "side": "hi",
          "value": "168767/500000",
          "sources": [
            "T0105",
            "L_ACG",
            "L_AGP"
          ]
        },
        {
          "id": "T0110",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "313671/1000000",
          "sources": [
            "T0045",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0116",
          "relation": 154,
          "rule": "sumlo",
          "triangle": "ACE",
          "side": "lo",
          "value": "78763/500000",
          "sources": [
            "T0023",
            "T0066",
            "L_ACO",
            "L_CDE",
            "U_CDO"
          ]
        },
        {
          "id": "T0117",
          "relation": 168,
          "rule": "sumlo",
          "triangle": "CEO",
          "side": "lo",
          "value": "49423/500000",
          "sources": [
            "T0116",
            "T0099",
            "L_ACO",
            "L_CEF",
            "U_ACF"
          ]
        },
        {
          "id": "T0119",
          "relation": 188,
          "rule": "sumlo",
          "triangle": "BCE",
          "side": "lo",
          "value": "100131/1000000",
          "sources": [
            "L_BCD",
            "T0055",
            "L_BCH",
            "L_CDE",
            "U_CDH"
          ]
        },
        {
          "id": "T0122",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "129797/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0106",
            "L_BOP",
            "T0010"
          ]
        },
        {
          "id": "T0129",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "273/2500",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0106",
            "L_BGO",
            "L_AGP",
            "T0110",
            "U_ABO"
          ]
        },
        {
          "id": "T0144",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "397173/1000000",
          "sources": [
            "U_ACO",
            "T0106",
            "L_COP"
          ]
        },
        {
          "id": "T0145",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "369/1250",
          "sources": [
            "L_ACG",
            "T0129",
            "L_AGP"
          ]
        },
        {
          "id": "T0146",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "315797/1000000",
          "sources": [
            "T0122",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0152",
          "relation": 154,
          "rule": "sumlo",
          "triangle": "ACE",
          "side": "lo",
          "value": "157879/1000000",
          "sources": [
            "T0023",
            "T0117",
            "L_ACO",
            "L_CDE",
            "U_CDO"
          ]
        },
        {
          "id": "T0153",
          "relation": 168,
          "rule": "sumlo",
          "triangle": "CEO",
          "side": "lo",
          "value": "98903/1000000",
          "sources": [
            "T0152",
            "T0099",
            "L_ACO",
            "L_CEF",
            "U_ACF"
          ]
        },
        {
          "id": "T0156",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "134451/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0145",
            "L_BOP",
            "T0144"
          ]
        },
        {
          "id": "T0161",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "110619/1000000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0145",
            "L_BGO",
            "L_AGP",
            "T0146",
            "U_ABO"
          ]
        },
        {
          "id": "T0168",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "78053/200000",
          "sources": [
            "U_ACO",
            "T0145",
            "L_COP"
          ]
        },
        {
          "id": "T0169",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "296619/1000000",
          "sources": [
            "L_ACG",
            "T0161",
            "L_AGP"
          ]
        },
        {
          "id": "T0170",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "320451/1000000",
          "sources": [
            "T0156",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0175",
          "relation": 154,
          "rule": "sumlo",
          "triangle": "ACE",
          "side": "lo",
          "value": "157891/1000000",
          "sources": [
            "T0023",
            "T0153",
            "L_ACO",
            "L_CDE",
            "U_CDO"
          ]
        },
        {
          "id": "T0176",
          "relation": 168,
          "rule": "sumlo",
          "triangle": "CEO",
          "side": "lo",
          "value": "19781/200000",
          "sources": [
            "T0175",
            "T0099",
            "L_ACO",
            "L_CEF",
            "U_ACF"
          ]
        },
        {
          "id": "T0179",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "137169/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0169",
            "L_BOP",
            "T0168"
          ]
        },
        {
          "id": "T0184",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "111573/1000000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0169",
            "L_BGO",
            "L_AGP",
            "T0170",
            "U_ABO"
          ]
        },
        {
          "id": "T0191",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "194423/500000",
          "sources": [
            "U_ACO",
            "T0169",
            "L_COP"
          ]
        },
        {
          "id": "T0192",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "297573/1000000",
          "sources": [
            "L_ACG",
            "T0184",
            "L_AGP"
          ]
        },
        {
          "id": "T0193",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "323169/1000000",
          "sources": [
            "T0179",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0198",
          "relation": 154,
          "rule": "sumlo",
          "triangle": "ACE",
          "side": "lo",
          "value": "39473/250000",
          "sources": [
            "T0023",
            "T0176",
            "L_ACO",
            "L_CDE",
            "U_CDO"
          ]
        },
        {
          "id": "T0201",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "68949/500000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0192",
            "L_BOP",
            "T0191"
          ]
        },
        {
          "id": "T0206",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "2243/20000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0192",
            "L_BGO",
            "L_AGP",
            "T0193",
            "U_ABO"
          ]
        },
        {
          "id": "T0213",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "96973/250000",
          "sources": [
            "U_ACO",
            "T0192",
            "L_COP"
          ]
        },
        {
          "id": "T0214",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "5963/20000",
          "sources": [
            "L_ACG",
            "T0206",
            "L_AGP"
          ]
        },
        {
          "id": "T0215",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "161949/500000",
          "sources": [
            "T0201",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0222",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "17297/125000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0214",
            "L_BOP",
            "T0213"
          ]
        },
        {
          "id": "T0227",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "28089/250000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0214",
            "L_BGO",
            "L_AGP",
            "T0215",
            "U_ABO"
          ]
        },
        {
          "id": "T0234",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "77463/200000",
          "sources": [
            "U_ACO",
            "T0214",
            "L_COP"
          ]
        },
        {
          "id": "T0235",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "74589/250000",
          "sources": [
            "L_ACG",
            "T0227",
            "L_AGP"
          ]
        },
        {
          "id": "T0236",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "40547/125000",
          "sources": [
            "T0222",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0243",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "138631/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0235",
            "L_BOP",
            "T0234"
          ]
        },
        {
          "id": "T0248",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "112463/1000000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0235",
            "L_BGO",
            "L_AGP",
            "T0236",
            "U_ABO"
          ]
        },
        {
          "id": "T0255",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "387109/1000000",
          "sources": [
            "U_ACO",
            "T0235",
            "L_COP"
          ]
        },
        {
          "id": "T0256",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "298463/1000000",
          "sources": [
            "L_ACG",
            "T0248",
            "L_AGP"
          ]
        },
        {
          "id": "T0257",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "324631/1000000",
          "sources": [
            "T0243",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0264",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "138731/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0256",
            "L_BOP",
            "T0255"
          ]
        },
        {
          "id": "T0269",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "2813/25000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0256",
            "L_BGO",
            "L_AGP",
            "T0257",
            "U_ABO"
          ]
        },
        {
          "id": "T0275",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "193501/500000",
          "sources": [
            "U_ACO",
            "T0256",
            "L_COP"
          ]
        },
        {
          "id": "T0276",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "7463/25000",
          "sources": [
            "L_ACG",
            "T0269",
            "L_AGP"
          ]
        },
        {
          "id": "T0277",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "324731/1000000",
          "sources": [
            "T0264",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0283",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "138783/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0276",
            "L_BOP",
            "T0275"
          ]
        },
        {
          "id": "T0288",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "22509/200000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0276",
            "L_BGO",
            "L_AGP",
            "T0277",
            "U_ABO"
          ]
        },
        {
          "id": "T0294",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "77389/200000",
          "sources": [
            "U_ACO",
            "T0276",
            "L_COP"
          ]
        },
        {
          "id": "T0295",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "59709/200000",
          "sources": [
            "L_ACG",
            "T0288",
            "L_AGP"
          ]
        },
        {
          "id": "T0296",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "324783/1000000",
          "sources": [
            "T0283",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0302",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "138809/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0295",
            "L_BOP",
            "T0294"
          ]
        },
        {
          "id": "T0307",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "112557/1000000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0295",
            "L_BGO",
            "L_AGP",
            "T0296",
            "U_ABO"
          ]
        },
        {
          "id": "T0313",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "9673/25000",
          "sources": [
            "U_ACO",
            "T0295",
            "L_COP"
          ]
        },
        {
          "id": "T0314",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "298557/1000000",
          "sources": [
            "L_ACG",
            "T0307",
            "L_AGP"
          ]
        },
        {
          "id": "T0315",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "324809/1000000",
          "sources": [
            "T0302",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0321",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "138821/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0314",
            "L_BOP",
            "T0313"
          ]
        },
        {
          "id": "T0326",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "112563/1000000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0314",
            "L_BGO",
            "L_AGP",
            "T0315",
            "U_ABO"
          ]
        },
        {
          "id": "T0332",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "96727/250000",
          "sources": [
            "U_ACO",
            "T0314",
            "L_COP"
          ]
        },
        {
          "id": "T0333",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "298563/1000000",
          "sources": [
            "L_ACG",
            "T0326",
            "L_AGP"
          ]
        },
        {
          "id": "T0334",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "324821/1000000",
          "sources": [
            "T0321",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0340",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "138827/1000000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0333",
            "L_BOP",
            "T0332"
          ]
        },
        {
          "id": "T0345",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "56283/500000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0333",
            "L_BGO",
            "L_AGP",
            "T0334",
            "U_ABO"
          ]
        },
        {
          "id": "T0351",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "193451/500000",
          "sources": [
            "U_ACO",
            "T0333",
            "L_COP"
          ]
        },
        {
          "id": "T0352",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "149283/500000",
          "sources": [
            "L_ACG",
            "T0345",
            "L_AGP"
          ]
        },
        {
          "id": "T0353",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "324827/1000000",
          "sources": [
            "T0340",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0359",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "13883/100000",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0352",
            "L_BOP",
            "T0351"
          ]
        },
        {
          "id": "T0363",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "112567/1000000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0352",
            "L_BGO",
            "L_AGP",
            "T0353",
            "U_ABO"
          ]
        },
        {
          "id": "T0370",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "298567/1000000",
          "sources": [
            "L_ACG",
            "T0363",
            "L_AGP"
          ]
        },
        {
          "id": "T0371",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "32483/100000",
          "sources": [
            "T0359",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0378",
          "relation": 1524,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "14071/125000",
          "sources": [
            "L_ACG",
            "L_BOP",
            "T0370",
            "L_BGO",
            "L_AGP",
            "T0371",
            "U_ABO"
          ]
        },
        {
          "id": "T0383",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "193449/500000",
          "sources": [
            "U_ACO",
            "T0370",
            "L_COP"
          ]
        },
        {
          "id": "T0384",
          "relation": 6,
          "rule": "sum",
          "triangle": "ACP",
          "side": "lo",
          "value": "37321/125000",
          "sources": [
            "L_ACG",
            "T0378",
            "L_AGP"
          ]
        },
        {
          "id": "T0389",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "8677/62500",
          "sources": [
            "L_ABP",
            "L_COP",
            "T0384",
            "L_BOP",
            "T0383"
          ]
        },
        {
          "id": "T0394",
          "relation": 5,
          "rule": "sub",
          "triangle": "AOP",
          "side": "hi",
          "value": "386897/1000000",
          "sources": [
            "U_ACO",
            "T0384",
            "L_COP"
          ]
        },
        {
          "id": "T0395",
          "relation": 9,
          "rule": "sum",
          "triangle": "BCO",
          "side": "lo",
          "value": "10151/31250",
          "sources": [
            "T0389",
            "L_COP",
            "L_BOP"
          ]
        },
        {
          "id": "T0396",
          "relation": 1276,
          "rule": "balance_lo",
          "triangle": "BFH",
          "side": "lo",
          "value": "281491/1000000",
          "sources": [
            "U_ABC",
            "U_FHO",
            "T0102",
            "L_CFH",
            "T0047",
            "T0395",
            "U_ACO"
          ]
        },
        {
          "id": "T0397",
          "relation": 2822,
          "rule": "linear",
          "triangle": "GOP",
          "side": "hi",
          "value": "243567/1000000",
          "sources": [
            "T0394",
            "L_COP"
          ]
        }
      ],
      "physical": {
        "AREA_HI_ABG": {
          "name": "AREA_HI_ABG",
          "terms": [
            [
              [],
              "277927/1000000"
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
                0,
                1
              ],
              "1"
            ],
            [
              [
                0,
                6
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ABG",
            "side": "hi",
            "reference": "T0003",
            "value": "277927/1000000"
          }
        },
        "AREA_HI_ADE": {
          "name": "AREA_HI_ADE",
          "terms": [
            [
              [],
              "39219/50000"
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
            "value": "39219/50000"
          }
        },
        "AREA_HI_ADH": {
          "name": "AREA_HI_ADH",
          "terms": [
            [
              [],
              "43869/50000"
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
            "value": "43869/50000"
          }
        },
        "AREA_HI_BCF": {
          "name": "AREA_HI_BCF",
          "terms": [
            [
              [],
              "189609/250000"
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
            "value": "189609/250000"
          }
        },
        "AREA_HI_CEO": {
          "name": "AREA_HI_CEO",
          "terms": [
            [
              [],
              "693416919/1000000000"
            ],
            [
              [
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
                4,
                9
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
            "triangle": "CEO",
            "side": "hi",
            "reference": "U_CEO",
            "value": "693416919/1000000000"
          }
        },
        "AREA_HI_CGH": {
          "name": "AREA_HI_CGH",
          "terms": [
            [
              [],
              "502217/1000000"
            ],
            [
              [
                6,
                7
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
              [
                2,
                8
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CGH",
            "side": "hi",
            "reference": "T0084",
            "value": "502217/1000000"
          }
        },
        "AREA_HI_CGP": {
          "name": "AREA_HI_CGP",
          "terms": [
            [
              [],
              "168767/500000"
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
            "reference": "T0107",
            "value": "168767/500000"
          }
        },
        "AREA_HI_GHP": {
          "name": "AREA_HI_GHP",
          "terms": [
            [
              [],
              "478949/1000000"
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
                7,
                11
              ],
              "-1"
            ],
            [
              [
                6,
                7
              ],
              "1"
            ],
            [
              [
                8,
                11
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "GHP",
            "side": "hi",
            "reference": "T0092",
            "value": "478949/1000000"
          }
        },
        "AREA_HI_GOP": {
          "name": "AREA_HI_GOP",
          "terms": [
            [
              [],
              "243567/1000000"
            ],
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
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "GOP",
            "side": "hi",
            "reference": "T0397",
            "value": "243567/1000000"
          }
        },
        "AREA_HI_HOP": {
          "name": "AREA_HI_HOP",
          "terms": [
            [
              [],
              "188529/500000"
            ],
            [
              [
                9,
                12
              ],
              "1"
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
                10,
                11
              ],
              "-1"
            ],
            [
              [
                7,
                11
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "HOP",
            "side": "hi",
            "reference": "T0019",
            "value": "188529/500000"
          }
        },
        "AREA_LO_ABC": {
          "name": "AREA_LO_ABC",
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
                0,
                2
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
            "triangle": "ABC",
            "side": "lo",
            "reference": "L_ABC",
            "value": "93/1000"
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
              "-347929/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ABO",
            "side": "lo",
            "reference": "T0102",
            "value": "347929/1000000"
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
        "AREA_LO_ACE": {
          "name": "AREA_LO_ACE",
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
                0,
                2
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
              [],
              "-39473/250000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACE",
            "side": "lo",
            "reference": "T0198",
            "value": "39473/250000"
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
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ADE",
            "side": "lo",
            "reference": "L_ADE",
            "value": "93/1000"
          }
        },
        "AREA_LO_ADP": {
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
              "-100131/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCE",
            "side": "lo",
            "reference": "T0119",
            "value": "100131/1000000"
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
              "-7367/50000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCF",
            "side": "lo",
            "reference": "T0030",
            "value": "7367/50000"
          }
        },
        "AREA_LO_BFH": {
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
              "-281491/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BFH",
            "side": "lo",
            "reference": "T0396",
            "value": "281491/1000000"
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
        "AREA_LO_BOP": {
          "name": "AREA_LO_BOP",
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
                1,
                12
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
            "triangle": "BOP",
            "side": "lo",
            "reference": "L_BOP",
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
        "AREA_LO_GOP": {
          "name": "AREA_LO_GOP",
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
                8,
                9
              ],
              "1"
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
                10,
                11
              ],
              "1"
            ],
            [
              [
                6,
                10
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
        "Central_order": {
          "name": "Central_order",
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
                2
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "central_order",
            "cell": "CB"
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
        "LINEAR_830": {
          "name": "LINEAR_830",
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
                1,
                7
              ],
              "-1"
            ],
            [
              [
                6,
                7
              ],
              "1"
            ],
            [
              [
                2,
                8
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
                7,
                11
              ],
              "-1"
            ],
            [
              [],
              "-2697/5000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 830
          }
        },
        "NATURAL_SUPPORT_1020_CFH": {
          "name": "NATURAL_SUPPORT_1020_CFH",
          "terms": [
            [
              [
                2,
                2
              ],
              "1"
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
                2,
                7
              ],
              "1023/1000"
            ],
            [
              [
                2
              ],
              "-1023/1000"
            ],
            [
              [
                1,
                7
              ],
              "-1023/1000"
            ],
            [
              [
                1
              ],
              "1023/1000"
            ]
          ],
          "why": {
            "kind": "natural_contact_support",
            "relation": 1020,
            "paired": "CFH",
            "target": "BCF",
            "raw": [
              [
                [
                  2,
                  2
                ],
                "1"
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
                  2,
                  7
                ],
                "1023/1000"
              ],
              [
                [
                  2
                ],
                "-1023/1000"
              ],
              [
                [
                  1,
                  7
                ],
                "-1023/1000"
              ],
              [
                [
                  1
                ],
                "1023/1000"
              ]
            ],
            "relax": false,
            "box": {
              "low": [
                "6131/50000",
                "123/1000",
                "38607/50000",
                "6131/50000",
                "21211/40000",
                "617/1000",
                "26089/200000",
                "614277/1000000",
                "188733/1000000",
                "235483/1000000",
                "809739/1000000",
                "323339/1000000",
                "90301/250000"
              ],
              "high": [
                "125199/200000",
                "524143/1000000",
                "220359/250000",
                "99869/200000",
                "907/1000",
                "220359/250000",
                "259/500",
                "1",
                "317761/500000",
                "44387/62500",
                "907/1000",
                "355579/500000",
                "661759/1000000"
              ]
            },
            "scheme": {
              "tag": "SUPPORT",
              "rate": "1023/1000",
              "constant": "0"
            }
          }
        },
        "NATURAL_SUPPORT_637_ACF": {
          "name": "NATURAL_SUPPORT_637_ACF",
          "terms": [
            [
              [
                2,
                2
              ],
              "1"
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
                2
              ],
              "-2697/5000"
            ],
            [
              [
                1
              ],
              "2697/5000"
            ],
            [
              [
                0,
                1
              ],
              "-2697/5000"
            ],
            [
              [
                0,
                2
              ],
              "2697/5000"
            ]
          ],
          "why": {
            "kind": "natural_contact_support",
            "relation": 637,
            "paired": "ACF",
            "target": "BCF",
            "raw": [
              [
                [
                  2,
                  2
                ],
                "1"
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
                  2
                ],
                "-2697/5000"
              ],
              [
                [
                  1
                ],
                "2697/5000"
              ],
              [
                [
                  0,
                  1
                ],
                "-2697/5000"
              ],
              [
                [
                  0,
                  2
                ],
                "2697/5000"
              ]
            ],
            "relax": false,
            "box": {
              "low": [
                "6131/50000",
                "123/1000",
                "38607/50000",
                "6131/50000",
                "21211/40000",
                "617/1000",
                "26089/200000",
                "614277/1000000",
                "188733/1000000",
                "235483/1000000",
                "809739/1000000",
                "323339/1000000",
                "90301/250000"
              ],
              "high": [
                "125199/200000",
                "524143/1000000",
                "220359/250000",
                "99869/200000",
                "907/1000",
                "220359/250000",
                "259/500",
                "1",
                "317761/500000",
                "44387/62500",
                "907/1000",
                "355579/500000",
                "661759/1000000"
              ]
            },
            "scheme": {
              "tag": "SUPPORT",
              "rate": "2697/5000",
              "constant": "0"
            }
          }
        },
        "QUAD_733": {
          "name": "QUAD_733",
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
                0,
                2
              ],
              "-1"
            ],
            [
              [
                12
              ],
              "1"
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
              "-449/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 733
          }
        },
        "QUAD_769": {
          "name": "QUAD_769",
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
            "index": 769
          }
        },
        "QUAD_817": {
          "name": "QUAD_817",
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
                6,
                10
              ],
              "-1"
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
              "-449/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 817
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
        "span_BC": {
          "name": "span_BC",
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
              "-117/1000"
            ]
          ],
          "why": {
            "kind": "setup",
            "name": "span_BC"
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
    "stage": 7,
    "sum": {
      "factors": [
        {
          "weight": 91,
          "atoms": [
            "L0",
            "L2",
            "L5"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "L0",
            "L16",
            "L5"
          ]
        },
        {
          "weight": 419,
          "atoms": [
            "L0",
            "L20",
            "overlap_fc"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "L0",
            "L22",
            "overlap_fc"
          ]
        },
        {
          "weight": 8,
          "atoms": [
            "L0",
            "L24",
            "L19"
          ]
        },
        {
          "weight": 658,
          "atoms": [
            "L0",
            "L9",
            "overlap_fc"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L0",
            "L11",
            "L25"
          ]
        },
        {
          "weight": 62,
          "atoms": [
            "L0",
            "L13",
            "L21"
          ]
        },
        {
          "weight": 12,
          "atoms": [
            "L0",
            "L19",
            "L23"
          ]
        },
        {
          "weight": 107,
          "atoms": [
            "L0",
            "L21",
            "L23"
          ]
        },
        {
          "weight": 386,
          "atoms": [
            "L0",
            "L25",
            "overlap_fc"
          ]
        },
        {
          "weight": 50,
          "atoms": [
            "L2",
            "L6",
            "L5"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L2",
            "L16",
            "L5"
          ]
        },
        {
          "weight": 21,
          "atoms": [
            "L2",
            "L16",
            "L19"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L2",
            "L13",
            "L21"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "L2",
            "L25",
            "L25"
          ]
        },
        {
          "weight": 181,
          "atoms": [
            "L4",
            "L4",
            "L15"
          ]
        },
        {
          "weight": 89,
          "atoms": [
            "L4",
            "L8",
            "L3"
          ]
        },
        {
          "weight": 481,
          "atoms": [
            "L4",
            "L10",
            "L15"
          ]
        },
        {
          "weight": 11,
          "atoms": [
            "L4",
            "L12",
            "L15"
          ]
        },
        {
          "weight": 183,
          "atoms": [
            "L4",
            "L14",
            "overlap_fc"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "L4",
            "L16",
            "L23"
          ]
        },
        {
          "weight": 138,
          "atoms": [
            "L4",
            "L24",
            "L3"
          ]
        },
        {
          "weight": 70,
          "atoms": [
            "L4",
            "L24",
            "L19"
          ]
        },
        {
          "weight": 36,
          "atoms": [
            "L4",
            "L24",
            "L23"
          ]
        },
        {
          "weight": 562,
          "atoms": [
            "L4",
            "L15",
            "L19"
          ]
        },
        {
          "weight": 12,
          "atoms": [
            "L4",
            "L15",
            "AREA_LO_AEH"
          ]
        },
        {
          "weight": 50,
          "atoms": [
            "L4",
            "L15",
            "overlap_bf"
          ]
        },
        {
          "weight": 31,
          "atoms": [
            "L4",
            "L21",
            "L21"
          ]
        },
        {
          "weight": 333,
          "atoms": [
            "L4",
            "L21",
            "L25"
          ]
        },
        {
          "weight": 158,
          "atoms": [
            "L4",
            "L21",
            "AREA_HI_ADH"
          ]
        },
        {
          "weight": 29,
          "atoms": [
            "L4",
            "span_BC_hi",
            "overlap_fc"
          ]
        },
        {
          "weight": 126,
          "atoms": [
            "L6",
            "L20",
            "L5"
          ]
        },
        {
          "weight": 30,
          "atoms": [
            "L6",
            "L20",
            "L11"
          ]
        },
        {
          "weight": 40,
          "atoms": [
            "L6",
            "L22",
            "L5"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L6",
            "L5",
            "L25"
          ]
        },
        {
          "weight": 224,
          "atoms": [
            "L6",
            "L5",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 166,
          "atoms": [
            "L6",
            "L9",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 88,
          "atoms": [
            "L6",
            "L25",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 7,
          "atoms": [
            "L10",
            "L10",
            "L15"
          ]
        },
        {
          "weight": 11,
          "atoms": [
            "L10",
            "L22",
            "L15"
          ]
        },
        {
          "weight": 92,
          "atoms": [
            "L10",
            "L15",
            "overlap_bf"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "L10",
            "L15",
            "QUAD_769"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "L12",
            "L18",
            "L15"
          ]
        },
        {
          "weight": 7,
          "atoms": [
            "L12",
            "L20",
            "overlap_fc"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "L12",
            "L1",
            "overlap_fc"
          ]
        },
        {
          "weight": 12,
          "atoms": [
            "L12",
            "L3",
            "L21"
          ]
        },
        {
          "weight": 87,
          "atoms": [
            "L12",
            "L15",
            "L23"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L12",
            "L15",
            "L25"
          ]
        },
        {
          "weight": 18,
          "atoms": [
            "L12",
            "L15",
            "span_BC_hi"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L12",
            "L25",
            "L25"
          ]
        },
        {
          "weight": 7,
          "atoms": [
            "L14",
            "L22",
            "overlap_fc"
          ]
        },
        {
          "weight": 26,
          "atoms": [
            "L14",
            "L7",
            "overlap_fc"
          ]
        },
        {
          "weight": 12,
          "atoms": [
            "L14",
            "overlap_fc",
            "overlap_eh"
          ]
        },
        {
          "weight": 44,
          "atoms": [
            "L16",
            "L18",
            "L15"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "L16",
            "L18",
            "overlap_fc"
          ]
        },
        {
          "weight": 63,
          "atoms": [
            "L16",
            "L20",
            "overlap_fc"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L16",
            "L24",
            "L23"
          ]
        },
        {
          "weight": 47,
          "atoms": [
            "L16",
            "L3",
            "L15"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L16",
            "L5",
            "L11"
          ]
        },
        {
          "weight": 26,
          "atoms": [
            "L16",
            "L5",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L16",
            "L11",
            "L25"
          ]
        },
        {
          "weight": 13,
          "atoms": [
            "L16",
            "L11",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 95,
          "atoms": [
            "L16",
            "L19",
            "L23"
          ]
        },
        {
          "weight": 61,
          "atoms": [
            "L16",
            "L25",
            "overlap_fc"
          ]
        },
        {
          "weight": 15,
          "atoms": [
            "L18",
            "L20",
            "L15"
          ]
        },
        {
          "weight": 169,
          "atoms": [
            "L18",
            "L5",
            "L9"
          ]
        },
        {
          "weight": 121,
          "atoms": [
            "L18",
            "L5",
            "L15"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L18",
            "L9",
            "L11"
          ]
        },
        {
          "weight": 35,
          "atoms": [
            "L18",
            "L15",
            "L23"
          ]
        },
        {
          "weight": 86,
          "atoms": [
            "L18",
            "L15",
            "span_BC_hi"
          ]
        },
        {
          "weight": 15,
          "atoms": [
            "L20",
            "L20",
            "overlap_fc"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L20",
            "L3",
            "L15"
          ]
        },
        {
          "weight": 49,
          "atoms": [
            "L20",
            "L5",
            "L5"
          ]
        },
        {
          "weight": 1000,
          "atoms": [
            "L20",
            "L5",
            "L11"
          ]
        },
        {
          "weight": 544,
          "atoms": [
            "L20",
            "L5",
            "L15"
          ]
        },
        {
          "weight": 192,
          "atoms": [
            "L20",
            "L11",
            "L25"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "L20",
            "L15",
            "overlap_bf"
          ]
        },
        {
          "weight": 67,
          "atoms": [
            "L20",
            "L23",
            "overlap_fc"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "L20",
            "span_BC_hi",
            "overlap_fc"
          ]
        },
        {
          "weight": 702,
          "atoms": [
            "L20",
            "span_AH_hi",
            "overlap_fc"
          ]
        },
        {
          "weight": 121,
          "atoms": [
            "L22",
            "L5",
            "AREA_HI_ADE"
          ]
        },
        {
          "weight": 426,
          "atoms": [
            "L22",
            "L9",
            "L21"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "L24",
            "L24",
            "L3"
          ]
        },
        {
          "weight": 19,
          "atoms": [
            "L24",
            "L3",
            "L3"
          ]
        },
        {
          "weight": 248,
          "atoms": [
            "L24",
            "L3",
            "L19"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "L24",
            "L15",
            "L23"
          ]
        },
        {
          "weight": 36,
          "atoms": [
            "L24",
            "L19",
            "L23"
          ]
        },
        {
          "weight": 31,
          "atoms": [
            "L1",
            "L5",
            "L5"
          ]
        },
        {
          "weight": 929,
          "atoms": [
            "L1",
            "L5",
            "L21"
          ]
        },
        {
          "weight": 42,
          "atoms": [
            "L1",
            "L11",
            "L21"
          ]
        },
        {
          "weight": 12,
          "atoms": [
            "L1",
            "L15",
            "overlap_bf"
          ]
        },
        {
          "weight": 38,
          "atoms": [
            "L3",
            "L3",
            "L21"
          ]
        },
        {
          "weight": 36,
          "atoms": [
            "L3",
            "L15",
            "AREA_HI_ADE"
          ]
        },
        {
          "weight": 18,
          "atoms": [
            "L3",
            "L15",
            "span_BC_hi"
          ]
        },
        {
          "weight": 46,
          "atoms": [
            "L3",
            "L21",
            "L21"
          ]
        },
        {
          "weight": 32,
          "atoms": [
            "L5",
            "L5",
            "L25"
          ]
        },
        {
          "weight": 169,
          "atoms": [
            "L5",
            "L7",
            "overlap_fc"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L5",
            "L9",
            "L11"
          ]
        },
        {
          "weight": 922,
          "atoms": [
            "L5",
            "L9",
            "AREA_HI_ADE"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L5",
            "L9",
            "overlap_fc"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "L5",
            "L11",
            "L25"
          ]
        },
        {
          "weight": 48,
          "atoms": [
            "L5",
            "L15",
            "L23"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "L5",
            "L15",
            "AREA_LO_ADE"
          ]
        },
        {
          "weight": 408,
          "atoms": [
            "L5",
            "L25",
            "AREA_HI_ADE"
          ]
        },
        {
          "weight": 87,
          "atoms": [
            "L9",
            "L9",
            "L9"
          ]
        },
        {
          "weight": 91,
          "atoms": [
            "L9",
            "L9",
            "L25"
          ]
        },
        {
          "weight": 769,
          "atoms": [
            "L9",
            "L21",
            "overlap_fc"
          ]
        },
        {
          "weight": 40,
          "atoms": [
            "L9",
            "span_AH_hi",
            "overlap_fc"
          ]
        },
        {
          "weight": 16,
          "atoms": [
            "L11",
            "L15",
            "L23"
          ]
        },
        {
          "weight": 168,
          "atoms": [
            "L11",
            "L25",
            "AREA_HI_ADE"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "L11",
            "L25",
            "AREA_HI_ADH"
          ]
        },
        {
          "weight": 140,
          "atoms": [
            "L11",
            "AREA_HI_ADE",
            "overlap_eh"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "L13",
            "L19",
            "AREA_HI_ADH"
          ]
        },
        {
          "weight": 95,
          "atoms": [
            "L13",
            "L21",
            "L23"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "L13",
            "L21",
            "AREA_HI_ADH"
          ]
        },
        {
          "weight": 8,
          "atoms": [
            "L13",
            "L21",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 18,
          "atoms": [
            "L15",
            "L17",
            "L19"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L15",
            "L17",
            "L23"
          ]
        },
        {
          "weight": 109,
          "atoms": [
            "L15",
            "L19",
            "overlap_bf"
          ]
        },
        {
          "weight": 19,
          "atoms": [
            "L15",
            "L19",
            "QUAD_769"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "L15",
            "L25",
            "overlap_bf"
          ]
        },
        {
          "weight": 11,
          "atoms": [
            "L15",
            "AREA_HI_ADE",
            "AREA_LO_BCF"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L15",
            "overlap_bf",
            "QUAD_769"
          ]
        },
        {
          "weight": 36,
          "atoms": [
            "L21",
            "L23",
            "L23"
          ]
        },
        {
          "weight": 237,
          "atoms": [
            "L21",
            "L23",
            "AREA_HI_ADH"
          ]
        },
        {
          "weight": 109,
          "atoms": [
            "L21",
            "overlap_bf",
            "overlap_fc"
          ]
        },
        {
          "weight": 32,
          "atoms": [
            "L23",
            "L25",
            "overlap_fc"
          ]
        },
        {
          "weight": 52,
          "atoms": [
            "L25",
            "span_AH_hi",
            "overlap_fc"
          ]
        },
        {
          "weight": 52,
          "atoms": [
            "L25",
            "overlap_fc",
            "overlap_eh"
          ]
        },
        {
          "weight": 41,
          "atoms": [
            "AREA_LO_ABC",
            "L23"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_ACE",
            "L15"
          ]
        },
        {
          "weight": 99,
          "atoms": [
            "AREA_LO_BCD",
            "L20"
          ]
        },
        {
          "weight": 40,
          "atoms": [
            "AREA_LO_BCD",
            "L22"
          ]
        },
        {
          "weight": 54,
          "atoms": [
            "AREA_LO_BCD",
            "L1"
          ]
        },
        {
          "weight": 383,
          "atoms": [
            "AREA_LO_BCD",
            "L5"
          ]
        },
        {
          "weight": 166,
          "atoms": [
            "AREA_LO_BCD",
            "L9"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_BCD",
            "L17"
          ]
        },
        {
          "weight": 88,
          "atoms": [
            "AREA_LO_BCD",
            "L25"
          ]
        },
        {
          "weight": 45,
          "atoms": [
            "AREA_LO_BCD",
            "AREA_LO_AEH"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "AREA_LO_BCD",
            "span_BC_hi"
          ]
        },
        {
          "weight": 45,
          "atoms": [
            "AREA_LO_BCE",
            "L15"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "AREA_LO_BFH",
            "overlap_fc"
          ]
        },
        {
          "weight": 208,
          "atoms": [
            "AREA_LO_CDE"
          ]
        },
        {
          "weight": 80,
          "atoms": [
            "AREA_LO_CDE",
            "L10"
          ]
        },
        {
          "weight": 126,
          "atoms": [
            "AREA_LO_CDE",
            "L20"
          ]
        },
        {
          "weight": 121,
          "atoms": [
            "AREA_LO_CDE",
            "L22"
          ]
        },
        {
          "weight": 922,
          "atoms": [
            "AREA_LO_CDE",
            "L9"
          ]
        },
        {
          "weight": 409,
          "atoms": [
            "AREA_LO_CDE",
            "L25"
          ]
        },
        {
          "weight": 89,
          "atoms": [
            "AREA_LO_CDE",
            "overlap_bf"
          ]
        },
        {
          "weight": 15,
          "atoms": [
            "AREA_LO_DEF"
          ]
        },
        {
          "weight": 12,
          "atoms": [
            "AREA_LO_DEF",
            "L20"
          ]
        },
        {
          "weight": 17,
          "atoms": [
            "AREA_LO_DEF",
            "L9"
          ]
        },
        {
          "weight": 167,
          "atoms": [
            "AREA_LO_DEF",
            "L25"
          ]
        },
        {
          "weight": 123,
          "atoms": [
            "AREA_LO_DEF",
            "overlap_eh"
          ]
        },
        {
          "weight": 62,
          "atoms": [
            "AREA_LO_ABG",
            "L2"
          ]
        },
        {
          "weight": 18,
          "atoms": [
            "AREA_LO_ABG",
            "L12"
          ]
        },
        {
          "weight": 265,
          "atoms": [
            "AREA_LO_ABG",
            "L25"
          ]
        },
        {
          "weight": 17,
          "atoms": [
            "AREA_HI_ABG",
            "L15"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "AREA_HI_CGH",
            "overlap_fc"
          ]
        },
        {
          "weight": 99,
          "atoms": [
            "AREA_LO_ABO",
            "L6"
          ]
        },
        {
          "weight": 238,
          "atoms": [
            "AREA_LO_ABO",
            "L25"
          ]
        },
        {
          "weight": 68,
          "atoms": [
            "AREA_LO_EFO"
          ]
        },
        {
          "weight": 270,
          "atoms": [
            "AREA_LO_EFO",
            "L14"
          ]
        },
        {
          "weight": 171,
          "atoms": [
            "AREA_LO_EFO",
            "L5"
          ]
        },
        {
          "weight": 426,
          "atoms": [
            "AREA_LO_EFO",
            "L25"
          ]
        },
        {
          "weight": 697,
          "atoms": [
            "AREA_LO_EFO",
            "span_AH_hi"
          ]
        },
        {
          "weight": 727,
          "atoms": [
            "AREA_LO_FHO",
            "L4"
          ]
        },
        {
          "weight": 35,
          "atoms": [
            "AREA_LO_FHO",
            "L22"
          ]
        },
        {
          "weight": 209,
          "atoms": [
            "AREA_LO_FHO",
            "L7"
          ]
        },
        {
          "weight": 216,
          "atoms": [
            "AREA_LO_FHO",
            "L9"
          ]
        },
        {
          "weight": 17,
          "atoms": [
            "AREA_LO_FHO",
            "L13"
          ]
        },
        {
          "weight": 15,
          "atoms": [
            "AREA_LO_FHO",
            "L21"
          ]
        },
        {
          "weight": 235,
          "atoms": [
            "AREA_LO_FHO",
            "L25"
          ]
        },
        {
          "weight": 213,
          "atoms": [
            "AREA_LO_FHO",
            "span_DE_hi"
          ]
        },
        {
          "weight": 109,
          "atoms": [
            "AREA_LO_FHO",
            "overlap_bf"
          ]
        },
        {
          "weight": 20,
          "atoms": [
            "AREA_LO_FHO",
            "QUAD_769"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_HI_CEO",
            "overlap_fc"
          ]
        },
        {
          "weight": 8,
          "atoms": [
            "AREA_LO_ABP",
            "L2"
          ]
        },
        {
          "weight": 250,
          "atoms": [
            "AREA_LO_ABP",
            "L4"
          ]
        },
        {
          "weight": 265,
          "atoms": [
            "AREA_LO_ABP",
            "L16"
          ]
        },
        {
          "weight": 242,
          "atoms": [
            "AREA_LO_ABP",
            "L20"
          ]
        },
        {
          "weight": 248,
          "atoms": [
            "AREA_LO_ABP",
            "L19"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_HI_HOP",
            "L15"
          ]
        },
        {
          "weight": 52,
          "atoms": [
            "AREA_LO_ACG",
            "L3"
          ]
        },
        {
          "weight": 18,
          "atoms": [
            "AREA_LO_ACG",
            "L13"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "AREA_LO_BGH"
          ]
        },
        {
          "weight": 69,
          "atoms": [
            "AREA_LO_BGH",
            "L20"
          ]
        },
        {
          "weight": 13,
          "atoms": [
            "AREA_LO_BGH",
            "L1"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_BGH",
            "L9"
          ]
        },
        {
          "weight": 18,
          "atoms": [
            "AREA_LO_BGH",
            "L13"
          ]
        },
        {
          "weight": 17,
          "atoms": [
            "AREA_LO_BGH",
            "L19"
          ]
        },
        {
          "weight": 68,
          "atoms": [
            "AREA_LO_BGH",
            "L23"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_BGH",
            "L25"
          ]
        },
        {
          "weight": 28,
          "atoms": [
            "AREA_LO_BGH",
            "span_BC"
          ]
        },
        {
          "weight": 23,
          "atoms": [
            "AREA_LO_BGH",
            "overlap_bf"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_BGH",
            "QUAD_769"
          ]
        },
        {
          "weight": 97,
          "atoms": [
            "AREA_LO_COP"
          ]
        },
        {
          "weight": 20,
          "atoms": [
            "AREA_LO_COP",
            "L8"
          ]
        },
        {
          "weight": 27,
          "atoms": [
            "AREA_LO_COP",
            "L13"
          ]
        },
        {
          "weight": 58,
          "atoms": [
            "AREA_LO_COP",
            "L17"
          ]
        },
        {
          "weight": 46,
          "atoms": [
            "AREA_LO_COP",
            "L21"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "AREA_LO_COP",
            "L23"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_COP",
            "AREA_LO_ADE"
          ]
        },
        {
          "weight": 32,
          "atoms": [
            "AREA_LO_COP",
            "overlap_ae"
          ]
        },
        {
          "weight": 211,
          "atoms": [
            "AREA_LO_FOP",
            "L0"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_FOP",
            "L6"
          ]
        },
        {
          "weight": 372,
          "atoms": [
            "AREA_LO_FOP",
            "L8"
          ]
        },
        {
          "weight": 63,
          "atoms": [
            "AREA_LO_FOP",
            "L16"
          ]
        },
        {
          "weight": 32,
          "atoms": [
            "AREA_LO_FOP",
            "L23"
          ]
        },
        {
          "weight": 235,
          "atoms": [
            "AREA_LO_FOP",
            "AREA_HI_ADH"
          ]
        },
        {
          "weight": 178,
          "atoms": [
            "AREA_LO_AGP"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "AREA_LO_AGP",
            "L4"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "AREA_LO_AGP",
            "L18"
          ]
        },
        {
          "weight": 64,
          "atoms": [
            "AREA_LO_AGP",
            "L20"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "AREA_LO_AGP",
            "overlap_bf"
          ]
        },
        {
          "weight": 227,
          "atoms": [
            "AREA_LO_ACO",
            "L22"
          ]
        },
        {
          "weight": 248,
          "atoms": [
            "AREA_LO_ACO",
            "L3"
          ]
        },
        {
          "weight": 99,
          "atoms": [
            "AREA_LO_ACO",
            "L7"
          ]
        },
        {
          "weight": 697,
          "atoms": [
            "AREA_LO_ACO",
            "L9"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "AREA_LO_ACO",
            "L17"
          ]
        },
        {
          "weight": 405,
          "atoms": [
            "AREA_LO_ACO",
            "L25"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "AREA_HI_CGP",
            "overlap_fc"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_HI_GHP",
            "L15"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_ADP",
            "L15"
          ]
        },
        {
          "weight": 13,
          "atoms": [
            "AREA_LO_BGO"
          ]
        },
        {
          "weight": 28,
          "atoms": [
            "AREA_LO_BGO",
            "L4"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "AREA_LO_BGO",
            "L10"
          ]
        },
        {
          "weight": 65,
          "atoms": [
            "AREA_LO_BGO",
            "L14"
          ]
        },
        {
          "weight": 46,
          "atoms": [
            "AREA_LO_BGO",
            "L20"
          ]
        },
        {
          "weight": 45,
          "atoms": [
            "AREA_LO_BGO",
            "L25"
          ]
        },
        {
          "weight": 38,
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
          "weight": 46,
          "atoms": [
            "AREA_LO_GOP",
            "L21"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_HI_GOP",
            "L15"
          ]
        },
        {
          "weight": 24,
          "atoms": [
            "AREA_LO_BGP"
          ]
        },
        {
          "weight": 41,
          "atoms": [
            "AREA_LO_BGP",
            "L20"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_BGP",
            "L24"
          ]
        },
        {
          "weight": 261,
          "atoms": [
            "AREA_LO_BGP",
            "L1"
          ]
        },
        {
          "weight": 27,
          "atoms": [
            "AREA_LO_BGP",
            "AREA_LO_BCF"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "AREA_LO_BGP",
            "span_DE_hi"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "AREA_LO_BGP",
            "QUAD_769"
          ]
        },
        {
          "weight": 238,
          "atoms": [
            "AREA_LO_BOP",
            "L1"
          ]
        },
        {
          "weight": 70,
          "atoms": [
            "AREA_LO_BOP",
            "L5"
          ]
        },
        {
          "weight": 18,
          "atoms": [
            "AREA_LO_BOP",
            "Gsum"
          ]
        },
        {
          "weight": 31,
          "atoms": [
            "Central_order",
            "L5"
          ]
        },
        {
          "weight": 40,
          "atoms": [
            "QUAD_733",
            "L3"
          ]
        },
        {
          "weight": 23,
          "atoms": [
            "QUAD_817",
            "L24"
          ]
        },
        {
          "weight": 87,
          "atoms": [
            "QUAD_817",
            "L23"
          ]
        },
        {
          "weight": 27,
          "atoms": [
            "LINEAR_830",
            "L2"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "LINEAR_830",
            "L6"
          ]
        },
        {
          "weight": 18,
          "atoms": [
            "LINEAR_830",
            "L12"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "LINEAR_830",
            "L24"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "LINEAR_830",
            "L1"
          ]
        },
        {
          "weight": 41,
          "atoms": [
            "LINEAR_830",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 26,
          "atoms": [
            "NATURAL_SUPPORT_637_ACF",
            "L15"
          ]
        },
        {
          "weight": 29,
          "atoms": [
            "NATURAL_SUPPORT_1020_CFH",
            "overlap_fc"
          ]
        }
      ],
      "sum": {
        "0,1": "-1878821118019751183/20000000000000000000",
        "0,1,2": "-11034816943491/500000000000000",
        "0,8": "-1196788502995813/8000000000000000",
        "0,2,8": "-12290467058793/500000000000000",
        "0,10": "71175455950981/4000000000000000",
        "0,11": "-39719914324929/1600000000000000",
        "0,12": "10529188168509/400000000000000",
        "0,9,12": "114911382078873/1600000000000000",
        "0": "40180447101725521/500000000000000000",
        "0,2": "59038101416684511/1250000000000000000",
        "0,5": "7459777043803/125000000000000",
        "0,4": "-470716968291/16000000000000",
        "0,2,4": "-414524637153/20000000000000",
        "0,4,5": "4011683390067/80000000000000",
        "0,5,12": "-16002807104673/200000000000000",
        "0,6": "4368978747609/80000000000000",
        "0,9": "-422404613436709/4000000000000000",
        "0,10,11": "-151897085957493/4000000000000000",
        "0,2,12": "1653559656507/100000000000000",
        "1,3": "-1381707705047259/40000000000000000",
        "1,8": "-3225952417599676429/19750000000000000000",
        "1": "2238644286148559672592449/17439250000000000000000000",
        "1,10": "-4518076091276663970489/69757000000000000000000",
        "1,6": "-11332121891310507/100000000000000000",
        "1,6,10": "3024135793795053/200000000000000000",
        "1,12": "289464797972812225527/13951400000000000000000",
        "2,2": "20666090420246799/3906250000000000000",
        "2,2,7": "-5993608064528799/3906250000000000000",
        "2,4": "79585951052223/12343750000000000",
        "2,5": "-13695278656003461/15625000000000000000",
        "2,5,7": "-116183978226712539/15625000000000000000",
        "2,6": "58714305088131/6250000000000000",
        "2,7": "-360386897260784823/7812500000000000000",
        "2,8": "1979357287503519/62500000000000000",
        "2,12": "1606202644154229/197500000000000000",
        "1,2,12": "164716633049463/12500000000000000",
        "2,11,12": "-159245555606379/12500000000000000",
        "2": "-788871111378471/301361083984375000",
        "2,9": "-881288411348367/62500000000000000",
        "2,7,9": "1250798312895417/62500000000000000",
        "0,2,7": "-647248847542011/1250000000000000000",
        "1,2": "-3176812707265301247/62500000000000000000",
        "1,2,7": "351968074927430247/62500000000000000000",
        "2,10": "17267969634641847/1234375000000000000",
        "3,10": "-45432940652991/2500000000000000",
        "3,11": "-79660170729441/10000000000000000",
        "3": "-6883073087062011/40000000000000000",
        "3,12": "-12961273337631/2000000000000000",
        "2,3": "75522230261181/2500000000000000",
        "2,3,12": "6187606273629/500000000000000",
        "3,4": "12943261377/6250000000000",
        "5,5": "598744783697/62500000000000",
        "5,11": "-1498021765688259/250000000000000000",
        "5,7,11": "9889292124228933/250000000000000000",
        "5": "-101779115144244165143/987500000000000000000",
        "1,5": "-1739000477760708467/250000000000000000000",
        "5,7": "89306188866353051593/987500000000000000000",
        "1,5,7": "-3406273966531618533/250000000000000000000",
        "4,5": "-3974412689626827/39500000000000000",
        "3,5": "287451509938029/5000000000000000",
        "4,5,7": "-384255910669683/10000000000000000",
        "3,5,7": "384255910669683/10000000000000000",
        "6,9": "-190562181799521/10000000000000000",
        "6,10": "-2656589266769319/987500000000000000",
        "6": "-379856643908077203/7900000000000000000",
        "5,6": "87669504925191/25000000000000000",
        "6,11": "2213245180702143/25000000000000000",
        "6,7": "-7800120331259529/200000000000000000",
        "6,7,11": "11594925378407007/200000000000000000",
        "6,12": "-199125427713412851/3160000000000000000",
        "6,7,12": "1797185180255283/40000000000000000",
        "1,6,7": "-11993283338542779/200000000000000000",
        "7,11": "-712500542856531/125000000000000000",
        "7": "-216063446246670157681/1975000000000000000000",
        "3,7": "2828232544276347/40000000000000000",
        "2,3,7": "-39704913488097/2500000000000000",
        "7,7": "-8643801374856713/200000000000000000",
        "4,7": "-2828232544276347/40000000000000000",
        "2,4,7": "39704913488097/2500000000000000",
        "8,9": "-977652702311744109/15800000000000000000",
        "8,10": "1677672780273903/50000000000000000",
        "2,8,10": "296842095009999/62500000000000000",
        "8,12": "-2821938581946267/200000000000000000",
        "8": "5452162973020263773/79000000000000000000",
        "7,8": "-11666683905981559/1000000000000000000",
        "5,8": "162540867327503/25000000000000000",
        "8,11": "2701540007069414301/19750000000000000000",
        "8,9,11": "-82254377496136419/1000000000000000000",
        "9": "14079351840776175971837/69757000000000000000000",
        "4,9": "-216484047807201861/3160000000000000000",
        "7,9": "-9114842514656853/246875000000000000",
        "5,9": "230128145881573/25000000000000000",
        "9,11": "-10675474525712277/250000000000000000",
        "1,9": "-10924560231049803/250000000000000000",
        "1,7,9": "-73451762206090801/1000000000000000000",
        "10,10": "824119789079399/500000000000000000",
        "10": "1028063097694644032971/17439250000000000000000",
        "7,10": "-3947525518263769/200000000000000000",
        "5,10": "-19419101238544391/19750000000000000000",
        "2,5,10": "43922151304119/15625000000000000",
        "10,12": "749650123969533/200000000000000000",
        "5,10,12": "386503357786839/50000000000000000",
        "5,7,10": "-2480132333110627/250000000000000000",
        "10,11": "-12145093174210223889/883000000000000000000",
        "1,2,10": "-266515354045413/62500000000000000",
        "11": "-10212712593955459473933/69757000000000000000000",
        "4,11": "-52239913883829/10000000000000000",
        "2,11": "21890270099907/62500000000000000",
        "12,12": "-235296587411199/8000000000000000",
        "12": "121249402089575956443/3487850000000000000000",
        "9,12": "3624450263637325029/176600000000000000000",
        "11,12": "-21658491235299267/200000000000000000",
        "7,12": "-684618787235331/8000000000000000",
        "9,11,12": "11066505410093481/200000000000000000",
        "": "-6640444165094837706948001/871962500000000000000000",
        "1,7": "3974340703538309793/250000000000000000000",
        "0,7": "13331543684801927/250000000000000000",
        "0,1,7": "38008980302963683/20000000000000000000",
        "1,1": "65621586005608649/1000000000000000000",
        "4": "357520413291864063/1580000000000000000",
        "1,4": "22782941154723/2000000000000000",
        "1,1,7": "62068889038627627/1000000000000000000",
        "2,4,5": "6805018434951/625000000000000",
        "4,4": "-27162455836059/800000000000000",
        "5,12": "1372096656144621/79000000000000000",
        "4,12": "52512677280207/4000000000000000",
        "2,4,12": "-6187606273629/500000000000000",
        "4,4,4": "-297695692895283/64000000000000",
        "4,4,12": "-1242121877220861/320000000000000",
        "4,10": "188762370577137/20000000000000000",
        "4,5,12": "59882369073831/2000000000000000",
        "3,5,12": "-59882369073831/2000000000000000",
        "6,10,11": "2923688857623849/200000000000000000",
        "6,7,10": "2907887538334233/200000000000000000",
        "3,9": "2759227020497883/40000000000000000",
        "4,7,9": "2759227020497883/40000000000000000",
        "3,7,9": "-2759227020497883/40000000000000000",
        "7,7,9": "70628264916550861/1000000000000000000",
        "0,7,9": "-737368585277389/8000000000000000",
        "11,11": "-23724509794703379/1000000000000000000",
        "10,11,11": "-14628402279351621/1000000000000000000",
        "7,10,11": "14549341864112757/1000000000000000000",
        "1,11": "29361358350922761/1000000000000000000",
        "1,1,3": "-2424838780479981/4000000000000000",
        "0,1,1": "-4536052849090861/800000000000000",
        "0,1,6": "125211491158971/1600000000000000",
        "0,1,12": "-97103481377571/1600000000000000",
        "0,6,12": "18762855004467/320000000000000",
        "0,1,8": "-6495698059769961/4000000000000000",
        "0,8,11": "-697771430870157/8000000000000000",
        "1,8,11": "69507356616227313/1000000000000000000",
        "8,9,12": "12749228082353511/200000000000000000",
        "6,10,12": "-453164648768181/40000000000000000",
        "2,12,12": "-74048019254253/2500000000000000"
      },
      "upper": "-161655048279844048526365469/34878500000000000000000000"
    }
  },
  "word": "CEF"
}
```
