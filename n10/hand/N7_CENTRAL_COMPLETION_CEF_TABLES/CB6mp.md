# CB6mp

```n7-central-cef-packet
{
  "id": "CB6mp",
  "cell": "CB",
  "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "AFG-",
    "BGO-",
    "GOP+"
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
    }
  ],
  "terminal": {
    "kind": "geometry",
    "stage": 3,
    "geometry": {
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
        "GOP": 1,
        "EGP": -1,
        "BOP": 1,
        "BFO": 1,
        "FGO": -1,
        "BEP": 1,
        "BFP": 1,
        "FGP": -1,
        "BFG": 1
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
            "GCEOP"
          ],
          "target": "EGP",
          "sign": -1,
          "deps": [
            "CEG",
            "GOP",
            "CGO",
            "CGP",
            "EGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OBCGP"
          ],
          "target": "BOP",
          "sign": 1,
          "deps": [
            "BCO",
            "GOP",
            "BGO",
            "COP",
            "CGO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OBDFP"
          ],
          "target": "BFO",
          "sign": 1,
          "deps": [
            "BDO",
            "FOP",
            "DOP",
            "BOP",
            "DFO"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "OBFGP"
          ],
          "target": "FGO",
          "sign": -1,
          "deps": [
            "BFO",
            "GOP",
            "BGO",
            "FOP",
            "BOP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PBCEO"
          ],
          "target": "BEP",
          "sign": 1,
          "deps": [
            "BCP",
            "EOP",
            "COP",
            "BOP",
            "CEP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PBCFO"
          ],
          "target": "BFP",
          "sign": 1,
          "deps": [
            "BCP",
            "FOP",
            "COP",
            "BOP",
            "CFP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "PCFGO"
          ],
          "target": "FGP",
          "sign": -1,
          "deps": [
            "CFP",
            "GOP",
            "CGP",
            "FOP",
            "COP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "six",
            "BFG",
            "O",
            "AC"
          ],
          "target": "BFG",
          "sign": 1,
          "deps": [
            "ACO",
            "FGO",
            "ABC",
            "BGO",
            "ACF",
            "BFO",
            "ACG"
          ],
          "area_stage": null
        }
      ],
      "contradiction": {
        "kind": "nomesh",
        "outer": "BFH",
        "points": "GOP"
      },
      "mesh_table": [
        {
          "order": "GOP",
          "opposite": "BPO"
        },
        {
          "order": "GPO",
          "opposite": "FGO"
        },
        {
          "order": "OGP",
          "opposite": "POG"
        },
        {
          "order": "OPG",
          "opposite": "BGO"
        },
        {
          "order": "PGO",
          "opposite": "FPO"
        },
        {
          "order": "POG",
          "opposite": "BGO"
        }
      ]
    }
  },
  "word": "CEF"
}
```
