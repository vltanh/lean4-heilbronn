# CB1pp

```n7-central-cef-packet
{
  "id": "CB1pp",
  "cell": "CB",
  "given": [
    "AGO-",
    "AGP-",
    "DGP-",
    "AFG+",
    "EGP+",
    "FGO+"
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
        "EGP+"
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
        "EGP": 1
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
        "L_DEG": {
          "triangle": "DEG",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DEG",
            "points": [
              "P"
            ]
          }
        }
      },
      "relations": {},
      "updates": [],
      "physical": {
        "76": {
          "name": "AREA_LO_DEG",
          "terms": [
            [
              [
                4,
                6
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
                6
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
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DEG",
            "side": "lo",
            "reference": "L_DEG",
            "value": "279/1000"
          }
        }
      },
      "coordinate": {
        "low": [
          "6131/50000",
          "123/1000",
          "13857/20000",
          "6131/50000",
          "440809/1000000",
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
          "588811/1000000",
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
            "factor": 76,
            "target": "d",
            "old": [
              "6131/50000",
              "604217/1000000"
            ],
            "lines": [
              [
                "-219209/250000",
                "23502166227/250000000000"
              ],
              [
                "-219209/250000",
                "129072563/250000000"
              ],
              [
                "-260353/500000",
                "-28745052741/500000000000"
              ],
              [
                "-260353/500000",
                "96640171/500000000"
              ]
            ],
            "raw": [
              "6131/50000",
              "129072563/219209000"
            ],
            "new": [
              "6131/50000",
              "588811/1000000"
            ]
          },
          {
            "factor": 76,
            "target": "e",
            "old": [
              "425403/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "219209/250000",
                "-4831470379/12500000000"
              ],
              [
                "219209/250000",
                "-198822670499/250000000000"
              ],
              [
                "260353/500000",
                "-8571224243/25000000000"
              ],
              [
                "260353/500000",
                "-292798710283/500000000000"
              ]
            ],
            "raw": [
              "4831470379/10960450000",
              "907/1000"
            ],
            "new": [
              "440809/1000000",
              "907/1000"
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
        "EGP+"
      ],
      "initial_box": {
        "low": [
          "6131/50000",
          "123/1000",
          "13857/20000",
          "6131/50000",
          "440809/1000000",
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
          "588811/1000000",
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
        "EGP": 1
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
          "440809/1000000",
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
          "588811/1000000",
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
      "id": 7,
      "assumptions": [
        "AGO-",
        "AGP-",
        "DGP-",
        "AFG+",
        "EGP+",
        "FGO+"
      ],
      "initial_box": {
        "low": [
          "6131/50000",
          "123/1000",
          "13857/20000",
          "6131/50000",
          "440809/1000000",
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
          "588811/1000000",
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
        "EGP": 1,
        "FGO": 1
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
              "1868299/18140000",
              "66115613/226750000",
              "11397/20000",
              "189609/250000"
            ],
            "cell": "CB"
          }
        },
        "U_CFG": {
          "triangle": "CFG",
          "side": "hi",
          "value": "11848/15625",
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
              "3126150597/20000000000",
              "1869534329/10000000000",
              "50639137269/250000000000",
              "69924503359/250000000000",
              "38674677433/125000000000",
              "177946490387/500000000000",
              "201071/500000",
              "10248750597/20000000000",
              "5430834329/10000000000",
              "139671637269/250000000000",
              "158957003359/250000000000",
              "83190927433/125000000000",
              "356011490387/500000000000",
              "11848/15625"
            ],
            "cell": "CB"
          }
        },
        "U_DEG": {
          "triangle": "DEG",
          "side": "hi",
          "value": "8597157771/12500000000",
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
              "-16221685209/125000000000",
              "-19266382353/250000000000",
              "82841460717/500000000000",
              "69749892501/250000000000",
              "10210784307/25000000000",
              "8597157771/12500000000"
            ],
            "cell": "CB"
          }
        },
        "U_DFG": {
          "triangle": "DFG",
          "side": "hi",
          "value": "92784151237/125000000000",
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
              "75275247717/500000000000",
              "97216560381/500000000000",
              "335543427/1562500000",
              "121168444687/500000000000",
              "74246808501/250000000000",
              "152647567217/500000000000",
              "85217464833/250000000000",
              "9237310807/25000000000",
              "95477025471/250000000000",
              "48596703493/125000000000",
              "13431620953/31250000000",
              "112932968251/250000000000",
              "13180228317/25000000000",
              "4262211073/6250000000",
              "173592360321/250000000000",
              "92784151237/125000000000"
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
              "-3815935229/50000000000",
              "-9792551607/250000000000",
              "6104882741/100000000000",
              "49098662781/500000000000",
              "151313697/1000000000",
              "52529538643/250000000000",
              "54041061519/250000000000",
              "34976315851/125000000000",
              "173742843281/500000000000",
              "200301029/500000000",
              "208589029399/500000000000",
              "71536684683/125000000000"
            ],
            "cell": "CB"
          }
        },
        "U_FGP": {
          "triangle": "FGP",
          "side": "hi",
          "value": "246861571703/500000000000",
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
              "-5963508417/25000000000",
              "-4704697357/31250000000",
              "-3145380501/25000000000",
              "-48827963029/500000000000",
              "-42036585459/500000000000",
              "-591018731/15625000000",
              "-185882601/6250000000",
              "-2722591757/250000000000",
              "11576586603/500000000000",
              "6967767387/250000000000",
              "35443280721/500000000000",
              "259324689/3125000000",
              "44868705287/500000000000",
              "25458687403/250000000000",
              "28965272701/250000000000",
              "15472618851/125000000000",
              "35149046547/250000000000",
              "71788399367/500000000000",
              "37965660253/250000000000",
              "20680674519/125000000000",
              "16875548017/100000000000",
              "18233823531/100000000000",
              "91805839041/500000000000",
              "101231263607/500000000000",
              "57146551861/250000000000",
              "15262786021/62500000000",
              "68167935069/250000000000",
              "186649758939/500000000000",
              "98273841451/250000000000",
              "10456851181/25000000000",
              "21592840119/50000000000",
              "246861571703/500000000000"
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
        "16": {
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
        "17": {
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
        "20": {
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
        "23": {
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
        "24": {
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
        "26": {
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
        "28": {
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
        "231": {
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
        "293": {
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
        "376": {
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
        "508": {
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
        "520": {
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
        "530": {
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
        "539": {
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
        "602": {
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
        "634": {
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
        "793": {
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
        "800": {
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
        "822": {
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
        "832": {
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
        "838": {
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
        "1130": {
          "row": [
            "support",
            "DFG",
            "CFG",
            "CDF",
            "897/1000"
          ],
          "witness": {
            "kind": "quad_support",
            "poly": "FGCD",
            "occupants": [
              "O",
              "P"
            ],
            "rate": "299/31"
          }
        },
        "1306": {
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
        "2729": {
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
        "2980": {
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
        "3142": {
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
        "5083": {
          "row": [
            "linear",
            {
              "CDF": "-279/1000",
              "CFG": "46284151237/125000000000",
              "CFP": "-92784151237/125000000000"
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
              "value": "92784151237/125000000000"
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
            "residual": "34659151237/125000000000"
          }
        },
        "5130": {
          "row": [
            "linear",
            {
              "DOP": "-279/1000",
              "FOP": "-93/1000",
              "GOP": "46284151237/125000000000"
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
              "value": "92784151237/125000000000"
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
            "residual": "34659151237/125000000000"
          }
        },
        "5370": {
          "row": [
            "linear",
            {
              "CFG": "-93/1000",
              "CFP": "-93/1000",
              "CFO": "246861571703/500000000000"
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
              "value": "246861571703/500000000000"
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
            "residual": "107361571703/500000000000"
          }
        },
        "5378": {
          "row": [
            "linear",
            {
              "CFP": "153861571703/500000000000",
              "CGP": "-93/1000",
              "COP": "-246861571703/500000000000"
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
              "value": "246861571703/500000000000"
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
            "residual": "107361571703/500000000000"
          }
        },
        "5382": {
          "row": [
            "linear",
            {
              "DFG": "-93/1000",
              "DFP": "-93/1000",
              "DFO": "246861571703/500000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "FGP",
            "point": "O",
            "line": "DF",
            "side": "lower",
            "outer_upper": {
              "triangle": "FGP",
              "ref": "U_FGP",
              "value": "246861571703/500000000000"
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
            "residual": "107361571703/500000000000"
          }
        },
        "5388": {
          "row": [
            "linear",
            {
              "DFP": "153861571703/500000000000",
              "DGP": "-93/1000",
              "DOP": "-246861571703/500000000000"
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
              "value": "246861571703/500000000000"
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
            "residual": "107361571703/500000000000"
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
          "value": "117471/200000",
          "sources": [
            "U_ACH",
            "L_CGH",
            "L_AGH"
          ]
        },
        {
          "id": "T0006",
          "relation": 16,
          "rule": "sub",
          "triangle": "CGO",
          "side": "hi",
          "value": "35767/62500",
          "sources": [
            "U_CFG",
            "L_CFO",
            "L_FGO"
          ]
        },
        {
          "id": "T0013",
          "relation": 23,
          "rule": "sub",
          "triangle": "DGO",
          "side": "hi",
          "value": "278137/500000",
          "sources": [
            "U_DFG",
            "L_DFO",
            "L_FGO"
          ]
        },
        {
          "id": "T0014",
          "relation": 24,
          "rule": "sub",
          "triangle": "DFP",
          "side": "hi",
          "value": "185137/500000",
          "sources": [
            "U_DFG",
            "L_FGP",
            "L_DGP"
          ]
        },
        {
          "id": "T0028",
          "relation": 231,
          "rule": "sumlo",
          "triangle": "CDG",
          "side": "lo",
          "value": "96361/1000000",
          "sources": [
            "L_BCD",
            "L_CFG",
            "L_BCG",
            "L_CDF",
            "U_BCF"
          ]
        },
        {
          "id": "T0032",
          "relation": 293,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "31927/250000",
          "sources": [
            "L_CFG",
            "L_COP",
            "L_CFO",
            "L_CGP",
            "T0006"
          ]
        },
        {
          "id": "T0037",
          "relation": 376,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "26679/250000",
          "sources": [
            "L_CDE",
            "L_DFG",
            "T0028",
            "L_DEF",
            "U_DEG"
          ]
        },
        {
          "id": "T0048",
          "relation": 508,
          "rule": "diffhi",
          "triangle": "CFP",
          "side": "hi",
          "value": "72453/200000",
          "sources": [
            "U_CFG",
            "T0014",
            "T0037",
            "L_FGP",
            "L_DFG"
          ]
        },
        {
          "id": "T0051",
          "relation": 520,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "38641/250000",
          "sources": [
            "L_CFG",
            "L_FOP",
            "T0032",
            "L_FGO",
            "U_FGP"
          ]
        },
        {
          "id": "T0056",
          "relation": 539,
          "rule": "sumlo",
          "triangle": "BFG",
          "side": "lo",
          "value": "124429/1000000",
          "sources": [
            "L_ABG",
            "L_CFG",
            "L_AFG",
            "L_BCG",
            "T0001"
          ]
        },
        {
          "id": "T0063",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCG",
          "side": "lo",
          "value": "132811/1000000",
          "sources": [
            "T0056",
            "L_CGH",
            "L_BGH",
            "L_CFG",
            "U_FGH"
          ]
        },
        {
          "id": "T0068",
          "relation": 634,
          "rule": "sumlo",
          "triangle": "CGP",
          "side": "lo",
          "value": "123027/1000000",
          "sources": [
            "T0028",
            "L_FGP",
            "L_CFG",
            "L_DGP",
            "U_DFG"
          ]
        },
        {
          "id": "T0071",
          "relation": 832,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "103207/1000000",
          "sources": [
            "T0068",
            "L_FOP",
            "L_COP",
            "L_FGP",
            "T0048"
          ]
        },
        {
          "id": "T0082",
          "relation": 1130,
          "rule": "support_z",
          "triangle": "CDF",
          "side": "lo",
          "value": "53577/500000",
          "sources": [
            "L_DFG",
            "U_CFG"
          ]
        },
        {
          "id": "T0086",
          "relation": 1306,
          "rule": "support_z",
          "triangle": "BFG",
          "side": "lo",
          "value": "179181/1000000",
          "sources": [
            "L_CFG",
            "U_BCF"
          ]
        },
        {
          "id": "T0099",
          "relation": 2729,
          "rule": "balance_lo",
          "triangle": "DOP",
          "side": "lo",
          "value": "111379/1000000",
          "sources": [
            "T0082",
            "T0071",
            "T0028",
            "L_FOP",
            "L_COP",
            "L_DFG",
            "U_CFG"
          ]
        },
        {
          "id": "T0109",
          "relation": 2980,
          "rule": "balance_lo",
          "triangle": "CFP",
          "side": "lo",
          "value": "157783/1000000",
          "sources": [
            "T0028",
            "L_FOP",
            "T0051",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0013"
          ]
        },
        {
          "id": "T0118",
          "relation": 3142,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "183053/1000000",
          "sources": [
            "L_CDO",
            "L_FGP",
            "T0051",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0006"
          ]
        },
        {
          "id": "T0136",
          "relation": 5083,
          "rule": "linear",
          "triangle": "CFP",
          "side": "hi",
          "value": "168989/500000",
          "sources": [
            "T0082",
            "U_CFG"
          ]
        },
        {
          "id": "T0142",
          "relation": 5130,
          "rule": "linear",
          "triangle": "GOP",
          "side": "lo",
          "value": "53641/500000",
          "sources": [
            "T0099",
            "L_FOP"
          ]
        },
        {
          "id": "T0143",
          "relation": 5370,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "160229/1000000",
          "sources": [
            "L_CFG",
            "T0109"
          ]
        },
        {
          "id": "T0144",
          "relation": 5378,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "93197/500000",
          "sources": [
            "T0068",
            "L_COP"
          ]
        },
        {
          "id": "T0146",
          "relation": 5382,
          "rule": "linear",
          "triangle": "DFO",
          "side": "lo",
          "value": "164989/1000000",
          "sources": [
            "L_DFG",
            "T0118"
          ]
        },
        {
          "id": "T0147",
          "relation": 5388,
          "rule": "linear",
          "triangle": "DFP",
          "side": "lo",
          "value": "206807/1000000",
          "sources": [
            "L_DGP",
            "T0099"
          ]
        },
        {
          "id": "T0162",
          "relation": 16,
          "rule": "sub",
          "triangle": "CGO",
          "side": "hi",
          "value": "505043/1000000",
          "sources": [
            "U_CFG",
            "T0143",
            "L_FGO"
          ]
        },
        {
          "id": "T0173",
          "relation": 23,
          "rule": "sub",
          "triangle": "DGO",
          "side": "hi",
          "value": "96857/200000",
          "sources": [
            "U_DFG",
            "T0146",
            "L_FGO"
          ]
        },
        {
          "id": "T0174",
          "relation": 24,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "442467/1000000",
          "sources": [
            "U_DFG",
            "T0147",
            "L_DGP"
          ]
        },
        {
          "id": "T0179",
          "relation": 28,
          "rule": "sum",
          "triangle": "FGP",
          "side": "lo",
          "value": "146641/500000",
          "sources": [
            "L_FGO",
            "T0142",
            "L_FOP"
          ]
        },
        {
          "id": "T0185",
          "relation": 231,
          "rule": "sumlo",
          "triangle": "CDG",
          "side": "lo",
          "value": "103721/1000000",
          "sources": [
            "L_BCD",
            "L_CFG",
            "T0063",
            "T0082",
            "U_BCF"
          ]
        },
        {
          "id": "T0191",
          "relation": 376,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "107711/1000000",
          "sources": [
            "L_CDE",
            "L_DFG",
            "T0185",
            "L_DEF",
            "U_DEG"
          ]
        },
        {
          "id": "T0200",
          "relation": 508,
          "rule": "sumlo",
          "triangle": "DFP",
          "side": "lo",
          "value": "52993/250000",
          "sources": [
            "T0191",
            "T0179",
            "T0144",
            "L_DFG",
            "U_CFG"
          ]
        },
        {
          "id": "T0204",
          "relation": 520,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "46201/250000",
          "sources": [
            "L_CFG",
            "L_FOP",
            "T0144",
            "L_FGO",
            "T0174"
          ]
        },
        {
          "id": "T0206",
          "relation": 530,
          "rule": "sumlo",
          "triangle": "DFO",
          "side": "lo",
          "value": "9509/50000",
          "sources": [
            "L_DFG",
            "L_FOP",
            "T0200",
            "L_FGO",
            "T0174"
          ]
        },
        {
          "id": "T0210",
          "relation": 602,
          "rule": "sumlo",
          "triangle": "BCG",
          "side": "lo",
          "value": "35427/250000",
          "sources": [
            "T0086",
            "L_CGH",
            "L_BGH",
            "L_CFG",
            "U_FGH"
          ]
        },
        {
          "id": "T0214",
          "relation": 634,
          "rule": "sumlo",
          "triangle": "CGP",
          "side": "lo",
          "value": "127789/1000000",
          "sources": [
            "T0185",
            "T0179",
            "L_CFG",
            "L_DGP",
            "U_DFG"
          ]
        },
        {
          "id": "T0221",
          "relation": 832,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "14483/125000",
          "sources": [
            "T0214",
            "L_FOP",
            "L_COP",
            "T0179",
            "T0136"
          ]
        },
        {
          "id": "T0237",
          "relation": 2729,
          "rule": "balance_lo",
          "triangle": "DOP",
          "side": "lo",
          "value": "22831/200000",
          "sources": [
            "T0191",
            "T0221",
            "T0185",
            "L_FOP",
            "L_COP",
            "L_DFG",
            "U_CFG"
          ]
        },
        {
          "id": "T0244",
          "relation": 2980,
          "rule": "balance_lo",
          "triangle": "CFP",
          "side": "lo",
          "value": "188459/1000000",
          "sources": [
            "T0185",
            "L_FOP",
            "T0204",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0173"
          ]
        },
        {
          "id": "T0252",
          "relation": 3142,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "215619/1000000",
          "sources": [
            "L_CDO",
            "T0179",
            "T0204",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0162"
          ]
        },
        {
          "id": "T0274",
          "relation": 16,
          "rule": "sub",
          "triangle": "CGO",
          "side": "hi",
          "value": "120117/250000",
          "sources": [
            "U_CFG",
            "T0204",
            "L_FGO"
          ]
        },
        {
          "id": "T0286",
          "relation": 23,
          "rule": "sub",
          "triangle": "DGO",
          "side": "hi",
          "value": "229547/500000",
          "sources": [
            "U_DFG",
            "T0206",
            "L_FGO"
          ]
        },
        {
          "id": "T0287",
          "relation": 24,
          "rule": "sub",
          "triangle": "DFP",
          "side": "hi",
          "value": "44499/125000",
          "sources": [
            "U_DFG",
            "T0179",
            "L_DGP"
          ]
        },
        {
          "id": "T0288",
          "relation": 24,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "86731/200000",
          "sources": [
            "U_DFG",
            "T0252",
            "L_DGP"
          ]
        },
        {
          "id": "T0292",
          "relation": 26,
          "rule": "sum",
          "triangle": "DGO",
          "side": "lo",
          "value": "323019/1000000",
          "sources": [
            "L_DGP",
            "T0237",
            "T0221"
          ]
        },
        {
          "id": "T0295",
          "relation": 28,
          "rule": "sum",
          "triangle": "FGP",
          "side": "lo",
          "value": "37733/125000",
          "sources": [
            "L_FGO",
            "T0221",
            "L_FOP"
          ]
        },
        {
          "id": "T0300",
          "relation": 231,
          "rule": "sumlo",
          "triangle": "CDG",
          "side": "lo",
          "value": "52541/500000",
          "sources": [
            "L_BCD",
            "L_CFG",
            "T0210",
            "T0191",
            "U_BCF"
          ]
        },
        {
          "id": "T0306",
          "relation": 376,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "21579/200000",
          "sources": [
            "L_CDE",
            "L_DFG",
            "T0300",
            "L_DEF",
            "U_DEG"
          ]
        },
        {
          "id": "T0316",
          "relation": 520,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "94501/500000",
          "sources": [
            "L_CFG",
            "L_FOP",
            "T0244",
            "L_FGO",
            "T0288"
          ]
        },
        {
          "id": "T0318",
          "relation": 530,
          "rule": "sumlo",
          "triangle": "DFO",
          "side": "lo",
          "value": "97413/500000",
          "sources": [
            "L_DFG",
            "L_FOP",
            "T0252",
            "L_FGO",
            "T0288"
          ]
        },
        {
          "id": "T0334",
          "relation": 838,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "121093/1000000",
          "sources": [
            "L_DGP",
            "L_FOP",
            "T0237",
            "T0295",
            "T0287"
          ]
        },
        {
          "id": "T0347",
          "relation": 2729,
          "rule": "balance_lo",
          "triangle": "DOP",
          "side": "lo",
          "value": "57547/500000",
          "sources": [
            "T0306",
            "T0334",
            "T0300",
            "L_FOP",
            "L_COP",
            "L_DFG",
            "U_CFG"
          ]
        },
        {
          "id": "T0354",
          "relation": 2980,
          "rule": "balance_lo",
          "triangle": "CFP",
          "side": "lo",
          "value": "99963/500000",
          "sources": [
            "T0300",
            "L_FOP",
            "T0316",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0286"
          ]
        },
        {
          "id": "T0365",
          "relation": 3142,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "229121/1000000",
          "sources": [
            "L_CDO",
            "T0295",
            "T0316",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0274"
          ]
        },
        {
          "id": "T0385",
          "relation": 16,
          "rule": "sub",
          "triangle": "CGO",
          "side": "hi",
          "value": "47627/100000",
          "sources": [
            "U_CFG",
            "T0316",
            "L_FGO"
          ]
        },
        {
          "id": "T0395",
          "relation": 23,
          "rule": "sub",
          "triangle": "DFO",
          "side": "hi",
          "value": "65251/200000",
          "sources": [
            "U_DFG",
            "L_FGO",
            "T0292"
          ]
        },
        {
          "id": "T0397",
          "relation": 23,
          "rule": "sub",
          "triangle": "DGO",
          "side": "hi",
          "value": "28403/62500",
          "sources": [
            "U_DFG",
            "T0318",
            "L_FGO"
          ]
        },
        {
          "id": "T0398",
          "relation": 24,
          "rule": "sub",
          "triangle": "DFP",
          "side": "hi",
          "value": "34741/100000",
          "sources": [
            "U_DFG",
            "T0295",
            "L_DGP"
          ]
        },
        {
          "id": "T0399",
          "relation": 24,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "420153/1000000",
          "sources": [
            "U_DFG",
            "T0365",
            "L_DGP"
          ]
        },
        {
          "id": "T0403",
          "relation": 26,
          "rule": "sum",
          "triangle": "DGO",
          "side": "lo",
          "value": "329187/1000000",
          "sources": [
            "L_DGP",
            "T0347",
            "T0334"
          ]
        },
        {
          "id": "T0405",
          "relation": 28,
          "rule": "sum",
          "triangle": "FGP",
          "side": "lo",
          "value": "307093/1000000",
          "sources": [
            "L_FGO",
            "T0334",
            "L_FOP"
          ]
        },
        {
          "id": "T0414",
          "relation": 231,
          "rule": "sumlo",
          "triangle": "CDG",
          "side": "lo",
          "value": "105117/1000000",
          "sources": [
            "L_BCD",
            "L_CFG",
            "T0210",
            "T0306",
            "U_BCF"
          ]
        },
        {
          "id": "T0421",
          "relation": 376,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "1079/10000",
          "sources": [
            "L_CDE",
            "L_DFG",
            "T0414",
            "L_DEF",
            "U_DEG"
          ]
        },
        {
          "id": "T0434",
          "relation": 520,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "98807/500000",
          "sources": [
            "L_CFG",
            "L_FOP",
            "T0354",
            "L_FGO",
            "T0399"
          ]
        },
        {
          "id": "T0437",
          "relation": 530,
          "rule": "sumlo",
          "triangle": "DFO",
          "side": "lo",
          "value": "51019/250000",
          "sources": [
            "L_DFG",
            "L_FOP",
            "T0365",
            "L_FGO",
            "T0399"
          ]
        },
        {
          "id": "T0451",
          "relation": 800,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "126643/1000000",
          "sources": [
            "T0403",
            "L_FOP",
            "T0347",
            "L_FGO",
            "T0395"
          ]
        },
        {
          "id": "T0452",
          "relation": 822,
          "rule": "sumlo",
          "triangle": "CGP",
          "side": "lo",
          "value": "67863/500000",
          "sources": [
            "L_CDP",
            "T0405",
            "T0354",
            "L_DGP",
            "T0398"
          ]
        },
        {
          "id": "T0473",
          "relation": 2980,
          "rule": "balance_lo",
          "triangle": "CFP",
          "side": "lo",
          "value": "203739/1000000",
          "sources": [
            "T0414",
            "L_FOP",
            "T0434",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0397"
          ]
        },
        {
          "id": "T0483",
          "relation": 3142,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "233843/1000000",
          "sources": [
            "L_CDO",
            "T0405",
            "T0434",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0385"
          ]
        },
        {
          "id": "T0502",
          "relation": 16,
          "rule": "sub",
          "triangle": "CGO",
          "side": "hi",
          "value": "233829/500000",
          "sources": [
            "U_CFG",
            "T0434",
            "L_FGO"
          ]
        },
        {
          "id": "T0503",
          "relation": 17,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "315453/1000000",
          "sources": [
            "U_CFG",
            "T0405",
            "T0452"
          ]
        },
        {
          "id": "T0512",
          "relation": 23,
          "rule": "sub",
          "triangle": "DGO",
          "side": "hi",
          "value": "222599/500000",
          "sources": [
            "U_DFG",
            "T0437",
            "L_FGO"
          ]
        },
        {
          "id": "T0513",
          "relation": 24,
          "rule": "sub",
          "triangle": "DFP",
          "side": "hi",
          "value": "342181/1000000",
          "sources": [
            "U_DFG",
            "T0405",
            "L_DGP"
          ]
        },
        {
          "id": "T0514",
          "relation": 24,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "415431/1000000",
          "sources": [
            "U_DFG",
            "T0483",
            "L_DGP"
          ]
        },
        {
          "id": "T0519",
          "relation": 28,
          "rule": "sum",
          "triangle": "FGP",
          "side": "lo",
          "value": "312643/1000000",
          "sources": [
            "L_FGO",
            "T0451",
            "L_FOP"
          ]
        },
        {
          "id": "T0529",
          "relation": 231,
          "rule": "sumlo",
          "triangle": "CDG",
          "side": "lo",
          "value": "52559/500000",
          "sources": [
            "L_BCD",
            "L_CFG",
            "T0210",
            "T0421",
            "U_BCF"
          ]
        },
        {
          "id": "T0547",
          "relation": 520,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "200713/1000000",
          "sources": [
            "L_CFG",
            "L_FOP",
            "T0473",
            "L_FGO",
            "T0514"
          ]
        },
        {
          "id": "T0550",
          "relation": 530,
          "rule": "sumlo",
          "triangle": "DFO",
          "side": "lo",
          "value": "207453/1000000",
          "sources": [
            "L_DFG",
            "L_FOP",
            "T0483",
            "L_FGO",
            "T0514"
          ]
        },
        {
          "id": "T0564",
          "relation": 822,
          "rule": "sumlo",
          "triangle": "CGP",
          "side": "lo",
          "value": "28069/200000",
          "sources": [
            "L_CDP",
            "T0519",
            "T0473",
            "L_DGP",
            "T0513"
          ]
        },
        {
          "id": "T0566",
          "relation": 832,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "133547/1000000",
          "sources": [
            "T0564",
            "L_FOP",
            "L_COP",
            "T0519",
            "T0503"
          ]
        },
        {
          "id": "T0585",
          "relation": 2980,
          "rule": "balance_lo",
          "triangle": "CFP",
          "side": "lo",
          "value": "10431/50000",
          "sources": [
            "T0529",
            "L_FOP",
            "T0547",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0512"
          ]
        },
        {
          "id": "T0594",
          "relation": 3142,
          "rule": "balance_lo",
          "triangle": "DFP",
          "side": "lo",
          "value": "23987/100000",
          "sources": [
            "L_CDO",
            "T0519",
            "T0547",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0502"
          ]
        },
        {
          "id": "T0612",
          "relation": 17,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "76321/250000",
          "sources": [
            "U_CFG",
            "T0519",
            "T0564"
          ]
        },
        {
          "id": "T0613",
          "relation": 17,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "409307/1000000",
          "sources": [
            "U_CFG",
            "T0585",
            "T0564"
          ]
        },
        {
          "id": "T0621",
          "relation": 23,
          "rule": "sub",
          "triangle": "DGO",
          "side": "hi",
          "value": "441821/1000000",
          "sources": [
            "U_DFG",
            "T0550",
            "L_FGO"
          ]
        },
        {
          "id": "T0622",
          "relation": 24,
          "rule": "sub",
          "triangle": "DFP",
          "side": "hi",
          "value": "336631/1000000",
          "sources": [
            "U_DFG",
            "T0519",
            "L_DGP"
          ]
        },
        {
          "id": "T0627",
          "relation": 28,
          "rule": "sum",
          "triangle": "FGP",
          "side": "lo",
          "value": "319547/1000000",
          "sources": [
            "L_FGO",
            "T0566",
            "L_FOP"
          ]
        },
        {
          "id": "T0659",
          "relation": 520,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "8193/40000",
          "sources": [
            "L_CFG",
            "L_FOP",
            "T0585",
            "L_FGO",
            "T0613"
          ]
        },
        {
          "id": "T0662",
          "relation": 530,
          "rule": "sumlo",
          "triangle": "DFO",
          "side": "lo",
          "value": "105963/500000",
          "sources": [
            "L_DFG",
            "L_FOP",
            "T0594",
            "L_FGO",
            "T0613"
          ]
        },
        {
          "id": "T0675",
          "relation": 822,
          "rule": "sumlo",
          "triangle": "CGP",
          "side": "lo",
          "value": "29183/200000",
          "sources": [
            "L_CDP",
            "T0627",
            "T0585",
            "L_DGP",
            "T0622"
          ]
        },
        {
          "id": "T0677",
          "relation": 832,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "28359/200000",
          "sources": [
            "T0675",
            "L_FOP",
            "L_COP",
            "T0627",
            "T0612"
          ]
        },
        {
          "id": "T0697",
          "relation": 2980,
          "rule": "balance_lo",
          "triangle": "CFP",
          "side": "lo",
          "value": "5277/25000",
          "sources": [
            "T0529",
            "L_FOP",
            "T0659",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0621"
          ]
        },
        {
          "id": "T0726",
          "relation": 17,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "29281/100000",
          "sources": [
            "U_CFG",
            "T0627",
            "T0675"
          ]
        },
        {
          "id": "T0727",
          "relation": 17,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "401277/1000000",
          "sources": [
            "U_CFG",
            "T0697",
            "T0675"
          ]
        },
        {
          "id": "T0737",
          "relation": 23,
          "rule": "sub",
          "triangle": "DGO",
          "side": "hi",
          "value": "109337/250000",
          "sources": [
            "U_DFG",
            "T0662",
            "L_FGO"
          ]
        },
        {
          "id": "T0738",
          "relation": 24,
          "rule": "sub",
          "triangle": "DFP",
          "side": "hi",
          "value": "329727/1000000",
          "sources": [
            "U_DFG",
            "T0627",
            "L_DGP"
          ]
        },
        {
          "id": "T0745",
          "relation": 28,
          "rule": "sum",
          "triangle": "FGP",
          "side": "lo",
          "value": "65559/200000",
          "sources": [
            "L_FGO",
            "T0677",
            "L_FOP"
          ]
        },
        {
          "id": "T0781",
          "relation": 520,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "104747/500000",
          "sources": [
            "L_CFG",
            "L_FOP",
            "T0697",
            "L_FGO",
            "T0727"
          ]
        },
        {
          "id": "T0798",
          "relation": 822,
          "rule": "sumlo",
          "triangle": "CGP",
          "side": "lo",
          "value": "15199/100000",
          "sources": [
            "L_CDP",
            "T0745",
            "T0697",
            "L_DGP",
            "T0738"
          ]
        },
        {
          "id": "T0800",
          "relation": 832,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "30477/200000",
          "sources": [
            "T0798",
            "L_FOP",
            "L_COP",
            "T0745",
            "T0726"
          ]
        },
        {
          "id": "T0822",
          "relation": 2980,
          "rule": "balance_lo",
          "triangle": "CFP",
          "side": "lo",
          "value": "26779/125000",
          "sources": [
            "T0529",
            "L_FOP",
            "T0781",
            "L_DGP",
            "L_COP",
            "L_DFG",
            "T0737"
          ]
        },
        {
          "id": "T0854",
          "relation": 17,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "278487/1000000",
          "sources": [
            "U_CFG",
            "T0745",
            "T0798"
          ]
        },
        {
          "id": "T0855",
          "relation": 17,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "7841/20000",
          "sources": [
            "U_CFG",
            "T0822",
            "T0798"
          ]
        },
        {
          "id": "T0859",
          "relation": 20,
          "rule": "sum",
          "triangle": "CGO",
          "side": "lo",
          "value": "3179/8000",
          "sources": [
            "T0798",
            "L_COP",
            "T0800"
          ]
        },
        {
          "id": "T0866",
          "relation": 24,
          "rule": "sub",
          "triangle": "DFP",
          "side": "hi",
          "value": "321479/1000000",
          "sources": [
            "U_DFG",
            "T0745",
            "L_DGP"
          ]
        },
        {
          "id": "T0873",
          "relation": 28,
          "rule": "sum",
          "triangle": "FGP",
          "side": "lo",
          "value": "67677/200000",
          "sources": [
            "L_FGO",
            "T0800",
            "L_FOP"
          ]
        },
        {
          "id": "T0875",
          "relation": 28,
          "rule": "sub",
          "triangle": "GOP",
          "side": "hi",
          "value": "4121/20000",
          "sources": [
            "T0855",
            "L_FGO",
            "L_FOP"
          ]
        },
        {
          "id": "T0937",
          "relation": 793,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "221329/1000000",
          "sources": [
            "T0859",
            "L_FOP",
            "L_COP",
            "L_FGO",
            "T0875"
          ]
        },
        {
          "id": "T0941",
          "relation": 822,
          "rule": "sumlo",
          "triangle": "CGP",
          "side": "lo",
          "value": "31973/200000",
          "sources": [
            "L_CDP",
            "T0873",
            "T0822",
            "L_DGP",
            "T0866"
          ]
        },
        {
          "id": "T0944",
          "relation": 832,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "224883/1000000",
          "sources": [
            "T0941",
            "L_FOP",
            "L_COP",
            "T0873",
            "T0875"
          ]
        },
        {
          "id": "T0945",
          "relation": 832,
          "rule": "sumlo",
          "triangle": "GOP",
          "side": "lo",
          "value": "166389/1000000",
          "sources": [
            "T0941",
            "L_FOP",
            "L_COP",
            "T0873",
            "T0854"
          ]
        },
        {
          "id": "T1019",
          "relation": 16,
          "rule": "sub",
          "triangle": "CGO",
          "side": "hi",
          "value": "443943/1000000",
          "sources": [
            "U_CFG",
            "T0937",
            "L_FGO"
          ]
        },
        {
          "id": "T1020",
          "relation": 17,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "723133/1000000",
          "sources": [
            "T0944",
            "T0873",
            "T0941"
          ]
        },
        {
          "id": "T1021",
          "relation": 17,
          "rule": "sub",
          "triangle": "CFP",
          "side": "hi",
          "value": "130011/500000",
          "sources": [
            "U_CFG",
            "T0873",
            "T0941"
          ]
        },
        {
          "id": "T1022",
          "relation": 17,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "93381/250000",
          "sources": [
            "U_CFG",
            "T0944",
            "T0941"
          ]
        },
        {
          "id": "T1036",
          "relation": 24,
          "rule": "sub",
          "triangle": "DFP",
          "side": "hi",
          "value": "310889/1000000",
          "sources": [
            "U_DFG",
            "T0873",
            "L_DGP"
          ]
        },
        {
          "id": "T1044",
          "relation": 28,
          "rule": "sum",
          "triangle": "FGP",
          "side": "lo",
          "value": "352389/1000000",
          "sources": [
            "L_FGO",
            "T0945",
            "L_FOP"
          ]
        },
        {
          "id": "T1046",
          "relation": 28,
          "rule": "sub",
          "triangle": "GOP",
          "side": "hi",
          "value": "46881/250000",
          "sources": [
            "T1022",
            "L_FGO",
            "L_FOP"
          ]
        },
        {
          "id": "T1075",
          "relation": 293,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "231187/1000000",
          "sources": [
            "T1020",
            "L_COP",
            "T0937",
            "T0941",
            "T1019"
          ]
        },
        {
          "id": "T1141",
          "relation": 822,
          "rule": "sumlo",
          "triangle": "CGP",
          "side": "lo",
          "value": "43643/250000",
          "sources": [
            "L_CDP",
            "T1044",
            "T1075",
            "L_DGP",
            "T1036"
          ]
        },
        {
          "id": "T1148",
          "relation": 832,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "261339/1000000",
          "sources": [
            "T1141",
            "L_FOP",
            "L_COP",
            "T1044",
            "T1046"
          ]
        }
      ],
      "physical": {}
    }
  ],
  "terminal": {
    "kind": "scalar",
    "stage": 7,
    "contradiction": {
      "triangle": "CFP",
      "lower": "T1148",
      "upper": "T1021"
    }
  },
  "word": "CEF"
}
```
