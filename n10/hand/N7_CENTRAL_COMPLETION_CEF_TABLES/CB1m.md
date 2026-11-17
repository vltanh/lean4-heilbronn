# CB1m

```n7-central-cef-packet
{
  "id": "CB1m",
  "cell": "CB",
  "given": [
    "AGO-",
    "AGP-",
    "DGP-",
    "AFG+",
    "EGP-"
  ],
  "stages": [
    {
      "id": 0,
      "assumptions": [
        "AGO-",
        "AGP-",
        "DGP-",
        "AFG+"
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
        "AGO": -1,
        "AGP": -1,
        "DGP": -1,
        "AFG": 1,
        "ADG": 1,
        "AEG": 1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "BDG": 1,
        "ADO": 1,
        "ADP": 1,
        "BDO": 1,
        "BDP": 1,
        "BEG": 1,
        "BFG": 1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "DGH": -1,
        "EGH": -1,
        "GHO": -1,
        "GHP": -1,
        "BHO": -1,
        "BHP": -1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "CFP": 1,
        "DFP": 1,
        "BEO": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "ABDFG"
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ABD",
            "AFG",
            "ABF",
            "ABG",
            "ADF"
          ],
          "area_stage": null
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
            "DABCG"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "ABD",
            "CDG",
            "ACD",
            "ADG",
            "BCD"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DACGO"
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACD",
            "DGO",
            "ADG",
            "CDO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DACGP"
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACD",
            "DGP",
            "ADG",
            "CDP",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DBCGO"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "BCD",
            "DGO",
            "BDG",
            "CDO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DBCGP"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "BCD",
            "DGP",
            "BDG",
            "CDP",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "EABCG"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "CEG",
            "ACE",
            "AEG",
            "BCE"
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
        },
        {
          "rule": [
            "plu",
            "FADEG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "ADF",
            "EFG",
            "AEF",
            "AFG",
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
            "GACDH"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ACG",
            "ADG",
            "CGH",
            "AGH",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACEH"
          ],
          "target": "EGH",
          "sign": -1,
          "deps": [
            "ACG",
            "AEG",
            "CGH",
            "AGH",
            "CEG"
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
        "L_BFH": {
          "triangle": "BFH",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BFH",
            "points": [
              "G"
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
        "L_EFH": {
          "triangle": "EFH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EFH",
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
        "U_ADH": {
          "triangle": "ADH",
          "side": "hi",
          "value": "439/500",
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
              "491/1000",
              "439/500"
            ],
            "cell": "CB"
          }
        },
        "U_AFH": {
          "triangle": "AFH",
          "side": "hi",
          "value": "387637/500000",
          "witness": {
            "kind": "vertices",
            "signed": "AFH",
            "used": [
              0,
              5,
              7
            ],
            "values": [
              "-7947/125000",
              "-5553/125000",
              "38871/200000",
              "55629/200000",
              "302947/1000000",
              "433553/1000000",
              "270863/500000",
              "387637/500000"
            ],
            "cell": "CB"
          }
        },
        "U_BCH": {
          "triangle": "BCH",
          "side": "hi",
          "value": "19/25",
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
              "6986361/20000000",
              "11647/25000",
              "11397/20000",
              "19/25"
            ],
            "cell": "CB"
          }
        },
        "U_BFH": {
          "triangle": "BFH",
          "side": "hi",
          "value": "883/1000",
          "witness": {
            "kind": "vertices",
            "signed": "BFH",
            "used": [
              1,
              5,
              7
            ],
            "values": [
              "212911/500000",
              "7361/12500",
              "550091447/907000000",
              "617/1000",
              "697985053/907000000",
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
        "3": {
          "row": [
            "fan",
            "AFH",
            "AFG",
            "FGH",
            "AGH"
          ],
          "witness": {
            "kind": "fan",
            "outer": "AFH",
            "point": "G"
          }
        },
        "9": {
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
        "430": {
          "row": [
            "plu",
            "CEF",
            "DFH",
            "CDF",
            "EFH",
            "CFH",
            "DEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "FCDEH"
          }
        },
        "549": {
          "row": [
            "plu",
            "BCH",
            "FGH",
            "BFH",
            "CGH",
            "BGH",
            "CFH"
          ],
          "witness": {
            "kind": "plu",
            "word": "HBCFG"
          }
        },
        "613": {
          "row": [
            "linear",
            {
              "ABC": "-1",
              "ACH": "-1"
            },
            "-433997/500000"
          ],
          "witness": {
            "kind": "quad_container",
            "poly": "ABCH",
            "container": "HABC",
            "cap": "433997/500000"
          }
        },
        "712": {
          "row": [
            "quad",
            "BCF",
            "BFH",
            "93/91"
          ],
          "witness": {
            "kind": "quad",
            "poly": "BCFH",
            "occupants": [
              "G",
              "O",
              "P"
            ]
          }
        },
        "760": {
          "row": [
            "linear",
            {
              "CEF": "-1",
              "CFH": "-1"
            },
            "-1"
          ],
          "witness": {
            "kind": "quad_container",
            "poly": "CEFH",
            "container": "HCEF",
            "cap": "1"
          }
        },
        "1249": {
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
                -1,
                "ACH",
                "BFG"
              ],
              [
                1,
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
        },
        "1653": {
          "row": [
            "balance",
            [
              [
                1,
                "ABG",
                "CFH"
              ],
              [
                -1,
                "ACG",
                "BFH"
              ],
              [
                1,
                "AFG",
                "BCH"
              ],
              [
                1,
                "AGH",
                "BCF"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "BCF",
            "point": "H",
            "line": "AG"
          }
        },
        "2422": {
          "row": [
            "linear",
            {
              "ADH": "294637/500000",
              "DFH": "-93/1000",
              "DGH": "-387637/500000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "AFH",
            "point": "G",
            "line": "DH",
            "side": "upper",
            "outer_upper": {
              "triangle": "AFH",
              "ref": "U_AFH",
              "value": "387637/500000"
            },
            "fan_lower": [
              {
                "triangle": "FGH",
                "ref": "L_FGH",
                "value": "93/1000"
              },
              {
                "triangle": "AGH",
                "ref": "L_AGH",
                "value": "93/1000"
              },
              {
                "triangle": "AFG",
                "ref": "L_AFG",
                "value": "93/1000"
              }
            ],
            "residual": "248137/500000"
          }
        },
        "2999": {
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
        "3007": {
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
        "3156": {
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
        "3199": {
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
          "id": "T0036",
          "relation": 549,
          "rule": "sumlo",
          "triangle": "FGH",
          "side": "lo",
          "value": "118923/1000000",
          "sources": [
            "L_BFH",
            "L_CGH",
            "L_BGH",
            "L_CFH",
            "U_BCH"
          ]
        },
        {
          "id": "T0037",
          "relation": 613,
          "rule": "linear",
          "triangle": "ACH",
          "side": "hi",
          "value": "387497/500000",
          "sources": [
            "L_ABC"
          ]
        },
        {
          "id": "T0040",
          "relation": 712,
          "rule": "quad",
          "triangle": "BCF",
          "side": "lo",
          "value": "69489/500000",
          "sources": [
            "U_BFH"
          ]
        },
        {
          "id": "T0042",
          "relation": 760,
          "rule": "linear",
          "triangle": "CEF",
          "side": "hi",
          "value": "6143/20000",
          "sources": [
            "L_CFH"
          ]
        },
        {
          "id": "T0047",
          "relation": 1249,
          "rule": "balance_lo",
          "triangle": "BFG",
          "side": "lo",
          "value": "63891/500000",
          "sources": [
            "L_ABF",
            "L_CGH",
            "L_ABG",
            "L_CFH",
            "L_AFG",
            "L_BCH",
            "T0037"
          ]
        },
        {
          "id": "T0048",
          "relation": 1653,
          "rule": "balance_lo",
          "triangle": "ACG",
          "side": "lo",
          "value": "23399/200000",
          "sources": [
            "L_ABG",
            "L_CFH",
            "L_AFG",
            "L_BCH",
            "L_AGH",
            "T0040",
            "U_BFH"
          ]
        },
        {
          "id": "T0080",
          "relation": 3156,
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
          "id": "T0082",
          "relation": 3199,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "17129/125000",
          "sources": [
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0084",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "60599/200000",
          "sources": [
            "T0048",
            "L_CGH",
            "L_AGH"
          ]
        },
        {
          "id": "T0088",
          "relation": 9,
          "rule": "sum",
          "triangle": "BFH",
          "side": "lo",
          "value": "67941/200000",
          "sources": [
            "T0047",
            "T0036",
            "L_BGH"
          ]
        },
        {
          "id": "T0098",
          "relation": 430,
          "rule": "sumlo",
          "triangle": "DFH",
          "side": "lo",
          "value": "118971/500000",
          "sources": [
            "L_CDF",
            "L_EFH",
            "L_CFH",
            "L_DEF",
            "T0042"
          ]
        },
        {
          "id": "T0100",
          "relation": 549,
          "rule": "sumlo",
          "triangle": "FGH",
          "side": "lo",
          "value": "7897/62500",
          "sources": [
            "T0088",
            "L_CGH",
            "L_BGH",
            "L_CFH",
            "U_BCH"
          ]
        },
        {
          "id": "T0101",
          "relation": 2422,
          "rule": "linear",
          "triangle": "DGH",
          "side": "hi",
          "value": "159703/250000",
          "sources": [
            "U_ADH",
            "T0098"
          ]
        },
        {
          "id": "T0107",
          "relation": 9,
          "rule": "sum",
          "triangle": "BFH",
          "side": "lo",
          "value": "173567/500000",
          "sources": [
            "T0047",
            "T0100",
            "L_BGH"
          ]
        },
        {
          "id": "T0108",
          "relation": 549,
          "rule": "sumlo",
          "triangle": "FGH",
          "side": "lo",
          "value": "127261/1000000",
          "sources": [
            "T0107",
            "L_CGH",
            "L_BGH",
            "L_CFH",
            "U_BCH"
          ]
        },
        {
          "id": "T0111",
          "relation": 9,
          "rule": "sum",
          "triangle": "BFH",
          "side": "lo",
          "value": "348043/1000000",
          "sources": [
            "T0047",
            "T0108",
            "L_BGH"
          ]
        },
        {
          "id": "T0112",
          "relation": 549,
          "rule": "sumlo",
          "triangle": "FGH",
          "side": "lo",
          "value": "31843/250000",
          "sources": [
            "T0111",
            "L_CGH",
            "L_BGH",
            "L_CFH",
            "U_BCH"
          ]
        },
        {
          "id": "T0115",
          "relation": 9,
          "rule": "sum",
          "triangle": "BFH",
          "side": "lo",
          "value": "174077/500000",
          "sources": [
            "T0047",
            "T0112",
            "L_BGH"
          ]
        },
        {
          "id": "T0116",
          "relation": 549,
          "rule": "sumlo",
          "triangle": "FGH",
          "side": "lo",
          "value": "63693/500000",
          "sources": [
            "T0115",
            "L_CGH",
            "L_BGH",
            "L_CFH",
            "U_BCH"
          ]
        },
        {
          "id": "T0119",
          "relation": 9,
          "rule": "sum",
          "triangle": "BFH",
          "side": "lo",
          "value": "43521/125000",
          "sources": [
            "T0047",
            "T0116",
            "L_BGH"
          ]
        },
        {
          "id": "T0120",
          "relation": 549,
          "rule": "sumlo",
          "triangle": "FGH",
          "side": "lo",
          "value": "127387/1000000",
          "sources": [
            "T0119",
            "L_CGH",
            "L_BGH",
            "L_CFH",
            "U_BCH"
          ]
        },
        {
          "id": "T0121",
          "relation": 3,
          "rule": "sum",
          "triangle": "AFH",
          "side": "lo",
          "value": "313387/1000000",
          "sources": [
            "L_AFG",
            "T0120",
            "L_AGH"
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
              "-60599/200000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACH",
            "side": "lo",
            "reference": "T0084",
            "value": "60599/200000"
          }
        },
        "28": {
          "name": "AREA_LO_AFH",
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
                0,
                5
              ],
              "-1"
            ],
            [
              [],
              "-313387/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AFH",
            "side": "lo",
            "reference": "T0121",
            "value": "313387/1000000"
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
              "-23399/200000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "ACG",
            "side": "lo",
            "reference": "T0048",
            "value": "23399/200000"
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
        "144": {
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
        "164": {
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
        "166": {
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
        "196": {
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
            "reference": "T0080",
            "value": "67009/500000"
          }
        },
        "200": {
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
            "reference": "T0082",
            "value": "17129/125000"
          }
        },
        "216": {
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
        "221": {
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
        "1984": {
          "name": "LINEAR_2999",
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
            "index": 2999
          }
        },
        "1992": {
          "name": "LINEAR_3007",
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
            "index": 3007
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
          "175363/500000",
          "39749/125000",
          "76133/200000",
          "39749/125000",
          "29911/100000"
        ],
        "high": [
          "14807/25000",
          "535/907",
          "220359/250000",
          "604217/1000000",
          "907/1000",
          "220359/250000",
          "239647/500000",
          "1/1",
          "18869/25000",
          "364443/500000",
          "907/1000",
          "364639/500000",
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
                "2434441/20000000"
              ],
              [
                "-883/1000",
                "59571/250000"
              ],
              [
                "-13857/20000",
                "77971/200000"
              ],
              [
                "-883/1000",
                "116001/200000"
              ]
            ],
            "raw": [
              "1912/15625",
              "116001/176600"
            ],
            "new": [
              "1912/15625",
              "328429/500000"
            ]
          },
          {
            "factor": 28,
            "target": "a",
            "old": [
              "1912/15625",
              "328429/500000"
            ],
            "lines": [
              [
                "-617/1000",
                "32417/500000"
              ],
              [
                "-883/1000",
                "56973/250000"
              ],
              [
                "-617/1000",
                "303613/1000000"
              ],
              [
                "-883/1000",
                "569613/1000000"
              ]
            ],
            "raw": [
              "1912/15625",
              "569613/883000"
            ],
            "new": [
              "1912/15625",
              "645089/1000000"
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
                "-279/1000"
              ],
              [
                "-32089/1000000",
                "-279/1000"
              ],
              [
                "13713/15625",
                "-279/1000"
              ],
              [
                "354911/1000000",
                "-279/1000"
              ]
            ],
            "raw": [
              "11625/36568",
              "440737/500000"
            ],
            "new": [
              "3179/10000",
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
                "-10176887/20000000"
              ],
              [
                "440737/500000",
                "-312235431/500000000"
              ],
              [
                "13857/20000",
                "-13079/20000"
              ],
              [
                "440737/500000",
                "-421287/500000"
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
                "-279/1000"
              ],
              [
                "-32089/1000000",
                "-279/1000"
              ],
              [
                "13713/15625",
                "-279/1000"
              ],
              [
                "354911/1000000",
                "-279/1000"
              ]
            ],
            "raw": [
              "11625/36568",
              "440737/500000"
            ],
            "new": [
              "3179/10000",
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
                "-116704003/625000000"
              ],
              [
                "13857/20000",
                "-9691979333/20000000000"
              ],
              [
                "440737/500000",
                "-3278249163/15625000000"
              ],
              [
                "440737/500000",
                "-303139117093/500000000000"
              ],
              [
                "13857/20000",
                "-1871053491/15625000000"
              ],
              [
                "13857/20000",
                "-131504986877/1000000000000"
              ],
              [
                "440737/500000",
                "-2231702579/15625000000"
              ],
              [
                "440737/500000",
                "-253184254413/1000000000000"
              ]
            ],
            "raw": [
              "2231702579/13773031250",
              "188739/250000"
            ],
            "new": [
              "81017/500000",
              "188739/250000"
            ]
          },
          {
            "factor": 144,
            "target": "a",
            "old": [
              "1912/15625",
              "645089/1000000"
            ],
            "lines": [
              [
                "-247/500",
                "-58012511/500000000"
              ],
              [
                "-379237/500000",
                "-18292810471/250000000000"
              ],
              [
                "53357/1000000",
                "-331691011/500000000"
              ],
              [
                "-211117/1000000",
                "-155132060471/250000000000"
              ],
              [
                "-247/500",
                "62451963/250000000"
              ],
              [
                "-379237/500000",
                "56184260643/125000000000"
              ],
              [
                "53357/1000000",
                "-74387287/250000000"
              ],
              [
                "-211117/1000000",
                "-12235364357/125000000000"
              ]
            ],
            "raw": [
              "1912/15625",
              "56184260643/94809250000"
            ],
            "new": [
              "1912/15625",
              "148151/250000"
            ]
          },
          {
            "factor": 144,
            "target": "g",
            "old": [
              "123/1000",
              "670357/1000000"
            ],
            "lines": [
              [
                "-13713/15625",
                "-34263039/500000000"
              ],
              [
                "-101849/250000",
                "-35866169/100000000"
              ],
              [
                "-13713/15625",
                "-14508863079/250000000000"
              ],
              [
                "-101849/250000",
                "-23626813009/50000000000"
              ],
              [
                "-13713/15625",
                "74326699/250000000"
              ],
              [
                "-101849/250000",
                "448199/62500000"
              ],
              [
                "-13713/15625",
                "58076234339/125000000000"
              ],
              [
                "-101849/250000",
                "1565908339/31250000000"
              ]
            ],
            "raw": [
              "123/1000",
              "58076234339/109704000000"
            ],
            "new": [
              "123/1000",
              "529391/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "z",
            "old": [
              "81017/500000",
              "188739/250000"
            ],
            "lines": [
              [
                "617/1000",
                "-539941/1953125"
              ],
              [
                "617/1000",
                "-63593297/125000000"
              ],
              [
                "440737/500000",
                "-301575143/976562500"
              ],
              [
                "440737/500000",
                "-83184340787/125000000000"
              ],
              [
                "617/1000",
                "-9892367783/15625000000"
              ],
              [
                "617/1000",
                "-168577110959/250000000000"
              ],
              [
                "440737/500000",
                "-10398042071/15625000000"
              ],
              [
                "440737/500000",
                "-207759198533/250000000000"
              ]
            ],
            "raw": [
              "2412601144/6886515625",
              "188739/250000"
            ],
            "new": [
              "5474/15625",
              "188739/250000"
            ]
          },
          {
            "factor": 164,
            "target": "y",
            "old": [
              "3261/25000",
              "907/1000"
            ],
            "lines": [
              [
                "1/1",
                "-26921/125000"
              ],
              [
                "1/1",
                "-1340289939/2500000000"
              ],
              [
                "1/1",
                "-3685477971/10000000000"
              ],
              [
                "1/1",
                "-6892957727/10000000000"
              ],
              [
                "1/1",
                "-33887899017/125000000000"
              ],
              [
                "1/1",
                "-320052682713/500000000000"
              ],
              [
                "1/1",
                "-347920278781/500000000000"
              ]
            ],
            "raw": [
              "26921/125000",
              "907/1000"
            ],
            "new": [
              "26921/125000",
              "907/1000"
            ]
          },
          {
            "factor": 166,
            "target": "v",
            "old": [
              "61307/500000",
              "356849/500000"
            ],
            "lines": [
              [
                "1/1",
                "-26921/125000"
              ],
              [
                "1/1",
                "-1340289939/2500000000"
              ],
              [
                "1/1",
                "-3685477971/10000000000"
              ],
              [
                "1/1",
                "-6892957727/10000000000"
              ],
              [
                "1/1",
                "-33887899017/125000000000"
              ],
              [
                "1/1",
                "-320052682713/500000000000"
              ],
              [
                "1/1",
                "-347920278781/500000000000"
              ]
            ],
            "raw": [
              "26921/125000",
              "356849/500000"
            ],
            "new": [
              "26921/125000",
              "356849/500000"
            ]
          },
          {
            "factor": 196,
            "target": "x",
            "old": [
              "3179/10000",
              "440737/500000"
            ],
            "lines": [
              [
                "-1/1",
                "1356240843/2500000000"
              ],
              [
                "-1/1",
                "43156047723/62500000000"
              ],
              [
                "-1/1",
                "4683246669/7812500000"
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
              "3179/10000",
              "11679/15625"
            ],
            "new": [
              "3179/10000",
              "11679/15625"
            ]
          },
          {
            "factor": 200,
            "target": "u",
            "old": [
              "3179/10000",
              "440737/500000"
            ],
            "lines": [
              [
                "-1/1",
                "1348705843/2500000000"
              ],
              [
                "-1/1",
                "42967672723/62500000000"
              ],
              [
                "-1/1",
                "2329849897/3906250000"
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
              "3179/10000",
              "372221/500000"
            ],
            "new": [
              "3179/10000",
              "372221/500000"
            ]
          },
          {
            "factor": 216,
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
            "factor": 221,
            "target": "g",
            "old": [
              "123/1000",
              "529391/1000000"
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
              "529391/1000000"
            ],
            "new": [
              "123163/1000000",
              "529391/1000000"
            ]
          },
          {
            "factor": 1984,
            "target": "y",
            "old": [
              "26921/125000",
              "907/1000"
            ],
            "lines": [
              [
                "12235731/20000000",
                "-2629237227457/10000000000000"
              ],
              [
                "12235731/20000000",
                "-3783589723871/10000000000000"
              ],
              [
                "389170771/500000000",
                "-84529919918913/250000000000000"
              ],
              [
                "389170771/500000000",
                "-124719875674239/250000000000000"
              ],
              [
                "12235731/20000000",
                "-67988260708057/250000000000000"
              ],
              [
                "12235731/20000000",
                "-105521545529921/250000000000000"
              ],
              [
                "389170771/500000000",
                "-17357449988109/50000000000000"
              ],
              [
                "389170771/500000000",
                "-27130335621477/50000000000000"
              ],
              [
                "12235731/20000000",
                "-22482776819/78125000000"
              ],
              [
                "12235731/20000000",
                "-2016073964623/5000000000000"
              ],
              [
                "389170771/500000000",
                "-722153005971/1953125000000"
              ],
              [
                "389170771/500000000",
                "-66312770259807/125000000000000"
              ],
              [
                "12235731/20000000",
                "-579704811269/1953125000000"
              ],
              [
                "12235731/20000000",
                "-13966937583037/31250000000000"
              ],
              [
                "389170771/500000000",
                "-147957679353/390625000000"
              ],
              [
                "389170771/500000000",
                "-3588933573819/6250000000000"
              ],
              [
                "12235731/20000000",
                "-54127447861209/250000000000000"
              ],
              [
                "12235731/20000000",
                "-38396372802627/250000000000000"
              ],
              [
                "389170771/500000000",
                "-72926437093697/250000000000000"
              ],
              [
                "389170771/500000000",
                "-68526505380091/250000000000000"
              ],
              [
                "12235731/20000000",
                "-56384777882841/250000000000000"
              ],
              [
                "12235731/20000000",
                "-49328175235773/250000000000000"
              ],
              [
                "389170771/500000000",
                "-75183767115329/250000000000000"
              ],
              [
                "389170771/500000000",
                "-79458307813237/250000000000000"
              ],
              [
                "12235731/20000000",
                "-471417210903/1953125000000"
              ],
              [
                "12235731/20000000",
                "-22305163968501/125000000000000"
              ],
              [
                "389170771/500000000",
                "-631500796399/1953125000000"
              ],
              [
                "389170771/500000000",
                "-38216085112733/125000000000000"
              ],
              [
                "12235731/20000000",
                "-489052601697/1953125000000"
              ],
              [
                "12235731/20000000",
                "-13885532592537/62500000000000"
              ],
              [
                "389170771/500000000",
                "-649136187193/1953125000000"
              ],
              [
                "389170771/500000000",
                "-21840993164653/62500000000000"
              ]
            ],
            "raw": [
              "12798790934209/50982212500000",
              "907/1000"
            ],
            "new": [
              "62761/250000",
              "907/1000"
            ]
          },
          {
            "factor": 1992,
            "target": "y",
            "old": [
              "62761/250000",
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
            "factor": 0,
            "target": "a",
            "old": [
              "1912/15625",
              "148151/250000"
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
              "148151/250000"
            ],
            "new": [
              "61307/500000",
              "148151/250000"
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
              "529391/1000000"
            ],
            "lines": [
              [
                "-2457/4000",
                "898528149/10000000000"
              ],
              [
                "-2457/4000",
                "17452912563/125000000000"
              ],
              [
                "-1/1",
                "111599907/312500000"
              ],
              [
                "-1/1",
                "1873582959/3906250000"
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
              "1873582959/3906250000"
            ],
            "new": [
              "123163/1000000",
              "239819/500000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "5474/15625",
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
                "37965471/1000000000"
              ],
              [
                "-220359/250000",
                "307608843/2000000000"
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
                "30053/250000"
              ],
              [
                "-220359/250000",
                "154399/500000"
              ]
            ],
            "raw": [
              "5474/15625",
              "665273/881436"
            ],
            "new": [
              "5474/15625",
              "754761/1000000"
            ]
          },
          {
            "factor": 98,
            "target": "x",
            "old": [
              "3179/10000",
              "11679/15625"
            ],
            "lines": [
              [
                "122909/250000",
                "-279/1000"
              ],
              [
                "10823/500000",
                "-279/1000"
              ],
              [
                "438693/500000",
                "-279/1000"
              ],
              [
                "101849/250000",
                "-279/1000"
              ]
            ],
            "raw": [
              "46500/146231",
              "11679/15625"
            ],
            "new": [
              "31799/100000",
              "11679/15625"
            ]
          },
          {
            "factor": 114,
            "target": "v",
            "old": [
              "26921/125000",
              "356849/500000"
            ],
            "lines": [
              [
                "-617/1000",
                "8904887/40000000"
              ],
              [
                "-220359/250000",
                "96262997/250000000"
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
              "26921/125000",
              "50203/73453"
            ],
            "new": [
              "26921/125000",
              "42717/62500"
            ]
          },
          {
            "factor": 116,
            "target": "u",
            "old": [
              "3179/10000",
              "372221/500000"
            ],
            "lines": [
              [
                "122909/250000",
                "-279/1000"
              ],
              [
                "10823/500000",
                "-279/1000"
              ],
              [
                "438693/500000",
                "-279/1000"
              ],
              [
                "101849/250000",
                "-279/1000"
              ]
            ],
            "raw": [
              "46500/146231",
              "372221/500000"
            ],
            "new": [
              "31799/100000",
              "372221/500000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "31799/100000",
              "11679/15625"
            ],
            "lines": [
              [
                "-98079/125000",
                "10296484431/50000000000"
              ],
              [
                "-98079/125000",
                "62409843201/250000000000"
              ],
              [
                "-98079/125000",
                "181655007/500000000"
              ],
              [
                "-98079/125000",
                "34137650847/62500000000"
              ],
              [
                "-98079/125000",
                "117511904349/250000000000"
              ],
              [
                "-98079/125000",
                "25687865079/50000000000"
              ],
              [
                "-98079/125000",
                "8059401/20000000"
              ],
              [
                "-98079/125000",
                "36616403097/62500000000"
              ],
              [
                "-19783/62500",
                "-4144523969/50000000000"
              ],
              [
                "-19783/62500",
                "-8148217227/50000000000"
              ],
              [
                "-19783/62500",
                "37244923/500000000"
              ],
              [
                "-19783/62500",
                "8349918513/62500000000"
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
              "31799/100000",
              "12205467699/16346500000"
            ],
            "new": [
              "31799/100000",
              "46667/62500"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "26921/125000",
              "42717/62500"
            ],
            "lines": [
              [
                "876837/1000000",
                "-177910586569/500000000000"
              ],
              [
                "876837/1000000",
                "-449650440819/1000000000000"
              ],
              [
                "260181/500000",
                "-9753510859/31250000000"
              ],
              [
                "260181/500000",
                "-14641386609/62500000000"
              ],
              [
                "876837/1000000",
                "-157910766847/250000000000"
              ],
              [
                "876837/1000000",
                "-725472335069/1000000000000"
              ],
              [
                "260181/500000",
                "-293967120869/500000000000"
              ],
              [
                "260181/500000",
                "-255042039997/500000000000"
              ],
              [
                "876837/1000000",
                "-129354335397/500000000000"
              ],
              [
                "876837/1000000",
                "-557918501031/1000000000000"
              ],
              [
                "260181/500000",
                "-26874980643/125000000000"
              ],
              [
                "260181/500000",
                "-85632561489/250000000000"
              ],
              [
                "876837/1000000",
                "-5657229921/15625000000"
              ],
              [
                "876837/1000000",
                "-661272545181/1000000000000"
              ],
              [
                "260181/500000",
                "-159176944647/500000000000"
              ],
              [
                "260181/500000",
                "-222942145053/500000000000"
              ]
            ],
            "raw": [
              "43118111799/146139500000",
              "42717/62500"
            ],
            "new": [
              "295047/1000000",
              "42717/62500"
            ]
          },
          {
            "factor": 144,
            "target": "a",
            "old": [
              "61307/500000",
              "148151/250000"
            ],
            "lines": [
              [
                "-493837/1000000",
                "-711/125000000"
              ],
              [
                "-758273/1000000",
                "1447433789/15625000000"
              ],
              [
                "-68681/500000",
                "-22280043/62500000"
              ],
              [
                "-200899/500000",
                "-2061244043/7812500000"
              ],
              [
                "-493837/1000000",
                "249524537/1000000000"
              ],
              [
                "-758273/1000000",
                "112277629199/250000000000"
              ],
              [
                "-68681/500000",
                "-106950463/1000000000"
              ],
              [
                "-200899/500000",
                "23158879199/250000000000"
              ]
            ],
            "raw": [
              "61307/500000",
              "112277629199/189568250000"
            ],
            "new": [
              "61307/500000",
              "592281/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "z",
            "old": [
              "5474/15625",
              "754761/1000000"
            ],
            "lines": [
              [
                "617/1000",
                "-138357164959/500000000000"
              ],
              [
                "617/1000",
                "-508653272197/1000000000000"
              ],
              [
                "220359/250000",
                "-154568942811/500000000000"
              ],
              [
                "220359/250000",
                "-665273690713/1000000000000"
              ],
              [
                "617/1000",
                "-147370126067/250000000000"
              ],
              [
                "617/1000",
                "-326997451361/500000000000"
              ],
              [
                "220359/250000",
                "-155476014993/250000000000"
              ],
              [
                "220359/250000",
                "-405307660619/500000000000"
              ]
            ],
            "raw": [
              "51522980937/146906000000",
              "754761/1000000"
            ],
            "new": [
              "1096/3125",
              "754761/1000000"
            ]
          },
          {
            "factor": 200,
            "target": "u",
            "old": [
              "31799/100000",
              "372221/500000"
            ],
            "lines": [
              [
                "-1/1",
                "10668773701/20000000000"
              ],
              [
                "-1/1",
                "166595737877/250000000000"
              ],
              [
                "-1/1",
                "305729866771/500000000000"
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
              "31799/100000",
              "186101/250000"
            ],
            "new": [
              "31799/100000",
              "186101/250000"
            ]
          },
          {
            "factor": 216,
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
            "factor": 221,
            "target": "g",
            "old": [
              "123163/1000000",
              "239819/500000"
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
              "239819/500000"
            ],
            "new": [
              "30791/250000",
              "239819/500000"
            ]
          },
          {
            "factor": 1992,
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
            "factor": 0,
            "target": "a",
            "old": [
              "61307/500000",
              "592281/1000000"
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
              "592281/1000000"
            ],
            "new": [
              "6131/50000",
              "592281/1000000"
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
              "239819/500000"
            ],
            "lines": [
              [
                "-614277/1000000",
                "1792109349/20000000000"
              ],
              [
                "-614277/1000000",
                "34827156963/250000000000"
              ],
              [
                "-1/1",
                "22303353/62500000"
              ],
              [
                "-1/1",
                "374452161/781250000"
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
              "374452161/781250000"
            ],
            "new": [
              "30791/250000",
              "479299/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "1096/3125",
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
                "38179467627/1000000000000"
              ],
              [
                "-220359/250000",
                "154023509949/1000000000000"
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
                "120551/1000000"
              ],
              [
                "-220359/250000",
                "309137/1000000"
              ]
            ],
            "raw": [
              "1096/3125",
              "166318/220359"
            ],
            "new": [
              "1096/3125",
              "18869/25000"
            ]
          },
          {
            "factor": 98,
            "target": "x",
            "old": [
              "31799/100000",
              "46667/62500"
            ],
            "lines": [
              [
                "491657/1000000",
                "-279/1000"
              ],
              [
                "5499/250000",
                "-279/1000"
              ],
              [
                "43869/50000",
                "-279/1000"
              ],
              [
                "407719/1000000",
                "-279/1000"
              ]
            ],
            "raw": [
              "4650/14623",
              "46667/62500"
            ],
            "new": [
              "39749/125000",
              "46667/62500"
            ]
          },
          {
            "factor": 116,
            "target": "u",
            "old": [
              "31799/100000",
              "186101/250000"
            ],
            "lines": [
              [
                "491657/1000000",
                "-279/1000"
              ],
              [
                "5499/250000",
                "-279/1000"
              ],
              [
                "43869/50000",
                "-279/1000"
              ],
              [
                "407719/1000000",
                "-279/1000"
              ]
            ],
            "raw": [
              "4650/14623",
              "186101/250000"
            ],
            "new": [
              "39749/125000",
              "186101/250000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "39749/125000",
              "186101/250000"
            ],
            "lines": [
              [
                "-76133/200000",
                "15035754231/250000000000"
              ],
              [
                "-76133/200000",
                "4768085817/62500000000"
              ],
              [
                "-76133/200000",
                "46655941221/250000000000"
              ],
              [
                "-76133/200000",
                "25346265129/125000000000"
              ],
              [
                "-907/1000",
                "212407110837/500000000000"
              ],
              [
                "-907/1000",
                "135054997533/250000000000"
              ],
              [
                "-907/1000",
                "275647484817/500000000000"
              ],
              [
                "-907/1000",
                "166675184523/250000000000"
              ],
              [
                "-76133/200000",
                "-42730600863/500000000000"
              ],
              [
                "-76133/200000",
                "-35641590657/250000000000"
              ],
              [
                "-76133/200000",
                "103764787617/500000000000"
              ],
              [
                "-76133/200000",
                "37606103583/250000000000"
              ],
              [
                "-907/1000",
                "17450625189/62500000000"
              ],
              [
                "-907/1000",
                "10042632951/31250000000"
              ],
              [
                "-907/1000",
                "35762548749/62500000000"
              ],
              [
                "-907/1000",
                "19198594731/31250000000"
              ]
            ],
            "raw": [
              "39749/125000",
              "166675184523/226750000000"
            ],
            "new": [
              "39749/125000",
              "367531/500000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "39749/125000",
              "46667/62500"
            ],
            "lines": [
              [
                "-704953/1000000",
                "3919247033/25000000000"
              ],
              [
                "-704953/1000000",
                "11213147673/62500000000"
              ],
              [
                "-704953/1000000",
                "314148257/1000000000"
              ],
              [
                "-704953/1000000",
                "118992665127/250000000000"
              ],
              [
                "-704953/1000000",
                "41507592977/100000000000"
              ],
              [
                "-704953/1000000",
                "218858205609/500000000000"
              ],
              [
                "-704953/1000000",
                "352935767/1000000000"
              ],
              [
                "-704953/1000000",
                "128689542627/250000000000"
              ],
              [
                "-19783/62500",
                "-129513037/1562500000"
              ],
              [
                "-19783/62500",
                "-40740353883/250000000000"
              ],
              [
                "-19783/62500",
                "4655627/62500000"
              ],
              [
                "-19783/62500",
                "4174965069/31250000000"
              ],
              [
                "-19783/62500",
                "17541770477/100000000000"
              ],
              [
                "-19783/62500",
                "47672316459/500000000000"
              ],
              [
                "-19783/62500",
                "56638771/500000000"
              ],
              [
                "-19783/62500",
                "10774149513/62500000000"
              ]
            ],
            "raw": [
              "39749/125000",
              "128689542627/176238250000"
            ],
            "new": [
              "39749/125000",
              "730203/1000000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "295047/1000000",
              "42717/62500"
            ],
            "lines": [
              [
                "219209/250000",
                "-4451045689/12500000000"
              ],
              [
                "219209/250000",
                "-112478058859/250000000000"
              ],
              [
                "520701/1000000",
                "-15620719071/50000000000"
              ],
              [
                "520701/1000000",
                "-234729414141/1000000000000"
              ],
              [
                "219209/250000",
                "-7895527093/12500000000"
              ],
              [
                "219209/250000",
                "-181367686939/250000000000"
              ],
              [
                "520701/1000000",
                "-29398644687/50000000000"
              ],
              [
                "520701/1000000",
                "-510287926461/1000000000000"
              ],
              [
                "219209/250000",
                "-6523749703/25000000000"
              ],
              [
                "219209/250000",
                "-277819114613/500000000000"
              ],
              [
                "520701/1000000",
                "-10864035721/50000000000"
              ],
              [
                "520701/1000000",
                "-340455407931/1000000000000"
              ],
              [
                "219209/250000",
                "-9199888441/25000000000"
              ],
              [
                "219209/250000",
                "-331341889373/500000000000"
              ],
              [
                "520701/1000000",
                "-16216313197/50000000000"
              ],
              [
                "520701/1000000",
                "-447500957451/1000000000000"
              ]
            ],
            "raw": [
              "6523749703/21920900000",
              "42717/62500"
            ],
            "new": [
              "74401/250000",
              "42717/62500"
            ]
          },
          {
            "factor": 144,
            "target": "a",
            "old": [
              "6131/50000",
              "592281/1000000"
            ],
            "lines": [
              [
                "-123459/250000",
                "1439/6250000"
              ],
              [
                "-11848/15625",
                "72635339/781250000"
              ],
              [
                "-137701/1000000",
                "-8897619/25000000"
              ],
              [
                "-402137/1000000",
                "-822380519/3125000000"
              ],
              [
                "-123459/250000",
                "6238073/25000000"
              ],
              [
                "-11848/15625",
                "2806928971/6250000000"
              ],
              [
                "-137701/1000000",
                "-1332651/12500000"
              ],
              [
                "-402137/1000000",
                "581085221/6250000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "2806928971/4739200000"
            ],
            "new": [
              "6131/50000",
              "14807/25000"
            ]
          },
          {
            "factor": 144,
            "target": "z",
            "old": [
              "1096/3125",
              "18869/25000"
            ],
            "lines": [
              [
                "617/1000",
                "-3458977129/12500000000"
              ],
              [
                "617/1000",
                "-3179082413/6250000000"
              ],
              [
                "220359/250000",
                "-241518213/781250000"
              ],
              [
                "220359/250000",
                "-519744797/781250000"
              ],
              [
                "617/1000",
                "-29459194831/50000000000"
              ],
              [
                "617/1000",
                "-16346413707/25000000000"
              ],
              [
                "220359/250000",
                "-31080451947/50000000000"
              ],
              [
                "220359/250000",
                "-20261917559/25000000000"
              ]
            ],
            "raw": [
              "80506071/229540625",
              "18869/25000"
            ],
            "new": [
              "175363/500000",
              "18869/25000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "30791/250000",
              "479299/1000000"
            ],
            "lines": [
              [
                "-614277/1000000",
                "1792026207/20000000000"
              ],
              [
                "-614277/1000000",
                "34825834809/250000000000"
              ],
              [
                "-1/1",
                "3568494909/10000000000"
              ],
              [
                "-1/1",
                "59911684683/125000000000"
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
              "59911684683/125000000000"
            ],
            "new": [
              "30791/250000",
              "239647/500000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "39749/125000",
              "367531/500000"
            ],
            "lines": [
              [
                "-76133/200000",
                "29592252509/500000000000"
              ],
              [
                "-76133/200000",
                "18712161691/250000000000"
              ],
              [
                "-76133/200000",
                "90930073731/500000000000"
              ],
              [
                "-76133/200000",
                "24690536151/125000000000"
              ],
              [
                "-907/1000",
                "52981963721/125000000000"
              ],
              [
                "-907/1000",
                "33673703989/62500000000"
              ],
              [
                "-907/1000",
                "136632838053/250000000000"
              ],
              [
                "-907/1000",
                "165363726567/250000000000"
              ],
              [
                "-76133/200000",
                "-42730600863/500000000000"
              ],
              [
                "-76133/200000",
                "-35641590657/250000000000"
              ],
              [
                "-76133/200000",
                "98136737433/500000000000"
              ],
              [
                "-76133/200000",
                "34792078491/250000000000"
              ],
              [
                "-907/1000",
                "17450625189/62500000000"
              ],
              [
                "-907/1000",
                "10042632951/31250000000"
              ],
              [
                "-907/1000",
                "8764760619/15625000000"
              ],
              [
                "-907/1000",
                "37693683189/62500000000"
              ]
            ],
            "raw": [
              "39749/125000",
              "165363726567/226750000000"
            ],
            "new": [
              "39749/125000",
              "364639/500000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "39749/125000",
              "730203/1000000"
            ],
            "lines": [
              [
                "-175599/250000",
                "969951327/6250000000"
              ],
              [
                "-175599/250000",
                "44289132729/250000000000"
              ],
              [
                "-175599/250000",
                "78142647/250000000"
              ],
              [
                "-175599/250000",
                "29607301791/62500000000"
              ],
              [
                "-175599/250000",
                "40991602713/100000000000"
              ],
              [
                "-175599/250000",
                "215940172863/500000000000"
              ],
              [
                "-175599/250000",
                "175410093/500000000"
              ],
              [
                "-175599/250000",
                "15998950833/31250000000"
              ],
              [
                "-19783/62500",
                "-129513037/1562500000"
              ],
              [
                "-19783/62500",
                "-40740353883/250000000000"
              ],
              [
                "-19783/62500",
                "4655627/62500000"
              ],
              [
                "-19783/62500",
                "4174965069/31250000000"
              ],
              [
                "-19783/62500",
                "17183547113/100000000000"
              ],
              [
                "-19783/62500",
                "45881199639/500000000000"
              ],
              [
                "-19783/62500",
                "11273963/100000000"
              ],
              [
                "-19783/62500",
                "10740530013/62500000000"
              ]
            ],
            "raw": [
              "39749/125000",
              "5332983611/7316625000"
            ],
            "new": [
              "39749/125000",
              "364443/500000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "74401/250000",
              "42717/62500"
            ],
            "lines": [
              [
                "219209/250000",
                "-11127742099/31250000000"
              ],
              [
                "219209/250000",
                "-112479081871/250000000000"
              ],
              [
                "260353/500000",
                "-39052385821/125000000000"
              ],
              [
                "260353/500000",
                "-117368263637/500000000000"
              ],
              [
                "219209/250000",
                "-7895527093/12500000000"
              ],
              [
                "219209/250000",
                "-181367686939/250000000000"
              ],
              [
                "260353/500000",
                "-14699337671/25000000000"
              ],
              [
                "260353/500000",
                "-255145473773/500000000000"
              ],
              [
                "219209/250000",
                "-65567735713/250000000000"
              ],
              [
                "219209/250000",
                "-55417362691/100000000000"
              ],
              [
                "260353/500000",
                "-54650570563/250000000000"
              ],
              [
                "260353/500000",
                "-3389938267/10000000000"
              ],
              [
                "219209/250000",
                "-1858259177/5000000000"
              ],
              [
                "219209/250000",
                "-331777259729/500000000000"
              ],
              [
                "260353/500000",
                "-819957937/2500000000"
              ],
              [
                "260353/500000",
                "-28023419953/62500000000"
              ]
            ],
            "raw": [
              "65567735713/219209000000",
              "42717/62500"
            ],
            "new": [
              "29911/100000",
              "42717/62500"
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
        "DGP-",
        "AFG+"
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
          "175363/500000",
          "39749/125000",
          "76133/200000",
          "39749/125000",
          "29911/100000"
        ],
        "high": [
          "14807/25000",
          "535/907",
          "220359/250000",
          "604217/1000000",
          "907/1000",
          "220359/250000",
          "239647/500000",
          "1",
          "18869/25000",
          "364443/500000",
          "907/1000",
          "364639/500000",
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
        "AGO": -1,
        "AGP": -1,
        "DGP": -1,
        "AFG": 1,
        "ADG": 1,
        "AEG": 1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "BDG": 1,
        "ADO": 1,
        "ADP": 1,
        "BDO": 1,
        "BDP": 1,
        "BEG": 1,
        "BFG": 1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "DGH": -1,
        "EGH": -1,
        "GHO": -1,
        "GHP": -1,
        "BHO": -1,
        "BHP": -1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "CFP": 1,
        "DFP": 1,
        "BEO": 1,
        "EGO": -1,
        "DHO": -1,
        "AEO": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "ABDFG"
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ABD",
            "AFG",
            "ABF",
            "ABG",
            "ADF"
          ],
          "area_stage": null
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
            "DABCG"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "ABD",
            "CDG",
            "ACD",
            "ADG",
            "BCD"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DACGO"
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACD",
            "DGO",
            "ADG",
            "CDO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DACGP"
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACD",
            "DGP",
            "ADG",
            "CDP",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DBCGO"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "BCD",
            "DGO",
            "BDG",
            "CDO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DBCGP"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "BCD",
            "DGP",
            "BDG",
            "CDP",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "EABCG"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "CEG",
            "ACE",
            "AEG",
            "BCE"
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
        },
        {
          "rule": [
            "plu",
            "FADEG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "ADF",
            "EFG",
            "AEF",
            "AFG",
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
            "GACDH"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ACG",
            "ADG",
            "CGH",
            "AGH",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACEH"
          ],
          "target": "EGH",
          "sign": -1,
          "deps": [
            "ACG",
            "AEG",
            "CGH",
            "AGH",
            "CEG"
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
            "ray",
            "GDH",
            "OP",
            "DHG",
            [
              "area",
              "DGH",
              "T0101",
              "159703/250000"
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
            "plu",
            "EABGO"
          ],
          "target": "AEO",
          "sign": 1,
          "deps": [
            "ABE",
            "EGO",
            "AEG",
            "BEO",
            "BEG"
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
          "value": "15987749967/25000000000",
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
              "874358753/125000000000",
              "8016652671/500000000000",
              "405161557/3125000000",
              "19542874093/125000000000",
              "1743748881/6250000000",
              "3714767499/12500000000",
              "179180952051/500000000000",
              "15987749967/25000000000"
            ],
            "cell": "CB"
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
        "U_FGH": {
          "triangle": "FGH",
          "side": "hi",
          "value": "71536684683/125000000000",
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
              "-2384987063/31250000000",
              "-9792705857/250000000000",
              "30523972987/500000000000",
              "49098354281/500000000000",
              "3782827/25000000",
              "52529538643/250000000000",
              "1351021029/6250000000",
              "34976315851/125000000000",
              "173742843281/500000000000",
              "200301029/500000000",
              "208589029399/500000000000",
              "71536684683/125000000000"
            ],
            "cell": "CB"
          }
        },
        "U_FHP": {
          "triangle": "FHP",
          "side": "hi",
          "value": "15444741951/25000000000",
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
              "15416466049/250000000000",
              "624714947/7812500000",
              "12206111/62500000",
              "110154166987/500000000000",
              "119302991497/500000000000",
              "4359362097/15625000000",
              "19819679201/62500000000",
              "100114092007/250000000000",
              "43244913/100000000",
              "237878668497/500000000000",
              "279549418903/500000000000",
              "15444741951/25000000000"
            ],
            "cell": "CB"
          }
        }
      },
      "relations": {
        "852": {
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
        "3010": {
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
        "3741": {
          "row": [
            "linear",
            {
              "CFP": "10794741951/25000000000",
              "CHP": "-93/1000",
              "COP": "-15444741951/25000000000"
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
              "value": "15444741951/25000000000"
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
            "residual": "8469741951/25000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0050",
          "relation": 3741,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "153091/1000000",
          "sources": [
            "L_CHP",
            "L_COP"
          ]
        }
      ],
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
        "144": {
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
        "200": {
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
              "-153091/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "lo",
            "reference": "T0050",
            "value": "153091/1000000"
          }
        },
        "508": {
          "name": "QUAD_852",
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
            "index": 852
          }
        },
        "1775": {
          "name": "LINEAR_3010",
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
            "index": 3010
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
          "175363/500000",
          "39749/125000",
          "13057/31250",
          "39749/125000",
          "299353/1000000"
        ],
        "high": [
          "296139/500000",
          "535/907",
          "220359/250000",
          "604217/1000000",
          "907/1000",
          "220359/250000",
          "239647/500000",
          "1/1",
          "754759/1000000",
          "364191/500000",
          "907/1000",
          "145669/200000",
          "42717/62500"
        ],
        "steps": [
          {
            "factor": 132,
            "target": "u",
            "old": [
              "39749/125000",
              "364639/500000"
            ],
            "lines": [
              [
                "-76133/200000",
                "5861996887/100000000000"
              ],
              [
                "-76133/200000",
                "740001001/10000000000"
              ],
              [
                "-76133/200000",
                "18152247321/100000000000"
              ],
              [
                "-76133/200000",
                "4922565111/25000000000"
              ],
              [
                "-907/1000",
                "21164558681/50000000000"
              ],
              [
                "-907/1000",
                "13448267929/25000000000"
              ],
              [
                "-907/1000",
                "13654841949/25000000000"
              ],
              [
                "-907/1000",
                "1321666443/2000000000"
              ],
              [
                "-76133/200000",
                "-42730600863/500000000000"
              ],
              [
                "-76133/200000",
                "-35641590657/250000000000"
              ],
              [
                "-76133/200000",
                "97686671121/500000000000"
              ],
              [
                "-76133/200000",
                "6913409067/50000000000"
              ],
              [
                "-907/1000",
                "17450625189/62500000000"
              ],
              [
                "-907/1000",
                "10042632951/31250000000"
              ],
              [
                "-907/1000",
                "35002784187/62500000000"
              ],
              [
                "-907/1000",
                "376374249/625000000"
              ]
            ],
            "raw": [
              "39749/125000",
              "1321666443/1814000000"
            ],
            "new": [
              "39749/125000",
              "728593/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "39749/125000",
              "364443/500000"
            ],
            "lines": [
              [
                "-70089/100000",
                "1928287629/12500000000"
              ],
              [
                "-70089/100000",
                "1758290883/10000000000"
              ],
              [
                "-70089/100000",
                "155820693/500000000"
              ],
              [
                "-70089/100000",
                "11809734651/25000000000"
              ],
              [
                "-70089/100000",
                "81712516131/200000000000"
              ],
              [
                "-70089/100000",
                "86025731727/200000000000"
              ],
              [
                "-70089/100000",
                "349827279/1000000000"
              ],
              [
                "-70089/100000",
                "1595547747/3125000000"
              ],
              [
                "-19783/62500",
                "-129513037/1562500000"
              ],
              [
                "-19783/62500",
                "-40740353883/250000000000"
              ],
              [
                "-19783/62500",
                "4655627/62500000"
              ],
              [
                "-19783/62500",
                "4174965069/31250000000"
              ],
              [
                "-19783/62500",
                "34282245331/200000000000"
              ],
              [
                "-19783/62500",
                "91338154803/1000000000000"
              ],
              [
                "-19783/62500",
                "4507037/40000000"
              ],
              [
                "-19783/62500",
                "21473096901/125000000000"
              ]
            ],
            "raw": [
              "39749/125000",
              "531849249/730093750"
            ],
            "new": [
              "39749/125000",
              "182117/250000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "29911/100000",
              "42717/62500"
            ],
            "lines": [
              [
                "219209/250000",
                "-11127742099/31250000000"
              ],
              [
                "219209/250000",
                "-112479081871/250000000000"
              ],
              [
                "260353/500000",
                "-39052385821/125000000000"
              ],
              [
                "260353/500000",
                "-117368263637/500000000000"
              ],
              [
                "219209/250000",
                "-7895527093/12500000000"
              ],
              [
                "219209/250000",
                "-181367686939/250000000000"
              ],
              [
                "260353/500000",
                "-14699337671/25000000000"
              ],
              [
                "260353/500000",
                "-255145473773/500000000000"
              ],
              [
                "219209/250000",
                "-131213597731/500000000000"
              ],
              [
                "219209/250000",
                "-22159999423/40000000000"
              ],
              [
                "260353/500000",
                "-109379267431/500000000000"
              ],
              [
                "260353/500000",
                "-67764037073/200000000000"
              ],
              [
                "219209/250000",
                "-3720848513/10000000000"
              ],
              [
                "219209/250000",
                "-663657641413/1000000000000"
              ],
              [
                "260353/500000",
                "-3284161907/10000000000"
              ],
              [
                "260353/500000",
                "-448477841203/1000000000000"
              ]
            ],
            "raw": [
              "131213597731/438418000000",
              "42717/62500"
            ],
            "new": [
              "37411/125000",
              "42717/62500"
            ]
          },
          {
            "factor": 200,
            "target": "u",
            "old": [
              "39749/125000",
              "728593/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "1292645013/2500000000"
              ],
              [
                "-1/1",
                "20287577451/31250000000"
              ],
              [
                "-1/1",
                "37262532923/62500000000"
              ],
              [
                "-1/1",
                "145669/200000"
              ],
              [
                "-1/1",
                "609897061/1250000000"
              ],
              [
                "-1/1",
                "1069551559/1953125000"
              ],
              [
                "-1/1",
                "20895382831/31250000000"
              ]
            ],
            "raw": [
              "39749/125000",
              "145669/200000"
            ],
            "new": [
              "39749/125000",
              "145669/200000"
            ]
          },
          {
            "factor": 508,
            "target": "y",
            "old": [
              "76133/200000",
              "907/1000"
            ],
            "lines": [
              [
                "1/1",
                "-316650779853/500000000000"
              ],
              [
                "1/1",
                "-181505296677/250000000000"
              ],
              [
                "1/1",
                "-11319276787/25000000000"
              ],
              [
                "1/1",
                "-5683353083/12500000000"
              ],
              [
                "1/1",
                "-19447322801/25000000000"
              ],
              [
                "1/1",
                "-11791931209/12500000000"
              ],
              [
                "1/1",
                "-298681211907/500000000000"
              ],
              [
                "1/1",
                "-168000389163/250000000000"
              ],
              [
                "1/1",
                "-215744080487/500000000000"
              ],
              [
                "1/1",
                "-65525973497/125000000000"
              ],
              [
                "1/1",
                "-11216042073/25000000000"
              ],
              [
                "1/1",
                "-2815867863/6250000000"
              ],
              [
                "1/1",
                "-10443736979/25000000000"
              ],
              [
                "1/1",
                "-3645069149/6250000000"
              ],
              [
                "1/1",
                "-217451500553/500000000000"
              ],
              [
                "1/1",
                "-63692766743/125000000000"
              ]
            ],
            "raw": [
              "10443736979/25000000000",
              "907/1000"
            ],
            "new": [
              "417749/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 1775,
            "target": "z",
            "old": [
              "175363/500000",
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
              "175363/500000",
              "47703/63203"
            ],
            "new": [
              "175363/500000",
              "754759/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "39749/125000",
              "182117/250000"
            ],
            "lines": [
              [
                "-87589/125000",
                "2581899953/15625000000"
              ],
              [
                "-87589/125000",
                "49141737497/250000000000"
              ],
              [
                "-87589/125000",
                "7788289/25000000"
              ],
              [
                "-87589/125000",
                "7378632663/15625000000"
              ],
              [
                "-87589/125000",
                "80834008319/200000000000"
              ],
              [
                "-87589/125000",
                "435495394591/1000000000000"
              ],
              [
                "-87589/125000",
                "349694389/1000000000"
              ],
              [
                "-87589/125000",
                "63799414929/125000000000"
              ],
              [
                "-19783/62500",
                "-560936961/7812500000"
              ],
              [
                "-19783/62500",
                "-35516664559/250000000000"
              ],
              [
                "-19783/62500",
                "4655627/62500000"
              ],
              [
                "-19783/62500",
                "4174965069/31250000000"
              ],
              [
                "-19783/62500",
                "33425702719/200000000000"
              ],
              [
                "-19783/62500",
                "96861786367/1000000000000"
              ],
              [
                "-19783/62500",
                "112652861/1000000000"
              ],
              [
                "-19783/62500",
                "21470213901/125000000000"
              ]
            ],
            "raw": [
              "39749/125000",
              "63799414929/87589000000"
            ],
            "new": [
              "39749/125000",
              "182099/250000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "37411/125000",
              "42717/62500"
            ],
            "lines": [
              [
                "219209/250000",
                "-11127742099/31250000000"
              ],
              [
                "219209/250000",
                "-112479081871/250000000000"
              ],
              [
                "260353/500000",
                "-39052385821/125000000000"
              ],
              [
                "260353/500000",
                "-117368263637/500000000000"
              ],
              [
                "219209/250000",
                "-78955185679/125000000000"
              ],
              [
                "219209/250000",
                "-181367516437/250000000000"
              ],
              [
                "260353/500000",
                "-2296768847/3906250000"
              ],
              [
                "260353/500000",
                "-255145132769/500000000000"
              ],
              [
                "219209/250000",
                "-1049935063/4000000000"
              ],
              [
                "219209/250000",
                "-553937119807/1000000000000"
              ],
              [
                "260353/500000",
                "-4376302103/20000000000"
              ],
              [
                "260353/500000",
                "-338757319597/1000000000000"
              ],
              [
                "219209/250000",
                "-74448270073/200000000000"
              ],
              [
                "219209/250000",
                "-331847352211/500000000000"
              ],
              [
                "260353/500000",
                "-65714537953/200000000000"
              ],
              [
                "260353/500000",
                "-112128726053/250000000000"
              ]
            ],
            "raw": [
              "1049935063/3507344000",
              "42717/62500"
            ],
            "new": [
              "299353/1000000",
              "42717/62500"
            ]
          },
          {
            "factor": 144,
            "target": "a",
            "old": [
              "6131/50000",
              "14807/25000"
            ],
            "lines": [
              [
                "-123459/250000",
                "116971/500000000"
              ],
              [
                "-11848/15625",
                "11622315317/125000000000"
              ],
              [
                "-68853/500000",
                "-177948029/500000000"
              ],
              [
                "-201071/500000",
                "-32893934683/125000000000"
              ],
              [
                "-123459/250000",
                "249522303/1000000000"
              ],
              [
                "-11848/15625",
                "112276938481/250000000000"
              ],
              [
                "-68853/500000",
                "-106607697/1000000000"
              ],
              [
                "-201071/500000",
                "23244438481/250000000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "112276938481/189568000000"
            ],
            "new": [
              "6131/50000",
              "296139/500000"
            ]
          },
          {
            "factor": 508,
            "target": "y",
            "old": [
              "417749/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "1/1",
                "-316650779853/500000000000"
              ],
              [
                "1/1",
                "-181505296677/250000000000"
              ],
              [
                "1/1",
                "-11319276787/25000000000"
              ],
              [
                "1/1",
                "-5683353083/12500000000"
              ],
              [
                "1/1",
                "-19447322801/25000000000"
              ],
              [
                "1/1",
                "-11791931209/12500000000"
              ],
              [
                "1/1",
                "-298681211907/500000000000"
              ],
              [
                "1/1",
                "-168000389163/250000000000"
              ],
              [
                "1/1",
                "-215761780139/500000000000"
              ],
              [
                "1/1",
                "-6553039841/12500000000"
              ],
              [
                "1/1",
                "-11216060181/25000000000"
              ],
              [
                "1/1",
                "-281587239/625000000"
              ],
              [
                "1/1",
                "-10445316263/25000000000"
              ],
              [
                "1/1",
                "-364546397/625000000"
              ],
              [
                "1/1",
                "-217465748741/500000000000"
              ],
              [
                "1/1",
                "-6369632879/12500000000"
              ]
            ],
            "raw": [
              "10445316263/25000000000",
              "907/1000"
            ],
            "new": [
              "104453/250000",
              "907/1000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "39749/125000",
              "182099/250000"
            ],
            "lines": [
              [
                "-700647/1000000",
                "20652541187/125000000000"
              ],
              [
                "-700647/1000000",
                "9827257681/50000000000"
              ],
              [
                "-700647/1000000",
                "62298291/200000000"
              ],
              [
                "-700647/1000000",
                "118043799273/250000000000"
              ],
              [
                "-700647/1000000",
                "20206146093/50000000000"
              ],
              [
                "-700647/1000000",
                "6803871031/15625000000"
              ],
              [
                "-700647/1000000",
                "87413571/250000000"
              ],
              [
                "-700647/1000000",
                "127584506523/250000000000"
              ],
              [
                "-19783/62500",
                "-560789793/7812500000"
              ],
              [
                "-19783/62500",
                "-8876947579/62500000000"
              ],
              [
                "-19783/62500",
                "4655627/62500000"
              ],
              [
                "-19783/62500",
                "4174965069/31250000000"
              ],
              [
                "-19783/62500",
                "8356074943/50000000000"
              ],
              [
                "-19783/62500",
                "968714311/10000000000"
              ],
              [
                "-19783/62500",
                "112652861/1000000000"
              ],
              [
                "-19783/62500",
                "21470213901/125000000000"
              ]
            ],
            "raw": [
              "39749/125000",
              "42528168841/58387250000"
            ],
            "new": [
              "39749/125000",
              "364191/500000"
            ]
          },
          {
            "factor": 508,
            "target": "y",
            "old": [
              "104453/250000",
              "907/1000"
            ],
            "lines": [
              [
                "1/1",
                "-316650779853/500000000000"
              ],
              [
                "1/1",
                "-181505296677/250000000000"
              ],
              [
                "1/1",
                "-11319276787/25000000000"
              ],
              [
                "1/1",
                "-5683353083/12500000000"
              ],
              [
                "1/1",
                "-19447322801/25000000000"
              ],
              [
                "1/1",
                "-11791931209/12500000000"
              ],
              [
                "1/1",
                "-298681211907/500000000000"
              ],
              [
                "1/1",
                "-168000389163/250000000000"
              ],
              [
                "1/1",
                "-107882610869/250000000000"
              ],
              [
                "1/1",
                "-262125035239/500000000000"
              ],
              [
                "1/1",
                "-5608031851/12500000000"
              ],
              [
                "1/1",
                "-11263493081/25000000000"
              ],
              [
                "1/1",
                "-5222811673/12500000000"
              ],
              [
                "1/1",
                "-14582162963/25000000000"
              ],
              [
                "1/1",
                "-108734259611/250000000000"
              ],
              [
                "1/1",
                "-254788085641/500000000000"
              ]
            ],
            "raw": [
              "5222811673/12500000000",
              "907/1000"
            ],
            "new": [
              "13057/31250",
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
        "DGP-",
        "AFG+"
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
          "175363/500000",
          "39749/125000",
          "13057/31250",
          "39749/125000",
          "299353/1000000"
        ],
        "high": [
          "296139/500000",
          "535/907",
          "220359/250000",
          "604217/1000000",
          "907/1000",
          "220359/250000",
          "239647/500000",
          "1",
          "754759/1000000",
          "364191/500000",
          "907/1000",
          "145669/200000",
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
        "AGO": -1,
        "AGP": -1,
        "DGP": -1,
        "AFG": 1,
        "ADG": 1,
        "AEG": 1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "BDG": 1,
        "ADO": 1,
        "ADP": 1,
        "BDO": 1,
        "BDP": 1,
        "BEG": 1,
        "BFG": 1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "DGH": -1,
        "EGH": -1,
        "GHO": -1,
        "GHP": -1,
        "BHO": -1,
        "BHP": -1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "CFP": 1,
        "DFP": 1,
        "BEO": 1,
        "EGO": -1,
        "DHO": -1,
        "AEO": 1,
        "AOP": -1,
        "GOP": -1,
        "FGP": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "ABDFG"
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ABD",
            "AFG",
            "ABF",
            "ABG",
            "ADF"
          ],
          "area_stage": null
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
            "DABCG"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "ABD",
            "CDG",
            "ACD",
            "ADG",
            "BCD"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DACGO"
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACD",
            "DGO",
            "ADG",
            "CDO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DACGP"
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACD",
            "DGP",
            "ADG",
            "CDP",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DBCGO"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "BCD",
            "DGO",
            "BDG",
            "CDO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DBCGP"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "BCD",
            "DGP",
            "BDG",
            "CDP",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "EABCG"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "CEG",
            "ACE",
            "AEG",
            "BCE"
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
        },
        {
          "rule": [
            "plu",
            "FADEG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "ADF",
            "EFG",
            "AEF",
            "AFG",
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
            "GACDH"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ACG",
            "ADG",
            "CGH",
            "AGH",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACEH"
          ],
          "target": "EGH",
          "sign": -1,
          "deps": [
            "ACG",
            "AEG",
            "CGH",
            "AGH",
            "CEG"
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
            "ray",
            "GDH",
            "OP",
            "DHG",
            [
              "area",
              "DGH",
              "T0101",
              "159703/250000"
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
            "plu",
            "EABGO"
          ],
          "target": "AEO",
          "sign": 1,
          "deps": [
            "ABE",
            "EGO",
            "AEG",
            "BEO",
            "BEG"
          ],
          "area_stage": null
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
              "15987749967/25000000000"
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
              "71536684683/125000000000"
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
          "value": "154393872273/250000000000",
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
              "15416466049/250000000000",
              "624714947/7812500000",
              "12206111/62500000",
              "43989690883/200000000000",
              "47649220687/200000000000",
              "4359362097/15625000000",
              "39620617027/125000000000",
              "10006054477/25000000000",
              "432299199/1000000000",
              "95049505287/200000000000",
              "558524769299/1000000000000",
              "154393872273/250000000000"
            ],
            "cell": "CB"
          }
        }
      },
      "relations": {
        "4578": {
          "row": [
            "linear",
            {
              "CFP": "107893872273/250000000000",
              "CHP": "-93/1000",
              "COP": "-154393872273/250000000000"
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
              "value": "154393872273/250000000000"
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
            "residual": "84643872273/250000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0053",
          "relation": 4578,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "153121/1000000",
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
        "200": {
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
              "-153121/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "lo",
            "reference": "T0053",
            "value": "153121/1000000"
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
          "175363/500000",
          "39749/125000",
          "511471/1000000",
          "39749/125000",
          "299361/1000000"
        ],
        "high": [
          "296139/500000",
          "535/907",
          "220359/250000",
          "604217/1000000",
          "907/1000",
          "220359/250000",
          "239647/500000",
          "1/1",
          "754759/1000000",
          "91047/125000",
          "907/1000",
          "145663/200000",
          "42717/62500"
        ],
        "steps": [
          {
            "factor": 130,
            "target": "y",
            "old": [
              "13057/31250",
              "907/1000"
            ],
            "lines": [
              [
                "219209/250000",
                "-16940242099/31250000000"
              ],
              [
                "219209/250000",
                "-158979081871/250000000000"
              ],
              [
                "260353/500000",
                "-62302385821/125000000000"
              ],
              [
                "260353/500000",
                "-210368263637/500000000000"
              ],
              [
                "219209/250000",
                "-102205185679/125000000000"
              ],
              [
                "219209/250000",
                "-227867516437/250000000000"
              ],
              [
                "260353/500000",
                "-3023331347/3906250000"
              ],
              [
                "260353/500000",
                "-348145132769/500000000000"
              ],
              [
                "219209/250000",
                "-112118831457/250000000000"
              ],
              [
                "219209/250000",
                "-369973249487/500000000000"
              ],
              [
                "260353/500000",
                "-101201666307/250000000000"
              ],
              [
                "260353/500000",
                "-131191674691/250000000000"
              ],
              [
                "219209/250000",
                "-279108980611/500000000000"
              ],
              [
                "219209/250000",
                "-26552785449/31250000000"
              ],
              [
                "260353/500000",
                "-257274650311/500000000000"
              ],
              [
                "260353/500000",
                "-317254667079/500000000000"
              ]
            ],
            "raw": [
              "112118831457/219209000000",
              "907/1000"
            ],
            "new": [
              "51147/100000",
              "907/1000"
            ]
          },
          {
            "factor": 200,
            "target": "u",
            "old": [
              "39749/125000",
              "145669/200000"
            ],
            "lines": [
              [
                "-1/1",
                "10340461499/20000000000"
              ],
              [
                "-1/1",
                "162288822523/250000000000"
              ],
              [
                "-1/1",
                "298091392429/500000000000"
              ],
              [
                "-1/1",
                "145663/200000"
              ],
              [
                "-1/1",
                "609859561/1250000000"
              ],
              [
                "-1/1",
                "4277971861/7812500000"
              ],
              [
                "-1/1",
                "20894445331/31250000000"
              ]
            ],
            "raw": [
              "39749/125000",
              "145663/200000"
            ],
            "new": [
              "39749/125000",
              "145663/200000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "39749/125000",
              "364191/500000"
            ],
            "lines": [
              [
                "-700647/1000000",
                "4830620519/25000000000"
              ],
              [
                "-700647/1000000",
                "62329047943/250000000000"
              ],
              [
                "-700647/1000000",
                "62298291/200000000"
              ],
              [
                "-700647/1000000",
                "118043799273/250000000000"
              ],
              [
                "-700647/1000000",
                "7873598319/20000000000"
              ],
              [
                "-700647/1000000",
                "224885643481/500000000000"
              ],
              [
                "-700647/1000000",
                "174825747/500000000"
              ],
              [
                "-700647/1000000",
                "127583809023/250000000000"
              ],
              [
                "-19783/62500",
                "-68400941/1562500000"
              ],
              [
                "-19783/62500",
                "-11157515389/125000000000"
              ],
              [
                "-19783/62500",
                "4655627/62500000"
              ],
              [
                "-19783/62500",
                "4174965069/31250000000"
              ],
              [
                "-19783/62500",
                "3133569859/20000000000"
              ],
              [
                "-19783/62500",
                "55597486039/500000000000"
              ],
              [
                "-19783/62500",
                "112650071/1000000000"
              ],
              [
                "-19783/62500",
                "21469865151/125000000000"
              ]
            ],
            "raw": [
              "39749/125000",
              "42527936341/58387250000"
            ],
            "new": [
              "39749/125000",
              "364189/500000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "299353/1000000",
              "42717/62500"
            ],
            "lines": [
              [
                "219209/250000",
                "-11127742099/31250000000"
              ],
              [
                "219209/250000",
                "-112479081871/250000000000"
              ],
              [
                "260353/500000",
                "-39052385821/125000000000"
              ],
              [
                "260353/500000",
                "-117368263637/500000000000"
              ],
              [
                "219209/250000",
                "-78955185679/125000000000"
              ],
              [
                "219209/250000",
                "-181367516437/250000000000"
              ],
              [
                "260353/500000",
                "-2296768847/3906250000"
              ],
              [
                "260353/500000",
                "-255145132769/500000000000"
              ],
              [
                "219209/250000",
                "-26249060893/100000000000"
              ],
              [
                "219209/250000",
                "-553929515077/1000000000000"
              ],
              [
                "260353/500000",
                "-21882194833/100000000000"
              ],
              [
                "260353/500000",
                "-338749714867/1000000000000"
              ],
              [
                "219209/250000",
                "-74452062907/200000000000"
              ],
              [
                "219209/250000",
                "-331849610341/500000000000"
              ],
              [
                "260353/500000",
                "-65718330787/200000000000"
              ],
              [
                "260353/500000",
                "-56064927559/125000000000"
              ]
            ],
            "raw": [
              "26249060893/87683600000",
              "42717/62500"
            ],
            "new": [
              "299361/1000000",
              "42717/62500"
            ]
          },
          {
            "factor": 130,
            "target": "y",
            "old": [
              "51147/100000",
              "907/1000"
            ],
            "lines": [
              [
                "219209/250000",
                "-16940242099/31250000000"
              ],
              [
                "219209/250000",
                "-158979081871/250000000000"
              ],
              [
                "260353/500000",
                "-62302385821/125000000000"
              ],
              [
                "260353/500000",
                "-210368263637/500000000000"
              ],
              [
                "219209/250000",
                "-102205185679/125000000000"
              ],
              [
                "219209/250000",
                "-227867516437/250000000000"
              ],
              [
                "260353/500000",
                "-3023331347/3906250000"
              ],
              [
                "260353/500000",
                "-348145132769/500000000000"
              ],
              [
                "219209/250000",
                "-112119059563/250000000000"
              ],
              [
                "219209/250000",
                "-73994548501/100000000000"
              ],
              [
                "260353/500000",
                "-101201894413/250000000000"
              ],
              [
                "260353/500000",
                "-327978553/625000000"
              ],
              [
                "219209/250000",
                "-279110244889/500000000000"
              ],
              [
                "219209/250000",
                "-106211217067/125000000000"
              ],
              [
                "260353/500000",
                "-257275914589/500000000000"
              ],
              [
                "260353/500000",
                "-317254968163/500000000000"
              ]
            ],
            "raw": [
              "112119059563/219209000000",
              "907/1000"
            ],
            "new": [
              "511471/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "39749/125000",
              "364189/500000"
            ],
            "lines": [
              [
                "-700639/1000000",
                "24152522971/125000000000"
              ],
              [
                "-700639/1000000",
                "15581856483/62500000000"
              ],
              [
                "-700639/1000000",
                "311486519/1000000000"
              ],
              [
                "-700639/1000000",
                "118042036401/250000000000"
              ],
              [
                "-700639/1000000",
                "78734973727/200000000000"
              ],
              [
                "-700639/1000000",
                "89952877719/200000000000"
              ],
              [
                "-700639/1000000",
                "174823279/500000000"
              ],
              [
                "-700639/1000000",
                "127582046151/250000000000"
              ],
              [
                "-19783/62500",
                "-342002369/7812500000"
              ],
              [
                "-19783/62500",
                "-22314889917/250000000000"
              ],
              [
                "-19783/62500",
                "4655627/62500000"
              ],
              [
                "-19783/62500",
                "4174965069/31250000000"
              ],
              [
                "-19783/62500",
                "31335676327/200000000000"
              ],
              [
                "-19783/62500",
                "111195125199/1000000000000"
              ],
              [
                "-19783/62500",
                "112650071/1000000000"
              ],
              [
                "-19783/62500",
                "21469865151/125000000000"
              ]
            ],
            "raw": [
              "39749/125000",
              "127582046151/175159750000"
            ],
            "new": [
              "39749/125000",
              "91047/125000"
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
        "DGP-",
        "AFG+"
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
          "175363/500000",
          "39749/125000",
          "511471/1000000",
          "39749/125000",
          "299361/1000000"
        ],
        "high": [
          "296139/500000",
          "535/907",
          "220359/250000",
          "604217/1000000",
          "907/1000",
          "220359/250000",
          "239647/500000",
          "1",
          "754759/1000000",
          "91047/125000",
          "907/1000",
          "145663/200000",
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
        "AGO": -1,
        "AGP": -1,
        "DGP": -1,
        "AFG": 1,
        "ADG": 1,
        "AEG": 1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "BDG": 1,
        "ADO": 1,
        "ADP": 1,
        "BDO": 1,
        "BDP": 1,
        "BEG": 1,
        "BFG": 1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "DGH": -1,
        "EGH": -1,
        "GHO": -1,
        "GHP": -1,
        "BHO": -1,
        "BHP": -1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "CFP": 1,
        "DFP": 1,
        "BEO": 1,
        "EGO": -1,
        "DHO": -1,
        "AEO": 1,
        "AOP": -1,
        "GOP": -1,
        "FGP": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "ABDFG"
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ABD",
            "AFG",
            "ABF",
            "ABG",
            "ADF"
          ],
          "area_stage": null
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
            "DABCG"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "ABD",
            "CDG",
            "ACD",
            "ADG",
            "BCD"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DACGO"
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACD",
            "DGO",
            "ADG",
            "CDO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DACGP"
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACD",
            "DGP",
            "ADG",
            "CDP",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DBCGO"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "BCD",
            "DGO",
            "BDG",
            "CDO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DBCGP"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "BCD",
            "DGP",
            "BDG",
            "CDP",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "EABCG"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "CEG",
            "ACE",
            "AEG",
            "BCE"
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
        },
        {
          "rule": [
            "plu",
            "FADEG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "ADF",
            "EFG",
            "AEF",
            "AFG",
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
            "GACDH"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ACG",
            "ADG",
            "CGH",
            "AGH",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACEH"
          ],
          "target": "EGH",
          "sign": -1,
          "deps": [
            "ACG",
            "AEG",
            "CGH",
            "AGH",
            "CEG"
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
            "ray",
            "GDH",
            "OP",
            "DHG",
            [
              "area",
              "DGH",
              "T0101",
              "159703/250000"
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
            "plu",
            "EABGO"
          ],
          "target": "AEO",
          "sign": 1,
          "deps": [
            "ABE",
            "EGO",
            "AEG",
            "BEO",
            "BEG"
          ],
          "area_stage": null
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
              "15987749967/25000000000"
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
              "71536684683/125000000000"
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
          "value": "154392109401/250000000000",
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
              "15416466049/250000000000",
              "624714947/7812500000",
              "12206111/62500000",
              "8797475309/40000000000",
              "47646906349/200000000000",
              "4359362097/15625000000",
              "39620000027/125000000000",
              "50029390949/125000000000",
              "432294263/1000000000",
              "95046203749/200000000000",
              "558506146121/1000000000000",
              "154392109401/250000000000"
            ],
            "cell": "CB"
          }
        }
      },
      "relations": {
        "4578": {
          "row": [
            "linear",
            {
              "CFP": "107892109401/250000000000",
              "CHP": "-93/1000",
              "COP": "-154392109401/250000000000"
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
              "value": "154392109401/250000000000"
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
            "residual": "84642109401/250000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0051",
          "relation": 4578,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "76561/500000",
          "sources": [
            "L_CHP",
            "L_COP"
          ]
        }
      ],
      "physical": {
        "200": {
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
              "-76561/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "lo",
            "reference": "T0051",
            "value": "76561/500000"
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
          "175363/500000",
          "39749/125000",
          "511471/1000000",
          "39749/125000",
          "299361/1000000"
        ],
        "high": [
          "296139/500000",
          "535/907",
          "220359/250000",
          "604217/1000000",
          "907/1000",
          "220359/250000",
          "239647/500000",
          "1/1",
          "754759/1000000",
          "91047/125000",
          "907/1000",
          "364157/500000",
          "42717/62500"
        ],
        "steps": [
          {
            "factor": 200,
            "target": "u",
            "old": [
              "39749/125000",
              "145663/200000"
            ],
            "lines": [
              [
                "-1/1",
                "10340429363/20000000000"
              ],
              [
                "-1/1",
                "162288043651/250000000000"
              ],
              [
                "-1/1",
                "298091646773/500000000000"
              ],
              [
                "-1/1",
                "364157/500000"
              ],
              [
                "-1/1",
                "609858311/1250000000"
              ],
              [
                "-1/1",
                "8555928097/15625000000"
              ],
              [
                "-1/1",
                "20894414081/31250000000"
              ]
            ],
            "raw": [
              "39749/125000",
              "364157/500000"
            ],
            "new": [
              "39749/125000",
              "364157/500000"
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
        "DGP-",
        "AFG+"
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
          "175363/500000",
          "39749/125000",
          "511471/1000000",
          "39749/125000",
          "299361/1000000"
        ],
        "high": [
          "296139/500000",
          "535/907",
          "220359/250000",
          "604217/1000000",
          "907/1000",
          "220359/250000",
          "239647/500000",
          "1",
          "754759/1000000",
          "91047/125000",
          "907/1000",
          "364157/500000",
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
        "AGO": -1,
        "AGP": -1,
        "DGP": -1,
        "AFG": 1,
        "ADG": 1,
        "AEG": 1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "BDG": 1,
        "ADO": 1,
        "ADP": 1,
        "BDO": 1,
        "BDP": 1,
        "BEG": 1,
        "BFG": 1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "DGH": -1,
        "EGH": -1,
        "GHO": -1,
        "GHP": -1,
        "BHO": -1,
        "BHP": -1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "CFP": 1,
        "DFP": 1,
        "BEO": 1,
        "EGO": -1,
        "DHO": -1,
        "AEO": 1,
        "AOP": -1,
        "GOP": -1,
        "FGP": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "ABDFG"
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ABD",
            "AFG",
            "ABF",
            "ABG",
            "ADF"
          ],
          "area_stage": null
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
            "DABCG"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "ABD",
            "CDG",
            "ACD",
            "ADG",
            "BCD"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DACGO"
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACD",
            "DGO",
            "ADG",
            "CDO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DACGP"
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACD",
            "DGP",
            "ADG",
            "CDP",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DBCGO"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "BCD",
            "DGO",
            "BDG",
            "CDO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DBCGP"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "BCD",
            "DGP",
            "BDG",
            "CDP",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "EABCG"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "CEG",
            "ACE",
            "AEG",
            "BCE"
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
        },
        {
          "rule": [
            "plu",
            "FADEG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "ADF",
            "EFG",
            "AEF",
            "AFG",
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
            "GACDH"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ACG",
            "ADG",
            "CGH",
            "AGH",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACEH"
          ],
          "target": "EGH",
          "sign": -1,
          "deps": [
            "ACG",
            "AEG",
            "CGH",
            "AGH",
            "CEG"
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
            "ray",
            "GDH",
            "OP",
            "DHG",
            [
              "area",
              "DGH",
              "T0101",
              "159703/250000"
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
            "plu",
            "EABGO"
          ],
          "target": "AEO",
          "sign": 1,
          "deps": [
            "ABE",
            "EGO",
            "AEG",
            "BEO",
            "BEG"
          ],
          "area_stage": null
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
              "15987749967/25000000000"
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
              "71536684683/125000000000"
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
          "6131/50000",
          "123/1000",
          "13857/20000",
          "6131/50000",
          "425403/1000000",
          "617/1000",
          "30791/250000",
          "614277/1000000",
          "175363/500000",
          "39749/125000",
          "511471/1000000",
          "39749/125000",
          "299361/1000000"
        ],
        "high": [
          "296139/500000",
          "535/907",
          "220359/250000",
          "604217/1000000",
          "907/1000",
          "220359/250000",
          "239647/500000",
          "1/1",
          "754759/1000000",
          "91047/125000",
          "907/1000",
          "364157/500000",
          "42717/62500"
        ],
        "steps": []
      }
    },
    {
      "id": 5,
      "assumptions": [
        "AGO-",
        "AGP-",
        "DGP-",
        "AFG+",
        "EGP-"
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
          "175363/500000",
          "39749/125000",
          "511471/1000000",
          "39749/125000",
          "299361/1000000"
        ],
        "high": [
          "296139/500000",
          "535/907",
          "220359/250000",
          "604217/1000000",
          "907/1000",
          "220359/250000",
          "239647/500000",
          "1",
          "754759/1000000",
          "91047/125000",
          "907/1000",
          "364157/500000",
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
        "AGO": -1,
        "AGP": -1,
        "DGP": -1,
        "AFG": 1,
        "ADG": 1,
        "AEG": 1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "BDG": 1,
        "ADO": 1,
        "ADP": 1,
        "BDO": 1,
        "BDP": 1,
        "BEG": 1,
        "BFG": 1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "DGH": -1,
        "EGH": -1,
        "GHO": -1,
        "GHP": -1,
        "BHO": -1,
        "BHP": -1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "CFP": 1,
        "DFP": 1,
        "BEO": 1,
        "EGO": -1,
        "DHO": -1,
        "AEO": 1,
        "AOP": -1,
        "GOP": -1,
        "FGP": 1,
        "EGP": -1,
        "AEP": 1,
        "BEP": 1,
        "AFO": 1,
        "BFO": 1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "ABDFG"
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ABD",
            "AFG",
            "ABF",
            "ABG",
            "ADF"
          ],
          "area_stage": null
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
            "DABCG"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "ABD",
            "CDG",
            "ACD",
            "ADG",
            "BCD"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DACGO"
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACD",
            "DGO",
            "ADG",
            "CDO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DACGP"
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACD",
            "DGP",
            "ADG",
            "CDP",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DBCGO"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "BCD",
            "DGO",
            "BDG",
            "CDO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DBCGP"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "BCD",
            "DGP",
            "BDG",
            "CDP",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "EABCG"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "CEG",
            "ACE",
            "AEG",
            "BCE"
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
        },
        {
          "rule": [
            "plu",
            "FADEG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "ADF",
            "EFG",
            "AEF",
            "AFG",
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
            "GACDH"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ACG",
            "ADG",
            "CGH",
            "AGH",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACEH"
          ],
          "target": "EGH",
          "sign": -1,
          "deps": [
            "ACG",
            "AEG",
            "CGH",
            "AGH",
            "CEG"
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
            "ray",
            "GDH",
            "OP",
            "DHG",
            [
              "area",
              "DGH",
              "T0101",
              "159703/250000"
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
            "plu",
            "EABGO"
          ],
          "target": "AEO",
          "sign": 1,
          "deps": [
            "ABE",
            "EGO",
            "AEG",
            "BEO",
            "BEG"
          ],
          "area_stage": null
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
              "15987749967/25000000000"
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
              "71536684683/125000000000"
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
            "EACGP"
          ],
          "target": "AEP",
          "sign": 1,
          "deps": [
            "ACE",
            "EGP",
            "AEG",
            "CEP",
            "CEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "EBCGP"
          ],
          "target": "BEP",
          "sign": 1,
          "deps": [
            "BCE",
            "EGP",
            "BEG",
            "CEP",
            "CEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "AEF",
            "OP",
            "FAE",
            [
              "HCF2-AEF-cap1"
            ]
          ],
          "target": "AFO",
          "sign": 1,
          "deps": [
            "AEO",
            "EFO",
            "AEP",
            "EFP",
            "FOP"
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
        "L_ABO": {
          "triangle": "ABO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ABO",
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
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACO",
            "points": [
              "P"
            ]
          }
        },
        "L_ACP": {
          "triangle": "ACP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACP",
            "points": []
          }
        },
        "L_AEG": {
          "triangle": "AEG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "AEG",
            "points": []
          }
        },
        "L_AEH": {
          "triangle": "AEH",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "AEH",
            "points": [
              "G",
              "P"
            ]
          }
        },
        "L_AEO": {
          "triangle": "AEO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "AEO",
            "points": [
              "P"
            ]
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
        "L_AFH": {
          "triangle": "AFH",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "AFH",
            "points": [
              "G",
              "O"
            ]
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
        "L_AGP": {
          "triangle": "AGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GAP",
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
        "L_BDG": {
          "triangle": "BDG",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "BDG",
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
        "L_BEH": {
          "triangle": "BEH",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "BEH",
            "points": [
              "G",
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
        "L_DGH": {
          "triangle": "DGH",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GDH",
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
        "L_EFG": {
          "triangle": "EFG",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EFG",
            "points": [
              "P"
            ]
          }
        },
        "L_EFP": {
          "triangle": "EFP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EFP",
            "points": []
          }
        },
        "L_EGH": {
          "triangle": "EGH",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GEH",
            "points": [
              "P"
            ]
          }
        },
        "L_EGO": {
          "triangle": "EGO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GEO",
            "points": [
              "P"
            ]
          }
        },
        "L_EGP": {
          "triangle": "EGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GEP",
            "points": []
          }
        },
        "L_EHP": {
          "triangle": "EHP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EHP",
            "points": []
          }
        },
        "L_EOP": {
          "triangle": "EOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EOP",
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
        "U_ACH": {
          "triangle": "ACH",
          "side": "hi",
          "value": "9666928971/12500000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACH",
            "used": [
              0,
              2,
              7
            ],
            "values": [
              "304840143/20000000000",
              "4847677641/250000000000",
              "2824901877/10000000000",
              "6812891049/20000000000",
              "44922606099/125000000000",
              "108341044863/250000000000",
              "607892733/1000000000",
              "9666928971/12500000000"
            ],
            "cell": "CB"
          }
        },
        "U_ACO": {
          "triangle": "ACO",
          "side": "hi",
          "value": "1951735587/2500000000",
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
              "29278366731/250000000000",
              "66176267913/500000000000",
              "30840759439/100000000000",
              "35872888047/100000000000",
              "90043720419/250000000000",
              "187706975289/500000000000",
              "95434862269/250000000000",
              "101598700869/250000000000",
              "108015183789/250000000000",
              "58218370821/125000000000",
              "14561246551/25000000000",
              "15819278703/25000000000",
              "162364054557/250000000000",
              "17720209533/25000000000",
              "9129661859/12500000000",
              "1951735587/2500000000"
            ],
            "cell": "CB"
          }
        },
        "U_AEH": {
          "triangle": "AEH",
          "side": "hi",
          "value": "43869/50000",
          "witness": {
            "kind": "vertices",
            "signed": "AEH",
            "used": [
              0,
              4,
              7
            ],
            "values": [
              "21999/1000000",
              "203861/500000",
              "491657/1000000",
              "43869/50000"
            ],
            "cell": "CB"
          }
        },
        "U_AFH": {
          "triangle": "AFH",
          "side": "hi",
          "value": "9666928971/12500000000",
          "witness": {
            "kind": "vertices",
            "signed": "AFH",
            "used": [
              0,
              5,
              7
            ],
            "values": [
              "13573383/1000000000",
              "4847677641/250000000000",
              "125782237/500000000",
              "303352369/1000000000",
              "44922606099/125000000000",
              "108341044863/250000000000",
              "27067173/50000000",
              "9666928971/12500000000"
            ],
            "cell": "CB"
          }
        },
        "U_AHO": {
          "triangle": "AHO",
          "side": "hi",
          "value": "3994140843/6250000000",
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
              "874438251/125000000000",
              "2002942953/125000000000",
              "8103270889/62500000000",
              "19542874093/125000000000",
              "1743748881/6250000000",
              "18560932467/62500000000",
              "44763894879/125000000000",
              "3994140843/6250000000"
            ],
            "cell": "CB"
          }
        },
        "U_BDH": {
          "triangle": "BDH",
          "side": "hi",
          "value": "951318691/1000000000",
          "witness": {
            "kind": "vertices",
            "signed": "BDH",
            "used": [
              1,
              3,
              7
            ],
            "values": [
              "36764093/113375000",
              "4376017/9070000",
              "553803189/1000000000",
              "551767139/907000000",
              "30651981/50000000",
              "139051219/181400000",
              "44604113/50000000",
              "951318691/1000000000"
            ],
            "cell": "CB"
          }
        },
        "U_BEH": {
          "triangle": "BEH",
          "side": "hi",
          "value": "988561/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "BEH",
            "used": [
              1,
              4,
              7
            ],
            "values": [
              "456101649/907000000",
              "295522749/500000000",
              "650281929/1000000000",
              "119918121/181400000",
              "178439011/226750000",
              "929324569/1000000000",
              "171449/181400",
              "988561/1000000"
            ],
            "cell": "CB"
          }
        },
        "U_BFH": {
          "triangle": "BFH",
          "side": "hi",
          "value": "220359/250000",
          "witness": {
            "kind": "vertices",
            "signed": "BFH",
            "used": [
              1,
              5,
              7
            ],
            "values": [
              "213226419/500000000",
              "147222447693/250000000000",
              "550122885463/907000000000",
              "617/1000",
              "174363300406801/226750000000000",
              "220359/250000"
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
        },
        "U_EFG": {
          "triangle": "EFG",
          "side": "hi",
          "value": "133107156523/250000000000",
          "witness": {
            "kind": "vertices",
            "signed": "EFG",
            "used": [
              4,
              5,
              6,
              8
            ],
            "values": [
              "16618989981/250000000000",
              "24899012481/250000000000",
              "106733961/1000000000",
              "14297466067/125000000000",
              "139854051/1000000000",
              "18437477317/125000000000",
              "86526378741/500000000000",
              "130073170349/500000000000",
              "1307393/5000000",
              "29459869/100000000",
              "30805010931/100000000000",
              "163898698241/500000000000",
              "94420996773/250000000000",
              "116194392577/250000000000",
              "12817033473/25000000000",
              "133107156523/250000000000"
            ],
            "cell": "CB"
          }
        },
        "U_EGH": {
          "triangle": "EGH",
          "side": "hi",
          "value": "159454937/250000000",
          "witness": {
            "kind": "vertices",
            "signed": "GEH",
            "used": [
              4,
              6,
              7,
              8
            ],
            "values": [
              "-57752043739/250000000000",
              "-20468059667/125000000000",
              "-26107266107/250000000000",
              "-15079947259/500000000000",
              "-90811219/500000000000",
              "43256206261/250000000000",
              "43617833773/250000000000",
              "100333329/500000000",
              "58446687/250000000",
              "30036065333/125000000000",
              "74900983893/250000000000",
              "186936552741/500000000000",
              "201925688781/500000000000",
              "144626083773/250000000000",
              "302349829/500000000",
              "159454937/250000000"
            ],
            "cell": "CB"
          }
        },
        "U_EGO": {
          "triangle": "EGO",
          "side": "hi",
          "value": "118302974627/250000000000",
          "witness": {
            "kind": "vertices",
            "signed": "GEO",
            "used": [
              4,
              6,
              8,
              9,
              10
            ],
            "values": [
              "-15273087843/50000000000",
              "-60746121579/250000000000",
              "-48929174317/250000000000",
              "-4495182571/25000000000",
              "-16460201409/100000000000",
              "-74577953/500000000",
              "-51062371773/500000000000",
              "-27428477249/500000000000",
              "-5580608767/125000000000",
              "-874592081/62500000000",
              "13073510317/500000000000",
              "8142312987/250000000000",
              "5169038673/125000000000",
              "4068761841/62500000000",
              "2992076107/31250000000",
              "11968948287/125000000000",
              "12978697491/125000000000",
              "15799729033/125000000000",
              "9443585561/62500000000",
              "80654726669/500000000000",
              "86714497359/500000000000",
              "49414540061/250000000000",
              "27105451293/100000000000",
              "150850379449/500000000000",
              "83205148237/250000000000",
              "23711457387/62500000000",
              "22128282627/50000000000",
              "118302974627/250000000000"
            ],
            "cell": "CB"
          }
        }
      },
      "relations": {
        "1": {
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
        "4": {
          "row": [
            "fan",
            "AEH",
            "AEG",
            "EGH",
            "AGH"
          ],
          "witness": {
            "kind": "fan",
            "outer": "AEH",
            "point": "G"
          }
        },
        "6": {
          "row": [
            "fan",
            "AEO",
            "AEP",
            "EOP",
            "AOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "AEO",
            "point": "P"
          }
        },
        "8": {
          "row": [
            "fan",
            "AFH",
            "AFO",
            "FHO",
            "AHO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "AFH",
            "point": "O"
          }
        },
        "9": {
          "row": [
            "fan",
            "AHO",
            "AGH",
            "AGO",
            "GHO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "HAO",
            "point": "G"
          }
        },
        "10": {
          "row": [
            "fan",
            "AHP",
            "AGH",
            "AGP",
            "GHP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "HAP",
            "point": "G"
          }
        },
        "11": {
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
        "16": {
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
        "28": {
          "row": [
            "fan",
            "EFG",
            "EFP",
            "FGP",
            "EGP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "EFG",
            "point": "P"
          }
        },
        "29": {
          "row": [
            "fan",
            "EGH",
            "EGP",
            "EHP",
            "GHP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "GEH",
            "point": "P"
          }
        },
        "131": {
          "row": [
            "plu",
            "AEG",
            "AHO",
            "AEH",
            "AGO",
            "AEO",
            "AGH"
          ],
          "witness": {
            "kind": "plu",
            "word": "AEGHO"
          }
        },
        "679": {
          "row": [
            "plu",
            "AEG",
            "GHO",
            "AGH",
            "EGO",
            "AGO",
            "EGH"
          ],
          "witness": {
            "kind": "plu",
            "word": "GAEHO"
          }
        },
        "752": {
          "row": [
            "plu",
            "AGH",
            "BFH",
            "ABH",
            "FGH",
            "AFH",
            "BGH"
          ],
          "witness": {
            "kind": "plu",
            "word": "HABFG"
          }
        },
        "776": {
          "row": [
            "plu",
            "AEH",
            "FGH",
            "AFH",
            "EGH",
            "AGH",
            "EFH"
          ],
          "witness": {
            "kind": "plu",
            "word": "HAEFG"
          }
        },
        "942": {
          "row": [
            "plu",
            "EFP",
            "GHP",
            "EGP",
            "FHP",
            "EHP",
            "FGP"
          ],
          "witness": {
            "kind": "plu",
            "word": "PEFGH"
          }
        },
        "1116": {
          "row": [
            "quad",
            "EFH",
            "AEH",
            "93/91"
          ],
          "witness": {
            "kind": "quad",
            "poly": "EFHA",
            "occupants": [
              "G",
              "O",
              "P"
            ]
          }
        },
        "1127": {
          "row": [
            "quad",
            "AEO",
            "AGO",
            "449/1000"
          ],
          "witness": {
            "kind": "quad",
            "poly": "AEOG",
            "occupants": [
              "P"
            ]
          }
        },
        "1336": {
          "row": [
            "quad",
            "EFH",
            "EGH",
            "93/125"
          ],
          "witness": {
            "kind": "quad",
            "poly": "EFHG",
            "occupants": [
              "O",
              "P"
            ]
          }
        },
        "1740": {
          "row": [
            "support",
            "CFG",
            "EFG",
            "CEG",
            "1023/1000"
          ],
          "witness": {
            "kind": "five_support",
            "poly": "GCDEF"
          }
        },
        "1765": {
          "row": [
            "support",
            "CGO",
            "EGO",
            "CEG",
            "1023/1000"
          ],
          "witness": {
            "kind": "five_support",
            "poly": "GCDEO"
          }
        },
        "2366": {
          "row": [
            "balance",
            [
              [
                1,
                "ACO",
                "EGP"
              ],
              [
                -1,
                "ACP",
                "EGO"
              ],
              [
                1,
                "AEG",
                "COP"
              ],
              [
                1,
                "AOP",
                "CEG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ACO",
            "point": "P",
            "line": "EG"
          }
        },
        "2578": {
          "row": [
            "balance",
            [
              [
                1,
                "ABH",
                "EGO"
              ],
              [
                -1,
                "AEG",
                "BHO"
              ],
              [
                1,
                "AEO",
                "BGH"
              ],
              [
                1,
                "AGO",
                "BEH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "AEG",
            "point": "O",
            "line": "BH"
          }
        },
        "2864": {
          "row": [
            "balance",
            [
              [
                1,
                "ABO",
                "CGH"
              ],
              [
                1,
                "ACO",
                "BGH"
              ],
              [
                1,
                "AGO",
                "BCH"
              ],
              [
                -1,
                "AHO",
                "BCG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "BCG",
            "point": "H",
            "line": "AO"
          }
        },
        "3912": {
          "row": [
            "linear",
            {
              "ACH": "-93/1000",
              "CGH": "9666928971/12500000000"
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
              "value": "9666928971/12500000000"
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
            "residual": "6179428971/12500000000"
          }
        },
        "3988": {
          "row": [
            "linear",
            {
              "ACO": "-93/1000",
              "COP": "1951735587/2500000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "ACO",
            "point": "P",
            "line": "CO",
            "side": "lower",
            "outer_upper": {
              "triangle": "ACO",
              "ref": "U_ACO",
              "value": "1951735587/2500000000"
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
                "value": "93/1000"
              }
            ],
            "residual": "1254235587/2500000000"
          }
        },
        "4246": {
          "row": [
            "linear",
            {
              "AFH": "-279/1000",
              "EFH": "-93/1000",
              "FGH": "43869/50000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "AEH",
            "point": "G",
            "line": "FH",
            "side": "lower",
            "outer_upper": {
              "triangle": "AEH",
              "ref": "U_AEH",
              "value": "43869/50000"
            },
            "fan_lower": [
              {
                "triangle": "EGH",
                "ref": "L_EGH",
                "value": "279/1000"
              },
              {
                "triangle": "AGH",
                "ref": "L_AGH",
                "value": "93/1000"
              },
              {
                "triangle": "AEG",
                "ref": "L_AEG",
                "value": "93/1000"
              }
            ],
            "residual": "20619/50000"
          }
        },
        "4412": {
          "row": [
            "linear",
            {
              "AFH": "-93/1000",
              "AFG": "9666928971/12500000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "AFH",
            "point": "G",
            "line": "AF",
            "side": "lower",
            "outer_upper": {
              "triangle": "AFH",
              "ref": "U_AFH",
              "value": "9666928971/12500000000"
            },
            "fan_lower": [
              {
                "triangle": "FGH",
                "ref": "L_FGH",
                "value": "93/1000"
              },
              {
                "triangle": "AGH",
                "ref": "L_AGH",
                "value": "93/1000"
              },
              {
                "triangle": "AFG",
                "ref": "L_AFG",
                "value": "93/1000"
              }
            ],
            "residual": "6179428971/12500000000"
          }
        },
        "4490": {
          "row": [
            "linear",
            {
              "AFG": "7341928971/12500000000",
              "AGH": "-93/1000",
              "AGO": "-9666928971/12500000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "AFH",
            "point": "O",
            "line": "AG",
            "side": "lower",
            "outer_upper": {
              "triangle": "AFH",
              "ref": "U_AFH",
              "value": "9666928971/12500000000"
            },
            "fan_lower": [
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              },
              {
                "triangle": "AHO",
                "ref": "L_AHO",
                "value": "279/1000"
              },
              {
                "triangle": "AFO",
                "ref": "L_AFO",
                "value": "93/1000"
              }
            ],
            "residual": "3854428971/12500000000"
          }
        },
        "4506": {
          "row": [
            "linear",
            {
              "ABH": "-93/1000",
              "BFH": "7341928971/12500000000",
              "BHO": "-9666928971/12500000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "AFH",
            "point": "O",
            "line": "BH",
            "side": "lower",
            "outer_upper": {
              "triangle": "AFH",
              "ref": "U_AFH",
              "value": "9666928971/12500000000"
            },
            "fan_lower": [
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              },
              {
                "triangle": "AHO",
                "ref": "L_AHO",
                "value": "279/1000"
              },
              {
                "triangle": "AFO",
                "ref": "L_AFO",
                "value": "93/1000"
              }
            ],
            "residual": "3854428971/12500000000"
          }
        },
        "4522": {
          "row": [
            "linear",
            {
              "ACP": "-93/1000",
              "CFP": "7341928971/12500000000",
              "CHP": "-93/1000",
              "COP": "-9666928971/12500000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "AFH",
            "point": "O",
            "line": "CP",
            "side": "lower",
            "outer_upper": {
              "triangle": "AFH",
              "ref": "U_AFH",
              "value": "9666928971/12500000000"
            },
            "fan_lower": [
              {
                "triangle": "FHO",
                "ref": "L_FHO",
                "value": "93/1000"
              },
              {
                "triangle": "AHO",
                "ref": "L_AHO",
                "value": "279/1000"
              },
              {
                "triangle": "AFO",
                "ref": "L_AFO",
                "value": "93/1000"
              }
            ],
            "residual": "3854428971/12500000000"
          }
        },
        "4568": {
          "row": [
            "linear",
            {
              "AHO": "-93/1000",
              "AGO": "3994140843/6250000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "HAO",
            "point": "G",
            "line": "AO",
            "side": "lower",
            "outer_upper": {
              "triangle": "AHO",
              "ref": "U_AHO",
              "value": "3994140843/6250000000"
            },
            "fan_lower": [
              {
                "triangle": "AGO",
                "ref": "L_AGO",
                "value": "93/1000"
              },
              {
                "triangle": "GHO",
                "ref": "L_GHO",
                "value": "93/1000"
              },
              {
                "triangle": "AGH",
                "ref": "L_AGH",
                "value": "93/1000"
              }
            ],
            "residual": "2250390843/6250000000"
          }
        },
        "4613": {
          "row": [
            "linear",
            {
              "EHP": "-93/1000",
              "AEP": "2831640843/6250000000",
              "EOP": "-93/1000",
              "EGP": "-3994140843/6250000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "HAO",
            "point": "G",
            "line": "EP",
            "side": "upper",
            "outer_upper": {
              "triangle": "AHO",
              "ref": "U_AHO",
              "value": "3994140843/6250000000"
            },
            "fan_lower": [
              {
                "triangle": "AGO",
                "ref": "L_AGO",
                "value": "93/1000"
              },
              {
                "triangle": "GHO",
                "ref": "L_GHO",
                "value": "93/1000"
              },
              {
                "triangle": "AGH",
                "ref": "L_AGH",
                "value": "93/1000"
              }
            ],
            "residual": "2250390843/6250000000"
          }
        },
        "4811": {
          "row": [
            "linear",
            {
              "BDH": "-93/1000",
              "BGH": "951318691/1000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "BDH",
            "point": "G",
            "line": "BH",
            "side": "upper",
            "outer_upper": {
              "triangle": "BDH",
              "ref": "U_BDH",
              "value": "951318691/1000000000"
            },
            "fan_lower": [
              {
                "triangle": "DGH",
                "ref": "L_DGH",
                "value": "93/1000"
              },
              {
                "triangle": "BGH",
                "ref": "L_BGH",
                "value": "93/1000"
              },
              {
                "triangle": "BDG",
                "ref": "L_BDG",
                "value": "93/1000"
              }
            ],
            "residual": "672318691/1000000000"
          }
        },
        "4889": {
          "row": [
            "linear",
            {
              "BEH": "-93/1000",
              "BGH": "988561/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "BEH",
            "point": "G",
            "line": "BH",
            "side": "upper",
            "outer_upper": {
              "triangle": "BEH",
              "ref": "U_BEH",
              "value": "988561/1000000"
            },
            "fan_lower": [
              {
                "triangle": "EGH",
                "ref": "L_EGH",
                "value": "279/1000"
              },
              {
                "triangle": "BGH",
                "ref": "L_BGH",
                "value": "93/1000"
              },
              {
                "triangle": "BEG",
                "ref": "L_BEG",
                "value": "93/1000"
              }
            ],
            "residual": "523561/1000000"
          }
        },
        "5539": {
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
        "5975": {
          "row": [
            "linear",
            {
              "AEH": "-93/1000",
              "AFH": "-93/1000",
              "AGH": "-93/1000",
              "AHP": "133107156523/250000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "EFG",
            "point": "P",
            "line": "AH",
            "side": "upper",
            "outer_upper": {
              "triangle": "EFG",
              "ref": "U_EFG",
              "value": "133107156523/250000000000"
            },
            "fan_lower": [
              {
                "triangle": "FGP",
                "ref": "L_FGP",
                "value": "93/1000"
              },
              {
                "triangle": "EGP",
                "ref": "L_EGP",
                "value": "93/1000"
              },
              {
                "triangle": "EFP",
                "ref": "L_EFP",
                "value": "93/1000"
              }
            ],
            "residual": "63357156523/250000000000"
          }
        },
        "6017": {
          "row": [
            "linear",
            {
              "EFH": "-93/1000",
              "EGH": "86607156523/250000000000",
              "EHP": "-133107156523/250000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "EFG",
            "point": "P",
            "line": "EH",
            "side": "upper",
            "outer_upper": {
              "triangle": "EFG",
              "ref": "U_EFG",
              "value": "133107156523/250000000000"
            },
            "fan_lower": [
              {
                "triangle": "FGP",
                "ref": "L_FGP",
                "value": "93/1000"
              },
              {
                "triangle": "EGP",
                "ref": "L_EGP",
                "value": "93/1000"
              },
              {
                "triangle": "EFP",
                "ref": "L_EFP",
                "value": "93/1000"
              }
            ],
            "residual": "63357156523/250000000000"
          }
        },
        "6093": {
          "row": [
            "linear",
            {
              "EGP": "112954937/250000000",
              "EHP": "-93/1000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "GEH",
            "point": "P",
            "line": "EP",
            "side": "upper",
            "outer_upper": {
              "triangle": "EGH",
              "ref": "U_EGH",
              "value": "159454937/250000000"
            },
            "fan_lower": [
              {
                "triangle": "EHP",
                "ref": "L_EHP",
                "value": "93/1000"
              },
              {
                "triangle": "GHP",
                "ref": "L_GHP",
                "value": "93/1000"
              },
              {
                "triangle": "EGP",
                "ref": "L_EGP",
                "value": "93/1000"
              }
            ],
            "residual": "89704937/250000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0007",
          "relation": 8,
          "rule": "sub",
          "triangle": "AHO",
          "side": "hi",
          "value": "117471/200000",
          "sources": [
            "U_AFH",
            "L_AFO",
            "L_FHO"
          ]
        },
        {
          "id": "T0014",
          "relation": 16,
          "rule": "sub",
          "triangle": "BHO",
          "side": "hi",
          "value": "173859/250000",
          "sources": [
            "U_BFH",
            "L_BFO",
            "L_FHO"
          ]
        },
        {
          "id": "T0024",
          "relation": 28,
          "rule": "sub",
          "triangle": "EFP",
          "side": "hi",
          "value": "346429/1000000",
          "sources": [
            "U_EFG",
            "L_FGP",
            "L_EGP"
          ]
        },
        {
          "id": "T0037",
          "relation": 131,
          "rule": "sumlo",
          "triangle": "AEG",
          "side": "lo",
          "value": "153879/1000000",
          "sources": [
            "L_AEH",
            "L_AGO",
            "L_AEO",
            "L_AGH",
            "T0007"
          ]
        },
        {
          "id": "T0078",
          "relation": 942,
          "rule": "sumlo",
          "triangle": "GHP",
          "side": "lo",
          "value": "12483/125000",
          "sources": [
            "L_EGP",
            "L_FHP",
            "L_EHP",
            "L_FGP",
            "T0024"
          ]
        },
        {
          "id": "T0083",
          "relation": 1116,
          "rule": "quad",
          "triangle": "EFH",
          "side": "lo",
          "value": "72299/500000",
          "sources": [
            "U_AEH"
          ]
        },
        {
          "id": "T0090",
          "relation": 1765,
          "rule": "support_z",
          "triangle": "CEG",
          "side": "lo",
          "value": "74971/500000",
          "sources": [
            "L_CGO",
            "U_EGO"
          ]
        },
        {
          "id": "T0099",
          "relation": 2366,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "114541/1000000",
          "sources": [
            "L_ACO",
            "L_EGP",
            "T0037",
            "L_COP",
            "L_AOP",
            "T0090",
            "U_EGO"
          ]
        },
        {
          "id": "T0103",
          "relation": 2578,
          "rule": "balance_lo",
          "triangle": "AEG",
          "side": "lo",
          "value": "83637/500000",
          "sources": [
            "L_ABH",
            "L_EGO",
            "L_AEO",
            "L_BGH",
            "L_AGO",
            "L_BEH",
            "T0014"
          ]
        },
        {
          "id": "T0115",
          "relation": 2864,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "103077/1000000",
          "sources": [
            "L_ABO",
            "L_CGH",
            "L_ACO",
            "L_BGH",
            "L_AGO",
            "L_BCH",
            "T0007"
          ]
        },
        {
          "id": "T0125",
          "relation": 4246,
          "rule": "linear",
          "triangle": "FGH",
          "side": "lo",
          "value": "235647/1000000",
          "sources": [
            "L_AFH",
            "T0083"
          ]
        },
        {
          "id": "T0131",
          "relation": 4506,
          "rule": "linear",
          "triangle": "BHO",
          "side": "hi",
          "value": "329129/500000",
          "sources": [
            "L_ABH",
            "U_BFH"
          ]
        },
        {
          "id": "T0133",
          "relation": 4522,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "9707/62500",
          "sources": [
            "T0099",
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0136",
          "relation": 4613,
          "rule": "linear",
          "triangle": "AEP",
          "side": "lo",
          "value": "2117/12500",
          "sources": [
            "L_EGP",
            "L_EHP",
            "L_EOP"
          ]
        },
        {
          "id": "T0163",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "300541/1000000",
          "sources": [
            "T0099",
            "L_COP",
            "L_AOP"
          ]
        },
        {
          "id": "T0168",
          "relation": 6,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "2221/6250",
          "sources": [
            "T0136",
            "L_EOP",
            "L_AOP"
          ]
        },
        {
          "id": "T0175",
          "relation": 11,
          "rule": "sum",
          "triangle": "BCH",
          "side": "lo",
          "value": "289077/1000000",
          "sources": [
            "T0115",
            "L_CGH",
            "L_BGH"
          ]
        },
        {
          "id": "T0180",
          "relation": 20,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "5333/15625",
          "sources": [
            "T0133",
            "L_FGP",
            "L_CGP"
          ]
        },
        {
          "id": "T0181",
          "relation": 29,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "35733/125000",
          "sources": [
            "L_EGP",
            "L_EHP",
            "T0078"
          ]
        },
        {
          "id": "T0193",
          "relation": 752,
          "rule": "sumlo",
          "triangle": "AGH",
          "side": "lo",
          "value": "19593/200000",
          "sources": [
            "L_ABH",
            "T0125",
            "L_AFH",
            "L_BGH",
            "U_BFH"
          ]
        },
        {
          "id": "T0194",
          "relation": 776,
          "rule": "sumlo",
          "triangle": "FGH",
          "side": "lo",
          "value": "120943/500000",
          "sources": [
            "L_AFH",
            "T0181",
            "T0193",
            "T0083",
            "U_AEH"
          ]
        },
        {
          "id": "T0197",
          "relation": 1740,
          "rule": "support_z",
          "triangle": "CEG",
          "side": "lo",
          "value": "163673/1000000",
          "sources": [
            "T0180",
            "U_EFG"
          ]
        },
        {
          "id": "T0202",
          "relation": 2366,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "24821/200000",
          "sources": [
            "T0163",
            "L_EGP",
            "T0103",
            "L_COP",
            "L_AOP",
            "T0197",
            "U_EGO"
          ]
        },
        {
          "id": "T0205",
          "relation": 2578,
          "rule": "balance_lo",
          "triangle": "AEG",
          "side": "lo",
          "value": "18751/100000",
          "sources": [
            "L_ABH",
            "L_EGO",
            "T0168",
            "L_BGH",
            "L_AGO",
            "L_BEH",
            "T0131"
          ]
        },
        {
          "id": "T0210",
          "relation": 2864,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "108083/1000000",
          "sources": [
            "L_ABO",
            "L_CGH",
            "T0163",
            "L_BGH",
            "L_AGO",
            "T0175",
            "T0007"
          ]
        },
        {
          "id": "T0223",
          "relation": 4522,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "78413/500000",
          "sources": [
            "T0202",
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0235",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "62021/200000",
          "sources": [
            "T0202",
            "L_COP",
            "L_AOP"
          ]
        },
        {
          "id": "T0239",
          "relation": 4,
          "rule": "sub",
          "triangle": "EGH",
          "side": "hi",
          "value": "118381/200000",
          "sources": [
            "U_AEH",
            "T0205",
            "T0193"
          ]
        },
        {
          "id": "T0247",
          "relation": 11,
          "rule": "sum",
          "triangle": "BCH",
          "side": "lo",
          "value": "294083/1000000",
          "sources": [
            "T0210",
            "L_CGH",
            "L_BGH"
          ]
        },
        {
          "id": "T0254",
          "relation": 20,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "171413/500000",
          "sources": [
            "T0223",
            "L_FGP",
            "L_CGP"
          ]
        },
        {
          "id": "T0263",
          "relation": 752,
          "rule": "sumlo",
          "triangle": "AGH",
          "side": "lo",
          "value": "98623/1000000",
          "sources": [
            "L_ABH",
            "T0194",
            "L_AFH",
            "L_BGH",
            "U_BFH"
          ]
        },
        {
          "id": "T0264",
          "relation": 776,
          "rule": "sumlo",
          "triangle": "FGH",
          "side": "lo",
          "value": "120997/500000",
          "sources": [
            "L_AFH",
            "T0181",
            "T0263",
            "T0083",
            "U_AEH"
          ]
        },
        {
          "id": "T0265",
          "relation": 1336,
          "rule": "quad",
          "triangle": "EFH",
          "side": "lo",
          "value": "30419/200000",
          "sources": [
            "T0239"
          ]
        },
        {
          "id": "T0267",
          "relation": 1740,
          "rule": "support_z",
          "triangle": "CEG",
          "side": "lo",
          "value": "164399/1000000",
          "sources": [
            "T0254",
            "U_EFG"
          ]
        },
        {
          "id": "T0272",
          "relation": 2366,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "26021/200000",
          "sources": [
            "T0235",
            "L_EGP",
            "T0205",
            "L_COP",
            "L_AOP",
            "T0267",
            "U_EGO"
          ]
        },
        {
          "id": "T0279",
          "relation": 2864,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "11039/100000",
          "sources": [
            "L_ABO",
            "L_CGH",
            "T0235",
            "L_BGH",
            "L_AGO",
            "T0247",
            "T0007"
          ]
        },
        {
          "id": "T0288",
          "relation": 4522,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "9861/62500",
          "sources": [
            "T0272",
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0298",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "63221/200000",
          "sources": [
            "T0272",
            "L_COP",
            "L_AOP"
          ]
        },
        {
          "id": "T0302",
          "relation": 4,
          "rule": "sub",
          "triangle": "EGH",
          "side": "hi",
          "value": "591247/1000000",
          "sources": [
            "U_AEH",
            "T0205",
            "T0263"
          ]
        },
        {
          "id": "T0310",
          "relation": 11,
          "rule": "sum",
          "triangle": "BCH",
          "side": "lo",
          "value": "29639/100000",
          "sources": [
            "T0279",
            "L_CGH",
            "L_BGH"
          ]
        },
        {
          "id": "T0316",
          "relation": 20,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "10743/31250",
          "sources": [
            "T0288",
            "L_FGP",
            "L_CGP"
          ]
        },
        {
          "id": "T0327",
          "relation": 752,
          "rule": "sumlo",
          "triangle": "AGH",
          "side": "lo",
          "value": "19727/200000",
          "sources": [
            "L_ABH",
            "T0264",
            "L_AFH",
            "L_BGH",
            "U_BFH"
          ]
        },
        {
          "id": "T0328",
          "relation": 776,
          "rule": "sumlo",
          "triangle": "FGH",
          "side": "lo",
          "value": "242839/1000000",
          "sources": [
            "L_AFH",
            "T0181",
            "T0327",
            "T0265",
            "U_AEH"
          ]
        },
        {
          "id": "T0329",
          "relation": 1336,
          "rule": "quad",
          "triangle": "EFH",
          "side": "lo",
          "value": "152753/1000000",
          "sources": [
            "T0302"
          ]
        },
        {
          "id": "T0331",
          "relation": 1740,
          "rule": "support_z",
          "triangle": "CEG",
          "side": "lo",
          "value": "82427/500000",
          "sources": [
            "T0316",
            "U_EFG"
          ]
        },
        {
          "id": "T0336",
          "relation": 2366,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "131373/1000000",
          "sources": [
            "T0298",
            "L_EGP",
            "T0205",
            "L_COP",
            "L_AOP",
            "T0331",
            "U_EGO"
          ]
        },
        {
          "id": "T0343",
          "relation": 2864,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "22341/200000",
          "sources": [
            "L_ABO",
            "L_CGH",
            "T0298",
            "L_BGH",
            "L_AGO",
            "T0310",
            "T0007"
          ]
        },
        {
          "id": "T0352",
          "relation": 4522,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "157977/1000000",
          "sources": [
            "T0336",
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0364",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "317373/1000000",
          "sources": [
            "T0336",
            "L_COP",
            "L_AOP"
          ]
        },
        {
          "id": "T0368",
          "relation": 4,
          "rule": "sub",
          "triangle": "EGH",
          "side": "hi",
          "value": "118247/200000",
          "sources": [
            "U_AEH",
            "T0205",
            "T0327"
          ]
        },
        {
          "id": "T0376",
          "relation": 11,
          "rule": "sum",
          "triangle": "BCH",
          "side": "lo",
          "value": "59541/200000",
          "sources": [
            "T0343",
            "L_CGH",
            "L_BGH"
          ]
        },
        {
          "id": "T0382",
          "relation": 20,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "343977/1000000",
          "sources": [
            "T0352",
            "L_FGP",
            "L_CGP"
          ]
        },
        {
          "id": "T0393",
          "relation": 752,
          "rule": "sumlo",
          "triangle": "AGH",
          "side": "lo",
          "value": "24681/250000",
          "sources": [
            "L_ABH",
            "T0328",
            "L_AFH",
            "L_BGH",
            "U_BFH"
          ]
        },
        {
          "id": "T0394",
          "relation": 776,
          "rule": "sumlo",
          "triangle": "FGH",
          "side": "lo",
          "value": "242929/1000000",
          "sources": [
            "L_AFH",
            "T0181",
            "T0393",
            "T0329",
            "U_AEH"
          ]
        },
        {
          "id": "T0395",
          "relation": 1336,
          "rule": "quad",
          "triangle": "EFH",
          "side": "lo",
          "value": "30553/200000",
          "sources": [
            "T0368"
          ]
        },
        {
          "id": "T0397",
          "relation": 1740,
          "rule": "support_z",
          "triangle": "CEG",
          "side": "lo",
          "value": "164951/1000000",
          "sources": [
            "T0382",
            "U_EFG"
          ]
        },
        {
          "id": "T0402",
          "relation": 2366,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "65821/500000",
          "sources": [
            "T0364",
            "L_EGP",
            "T0205",
            "L_COP",
            "L_AOP",
            "T0397",
            "U_EGO"
          ]
        },
        {
          "id": "T0409",
          "relation": 2864,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "56057/500000",
          "sources": [
            "L_ABO",
            "L_CGH",
            "T0364",
            "L_BGH",
            "L_AGO",
            "T0376",
            "T0007"
          ]
        },
        {
          "id": "T0418",
          "relation": 4522,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "158019/1000000",
          "sources": [
            "T0402",
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0430",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "158821/500000",
          "sources": [
            "T0402",
            "L_COP",
            "L_AOP"
          ]
        },
        {
          "id": "T0434",
          "relation": 4,
          "rule": "sub",
          "triangle": "EGH",
          "side": "hi",
          "value": "295573/500000",
          "sources": [
            "U_AEH",
            "T0205",
            "T0393"
          ]
        },
        {
          "id": "T0442",
          "relation": 11,
          "rule": "sum",
          "triangle": "BCH",
          "side": "lo",
          "value": "149057/500000",
          "sources": [
            "T0409",
            "L_CGH",
            "L_BGH"
          ]
        },
        {
          "id": "T0448",
          "relation": 20,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "344019/1000000",
          "sources": [
            "T0418",
            "L_FGP",
            "L_CGP"
          ]
        },
        {
          "id": "T0459",
          "relation": 752,
          "rule": "sumlo",
          "triangle": "AGH",
          "side": "lo",
          "value": "98733/1000000",
          "sources": [
            "L_ABH",
            "T0394",
            "L_AFH",
            "L_BGH",
            "U_BFH"
          ]
        },
        {
          "id": "T0460",
          "relation": 776,
          "rule": "sumlo",
          "triangle": "FGH",
          "side": "lo",
          "value": "60733/250000",
          "sources": [
            "L_AFH",
            "T0181",
            "T0459",
            "T0395",
            "U_AEH"
          ]
        },
        {
          "id": "T0461",
          "relation": 1336,
          "rule": "quad",
          "triangle": "EFH",
          "side": "lo",
          "value": "76427/500000",
          "sources": [
            "T0434"
          ]
        },
        {
          "id": "T0463",
          "relation": 1740,
          "rule": "support_z",
          "triangle": "CEG",
          "side": "lo",
          "value": "164971/1000000",
          "sources": [
            "T0448",
            "U_EFG"
          ]
        },
        {
          "id": "T0468",
          "relation": 2366,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "65849/500000",
          "sources": [
            "T0430",
            "L_EGP",
            "T0205",
            "L_COP",
            "L_AOP",
            "T0463",
            "U_EGO"
          ]
        },
        {
          "id": "T0475",
          "relation": 2864,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "56111/500000",
          "sources": [
            "L_ABO",
            "L_CGH",
            "T0430",
            "L_BGH",
            "L_AGO",
            "T0442",
            "T0007"
          ]
        },
        {
          "id": "T0484",
          "relation": 4522,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "39507/250000",
          "sources": [
            "T0468",
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0495",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "158849/500000",
          "sources": [
            "T0468",
            "L_COP",
            "L_AOP"
          ]
        },
        {
          "id": "T0499",
          "relation": 4,
          "rule": "sub",
          "triangle": "EGH",
          "side": "hi",
          "value": "591137/1000000",
          "sources": [
            "U_AEH",
            "T0205",
            "T0459"
          ]
        },
        {
          "id": "T0507",
          "relation": 11,
          "rule": "sum",
          "triangle": "BCH",
          "side": "lo",
          "value": "149111/500000",
          "sources": [
            "T0475",
            "L_CGH",
            "L_BGH"
          ]
        },
        {
          "id": "T0513",
          "relation": 20,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "86007/250000",
          "sources": [
            "T0484",
            "L_FGP",
            "L_CGP"
          ]
        },
        {
          "id": "T0524",
          "relation": 752,
          "rule": "sumlo",
          "triangle": "AGH",
          "side": "lo",
          "value": "49367/500000",
          "sources": [
            "L_ABH",
            "T0460",
            "L_AFH",
            "L_BGH",
            "U_BFH"
          ]
        },
        {
          "id": "T0525",
          "relation": 776,
          "rule": "sumlo",
          "triangle": "FGH",
          "side": "lo",
          "value": "121471/500000",
          "sources": [
            "L_AFH",
            "T0181",
            "T0524",
            "T0461",
            "U_AEH"
          ]
        },
        {
          "id": "T0526",
          "relation": 1336,
          "rule": "quad",
          "triangle": "EFH",
          "side": "lo",
          "value": "152863/1000000",
          "sources": [
            "T0499"
          ]
        },
        {
          "id": "T0528",
          "relation": 1740,
          "rule": "support_z",
          "triangle": "CEG",
          "side": "lo",
          "value": "6599/40000",
          "sources": [
            "T0513",
            "U_EFG"
          ]
        },
        {
          "id": "T0533",
          "relation": 2366,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "13171/100000",
          "sources": [
            "T0495",
            "L_EGP",
            "T0205",
            "L_COP",
            "L_AOP",
            "T0528",
            "U_EGO"
          ]
        },
        {
          "id": "T0540",
          "relation": 2864,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "14031/125000",
          "sources": [
            "L_ABO",
            "L_CGH",
            "T0495",
            "L_BGH",
            "L_AGO",
            "T0507",
            "T0007"
          ]
        },
        {
          "id": "T0548",
          "relation": 4522,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "15803/100000",
          "sources": [
            "T0533",
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0557",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "31771/100000",
          "sources": [
            "T0533",
            "L_COP",
            "L_AOP"
          ]
        },
        {
          "id": "T0560",
          "relation": 4,
          "rule": "sub",
          "triangle": "AEG",
          "side": "hi",
          "value": "246391/500000",
          "sources": [
            "U_AEH",
            "T0181",
            "T0524"
          ]
        },
        {
          "id": "T0569",
          "relation": 11,
          "rule": "sum",
          "triangle": "BCH",
          "side": "lo",
          "value": "37281/125000",
          "sources": [
            "T0540",
            "L_CGH",
            "L_BGH"
          ]
        },
        {
          "id": "T0575",
          "relation": 20,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "34403/100000",
          "sources": [
            "T0548",
            "L_FGP",
            "L_CGP"
          ]
        },
        {
          "id": "T0585",
          "relation": 679,
          "rule": "sumlo",
          "triangle": "GHO",
          "side": "lo",
          "value": "2197/20000",
          "sources": [
            "T0524",
            "L_EGO",
            "L_AGO",
            "T0181",
            "T0560"
          ]
        },
        {
          "id": "T0586",
          "relation": 752,
          "rule": "sumlo",
          "triangle": "AGH",
          "side": "lo",
          "value": "19747/200000",
          "sources": [
            "L_ABH",
            "T0525",
            "L_AFH",
            "L_BGH",
            "U_BFH"
          ]
        },
        {
          "id": "T0587",
          "relation": 776,
          "rule": "sumlo",
          "triangle": "FGH",
          "side": "lo",
          "value": "242943/1000000",
          "sources": [
            "L_AFH",
            "T0181",
            "T0586",
            "T0526",
            "U_AEH"
          ]
        },
        {
          "id": "T0590",
          "relation": 1740,
          "rule": "support_z",
          "triangle": "CEG",
          "side": "lo",
          "value": "10311/62500",
          "sources": [
            "T0575",
            "U_EFG"
          ]
        },
        {
          "id": "T0594",
          "relation": 2366,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "131713/1000000",
          "sources": [
            "T0557",
            "L_EGP",
            "T0205",
            "L_COP",
            "L_AOP",
            "T0590",
            "U_EGO"
          ]
        },
        {
          "id": "T0601",
          "relation": 2864,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "56127/500000",
          "sources": [
            "L_ABO",
            "L_CGH",
            "T0557",
            "L_BGH",
            "L_AGO",
            "T0569",
            "T0007"
          ]
        },
        {
          "id": "T0605",
          "relation": 4490,
          "rule": "linear",
          "triangle": "AFG",
          "side": "lo",
          "value": "34521/250000",
          "sources": [
            "T0586",
            "L_AGO"
          ]
        },
        {
          "id": "T0608",
          "relation": 4522,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "158031/1000000",
          "sources": [
            "T0594",
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0615",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "317713/1000000",
          "sources": [
            "T0594",
            "L_COP",
            "L_AOP"
          ]
        },
        {
          "id": "T0619",
          "relation": 4,
          "rule": "sub",
          "triangle": "EGH",
          "side": "hi",
          "value": "118227/200000",
          "sources": [
            "U_AEH",
            "T0205",
            "T0586"
          ]
        },
        {
          "id": "T0623",
          "relation": 9,
          "rule": "sum",
          "triangle": "AHO",
          "side": "lo",
          "value": "60317/200000",
          "sources": [
            "T0586",
            "L_AGO",
            "T0585"
          ]
        },
        {
          "id": "T0626",
          "relation": 10,
          "rule": "sum",
          "triangle": "AHP",
          "side": "lo",
          "value": "291599/1000000",
          "sources": [
            "T0586",
            "L_AGP",
            "T0078"
          ]
        },
        {
          "id": "T0627",
          "relation": 11,
          "rule": "sum",
          "triangle": "BCH",
          "side": "lo",
          "value": "149127/500000",
          "sources": [
            "T0601",
            "L_CGH",
            "L_BGH"
          ]
        },
        {
          "id": "T0636",
          "relation": 1336,
          "rule": "quad",
          "triangle": "EFH",
          "side": "lo",
          "value": "30573/200000",
          "sources": [
            "T0619"
          ]
        },
        {
          "id": "T0647",
          "relation": 2864,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "22451/200000",
          "sources": [
            "L_ABO",
            "L_CGH",
            "T0615",
            "L_BGH",
            "L_AGO",
            "T0627",
            "T0007"
          ]
        },
        {
          "id": "T0652",
          "relation": 6017,
          "rule": "linear",
          "triangle": "EHP",
          "side": "hi",
          "value": "178963/500000",
          "sources": [
            "T0636",
            "T0619"
          ]
        },
        {
          "id": "T0659",
          "relation": 11,
          "rule": "sum",
          "triangle": "BCH",
          "side": "lo",
          "value": "59651/200000",
          "sources": [
            "T0647",
            "L_CGH",
            "L_BGH"
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
        "26": {
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
              "-13857/20000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AEH",
            "side": "lo",
            "reference": "L_AEH",
            "value": "13857/20000"
          }
        },
        "28": {
          "name": "AREA_LO_AFH",
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
                0,
                5
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
            "triangle": "AFH",
            "side": "lo",
            "reference": "L_AFH",
            "value": "13857/20000"
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
              "-59651/200000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCH",
            "side": "lo",
            "reference": "T0659",
            "value": "59651/200000"
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
        "68": {
          "name": "AREA_LO_EFH",
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
                4,
                5
              ],
              "-1"
            ],
            [
              [
                7
              ],
              "-1"
            ],
            [
              [],
              "169427/200000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "EFH",
            "side": "lo",
            "reference": "T0636",
            "value": "30573/200000"
          }
        },
        "78": {
          "name": "AREA_LO_EFG",
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
                4,
                5
              ],
              "-1"
            ],
            [
              [
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
              [],
              "721/1000"
            ],
            [
              [
                4,
                6
              ],
              "1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "EFG",
            "side": "lo",
            "reference": "L_EFG",
            "value": "279/1000"
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
              "-242943/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FGH",
            "side": "lo",
            "reference": "T0587",
            "value": "242943/1000000"
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
              "-60317/200000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AHO",
            "side": "lo",
            "reference": "T0623",
            "value": "60317/200000"
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
              "-291599/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AHP",
            "side": "lo",
            "reference": "T0626",
            "value": "291599/1000000"
          }
        },
        "125": {
          "name": "AREA_HI_EHP",
          "terms": [
            [
              [],
              "178963/500000"
            ],
            [
              [
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
                7
              ],
              "-1"
            ],
            [
              [
                4,
                11
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "EHP",
            "side": "hi",
            "reference": "T0652",
            "value": "178963/500000"
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
        "144": {
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
              "-34521/250000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "AFG",
            "side": "lo",
            "reference": "T0605",
            "value": "34521/250000"
          }
        },
        "184": {
          "name": "AREA_LO_EGH",
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
                4,
                6
              ],
              "1"
            ],
            [
              [
                7
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
              [],
              "-35733/125000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "EGH",
            "side": "lo",
            "reference": "T0181",
            "value": "35733/125000"
          }
        },
        "200": {
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
              "-158031/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "lo",
            "reference": "T0608",
            "value": "158031/1000000"
          }
        },
        "206": {
          "name": "AREA_LO_EGO",
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
                4,
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
                4,
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
            "triangle": "EGO",
            "side": "lo",
            "reference": "L_EGO",
            "value": "279/1000"
          }
        },
        "218": {
          "name": "AREA_LO_EGP",
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
                4,
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
                4,
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
            "triangle": "EGP",
            "side": "lo",
            "reference": "L_EGP",
            "value": "93/1000"
          }
        },
        "224": {
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
        },
        "235": {
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
        "239": {
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
        "248": {
          "name": "Central_endpoint_tangent_1",
          "terms": [
            [
              [
                1,
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
              "-1/5"
            ],
            [
              [
                7
              ],
              "1/100"
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
            "kind": "central_endpoint_tangent",
            "cell": "CB",
            "t": "1/10"
          }
        },
        "556": {
          "name": "QUAD_1127",
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
                4,
                9
              ],
              "-1"
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
              [],
              "-449/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1127
          }
        },
        "901": {
          "name": "QUAD_1336",
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
                4,
                5
              ],
              "-1"
            ],
            [
              [],
              "32/125"
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
                4,
                6
              ],
              "1"
            ],
            [
              [
                8
              ],
              "-1"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1336
          }
        },
        "1886": {
          "name": "LINEAR_3912",
          "terms": [
            [
              [
                2,
                7
              ],
              "8504428971/12500000000"
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
              "-9666928971/12500000000"
            ],
            [
              [
                2,
                8
              ],
              "-9666928971/12500000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3912
          }
        },
        "1962": {
          "name": "LINEAR_3988",
          "terms": [
            [
              [
                2,
                10
              ],
              "1719235587/2500000000"
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
                9
              ],
              "-93/1000"
            ],
            [
              [
                9,
                12
              ],
              "1951735587/2500000000"
            ],
            [
              [
                2,
                12
              ],
              "-1951735587/2500000000"
            ],
            [
              [
                10,
                11
              ],
              "-1951735587/2500000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3988
          }
        },
        "2386": {
          "name": "LINEAR_4412",
          "terms": [
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
              "-8504428971/12500000000"
            ],
            [
              [
                5,
                8
              ],
              "9666928971/12500000000"
            ],
            [
              [
                6
              ],
              "-9666928971/12500000000"
            ],
            [
              [
                0,
                6
              ],
              "9666928971/12500000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 4412
          }
        },
        "2542": {
          "name": "LINEAR_4568",
          "terms": [
            [
              [
                7,
                9
              ],
              "-93/1000"
            ],
            [
              [
                0,
                9
              ],
              "-3412890843/6250000000"
            ],
            [
              [
                6,
                10
              ],
              "-3994140843/6250000000"
            ],
            [
              [
                0,
                6
              ],
              "3994140843/6250000000"
            ],
            [
              [
                8,
                9
              ],
              "3994140843/6250000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 4568
          }
        },
        "2785": {
          "name": "LINEAR_4811",
          "terms": [
            [
              [
                7
              ],
              "-93/1000"
            ],
            [
              [
                1,
                7
              ],
              "-858318691/1000000000"
            ],
            [
              [
                1,
                3
              ],
              "-93/1000"
            ],
            [
              [
                6,
                7
              ],
              "951318691/1000000000"
            ],
            [
              [
                1,
                8
              ],
              "951318691/1000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 4811
          }
        },
        "2863": {
          "name": "LINEAR_4889",
          "terms": [
            [
              [
                7
              ],
              "-93/1000"
            ],
            [
              [
                1,
                7
              ],
              "-895561/1000000"
            ],
            [
              [
                1,
                4
              ],
              "-93/1000"
            ],
            [
              [
                6,
                7
              ],
              "988561/1000000"
            ],
            [
              [
                1,
                8
              ],
              "988561/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 4889
          }
        },
        "3513": {
          "name": "LINEAR_5539",
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
              "220359/250000"
            ],
            [
              [
                0,
                11
              ],
              "-220359/250000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 5539
          }
        },
        "3949": {
          "name": "LINEAR_5975",
          "terms": [
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
                6,
                7
              ],
              "-93/1000"
            ],
            [
              [
                0,
                6
              ],
              "93/1000"
            ],
            [
              [
                7,
                11
              ],
              "133107156523/250000000000"
            ],
            [
              [
                0,
                11
              ],
              "-133107156523/250000000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 5975
          }
        },
        "4067": {
          "name": "LINEAR_6093",
          "terms": [
            [
              [
                6,
                12
              ],
              "-112954937/250000000"
            ],
            [
              [
                4,
                6
              ],
              "112954937/250000000"
            ],
            [
              [
                12
              ],
              "136204937/250000000"
            ],
            [
              [
                8,
                11
              ],
              "112954937/250000000"
            ],
            [
              [
                8
              ],
              "-112954937/250000000"
            ],
            [
              [
                4,
                11
              ],
              "-136204937/250000000"
            ],
            [
              [
                7,
                11
              ],
              "93/1000"
            ],
            [
              [
                7
              ],
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 6093
          }
        }
      },
      "coordinate": {
        "low": [
          "6131/50000",
          "30857/250000",
          "9871/12500",
          "6131/50000",
          "564803/1000000",
          "9871/12500",
          "72061/500000",
          "454333/500000",
          "430263/1000000",
          "25113/62500",
          "796751/1000000",
          "337779/1000000",
          "142269/250000"
        ],
        "high": [
          "106977/500000",
          "111691/250000",
          "85987/100000",
          "172051/500000",
          "756531/1000000",
          "85987/100000",
          "59031/200000",
          "1/1",
          "283631/500000",
          "157661/250000",
          "178369/200000",
          "617723/1000000",
          "675533/1000000"
        ],
        "steps": [
          {
            "factor": 26,
            "target": "a",
            "old": [
              "6131/50000",
              "296139/500000"
            ],
            "lines": [
              [
                "-1/1",
                "-78573/1000000"
              ],
              [
                "-1/1",
                "6143/20000"
              ]
            ],
            "raw": [
              "6131/50000",
              "6143/20000"
            ],
            "new": [
              "6131/50000",
              "6143/20000"
            ]
          },
          {
            "factor": 26,
            "target": "h",
            "old": [
              "614277/1000000",
              "1/1"
            ],
            "lines": [
              [
                "1/1",
                "-81547/100000"
              ],
              [
                "1/1",
                "-1/1"
              ]
            ],
            "raw": [
              "81547/100000",
              "1/1"
            ],
            "new": [
              "81547/100000",
              "1/1"
            ]
          },
          {
            "factor": 28,
            "target": "a",
            "old": [
              "6131/50000",
              "6143/20000"
            ],
            "lines": [
              [
                "-617/1000",
                "-18970501/100000000"
              ],
              [
                "-220359/250000",
                "648365373/25000000000"
              ],
              [
                "-617/1000",
                "-1517/20000"
              ],
              [
                "-220359/250000",
                "94293/500000"
              ]
            ],
            "raw": [
              "6131/50000",
              "31431/146906"
            ],
            "new": [
              "6131/50000",
              "106977/500000"
            ]
          },
          {
            "factor": 28,
            "target": "f",
            "old": [
              "617/1000",
              "220359/250000"
            ],
            "lines": [
              [
                "13857/20000",
                "-13857/20000"
              ],
              [
                "150379/250000",
                "-13857/20000"
              ],
              [
                "43869/50000",
                "-13857/20000"
              ],
              [
                "393023/500000",
                "-13857/20000"
              ]
            ],
            "raw": [
              "23095/29246",
              "220359/250000"
            ],
            "new": [
              "9871/12500",
              "220359/250000"
            ]
          },
          {
            "factor": 28,
            "target": "h",
            "old": [
              "81547/100000",
              "1/1"
            ],
            "lines": [
              [
                "9871/12500",
                "-493550351/625000000"
              ],
              [
                "9871/12500",
                "-5386282467/6250000000"
              ],
              [
                "220359/250000",
                "-10011646029/12500000000"
              ],
              [
                "220359/250000",
                "-110179594743/125000000000"
              ]
            ],
            "raw": [
              "3337215343/3672650000",
              "1/1"
            ],
            "new": [
              "454333/500000",
              "1/1"
            ]
          },
          {
            "factor": 36,
            "target": "b",
            "old": [
              "123/1000",
              "535/907"
            ],
            "lines": [
              [
                "-454333/500000",
                "3313142381/10000000000"
              ],
              [
                "-454333/500000",
                "62834490547/125000000000"
              ],
              [
                "-1/1",
                "78919/200000"
              ],
              [
                "-1/1",
                "583181/1000000"
              ]
            ],
            "raw": [
              "123/1000",
              "583181/1000000"
            ],
            "new": [
              "123/1000",
              "583181/1000000"
            ]
          },
          {
            "factor": 62,
            "target": "d",
            "old": [
              "6131/50000",
              "604217/1000000"
            ],
            "lines": [
              [
                "-2629/12500",
                "-44115513/12500000000"
              ],
              [
                "-2629/12500",
                "1222003/12500000"
              ],
              [
                "-29641/250000",
                "-10640629677/250000000000"
              ],
              [
                "-29641/250000",
                "3634387/250000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "1222003/2629000"
            ],
            "new": [
              "6131/50000",
              "464817/1000000"
            ]
          },
          {
            "factor": 62,
            "target": "e",
            "old": [
              "425403/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "2629/12500",
                "-74243399/625000000"
              ],
              [
                "2629/12500",
                "-2384503893/12500000000"
              ],
              [
                "29641/250000",
                "-1344228971/12500000000"
              ],
              [
                "29641/250000",
                "-37027640697/250000000000"
              ]
            ],
            "raw": [
              "74243399/131450000",
              "907/1000"
            ],
            "new": [
              "564803/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 68,
            "target": "e",
            "old": [
              "564803/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "-9871/12500",
                "4100152293/6250000000"
              ],
              [
                "-220359/250000",
                "92424990547/125000000000"
              ],
              [
                "-9871/12500",
                "127363/200000"
              ],
              [
                "-220359/250000",
                "728571/1000000"
              ]
            ],
            "raw": [
              "564803/1000000",
              "92424990547/110179500000"
            ],
            "new": [
              "564803/1000000",
              "838859/1000000"
            ]
          },
          {
            "factor": 78,
            "target": "e",
            "old": [
              "564803/1000000",
              "838859/1000000"
            ],
            "lines": [
              [
                "-166629/250000",
                "3275445673/6250000000"
              ],
              [
                "-11848/15625",
                "69531565317/125000000000"
              ],
              [
                "-155193/500000",
                "1049633173/6250000000"
              ],
              [
                "-201071/500000",
                "25015315317/125000000000"
              ],
              [
                "-166629/250000",
                "5488688589/12500000000"
              ],
              [
                "-11848/15625",
                "127087188481/250000000000"
              ],
              [
                "-155193/500000",
                "1037063589/12500000000"
              ],
              [
                "-201071/500000",
                "38054688481/250000000000"
              ]
            ],
            "raw": [
              "564803/1000000",
              "3275445673/4165725000"
            ],
            "new": [
              "564803/1000000",
              "157257/200000"
            ]
          },
          {
            "factor": 78,
            "target": "g",
            "old": [
              "30791/250000",
              "239647/500000"
            ],
            "lines": [
              [
                "-435197/1000000",
                "2515270933/12500000000"
              ],
              [
                "-42743/200000",
                "329022111/12500000000"
              ],
              [
                "-435197/1000000",
                "45394706357/250000000000"
              ],
              [
                "-42743/200000",
                "-3410845681/250000000000"
              ],
              [
                "-435197/1000000",
                "90816761/781250000"
              ],
              [
                "-42743/200000",
                "-366590323/6250000000"
              ],
              [
                "-435197/1000000",
                "8354691051/62500000000"
              ],
              [
                "-42743/200000",
                "-7693393917/125000000000"
              ]
            ],
            "raw": [
              "30791/250000",
              "359324419/777137500"
            ],
            "new": [
              "30791/250000",
              "46237/100000"
            ]
          },
          {
            "factor": 80,
            "target": "z",
            "old": [
              "175363/500000",
              "754759/1000000"
            ],
            "lines": [
              [
                "-9871/12500",
                "60732678457/125000000000"
              ],
              [
                "-220359/250000",
                "8894327893/15625000000"
              ],
              [
                "-9871/12500",
                "25842123423/50000000000"
              ],
              [
                "-220359/250000",
                "150054506489/250000000000"
              ],
              [
                "-9871/12500",
                "546737/1000000"
              ],
              [
                "-220359/250000",
                "638493/1000000"
              ]
            ],
            "raw": [
              "175363/500000",
              "212831/293812"
            ],
            "new": [
              "175363/500000",
              "724379/1000000"
            ]
          },
          {
            "factor": 96,
            "target": "y",
            "old": [
              "511471/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "-9871/12500",
                "40849928013/62500000000"
              ],
              [
                "-220359/250000",
                "92121800713/125000000000"
              ],
              [
                "-9871/12500",
                "17417/25000"
              ],
              [
                "-220359/250000",
                "197109/250000"
              ],
              [
                "-9871/12500",
                "43192553779/62500000000"
              ],
              [
                "-220359/250000",
                "19361410449/25000000000"
              ]
            ],
            "raw": [
              "511471/1000000",
              "65703/73453"
            ],
            "new": [
              "511471/1000000",
              "894491/1000000"
            ]
          },
          {
            "factor": 98,
            "target": "x",
            "old": [
              "39749/125000",
              "91047/125000"
            ],
            "lines": [
              [
                "393023/500000",
                "-60317/200000"
              ],
              [
                "86839/125000",
                "-60317/200000"
              ],
              [
                "43869/50000",
                "-60317/200000"
              ]
            ],
            "raw": [
              "60317/175476",
              "91047/125000"
            ],
            "new": [
              "343733/1000000",
              "91047/125000"
            ]
          },
          {
            "factor": 116,
            "target": "u",
            "old": [
              "39749/125000",
              "364157/500000"
            ],
            "lines": [
              [
                "393023/500000",
                "-291599/1000000"
              ],
              [
                "86839/125000",
                "-291599/1000000"
              ],
              [
                "43869/50000",
                "-291599/1000000"
              ]
            ],
            "raw": [
              "41657/125340",
              "364157/500000"
            ],
            "new": [
              "5193/15625",
              "364157/500000"
            ]
          },
          {
            "factor": 125,
            "target": "v",
            "old": [
              "299361/1000000",
              "42717/62500"
            ],
            "lines": [
              [
                "1/1",
                "-6819631941/15625000000"
              ],
              [
                "1/1",
                "-7969787967/15625000000"
              ],
              [
                "1/1",
                "-7772428229/15625000000"
              ],
              [
                "1/1",
                "-1784516851/3125000000"
              ],
              [
                "1/1",
                "-150149881509/500000000000"
              ],
              [
                "1/1",
                "-230804102183/500000000000"
              ],
              [
                "1/1",
                "-162556966071/500000000000"
              ],
              [
                "1/1",
                "-48642237349/100000000000"
              ]
            ],
            "raw": [
              "150149881509/500000000000",
              "42717/62500"
            ],
            "new": [
              "300299/1000000",
              "42717/62500"
            ]
          },
          {
            "factor": 128,
            "target": "g",
            "old": [
              "30791/250000",
              "46237/100000"
            ],
            "lines": [
              [
                "454333/500000",
                "-8081331/50000000"
              ],
              [
                "454333/500000",
                "-20919000357/50000000000"
              ],
              [
                "1/1",
                "-86430351/500000000"
              ],
              [
                "1/1",
                "-235822130297/500000000000"
              ],
              [
                "454333/500000",
                "-115667301/1000000000"
              ],
              [
                "454333/500000",
                "-200472676947/1000000000000"
              ],
              [
                "1/1",
                "-126901383/1000000000"
              ],
              [
                "1/1",
                "-253736930401/1000000000000"
              ]
            ],
            "raw": [
              "126901383/1000000000",
              "46237/100000"
            ],
            "new": [
              "126901/1000000",
              "46237/100000"
            ]
          },
          {
            "factor": 130,
            "target": "y",
            "old": [
              "511471/1000000",
              "894491/1000000"
            ],
            "lines": [
              [
                "873099/1000000",
                "-267878919841/500000000000"
              ],
              [
                "873099/1000000",
                "-304978549793/500000000000"
              ],
              [
                "53763/100000",
                "-247311315451/500000000000"
              ],
              [
                "53763/100000",
                "-454025405413/1000000000000"
              ],
              [
                "873099/1000000",
                "-780973973033/1000000000000"
              ],
              [
                "873099/1000000",
                "-855173232937/1000000000000"
              ],
              [
                "53763/100000",
                "-739838764253/1000000000000"
              ],
              [
                "53763/100000",
                "-174810384691/250000000000"
              ],
              [
                "873099/1000000",
                "-112004615881/250000000000"
              ],
              [
                "873099/1000000",
                "-653841404099/1000000000000"
              ],
              [
                "53763/100000",
                "-50860406843/125000000000"
              ],
              [
                "53763/100000",
                "-248954854963/500000000000"
              ],
              [
                "873099/1000000",
                "-137377896499/250000000000"
              ],
              [
                "873099/1000000",
                "-755334526571/1000000000000"
              ],
              [
                "53763/100000",
                "-3971690447/7812500000"
              ],
              [
                "53763/100000",
                "-299701416199/500000000000"
              ]
            ],
            "raw": [
              "112004615881/218274750000",
              "894491/1000000"
            ],
            "new": [
              "102627/200000",
              "894491/1000000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "5193/15625",
              "364157/500000"
            ],
            "lines": [
              [
                "-102627/200000",
                "157686098767/1000000000000"
              ],
              [
                "-102627/200000",
                "197823988663/1000000000000"
              ],
              [
                "-102627/200000",
                "17074625439/62500000000"
              ],
              [
                "-102627/200000",
                "7833297423/25000000000"
              ],
              [
                "-894491/1000000",
                "421908603367/1000000000000"
              ],
              [
                "-894491/1000000",
                "533964895879/1000000000000"
              ],
              [
                "-894491/1000000",
                "67177063953/125000000000"
              ],
              [
                "-894491/1000000",
                "81184100517/125000000000"
              ],
              [
                "-102627/200000",
                "11956945263/500000000000"
              ],
              [
                "-102627/200000",
                "-2052320739/250000000000"
              ],
              [
                "-102627/200000",
                "143403305511/500000000000"
              ],
              [
                "-102627/200000",
                "12734171877/50000000000"
              ],
              [
                "-894491/1000000",
                "144068197563/500000000000"
              ],
              [
                "-894491/1000000",
                "16396581213/50000000000"
              ],
              [
                "-894491/1000000",
                "275514557811/500000000000"
              ],
              [
                "-894491/1000000",
                "147706086189/250000000000"
              ]
            ],
            "raw": [
              "5193/15625",
              "6244930809/8600875000"
            ],
            "new": [
              "5193/15625",
              "726081/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "343733/1000000",
              "91047/125000"
            ],
            "lines": [
              [
                "-699701/1000000",
                "185064757/781250000"
              ],
              [
                "-699701/1000000",
                "16025741811/62500000000"
              ],
              [
                "-699701/1000000",
                "6426369777/15625000000"
              ],
              [
                "-699701/1000000",
                "363912771/781250000"
              ],
              [
                "-699701/1000000",
                "85715151709/200000000000"
              ],
              [
                "-699701/1000000",
                "448104738561/1000000000000"
              ],
              [
                "-699701/1000000",
                "452829618789/1000000000000"
              ],
              [
                "-699701/1000000",
                "507350299941/1000000000000"
              ],
              [
                "-19783/62500",
                "-821264571/12500000000"
              ],
              [
                "-19783/62500",
                "-20332651863/250000000000"
              ],
              [
                "-19783/62500",
                "6793975693/62500000000"
              ],
              [
                "-19783/62500",
                "32016467613/250000000000"
              ],
              [
                "-19783/62500",
                "25198340781/200000000000"
              ],
              [
                "-19783/62500",
                "110362262133/1000000000000"
              ],
              [
                "-19783/62500",
                "150245564149/1000000000000"
              ],
              [
                "-19783/62500",
                "169607823513/1000000000000"
              ]
            ],
            "raw": [
              "343733/1000000",
              "507350299941/699701000000"
            ],
            "new": [
              "343733/1000000",
              "90637/125000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "300299/1000000",
              "42717/62500"
            ],
            "lines": [
              [
                "873099/1000000",
                "-88088478517/250000000000"
              ],
              [
                "873099/1000000",
                "-84531725983/200000000000"
              ],
              [
                "53763/100000",
                "-38902338161/125000000000"
              ],
              [
                "53763/100000",
                "-133363467871/500000000000"
              ],
              [
                "873099/1000000",
                "-150455648053/250000000000"
              ],
              [
                "873099/1000000",
                "-672127308059/1000000000000"
              ],
              [
                "53763/100000",
                "-70085922929/125000000000"
              ],
              [
                "53763/100000",
                "-258097806943/500000000000"
              ],
              [
                "873099/1000000",
                "-131270983397/500000000000"
              ],
              [
                "873099/1000000",
                "-233789782627/500000000000"
              ],
              [
                "53763/100000",
                "-110703379007/500000000000"
              ],
              [
                "53763/100000",
                "-311647871081/1000000000000"
              ],
              [
                "873099/1000000",
                "-364892622901/1000000000000"
              ],
              [
                "873099/1000000",
                "-569930221361/1000000000000"
              ],
              [
                "53763/100000",
                "-323757414121/1000000000000"
              ],
              [
                "53763/100000",
                "-103499631797/250000000000"
              ]
            ],
            "raw": [
              "131270983397/436549500000",
              "42717/62500"
            ],
            "new": [
              "300701/1000000",
              "42717/62500"
            ]
          },
          {
            "factor": 144,
            "target": "g",
            "old": [
              "126901/1000000",
              "46237/100000"
            ],
            "lines": [
              [
                "-43869/50000",
                "262792163/6250000000"
              ],
              [
                "-393023/500000",
                "-93993397/3125000000"
              ],
              [
                "-43869/50000",
                "7872105027/125000000000"
              ],
              [
                "-393023/500000",
                "-1095514713/62500000000"
              ],
              [
                "-43869/50000",
                "4213913089/12500000000"
              ],
              [
                "-393023/500000",
                "132494207/500000000"
              ],
              [
                "-43869/50000",
                "98082011481/250000000000"
              ],
              [
                "-393023/500000",
                "3118229703/10000000000"
              ]
            ],
            "raw": [
              "126901/1000000",
              "32694003827/73115000000"
            ],
            "new": [
              "126901/1000000",
              "447159/1000000"
            ]
          },
          {
            "factor": 144,
            "target": "z",
            "old": [
              "175363/500000",
              "724379/1000000"
            ],
            "lines": [
              [
                "9871/12500",
                "-17312748049/50000000000"
              ],
              [
                "9871/12500",
                "-203394609083/500000000000"
              ],
              [
                "220359/250000",
                "-3575060817/10000000000"
              ],
              [
                "220359/250000",
                "-42642078139/100000000000"
              ],
              [
                "9871/12500",
                "-31362146251/50000000000"
              ],
              [
                "9871/12500",
                "-329263369017/500000000000"
              ],
              [
                "220359/250000",
                "-31924702287/50000000000"
              ],
              [
                "220359/250000",
                "-339079150629/500000000000"
              ]
            ],
            "raw": [
              "1191686939/2938120000",
              "724379/1000000"
            ],
            "new": [
              "81119/200000",
              "724379/1000000"
            ]
          },
          {
            "factor": 184,
            "target": "z",
            "old": [
              "81119/200000",
              "724379/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "579165441437/1000000000000"
              ],
              [
                "-1/1",
                "607271728719/1000000000000"
              ],
              [
                "-1/1",
                "469040564783/1000000000000"
              ],
              [
                "-1/1",
                "568078234421/1000000000000"
              ],
              [
                "-1/1",
                "658909065503/1000000000000"
              ],
              [
                "-1/1",
                "137403070557/200000000000"
              ],
              [
                "-1/1",
                "519533744677/1000000000000"
              ],
              [
                "-1/1",
                "123714282863/200000000000"
              ]
            ],
            "raw": [
              "81119/200000",
              "137403070557/200000000000"
            ],
            "new": [
              "81119/200000",
              "85877/125000"
            ]
          },
          {
            "factor": 200,
            "target": "u",
            "old": [
              "5193/15625",
              "726081/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "56393587783/100000000000"
              ],
              [
                "-1/1",
                "173953469761/250000000000"
              ],
              [
                "-1/1",
                "295763499393/500000000000"
              ],
              [
                "-1/1",
                "144681/200000"
              ],
              [
                "-1/1",
                "3756247461/6250000000"
              ],
              [
                "-1/1",
                "5161658931/7812500000"
              ],
              [
                "-1/1",
                "20741007831/31250000000"
              ]
            ],
            "raw": [
              "5193/15625",
              "144681/200000"
            ],
            "new": [
              "5193/15625",
              "144681/200000"
            ]
          },
          {
            "factor": 206,
            "target": "z",
            "old": [
              "81119/200000",
              "85877/125000"
            ],
            "lines": [
              [
                "-656267/1000000",
                "46550291269/1000000000000"
              ],
              [
                "-656267/1000000",
                "-294818751/200000000000"
              ],
              [
                "-656267/1000000",
                "63097381613/1000000000000"
              ],
              [
                "-656267/1000000",
                "17200875789/200000000000"
              ],
              [
                "-34363/125000",
                "-8442233761/50000000000"
              ],
              [
                "-34363/125000",
                "-30133410021/100000000000"
              ],
              [
                "-34363/125000",
                "-38074396219/250000000000"
              ],
              [
                "-34363/125000",
                "-21385562751/100000000000"
              ],
              [
                "-656267/1000000",
                "379511833513/1000000000000"
              ],
              [
                "-656267/1000000",
                "331487448489/1000000000000"
              ],
              [
                "-656267/1000000",
                "273926614009/1000000000000"
              ],
              [
                "-656267/1000000",
                "296833611341/1000000000000"
              ],
              [
                "-34363/125000",
                "10257304189/62500000000"
              ],
              [
                "-34363/125000",
                "15813721017/500000000000"
              ],
              [
                "-34363/125000",
                "365822797/6250000000"
              ],
              [
                "-34363/125000",
                "-1513197557/500000000000"
              ]
            ],
            "raw": [
              "81119/200000",
              "10257304189/17181500000"
            ],
            "new": [
              "81119/200000",
              "298499/500000"
            ]
          },
          {
            "factor": 206,
            "target": "y",
            "old": [
              "102627/200000",
              "894491/1000000"
            ],
            "lines": [
              [
                "873099/1000000",
                "-667645977961/1000000000000"
              ],
              [
                "873099/1000000",
                "-143134072597/200000000000"
              ],
              [
                "552841/1000000",
                "-486763298787/1000000000000"
              ],
              [
                "552841/1000000",
                "-92771260291/200000000000"
              ],
              [
                "873099/1000000",
                "-396628725281/500000000000"
              ],
              [
                "873099/1000000",
                "-420640917793/500000000000"
              ],
              [
                "552841/1000000",
                "-153093692847/250000000000"
              ],
              [
                "552841/1000000",
                "-73683471757/125000000000"
              ],
              [
                "873099/1000000",
                "-145672403693/200000000000"
              ],
              [
                "873099/1000000",
                "-172170288691/200000000000"
              ],
              [
                "552841/1000000",
                "-547479339291/1000000000000"
              ],
              [
                "552841/1000000",
                "-24361495277/40000000000"
              ],
              [
                "873099/1000000",
                "-780979468777/1000000000000"
              ],
              [
                "873099/1000000",
                "-913468893767/1000000000000"
              ],
              [
                "552841/1000000",
                "-600096789603/1000000000000"
              ],
              [
                "552841/1000000",
                "-661654832237/1000000000000"
              ]
            ],
            "raw": [
              "667645977961/873099000000",
              "894491/1000000"
            ],
            "new": [
              "152937/200000",
              "894491/1000000"
            ]
          },
          {
            "factor": 218,
            "target": "v",
            "old": [
              "300701/1000000",
              "42717/62500"
            ],
            "lines": [
              [
                "873099/1000000",
                "-479834031713/1000000000000"
              ],
              [
                "873099/1000000",
                "-105067546019/200000000000"
              ],
              [
                "552841/1000000",
                "-298951352539/1000000000000"
              ],
              [
                "552841/1000000",
                "-54704733713/200000000000"
              ],
              [
                "873099/1000000",
                "-607623861857/1000000000000"
              ],
              [
                "873099/1000000",
                "-653127560239/1000000000000"
              ],
              [
                "552841/1000000",
                "-426741182683/1000000000000"
              ],
              [
                "552841/1000000",
                "-401313498709/1000000000000"
              ],
              [
                "873099/1000000",
                "-542092797737/1000000000000"
              ],
              [
                "873099/1000000",
                "-134841539333/200000000000"
              ],
              [
                "552841/1000000",
                "-361210118563/1000000000000"
              ],
              [
                "552841/1000000",
                "-84478727027/200000000000"
              ],
              [
                "873099/1000000",
                "-297516955261/500000000000"
              ],
              [
                "873099/1000000",
                "-14542976189/20000000000"
              ],
              [
                "552841/1000000",
                "-103537807837/250000000000"
              ],
              [
                "552841/1000000",
                "-5941684349/12500000000"
              ]
            ],
            "raw": [
              "54704733713/110568200000",
              "42717/62500"
            ],
            "new": [
              "12369/25000",
              "42717/62500"
            ]
          },
          {
            "factor": 224,
            "target": "x",
            "old": [
              "343733/1000000",
              "90637/125000"
            ],
            "lines": [
              [
                "-43869/50000",
                "1035064723/2500000000"
              ],
              [
                "-393023/500000",
                "4273765701/12500000000"
              ],
              [
                "-43869/50000",
                "23646960267/50000000000"
              ],
              [
                "-393023/500000",
                "98108532429/250000000000"
              ],
              [
                "-43869/50000",
                "6456638641/12500000000"
              ],
              [
                "-393023/500000",
                "5555080727/12500000000"
              ],
              [
                "-43869/50000",
                "146838721689/250000000000"
              ],
              [
                "-393023/500000",
                "126712452783/250000000000"
              ]
            ],
            "raw": [
              "343733/1000000",
              "48946240563/73115000000"
            ],
            "new": [
              "343733/1000000",
              "334721/500000"
            ]
          },
          {
            "factor": 235,
            "target": "c",
            "old": [
              "13857/20000",
              "220359/250000"
            ],
            "lines": [
              [
                "1/1",
                "-9871/12500"
              ],
              [
                "1/1",
                "-220359/250000"
              ]
            ],
            "raw": [
              "9871/12500",
              "220359/250000"
            ],
            "new": [
              "9871/12500",
              "220359/250000"
            ]
          },
          {
            "factor": 239,
            "target": "b",
            "old": [
              "123/1000",
              "583181/1000000"
            ],
            "lines": [
              [
                "-564803/1000000",
                "192803/1000000"
              ],
              [
                "-157257/200000",
                "82857/200000"
              ]
            ],
            "raw": [
              "123/1000",
              "27619/52419"
            ],
            "new": [
              "123/1000",
              "52689/100000"
            ]
          },
          {
            "factor": 556,
            "target": "g",
            "old": [
              "126901/1000000",
              "447159/1000000"
            ],
            "lines": [
              [
                "-128413/200000",
                "17292494567/125000000000"
              ],
              [
                "-550731/1000000",
                "5875744567/125000000000"
              ],
              [
                "-128413/200000",
                "6220928423/100000000000"
              ],
              [
                "-550731/1000000",
                "-2912471577/100000000000"
              ],
              [
                "-128413/200000",
                "40826296787/200000000000"
              ],
              [
                "-550731/1000000",
                "22559496787/200000000000"
              ],
              [
                "-128413/200000",
                "128000811629/1000000000000"
              ],
              [
                "-550731/1000000",
                "36666811629/1000000000000"
              ],
              [
                "-128413/200000",
                "5405279879/62500000000"
              ],
              [
                "-550731/1000000",
                "-303095121/62500000000"
              ],
              [
                "-128413/200000",
                "-3089243749/50000000000"
              ],
              [
                "-550731/1000000",
                "-7655943749/50000000000"
              ],
              [
                "-128413/200000",
                "21461768519/100000000000"
              ],
              [
                "-550731/1000000",
                "12328368519/100000000000"
              ],
              [
                "-128413/200000",
                "33174166073/500000000000"
              ],
              [
                "-550731/1000000",
                "-12492833927/500000000000"
              ],
              [
                "-771871/1000000",
                "33518244567/125000000000"
              ],
              [
                "-680537/1000000",
                "22101494567/125000000000"
              ],
              [
                "-771871/1000000",
                "19201528423/100000000000"
              ],
              [
                "-680537/1000000",
                "10068128423/100000000000"
              ],
              [
                "-771871/1000000",
                "66787496787/200000000000"
              ],
              [
                "-680537/1000000",
                "48520696787/200000000000"
              ],
              [
                "-771871/1000000",
                "257806811629/1000000000000"
              ],
              [
                "-680537/1000000",
                "166472811629/1000000000000"
              ],
              [
                "-771871/1000000",
                "13518154879/62500000000"
              ],
              [
                "-680537/1000000",
                "7809779879/62500000000"
              ],
              [
                "-771871/1000000",
                "3401056251/50000000000"
              ],
              [
                "-680537/1000000",
                "-1165643749/50000000000"
              ],
              [
                "-771871/1000000",
                "34442368519/100000000000"
              ],
              [
                "-680537/1000000",
                "25308968519/100000000000"
              ],
              [
                "-771871/1000000",
                "98077166073/500000000000"
              ],
              [
                "-680537/1000000",
                "52410166073/500000000000"
              ]
            ],
            "raw": [
              "126901/1000000",
              "34442368519/77187100000"
            ],
            "new": [
              "126901/1000000",
              "22311/50000"
            ]
          },
          {
            "factor": 901,
            "target": "z",
            "old": [
              "81119/200000",
              "298499/500000"
            ],
            "lines": [
              [
                "-1/1",
                "483905175277/1000000000000"
              ],
              [
                "-1/1",
                "337111556799/1000000000000"
              ],
              [
                "-1/1",
                "103091333741/200000000000"
              ],
              [
                "-1/1",
                "69668149567/200000000000"
              ],
              [
                "-1/1",
                "18705159299/50000000000"
              ],
              [
                "-1/1",
                "14901648913/50000000000"
              ],
              [
                "-1/1",
                "25353417463/62500000000"
              ],
              [
                "-1/1",
                "19328885581/62500000000"
              ],
              [
                "-1/1",
                "544439432463/1000000000000"
              ],
              [
                "-1/1",
                "79529162797/200000000000"
              ],
              [
                "-1/1",
                "116874273679/200000000000"
              ],
              [
                "-1/1",
                "16690217901/40000000000"
              ],
              [
                "-1/1",
                "20273638081/50000000000"
              ],
              [
                "-1/1",
                "3294025539/10000000000"
              ],
              [
                "-1/1",
                "27837793597/62500000000"
              ],
              [
                "-1/1",
                "4362652343/12500000000"
              ]
            ],
            "raw": [
              "81119/200000",
              "116874273679/200000000000"
            ],
            "new": [
              "81119/200000",
              "146093/250000"
            ]
          },
          {
            "factor": 1886,
            "target": "g",
            "old": [
              "126901/1000000",
              "22311/50000"
            ],
            "lines": [
              [
                "-4392004840181343/6250000000000000",
                "38984262357430687611/156250000000000000000"
              ],
              [
                "-4392004840181343/6250000000000000",
                "40032323432455687611/156250000000000000000"
              ],
              [
                "-4392004840181343/6250000000000000",
                "870279917822010828819/3125000000000000000000"
              ],
              [
                "-4392004840181343/6250000000000000",
                "893676705425235828819/3125000000000000000000"
              ],
              [
                "-9666928971/12500000000",
                "9330299520057322821/31250000000000000000"
              ],
              [
                "-9666928971/12500000000",
                "9539911735062322821/31250000000000000000"
              ],
              [
                "-9666928971/12500000000",
                "208288468436866740909/625000000000000000000"
              ],
              [
                "-9666928971/12500000000",
                "212967825957511740909/625000000000000000000"
              ],
              [
                "-4392004840181343/6250000000000000",
                "10962478859634834927/78125000000000000000"
              ],
              [
                "-4392004840181343/6250000000000000",
                "11486509397147334927/78125000000000000000"
              ],
              [
                "-4392004840181343/6250000000000000",
                "244725040931037644583/1562500000000000000000"
              ],
              [
                "-4392004840181343/6250000000000000",
                "256423434732650144583/1562500000000000000000"
              ],
              [
                "-9666928971/12500000000",
                "7398048240531399087/39062500000000000000"
              ],
              [
                "-9666928971/12500000000",
                "7660063509287649087/39062500000000000000"
              ],
              [
                "-9666928971/12500000000",
                "165153126556099541223/781250000000000000000"
              ],
              [
                "-9666928971/12500000000",
                "171002323456905791223/781250000000000000000"
              ]
            ],
            "raw": [
              "126901/1000000",
              "322152829333817/731150000000000"
            ],
            "new": [
              "126901/1000000",
              "110153/250000"
            ]
          },
          {
            "factor": 1962,
            "target": "u",
            "old": [
              "5193/15625",
              "144681/200000"
            ],
            "lines": [
              [
                "-298492585469019/500000000000000",
                "15506512419055384449/62500000000000000000"
              ],
              [
                "-298492585469019/500000000000000",
                "15743256260725009449/62500000000000000000"
              ],
              [
                "-298492585469019/500000000000000",
                "32745112557074238003/125000000000000000000"
              ],
              [
                "-298492585469019/500000000000000",
                "33316022884522488003/125000000000000000000"
              ],
              [
                "-298492585469019/500000000000000",
                "2892164613947851497/7812500000000000000"
              ],
              [
                "-298492585469019/500000000000000",
                "2900143590719382747/7812500000000000000"
              ],
              [
                "-298492585469019/500000000000000",
                "48006721542129093057/125000000000000000000"
              ],
              [
                "-298492585469019/500000000000000",
                "48231807814582593057/125000000000000000000"
              ],
              [
                "-1745809916951217/2500000000000000",
                "19912277200769444973/62500000000000000000"
              ],
              [
                "-1745809916951217/2500000000000000",
                "20149021042439069973/62500000000000000000"
              ],
              [
                "-1745809916951217/2500000000000000",
                "212902440585681627813/625000000000000000000"
              ],
              [
                "-1745809916951217/2500000000000000",
                "215756992222922877813/625000000000000000000"
              ],
              [
                "-1745809916951217/2500000000000000",
                "11017232677318749/25000000000000000"
              ],
              [
                "-1745809916951217/2500000000000000",
                "11042765402987649/25000000000000000"
              ],
              [
                "-1745809916951217/2500000000000000",
                "289210485510955903083/625000000000000000000"
              ],
              [
                "-1745809916951217/2500000000000000",
                "290335916873223403083/625000000000000000000"
              ],
              [
                "-298492585469019/500000000000000",
                "3562586831784369789/19531250000000000000"
              ],
              [
                "-298492585469019/500000000000000",
                "7273138564612255203/39062500000000000000"
              ],
              [
                "-298492585469019/500000000000000",
                "114214418183248197357/625000000000000000000"
              ],
              [
                "-298492585469019/500000000000000",
                "117068969820489447357/625000000000000000000"
              ],
              [
                "-298492585469019/500000000000000",
                "55075444133851802523/156250000000000000000"
              ],
              [
                "-298492585469019/500000000000000",
                "55235023669282427523/156250000000000000000"
              ],
              [
                "-298492585469019/500000000000000",
                "220513416101555574201/625000000000000000000"
              ],
              [
                "-298492585469019/500000000000000",
                "221638847463823074201/625000000000000000000"
              ],
              [
                "-1745809916951217/2500000000000000",
                "19757553304280054811/78125000000000000000"
              ],
              [
                "-1745809916951217/2500000000000000",
                "20053483106367086061/78125000000000000000"
              ],
              [
                "-1745809916951217/2500000000000000",
                "32678259196711727031/125000000000000000000"
              ],
              [
                "-1745809916951217/2500000000000000",
                "33249169524159977031/125000000000000000000"
              ],
              [
                "-1745809916951217/2500000000000000",
                "66089856088136953833/156250000000000000000"
              ],
              [
                "-1745809916951217/2500000000000000",
                "66249435623567578833/156250000000000000000"
              ],
              [
                "-1745809916951217/2500000000000000",
                "269690293901866011999/625000000000000000000"
              ],
              [
                "-1745809916951217/2500000000000000",
                "270815725264133511999/625000000000000000000"
              ]
            ],
            "raw": [
              "5193/15625",
              "2360454608725393521/3548394140144750000"
            ],
            "new": [
              "5193/15625",
              "332609/500000"
            ]
          },
          {
            "factor": 2386,
            "target": "g",
            "old": [
              "126901/1000000",
              "110153/250000"
            ],
            "lines": [
              [
                "-424078507028799/625000000000000",
                "719288221154555379/6250000000000000000"
              ],
              [
                "-3799325424969333/6250000000000000",
                "10314970286007957981/156250000000000000000"
              ],
              [
                "-424078507028799/625000000000000",
                "16057302514982946891/125000000000000000000"
              ],
              [
                "-3799325424969333/6250000000000000",
                "230270138512250796549/3125000000000000000000"
              ],
              [
                "-424078507028799/625000000000000",
                "677365778153555379/6250000000000000000"
              ],
              [
                "-3799325424969333/6250000000000000",
                "9266909210982957981/156250000000000000000"
              ],
              [
                "-424078507028799/625000000000000",
                "15121431010853946891/125000000000000000000"
              ],
              [
                "-3799325424969333/6250000000000000",
                "206873350909025796549/3125000000000000000000"
              ],
              [
                "-424078507028799/625000000000000",
                "4380188770878112779/19531250000000000000"
              ],
              [
                "-3799325424969333/6250000000000000",
                "13687137462084487869/78125000000000000000"
              ],
              [
                "-424078507028799/625000000000000",
                "97782799854313651491/390625000000000000000"
              ],
              [
                "-3799325424969333/6250000000000000",
                "305549987236093168101/1562500000000000000000"
              ],
              [
                "-424078507028799/625000000000000",
                "4249181136499987779/19531250000000000000"
              ],
              [
                "-3799325424969333/6250000000000000",
                "13163106924571987869/78125000000000000000"
              ],
              [
                "-424078507028799/625000000000000",
                "94858201403910526491/390625000000000000000"
              ],
              [
                "-3799325424969333/6250000000000000",
                "293851593434480668101/1562500000000000000000"
              ]
            ],
            "raw": [
              "126901/1000000",
              "147914387967383/400935241875000"
            ],
            "new": [
              "126901/1000000",
              "92231/250000"
            ]
          },
          {
            "factor": 2542,
            "target": "g",
            "old": [
              "126901/1000000",
              "92231/250000"
            ],
            "lines": [
              [
                "-512899608072159/1250000000000000",
                "9258142673902036161/250000000000000000000"
              ],
              [
                "-2199697180606233/6250000000000000",
                "124307531755573544079/6250000000000000000000"
              ],
              [
                "-512899608072159/1250000000000000",
                "8528220320540536161/250000000000000000000"
              ],
              [
                "-2199697180606233/6250000000000000",
                "106059472921536044079/6250000000000000000000"
              ],
              [
                "-512899608072159/1250000000000000",
                "59612466338200140261/781250000000000000000"
              ],
              [
                "-2199697180606233/6250000000000000",
                "184876847806811881071/3125000000000000000000"
              ],
              [
                "-512899608072159/1250000000000000",
                "57331458983945452761/781250000000000000000"
              ],
              [
                "-2199697180606233/6250000000000000",
                "175752818389793131071/3125000000000000000000"
              ],
              [
                "-512899608072159/1250000000000000",
                "9015412468256360157/125000000000000000000"
              ],
              [
                "-2199697180606233/6250000000000000",
                "121048433920389756723/3125000000000000000000"
              ],
              [
                "-512899608072159/1250000000000000",
                "8304627236580860157/125000000000000000000"
              ],
              [
                "-2199697180606233/6250000000000000",
                "103278803128502256723/3125000000000000000000"
              ],
              [
                "-512899608072159/1250000000000000",
                "58049545272606031857/390625000000000000000"
              ],
              [
                "-2199697180606233/6250000000000000",
                "180029742197414503827/1562500000000000000000"
              ],
              [
                "-512899608072159/1250000000000000",
                "55828341423620094357/390625000000000000000"
              ],
              [
                "-2199697180606233/6250000000000000",
                "171144926801470753827/1562500000000000000000"
              ],
              [
                "-3082961486627253/6250000000000000",
                "9258142673902036161/250000000000000000000"
              ],
              [
                "-2718160626872691/6250000000000000",
                "124307531755573544079/6250000000000000000000"
              ],
              [
                "-3082961486627253/6250000000000000",
                "8528220320540536161/250000000000000000000"
              ],
              [
                "-2718160626872691/6250000000000000",
                "106059472921536044079/6250000000000000000000"
              ],
              [
                "-3082961486627253/6250000000000000",
                "59612466338200140261/781250000000000000000"
              ],
              [
                "-2718160626872691/6250000000000000",
                "184876847806811881071/3125000000000000000000"
              ],
              [
                "-3082961486627253/6250000000000000",
                "57331458983945452761/781250000000000000000"
              ],
              [
                "-2718160626872691/6250000000000000",
                "175752818389793131071/3125000000000000000000"
              ],
              [
                "-3082961486627253/6250000000000000",
                "9015412468256360157/125000000000000000000"
              ],
              [
                "-2718160626872691/6250000000000000",
                "121048433920389756723/3125000000000000000000"
              ],
              [
                "-3082961486627253/6250000000000000",
                "8304627236580860157/125000000000000000000"
              ],
              [
                "-2718160626872691/6250000000000000",
                "103278803128502256723/3125000000000000000000"
              ],
              [
                "-3082961486627253/6250000000000000",
                "58049545272606031857/390625000000000000000"
              ],
              [
                "-2718160626872691/6250000000000000",
                "180029742197414503827/1562500000000000000000"
              ],
              [
                "-3082961486627253/6250000000000000",
                "55828341423620094357/390625000000000000000"
              ],
              [
                "-2718160626872691/6250000000000000",
                "171144926801470753827/1562500000000000000000"
              ]
            ],
            "raw": [
              "126901/1000000",
              "624188658845226149/1723452984113437500"
            ],
            "new": [
              "126901/1000000",
              "181087/500000"
            ]
          },
          {
            "factor": 2785,
            "target": "g",
            "old": [
              "126901/1000000",
              "181087/500000"
            ],
            "lines": [
              [
                "432215474838103/500000000000000",
                "-134379801765607503/1000000000000000000"
              ],
              [
                "432215474838103/500000000000000",
                "-29814854027204014029/100000000000000000000"
              ],
              [
                "432215474838103/500000000000000",
                "-138294193248607503/1000000000000000000"
              ],
              [
                "432215474838103/500000000000000",
                "-31491645676373014029/100000000000000000000"
              ],
              [
                "951318691/1000000000",
                "-30503257264486833/200000000000000000"
              ],
              [
                "951318691/1000000000",
                "-6958948959419079219/20000000000000000000"
              ],
              [
                "951318691/1000000000",
                "-31286135561086833/200000000000000000"
              ],
              [
                "951318691/1000000000",
                "-7294307289252879219/20000000000000000000"
              ],
              [
                "432215474838103/500000000000000",
                "-56730355933117971/500000000000000000"
              ],
              [
                "432215474838103/500000000000000",
                "-10426915112350022553/50000000000000000000"
              ],
              [
                "432215474838103/500000000000000",
                "-58687551674617971/500000000000000000"
              ],
              [
                "432215474838103/500000000000000",
                "-11265310936934522553/50000000000000000000"
              ],
              [
                "951318691/1000000000",
                "-32899299105765651/250000000000000000"
              ],
              [
                "951318691/1000000000",
                "-6458430248647856793/25000000000000000000"
              ],
              [
                "951318691/1000000000",
                "-33877896976515651/250000000000000000"
              ],
              [
                "951318691/1000000000",
                "-6877628160940106793/25000000000000000000"
              ]
            ],
            "raw": [
              "56730355933117971/432215474838103000",
              "181087/500000"
            ],
            "new": [
              "65627/500000",
              "181087/500000"
            ]
          },
          {
            "factor": 2863,
            "target": "g",
            "old": [
              "65627/500000",
              "181087/500000"
            ],
            "lines": [
              [
                "449135884813/500000000000",
                "-141742402755213/1000000000000000"
              ],
              [
                "449135884813/500000000000",
                "-32968740885263559/100000000000000000"
              ],
              [
                "449135884813/500000000000",
                "-144275935353213/1000000000000000"
              ],
              [
                "449135884813/500000000000",
                "-34054019739377559/100000000000000000"
              ],
              [
                "988561/1000000",
                "-32059454093043/200000000000000"
              ],
              [
                "988561/1000000",
                "-7625570542344249/20000000000000000"
              ],
              [
                "988561/1000000",
                "-32566160612643/200000000000000"
              ],
              [
                "988561/1000000",
                "-7842626313167049/20000000000000000"
              ],
              [
                "449135884813/500000000000",
                "-60002185228941/500000000000000"
              ],
              [
                "449135884813/500000000000",
                "-11828455061680263/50000000000000000"
              ],
              [
                "449135884813/500000000000",
                "-61268951527941/500000000000000"
              ],
              [
                "449135884813/500000000000",
                "-12371094488737263/50000000000000000"
              ],
              [
                "988561/1000000",
                "-34639809541971/250000000000000"
              ],
              [
                "988561/1000000",
                "-7204005487454553/25000000000000000"
              ],
              [
                "988561/1000000",
                "-35273192691471/250000000000000"
              ],
              [
                "988561/1000000",
                "-7475325200983053/25000000000000000"
              ]
            ],
            "raw": [
              "60002185228941/449135884813000",
              "181087/500000"
            ],
            "new": [
              "66797/500000",
              "181087/500000"
            ]
          },
          {
            "factor": 3513,
            "target": "u",
            "old": [
              "5193/15625",
              "332609/500000"
            ],
            "lines": [
              [
                "86606155257/125000000000",
                "-360796293069/1562500000000"
              ],
              [
                "19135755201/31250000000",
                "-79718462517/390625000000"
              ],
              [
                "86606155257/125000000000",
                "-31379043178083/125000000000000"
              ],
              [
                "19135755201/31250000000",
                "-6933244951419/31250000000000"
              ],
              [
                "86606155257/125000000000",
                "-29702150023041/125000000000000"
              ],
              [
                "19135755201/31250000000",
                "-6562732984713/31250000000000"
              ],
              [
                "86606155257/125000000000",
                "-8054372438901/31250000000000"
              ],
              [
                "19135755201/31250000000",
                "-1779625233693/7812500000000"
              ],
              [
                "9666928971/12500000000",
                "-40271873607/156250000000"
              ],
              [
                "9666928971/12500000000",
                "-3502510655049/12500000000000"
              ],
              [
                "9666928971/12500000000",
                "-3315336810723/12500000000000"
              ],
              [
                "9666928971/12500000000",
                "-899024394303/3125000000000"
              ]
            ],
            "raw": [
              "612002/1836325",
              "332609/500000"
            ],
            "new": [
              "13331/40000",
              "332609/500000"
            ]
          },
          {
            "factor": 3949,
            "target": "u",
            "old": [
              "13331/40000",
              "332609/500000"
            ],
            "lines": [
              [
                "52314173978139029/125000000000000000",
                "-35148927654543/250000000000000"
              ],
              [
                "11558892365300797/31250000000000000",
                "-7766206376199/62500000000000"
              ],
              [
                "52314173978139029/125000000000000000",
                "-7365164161917/50000000000000"
              ],
              [
                "11558892365300797/31250000000000000",
                "-1627343668581/12500000000000"
              ],
              [
                "52314173978139029/125000000000000000",
                "-39326357330853/250000000000000"
              ],
              [
                "11558892365300797/31250000000000000",
                "-8689215502029/62500000000000"
              ],
              [
                "52314173978139029/125000000000000000",
                "-8200650097179/50000000000000"
              ],
              [
                "11558892365300797/31250000000000000",
                "-1811945493747/12500000000000"
              ],
              [
                "5839277849507487/12500000000000000",
                "-3923302980429/25000000000000"
              ],
              [
                "5839277849507487/12500000000000000",
                "-822095364951/5000000000000"
              ],
              [
                "5839277849507487/12500000000000000",
                "-4389585265359/25000000000000"
              ],
              [
                "5839277849507487/12500000000000000",
                "-915351821937/5000000000000"
              ]
            ],
            "raw": [
              "44716120500/133107156523",
              "332609/500000"
            ],
            "new": [
              "16797/50000",
              "332609/500000"
            ]
          },
          {
            "factor": 4067,
            "target": "v",
            "old": [
              "12369/25000",
              "42717/62500"
            ],
            "lines": [
              [
                "60557417573211/125000000000000",
                "-30886524528671023553/125000000000000000000"
              ],
              [
                "60557417573211/125000000000000",
                "-6856514556592551047/25000000000000000000"
              ],
              [
                "47647797823481/125000000000000",
                "-23595132565164270363/125000000000000000000"
              ],
              [
                "47647797823481/125000000000000",
                "-4826386483609260437/25000000000000000000"
              ],
              [
                "60557417573211/125000000000000",
                "-31591595380136023553/125000000000000000000"
              ],
              [
                "60557417573211/125000000000000",
                "-6997528726885551047/25000000000000000000"
              ],
              [
                "47647797823481/125000000000000",
                "-24300203416629270363/125000000000000000000"
              ],
              [
                "47647797823481/125000000000000",
                "-4967400653902260437/25000000000000000000"
              ],
              [
                "60557417573211/125000000000000",
                "-37591453605334453023/125000000000000000000"
              ],
              [
                "60557417573211/125000000000000",
                "-8197500371925236941/25000000000000000000"
              ],
              [
                "47647797823481/125000000000000",
                "-30300061641827699833/125000000000000000000"
              ],
              [
                "47647797823481/125000000000000",
                "-6167372298941946331/25000000000000000000"
              ],
              [
                "60557417573211/125000000000000",
                "-38296524456799453023/125000000000000000000"
              ],
              [
                "60557417573211/125000000000000",
                "-8338514542218236941/25000000000000000000"
              ],
              [
                "47647797823481/125000000000000",
                "-31005132493292699833/125000000000000000000"
              ],
              [
                "47647797823481/125000000000000",
                "-6308386469234946331/25000000000000000000"
              ],
              [
                "60557417573211/125000000000000",
                "-32531023626689441097/125000000000000000000"
              ],
              [
                "60557417573211/125000000000000",
                "-8178745404263107581/25000000000000000000"
              ],
              [
                "47647797823481/125000000000000",
                "-25239631663182687907/125000000000000000000"
              ],
              [
                "47647797823481/125000000000000",
                "-6148617331279816971/25000000000000000000"
              ],
              [
                "60557417573211/125000000000000",
                "-32886481009749941097/125000000000000000000"
              ],
              [
                "60557417573211/125000000000000",
                "-8249836880875207581/25000000000000000000"
              ],
              [
                "47647797823481/125000000000000",
                "-25595089046243187907/125000000000000000000"
              ],
              [
                "47647797823481/125000000000000",
                "-6219708807891916971/25000000000000000000"
              ],
              [
                "60557417573211/125000000000000",
                "-4488909344728436907/15625000000000000000"
              ],
              [
                "60557417573211/125000000000000",
                "-43236306789505461/122070312500000000"
              ],
              [
                "47647797823481/125000000000000",
                "-14309941397160371033/62500000000000000000"
              ],
              [
                "47647797823481/125000000000000",
                "-17061668893768569507/62500000000000000000"
              ],
              [
                "60557417573211/125000000000000",
                "-4533341517610999407/15625000000000000000"
              ],
              [
                "60557417573211/125000000000000",
                "-1394669860484815377/3906250000000000000"
              ],
              [
                "47647797823481/125000000000000",
                "-14487670088690621033/62500000000000000000"
              ],
              [
                "47647797823481/125000000000000",
                "-17239397585298819507/62500000000000000000"
              ]
            ],
            "raw": [
              "23595132565164270363/47647797823481000000",
              "42717/62500"
            ],
            "new": [
              "247599/500000",
              "42717/62500"
            ]
          },
          {
            "factor": 0,
            "target": "b",
            "old": [
              "123/1000",
              "52689/100000"
            ],
            "lines": [
              [
                "-6131/50000",
                "2394101/625000000"
              ],
              [
                "-106977/500000",
                "474719967/6250000000"
              ],
              [
                "-6131/50000",
                "188521029/12500000000"
              ],
              [
                "-106977/500000",
                "11948344743/125000000000"
              ]
            ],
            "raw": [
              "123/1000",
              "3982781581/8914750000"
            ],
            "new": [
              "123/1000",
              "111691/250000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "9871/12500",
              "220359/250000"
            ],
            "lines": [
              [
                "-442183/1000000",
                "349183/1000000"
              ],
              [
                "-49993/500000",
                "3493/500000"
              ],
              [
                "-132733/200000",
                "114133/200000"
              ],
              [
                "-80367/250000",
                "57117/250000"
              ]
            ],
            "raw": [
              "9871/12500",
              "114133/132733"
            ],
            "new": [
              "9871/12500",
              "85987/100000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "6131/50000",
              "464817/1000000"
            ],
            "lines": [
              [
                "-2629/12500",
                "322367087/12500000000"
              ],
              [
                "-14013/100000",
                "-1385415561/100000000000"
              ],
              [
                "-2629/12500",
                "180928653/2500000000"
              ],
              [
                "-14013/100000",
                "343642341/20000000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "180928653/525800000"
            ],
            "new": [
              "6131/50000",
              "172051/500000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "9871/12500",
              "220359/250000"
            ],
            "lines": [
              [
                "-442183/1000000",
                "349183/1000000"
              ],
              [
                "-220701/1000000",
                "127701/1000000"
              ],
              [
                "-132733/200000",
                "114133/200000"
              ]
            ],
            "raw": [
              "9871/12500",
              "114133/132733"
            ],
            "new": [
              "9871/12500",
              "85987/100000"
            ]
          },
          {
            "factor": 78,
            "target": "e",
            "old": [
              "564803/1000000",
              "157257/200000"
            ],
            "lines": [
              [
                "-328043/500000",
                "1255253149/2500000000"
              ],
              [
                "-181569/250000",
                "10611399453/20000000000"
              ],
              [
                "-213753/500000",
                "683803149/2500000000"
              ],
              [
                "-15553/31250",
                "6039799453/20000000000"
              ],
              [
                "-328043/500000",
                "1451565253/3125000000"
              ],
              [
                "-181569/250000",
                "12637948791/25000000000"
              ],
              [
                "-213753/500000",
                "737252753/3125000000"
              ],
              [
                "-15553/31250",
                "6923448791/25000000000"
              ]
            ],
            "raw": [
              "564803/1000000",
              "1255253149/1640215000"
            ],
            "new": [
              "564803/1000000",
              "382649/500000"
            ]
          },
          {
            "factor": 96,
            "target": "y",
            "old": [
              "152937/200000",
              "894491/1000000"
            ],
            "lines": [
              [
                "-9871/12500",
                "327974938351/500000000000"
              ],
              [
                "-85987/100000",
                "359864571621/500000000000"
              ],
              [
                "-9871/12500",
                "17417/25000"
              ],
              [
                "-85987/100000",
                "76687/100000"
              ],
              [
                "-9871/12500",
                "171424545627/250000000000"
              ],
              [
                "-85987/100000",
                "93684681131/125000000000"
              ]
            ],
            "raw": [
              "152937/200000",
              "76687/85987"
            ],
            "new": [
              "152937/200000",
              "178369/200000"
            ]
          },
          {
            "factor": 114,
            "target": "v",
            "old": [
              "247599/500000",
              "42717/62500"
            ],
            "lines": [
              [
                "-9871/12500",
                "11730952771/25000000000"
              ],
              [
                "-85987/100000",
                "26650868869/50000000000"
              ],
              [
                "-9871/12500",
                "12767/25000"
              ],
              [
                "-85987/100000",
                "58087/100000"
              ],
              [
                "-9871/12500",
                "124828096923/250000000000"
              ],
              [
                "-85987/100000",
                "70386456779/125000000000"
              ]
            ],
            "raw": [
              "247599/500000",
              "58087/85987"
            ],
            "new": [
              "247599/500000",
              "675533/1000000"
            ]
          },
          {
            "factor": 128,
            "target": "g",
            "old": [
              "66797/500000",
              "181087/500000"
            ],
            "lines": [
              [
                "454333/500000",
                "-154877733/1000000000"
              ],
              [
                "454333/500000",
                "-79438503061/250000000000"
              ],
              [
                "1/1",
                "-33222363/200000000"
              ],
              [
                "1/1",
                "-17927937771/50000000000"
              ],
              [
                "454333/500000",
                "-66444081/500000000"
              ],
              [
                "454333/500000",
                "-29735360577/125000000000"
              ],
              [
                "1/1",
                "-36030561/250000000"
              ],
              [
                "1/1",
                "-17417976737/62500000000"
              ]
            ],
            "raw": [
              "36030561/250000000",
              "181087/500000"
            ],
            "new": [
              "72061/500000",
              "181087/500000"
            ]
          },
          {
            "factor": 132,
            "target": "u",
            "old": [
              "16797/50000",
              "332609/500000"
            ],
            "lines": [
              [
                "-152937/200000",
                "145012194147/500000000000"
              ],
              [
                "-152937/200000",
                "38617460103/125000000000"
              ],
              [
                "-152937/200000",
                "112828708419/250000000000"
              ],
              [
                "-152937/200000",
                "235115063103/500000000000"
              ],
              [
                "-178369/200000",
                "195220048547/500000000000"
              ],
              [
                "-178369/200000",
                "52285093753/125000000000"
              ],
              [
                "-178369/200000",
                "137932635619/250000000000"
              ],
              [
                "-178369/200000",
                "289785597703/500000000000"
              ],
              [
                "-152937/200000",
                "209604536049/1000000000000"
              ],
              [
                "-152937/200000",
                "215862114929/1000000000000"
              ],
              [
                "-152937/200000",
                "214815856973/500000000000"
              ],
              [
                "-152937/200000",
                "217944646413/500000000000"
              ],
              [
                "-178369/200000",
                "310020244849/1000000000000"
              ],
              [
                "-178369/200000",
                "325203184129/1000000000000"
              ],
              [
                "-178369/200000",
                "265023711373/500000000000"
              ],
              [
                "-178369/200000",
                "272615181013/500000000000"
              ]
            ],
            "raw": [
              "16797/50000",
              "289785597703/445922500000"
            ],
            "new": [
              "16797/50000",
              "649857/1000000"
            ]
          },
          {
            "factor": 136,
            "target": "x",
            "old": [
              "343733/1000000",
              "334721/500000"
            ],
            "lines": [
              [
                "-252401/500000",
                "9943010763/50000000000"
              ],
              [
                "-252401/500000",
                "21777550779/100000000000"
              ],
              [
                "-252401/500000",
                "12827889683/50000000000"
              ],
              [
                "-252401/500000",
                "28439844659/100000000000"
              ],
              [
                "-252401/500000",
                "54545918823/200000000000"
              ],
              [
                "-252401/500000",
                "58328977329/200000000000"
              ],
              [
                "-252401/500000",
                "58101897359/200000000000"
              ],
              [
                "-252401/500000",
                "12734005589/40000000000"
              ],
              [
                "-324467/1000000",
                "2822663623/50000000000"
              ],
              [
                "-324467/1000000",
                "3135542567/50000000000"
              ],
              [
                "-324467/1000000",
                "5707542543/50000000000"
              ],
              [
                "-324467/1000000",
                "6466689507/50000000000"
              ],
              [
                "-324467/1000000",
                "26064530263/200000000000"
              ],
              [
                "-324467/1000000",
                "27316046039/200000000000"
              ],
              [
                "-324467/1000000",
                "29620508799/200000000000"
              ],
              [
                "-324467/1000000",
                "6531419331/40000000000"
              ]
            ],
            "raw": [
              "343733/1000000",
              "12734005589/20192080000"
            ],
            "new": [
              "343733/1000000",
              "157661/250000"
            ]
          },
          {
            "factor": 138,
            "target": "g",
            "old": [
              "72061/500000",
              "181087/500000"
            ],
            "lines": [
              [
                "-128413/200000",
                "170713827/40000000000"
              ],
              [
                "-550731/1000000",
                "-27126664147/1000000000000"
              ],
              [
                "-128413/200000",
                "8214925027/125000000000"
              ],
              [
                "-550731/1000000",
                "17162445197/500000000000"
              ],
              [
                "-128413/200000",
                "854564859/10000000000"
              ],
              [
                "-550731/1000000",
                "6964311701/250000000000"
              ],
              [
                "-128413/200000",
                "6193785259/31250000000"
              ],
              [
                "-550731/1000000",
                "17575236149/125000000000"
              ],
              [
                "-30769/40000",
                "170713827/40000000000"
              ],
              [
                "-677891/1000000",
                "-27126664147/1000000000000"
              ],
              [
                "-30769/40000",
                "8214925027/125000000000"
              ],
              [
                "-677891/1000000",
                "17162445197/500000000000"
              ],
              [
                "-30769/40000",
                "854564859/10000000000"
              ],
              [
                "-677891/1000000",
                "6964311701/250000000000"
              ],
              [
                "-30769/40000",
                "6193785259/31250000000"
              ],
              [
                "-677891/1000000",
                "17575236149/125000000000"
              ]
            ],
            "raw": [
              "72061/500000",
              "6193785259/20064531250"
            ],
            "new": [
              "72061/500000",
              "154347/500000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "81119/200000",
              "146093/250000"
            ],
            "lines": [
              [
                "343733/1000000",
                "-22768423239/100000000000"
              ],
              [
                "343733/1000000",
                "-30739437933/125000000000"
              ],
              [
                "343733/1000000",
                "-33335015357/100000000000"
              ],
              [
                "343733/1000000",
                "-84137601399/250000000000"
              ],
              [
                "157661/250000",
                "-26286525921/100000000000"
              ],
              [
                "157661/250000",
                "-153650629779/500000000000"
              ],
              [
                "157661/250000",
                "-36853118039/100000000000"
              ],
              [
                "157661/250000",
                "-39793616169/100000000000"
              ],
              [
                "343733/1000000",
                "-24601078591/100000000000"
              ],
              [
                "343733/1000000",
                "-33030257123/125000000000"
              ],
              [
                "343733/1000000",
                "-37260368261/100000000000"
              ],
              [
                "343733/1000000",
                "-93950983659/250000000000"
              ],
              [
                "157661/250000",
                "-28119181273/100000000000"
              ],
              [
                "157661/250000",
                "-162813906539/500000000000"
              ],
              [
                "157661/250000",
                "-40778470943/100000000000"
              ],
              [
                "157661/250000",
                "-43718969073/100000000000"
              ]
            ],
            "raw": [
              "26286525921/63064400000",
              "146093/250000"
            ],
            "new": [
              "20841/50000",
              "146093/250000"
            ]
          },
          {
            "factor": 138,
            "target": "x",
            "old": [
              "343733/1000000",
              "157661/250000"
            ],
            "lines": [
              [
                "1471/5000",
                "-18553569193/100000000000"
              ],
              [
                "101433/500000",
                "-86186226591/500000000000"
              ],
              [
                "1471/5000",
                "-29120161311/100000000000"
              ],
              [
                "101433/500000",
                "-131503677657/500000000000"
              ],
              [
                "57719/125000",
                "-18553569193/100000000000"
              ],
              [
                "185209/500000",
                "-86186226591/500000000000"
              ],
              [
                "57719/125000",
                "-29120161311/100000000000"
              ],
              [
                "185209/500000",
                "-131503677657/500000000000"
              ],
              [
                "1471/5000",
                "-4077244909/20000000000"
              ],
              [
                "101433/500000",
                "-95349503351/500000000000"
              ],
              [
                "1471/5000",
                "-6609102843/20000000000"
              ],
              [
                "101433/500000",
                "-151130442177/500000000000"
              ],
              [
                "57719/125000",
                "-4077244909/20000000000"
              ],
              [
                "185209/500000",
                "-95349503351/500000000000"
              ],
              [
                "57719/125000",
                "-6609102843/20000000000"
              ],
              [
                "185209/500000",
                "-151130442177/500000000000"
              ]
            ],
            "raw": [
              "18553569193/46175200000",
              "157661/250000"
            ],
            "new": [
              "25113/62500",
              "157661/250000"
            ]
          },
          {
            "factor": 144,
            "target": "g",
            "old": [
              "72061/500000",
              "154347/500000"
            ],
            "lines": [
              [
                "-43869/50000",
                "5889991/62500000"
              ],
              [
                "-393023/500000",
                "138220143/6250000000"
              ],
              [
                "-43869/50000",
                "57444877/500000000"
              ],
              [
                "-393023/500000",
                "1817719371/50000000000"
              ],
              [
                "-43869/50000",
                "353987999/1562500000"
              ],
              [
                "-393023/500000",
                "965173039/6250000000"
              ],
              [
                "-43869/50000",
                "3237033653/12500000000"
              ],
              [
                "-393023/500000",
                "9021366283/50000000000"
              ]
            ],
            "raw": [
              "72061/500000",
              "462433379/1566750000"
            ],
            "new": [
              "72061/500000",
              "59031/200000"
            ]
          },
          {
            "factor": 144,
            "target": "z",
            "old": [
              "20841/50000",
              "146093/250000"
            ],
            "lines": [
              [
                "9871/12500",
                "-9034108049/25000000000"
              ],
              [
                "9871/12500",
                "-105081429083/250000000000"
              ],
              [
                "85987/100000",
                "-4624637747/12500000000"
              ],
              [
                "85987/100000",
                "-54417893449/125000000000"
              ],
              [
                "9871/12500",
                "-987755311/2000000000"
              ],
              [
                "9871/12500",
                "-10780892037/20000000000"
              ],
              [
                "85987/100000",
                "-5024843533/10000000000"
              ],
              [
                "85987/100000",
                "-55406203311/100000000000"
              ]
            ],
            "raw": [
              "4624637747/10748375000",
              "146093/250000"
            ],
            "new": [
              "430263/1000000",
              "146093/250000"
            ]
          },
          {
            "factor": 206,
            "target": "z",
            "old": [
              "430263/1000000",
              "146093/250000"
            ],
            "lines": [
              [
                "-37387/62500",
                "57483810643/250000000000"
              ],
              [
                "-37387/62500",
                "89135244001/500000000000"
              ],
              [
                "-37387/62500",
                "99873232233/500000000000"
              ],
              [
                "-37387/62500",
                "178363071231/1000000000000"
              ],
              [
                "-92339/250000",
                "3146499477/31250000000"
              ],
              [
                "-92339/250000",
                "1571377437/500000000000"
              ],
              [
                "-92339/250000",
                "35249602579/500000000000"
              ],
              [
                "-92339/250000",
                "3235338103/1000000000000"
              ],
              [
                "-37387/62500",
                "84692172263/250000000000"
              ],
              [
                "-37387/62500",
                "143551967241/500000000000"
              ],
              [
                "-37387/62500",
                "144687277333/500000000000"
              ],
              [
                "-37387/62500",
                "267991161431/1000000000000"
              ],
              [
                "-92339/250000",
                "13095089359/62500000000"
              ],
              [
                "-92339/250000",
                "55988100677/500000000000"
              ],
              [
                "-92339/250000",
                "80063647679/500000000000"
              ],
              [
                "-92339/250000",
                "92863428303/1000000000000"
              ]
            ],
            "raw": [
              "430263/1000000",
              "13095089359/23084750000"
            ],
            "new": [
              "430263/1000000",
              "283631/500000"
            ]
          },
          {
            "factor": 206,
            "target": "y",
            "old": [
              "152937/200000",
              "178369/200000"
            ],
            "lines": [
              [
                "427939/500000",
                "-340960855177/500000000000"
              ],
              [
                "427939/500000",
                "-183396616231/250000000000"
              ],
              [
                "140969/200000",
                "-119323563771/200000000000"
              ],
              [
                "140969/200000",
                "-61800121209/100000000000"
              ],
              [
                "427939/500000",
                "-381936708081/500000000000"
              ],
              [
                "427939/500000",
                "-203884542683/250000000000"
              ],
              [
                "140969/200000",
                "-678569524663/1000000000000"
              ],
              [
                "140969/200000",
                "-349976458949/500000000000"
              ],
              [
                "427939/500000",
                "-356354652897/500000000000"
              ],
              [
                "427939/500000",
                "-101281816773/125000000000"
              ],
              [
                "140969/200000",
                "-125481082859/200000000000"
              ],
              [
                "140969/200000",
                "-13893385627/20000000000"
              ],
              [
                "427939/500000",
                "-381655354219/500000000000"
              ],
              [
                "427939/500000",
                "-215213984207/250000000000"
              ],
              [
                "140969/200000",
                "-678006816939/1000000000000"
              ],
              [
                "140969/200000",
                "-372635341997/500000000000"
              ]
            ],
            "raw": [
              "340960855177/427939000000",
              "178369/200000"
            ],
            "new": [
              "796751/1000000",
              "178369/200000"
            ]
          },
          {
            "factor": 218,
            "target": "v",
            "old": [
              "247599/500000",
              "675533/1000000"
            ],
            "lines": [
              [
                "427939/500000",
                "-243529914817/500000000000"
              ],
              [
                "427939/500000",
                "-65689797443/125000000000"
              ],
              [
                "140969/200000",
                "-80351187627/200000000000"
              ],
              [
                "140969/200000",
                "-40993312671/100000000000"
              ],
              [
                "427939/500000",
                "-289017692787/500000000000"
              ],
              [
                "427939/500000",
                "-154123483871/250000000000"
              ],
              [
                "140969/200000",
                "-19709259763/40000000000"
              ],
              [
                "140969/200000",
                "-10018173653/20000000000"
              ],
              [
                "427939/500000",
                "-264647111407/500000000000"
              ],
              [
                "427939/500000",
                "-630691561639/1000000000000"
              ],
              [
                "140969/200000",
                "-88798066263/200000000000"
              ],
              [
                "140969/200000",
                "-103021261761/200000000000"
              ],
              [
                "427939/500000",
                "-577263463671/1000000000000"
              ],
              [
                "427939/500000",
                "-10604075039/15625000000"
              ],
              [
                "140969/200000",
                "-122989893043/250000000000"
              ],
              [
                "140969/200000",
                "-281537774831/500000000000"
              ]
            ],
            "raw": [
              "243529914817/427939000000",
              "675533/1000000"
            ],
            "new": [
              "142269/250000",
              "675533/1000000"
            ]
          },
          {
            "factor": 248,
            "target": "b",
            "old": [
              "123/1000",
              "111691/250000"
            ],
            "lines": [
              [
                "2767638543/6250000000",
                "-3217679/50000000"
              ],
              [
                "25330071671/50000000000",
                "-11341/160000"
              ],
              [
                "12417/25000",
                "-793003/12500000"
              ],
              [
                "56687/100000",
                "-6996791/100000000"
              ]
            ],
            "raw": [
              "6996791/56687000",
              "111691/250000"
            ],
            "new": [
              "30857/250000",
              "111691/250000"
            ]
          },
          {
            "factor": 901,
            "target": "e",
            "old": [
              "564803/1000000",
              "382649/500000"
            ],
            "lines": [
              [
                "-322779/500000",
                "103083401407/250000000000"
              ],
              [
                "-178937/250000",
                "59514109021/125000000000"
              ],
              [
                "-19781/40000",
                "5501901073/20000000000"
              ],
              [
                "-112943/200000",
                "33887432019/100000000000"
              ],
              [
                "-322779/500000",
                "94259/200000"
              ],
              [
                "-178937/250000",
                "108297/200000"
              ],
              [
                "-19781/40000",
                "160131/500000"
              ],
              [
                "-112943/200000",
                "97613/250000"
              ],
              [
                "-322779/500000",
                "68833651407/250000000000"
              ],
              [
                "-178937/250000",
                "42389234021/125000000000"
              ],
              [
                "-19781/40000",
                "2761921073/20000000000"
              ],
              [
                "-112943/200000",
                "20187532019/100000000000"
              ],
              [
                "-322779/500000",
                "41787/125000"
              ],
              [
                "-178937/250000",
                "202243/500000"
              ],
              [
                "-19781/40000",
                "183263/1000000"
              ],
              [
                "-112943/200000",
                "253453/1000000"
              ]
            ],
            "raw": [
              "564803/1000000",
              "541485/715748"
            ],
            "new": [
              "564803/1000000",
              "756531/1000000"
            ]
          },
          {
            "factor": 1962,
            "target": "u",
            "old": [
              "16797/50000",
              "649857/1000000"
            ],
            "lines": [
              [
                "-1555047280677837/2500000000000000",
                "41372482624029815031/156250000000000000000"
              ],
              [
                "-1555047280677837/2500000000000000",
                "41887265251539815031/156250000000000000000"
              ],
              [
                "-1555047280677837/2500000000000000",
                "341074093436212066623/1250000000000000000000"
              ],
              [
                "-1555047280677837/2500000000000000",
                "345937602221017066623/1250000000000000000000"
              ],
              [
                "-1555047280677837/2500000000000000",
                "28425022386826604379/78125000000000000000"
              ],
              [
                "-1555047280677837/2500000000000000",
                "28530558452782229379/78125000000000000000"
              ],
              [
                "-1555047280677837/2500000000000000",
                "464894590633199216439/1250000000000000000000"
              ],
              [
                "-1555047280677837/2500000000000000",
                "467328415453214216439/1250000000000000000000"
              ],
              [
                "-348129124917603/500000000000000",
                "49441481671691650221/156250000000000000000"
              ],
              [
                "-348129124917603/500000000000000",
                "49956264299201650221/156250000000000000000"
              ],
              [
                "-348129124917603/500000000000000",
                "411363731883309445053/1250000000000000000000"
              ],
              [
                "-348129124917603/500000000000000",
                "416227240668114445053/1250000000000000000000"
              ],
              [
                "-348129124917603/500000000000000",
                "16229760955328760987/39062500000000000000"
              ],
              [
                "-348129124917603/500000000000000",
                "16282528988306573487/39062500000000000000"
              ],
              [
                "-348129124917603/500000000000000",
                "535184229080296594869/1250000000000000000000"
              ],
              [
                "-348129124917603/500000000000000",
                "537618053900311594869/1250000000000000000000"
              ],
              [
                "-1555047280677837/2500000000000000",
                "36335578883260366353/156250000000000000000"
              ],
              [
                "-1555047280677837/2500000000000000",
                "36850361510770366353/156250000000000000000"
              ],
              [
                "-1555047280677837/2500000000000000",
                "146743483879805406297/625000000000000000000"
              ],
              [
                "-1555047280677837/2500000000000000",
                "149175238272207906297/625000000000000000000"
              ],
              [
                "-1555047280677837/2500000000000000",
                "219139216474810322451/625000000000000000000"
              ],
              [
                "-1555047280677837/2500000000000000",
                "219983505002455322451/625000000000000000000"
              ],
              [
                "-1555047280677837/2500000000000000",
                "27567548102696782917/78125000000000000000"
              ],
              [
                "-1555047280677837/2500000000000000",
                "27719662153947720417/78125000000000000000"
              ],
              [
                "-348129124917603/500000000000000",
                "44404577930922201543/156250000000000000000"
              ],
              [
                "-348129124917603/500000000000000",
                "44919360558432201543/156250000000000000000"
              ],
              [
                "-348129124917603/500000000000000",
                "22736037887919261939/78125000000000000000"
              ],
              [
                "-348129124917603/500000000000000",
                "23040007186969574439/78125000000000000000"
              ],
              [
                "-348129124917603/500000000000000",
                "251415212665457663211/625000000000000000000"
              ],
              [
                "-348129124917603/500000000000000",
                "252259501193102663211/625000000000000000000"
              ],
              [
                "-348129124917603/500000000000000",
                "255685204045122952551/625000000000000000000"
              ],
              [
                "-348129124917603/500000000000000",
                "256902116455130452551/625000000000000000000"
              ]
            ],
            "raw": [
              "16797/50000",
              "179206017966770531623/290107604098002500000"
            ],
            "new": [
              "16797/50000",
              "617723/1000000"
            ]
          },
          {
            "factor": 3949,
            "target": "u",
            "old": [
              "16797/50000",
              "617723/1000000"
            ],
            "lines": [
              [
                "52314173978139029/125000000000000000",
                "-35341332850239/250000000000000"
              ],
              [
                "11558892365300797/31250000000000000",
                "-7808718582327/62500000000000"
              ],
              [
                "52314173978139029/125000000000000000",
                "-9156023768361/62500000000000"
              ],
              [
                "11558892365300797/31250000000000000",
                "-2023036687473/15625000000000"
              ],
              [
                "52314173978139029/125000000000000000",
                "-15240618775413/100000000000000"
              ],
              [
                "11558892365300797/31250000000000000",
                "-3367436750109/25000000000000"
              ],
              [
                "52314173978139029/125000000000000000",
                "-3150744732939/20000000000000"
              ],
              [
                "11558892365300797/31250000000000000",
                "-696161603427/5000000000000"
              ],
              [
                "5839277849507487/12500000000000000",
                "-3944779137117/25000000000000"
              ],
              [
                "5839277849507487/12500000000000000",
                "-1021990078683/6250000000000"
              ],
              [
                "5839277849507487/12500000000000000",
                "-1701149055039/10000000000000"
              ],
              [
                "5839277849507487/12500000000000000",
                "-351684305217/2000000000000"
              ]
            ],
            "raw": [
              "44960896500/133107156523",
              "617723/1000000"
            ],
            "new": [
              "337779/1000000",
              "617723/1000000"
            ]
          }
        ]
      }
    },
    {
      "id": 6,
      "assumptions": [
        "AGO-",
        "AGP-",
        "DGP-",
        "AFG+",
        "EGP-"
      ],
      "initial_box": {
        "low": [
          "6131/50000",
          "30857/250000",
          "9871/12500",
          "6131/50000",
          "564803/1000000",
          "9871/12500",
          "72061/500000",
          "454333/500000",
          "430263/1000000",
          "25113/62500",
          "796751/1000000",
          "337779/1000000",
          "142269/250000"
        ],
        "high": [
          "106977/500000",
          "111691/250000",
          "85987/100000",
          "172051/500000",
          "756531/1000000",
          "85987/100000",
          "59031/200000",
          "1",
          "283631/500000",
          "157661/250000",
          "178369/200000",
          "617723/1000000",
          "675533/1000000"
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
        "AFG": 1,
        "ADG": 1,
        "AEG": 1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "BDG": 1,
        "ADO": 1,
        "ADP": 1,
        "BDO": 1,
        "BDP": 1,
        "BEG": 1,
        "BFG": 1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "DGH": -1,
        "EGH": -1,
        "GHO": -1,
        "GHP": -1,
        "BHO": -1,
        "BHP": -1,
        "DOP": 1,
        "CFO": 1,
        "DFO": 1,
        "CFP": 1,
        "DFP": 1,
        "BEO": 1,
        "EGO": -1,
        "DHO": -1,
        "AEO": 1,
        "AOP": -1,
        "GOP": -1,
        "FGP": 1,
        "EGP": -1,
        "AEP": 1,
        "BEP": 1,
        "AFO": 1,
        "BFO": 1,
        "AFP": -1,
        "BOP": -1,
        "FGO": -1,
        "EHO": -1
      },
      "trace": [
        {
          "rule": [
            "plu",
            "ABDFG"
          ],
          "target": "ADG",
          "sign": 1,
          "deps": [
            "ABD",
            "AFG",
            "ABF",
            "ABG",
            "ADF"
          ],
          "area_stage": null
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
            "DABCG"
          ],
          "target": "BDG",
          "sign": 1,
          "deps": [
            "ABD",
            "CDG",
            "ACD",
            "ADG",
            "BCD"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DACGO"
          ],
          "target": "ADO",
          "sign": 1,
          "deps": [
            "ACD",
            "DGO",
            "ADG",
            "CDO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DACGP"
          ],
          "target": "ADP",
          "sign": 1,
          "deps": [
            "ACD",
            "DGP",
            "ADG",
            "CDP",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DBCGO"
          ],
          "target": "BDO",
          "sign": 1,
          "deps": [
            "BCD",
            "DGO",
            "BDG",
            "CDO",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "DBCGP"
          ],
          "target": "BDP",
          "sign": 1,
          "deps": [
            "BCD",
            "DGP",
            "BDG",
            "CDP",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "EABCG"
          ],
          "target": "BEG",
          "sign": 1,
          "deps": [
            "ABE",
            "CEG",
            "ACE",
            "AEG",
            "BCE"
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
        },
        {
          "rule": [
            "plu",
            "FADEG"
          ],
          "target": "DFG",
          "sign": 1,
          "deps": [
            "ADF",
            "EFG",
            "AEF",
            "AFG",
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
            "GACDH"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ACG",
            "ADG",
            "CGH",
            "AGH",
            "CDG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GACEH"
          ],
          "target": "EGH",
          "sign": -1,
          "deps": [
            "ACG",
            "AEG",
            "CGH",
            "AGH",
            "CEG"
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
            "ray",
            "GDH",
            "OP",
            "DHG",
            [
              "area",
              "DGH",
              "T0101",
              "159703/250000"
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
            "plu",
            "EABGO"
          ],
          "target": "AEO",
          "sign": 1,
          "deps": [
            "ABE",
            "EGO",
            "AEG",
            "BEO",
            "BEG"
          ],
          "area_stage": null
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
              "15987749967/25000000000"
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
              "71536684683/125000000000"
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
            "EACGP"
          ],
          "target": "AEP",
          "sign": 1,
          "deps": [
            "ACE",
            "EGP",
            "AEG",
            "CEP",
            "CEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "EBCGP"
          ],
          "target": "BEP",
          "sign": 1,
          "deps": [
            "BCE",
            "EGP",
            "BEG",
            "CEP",
            "CEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "ray",
            "AEF",
            "OP",
            "FAE",
            [
              "HCF2-AEF-cap1"
            ]
          ],
          "target": "AFO",
          "sign": 1,
          "deps": [
            "AEO",
            "EFO",
            "AEP",
            "EFP",
            "FOP"
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
            "cap",
            "AFH",
            [
              "G",
              "O"
            ],
            "P",
            [
              "area",
              "AFH",
              "U_AFH",
              "9666928971/12500000000"
            ]
          ],
          "target": "AFP",
          "sign": -1,
          "deps": [
            "FHP",
            "AHP"
          ],
          "area_stage": 5
        },
        {
          "rule": [
            "cap",
            "HBO",
            [
              "G"
            ],
            "P",
            [
              "area",
              "BHO",
              "T0131",
              "329129/500000"
            ]
          ],
          "target": "BOP",
          "sign": -1,
          "deps": [
            "BHP",
            "HOP"
          ],
          "area_stage": 5
        },
        {
          "rule": [
            "cap",
            "EFG",
            [
              "P"
            ],
            "O",
            [
              "area",
              "EFG",
              "U_EFG",
              "133107156523/250000000000"
            ]
          ],
          "target": "FGO",
          "sign": -1,
          "deps": [
            "EFO",
            "EGO"
          ],
          "area_stage": 5
        },
        {
          "rule": [
            "cap",
            "GEH",
            [
              "P"
            ],
            "O",
            [
              "area",
              "EGH",
              "T0619",
              "118227/200000"
            ]
          ],
          "target": "EHO",
          "sign": -1,
          "deps": [
            "EGO",
            "GHO"
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
        "L_ABO": {
          "triangle": "ABO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ABO",
            "points": []
          }
        },
        "L_ACD": {
          "triangle": "ACD",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "ACD",
            "points": []
          }
        },
        "L_AEO": {
          "triangle": "AEO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "AEO",
            "points": [
              "P"
            ]
          }
        },
        "L_AFH": {
          "triangle": "AFH",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "AFH",
            "points": [
              "G",
              "O"
            ]
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
        "L_BEH": {
          "triangle": "BEH",
          "side": "lo",
          "value": "13857/20000",
          "witness": {
            "kind": "occupants",
            "triangle": "BEH",
            "points": [
              "G",
              "P"
            ]
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
        "L_DOP": {
          "triangle": "DOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DOP",
            "points": []
          }
        },
        "L_EFH": {
          "triangle": "EFH",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EFH",
            "points": [
              "O"
            ]
          }
        },
        "L_EGO": {
          "triangle": "EGO",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GEO",
            "points": [
              "P"
            ]
          }
        },
        "L_EGP": {
          "triangle": "EGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GEP",
            "points": []
          }
        },
        "L_EHO": {
          "triangle": "EHO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HEO",
            "points": []
          }
        },
        "L_EHP": {
          "triangle": "EHP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EHP",
            "points": []
          }
        },
        "L_EOP": {
          "triangle": "EOP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EOP",
            "points": []
          }
        },
        "L_FGH": {
          "triangle": "FGH",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GFH",
            "points": [
              "O"
            ]
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
          "value": "68049968499/100000000000",
          "witness": {
            "kind": "vertices",
            "signed": "ACE",
            "used": [
              0,
              2,
              4
            ],
            "values": [
              "5897538393/12500000000",
              "6137655479/12500000000",
              "50283989621/100000000000",
              "51563852963/100000000000",
              "7790085481/12500000000",
              "8030202567/12500000000",
              "66770105157/100000000000",
              "68049968499/100000000000"
            ],
            "cell": "CB"
          }
        },
        "U_ACF": {
          "triangle": "ACF",
          "side": "hi",
          "value": "85987/100000",
          "witness": {
            "kind": "vertices",
            "signed": "ACF",
            "used": [
              0,
              2,
              5
            ],
            "values": [
              "9871/12500",
              "3991433489/5000000000",
              "40234871563/50000000000",
              "42242628437/50000000000",
              "4256316511/5000000000",
              "85987/100000"
            ],
            "cell": "CB"
          }
        },
        "U_ACO": {
          "triangle": "ACO",
          "side": "hi",
          "value": "73876306803/100000000000",
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
              "34136972737/62500000000",
              "7270218313/12500000000",
              "293549042611/500000000000",
              "74393992667/125000000000",
              "1905241673/3125000000",
              "38830337107/62500000000",
              "62893471993/100000000000",
              "318029231383/500000000000",
              "8208891187/12500000000",
              "2627978361/4000000000",
              "334433281501/500000000000",
              "83780721407/125000000000",
              "4279819783/6250000000",
              "71070319771/100000000000",
              "358913470273/500000000000",
              "73876306803/100000000000"
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
              "16853390981/25000000000",
              "2135221023/3125000000",
              "34346713633/50000000000",
              "4390500589/6250000000",
              "5363566457/6250000000",
              "43229068329/50000000000",
              "43869/50000"
            ],
            "cell": "CB"
          }
        },
        "U_ADO": {
          "triangle": "ADO",
          "side": "hi",
          "value": "30769/40000",
          "witness": {
            "kind": "vertices",
            "signed": "ADO",
            "used": [
              0,
              3,
              9,
              10
            ],
            "values": [
              "31294996543/62500000000",
              "2072275361/3906250000",
              "66806838199/125000000000",
              "18285555017/31250000000",
              "37238371543/62500000000",
              "19359241621/31250000000",
              "4887472597/7812500000",
              "78693588199/125000000000",
              "80049529887/125000000000",
              "674131/1000000",
              "21257242517/31250000000",
              "22330929121/31250000000",
              "91936279887/125000000000",
              "30769/40000"
            ],
            "cell": "CB"
          }
        },
        "U_AEF": {
          "triangle": "AEF",
          "side": "hi",
          "value": "6602461607/12500000000",
          "witness": {
            "kind": "vertices",
            "signed": "AEF",
            "used": [
              0,
              4,
              5
            ],
            "values": [
              "31950031501/100000000000",
              "33229894843/100000000000",
              "4469797433/12500000000",
              "4709914519/12500000000",
              "48436147037/100000000000",
              "49716010379/100000000000",
              "6362344521/12500000000",
              "6602461607/12500000000"
            ],
            "cell": "CB"
          }
        },
        "U_AEG": {
          "triangle": "AEG",
          "side": "hi",
          "value": "190456850837/500000000000",
          "witness": {
            "kind": "vertices",
            "signed": "AEG",
            "used": [
              0,
              4,
              6,
              8
            ],
            "values": [
              "11232937113/200000000000",
              "22550832681/200000000000",
              "24108199759/200000000000",
              "69055858803/500000000000",
              "82871970211/500000000000",
              "35426095327/200000000000",
              "38632737113/200000000000",
              "108141239429/500000000000",
              "121957350837/500000000000",
              "49950632681/200000000000",
              "51507999759/200000000000",
              "137555358803/500000000000",
              "151371470211/500000000000",
              "62825895327/200000000000",
              "176640739429/500000000000",
              "190456850837/500000000000"
            ],
            "cell": "CB"
          }
        },
        "U_AEH": {
          "triangle": "AEH",
          "side": "hi",
          "value": "43869/50000",
          "witness": {
            "kind": "vertices",
            "signed": "AEH",
            "used": [
              0,
              4,
              7
            ],
            "values": [
              "86839/125000",
              "393023/500000",
              "43869/50000"
            ],
            "cell": "CB"
          }
        },
        "U_AFH": {
          "triangle": "AFH",
          "side": "hi",
          "value": "3772163703/5000000000",
          "witness": {
            "kind": "vertices",
            "signed": "AFH",
            "used": [
              0,
              5,
              7
            ],
            "values": [
              "857187769/1562500000",
              "7467025093/12500000000",
              "3879530033/6250000000",
              "33794868701/50000000000",
              "433030899/625000000",
              "3772163703/5000000000"
            ],
            "cell": "CB"
          }
        },
        "U_AHO": {
          "triangle": "AHO",
          "side": "hi",
          "value": "6916430409/12500000000",
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
              "2180787807/7812500000",
              "9869986599/31250000000",
              "1101682197/3125000000",
              "13691123579/31250000000",
              "61964399203/125000000000",
              "6916430409/12500000000"
            ],
            "cell": "CB"
          }
        },
        "U_AHP": {
          "triangle": "AHP",
          "side": "hi",
          "value": "27098890287/50000000000",
          "witness": {
            "kind": "vertices",
            "signed": "HAP",
            "used": [
              0,
              7,
              11,
              12
            ],
            "values": [
              "29332390581/125000000000",
              "132754915917/500000000000",
              "14818026951/50000000000",
              "53642447597/125000000000",
              "242779346629/500000000000",
              "27098890287/50000000000"
            ],
            "cell": "CB"
          }
        },
        "U_BCE": {
          "triangle": "BCE",
          "side": "hi",
          "value": "278570601351/500000000000",
          "witness": {
            "kind": "vertices",
            "signed": "BCE",
            "used": [
              1,
              2,
              4
            ],
            "values": [
              "48419996387/250000000000",
              "116661754059/500000000000",
              "64856646099/250000000000",
              "156263747643/500000000000",
              "94075282089/250000000000",
              "207972325463/500000000000",
              "126010072953/250000000000",
              "278570601351/500000000000"
            ],
            "cell": "CB"
          }
        },
        "U_BCF": {
          "triangle": "BCF",
          "side": "hi",
          "value": "368221/500000",
          "witness": {
            "kind": "vertices",
            "signed": "BCF",
            "used": [
              1,
              2,
              5
            ],
            "values": [
              "85729/250000",
              "206553/500000",
              "166563/250000",
              "368221/500000"
            ],
            "cell": "CB"
          }
        },
        "U_BCO": {
          "triangle": "BCO",
          "side": "hi",
          "value": "65679211549/100000000000",
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
              "68304666479/250000000000",
              "15291396001/50000000000",
              "164571309303/500000000000",
              "36842652057/100000000000",
              "132709236813/250000000000",
              "293380449971/500000000000",
              "29709675747/50000000000",
              "65679211549/100000000000"
            ],
            "cell": "CB"
          }
        },
        "U_BEH": {
          "triangle": "BEH",
          "side": "hi",
          "value": "242487277067/250000000000",
          "witness": {
            "kind": "vertices",
            "signed": "BEH",
            "used": [
              1,
              4,
              7
            ],
            "values": [
              "188760097667/250000000000",
              "201392411873/250000000000",
              "42034877943/50000000000",
              "216555919409/250000000000",
              "44494414061/50000000000",
              "222806703921/250000000000",
              "236571126171/250000000000",
              "242487277067/250000000000"
            ],
            "cell": "CB"
          }
        },
        "U_BFH": {
          "triangle": "BFH",
          "side": "hi",
          "value": "85987/100000",
          "witness": {
            "kind": "vertices",
            "signed": "BFH",
            "used": [
              1,
              5,
              7
            ],
            "values": [
              "91103567479/125000000000",
              "94795013757/125000000000",
              "9871/12500",
              "198151951593/250000000000",
              "205534844149/250000000000",
              "85987/100000"
            ],
            "cell": "CB"
          }
        },
        "U_BHO": {
          "triangle": "BHO",
          "side": "hi",
          "value": "30864732233/50000000000",
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
              "77750915941/250000000000",
              "78777418767/250000000000",
              "87823955877/250000000000",
              "17674411979/50000000000",
              "89398562721/250000000000",
              "18151654287/50000000000",
              "94180345607/250000000000",
              "19422932233/50000000000",
              "130761291961/250000000000",
              "134959915941/250000000000",
              "139807829071/250000000000",
              "28276487183/50000000000",
              "142742144629/250000000000",
              "29116211979/50000000000",
              "151389345607/250000000000",
              "30864732233/50000000000"
            ],
            "cell": "CB"
          }
        },
        "U_CDF": {
          "triangle": "CDF",
          "side": "hi",
          "value": "2629/12500",
          "witness": {
            "kind": "vertices",
            "signed": "CDF",
            "used": [
              2,
              3,
              5
            ],
            "values": [
              "14013/100000",
              "743683489/5000000000",
              "8214125969/50000000000",
              "9308374031/50000000000",
              "1008566511/5000000000",
              "2629/12500"
            ],
            "cell": "CB"
          }
        },
        "U_CEF": {
          "triangle": "CEF",
          "side": "hi",
          "value": "2629/12500",
          "witness": {
            "kind": "vertices",
            "signed": "CEF",
            "used": [
              2,
              4,
              5
            ],
            "values": [
              "14013/100000",
              "15721908911/100000000000",
              "17067647743/100000000000",
              "17977352257/100000000000",
              "19323091089/100000000000",
              "2629/12500"
            ],
            "cell": "CB"
          }
        },
        "U_CEH": {
          "triangle": "CEH",
          "side": "hi",
          "value": "10096717501/12500000000",
          "witness": {
            "kind": "vertices",
            "signed": "CEH",
            "used": [
              2,
              4,
              7
            ],
            "values": [
              "61298852219/100000000000",
              "62578715561/100000000000",
              "7964053327/12500000000",
              "8204170413/12500000000",
              "15556993551/20000000000",
              "1971320083/2500000000",
              "79064831097/100000000000",
              "10096717501/12500000000"
            ],
            "cell": "CB"
          }
        },
        "U_CFG": {
          "triangle": "CFG",
          "side": "hi",
          "value": "178937/250000",
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
              "19781/40000",
              "52472515997/100000000000",
              "26244944011/50000000000",
              "26717055989/50000000000",
              "53451484003/100000000000",
              "112943/200000",
              "322779/500000",
              "67575815997/100000000000",
              "33796594011/50000000000",
              "34268705989/50000000000",
              "68554784003/100000000000",
              "178937/250000"
            ],
            "cell": "CB"
          }
        },
        "U_CGH": {
          "triangle": "CGH",
          "side": "hi",
          "value": "34577775419/100000000000",
          "witness": {
            "kind": "vertices",
            "signed": "GCH",
            "used": [
              2,
              6,
              7,
              8
            ],
            "values": [
              "140259749/100000000000",
              "101462977/4000000000",
              "291059649/6250000000",
              "3847171203/50000000000",
              "10958796781/100000000000",
              "34660287367/250000000000",
              "7158353719/50000000000",
              "1934436427/12500000000",
              "40651074057/250000000000",
              "19474475419/100000000000",
              "1235015899/6250000000",
              "11398821203/50000000000",
              "61706629947/250000000000",
              "140202813179/500000000000",
              "3822348927/12500000000",
              "34577775419/100000000000"
            ],
            "cell": "CB"
          }
        },
        "U_CGO": {
          "triangle": "CGO",
          "side": "hi",
          "value": "269854404311/500000000000",
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
              "173988241811/1000000000000",
              "190096074721/1000000000000",
              "221014602161/1000000000000",
              "227126317939/1000000000000",
              "243797082931/1000000000000",
              "252850110659/1000000000000",
              "274152678289/1000000000000",
              "147161967797/500000000000",
              "303798208843/1000000000000",
              "306551118869/1000000000000",
              "38803971063/125000000000",
              "319906041753/1000000000000",
              "325585981807/1000000000000",
              "173731005861/500000000000",
              "350824569193/1000000000000",
              "351309774527/1000000000000",
              "177856314023/500000000000",
              "372612342157/1000000000000",
              "186592902221/500000000000",
              "373607049963/1000000000000",
              "23655944301/62500000000",
              "405010782737/1000000000000",
              "204425352087/500000000000",
              "212066951313/500000000000",
              "27515108471/62500000000",
              "220624572377/500000000000",
              "44592167559/100000000000",
              "47164546831/100000000000",
              "242761297539/500000000000",
              "253655184021/500000000000",
              "63538134481/125000000000",
              "269854404311/500000000000"
            ],
            "cell": "CB"
          }
        },
        "U_CHO": {
          "triangle": "CHO",
          "side": "hi",
          "value": "69970194203/125000000000",
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
              "22704028237/100000000000",
              "3016329121/12500000000",
              "134438458539/500000000000",
              "17295764433/62500000000",
              "6176175203/20000000000",
              "791000399/2500000000",
              "175322697429/500000000000",
              "21989128803/62500000000",
              "45587628237/100000000000",
              "5876779121/12500000000",
              "238406204927/500000000000",
              "60583465463/125000000000",
              "10752895203/20000000000",
              "1363090399/2500000000",
              "279290443817/500000000000",
              "69970194203/125000000000"
            ],
            "cell": "CB"
          }
        },
        "U_DFG": {
          "triangle": "DFG",
          "side": "hi",
          "value": "14156404521/20000000000",
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
              "41537141461/100000000000",
              "43103501501/100000000000",
              "44418504429/100000000000",
              "5627908561/12500000000",
              "128608414311/250000000000",
              "26244990033/50000000000",
              "132524314411/250000000000",
              "135811821731/250000000000",
              "274647463757/500000000000",
              "27685671517/50000000000",
              "6951365283/12500000000",
              "57530689251/100000000000",
              "3287065671/5000000000",
              "17155669097/25000000000",
              "34431127809/50000000000",
              "14156404521/20000000000"
            ],
            "cell": "CB"
          }
        },
        "U_DFH": {
          "triangle": "DFH",
          "side": "hi",
          "value": "38361568701/50000000000",
          "witness": {
            "kind": "vertices",
            "signed": "DFH",
            "used": [
              3,
              5,
              7
            ],
            "values": [
              "3237184579/6250000000",
              "1678621561/3125000000",
              "28199350663/50000000000",
              "14419641167/25000000000",
              "433030899/625000000",
              "4450367533/6250000000",
              "3772163703/5000000000",
              "38361568701/50000000000"
            ],
            "cell": "CB"
          }
        },
        "U_EFG": {
          "triangle": "EFG",
          "side": "hi",
          "value": "200385995383/500000000000",
          "witness": {
            "kind": "vertices",
            "signed": "EFG",
            "used": [
              4,
              5,
              6,
              8
            ],
            "values": [
              "7925206891/40000000000",
              "42282992677/200000000000",
              "43465568429/200000000000",
              "29362753219/125000000000",
              "48045718613/200000000000",
              "124093408431/500000000000",
              "127049847811/500000000000",
              "138500223271/500000000000",
              "61245850517/200000000000",
              "61280369959/200000000000",
              "65119903933/200000000000",
              "67008576453/200000000000",
              "185979180543/500000000000",
              "46516369787/125000000000",
              "195664314083/500000000000",
              "200385995383/500000000000"
            ],
            "cell": "CB"
          }
        },
        "U_EFH": {
          "triangle": "EFH",
          "side": "hi",
          "value": "38701147781/100000000000",
          "witness": {
            "kind": "vertices",
            "signed": "EFH",
            "used": [
              4,
              5,
              7
            ],
            "values": [
              "2403282499/12500000000",
              "20935168903/100000000000",
              "528679917/2500000000",
              "4443006449/20000000000",
              "4295829587/12500000000",
              "4535946673/12500000000",
              "37421284439/100000000000",
              "38701147781/100000000000"
            ],
            "cell": "CB"
          }
        },
        "U_EGO": {
          "triangle": "EGO",
          "side": "hi",
          "value": "90097201139/250000000000",
          "witness": {
            "kind": "vertices",
            "signed": "GEO",
            "used": [
              4,
              6,
              8,
              9,
              10
            ],
            "values": [
              "12282063333/125000000000",
              "26082763481/250000000000",
              "35392016887/250000000000",
              "18455326851/125000000000",
              "37214477327/250000000000",
              "19366557071/125000000000",
              "40504108483/250000000000",
              "20322392707/125000000000",
              "82641518547/500000000000",
              "23214989557/125000000000",
              "24631029527/125000000000",
              "9880547197/50000000000",
              "104297298989/500000000000",
              "2131805443/10000000000",
              "107942219869/500000000000",
              "55879943339/250000000000",
              "11451573867/50000000000",
              "114521482181/500000000000",
              "28699290077/125000000000",
              "114802836043/500000000000",
              "2363213191/10000000000",
              "12198406987/50000000000",
              "31026543323/125000000000",
              "69609274687/250000000000",
              "34874975809/125000000000",
              "34874992753/125000000000",
              "28020707473/100000000000",
              "145273151893/500000000000",
              "77745795787/250000000000",
              "31099467017/100000000000",
              "82400302279/250000000000",
              "90097201139/250000000000"
            ],
            "cell": "CB"
          }
        },
        "U_FGH": {
          "triangle": "FGH",
          "side": "hi",
          "value": "48989975419/100000000000",
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
              "70690787367/250000000000",
              "29655759749/100000000000",
              "76681574057/250000000000",
              "1282082977/4000000000",
              "2135778399/6250000000",
              "18604921203/50000000000",
              "97737129947/250000000000",
              "40474296781/100000000000",
              "212263813179/500000000000",
              "21916103719/50000000000",
              "5623873927/12500000000",
              "48989975419/100000000000"
            ],
            "cell": "CB"
          }
        },
        "U_FHP": {
          "triangle": "FHP",
          "side": "hi",
          "value": "9263465497/25000000000",
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
              "107475587313/500000000000",
              "28914347487/125000000000",
              "120259789961/500000000000",
              "3202813757/12500000000",
              "32110398149/125000000000",
              "27899943929/100000000000",
              "149509069193/500000000000",
              "161426980243/500000000000",
              "162293271841/500000000000",
              "1063412701/3125000000",
              "174211182891/500000000000",
              "9263465497/25000000000"
            ],
            "cell": "CB"
          }
        },
        "U_GHP": {
          "triangle": "GHP",
          "side": "hi",
          "value": "305176815877/1000000000000",
          "witness": {
            "kind": "vertices",
            "signed": "HGP",
            "used": [
              6,
              7,
              8,
              11,
              12
            ],
            "values": [
              "7543707633/500000000000",
              "9490217841/500000000000",
              "46508731101/1000000000000",
              "50401751517/1000000000000",
              "61362800487/1000000000000",
              "65255820903/1000000000000",
              "8297088967/125000000000",
              "8171950749/100000000000",
              "42032090087/500000000000",
              "46392058161/500000000000",
              "48338568369/500000000000",
              "12425871991/125000000000",
              "55330708321/500000000000",
              "112652096957/1000000000000",
              "127994892711/1000000000000",
              "26067913079/200000000000",
              "70061421177/500000000000",
              "142082732477/1000000000000",
              "145682361149/1000000000000",
              "20243839139/125000000000",
              "171544158189/1000000000000",
              "88646754433/500000000000",
              "195288849919/1000000000000",
              "102603293423/500000000000",
              "1102746913/5000000000",
              "224750275631/1000000000000",
              "113355082877/500000000000",
              "246578146389/1000000000000",
              "128085795733/500000000000",
              "261920942143/1000000000000",
              "289834020123/1000000000000",
              "305176815877/1000000000000"
            ],
            "cell": "CB"
          }
        }
      },
      "relations": {
        "0": {
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
        "2": {
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
        "5": {
          "row": [
            "fan",
            "ADO",
            "ADP",
            "DOP",
            "AOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "ADO",
            "point": "P"
          }
        },
        "6": {
          "row": [
            "fan",
            "AEF",
            "AEP",
            "EFP",
            "AFP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "AEF",
            "point": "P"
          }
        },
        "7": {
          "row": [
            "fan",
            "AEH",
            "AEG",
            "EGH",
            "AGH"
          ],
          "witness": {
            "kind": "fan",
            "outer": "AEH",
            "point": "G"
          }
        },
        "9": {
          "row": [
            "fan",
            "AEO",
            "AEP",
            "EOP",
            "AOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "AEO",
            "point": "P"
          }
        },
        "10": {
          "row": [
            "fan",
            "AFH",
            "AFG",
            "FGH",
            "AGH"
          ],
          "witness": {
            "kind": "fan",
            "outer": "AFH",
            "point": "G"
          }
        },
        "11": {
          "row": [
            "fan",
            "AFH",
            "AFO",
            "FHO",
            "AHO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "AFH",
            "point": "O"
          }
        },
        "12": {
          "row": [
            "fan",
            "AHO",
            "AGH",
            "AGO",
            "GHO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "HAO",
            "point": "G"
          }
        },
        "13": {
          "row": [
            "fan",
            "AHP",
            "AGH",
            "AGP",
            "GHP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "HAP",
            "point": "G"
          }
        },
        "14": {
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
        "18": {
          "row": [
            "fan",
            "BEH",
            "BEG",
            "EGH",
            "BGH"
          ],
          "witness": {
            "kind": "fan",
            "outer": "BEH",
            "point": "G"
          }
        },
        "21": {
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
        "26": {
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
        "29": {
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
        "30": {
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
        "34": {
          "row": [
            "fan",
            "EFG",
            "EFP",
            "FGP",
            "EGP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "EFG",
            "point": "P"
          }
        },
        "35": {
          "row": [
            "fan",
            "EFH",
            "EFO",
            "FHO",
            "EHO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "EFH",
            "point": "O"
          }
        },
        "36": {
          "row": [
            "fan",
            "EGH",
            "EGP",
            "EHP",
            "GHP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "GEH",
            "point": "P"
          }
        },
        "37": {
          "row": [
            "fan",
            "EGO",
            "EGP",
            "EOP",
            "GOP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "GEO",
            "point": "P"
          }
        },
        "38": {
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
        "39": {
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
        "119": {
          "row": [
            "plu",
            "ACP",
            "AEH",
            "ACE",
            "AHP",
            "ACH",
            "AEP"
          ],
          "witness": {
            "kind": "plu",
            "word": "ACEHP"
          }
        },
        "127": {
          "row": [
            "plu",
            "ACG",
            "AHO",
            "ACH",
            "AGO",
            "ACO",
            "AGH"
          ],
          "witness": {
            "kind": "plu",
            "word": "ACGHO"
          }
        },
        "157": {
          "row": [
            "plu",
            "AEG",
            "AHO",
            "AEH",
            "AGO",
            "AEO",
            "AGH"
          ],
          "witness": {
            "kind": "plu",
            "word": "AEGHO"
          }
        },
        "161": {
          "row": [
            "plu",
            "AFG",
            "AHO",
            "AFH",
            "AGO",
            "AFO",
            "AGH"
          ],
          "witness": {
            "kind": "plu",
            "word": "AFGHO"
          }
        },
        "275": {
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
        "292": {
          "row": [
            "plu",
            "ACE",
            "CDF",
            "ACD",
            "CEF",
            "ACF",
            "CDE"
          ],
          "witness": {
            "kind": "plu",
            "word": "CADEF"
          }
        },
        "295": {
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
        "297": {
          "row": [
            "plu",
            "ACF",
            "CDG",
            "ACD",
            "CFG",
            "ACG",
            "CDF"
          ],
          "witness": {
            "kind": "plu",
            "word": "CADFG"
          }
        },
        "330": {
          "row": [
            "plu",
            "BCE",
            "CDO",
            "BCD",
            "CEO",
            "BCO",
            "CDE"
          ],
          "witness": {
            "kind": "plu",
            "word": "CBDEO"
          }
        },
        "333": {
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
        "362": {
          "row": [
            "plu",
            "CDF",
            "CEG",
            "CDE",
            "CFG",
            "CDG",
            "CEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "CDEFG"
          }
        },
        "363": {
          "row": [
            "plu",
            "CDF",
            "CEH",
            "CDE",
            "CFH",
            "CDH",
            "CEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "CDEFH"
          }
        },
        "395": {
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
        "523": {
          "row": [
            "plu",
            "ADE",
            "CEF",
            "ACE",
            "DEF",
            "AEF",
            "CDE"
          ],
          "witness": {
            "kind": "plu",
            "word": "EACDF"
          }
        },
        "539": {
          "row": [
            "plu",
            "AEF",
            "DEH",
            "ADE",
            "EFH",
            "AEH",
            "DEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "EADFH"
          }
        },
        "643": {
          "row": [
            "plu",
            "ADF",
            "CEF",
            "ACF",
            "DEF",
            "AEF",
            "CDF"
          ],
          "witness": {
            "kind": "plu",
            "word": "FACDE"
          }
        },
        "651": {
          "row": [
            "plu",
            "ACF",
            "EFP",
            "AEF",
            "CFP",
            "AFP",
            "CEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "FACEP"
          }
        },
        "656": {
          "row": [
            "plu",
            "ACF",
            "FHP",
            "AFH",
            "CFP",
            "AFP",
            "CFH"
          ],
          "witness": {
            "kind": "plu",
            "word": "FACHP"
          }
        },
        "661": {
          "row": [
            "plu",
            "ADF",
            "EFP",
            "AEF",
            "DFP",
            "AFP",
            "DEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "FADEP"
          }
        },
        "670": {
          "row": [
            "plu",
            "AEF",
            "FGP",
            "AFG",
            "EFP",
            "AFP",
            "EFG"
          ],
          "witness": {
            "kind": "plu",
            "word": "FAEGP"
          }
        },
        "674": {
          "row": [
            "plu",
            "AFO",
            "FGH",
            "AFG",
            "FHO",
            "AFH",
            "FGO"
          ],
          "witness": {
            "kind": "plu",
            "word": "FAGHO"
          }
        },
        "675": {
          "row": [
            "plu",
            "AFH",
            "FGP",
            "AFG",
            "FHP",
            "AFP",
            "FGH"
          ],
          "witness": {
            "kind": "plu",
            "word": "FAGHP"
          }
        },
        "698": {
          "row": [
            "plu",
            "CEF",
            "DFG",
            "CDF",
            "EFG",
            "CFG",
            "DEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "FCDEG"
          }
        },
        "699": {
          "row": [
            "plu",
            "CEF",
            "DFH",
            "CDF",
            "EFH",
            "CFH",
            "DEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "FCDEH"
          }
        },
        "701": {
          "row": [
            "plu",
            "CEF",
            "DFP",
            "CDF",
            "EFP",
            "CFP",
            "DEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "FCDEP"
          }
        },
        "710": {
          "row": [
            "plu",
            "CFG",
            "EFP",
            "CEF",
            "FGP",
            "CFP",
            "EFG"
          ],
          "witness": {
            "kind": "plu",
            "word": "FCEGP"
          }
        },
        "717": {
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
        "745": {
          "row": [
            "plu",
            "AGH",
            "BEG",
            "ABG",
            "EGH",
            "AEG",
            "BGH"
          ],
          "witness": {
            "kind": "plu",
            "word": "GABEH"
          }
        },
        "748": {
          "row": [
            "plu",
            "AGH",
            "BFG",
            "ABG",
            "FGH",
            "AFG",
            "BGH"
          ],
          "witness": {
            "kind": "plu",
            "word": "GABFH"
          }
        },
        "766": {
          "row": [
            "plu",
            "ACG",
            "GHO",
            "AGH",
            "CGO",
            "AGO",
            "CGH"
          ],
          "witness": {
            "kind": "plu",
            "word": "GACHO"
          }
        },
        "782": {
          "row": [
            "plu",
            "AEG",
            "GHO",
            "AGH",
            "EGO",
            "AGO",
            "EGH"
          ],
          "witness": {
            "kind": "plu",
            "word": "GAEHO"
          }
        },
        "788": {
          "row": [
            "plu",
            "AGP",
            "GHO",
            "AGH",
            "GOP",
            "AGO",
            "GHP"
          ],
          "witness": {
            "kind": "plu",
            "word": "GAHOP"
          }
        },
        "873": {
          "row": [
            "plu",
            "AGH",
            "BFH",
            "ABH",
            "FGH",
            "AFH",
            "BGH"
          ],
          "witness": {
            "kind": "plu",
            "word": "HABFG"
          }
        },
        "1071": {
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
        "1085": {
          "row": [
            "plu",
            "EFO",
            "GHO",
            "EGO",
            "FHO",
            "EHO",
            "FGO"
          ],
          "witness": {
            "kind": "plu",
            "word": "OEFGH"
          }
        },
        "1142": {
          "row": [
            "plu",
            "BCP",
            "HOP",
            "BHP",
            "COP",
            "BOP",
            "CHP"
          ],
          "witness": {
            "kind": "plu",
            "word": "PBCHO"
          }
        },
        "1164": {
          "row": [
            "plu",
            "CFP",
            "HOP",
            "CHP",
            "FOP",
            "COP",
            "FHP"
          ],
          "witness": {
            "kind": "plu",
            "word": "PCFHO"
          }
        },
        "1170": {
          "row": [
            "plu",
            "EFP",
            "GHP",
            "EGP",
            "FHP",
            "EHP",
            "FGP"
          ],
          "witness": {
            "kind": "plu",
            "word": "PEFGH"
          }
        },
        "1413": {
          "row": [
            "support",
            "AFH",
            "AHP",
            "FHP",
            "53103/62500"
          ],
          "witness": {
            "kind": "quad_support",
            "poly": "HAPF",
            "occupants": [
              "G",
              "O"
            ],
            "rate": "1142/125"
          }
        },
        "1686": {
          "row": [
            "quad",
            "EFH",
            "EGH",
            "93/125"
          ],
          "witness": {
            "kind": "quad",
            "poly": "EFHG",
            "occupants": [
              "O",
              "P"
            ]
          }
        },
        "1687": {
          "row": [
            "quad",
            "FGH",
            "EFG",
            "93/125"
          ],
          "witness": {
            "kind": "quad",
            "poly": "FHGE",
            "occupants": [
              "O",
              "P"
            ]
          }
        },
        "1911": {
          "row": [
            "support",
            "ACF",
            "AEF",
            "ACE",
            "1023/1000"
          ],
          "witness": {
            "kind": "five_support",
            "poly": "ACDEF"
          }
        },
        "2180": {
          "row": [
            "support",
            "CFG",
            "EFG",
            "CEG",
            "1023/1000"
          ],
          "witness": {
            "kind": "five_support",
            "poly": "GCDEF"
          }
        },
        "2185": {
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
        "2195": {
          "row": [
            "support",
            "CFP",
            "EFP",
            "CEP",
            "1023/1000"
          ],
          "witness": {
            "kind": "five_support",
            "poly": "PCDEF"
          }
        },
        "2861": {
          "row": [
            "balance",
            [
              [
                1,
                "ACF",
                "EGP"
              ],
              [
                -1,
                "ACP",
                "EFG"
              ],
              [
                1,
                "AEG",
                "CFP"
              ],
              [
                1,
                "AFP",
                "CEG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ACF",
            "point": "P",
            "line": "EG"
          }
        },
        "2944": {
          "row": [
            "balance",
            [
              [
                1,
                "ACO",
                "EFP"
              ],
              [
                -1,
                "ACP",
                "EFO"
              ],
              [
                -1,
                "AEF",
                "COP"
              ],
              [
                -1,
                "AOP",
                "CEF"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ACO",
            "point": "P",
            "line": "EF"
          }
        },
        "2945": {
          "row": [
            "balance",
            [
              [
                1,
                "ACO",
                "EGP"
              ],
              [
                -1,
                "ACP",
                "EGO"
              ],
              [
                1,
                "AEG",
                "COP"
              ],
              [
                1,
                "AOP",
                "CEG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ACO",
            "point": "P",
            "line": "EG"
          }
        },
        "2949": {
          "row": [
            "balance",
            [
              [
                1,
                "ACO",
                "GHP"
              ],
              [
                -1,
                "ACP",
                "GHO"
              ],
              [
                1,
                "AGH",
                "COP"
              ],
              [
                -1,
                "AOP",
                "CGH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "ACO",
            "point": "P",
            "line": "GH"
          }
        },
        "3219": {
          "row": [
            "balance",
            [
              [
                1,
                "ABH",
                "EGO"
              ],
              [
                -1,
                "AEG",
                "BHO"
              ],
              [
                1,
                "AEO",
                "BGH"
              ],
              [
                1,
                "AGO",
                "BEH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "AEG",
            "point": "O",
            "line": "BH"
          }
        },
        "3290": {
          "row": [
            "balance",
            [
              [
                1,
                "ACE",
                "FGH"
              ],
              [
                1,
                "AFG",
                "CEH"
              ],
              [
                -1,
                "AFH",
                "CEG"
              ],
              [
                1,
                "AGH",
                "CEF"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "AFG",
            "point": "H",
            "line": "CE"
          }
        },
        "3296": {
          "row": [
            "balance",
            [
              [
                1,
                "AEP",
                "FGH"
              ],
              [
                -1,
                "AFG",
                "EHP"
              ],
              [
                -1,
                "AFH",
                "EGP"
              ],
              [
                -1,
                "AGH",
                "EFP"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "AFG",
            "point": "H",
            "line": "EP"
          }
        },
        "3301": {
          "row": [
            "balance",
            [
              [
                1,
                "ABH",
                "FGO"
              ],
              [
                -1,
                "AFG",
                "BHO"
              ],
              [
                1,
                "AFO",
                "BGH"
              ],
              [
                1,
                "AGO",
                "BFH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "AFG",
            "point": "O",
            "line": "BH"
          }
        },
        "3320": {
          "row": [
            "balance",
            [
              [
                1,
                "ACO",
                "FGP"
              ],
              [
                -1,
                "AFG",
                "COP"
              ],
              [
                -1,
                "AFP",
                "CGO"
              ],
              [
                -1,
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
        "3331": {
          "row": [
            "balance",
            [
              [
                1,
                "ACE",
                "FHO"
              ],
              [
                -1,
                "AFH",
                "CEO"
              ],
              [
                1,
                "AFO",
                "CEH"
              ],
              [
                1,
                "AHO",
                "CEF"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "AFH",
            "point": "O",
            "line": "CE"
          }
        },
        "3347": {
          "row": [
            "balance",
            [
              [
                1,
                "ACO",
                "FHP"
              ],
              [
                -1,
                "AFH",
                "COP"
              ],
              [
                -1,
                "AFP",
                "CHO"
              ],
              [
                -1,
                "AHP",
                "CFO"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "AFH",
            "point": "P",
            "line": "CO"
          }
        },
        "3351": {
          "row": [
            "balance",
            [
              [
                1,
                "AEG",
                "FHP"
              ],
              [
                1,
                "AFH",
                "EGP"
              ],
              [
                1,
                "AFP",
                "EGH"
              ],
              [
                -1,
                "AHP",
                "EFG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "AFH",
            "point": "P",
            "line": "EG"
          }
        },
        "3353": {
          "row": [
            "balance",
            [
              [
                1,
                "AFH",
                "GOP"
              ],
              [
                -1,
                "AFP",
                "GHO"
              ],
              [
                -1,
                "AGO",
                "FHP"
              ],
              [
                -1,
                "AHP",
                "FGO"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "AFH",
            "point": "P",
            "line": "GO"
          }
        },
        "3365": {
          "row": [
            "balance",
            [
              [
                1,
                "AEG",
                "FOP"
              ],
              [
                1,
                "AFO",
                "EGP"
              ],
              [
                1,
                "AFP",
                "EGO"
              ],
              [
                -1,
                "AOP",
                "EFG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "AFO",
            "point": "P",
            "line": "EG"
          }
        },
        "3368": {
          "row": [
            "balance",
            [
              [
                1,
                "ABC",
                "GHO"
              ],
              [
                1,
                "AGH",
                "BCO"
              ],
              [
                1,
                "AGO",
                "BCH"
              ],
              [
                -1,
                "AHO",
                "BCG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "AGH",
            "point": "O",
            "line": "BC"
          }
        },
        "3381": {
          "row": [
            "balance",
            [
              [
                1,
                "AFP",
                "GHO"
              ],
              [
                1,
                "AGH",
                "FOP"
              ],
              [
                1,
                "AGO",
                "FHP"
              ],
              [
                -1,
                "AHO",
                "FGP"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "AGH",
            "point": "O",
            "line": "FP"
          }
        },
        "3622": {
          "row": [
            "balance",
            [
              [
                1,
                "ABO",
                "CGH"
              ],
              [
                1,
                "ACO",
                "BGH"
              ],
              [
                1,
                "AGO",
                "BCH"
              ],
              [
                -1,
                "AHO",
                "BCG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "BCG",
            "point": "H",
            "line": "AO"
          }
        },
        "3700": {
          "row": [
            "balance",
            [
              [
                1,
                "BCO",
                "FHP"
              ],
              [
                -1,
                "BCP",
                "FHO"
              ],
              [
                -1,
                "BFH",
                "COP"
              ],
              [
                -1,
                "BOP",
                "CFH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "BCO",
            "point": "P",
            "line": "FH"
          }
        },
        "4116": {
          "row": [
            "balance",
            [
              [
                1,
                "ACP",
                "DEF"
              ],
              [
                -1,
                "ADP",
                "CEF"
              ],
              [
                1,
                "AEP",
                "CDF"
              ],
              [
                1,
                "AFP",
                "CDE"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CDE",
            "point": "F",
            "line": "AP"
          }
        },
        "4143": {
          "row": [
            "balance",
            [
              [
                1,
                "ACP",
                "DEH"
              ],
              [
                -1,
                "ADP",
                "CEH"
              ],
              [
                1,
                "AEP",
                "CDH"
              ],
              [
                1,
                "AHP",
                "CDE"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CDE",
            "point": "H",
            "line": "AP"
          }
        },
        "4395": {
          "row": [
            "balance",
            [
              [
                1,
                "ACF",
                "EGP"
              ],
              [
                -1,
                "AEF",
                "CGP"
              ],
              [
                1,
                "AFG",
                "CEP"
              ],
              [
                1,
                "AFP",
                "CEG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CEG",
            "point": "P",
            "line": "AF"
          }
        },
        "4436": {
          "row": [
            "balance",
            [
              [
                1,
                "ACF",
                "EOP"
              ],
              [
                -1,
                "AEF",
                "COP"
              ],
              [
                -1,
                "AFO",
                "CEP"
              ],
              [
                -1,
                "AFP",
                "CEO"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CEO",
            "point": "P",
            "line": "AF"
          }
        },
        "4574": {
          "row": [
            "balance",
            [
              [
                1,
                "ACF",
                "HOP"
              ],
              [
                -1,
                "AFH",
                "COP"
              ],
              [
                -1,
                "AFO",
                "CHP"
              ],
              [
                -1,
                "AFP",
                "CHO"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CHO",
            "point": "P",
            "line": "AF"
          }
        },
        "4849": {
          "row": [
            "balance",
            [
              [
                1,
                "CEH",
                "FGP"
              ],
              [
                1,
                "CFH",
                "EGP"
              ],
              [
                -1,
                "CGH",
                "EFP"
              ],
              [
                -1,
                "CHP",
                "EFG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "EFG",
            "point": "P",
            "line": "CH"
          }
        },
        "4850": {
          "row": [
            "balance",
            [
              [
                1,
                "CEO",
                "FGP"
              ],
              [
                1,
                "CFO",
                "EGP"
              ],
              [
                -1,
                "CGO",
                "EFP"
              ],
              [
                1,
                "COP",
                "EFG"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "EFG",
            "point": "P",
            "line": "CO"
          }
        },
        "4912": {
          "row": [
            "balance",
            [
              [
                1,
                "AEF",
                "GHP"
              ],
              [
                -1,
                "AFG",
                "EHP"
              ],
              [
                -1,
                "AFH",
                "EGP"
              ],
              [
                -1,
                "AFP",
                "EGH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "EGH",
            "point": "P",
            "line": "AF"
          }
        },
        "4926": {
          "row": [
            "balance",
            [
              [
                1,
                "AEF",
                "GOP"
              ],
              [
                -1,
                "AFG",
                "EOP"
              ],
              [
                -1,
                "AFO",
                "EGP"
              ],
              [
                -1,
                "AFP",
                "EGO"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "EGO",
            "point": "P",
            "line": "AF"
          }
        },
        "4960": {
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
        "5002": {
          "row": [
            "balance",
            [
              [
                1,
                "CEF",
                "HOP"
              ],
              [
                1,
                "CEH",
                "FOP"
              ],
              [
                -1,
                "CEO",
                "FHP"
              ],
              [
                1,
                "CEP",
                "FHO"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "FHO",
            "point": "P",
            "line": "CE"
          }
        },
        "6111": {
          "row": [
            "linear",
            {
              "EHP": "-93/1000",
              "AEP": "4591430409/12500000000",
              "EOP": "-93/1000",
              "EGP": "-6916430409/12500000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "HAO",
            "point": "G",
            "line": "EP",
            "side": "upper",
            "outer_upper": {
              "triangle": "AHO",
              "ref": "U_AHO",
              "value": "6916430409/12500000000"
            },
            "fan_lower": [
              {
                "triangle": "AGO",
                "ref": "L_AGO",
                "value": "93/1000"
              },
              {
                "triangle": "GHO",
                "ref": "L_GHO",
                "value": "93/1000"
              },
              {
                "triangle": "AGH",
                "ref": "L_AGH",
                "value": "93/1000"
              }
            ],
            "residual": "3428930409/12500000000"
          }
        },
        "6117": {
          "row": [
            "linear",
            {
              "FHO": "-93/1000",
              "AFO": "4591430409/12500000000",
              "FGO": "-6916430409/12500000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "HAO",
            "point": "G",
            "line": "FO",
            "side": "upper",
            "outer_upper": {
              "triangle": "AHO",
              "ref": "U_AHO",
              "value": "6916430409/12500000000"
            },
            "fan_lower": [
              {
                "triangle": "AGO",
                "ref": "L_AGO",
                "value": "93/1000"
              },
              {
                "triangle": "GHO",
                "ref": "L_GHO",
                "value": "93/1000"
              },
              {
                "triangle": "AGH",
                "ref": "L_AGH",
                "value": "93/1000"
              }
            ],
            "residual": "3428930409/12500000000"
          }
        },
        "8248": {
          "row": [
            "linear",
            {
              "AFG": "30389975419/100000000000",
              "AGH": "-93/1000",
              "AGO": "-48989975419/100000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "GFH",
            "point": "O",
            "line": "AG",
            "side": "lower",
            "outer_upper": {
              "triangle": "FGH",
              "ref": "U_FGH",
              "value": "48989975419/100000000000"
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
            "residual": "21089975419/100000000000"
          }
        },
        "8282": {
          "row": [
            "linear",
            {
              "CGP": "-93/1000",
              "CFP": "30389975419/100000000000",
              "CHP": "-93/1000",
              "COP": "-48989975419/100000000000"
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
              "value": "48989975419/100000000000"
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
            "residual": "21089975419/100000000000"
          }
        },
        "8366": {
          "row": [
            "linear",
            {
              "CFP": "4613465497/25000000000",
              "CHP": "-93/1000",
              "COP": "-9263465497/25000000000"
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
              "value": "9263465497/25000000000"
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
            "residual": "2288465497/25000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0009",
          "relation": 34,
          "rule": "sub",
          "triangle": "EFP",
          "side": "hi",
          "value": "53693/250000",
          "sources": [
            "U_EFG",
            "L_FGP",
            "L_EGP"
          ]
        },
        {
          "id": "T0010",
          "relation": 35,
          "rule": "sub",
          "triangle": "EFO",
          "side": "hi",
          "value": "50253/250000",
          "sources": [
            "U_EFH",
            "L_FHO",
            "L_EHO"
          ]
        },
        {
          "id": "T0015",
          "relation": 38,
          "rule": "sub",
          "triangle": "GHO",
          "side": "hi",
          "value": "3039/10000",
          "sources": [
            "U_FGH",
            "L_FGO",
            "L_FHO"
          ]
        },
        {
          "id": "T0016",
          "relation": 39,
          "rule": "sub",
          "triangle": "HOP",
          "side": "hi",
          "value": "184539/1000000",
          "sources": [
            "U_FHP",
            "L_FHO",
            "L_FOP"
          ]
        },
        {
          "id": "T0026",
          "relation": 161,
          "rule": "sumlo",
          "triangle": "AFG",
          "side": "lo",
          "value": "33021/250000",
          "sources": [
            "L_AFH",
            "L_AGO",
            "L_AFO",
            "L_AGH",
            "U_AHO"
          ]
        },
        {
          "id": "T0040",
          "relation": 333,
          "rule": "sumlo",
          "triangle": "CDH",
          "side": "lo",
          "value": "122727/1000000",
          "sources": [
            "L_BCD",
            "L_CFH",
            "L_BCH",
            "L_CDF",
            "U_BCF"
          ]
        },
        {
          "id": "T0042",
          "relation": 363,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "46951/500000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "T0040",
            "L_CEF",
            "U_CEH"
          ]
        },
        {
          "id": "T0044",
          "relation": 395,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "65281/500000",
          "sources": [
            "L_CFH",
            "L_COP",
            "L_CFO",
            "L_CHP",
            "U_CHO"
          ]
        },
        {
          "id": "T0073",
          "relation": 656,
          "rule": "sumlo",
          "triangle": "ACF",
          "side": "lo",
          "value": "209013/500000",
          "sources": [
            "L_AFH",
            "T0044",
            "L_AFP",
            "L_CFH",
            "U_FHP"
          ]
        },
        {
          "id": "T0077",
          "relation": 674,
          "rule": "sumlo",
          "triangle": "AFO",
          "side": "lo",
          "value": "156601/1000000",
          "sources": [
            "T0026",
            "L_FHO",
            "L_AFH",
            "L_FGO",
            "U_FGH"
          ]
        },
        {
          "id": "T0080",
          "relation": 699,
          "rule": "sumlo",
          "triangle": "CEF",
          "side": "lo",
          "value": "11813/100000",
          "sources": [
            "T0042",
            "L_EFH",
            "L_CFH",
            "L_DEF",
            "U_DFH"
          ]
        },
        {
          "id": "T0085",
          "relation": 717,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "25833/125000",
          "sources": [
            "L_CFH",
            "L_FOP",
            "T0044",
            "L_FHO",
            "U_FHP"
          ]
        },
        {
          "id": "T0103",
          "relation": 873,
          "rule": "sumlo",
          "triangle": "AGH",
          "side": "lo",
          "value": "105111/1000000",
          "sources": [
            "L_ABH",
            "L_FGH",
            "L_AFH",
            "L_BGH",
            "U_BFH"
          ]
        },
        {
          "id": "T0114",
          "relation": 1085,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "1423/12500",
          "sources": [
            "L_EGO",
            "L_FHO",
            "L_EHO",
            "L_FGO",
            "T0015"
          ]
        },
        {
          "id": "T0115",
          "relation": 1085,
          "rule": "sumlo",
          "triangle": "GHO",
          "side": "lo",
          "value": "172109/1000000",
          "sources": [
            "L_EGO",
            "L_FHO",
            "L_EHO",
            "L_FGO",
            "T0010"
          ]
        },
        {
          "id": "T0122",
          "relation": 1142,
          "rule": "sumlo",
          "triangle": "BCP",
          "side": "lo",
          "value": "11717/62500",
          "sources": [
            "L_BHP",
            "L_COP",
            "L_BOP",
            "L_CHP",
            "T0016"
          ]
        },
        {
          "id": "T0126",
          "relation": 1164,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "11717/62500",
          "sources": [
            "L_CHP",
            "L_FOP",
            "L_COP",
            "L_FHP",
            "T0016"
          ]
        },
        {
          "id": "T0131",
          "relation": 1170,
          "rule": "sumlo",
          "triangle": "EFP",
          "side": "lo",
          "value": "113363/1000000",
          "sources": [
            "L_EGP",
            "L_FHP",
            "L_EHP",
            "L_FGP",
            "U_GHP"
          ]
        },
        {
          "id": "T0136",
          "relation": 1413,
          "rule": "support_y",
          "triangle": "AHP",
          "side": "lo",
          "value": "395253/1000000",
          "sources": [
            "L_AFH",
            "U_FHP"
          ]
        },
        {
          "id": "T0142",
          "relation": 1686,
          "rule": "quad",
          "triangle": "EGH",
          "side": "lo",
          "value": "89247/250000",
          "sources": [
            "U_EFH"
          ]
        },
        {
          "id": "T0143",
          "relation": 1687,
          "rule": "quad",
          "triangle": "FGH",
          "side": "lo",
          "value": "85807/250000",
          "sources": [
            "U_EFG"
          ]
        },
        {
          "id": "T0147",
          "relation": 1911,
          "rule": "support_z",
          "triangle": "ACE",
          "side": "lo",
          "value": "20219/100000",
          "sources": [
            "T0073",
            "U_AEF"
          ]
        },
        {
          "id": "T0152",
          "relation": 2185,
          "rule": "support_z",
          "triangle": "CEH",
          "side": "lo",
          "value": "430737/1000000",
          "sources": [
            "L_CFH",
            "U_EFH"
          ]
        },
        {
          "id": "T0154",
          "relation": 2195,
          "rule": "support_z",
          "triangle": "CEP",
          "side": "lo",
          "value": "148113/1000000",
          "sources": [
            "T0126",
            "T0009"
          ]
        },
        {
          "id": "T0175",
          "relation": 3219,
          "rule": "balance_lo",
          "triangle": "AEG",
          "side": "lo",
          "value": "188449/1000000",
          "sources": [
            "L_ABH",
            "L_EGO",
            "L_AEO",
            "L_BGH",
            "L_AGO",
            "L_BEH",
            "U_BHO"
          ]
        },
        {
          "id": "T0179",
          "relation": 3290,
          "rule": "balance_lo",
          "triangle": "CEG",
          "side": "lo",
          "value": "11491/62500",
          "sources": [
            "T0147",
            "T0143",
            "T0026",
            "T0152",
            "T0103",
            "T0080",
            "U_AFH"
          ]
        },
        {
          "id": "T0182",
          "relation": 3301,
          "rule": "balance_lo",
          "triangle": "AFG",
          "side": "lo",
          "value": "141987/1000000",
          "sources": [
            "L_ABH",
            "L_FGO",
            "T0077",
            "L_BGH",
            "L_AGO",
            "L_BFH",
            "U_BHO"
          ]
        },
        {
          "id": "T0189",
          "relation": 3347,
          "rule": "balance_lo",
          "triangle": "ACO",
          "side": "lo",
          "value": "29023/62500",
          "sources": [
            "L_AFH",
            "L_COP",
            "L_AFP",
            "L_CHO",
            "T0136",
            "T0085",
            "U_FHP"
          ]
        },
        {
          "id": "T0193",
          "relation": 3353,
          "rule": "balance_lo",
          "triangle": "GOP",
          "side": "lo",
          "value": "26083/250000",
          "sources": [
            "L_AFP",
            "T0115",
            "L_AGO",
            "L_FHP",
            "T0136",
            "L_FGO",
            "U_AFH"
          ]
        },
        {
          "id": "T0194",
          "relation": 3365,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "36203/250000",
          "sources": [
            "T0175",
            "L_FOP",
            "T0077",
            "L_EGP",
            "L_AFP",
            "L_EGO",
            "U_EFG"
          ]
        },
        {
          "id": "T0198",
          "relation": 3381,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "5843/62500",
          "sources": [
            "L_AFP",
            "T0115",
            "T0103",
            "L_FOP",
            "L_AGO",
            "L_FHP",
            "U_AHO"
          ]
        },
        {
          "id": "T0202",
          "relation": 3622,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "5623/40000",
          "sources": [
            "L_ABO",
            "L_CGH",
            "T0189",
            "L_BGH",
            "L_AGO",
            "L_BCH",
            "U_AHO"
          ]
        },
        {
          "id": "T0203",
          "relation": 3700,
          "rule": "balance_lo",
          "triangle": "BCO",
          "side": "lo",
          "value": "98711/250000",
          "sources": [
            "T0122",
            "L_FHO",
            "L_BFH",
            "L_COP",
            "L_BOP",
            "L_CFH",
            "U_FHP"
          ]
        },
        {
          "id": "T0221",
          "relation": 4395,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "36447/250000",
          "sources": [
            "T0073",
            "L_EGP",
            "T0182",
            "T0154",
            "L_AFP",
            "T0179",
            "U_AEF"
          ]
        },
        {
          "id": "T0224",
          "relation": 4574,
          "rule": "balance_lo",
          "triangle": "ACF",
          "side": "lo",
          "value": "142173/250000",
          "sources": [
            "L_AFH",
            "L_COP",
            "T0077",
            "L_CHP",
            "L_AFP",
            "L_CHO",
            "T0016"
          ]
        },
        {
          "id": "T0225",
          "relation": 4574,
          "rule": "balance_lo",
          "triangle": "HOP",
          "side": "lo",
          "value": "1907/15625",
          "sources": [
            "L_AFH",
            "L_COP",
            "T0077",
            "L_CHP",
            "L_AFP",
            "L_CHO",
            "U_ACF"
          ]
        },
        {
          "id": "T0235",
          "relation": 4912,
          "rule": "balance_lo",
          "triangle": "GHP",
          "side": "lo",
          "value": "41969/200000",
          "sources": [
            "T0182",
            "L_EHP",
            "L_AFH",
            "L_EGP",
            "L_AFP",
            "T0142",
            "U_AEF"
          ]
        },
        {
          "id": "T0238",
          "relation": 5002,
          "rule": "balance_lo",
          "triangle": "CEO",
          "side": "lo",
          "value": "2878/15625",
          "sources": [
            "T0080",
            "T0225",
            "T0152",
            "L_FOP",
            "T0154",
            "L_FHO",
            "U_FHP"
          ]
        },
        {
          "id": "T0243",
          "relation": 6111,
          "rule": "linear",
          "triangle": "AEP",
          "side": "lo",
          "value": "93593/500000",
          "sources": [
            "L_EGP",
            "L_EHP",
            "L_EOP"
          ]
        },
        {
          "id": "T0244",
          "relation": 6117,
          "rule": "linear",
          "triangle": "AFO",
          "side": "lo",
          "value": "163639/1000000",
          "sources": [
            "L_FGO",
            "L_FHO"
          ]
        },
        {
          "id": "T0279",
          "relation": 8248,
          "rule": "linear",
          "triangle": "AFG",
          "side": "lo",
          "value": "91043/500000",
          "sources": [
            "T0103",
            "L_AGO"
          ]
        },
        {
          "id": "T0292",
          "relation": 8366,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "58401/250000",
          "sources": [
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0301",
          "relation": 6,
          "rule": "sum",
          "triangle": "AEF",
          "side": "lo",
          "value": "393549/1000000",
          "sources": [
            "T0243",
            "T0131",
            "L_AFP"
          ]
        },
        {
          "id": "T0303",
          "relation": 10,
          "rule": "sub",
          "triangle": "FGH",
          "side": "hi",
          "value": "116809/250000",
          "sources": [
            "U_AFH",
            "T0279",
            "T0103"
          ]
        },
        {
          "id": "T0305",
          "relation": 11,
          "rule": "sub",
          "triangle": "AHO",
          "side": "hi",
          "value": "248897/500000",
          "sources": [
            "U_AFH",
            "T0244",
            "L_FHO"
          ]
        },
        {
          "id": "T0306",
          "relation": 12,
          "rule": "sum",
          "triangle": "AHO",
          "side": "lo",
          "value": "18511/50000",
          "sources": [
            "T0103",
            "L_AGO",
            "T0115"
          ]
        },
        {
          "id": "T0309",
          "relation": 14,
          "rule": "sum",
          "triangle": "BCH",
          "side": "lo",
          "value": "13063/40000",
          "sources": [
            "T0202",
            "L_CGH",
            "L_BGH"
          ]
        },
        {
          "id": "T0314",
          "relation": 21,
          "rule": "sub",
          "triangle": "BFG",
          "side": "hi",
          "value": "211821/500000",
          "sources": [
            "U_BFH",
            "T0143",
            "L_BGH"
          ]
        },
        {
          "id": "T0319",
          "relation": 26,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "5911/12500",
          "sources": [
            "T0292",
            "T0198",
            "T0221"
          ]
        },
        {
          "id": "T0322",
          "relation": 30,
          "rule": "sum",
          "triangle": "CHO",
          "side": "lo",
          "value": "19253/62500",
          "sources": [
            "L_CHP",
            "L_COP",
            "T0225"
          ]
        },
        {
          "id": "T0328",
          "relation": 34,
          "rule": "sub",
          "triangle": "EFP",
          "side": "hi",
          "value": "53571/250000",
          "sources": [
            "U_EFG",
            "T0198",
            "L_EGP"
          ]
        },
        {
          "id": "T0329",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFH",
          "side": "lo",
          "value": "937/3125",
          "sources": [
            "T0114",
            "L_FHO",
            "L_EHO"
          ]
        },
        {
          "id": "T0330",
          "relation": 36,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "79169/200000",
          "sources": [
            "L_EGP",
            "L_EHP",
            "T0235"
          ]
        },
        {
          "id": "T0331",
          "relation": 37,
          "rule": "sum",
          "triangle": "EGO",
          "side": "lo",
          "value": "72583/250000",
          "sources": [
            "L_EGP",
            "L_EOP",
            "T0193"
          ]
        },
        {
          "id": "T0334",
          "relation": 38,
          "rule": "sum",
          "triangle": "FGH",
          "side": "lo",
          "value": "358109/1000000",
          "sources": [
            "L_FGO",
            "L_FHO",
            "T0115"
          ]
        },
        {
          "id": "T0335",
          "relation": 38,
          "rule": "sub",
          "triangle": "GHO",
          "side": "hi",
          "value": "70309/250000",
          "sources": [
            "T0303",
            "L_FGO",
            "L_FHO"
          ]
        },
        {
          "id": "T0336",
          "relation": 39,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "19253/62500",
          "sources": [
            "L_FHO",
            "T0225",
            "L_FOP"
          ]
        },
        {
          "id": "T0352",
          "relation": 292,
          "rule": "sumlo",
          "triangle": "ACE",
          "side": "lo",
          "value": "303701/1000000",
          "sources": [
            "L_ACD",
            "T0080",
            "T0224",
            "L_CDE",
            "U_CDF"
          ]
        },
        {
          "id": "T0357",
          "relation": 330,
          "rule": "sumlo",
          "triangle": "CDO",
          "side": "lo",
          "value": "48327/500000",
          "sources": [
            "L_BCD",
            "T0238",
            "T0203",
            "L_CDE",
            "U_BCE"
          ]
        },
        {
          "id": "T0358",
          "relation": 333,
          "rule": "sumlo",
          "triangle": "CDH",
          "side": "lo",
          "value": "25827/200000",
          "sources": [
            "L_BCD",
            "L_CFH",
            "T0309",
            "T0042",
            "U_BCF"
          ]
        },
        {
          "id": "T0360",
          "relation": 363,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "49329/500000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "T0358",
            "T0080",
            "U_CEH"
          ]
        },
        {
          "id": "T0380",
          "relation": 656,
          "rule": "sumlo",
          "triangle": "ACF",
          "side": "lo",
          "value": "610699/1000000",
          "sources": [
            "L_AFH",
            "T0292",
            "L_AFP",
            "L_CFH",
            "U_FHP"
          ]
        },
        {
          "id": "T0382",
          "relation": 674,
          "rule": "sumlo",
          "triangle": "AFO",
          "side": "lo",
          "value": "174149/1000000",
          "sources": [
            "T0279",
            "L_FHO",
            "L_AFH",
            "L_FGO",
            "T0303"
          ]
        },
        {
          "id": "T0384",
          "relation": 675,
          "rule": "sumlo",
          "triangle": "FGP",
          "side": "lo",
          "value": "118493/1000000",
          "sources": [
            "T0279",
            "T0336",
            "L_AFP",
            "T0334",
            "U_AFH"
          ]
        },
        {
          "id": "T0386",
          "relation": 699,
          "rule": "sumlo",
          "triangle": "CEF",
          "side": "lo",
          "value": "6127/50000",
          "sources": [
            "T0360",
            "T0329",
            "L_CFH",
            "L_DEF",
            "U_DFH"
          ]
        },
        {
          "id": "T0390",
          "relation": 717,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "116263/500000",
          "sources": [
            "L_CFH",
            "L_FOP",
            "T0292",
            "L_FHO",
            "U_FHP"
          ]
        },
        {
          "id": "T0397",
          "relation": 748,
          "rule": "sumlo",
          "triangle": "AGH",
          "side": "lo",
          "value": "59293/500000",
          "sources": [
            "L_ABG",
            "T0334",
            "T0279",
            "L_BGH",
            "T0314"
          ]
        },
        {
          "id": "T0403",
          "relation": 782,
          "rule": "sumlo",
          "triangle": "AEG",
          "side": "lo",
          "value": "6333/25000",
          "sources": [
            "T0397",
            "T0331",
            "L_AGO",
            "T0330",
            "T0335"
          ]
        },
        {
          "id": "T0404",
          "relation": 782,
          "rule": "sumlo",
          "triangle": "GHO",
          "side": "lo",
          "value": "187031/1000000",
          "sources": [
            "T0397",
            "T0331",
            "L_AGO",
            "T0330",
            "U_AEG"
          ]
        },
        {
          "id": "T0420",
          "relation": 1085,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "126761/1000000",
          "sources": [
            "T0331",
            "L_FHO",
            "L_EHO",
            "L_FGO",
            "T0335"
          ]
        },
        {
          "id": "T0432",
          "relation": 2180,
          "rule": "support_z",
          "triangle": "CEG",
          "side": "lo",
          "value": "287623/1000000",
          "sources": [
            "T0319",
            "U_EFG"
          ]
        },
        {
          "id": "T0434",
          "relation": 2195,
          "rule": "support_z",
          "triangle": "CEP",
          "side": "lo",
          "value": "184671/1000000",
          "sources": [
            "T0292",
            "T0328"
          ]
        },
        {
          "id": "T0445",
          "relation": 2861,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "356113/1000000",
          "sources": [
            "T0380",
            "L_EGP",
            "T0403",
            "T0292",
            "L_AFP",
            "T0432",
            "U_EFG"
          ]
        },
        {
          "id": "T0448",
          "relation": 2944,
          "rule": "balance_lo",
          "triangle": "EFP",
          "side": "lo",
          "value": "67333/500000",
          "sources": [
            "T0445",
            "T0420",
            "T0301",
            "L_COP",
            "T0194",
            "T0386",
            "U_ACO"
          ]
        },
        {
          "id": "T0459",
          "relation": 3296,
          "rule": "balance_lo",
          "triangle": "AEP",
          "side": "lo",
          "value": "26041/125000",
          "sources": [
            "T0279",
            "L_EHP",
            "L_AFH",
            "L_EGP",
            "T0397",
            "T0448",
            "T0303"
          ]
        },
        {
          "id": "T0461",
          "relation": 3331,
          "rule": "balance_lo",
          "triangle": "CEO",
          "side": "lo",
          "value": "197/1000",
          "sources": [
            "T0352",
            "L_FHO",
            "T0382",
            "T0152",
            "T0306",
            "T0386",
            "U_AFH"
          ]
        },
        {
          "id": "T0467",
          "relation": 3351,
          "rule": "balance_lo",
          "triangle": "EFG",
          "side": "lo",
          "value": "165397/500000",
          "sources": [
            "T0403",
            "T0336",
            "L_AFH",
            "L_EGP",
            "L_AFP",
            "T0330",
            "U_AHP"
          ]
        },
        {
          "id": "T0469",
          "relation": 3365,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "166567/1000000",
          "sources": [
            "T0403",
            "L_FOP",
            "T0382",
            "L_EGP",
            "L_AFP",
            "T0331",
            "U_EFG"
          ]
        },
        {
          "id": "T0470",
          "relation": 3368,
          "rule": "balance_lo",
          "triangle": "BCG",
          "side": "lo",
          "value": "38003/200000",
          "sources": [
            "L_ABC",
            "T0404",
            "T0397",
            "T0203",
            "L_AGO",
            "T0309",
            "T0305"
          ]
        },
        {
          "id": "T0495",
          "relation": 4395,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "22183/100000",
          "sources": [
            "T0380",
            "L_EGP",
            "T0279",
            "T0434",
            "L_AFP",
            "T0432",
            "U_AEF"
          ]
        },
        {
          "id": "T0496",
          "relation": 4436,
          "rule": "balance_lo",
          "triangle": "EOP",
          "side": "lo",
          "value": "12659/125000",
          "sources": [
            "T0301",
            "L_COP",
            "T0382",
            "T0434",
            "L_AFP",
            "T0461",
            "U_ACF"
          ]
        },
        {
          "id": "T0502",
          "relation": 4574,
          "rule": "balance_lo",
          "triangle": "HOP",
          "side": "lo",
          "value": "7943/62500",
          "sources": [
            "L_AFH",
            "L_COP",
            "T0382",
            "L_CHP",
            "L_AFP",
            "T0322",
            "U_ACF"
          ]
        },
        {
          "id": "T0508",
          "relation": 4849,
          "rule": "balance_lo",
          "triangle": "CHP",
          "side": "lo",
          "value": "413/4000",
          "sources": [
            "T0152",
            "T0384",
            "L_CFH",
            "L_EGP",
            "U_CGH",
            "T0328",
            "U_EFG"
          ]
        },
        {
          "id": "T0509",
          "relation": 4850,
          "rule": "balance_lo",
          "triangle": "EFP",
          "side": "lo",
          "value": "140319/1000000",
          "sources": [
            "T0461",
            "T0384",
            "T0390",
            "L_EGP",
            "L_COP",
            "T0467",
            "U_CGO"
          ]
        },
        {
          "id": "T0510",
          "relation": 4912,
          "rule": "balance_lo",
          "triangle": "GHP",
          "side": "lo",
          "value": "223747/1000000",
          "sources": [
            "T0279",
            "L_EHP",
            "L_AFH",
            "L_EGP",
            "L_AFP",
            "T0330",
            "U_AEF"
          ]
        },
        {
          "id": "T0511",
          "relation": 4926,
          "rule": "balance_lo",
          "triangle": "GOP",
          "side": "lo",
          "value": "116693/1000000",
          "sources": [
            "T0279",
            "T0496",
            "T0382",
            "L_EGP",
            "L_AFP",
            "T0331",
            "U_AEF"
          ]
        },
        {
          "id": "T0523",
          "relation": 8248,
          "rule": "linear",
          "triangle": "AFG",
          "side": "lo",
          "value": "18621/100000",
          "sources": [
            "T0397",
            "L_AGO"
          ]
        },
        {
          "id": "T0527",
          "relation": 8282,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "249401/1000000",
          "sources": [
            "T0495",
            "T0508",
            "L_COP"
          ]
        },
        {
          "id": "T0532",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "349257/500000",
          "sources": [
            "T0445",
            "T0527",
            "L_AFP"
          ]
        },
        {
          "id": "T0534",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "1924/3125",
          "sources": [
            "T0445",
            "L_COP",
            "T0469"
          ]
        },
        {
          "id": "T0535",
          "relation": 2,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "479197/1000000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0469"
          ]
        },
        {
          "id": "T0539",
          "relation": 5,
          "rule": "sub",
          "triangle": "ADP",
          "side": "hi",
          "value": "254829/500000",
          "sources": [
            "U_ADO",
            "L_DOP",
            "T0469"
          ]
        },
        {
          "id": "T0540",
          "relation": 6,
          "rule": "sum",
          "triangle": "AEF",
          "side": "lo",
          "value": "441647/1000000",
          "sources": [
            "T0459",
            "T0509",
            "L_AFP"
          ]
        },
        {
          "id": "T0542",
          "relation": 7,
          "rule": "sum",
          "triangle": "AEH",
          "side": "lo",
          "value": "767751/1000000",
          "sources": [
            "T0403",
            "T0330",
            "T0397"
          ]
        },
        {
          "id": "T0546",
          "relation": 9,
          "rule": "sum",
          "triangle": "AEO",
          "side": "lo",
          "value": "476167/1000000",
          "sources": [
            "T0459",
            "T0496",
            "T0469"
          ]
        },
        {
          "id": "T0547",
          "relation": 10,
          "rule": "sub",
          "triangle": "FGH",
          "side": "hi",
          "value": "449637/1000000",
          "sources": [
            "U_AFH",
            "T0523",
            "T0397"
          ]
        },
        {
          "id": "T0550",
          "relation": 11,
          "rule": "sub",
          "triangle": "AHO",
          "side": "hi",
          "value": "121821/250000",
          "sources": [
            "U_AFH",
            "T0382",
            "L_FHO"
          ]
        },
        {
          "id": "T0557",
          "relation": 14,
          "rule": "sum",
          "triangle": "BCH",
          "side": "lo",
          "value": "75203/200000",
          "sources": [
            "T0470",
            "L_CGH",
            "L_BGH"
          ]
        },
        {
          "id": "T0562",
          "relation": 18,
          "rule": "sub",
          "triangle": "BEG",
          "side": "hi",
          "value": "96221/200000",
          "sources": [
            "U_BEH",
            "T0330",
            "L_BGH"
          ]
        },
        {
          "id": "T0572",
          "relation": 26,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "147431/250000",
          "sources": [
            "T0527",
            "T0384",
            "T0495"
          ]
        },
        {
          "id": "T0573",
          "relation": 29,
          "rule": "sum",
          "triangle": "CGO",
          "side": "lo",
          "value": "431523/1000000",
          "sources": [
            "T0495",
            "L_COP",
            "T0511"
          ]
        },
        {
          "id": "T0575",
          "relation": 30,
          "rule": "sum",
          "triangle": "CHO",
          "side": "lo",
          "value": "161669/500000",
          "sources": [
            "T0508",
            "L_COP",
            "T0502"
          ]
        },
        {
          "id": "T0581",
          "relation": 34,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "87953/250000",
          "sources": [
            "T0509",
            "T0384",
            "L_EGP"
          ]
        },
        {
          "id": "T0582",
          "relation": 34,
          "rule": "sub",
          "triangle": "EFP",
          "side": "hi",
          "value": "189279/1000000",
          "sources": [
            "U_EFG",
            "T0384",
            "L_EGP"
          ]
        },
        {
          "id": "T0585",
          "relation": 35,
          "rule": "sum",
          "triangle": "EFH",
          "side": "lo",
          "value": "312761/1000000",
          "sources": [
            "T0420",
            "L_FHO",
            "L_EHO"
          ]
        },
        {
          "id": "T0586",
          "relation": 36,
          "rule": "sum",
          "triangle": "EGH",
          "side": "lo",
          "value": "409747/1000000",
          "sources": [
            "L_EGP",
            "L_EHP",
            "T0510"
          ]
        },
        {
          "id": "T0588",
          "relation": 37,
          "rule": "sum",
          "triangle": "EGO",
          "side": "lo",
          "value": "62193/200000",
          "sources": [
            "L_EGP",
            "T0496",
            "T0511"
          ]
        },
        {
          "id": "T0591",
          "relation": 38,
          "rule": "sum",
          "triangle": "FGH",
          "side": "lo",
          "value": "373031/1000000",
          "sources": [
            "L_FGO",
            "L_FHO",
            "T0404"
          ]
        },
        {
          "id": "T0592",
          "relation": 38,
          "rule": "sub",
          "triangle": "GHO",
          "side": "hi",
          "value": "263637/1000000",
          "sources": [
            "T0547",
            "L_FGO",
            "L_FHO"
          ]
        },
        {
          "id": "T0593",
          "relation": 39,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "4892/15625",
          "sources": [
            "L_FHO",
            "T0502",
            "L_FOP"
          ]
        },
        {
          "id": "T0608",
          "relation": 157,
          "rule": "sumlo",
          "triangle": "AEG",
          "side": "lo",
          "value": "32801/125000",
          "sources": [
            "T0542",
            "L_AGO",
            "T0546",
            "T0397",
            "T0550"
          ]
        },
        {
          "id": "T0612",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACD",
          "side": "lo",
          "value": "1576/15625",
          "sources": [
            "L_ABC",
            "T0357",
            "T0534",
            "L_BCD",
            "U_BCO"
          ]
        },
        {
          "id": "T0614",
          "relation": 292,
          "rule": "sumlo",
          "triangle": "ACE",
          "side": "lo",
          "value": "183819/500000",
          "sources": [
            "T0612",
            "T0386",
            "T0532",
            "L_CDE",
            "U_CDF"
          ]
        },
        {
          "id": "T0615",
          "relation": 292,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "14203/125000",
          "sources": [
            "T0612",
            "T0386",
            "T0532",
            "L_CDE",
            "U_ACE"
          ]
        },
        {
          "id": "T0616",
          "relation": 295,
          "rule": "sumlo",
          "triangle": "CDO",
          "side": "lo",
          "value": "5667/50000",
          "sources": [
            "T0612",
            "T0461",
            "T0534",
            "L_CDE",
            "U_ACE"
          ]
        },
        {
          "id": "T0622",
          "relation": 333,
          "rule": "sumlo",
          "triangle": "CDH",
          "side": "lo",
          "value": "145509/1000000",
          "sources": [
            "L_BCD",
            "L_CFH",
            "T0557",
            "T0615",
            "U_BCF"
          ]
        },
        {
          "id": "T0628",
          "relation": 523,
          "rule": "sumlo",
          "triangle": "ADE",
          "side": "lo",
          "value": "89463/250000",
          "sources": [
            "T0614",
            "L_DEF",
            "T0540",
            "L_CDE",
            "U_CEF"
          ]
        },
        {
          "id": "T0632",
          "relation": 539,
          "rule": "sumlo",
          "triangle": "DEH",
          "side": "lo",
          "value": "347073/1000000",
          "sources": [
            "T0628",
            "T0585",
            "T0542",
            "L_DEF",
            "U_AEF"
          ]
        },
        {
          "id": "T0654",
          "relation": 674,
          "rule": "sumlo",
          "triangle": "AFO",
          "side": "lo",
          "value": "181819/1000000",
          "sources": [
            "T0523",
            "L_FHO",
            "L_AFH",
            "L_FGO",
            "T0547"
          ]
        },
        {
          "id": "T0662",
          "relation": 698,
          "rule": "sumlo",
          "triangle": "CEF",
          "side": "lo",
          "value": "66979/500000",
          "sources": [
            "T0615",
            "T0581",
            "T0572",
            "L_DEF",
            "U_DFG"
          ]
        },
        {
          "id": "T0672",
          "relation": 745,
          "rule": "sumlo",
          "triangle": "AGH",
          "side": "lo",
          "value": "12993/100000",
          "sources": [
            "L_ABG",
            "T0586",
            "T0608",
            "L_BGH",
            "T0562"
          ]
        },
        {
          "id": "T0676",
          "relation": 766,
          "rule": "sumlo",
          "triangle": "ACG",
          "side": "lo",
          "value": "61369/250000",
          "sources": [
            "T0672",
            "T0573",
            "L_AGO",
            "L_CGH",
            "T0592"
          ]
        },
        {
          "id": "T0679",
          "relation": 782,
          "rule": "sumlo",
          "triangle": "AEG",
          "side": "lo",
          "value": "74449/250000",
          "sources": [
            "T0672",
            "T0588",
            "L_AGO",
            "T0586",
            "T0592"
          ]
        },
        {
          "id": "T0684",
          "relation": 788,
          "rule": "sumlo",
          "triangle": "AGP",
          "side": "lo",
          "value": "136439/1000000",
          "sources": [
            "T0672",
            "T0511",
            "L_AGO",
            "T0510",
            "T0592"
          ]
        },
        {
          "id": "T0708",
          "relation": 1071,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "266283/1000000",
          "sources": [
            "T0573",
            "L_FHO",
            "T0575",
            "L_FGO",
            "T0592"
          ]
        },
        {
          "id": "T0710",
          "relation": 1085,
          "rule": "sumlo",
          "triangle": "EFO",
          "side": "lo",
          "value": "142501/1000000",
          "sources": [
            "T0588",
            "L_FHO",
            "L_EHO",
            "L_FGO",
            "T0592"
          ]
        },
        {
          "id": "T0724",
          "relation": 2180,
          "rule": "support_z",
          "triangle": "CEG",
          "side": "lo",
          "value": "89673/250000",
          "sources": [
            "T0572",
            "U_EFG"
          ]
        },
        {
          "id": "T0726",
          "relation": 2195,
          "rule": "support_z",
          "triangle": "CEP",
          "side": "lo",
          "value": "40651/200000",
          "sources": [
            "T0527",
            "T0582"
          ]
        },
        {
          "id": "T0748",
          "relation": 2861,
          "rule": "balance_lo",
          "triangle": "ACP",
          "side": "lo",
          "value": "86129/200000",
          "sources": [
            "T0532",
            "L_EGP",
            "T0679",
            "T0527",
            "L_AFP",
            "T0724",
            "U_EFG"
          ]
        },
        {
          "id": "T0757",
          "relation": 2944,
          "rule": "balance_lo",
          "triangle": "ACO",
          "side": "lo",
          "value": "329549/500000",
          "sources": [
            "T0748",
            "T0710",
            "T0540",
            "L_COP",
            "T0469",
            "T0662",
            "T0582"
          ]
        },
        {
          "id": "T0758",
          "relation": 2944,
          "rule": "balance_lo",
          "triangle": "EFP",
          "side": "lo",
          "value": "42217/250000",
          "sources": [
            "T0748",
            "T0710",
            "T0540",
            "L_COP",
            "T0469",
            "T0662",
            "U_ACO"
          ]
        },
        {
          "id": "T0761",
          "relation": 2945,
          "rule": "balance_hi",
          "triangle": "AOP",
          "side": "hi",
          "value": "46673/200000",
          "sources": [
            "T0757",
            "L_EGP",
            "T0535",
            "U_EGO",
            "T0679",
            "L_COP",
            "T0724"
          ]
        },
        {
          "id": "T0762",
          "relation": 2945,
          "rule": "balance_hi",
          "triangle": "CEG",
          "side": "hi",
          "value": "251269/500000",
          "sources": [
            "T0757",
            "L_EGP",
            "T0535",
            "U_EGO",
            "T0679",
            "L_COP",
            "T0469"
          ]
        },
        {
          "id": "T0763",
          "relation": 2949,
          "rule": "balance_lo",
          "triangle": "CGH",
          "side": "lo",
          "value": "71177/500000",
          "sources": [
            "T0757",
            "T0510",
            "T0535",
            "T0592",
            "T0672",
            "L_COP",
            "T0761"
          ]
        },
        {
          "id": "T0783",
          "relation": 3296,
          "rule": "balance_lo",
          "triangle": "AEP",
          "side": "lo",
          "value": "28827/125000",
          "sources": [
            "T0523",
            "L_EHP",
            "L_AFH",
            "L_EGP",
            "T0672",
            "T0758",
            "T0547"
          ]
        },
        {
          "id": "T0784",
          "relation": 3320,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "63471/500000",
          "sources": [
            "T0523",
            "L_COP",
            "L_AFP",
            "T0573",
            "T0684",
            "T0708",
            "U_ACO"
          ]
        },
        {
          "id": "T0789",
          "relation": 3351,
          "rule": "balance_lo",
          "triangle": "AHP",
          "side": "lo",
          "value": "488501/1000000",
          "sources": [
            "T0679",
            "T0593",
            "L_AFH",
            "L_EGP",
            "L_AFP",
            "T0586",
            "U_EFG"
          ]
        },
        {
          "id": "T0793",
          "relation": 3365,
          "rule": "balance_lo",
          "triangle": "AOP",
          "side": "lo",
          "value": "36691/200000",
          "sources": [
            "T0679",
            "L_FOP",
            "T0654",
            "L_EGP",
            "L_AFP",
            "T0588",
            "U_EFG"
          ]
        },
        {
          "id": "T0818",
          "relation": 4116,
          "rule": "balance_lo",
          "triangle": "CEF",
          "side": "lo",
          "value": "73483/500000",
          "sources": [
            "T0748",
            "L_DEF",
            "T0783",
            "T0615",
            "L_AFP",
            "L_CDE",
            "T0539"
          ]
        },
        {
          "id": "T0824",
          "relation": 4143,
          "rule": "balance_lo",
          "triangle": "CEH",
          "side": "lo",
          "value": "224123/500000",
          "sources": [
            "T0748",
            "T0632",
            "T0783",
            "T0622",
            "T0789",
            "L_CDE",
            "T0539"
          ]
        },
        {
          "id": "T0831",
          "relation": 4395,
          "rule": "balance_lo",
          "triangle": "CGP",
          "side": "lo",
          "value": "128899/500000",
          "sources": [
            "T0532",
            "L_EGP",
            "T0523",
            "T0726",
            "L_AFP",
            "T0724",
            "U_AEF"
          ]
        },
        {
          "id": "T0850",
          "relation": 4849,
          "rule": "balance_lo",
          "triangle": "CHP",
          "side": "lo",
          "value": "2789/20000",
          "sources": [
            "T0824",
            "T0784",
            "L_CFH",
            "L_EGP",
            "U_CGH",
            "T0582",
            "U_EFG"
          ]
        },
        {
          "id": "T0855",
          "relation": 4912,
          "rule": "balance_lo",
          "triangle": "GHP",
          "side": "lo",
          "value": "226921/1000000",
          "sources": [
            "T0523",
            "L_EHP",
            "L_AFH",
            "L_EGP",
            "L_AFP",
            "T0586",
            "U_AEF"
          ]
        },
        {
          "id": "T0860",
          "relation": 4960,
          "rule": "balance_lo",
          "triangle": "CFP",
          "side": "lo",
          "value": "271721/1000000",
          "sources": [
            "T0831",
            "L_FHO",
            "T0850",
            "L_FGO",
            "L_COP",
            "T0591",
            "T0592"
          ]
        },
        {
          "id": "T0869",
          "relation": 8248,
          "rule": "linear",
          "triangle": "AFG",
          "side": "lo",
          "value": "189681/1000000",
          "sources": [
            "T0672",
            "L_AGO"
          ]
        },
        {
          "id": "T0878",
          "relation": 0,
          "rule": "sum",
          "triangle": "ACF",
          "side": "lo",
          "value": "397683/500000",
          "sources": [
            "T0748",
            "T0860",
            "L_AFP"
          ]
        },
        {
          "id": "T0879",
          "relation": 1,
          "rule": "sum",
          "triangle": "ACH",
          "side": "lo",
          "value": "1618/3125",
          "sources": [
            "T0676",
            "T0763",
            "T0672"
          ]
        },
        {
          "id": "T0880",
          "relation": 2,
          "rule": "sum",
          "triangle": "ACO",
          "side": "lo",
          "value": "7071/10000",
          "sources": [
            "T0748",
            "L_COP",
            "T0793"
          ]
        },
        {
          "id": "T0881",
          "relation": 2,
          "rule": "sub",
          "triangle": "ACP",
          "side": "hi",
          "value": "462309/1000000",
          "sources": [
            "U_ACO",
            "L_COP",
            "T0793"
          ]
        },
        {
          "id": "T0887",
          "relation": 6,
          "rule": "sum",
          "triangle": "AEF",
          "side": "lo",
          "value": "123121/250000",
          "sources": [
            "T0783",
            "T0758",
            "L_AFP"
          ]
        },
        {
          "id": "T0899",
          "relation": 11,
          "rule": "sub",
          "triangle": "AHO",
          "side": "hi",
          "value": "239807/500000",
          "sources": [
            "U_AFH",
            "T0654",
            "L_FHO"
          ]
        },
        {
          "id": "T0904",
          "relation": 13,
          "rule": "sum",
          "triangle": "AHP",
          "side": "lo",
          "value": "49329/100000",
          "sources": [
            "T0672",
            "T0684",
            "T0855"
          ]
        },
        {
          "id": "T0925",
          "relation": 26,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "656461/1000000",
          "sources": [
            "T0860",
            "T0784",
            "T0831"
          ]
        },
        {
          "id": "T0936",
          "relation": 34,
          "rule": "sum",
          "triangle": "EFG",
          "side": "lo",
          "value": "38881/100000",
          "sources": [
            "T0758",
            "T0784",
            "L_EGP"
          ]
        },
        {
          "id": "T0937",
          "relation": 34,
          "rule": "sub",
          "triangle": "EFP",
          "side": "hi",
          "value": "18083/100000",
          "sources": [
            "U_EFG",
            "T0784",
            "L_EGP"
          ]
        },
        {
          "id": "T0980",
          "relation": 119,
          "rule": "diffhi",
          "triangle": "ACE",
          "side": "hi",
          "value": "580221/1000000",
          "sources": [
            "T0881",
            "U_AEH",
            "T0879",
            "T0783",
            "T0904"
          ]
        },
        {
          "id": "T0982",
          "relation": 127,
          "rule": "sumlo",
          "triangle": "ACG",
          "side": "lo",
          "value": "291953/1000000",
          "sources": [
            "T0879",
            "L_AGO",
            "T0880",
            "T0672",
            "T0899"
          ]
        },
        {
          "id": "T0997",
          "relation": 275,
          "rule": "sumlo",
          "triangle": "ACD",
          "side": "lo",
          "value": "29043/250000",
          "sources": [
            "L_ABC",
            "T0616",
            "T0880",
            "L_BCD",
            "U_BCO"
          ]
        },
        {
          "id": "T1004",
          "relation": 292,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "156909/1000000",
          "sources": [
            "T0997",
            "T0818",
            "T0878",
            "L_CDE",
            "T0980"
          ]
        },
        {
          "id": "T1010",
          "relation": 297,
          "rule": "sumlo",
          "triangle": "CDG",
          "side": "lo",
          "value": "70983/500000",
          "sources": [
            "T0997",
            "T0925",
            "T0982",
            "T1004",
            "U_ACF"
          ]
        },
        {
          "id": "T1026",
          "relation": 362,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "81501/500000",
          "sources": [
            "L_CDE",
            "T0925",
            "T1010",
            "T0818",
            "T0762"
          ]
        },
        {
          "id": "T1080",
          "relation": 643,
          "rule": "sumlo",
          "triangle": "CEF",
          "side": "lo",
          "value": "175801/1000000",
          "sources": [
            "T0878",
            "L_DEF",
            "T0887",
            "T1026",
            "U_ADF"
          ]
        },
        {
          "id": "T1087",
          "relation": 651,
          "rule": "sumlo",
          "triangle": "EFP",
          "side": "lo",
          "value": "2183/12500",
          "sources": [
            "T0887",
            "T0860",
            "L_AFP",
            "T1080",
            "U_ACF"
          ]
        },
        {
          "id": "T1088",
          "relation": 651,
          "rule": "diffhi",
          "triangle": "AEF",
          "side": "hi",
          "value": "512073/1000000",
          "sources": [
            "U_ACF",
            "T0937",
            "L_AFP",
            "T1080",
            "T0860"
          ]
        },
        {
          "id": "T1100",
          "relation": 661,
          "rule": "diffhi",
          "triangle": "DFP",
          "side": "hi",
          "value": "152297/500000",
          "sources": [
            "U_ADF",
            "T0937",
            "L_AFP",
            "L_DEF",
            "T0887"
          ]
        },
        {
          "id": "T1103",
          "relation": 670,
          "rule": "sumlo",
          "triangle": "FGP",
          "side": "lo",
          "value": "135303/1000000",
          "sources": [
            "T0869",
            "T1087",
            "L_AFP",
            "T0936",
            "T1088"
          ]
        },
        {
          "id": "T1116",
          "relation": 701,
          "rule": "sumlo",
          "triangle": "CEF",
          "side": "lo",
          "value": "8821/50000",
          "sources": [
            "T1026",
            "T1087",
            "T0860",
            "L_DEF",
            "T1100"
          ]
        },
        {
          "id": "T1119",
          "relation": 710,
          "rule": "sumlo",
          "triangle": "CFG",
          "side": "lo",
          "value": "716241/1000000",
          "sources": [
            "T1116",
            "T1103",
            "T0860",
            "T0936",
            "T0937"
          ]
        }
      ],
      "physical": {}
    }
  ],
  "terminal": {
    "kind": "scalar",
    "stage": 6,
    "contradiction": {
      "triangle": "CFG",
      "lower": "T1119",
      "upper": "U_CFG"
    }
  },
  "word": "CEF"
}
```
