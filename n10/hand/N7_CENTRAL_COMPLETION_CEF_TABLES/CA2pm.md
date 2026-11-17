# CA2pm

```n7-central-cef-packet
{
  "id": "CA2pm",
  "cell": "CA",
  "given": [
    "AGO-",
    "AGP-",
    "DGP+",
    "AFG+",
    "FGO+",
    "EGO-"
  ],
  "stages": [
    {
      "id": 0,
      "assumptions": [
        "AGO-",
        "AGP-",
        "DGP+"
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
        "DGP": 1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DOP": 1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "DGH": -1,
        "GOP": -1,
        "BDG": 1,
        "EGP": 1,
        "FGP": 1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "CFO": 1,
        "DFO": 1,
        "DHP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEG": 1,
        "BEO": 1
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
            "DCGOP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDG",
            "CDO",
            "DGP",
            "CDP",
            "DGO"
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
            "GADHP"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ADG",
            "GHP",
            "AGH",
            "DGP",
            "AGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GADOP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ADG",
            "AGO",
            "DGP",
            "AGP",
            "DGO"
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
            "GCDEP"
          ],
          "target": "EGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CEG",
            "DGP",
            "CGP",
            "DEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFP"
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CFG",
            "DGP",
            "CGP",
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
            "PCDGH"
          ],
          "target": "DHP",
          "sign": 1,
          "deps": [
            "CDP",
            "GHP",
            "CGP",
            "CHP",
            "DGP"
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
            "PDEFG"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FGP",
            "EGP",
            "DGP",
            "EFP"
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
          "target": "BEG",
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
        "L_CDG": {
          "triangle": "CDG",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CDG",
            "points": [
              "P"
            ]
          }
        },
        "L_CDH": {
          "triangle": "CDH",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CDH",
            "points": [
              "P"
            ]
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
        "L_DGP": {
          "triangle": "DGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DGP",
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
        "U_CDH": {
          "triangle": "CDH",
          "side": "hi",
          "value": "3182437/4000000",
          "witness": {
            "kind": "vertices",
            "signed": "CDH",
            "used": [
              2,
              3,
              7
            ],
            "values": [
              "177681/1000000",
              "2787/12500",
              "5428499/20000000",
              "97573/250000",
              "3383711/5000000",
              "173559/250000",
              "147903/200000",
              "3182437/4000000"
            ],
            "cell": "CA"
          }
        },
        "U_CEH": {
          "triangle": "CEH",
          "side": "hi",
          "value": "18711299/20000000",
          "witness": {
            "kind": "vertices",
            "signed": "CEH",
            "used": [
              2,
              4,
              7
            ],
            "values": [
              "27366796713/62353000000",
              "594089974427/1247060000000",
              "150950391/311765000",
              "3711621589/6235300000",
              "8166979/10000000",
              "436301/500000",
              "917881/1000000",
              "18711299/20000000"
            ],
            "cell": "CA"
          }
        },
        "U_CFG": {
          "triangle": "CFG",
          "side": "hi",
          "value": "153/200",
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
              "-1015641/20000000",
              "-3809/500000",
              "-53863/20000000",
              "685617/20000000",
              "3096719/20000000",
              "80513/500000",
              "99/500",
              "10324359/20000000",
              "279691/500000",
              "11286137/20000000",
              "12025617/20000000",
              "14436719/20000000",
              "364013/500000",
              "153/200"
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
        "10": {
          "row": [
            "fan",
            "CDH",
            "CDP",
            "DHP",
            "CHP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "CDH",
            "point": "P"
          }
        },
        "13": {
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
        "193": {
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
        "225": {
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
        "355": {
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
        "766": {
          "row": [
            "quad",
            "CDO",
            "CGO",
            "449/1000"
          ],
          "witness": {
            "kind": "quad",
            "poly": "CDOG",
            "occupants": [
              "P"
            ]
          }
        },
        "778": {
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
        "1667": {
          "row": [
            "balance",
            [
              [
                1,
                "CDF",
                "GHP"
              ],
              [
                -1,
                "CDH",
                "FGP"
              ],
              [
                1,
                "CFH",
                "DGP"
              ],
              [
                1,
                "CGP",
                "DFH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CDF",
            "point": "H",
            "line": "GP"
          }
        },
        "1963": {
          "row": [
            "balance",
            [
              [
                1,
                "CDF",
                "GHP"
              ],
              [
                -1,
                "CFG",
                "DHP"
              ],
              [
                1,
                "CFH",
                "DGP"
              ],
              [
                1,
                "CFP",
                "DGH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "DGH",
            "point": "P",
            "line": "CF"
          }
        },
        "2298": {
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
        "2841": {
          "row": [
            "linear",
            {
              "BCF": "-93/1000",
              "BCG": "-93/1000",
              "BCP": "153/200"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFG",
            "point": "P",
            "line": "BC",
            "side": "lower",
            "outer_upper": {
              "triangle": "CFG",
              "ref": "U_CFG",
              "value": "153/200"
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
            "residual": "243/500"
          }
        },
        "2903": {
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
        "2959": {
          "row": [
            "linear",
            {
              "BCF": "-93/1000",
              "BCH": "-93/1000",
              "BCP": "883/1000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFH",
            "point": "P",
            "line": "BC",
            "side": "lower",
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
        "3112": {
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
        "3151": {
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
          "id": "T0022",
          "relation": 14,
          "rule": "sub",
          "triangle": "CHO",
          "side": "hi",
          "value": "697/1000",
          "sources": [
            "U_CFH",
            "L_CFO",
            "L_FHO"
          ]
        },
        {
          "id": "T0032",
          "relation": 193,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "48303/500000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "L_CDH",
            "L_CEF",
            "U_CEH"
          ]
        },
        {
          "id": "T0033",
          "relation": 225,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "20971/200000",
          "sources": [
            "L_CFH",
            "L_COP",
            "L_CFO",
            "L_CHP",
            "T0022"
          ]
        },
        {
          "id": "T0048",
          "relation": 778,
          "rule": "linear",
          "triangle": "CEF",
          "side": "hi",
          "value": "6143/20000",
          "sources": [
            "L_CFH"
          ]
        },
        {
          "id": "T0057",
          "relation": 1963,
          "rule": "balance_lo",
          "triangle": "DHP",
          "side": "lo",
          "value": "1359/12500",
          "sources": [
            "T0032",
            "L_GHP",
            "L_CFH",
            "L_DGP",
            "T0033",
            "L_DGH",
            "U_CFG"
          ]
        },
        {
          "id": "T0093",
          "relation": 3112,
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
          "id": "T0095",
          "relation": 3151,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "1369/10000",
          "sources": [
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0097",
          "relation": 10,
          "rule": "sum",
          "triangle": "CDH",
          "side": "lo",
          "value": "921/3125",
          "sources": [
            "L_CDP",
            "T0057",
            "L_CHP"
          ]
        },
        {
          "id": "T0108",
          "relation": 193,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "98169/1000000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "T0097",
            "L_CEF",
            "U_CEH"
          ]
        },
        {
          "id": "T0118",
          "relation": 1963,
          "rule": "balance_lo",
          "triangle": "DHP",
          "side": "lo",
          "value": "22561/200000",
          "sources": [
            "T0108",
            "L_GHP",
            "L_CFH",
            "L_DGP",
            "T0095",
            "L_DGH",
            "U_CFG"
          ]
        },
        {
          "id": "T0123",
          "relation": 10,
          "rule": "sum",
          "triangle": "CDH",
          "side": "lo",
          "value": "59761/200000",
          "sources": [
            "L_CDP",
            "T0118",
            "L_CHP"
          ]
        },
        {
          "id": "T0125",
          "relation": 193,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "3943/40000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "T0123",
            "L_CEF",
            "U_CEH"
          ]
        },
        {
          "id": "T0132",
          "relation": 1963,
          "rule": "balance_lo",
          "triangle": "DHP",
          "side": "lo",
          "value": "22571/200000",
          "sources": [
            "T0125",
            "L_GHP",
            "L_CFH",
            "L_DGP",
            "T0095",
            "L_DGH",
            "U_CFG"
          ]
        },
        {
          "id": "T0134",
          "relation": 10,
          "rule": "sum",
          "triangle": "CDH",
          "side": "lo",
          "value": "59771/200000",
          "sources": [
            "L_CDP",
            "T0132",
            "L_CHP"
          ]
        },
        {
          "id": "T0136",
          "relation": 193,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "4929/50000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "T0134",
            "L_CEF",
            "U_CEH"
          ]
        },
        {
          "id": "T0139",
          "relation": 355,
          "rule": "sumlo",
          "triangle": "DFH",
          "side": "lo",
          "value": "14977/62500",
          "sources": [
            "T0136",
            "L_EFH",
            "L_CFH",
            "L_DEF",
            "T0048"
          ]
        },
        {
          "id": "T0142",
          "relation": 1667,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "60261/500000",
          "sources": [
            "T0136",
            "L_GHP",
            "L_CFH",
            "L_DGP",
            "L_CGP",
            "T0139",
            "U_CDH"
          ]
        },
        {
          "id": "T0143",
          "relation": 13,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "175211/500000",
          "sources": [
            "T0095",
            "T0142",
            "L_CGP"
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
        "74": {
          "name": "AREA_LO_CDG",
          "terms": [
            [
              [
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
                3,
                6
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
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CDG",
            "side": "lo",
            "reference": "L_CDG",
            "value": "279/1000"
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
              "-175211/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFG",
            "side": "lo",
            "reference": "T0143",
            "value": "175211/500000"
          }
        },
        "152": {
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
        "164": {
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
        "190": {
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
            "reference": "T0093",
            "value": "67009/500000"
          }
        },
        "196": {
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
            "reference": "T0095",
            "value": "1369/10000"
          }
        },
        "214": {
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
        "219": {
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
        "540": {
          "name": "QUAD_766",
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
                2,
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
            "index": 766
          }
        },
        "1381": {
          "name": "LINEAR_2298",
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
            "index": 2298
          }
        },
        "1924": {
          "name": "LINEAR_2841",
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
                8
              ],
              "-93/1000"
            ],
            [
              [
                1,
                8
              ],
              "93/1000"
            ],
            [
              [
                2,
                12
              ],
              "153/200"
            ],
            [
              [
                1,
                12
              ],
              "-153/200"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2841
          }
        },
        "1986": {
          "name": "LINEAR_2903",
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
            "index": 2903
          }
        },
        "2042": {
          "name": "LINEAR_2959",
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
                12
              ],
              "883/1000"
            ],
            [
              [
                1,
                12
              ],
              "-883/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2959
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
          "307027/1000000",
          "324041/1000000",
          "103361/250000",
          "324041/1000000",
          "169993/1000000"
        ],
        "high": [
          "125091/200000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "518071/1000000",
          "1/1",
          "379813/500000",
          "93473/125000",
          "907/1000",
          "372451/500000",
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
            "factor": 74,
            "target": "g",
            "old": [
              "59/500",
              "137/200"
            ],
            "lines": [
              [
                "-60001/500000",
                "-1531627643/10000000000"
              ],
              [
                "-60001/500000",
                "-7837650317/50000000000"
              ],
              [
                "-604217/1000000",
                "3646511969/20000000000"
              ],
              [
                "-604217/1000000",
                "27024230711/100000000000"
              ],
              [
                "-60001/500000",
                "415703357/10000000000"
              ],
              [
                "-60001/500000",
                "-4091661317/50000000000"
              ],
              [
                "-604217/1000000",
                "7541173969/20000000000"
              ],
              [
                "-604217/1000000",
                "34516208711/100000000000"
              ]
            ],
            "raw": [
              "59/500",
              "7541173969/12084340000"
            ],
            "new": [
              "59/500",
              "312023/500000"
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
                "-12705787/250000000"
              ],
              [
                "-88183/100000",
                "8127699/125000000"
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
                "-6049/250000"
              ],
              [
                "-88183/100000",
                "10299/62500"
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
                "-25640939/250000000"
              ],
              [
                "13857/20000",
                "-35008827213/250000000000"
              ],
              [
                "88183/100000",
                "-16103997/125000000"
              ],
              [
                "88183/100000",
                "-33653061699/125000000000"
              ]
            ],
            "raw": [
              "16103997/110228750",
              "30429/40000"
            ],
            "new": [
              "9131/62500",
              "30429/40000"
            ]
          },
          {
            "factor": 150,
            "target": "g",
            "old": [
              "59/500",
              "312023/500000"
            ],
            "lines": [
              [
                "-1/1",
                "414183273/1250000000"
              ],
              [
                "-1/1",
                "3079483727/6250000000"
              ],
              [
                "-1/1",
                "1156366319/3125000000"
              ],
              [
                "-1/1",
                "33213/62500"
              ],
              [
                "-1/1",
                "227781607/800000000"
              ],
              [
                "-1/1",
                "1319780793/4000000000"
              ],
              [
                "-1/1",
                "972379621/2000000000"
              ]
            ],
            "raw": [
              "59/500",
              "33213/62500"
            ],
            "new": [
              "59/500",
              "33213/62500"
            ]
          },
          {
            "factor": 152,
            "target": "y",
            "old": [
              "129927/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "11497/20000",
                "-20805094979/62500000000"
              ],
              [
                "76383/100000",
                "-22530671359/62500000000"
              ],
              [
                "80721/500000",
                "-20805094979/62500000000"
              ],
              [
                "175211/500000",
                "-22530671359/62500000000"
              ],
              [
                "11497/20000",
                "-22382489061/40000000000"
              ],
              [
                "76383/100000",
                "-28132961481/40000000000"
              ],
              [
                "80721/500000",
                "-22382489061/40000000000"
              ],
              [
                "175211/500000",
                "-28132961481/40000000000"
              ],
              [
                "11497/20000",
                "-785596181/3125000000"
              ],
              [
                "76383/100000",
                "-279/1000"
              ],
              [
                "80721/500000",
                "-785596181/3125000000"
              ],
              [
                "175211/500000",
                "-279/1000"
              ],
              [
                "11497/20000",
                "-270476379/2000000000"
              ],
              [
                "80721/500000",
                "-270476379/2000000000"
              ]
            ],
            "raw": [
              "270476379/1149700000",
              "907/1000"
            ],
            "new": [
              "117629/500000",
              "907/1000"
            ]
          },
          {
            "factor": 164,
            "target": "z",
            "old": [
              "9131/62500",
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
                "-6934509713/31250000000"
              ],
              [
                "1/1",
                "-29819100357/62500000000"
              ],
              [
                "1/1",
                "-29951252221/62500000000"
              ],
              [
                "1/1",
                "-1434416661/1953125000"
              ]
            ],
            "raw": [
              "6934509713/31250000000",
              "30429/40000"
            ],
            "new": [
              "13869/62500",
              "30429/40000"
            ]
          },
          {
            "factor": 190,
            "target": "x",
            "old": [
              "324041/1000000",
              "88183/100000"
            ],
            "lines": [
              [
                "-1/1",
                "5409876807/10000000000"
              ],
              [
                "-1/1",
                "34275431193/50000000000"
              ],
              [
                "-1/1",
                "15082276421/25000000000"
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
            "factor": 196,
            "target": "u",
            "old": [
              "324041/1000000",
              "88183/100000"
            ],
            "lines": [
              [
                "-1/1",
                "10936682389/20000000000"
              ],
              [
                "-1/1",
                "71310193611/100000000000"
              ],
              [
                "-1/1",
                "28933109167/50000000000"
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
            "factor": 214,
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
            "factor": 219,
            "target": "g",
            "old": [
              "59/500",
              "33213/62500"
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
              "33213/62500"
            ],
            "new": [
              "59481/500000",
              "33213/62500"
            ]
          },
          {
            "factor": 540,
            "target": "y",
            "old": [
              "117629/500000",
              "907/1000"
            ],
            "lines": [
              [
                "440519/500000",
                "-243291187359/500000000000"
              ],
              [
                "440519/500000",
                "-252919907339/500000000000"
              ],
              [
                "440519/500000",
                "-307999524783/1000000000000"
              ],
              [
                "440519/500000",
                "-235750014043/1000000000000"
              ],
              [
                "29287/62500",
                "-243291187359/500000000000"
              ],
              [
                "29287/62500",
                "-252919907339/500000000000"
              ],
              [
                "29287/62500",
                "-307999524783/1000000000000"
              ],
              [
                "29287/62500",
                "-235750014043/1000000000000"
              ],
              [
                "440519/500000",
                "-685304408907/1000000000000"
              ],
              [
                "440519/500000",
                "-806388241447/1000000000000"
              ],
              [
                "440519/500000",
                "-126680389743/250000000000"
              ],
              [
                "440519/500000",
                "-134074610203/250000000000"
              ],
              [
                "29287/62500",
                "-685304408907/1000000000000"
              ],
              [
                "29287/62500",
                "-806388241447/1000000000000"
              ],
              [
                "29287/62500",
                "-126680389743/250000000000"
              ],
              [
                "29287/62500",
                "-134074610203/250000000000"
              ],
              [
                "440519/500000",
                "-110849815569/250000000000"
              ],
              [
                "440519/500000",
                "-115664175559/250000000000"
              ],
              [
                "440519/500000",
                "-235006343553/500000000000"
              ],
              [
                "440519/500000",
                "-198881588183/500000000000"
              ],
              [
                "29287/62500",
                "-110849815569/250000000000"
              ],
              [
                "29287/62500",
                "-115664175559/250000000000"
              ],
              [
                "29287/62500",
                "-235006343553/500000000000"
              ],
              [
                "29287/62500",
                "-198881588183/500000000000"
              ],
              [
                "440519/500000",
                "-206892291237/500000000000"
              ],
              [
                "440519/500000",
                "-267434207507/500000000000"
              ],
              [
                "440519/500000",
                "-55049750913/125000000000"
              ],
              [
                "440519/500000",
                "-58746861143/125000000000"
              ],
              [
                "29287/62500",
                "-206892291237/500000000000"
              ],
              [
                "29287/62500",
                "-267434207507/500000000000"
              ],
              [
                "29287/62500",
                "-55049750913/125000000000"
              ],
              [
                "29287/62500",
                "-58746861143/125000000000"
              ]
            ],
            "raw": [
              "235750014043/881038000000",
              "907/1000"
            ],
            "new": [
              "133791/500000",
              "907/1000"
            ]
          },
          {
            "factor": 1381,
            "target": "z",
            "old": [
              "13869/62500",
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
              "13869/62500",
              "19/25"
            ],
            "new": [
              "13869/62500",
              "19/25"
            ]
          },
          {
            "factor": 1924,
            "target": "v",
            "old": [
              "120183/1000000",
              "713921/1000000"
            ],
            "lines": [
              [
                "89480061/200000000",
                "-4153697767329/62500000000000"
              ],
              [
                "285849747/3628000000",
                "-13269251748783/1133750000000000"
              ],
              [
                "118394001/200000000",
                "-5495893633989/62500000000000"
              ],
              [
                "4051743093/18140000000",
                "-188083423849977/5668750000000000"
              ],
              [
                "89480061/200000000",
                "-598288251/6250000000"
              ],
              [
                "285849747/3628000000",
                "-1911269877/113375000000"
              ],
              [
                "118394001/200000000",
                "-791614791/6250000000"
              ],
              [
                "4051743093/18140000000",
                "-27091066563/566875000000"
              ]
            ],
            "raw": [
              "2367439/15937500",
              "713921/1000000"
            ],
            "new": [
              "29709/200000",
              "713921/1000000"
            ]
          },
          {
            "factor": 1986,
            "target": "y",
            "old": [
              "133791/500000",
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
            "factor": 2042,
            "target": "v",
            "old": [
              "29709/200000",
              "713921/1000000"
            ],
            "lines": [
              [
                "516411071/1000000000",
                "-43892656076841/500000000000000"
              ],
              [
                "1649708017/18140000000",
                "-140217882000807/9070000000000000"
              ],
              [
                "683280411/1000000000",
                "-58075811631981/500000000000000"
              ],
              [
                "23383589223/90700000000",
                "-1987501618855233/45350000000000000"
              ],
              [
                "516411071/1000000000",
                "-54389841/500000000"
              ],
              [
                "1649708017/18140000000",
                "-173751807/9070000000"
              ],
              [
                "683280411/1000000000",
                "-71964981/500000000"
              ],
              [
                "23383589223/90700000000",
                "-2462824233/45350000000"
              ]
            ],
            "raw": [
              "75051093/441500000",
              "713921/1000000"
            ],
            "new": [
              "169991/1000000",
              "713921/1000000"
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
            "target": "z",
            "old": [
              "13869/62500",
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
                "1531427721/250000000000"
              ],
              [
                "-881803/1000000",
                "12214323079/100000000000"
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
                "34221/500000"
              ],
              [
                "-881803/1000000",
                "51479/200000"
              ]
            ],
            "raw": [
              "13869/62500",
              "669841/881803"
            ],
            "new": [
              "13869/62500",
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
              "169991/1000000",
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
              "169991/1000000",
              "602803/881803"
            ],
            "new": [
              "169991/1000000",
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
            "factor": 138,
            "target": "z",
            "old": [
              "13869/62500",
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
                "-33306125311/125000000000"
              ],
              [
                "324041/1000000",
                "-33114277073/200000000000"
              ],
              [
                "186953/250000",
                "-28211421229/125000000000"
              ],
              [
                "186953/250000",
                "-265803700241/500000000000"
              ],
              [
                "186953/250000",
                "-10167286609/31250000000"
              ],
              [
                "186953/250000",
                "-107656752241/250000000000"
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
                "-546163043/1000000000"
              ],
              [
                "324041/1000000",
                "-445285425877/1000000000000"
              ],
              [
                "186953/250000",
                "-72077171/250000000"
              ],
              [
                "186953/250000",
                "-11884494293/20000000000"
              ],
              [
                "186953/250000",
                "-151266803/250000000"
              ],
              [
                "186953/250000",
                "-177585262369/250000000000"
              ]
            ],
            "raw": [
              "28211421229/93476500000",
              "759627/1000000"
            ],
            "new": [
              "150901/500000",
              "759627/1000000"
            ]
          },
          {
            "factor": 150,
            "target": "g",
            "old": [
              "59481/500000",
              "33213/62500"
            ],
            "lines": [
              [
                "-1/1",
                "3195363183/10000000000"
              ],
              [
                "-1/1",
                "225731462497/500000000000"
              ],
              [
                "-1/1",
                "199727196653/500000000000"
              ],
              [
                "-1/1",
                "531381/1000000"
              ],
              [
                "-1/1",
                "5696205841/20000000000"
              ],
              [
                "-1/1",
                "330229491519/1000000000000"
              ],
              [
                "-1/1",
                "485961800531/1000000000000"
              ]
            ],
            "raw": [
              "59481/500000",
              "531381/1000000"
            ],
            "new": [
              "59481/500000",
              "531381/1000000"
            ]
          },
          {
            "factor": 152,
            "target": "g",
            "old": [
              "59481/500000",
              "531381/1000000"
            ],
            "lines": [
              [
                "-95159/250000",
                "-63291820609/500000000000"
              ],
              [
                "-95159/250000",
                "-3490241263/31250000000"
              ],
              [
                "-95159/250000",
                "-295433621643/1000000000000"
              ],
              [
                "-95159/250000",
                "-183522554033/500000000000"
              ],
              [
                "-95159/250000",
                "327823531/250000000000"
              ],
              [
                "-95159/250000",
                "8103607463/500000000000"
              ],
              [
                "-95159/250000",
                "13237135887/500000000000"
              ],
              [
                "-95159/250000",
                "-45137214649/1000000000000"
              ],
              [
                "-907/1000",
                "119053828091/500000000000"
              ],
              [
                "-907/1000",
                "88115408469/250000000000"
              ],
              [
                "-907/1000",
                "69257675757/1000000000000"
              ],
              [
                "-907/1000",
                "48552123113/500000000000"
              ],
              [
                "-907/1000",
                "91500647881/250000000000"
              ],
              [
                "-907/1000",
                "240178284609/500000000000"
              ],
              [
                "-907/1000",
                "195582784587/500000000000"
              ],
              [
                "-907/1000",
                "419012139643/1000000000000"
              ]
            ],
            "raw": [
              "59481/500000",
              "240178284609/453500000000"
            ],
            "new": [
              "59481/500000",
              "529611/1000000"
            ]
          },
          {
            "factor": 152,
            "target": "y",
            "old": [
              "95159/250000",
              "907/1000"
            ],
            "lines": [
              [
                "8967/15625",
                "-195153646909/500000000000"
              ],
              [
                "762841/1000000",
                "-111833421781/250000000000"
              ],
              [
                "163239/1000000",
                "-195153646909/500000000000"
              ],
              [
                "5503/15625",
                "-111833421781/250000000000"
              ],
              [
                "8967/15625",
                "-559157274243/1000000000000"
              ],
              [
                "762841/1000000",
                "-351345537387/500000000000"
              ],
              [
                "163239/1000000",
                "-559157274243/1000000000000"
              ],
              [
                "5503/15625",
                "-351345537387/500000000000"
              ],
              [
                "8967/15625",
                "-65603089619/250000000000"
              ],
              [
                "762841/1000000",
                "-159719375891/500000000000"
              ],
              [
                "163239/1000000",
                "-65603089619/250000000000"
              ],
              [
                "5503/15625",
                "-159719375891/500000000000"
              ],
              [
                "8967/15625",
                "-118624690413/500000000000"
              ],
              [
                "762841/1000000",
                "-380783181357/1000000000000"
              ],
              [
                "163239/1000000",
                "-118624690413/500000000000"
              ],
              [
                "5503/15625",
                "-380783181357/1000000000000"
              ]
            ],
            "raw": [
              "39541563471/95648000000",
              "907/1000"
            ],
            "new": [
              "413407/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 190,
            "target": "x",
            "old": [
              "324041/1000000",
              "186953/250000"
            ],
            "lines": [
              [
                "-1/1",
                "10549501581/20000000000"
              ],
              [
                "-1/1",
                "638313586179/1000000000000"
              ],
              [
                "-1/1",
                "636946492871/1000000000000"
              ],
              [
                "-1/1",
                "149557/200000"
              ],
              [
                "-1/1",
                "9800721/20000000"
              ],
              [
                "-1/1",
                "507608679/1000000000"
              ],
              [
                "-1/1",
                "730212371/1000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "149557/200000"
            ],
            "new": [
              "324041/1000000",
              "149557/200000"
            ]
          },
          {
            "factor": 196,
            "target": "u",
            "old": [
              "324041/1000000",
              "74493/100000"
            ],
            "lines": [
              [
                "-1/1",
                "10861123653/20000000000"
              ],
              [
                "-1/1",
                "699888873227/1000000000000"
              ],
              [
                "-1/1",
                "588070309423/1000000000000"
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
            "factor": 214,
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
            "factor": 219,
            "target": "g",
            "old": [
              "59481/500000",
              "529611/1000000"
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
              "529611/1000000"
            ],
            "new": [
              "118963/1000000",
              "529611/1000000"
            ]
          },
          {
            "factor": 2042,
            "target": "v",
            "old": [
              "169991/1000000",
              "683603/1000000"
            ],
            "lines": [
              [
                "516411071/1000000000",
                "-87786345560661/1000000000000000"
              ],
              [
                "1649708017/18140000000",
                "-280439065285947/18140000000000000"
              ],
              [
                "68325657/100000000",
                "-11614893779187/100000000000000"
              ],
              [
                "233814268443/907000000000",
                "-39746824418003913/907000000000000000"
              ],
              [
                "516411071/1000000000",
                "-54389841/500000000"
              ],
              [
                "1649708017/18140000000",
                "-173751807/9070000000"
              ],
              [
                "68325657/100000000",
                "-7196247/50000000"
              ],
              [
                "233814268443/907000000000",
                "-24625964853/453500000000"
              ]
            ],
            "raw": [
              "150103953/883000000",
              "683603/1000000"
            ],
            "new": [
              "169993/1000000",
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
              "529611/1000000"
            ],
            "lines": [
              [
                "-614021/1000000",
                "2466418683/20000000000"
              ],
              [
                "-614021/1000000",
                "91157669319/500000000000"
              ],
              [
                "-1/1",
                "3907464843/10000000000"
              ],
              [
                "-1/1",
                "130668098199/250000000000"
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
              "130668098199/250000000000"
            ],
            "new": [
              "118963/1000000",
              "522673/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "150901/500000",
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
                "11492251717/1000000000000"
              ],
              [
                "-440901/500000",
                "127512747709/1000000000000"
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
                "77177/1000000"
              ],
              [
                "-440901/500000",
                "266129/1000000"
              ]
            ],
            "raw": [
              "150901/500000",
              "669839/881802"
            ],
            "new": [
              "150901/500000",
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
            "factor": 138,
            "target": "z",
            "old": [
              "150901/500000",
              "379813/500000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-170685978941/1000000000000"
              ],
              [
                "324041/1000000",
                "-270447197431/1000000000000"
              ],
              [
                "324041/1000000",
                "-281466828911/1000000000000"
              ],
              [
                "324041/1000000",
                "-184841299351/1000000000000"
              ],
              [
                "149557/200000",
                "-229586394941/1000000000000"
              ],
              [
                "149557/200000",
                "-535480000951/1000000000000"
              ],
              [
                "149557/200000",
                "-340367244911/1000000000000"
              ],
              [
                "149557/200000",
                "-449874102871/1000000000000"
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
                "-539454563/1000000000"
              ],
              [
                "324041/1000000",
                "-2767681459/6250000000"
              ],
              [
                "149557/200000",
                "-288305699/1000000000"
              ],
              [
                "149557/200000",
                "-59419930501/100000000000"
              ],
              [
                "149557/200000",
                "-598354979/1000000000"
              ],
              [
                "149557/200000",
                "-4424136481/6250000000"
              ]
            ],
            "raw": [
              "229586394941/747785000000",
              "379813/500000"
            ],
            "new": [
              "307021/1000000",
              "379813/500000"
            ]
          },
          {
            "factor": 152,
            "target": "y",
            "old": [
              "413407/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "573887/1000000",
                "-392232107989/1000000000000"
              ],
              [
                "762839/1000000",
                "-450244339981/1000000000000"
              ],
              [
                "170177/1000000",
                "-392232107989/1000000000000"
              ],
              [
                "359129/1000000",
                "-450244339981/1000000000000"
              ],
              [
                "573887/1000000",
                "-279578452717/500000000000"
              ],
              [
                "762839/1000000",
                "-351344878693/500000000000"
              ],
              [
                "170177/1000000",
                "-279578452717/500000000000"
              ],
              [
                "359129/1000000",
                "-351344878693/500000000000"
              ],
              [
                "573887/1000000",
                "-52426760273/200000000000"
              ],
              [
                "762839/1000000",
                "-320146033357/1000000000000"
              ],
              [
                "170177/1000000",
                "-52426760273/200000000000"
              ],
              [
                "359129/1000000",
                "-320146033357/1000000000000"
              ],
              [
                "573887/1000000",
                "-23726994569/100000000000"
              ],
              [
                "762839/1000000",
                "-190401398821/500000000000"
              ],
              [
                "170177/1000000",
                "-23726994569/100000000000"
              ],
              [
                "359129/1000000",
                "-190401398821/500000000000"
              ]
            ],
            "raw": [
              "23726994569/57388700000",
              "907/1000"
            ],
            "new": [
              "413443/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 190,
            "target": "x",
            "old": [
              "324041/1000000",
              "149557/200000"
            ],
            "lines": [
              [
                "-1/1",
                "10549446969/20000000000"
              ],
              [
                "-1/1",
                "319151733357/500000000000"
              ],
              [
                "-1/1",
                "79619110217/125000000000"
              ],
              [
                "-1/1",
                "93473/125000"
              ],
              [
                "-1/1",
                "9800721/20000000"
              ],
              [
                "-1/1",
                "253804293/500000000"
              ],
              [
                "-1/1",
                "91276433/125000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "93473/125000"
            ],
            "new": [
              "324041/1000000",
              "93473/125000"
            ]
          },
          {
            "factor": 196,
            "target": "u",
            "old": [
              "324041/1000000",
              "744903/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "10861120619/20000000000"
              ],
              [
                "-1/1",
                "349943756807/500000000000"
              ],
              [
                "-1/1",
                "73508814667/125000000000"
              ],
              [
                "-1/1",
                "372451/500000"
              ],
              [
                "-1/1",
                "10081974249/20000000000"
              ],
              [
                "-1/1",
                "281941279197/500000000000"
              ],
              [
                "-1/1",
                "85639769257/125000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "372451/500000"
            ],
            "new": [
              "324041/1000000",
              "372451/500000"
            ]
          },
          {
            "factor": 214,
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
              "522673/1000000"
            ],
            "lines": [
              [
                "-307011/500000",
                "2394112857/20000000000"
              ],
              [
                "-307011/500000",
                "88857047901/500000000000"
              ],
              [
                "-1/1",
                "7742610003/20000000000"
              ],
              [
                "-1/1",
                "259035134079/500000000000"
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
              "259035134079/500000000000"
            ],
            "new": [
              "118963/1000000",
              "518071/1000000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "307021/1000000",
              "379813/500000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-170690261609/1000000000000"
              ],
              [
                "324041/1000000",
                "-270451480099/1000000000000"
              ],
              [
                "324041/1000000",
                "-280222658453/1000000000000"
              ],
              [
                "324041/1000000",
                "-185835794803/1000000000000"
              ],
              [
                "93473/125000",
                "-229590538609/1000000000000"
              ],
              [
                "93473/125000",
                "-133870914541/250000000000"
              ],
              [
                "93473/125000",
                "-339122935453/1000000000000"
              ],
              [
                "93473/125000",
                "-112716993217/250000000000"
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
                "-535920227/1000000000"
              ],
              [
                "324041/1000000",
                "-8830667267/20000000000"
              ],
              [
                "93473/125000",
                "-7207639/25000000"
              ],
              [
                "93473/125000",
                "-118839735911/200000000000"
              ],
              [
                "93473/125000",
                "-74352563/125000000"
              ],
              [
                "93473/125000",
                "-141313108283/200000000000"
              ]
            ],
            "raw": [
              "229590538609/747784000000",
              "379813/500000"
            ],
            "new": [
              "307027/1000000",
              "379813/500000"
            ]
          },
          {
            "factor": 152,
            "target": "y",
            "old": [
              "413443/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "573887/1000000",
                "-392234320843/1000000000000"
              ],
              [
                "762839/1000000",
                "-450247686547/1000000000000"
              ],
              [
                "174779/1000000",
                "-392234320843/1000000000000"
              ],
              [
                "363731/1000000",
                "-450247686547/1000000000000"
              ],
              [
                "573887/1000000",
                "-279578452717/500000000000"
              ],
              [
                "762839/1000000",
                "-351344878693/500000000000"
              ],
              [
                "174779/1000000",
                "-279578452717/500000000000"
              ],
              [
                "363731/1000000",
                "-351344878693/500000000000"
              ],
              [
                "573887/1000000",
                "-131066889391/500000000000"
              ],
              [
                "762839/1000000",
                "-160073572243/500000000000"
              ],
              [
                "174779/1000000",
                "-131066889391/500000000000"
              ],
              [
                "363731/1000000",
                "-160073572243/500000000000"
              ],
              [
                "573887/1000000",
                "-59317676329/250000000000"
              ],
              [
                "762839/1000000",
                "-95200889317/250000000000"
              ],
              [
                "174779/1000000",
                "-59317676329/250000000000"
              ],
              [
                "363731/1000000",
                "-95200889317/250000000000"
              ]
            ],
            "raw": [
              "59317676329/143471750000",
              "907/1000"
            ],
            "new": [
              "103361/250000",
              "907/1000"
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
        "DGP+"
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
          "307027/1000000",
          "324041/1000000",
          "103361/250000",
          "324041/1000000",
          "169993/1000000"
        ],
        "high": [
          "125091/200000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "518071/1000000",
          "1",
          "379813/500000",
          "93473/125000",
          "907/1000",
          "372451/500000",
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
        "DGP": 1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DOP": 1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "DGH": -1,
        "GOP": -1,
        "BDG": 1,
        "EGP": 1,
        "FGP": 1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "CFO": 1,
        "DFO": 1,
        "DHP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEG": 1,
        "BEO": 1
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
            "DCGOP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDG",
            "CDO",
            "DGP",
            "CDP",
            "DGO"
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
            "GADHP"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ADG",
            "GHP",
            "AGH",
            "DGP",
            "AGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GADOP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ADG",
            "AGO",
            "DGP",
            "AGP",
            "DGO"
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
            "GCDEP"
          ],
          "target": "EGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CEG",
            "DGP",
            "CGP",
            "DEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFP"
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CFG",
            "DGP",
            "CGP",
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
            "PCDGH"
          ],
          "target": "DHP",
          "sign": 1,
          "deps": [
            "CDP",
            "GHP",
            "CGP",
            "CHP",
            "DGP"
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
            "PDEFG"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FGP",
            "EGP",
            "DGP",
            "EFP"
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
          "target": "BEG",
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
        "L_CDH": {
          "triangle": "CDH",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CDH",
            "points": [
              "P"
            ]
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
        "L_DGP": {
          "triangle": "DGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DGP",
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
          "value": "80480253/125000000",
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
              "-1068676809/125000000000",
              "-3704760753/1000000000000",
              "24273587269/200000000000",
              "76963301951/500000000000",
              "278999301/1000000000",
              "7001968957/25000000000",
              "22200865703/62500000000",
              "80480253/125000000"
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
        "U_CDH": {
          "triangle": "CDH",
          "side": "hi",
          "value": "14515634969/20000000000",
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
              "1087473681/4000000000",
              "7808431259/20000000000",
              "60537593139/100000000000",
              "2428914423/4000000000",
              "325498879517/500000000000",
              "14515634969/20000000000"
            ],
            "cell": "CA"
          }
        },
        "U_CEH": {
          "triangle": "CEH",
          "side": "hi",
          "value": "18711299/20000000",
          "witness": {
            "kind": "vertices",
            "signed": "CEH",
            "used": [
              2,
              4,
              7
            ],
            "values": [
              "55693995537/125000000000",
              "2408258109/5000000000",
              "24558689597/50000000000",
              "1200409529/2000000000",
              "8170118073/10000000000",
              "218092646589/250000000000",
              "458996207/500000000",
              "18711299/20000000"
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
              "1171613679/10000000000",
              "3029820041/20000000000",
              "40645128987/250000000000",
              "29099045713/125000000000",
              "141214818173/500000000000",
              "19894490747/62500000000",
              "363731/1000000",
              "5162693679/10000000000",
              "11011980041/20000000000",
              "140422128987/250000000000",
              "78987545713/125000000000",
              "340768818173/500000000000",
              "44838740747/62500000000",
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
          "value": "179376103401/250000000000",
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
              "-24148156739/125000000000",
              "-411771623/5000000000",
              "11049110673/500000000000",
              "29998917801/500000000000",
              "28819718261/125000000000",
              "121016707/500000000",
              "5192119/20000000",
              "70571436423/250000000000",
              "80046339987/250000000000",
              "1706943377/5000000000",
              "200979055101/500000000000",
              "228658444629/500000000000",
              "165536408637/250000000000",
              "332888207/500000000",
              "13666979/20000000",
              "179376103401/250000000000"
            ],
            "cell": "CA"
          }
        },
        "U_FHP": {
          "triangle": "FHP",
          "side": "hi",
          "value": "365950916307/500000000000",
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
              "113079559597/500000000000",
              "61146076789/250000000000",
              "139499753697/500000000000",
              "199519295049/500000000000",
              "512114319/1000000000",
              "129154589339/250000000000",
              "140370419289/250000000000",
              "339530722207/500000000000",
              "365950916307/500000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "10": {
          "row": [
            "fan",
            "CDH",
            "CDP",
            "DHP",
            "CHP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "CDH",
            "point": "P"
          }
        },
        "13": {
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
        "193": {
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
        "225": {
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
        "355": {
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
        "778": {
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
        "1667": {
          "row": [
            "balance",
            [
              [
                1,
                "CDF",
                "GHP"
              ],
              [
                -1,
                "CDH",
                "FGP"
              ],
              [
                1,
                "CFH",
                "DGP"
              ],
              [
                1,
                "CGP",
                "DFH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "CDF",
            "point": "H",
            "line": "GP"
          }
        },
        "1963": {
          "row": [
            "balance",
            [
              [
                1,
                "CDF",
                "GHP"
              ],
              [
                -1,
                "CFG",
                "DHP"
              ],
              [
                1,
                "CFH",
                "DGP"
              ],
              [
                1,
                "CFP",
                "DGH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "DGH",
            "point": "P",
            "line": "CF"
          }
        },
        "2298": {
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
        "2959": {
          "row": [
            "linear",
            {
              "BCF": "-93/1000",
              "BCH": "-93/1000",
              "BCP": "440901/500000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFH",
            "point": "P",
            "line": "BC",
            "side": "lower",
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
        "3112": {
          "row": [
            "linear",
            {
              "FHO": "-93/1000",
              "CFO": "132876103401/250000000000",
              "FOP": "-179376103401/250000000000"
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
              "value": "179376103401/250000000000"
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
            "residual": "109626103401/250000000000"
          }
        },
        "3151": {
          "row": [
            "linear",
            {
              "CFP": "272950916307/500000000000",
              "CHP": "-93/1000",
              "COP": "-365950916307/500000000000"
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
              "value": "365950916307/500000000000"
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
            "residual": "226450916307/500000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0015",
          "relation": 14,
          "rule": "sub",
          "triangle": "CHO",
          "side": "hi",
          "value": "347901/500000",
          "sources": [
            "U_CFH",
            "L_CFO",
            "L_FHO"
          ]
        },
        {
          "id": "T0024",
          "relation": 193,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "48303/500000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "L_CDH",
            "L_CEF",
            "U_CEH"
          ]
        },
        {
          "id": "T0025",
          "relation": 225,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "21007/200000",
          "sources": [
            "L_CFH",
            "L_COP",
            "L_CFO",
            "L_CHP",
            "T0015"
          ]
        },
        {
          "id": "T0039",
          "relation": 778,
          "rule": "linear",
          "triangle": "CEF",
          "side": "hi",
          "value": "6143/20000",
          "sources": [
            "L_CFH"
          ]
        },
        {
          "id": "T0048",
          "relation": 1963,
          "rule": "balance_lo",
          "triangle": "DHP",
          "side": "lo",
          "value": "2181/20000",
          "sources": [
            "T0024",
            "L_GHP",
            "L_CFH",
            "L_DGP",
            "T0025",
            "L_DGH",
            "U_CFG"
          ]
        },
        {
          "id": "T0065",
          "relation": 3112,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "70909/500000",
          "sources": [
            "L_FHO",
            "L_FOP"
          ]
        },
        {
          "id": "T0067",
          "relation": 3151,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "14053/100000",
          "sources": [
            "L_CHP",
            "L_COP"
          ]
        },
        {
          "id": "T0069",
          "relation": 10,
          "rule": "sum",
          "triangle": "CDH",
          "side": "lo",
          "value": "5901/20000",
          "sources": [
            "L_CDP",
            "T0048",
            "L_CHP"
          ]
        },
        {
          "id": "T0081",
          "relation": 193,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "49101/500000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "T0069",
            "L_CEF",
            "U_CEH"
          ]
        },
        {
          "id": "T0091",
          "relation": 1963,
          "rule": "balance_lo",
          "triangle": "DHP",
          "side": "lo",
          "value": "113571/1000000",
          "sources": [
            "T0081",
            "L_GHP",
            "L_CFH",
            "L_DGP",
            "T0067",
            "L_DGH",
            "U_CFG"
          ]
        },
        {
          "id": "T0096",
          "relation": 10,
          "rule": "sum",
          "triangle": "CDH",
          "side": "lo",
          "value": "299571/1000000",
          "sources": [
            "L_CDP",
            "T0091",
            "L_CHP"
          ]
        },
        {
          "id": "T0098",
          "relation": 193,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "98651/1000000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "T0096",
            "L_CEF",
            "U_CEH"
          ]
        },
        {
          "id": "T0106",
          "relation": 1963,
          "rule": "balance_lo",
          "triangle": "DHP",
          "side": "lo",
          "value": "56813/500000",
          "sources": [
            "T0098",
            "L_GHP",
            "L_CFH",
            "L_DGP",
            "T0067",
            "L_DGH",
            "U_CFG"
          ]
        },
        {
          "id": "T0108",
          "relation": 10,
          "rule": "sum",
          "triangle": "CDH",
          "side": "lo",
          "value": "149813/500000",
          "sources": [
            "L_CDP",
            "T0106",
            "L_CHP"
          ]
        },
        {
          "id": "T0110",
          "relation": 193,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "98657/1000000",
          "sources": [
            "L_CDE",
            "L_CFH",
            "T0108",
            "L_CEF",
            "U_CEH"
          ]
        },
        {
          "id": "T0113",
          "relation": 355,
          "rule": "sumlo",
          "triangle": "DFH",
          "side": "lo",
          "value": "47931/200000",
          "sources": [
            "T0110",
            "L_EFH",
            "L_CFH",
            "L_DEF",
            "T0039"
          ]
        },
        {
          "id": "T0117",
          "relation": 1667,
          "rule": "balance_lo",
          "triangle": "FGP",
          "side": "lo",
          "value": "13213/100000",
          "sources": [
            "T0110",
            "L_GHP",
            "L_CFH",
            "L_DGP",
            "L_CGP",
            "T0113",
            "U_CDH"
          ]
        },
        {
          "id": "T0121",
          "relation": 13,
          "rule": "sum",
          "triangle": "CFG",
          "side": "lo",
          "value": "18283/50000",
          "sources": [
            "T0067",
            "T0117",
            "L_CGP"
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
              "-18283/50000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFG",
            "side": "lo",
            "reference": "T0121",
            "value": "18283/50000"
          }
        },
        "152": {
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
        "190": {
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
              "-70909/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFO",
            "side": "lo",
            "reference": "T0065",
            "value": "70909/500000"
          }
        },
        "196": {
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
              "-14053/100000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "lo",
            "reference": "T0067",
            "value": "14053/100000"
          }
        },
        "1381": {
          "name": "LINEAR_2298",
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
            "index": 2298
          }
        },
        "2042": {
          "name": "LINEAR_2959",
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
                12
              ],
              "440901/500000"
            ],
            [
              [
                1,
                12
              ],
              "-440901/500000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 2959
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
          "62081/200000",
          "324041/1000000",
          "84689/200000",
          "324041/1000000",
          "10639/62500"
        ],
        "high": [
          "124593/200000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "515127/1000000",
          "1/1",
          "6077/8000",
          "46249/62500",
          "907/1000",
          "92659/125000",
          "683603/1000000"
        ],
        "steps": [
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "518071/1000000"
            ],
            "lines": [
              [
                "-307011/500000",
                "478805943/4000000000"
              ],
              [
                "-307011/500000",
                "17770880499/100000000000"
              ],
              [
                "-1/1",
                "7742526861/20000000000"
              ],
              [
                "-1/1",
                "259032488673/500000000000"
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
              "259032488673/500000000000"
            ],
            "new": [
              "118963/1000000",
              "103613/200000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "307027/1000000",
              "379813/500000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-42672595143/250000000000"
              ],
              [
                "324041/1000000",
                "-135225799531/500000000000"
              ],
              [
                "324041/1000000",
                "-14011076493/50000000000"
              ],
              [
                "324041/1000000",
                "-9291879247/50000000000"
              ],
              [
                "93473/125000",
                "-57397664393/250000000000"
              ],
              [
                "93473/125000",
                "-535483777127/1000000000000"
              ],
              [
                "93473/125000",
                "-16956090343/50000000000"
              ],
              [
                "93473/125000",
                "-90173952601/200000000000"
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
                "-535915619/1000000000"
              ],
              [
                "324041/1000000",
                "-2759572963/6250000000"
              ],
              [
                "93473/125000",
                "-7207639/25000000"
              ],
              [
                "93473/125000",
                "-118839735911/200000000000"
              ],
              [
                "93473/125000",
                "-74351987/125000000"
              ],
              [
                "93473/125000",
                "-141312770429/200000000000"
              ]
            ],
            "raw": [
              "57397664393/186946000000",
              "379813/500000"
            ],
            "new": [
              "76757/250000",
              "379813/500000"
            ]
          },
          {
            "factor": 150,
            "target": "g",
            "old": [
              "118963/1000000",
              "103613/200000"
            ],
            "lines": [
              [
                "-1/1",
                "1519509631/5000000000"
              ],
              [
                "-1/1",
                "54355046443/125000000000"
              ],
              [
                "-1/1",
                "12037611083/31250000000"
              ],
              [
                "-1/1",
                "258071/500000"
              ],
              [
                "-1/1",
                "2695723679/10000000000"
              ],
              [
                "-1/1",
                "78747878987/250000000000"
              ],
              [
                "-1/1",
                "29420178247/62500000000"
              ]
            ],
            "raw": [
              "118963/1000000",
              "258071/500000"
            ],
            "new": [
              "118963/1000000",
              "258071/500000"
            ]
          },
          {
            "factor": 190,
            "target": "x",
            "old": [
              "324041/1000000",
              "93473/125000"
            ],
            "lines": [
              [
                "-1/1",
                "2598361363/5000000000"
              ],
              [
                "-1/1",
                "78812900239/125000000000"
              ],
              [
                "-1/1",
                "19661033459/31250000000"
              ],
              [
                "-1/1",
                "46249/62500"
              ],
              [
                "-1/1",
                "9644721/20000000"
              ],
              [
                "-1/1",
                "249904293/500000000"
              ],
              [
                "-1/1",
                "90301433/125000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "46249/62500"
            ],
            "new": [
              "324041/1000000",
              "46249/62500"
            ]
          },
          {
            "factor": 196,
            "target": "u",
            "old": [
              "324041/1000000",
              "372451/500000"
            ],
            "lines": [
              [
                "-1/1",
                "10788520619/20000000000"
              ],
              [
                "-1/1",
                "348128756807/500000000000"
              ],
              [
                "-1/1",
                "73055064667/125000000000"
              ],
              [
                "-1/1",
                "92659/125000"
              ],
              [
                "-1/1",
                "10009374249/20000000000"
              ],
              [
                "-1/1",
                "280126279197/500000000000"
              ],
              [
                "-1/1",
                "85186019257/125000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "92659/125000"
            ],
            "new": [
              "324041/1000000",
              "92659/125000"
            ]
          },
          {
            "factor": 1381,
            "target": "z",
            "old": [
              "76757/250000",
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
              "76757/250000",
              "587789/773789"
            ],
            "new": [
              "76757/250000",
              "6077/8000"
            ]
          },
          {
            "factor": 2042,
            "target": "v",
            "old": [
              "169993/1000000",
              "683603/1000000"
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
              "683603/1000000"
            ],
            "new": [
              "10639/62500",
              "683603/1000000"
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
                "-46249/62500",
                "5480201739/31250000000"
              ],
              [
                "-46249/62500",
                "57623/125000"
              ]
            ],
            "raw": [
              "139/1000",
              "57623/92498"
            ],
            "new": [
              "139/1000",
              "124593/200000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "76757/250000",
              "6077/8000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-42672595143/250000000000"
              ],
              [
                "324041/1000000",
                "-134970477421/500000000000"
              ],
              [
                "324041/1000000",
                "-8740430439/31250000000"
              ],
              [
                "324041/1000000",
                "-186723613583/1000000000000"
              ],
              [
                "46249/62500",
                "-57126614393/250000000000"
              ],
              [
                "46249/62500",
                "-529058885837/1000000000000"
              ],
              [
                "46249/62500",
                "-42188731381/125000000000"
              ],
              [
                "46249/62500",
                "-222920772289/500000000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-32865585727/100000000000"
              ],
              [
                "324041/1000000",
                "-106887751/200000000"
              ],
              [
                "324041/1000000",
                "-88293718907/200000000000"
              ],
              [
                "46249/62500",
                "-3590267/12500000"
              ],
              [
                "46249/62500",
                "-117554757653/200000000000"
              ],
              [
                "46249/62500",
                "-37015927/62500000"
              ],
              [
                "46249/62500",
                "-70058652553/100000000000"
              ]
            ],
            "raw": [
              "57126614393/184996000000",
              "6077/8000"
            ],
            "new": [
              "308799/1000000",
              "6077/8000"
            ]
          },
          {
            "factor": 152,
            "target": "y",
            "old": [
              "103361/250000",
              "907/1000"
            ],
            "lines": [
              [
                "573887/1000000",
                "-392887850391/1000000000000"
              ],
              [
                "762839/1000000",
                "-451236039039/1000000000000"
              ],
              [
                "44177/250000",
                "-392887850391/1000000000000"
              ],
              [
                "18283/50000",
                "-451236039039/1000000000000"
              ],
              [
                "573887/1000000",
                "-4473252293/8000000000"
              ],
              [
                "762839/1000000",
                "-5621513597/8000000000"
              ],
              [
                "44177/250000",
                "-4473252293/8000000000"
              ],
              [
                "18283/50000",
                "-5621513597/8000000000"
              ],
              [
                "573887/1000000",
                "-132222533967/500000000000"
              ],
              [
                "762839/1000000",
                "-161396628291/500000000000"
              ],
              [
                "44177/250000",
                "-132222533967/500000000000"
              ],
              [
                "18283/50000",
                "-161396628291/500000000000"
              ],
              [
                "573887/1000000",
                "-972783341/4000000000"
              ],
              [
                "762839/1000000",
                "-1546913993/4000000000"
              ],
              [
                "44177/250000",
                "-972783341/4000000000"
              ],
              [
                "18283/50000",
                "-1546913993/4000000000"
              ]
            ],
            "raw": [
              "161396628291/381419500000",
              "907/1000"
            ],
            "new": [
              "423147/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "308799/1000000",
              "6077/8000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-171844678561/1000000000000"
              ],
              [
                "324041/1000000",
                "-271095252831/1000000000000"
              ],
              [
                "324041/1000000",
                "-142350949937/500000000000"
              ],
              [
                "324041/1000000",
                "-191731739409/1000000000000"
              ],
              [
                "46249/62500",
                "-229660755561/1000000000000"
              ],
              [
                "46249/62500",
                "-265106591913/500000000000"
              ],
              [
                "46249/62500",
                "-171258988437/500000000000"
              ],
              [
                "46249/62500",
                "-112712417601/250000000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-32865585727/100000000000"
              ],
              [
                "324041/1000000",
                "-106887751/200000000"
              ],
              [
                "324041/1000000",
                "-88293718907/200000000000"
              ],
              [
                "46249/62500",
                "-3590267/12500000"
              ],
              [
                "46249/62500",
                "-117554757653/200000000000"
              ],
              [
                "46249/62500",
                "-37015927/62500000"
              ],
              [
                "46249/62500",
                "-70058652553/100000000000"
              ]
            ],
            "raw": [
              "229660755561/739984000000",
              "6077/8000"
            ],
            "new": [
              "310359/1000000",
              "6077/8000"
            ]
          },
          {
            "factor": 152,
            "target": "y",
            "old": [
              "423147/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "573887/1000000",
                "-393463192431/1000000000000"
              ],
              [
                "762839/1000000",
                "-452106146199/1000000000000"
              ],
              [
                "44177/250000",
                "-393463192431/1000000000000"
              ],
              [
                "18283/50000",
                "-452106146199/1000000000000"
              ],
              [
                "573887/1000000",
                "-4473252293/8000000000"
              ],
              [
                "762839/1000000",
                "-5621513597/8000000000"
              ],
              [
                "44177/250000",
                "-4473252293/8000000000"
              ],
              [
                "18283/50000",
                "-5621513597/8000000000"
              ],
              [
                "573887/1000000",
                "-132185769447/500000000000"
              ],
              [
                "762839/1000000",
                "-161507246331/500000000000"
              ],
              [
                "44177/250000",
                "-132185769447/500000000000"
              ],
              [
                "18283/50000",
                "-161507246331/500000000000"
              ],
              [
                "573887/1000000",
                "-972783341/4000000000"
              ],
              [
                "762839/1000000",
                "-1546913993/4000000000"
              ],
              [
                "44177/250000",
                "-972783341/4000000000"
              ],
              [
                "18283/50000",
                "-1546913993/4000000000"
              ]
            ],
            "raw": [
              "161507246331/381419500000",
              "907/1000"
            ],
            "new": [
              "423437/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "258071/500000"
            ],
            "lines": [
              [
                "-307011/500000",
                "2347858191/20000000000"
              ],
              [
                "-307011/500000",
                "87385320363/500000000000"
              ],
              [
                "-1/1",
                "7696355337/20000000000"
              ],
              [
                "-1/1",
                "257563406541/500000000000"
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
              "257563406541/500000000000"
            ],
            "new": [
              "118963/1000000",
              "515127/1000000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "310359/1000000",
              "6077/8000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-171879177831/1000000000000"
              ],
              [
                "324041/1000000",
                "-271129752101/1000000000000"
              ],
              [
                "324041/1000000",
                "-284562877499/1000000000000"
              ],
              [
                "324041/1000000",
                "-192083941509/1000000000000"
              ],
              [
                "46249/62500",
                "-229695254831/1000000000000"
              ],
              [
                "46249/62500",
                "-66280960387/125000000000"
              ],
              [
                "46249/62500",
                "-342378954499/1000000000000"
              ],
              [
                "46249/62500",
                "-56400234063/125000000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-32865585727/100000000000"
              ],
              [
                "324041/1000000",
                "-106731847/200000000"
              ],
              [
                "324041/1000000",
                "-44118029901/100000000000"
              ],
              [
                "46249/62500",
                "-3590267/12500000"
              ],
              [
                "46249/62500",
                "-117554757653/200000000000"
              ],
              [
                "46249/62500",
                "-36967207/62500000"
              ],
              [
                "46249/62500",
                "-140059646001/200000000000"
              ]
            ],
            "raw": [
              "32813607833/105712000000",
              "6077/8000"
            ],
            "new": [
              "62081/200000",
              "6077/8000"
            ]
          },
          {
            "factor": 152,
            "target": "y",
            "old": [
              "423437/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "573887/1000000",
                "-78696031529/200000000000"
              ],
              [
                "762839/1000000",
                "-90426360641/200000000000"
              ],
              [
                "177723/1000000",
                "-78696031529/200000000000"
              ],
              [
                "14667/40000",
                "-90426360641/200000000000"
              ],
              [
                "573887/1000000",
                "-4473252293/8000000000"
              ],
              [
                "762839/1000000",
                "-5621513597/8000000000"
              ],
              [
                "177723/1000000",
                "-4473252293/8000000000"
              ],
              [
                "14667/40000",
                "-5621513597/8000000000"
              ],
              [
                "573887/1000000",
                "-26436937073/100000000000"
              ],
              [
                "762839/1000000",
                "-32302101629/100000000000"
              ],
              [
                "177723/1000000",
                "-26436937073/100000000000"
              ],
              [
                "14667/40000",
                "-32302101629/100000000000"
              ],
              [
                "573887/1000000",
                "-972783341/4000000000"
              ],
              [
                "762839/1000000",
                "-1546913993/4000000000"
              ],
              [
                "177723/1000000",
                "-972783341/4000000000"
              ],
              [
                "14667/40000",
                "-1546913993/4000000000"
              ]
            ],
            "raw": [
              "4614585947/10897700000",
              "907/1000"
            ],
            "new": [
              "84689/200000",
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
        "DGP+"
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
          "62081/200000",
          "324041/1000000",
          "84689/200000",
          "324041/1000000",
          "10639/62500"
        ],
        "high": [
          "124593/200000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "515127/1000000",
          "1",
          "6077/8000",
          "46249/62500",
          "907/1000",
          "92659/125000",
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
        "DGP": 1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DOP": 1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "DGH": -1,
        "GOP": -1,
        "BDG": 1,
        "EGP": 1,
        "FGP": 1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "CFO": 1,
        "DFO": 1,
        "DHP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEG": 1,
        "BEO": 1,
        "AOP": -1
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
            "DCGOP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDG",
            "CDO",
            "DGP",
            "CDP",
            "DGO"
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
            "GADHP"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ADG",
            "GHP",
            "AGH",
            "DGP",
            "AGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GADOP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ADG",
            "AGO",
            "DGP",
            "AGP",
            "DGO"
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
            "GCDEP"
          ],
          "target": "EGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CEG",
            "DGP",
            "CGP",
            "DEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFP"
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CFG",
            "DGP",
            "CGP",
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
            "PCDGH"
          ],
          "target": "DHP",
          "sign": 1,
          "deps": [
            "CDP",
            "GHP",
            "CGP",
            "CHP",
            "DGP"
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
            "PDEFG"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FGP",
            "EGP",
            "DGP",
            "EFP"
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
          "target": "BEG",
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
              "80480253/125000000"
            ]
          ],
          "target": "AOP",
          "sign": -1,
          "deps": [
            "AHP",
            "HOP"
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
        "U_CHO": {
          "triangle": "CHO",
          "side": "hi",
          "value": "178178760501/250000000000",
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
              "-18436635211/100000000000",
              "-301700527/4000000000",
              "7729280787/250000000000",
              "16731757113/250000000000",
              "23157664789/100000000000",
              "121016707/500000000",
              "5192119/20000000",
              "143157637947/500000000000",
              "161162590599/500000000000",
              "1362071473/4000000000",
              "200979055101/500000000000",
              "228658444629/500000000000",
              "164339065737/250000000000",
              "328988207/500000000",
              "13510979/20000000",
              "178178760501/250000000000"
            ],
            "cell": "CA"
          }
        },
        "U_FHP": {
          "triangle": "FHP",
          "side": "hi",
          "value": "22865566761/31250000000",
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
              "112379009527/500000000000",
              "30397900877/125000000000",
              "139499753697/500000000000",
              "199448031549/500000000000",
              "31998237/62500000",
              "258207330547/500000000000",
              "17498064063/31250000000",
              "169364162003/250000000000",
              "22865566761/31250000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "3283": {
          "row": [
            "linear",
            {
              "FHO": "-93/1000",
              "CFO": "131678760501/250000000000",
              "FOP": "-178178760501/250000000000"
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
              "value": "178178760501/250000000000"
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
            "residual": "108428760501/250000000000"
          }
        },
        "3322": {
          "row": [
            "linear",
            {
              "CFP": "17053066761/31250000000",
              "CHP": "-93/1000",
              "COP": "-22865566761/31250000000"
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
              "value": "22865566761/31250000000"
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
            "residual": "14146816761/31250000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0067",
          "relation": 3283,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "142261/1000000",
          "sources": [
            "L_FHO",
            "L_FOP"
          ]
        },
        {
          "id": "T0069",
          "relation": 3322,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "35137/250000",
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
        "152": {
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
        "190": {
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
              "-142261/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFO",
            "side": "lo",
            "reference": "T0067",
            "value": "142261/1000000"
          }
        },
        "196": {
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
              "-35137/250000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "lo",
            "reference": "T0069",
            "value": "35137/250000"
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
          "155271/500000",
          "324041/1000000",
          "423651/1000000",
          "324041/1000000",
          "10639/62500"
        ],
        "high": [
          "622739/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "514967/1000000",
          "1/1",
          "6077/8000",
          "739541/1000000",
          "907/1000",
          "370627/500000",
          "683603/1000000"
        ],
        "steps": [
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "515127/1000000"
            ],
            "lines": [
              [
                "-307011/500000",
                "2347220769/20000000000"
              ],
              [
                "-307011/500000",
                "87365038917/500000000000"
              ],
              [
                "-1/1",
                "1539143583/4000000000"
              ],
              [
                "-1/1",
                "51508625019/100000000000"
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
              "51508625019/100000000000"
            ],
            "new": [
              "118963/1000000",
              "515087/1000000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "62081/200000",
              "6077/8000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-34376025907/200000000000"
              ],
              [
                "324041/1000000",
                "-54226140761/200000000000"
              ],
              [
                "324041/1000000",
                "-56911124143/200000000000"
              ],
              [
                "324041/1000000",
                "-7683841733/40000000000"
              ],
              [
                "46249/62500",
                "-45939241307/200000000000"
              ],
              [
                "46249/62500",
                "-1325621587/2500000000"
              ],
              [
                "46249/62500",
                "-68474339543/200000000000"
              ],
              [
                "46249/62500",
                "-5640174679/12500000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-32865585727/100000000000"
              ],
              [
                "324041/1000000",
                "-106725703/200000000"
              ],
              [
                "324041/1000000",
                "-44116893761/100000000000"
              ],
              [
                "46249/62500",
                "-3590267/12500000"
              ],
              [
                "46249/62500",
                "-117554757653/200000000000"
              ],
              [
                "46249/62500",
                "-36965287/62500000"
              ],
              [
                "46249/62500",
                "-140057373721/200000000000"
              ]
            ],
            "raw": [
              "45939241307/147996800000",
              "6077/8000"
            ],
            "new": [
              "155203/500000",
              "6077/8000"
            ]
          },
          {
            "factor": 152,
            "target": "y",
            "old": [
              "84689/200000",
              "907/1000"
            ],
            "lines": [
              [
                "573887/1000000",
                "-196740263227/500000000000"
              ],
              [
                "762839/1000000",
                "-226066180483/500000000000"
              ],
              [
                "177763/1000000",
                "-196740263227/500000000000"
              ],
              [
                "73343/200000",
                "-226066180483/500000000000"
              ],
              [
                "573887/1000000",
                "-4473252293/8000000000"
              ],
              [
                "762839/1000000",
                "-5621513597/8000000000"
              ],
              [
                "177763/1000000",
                "-4473252293/8000000000"
              ],
              [
                "73343/200000",
                "-5621513597/8000000000"
              ],
              [
                "573887/1000000",
                "-66092330899/250000000000"
              ],
              [
                "762839/1000000",
                "-80755289527/250000000000"
              ],
              [
                "177763/1000000",
                "-66092330899/250000000000"
              ],
              [
                "73343/200000",
                "-80755289527/250000000000"
              ],
              [
                "573887/1000000",
                "-972783341/4000000000"
              ],
              [
                "762839/1000000",
                "-1546913993/4000000000"
              ],
              [
                "177763/1000000",
                "-972783341/4000000000"
              ],
              [
                "73343/200000",
                "-1546913993/4000000000"
              ]
            ],
            "raw": [
              "7341389957/17337250000",
              "907/1000"
            ],
            "new": [
              "211723/500000",
              "907/1000"
            ]
          },
          {
            "factor": 190,
            "target": "x",
            "old": [
              "324041/1000000",
              "46249/62500"
            ],
            "lines": [
              [
                "-1/1",
                "5184706209/10000000000"
              ],
              [
                "-1/1",
                "156852913077/250000000000"
              ],
              [
                "-1/1",
                "39412498037/62500000000"
              ],
              [
                "-1/1",
                "739541/1000000"
              ],
              [
                "-1/1",
                "9635861/20000000"
              ],
              [
                "-1/1",
                "249682793/500000000"
              ],
              [
                "-1/1",
                "45123029/62500000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "739541/1000000"
            ],
            "new": [
              "324041/1000000",
              "739541/1000000"
            ]
          },
          {
            "factor": 196,
            "target": "u",
            "old": [
              "324041/1000000",
              "92659/125000"
            ],
            "lines": [
              [
                "-1/1",
                "674238137/1250000000"
              ],
              [
                "-1/1",
                "21755573261/31250000000"
              ],
              [
                "-1/1",
                "1141535479/1953125000"
              ],
              [
                "-1/1",
                "370627/500000"
              ],
              [
                "-1/1",
                "10009014249/20000000000"
              ],
              [
                "-1/1",
                "280117279197/500000000000"
              ],
              [
                "-1/1",
                "85183769257/125000000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "370627/500000"
            ],
            "new": [
              "324041/1000000",
              "370627/500000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "515087/1000000"
            ],
            "lines": [
              [
                "-307011/500000",
                "9168777/78125000"
              ],
              [
                "-307011/500000",
                "341267961/1953125000"
              ],
              [
                "-1/1",
                "3847852029/10000000000"
              ],
              [
                "-1/1",
                "128771342097/250000000000"
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
              "128771342097/250000000000"
            ],
            "new": [
              "118963/1000000",
              "257543/500000"
            ]
          },
          {
            "factor": 98,
            "target": "a",
            "old": [
              "139/1000",
              "124593/200000"
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
                "-739541/1000000",
                "87547221951/500000000000"
              ],
              [
                "-739541/1000000",
                "460541/1000000"
              ]
            ],
            "raw": [
              "139/1000",
              "460541/739541"
            ],
            "new": [
              "139/1000",
              "622739/1000000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "155203/500000",
              "6077/8000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-85940124249/500000000000"
              ],
              [
                "324041/1000000",
                "-13554223757/50000000000"
              ],
              [
                "324041/1000000",
                "-71138962839/250000000000"
              ],
              [
                "324041/1000000",
                "-192139934101/1000000000000"
              ],
              [
                "739541/1000000",
                "-114817374249/500000000000"
              ],
              [
                "739541/1000000",
                "-13245813241/25000000000"
              ],
              [
                "739541/1000000",
                "-85577587839/250000000000"
              ],
              [
                "739541/1000000",
                "-450887988601/1000000000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-164304754821/500000000000"
              ],
              [
                "324041/1000000",
                "-533627747/1000000000"
              ],
              [
                "324041/1000000",
                "-88242365949/200000000000"
              ],
              [
                "739541/1000000",
                "-287159783/1000000000"
              ],
              [
                "739541/1000000",
                "-293678782071/500000000000"
              ],
              [
                "739541/1000000",
                "-591382247/1000000000"
              ],
              [
                "739541/1000000",
                "-139991976849/200000000000"
              ]
            ],
            "raw": [
              "114817374249/369770500000",
              "6077/8000"
            ],
            "new": [
              "310509/1000000",
              "6077/8000"
            ]
          },
          {
            "factor": 152,
            "target": "y",
            "old": [
              "211723/500000",
              "907/1000"
            ],
            "lines": [
              [
                "573887/1000000",
                "-393518513781/1000000000000"
              ],
              [
                "762839/1000000",
                "-452189810349/1000000000000"
              ],
              [
                "44441/250000",
                "-393518513781/1000000000000"
              ],
              [
                "91679/250000",
                "-452189810349/1000000000000"
              ],
              [
                "573887/1000000",
                "-4473252293/8000000000"
              ],
              [
                "762839/1000000",
                "-5621513597/8000000000"
              ],
              [
                "44441/250000",
                "-4473252293/8000000000"
              ],
              [
                "91679/250000",
                "-5621513597/8000000000"
              ],
              [
                "573887/1000000",
                "-264502024281/1000000000000"
              ],
              [
                "762839/1000000",
                "-323173320849/1000000000000"
              ],
              [
                "44441/250000",
                "-264502024281/1000000000000"
              ],
              [
                "91679/250000",
                "-323173320849/1000000000000"
              ],
              [
                "573887/1000000",
                "-1948258793/8000000000"
              ],
              [
                "762839/1000000",
                "-3096520097/8000000000"
              ],
              [
                "44441/250000",
                "-1948258793/8000000000"
              ],
              [
                "91679/250000",
                "-3096520097/8000000000"
              ]
            ],
            "raw": [
              "323173320849/762839000000",
              "907/1000"
            ],
            "new": [
              "84729/200000",
              "907/1000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "257543/500000"
            ],
            "lines": [
              [
                "-307011/500000",
                "2345779641/20000000000"
              ],
              [
                "-307011/500000",
                "87319185213/500000000000"
              ],
              [
                "-1/1",
                "7694276787/20000000000"
              ],
              [
                "-1/1",
                "257497271391/500000000000"
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
              "257497271391/500000000000"
            ],
            "new": [
              "118963/1000000",
              "102999/200000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "310509/1000000",
              "6077/8000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-34380784427/200000000000"
              ],
              [
                "324041/1000000",
                "-271108148777/1000000000000"
              ],
              [
                "324041/1000000",
                "-11385298031/40000000000"
              ],
              [
                "324041/1000000",
                "-192260553769/1000000000000"
              ],
              [
                "739541/1000000",
                "-45931684427/200000000000"
              ],
              [
                "739541/1000000",
                "-529856203277/1000000000000"
              ],
              [
                "739541/1000000",
                "-13695478031/40000000000"
              ],
              [
                "739541/1000000",
                "-451008608269/1000000000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-164304754821/500000000000"
              ],
              [
                "324041/1000000",
                "-533557859/1000000000"
              ],
              [
                "324041/1000000",
                "-220592980997/500000000000"
              ],
              [
                "739541/1000000",
                "-287159783/1000000000"
              ],
              [
                "739541/1000000",
                "-293678782071/500000000000"
              ],
              [
                "739541/1000000",
                "-591312359/1000000000"
              ],
              [
                "739541/1000000",
                "-349967008247/500000000000"
              ]
            ],
            "raw": [
              "45931684427/147908200000",
              "6077/8000"
            ],
            "new": [
              "310541/1000000",
              "6077/8000"
            ]
          },
          {
            "factor": 152,
            "target": "y",
            "old": [
              "84729/200000",
              "907/1000"
            ],
            "lines": [
              [
                "573887/1000000",
                "-393530315669/1000000000000"
              ],
              [
                "762839/1000000",
                "-452207658701/1000000000000"
              ],
              [
                "35571/200000",
                "-393530315669/1000000000000"
              ],
              [
                "366807/1000000",
                "-452207658701/1000000000000"
              ],
              [
                "573887/1000000",
                "-4473252293/8000000000"
              ],
              [
                "762839/1000000",
                "-5621513597/8000000000"
              ],
              [
                "35571/200000",
                "-4473252293/8000000000"
              ],
              [
                "366807/1000000",
                "-5621513597/8000000000"
              ],
              [
                "573887/1000000",
                "-264500530169/1000000000000"
              ],
              [
                "762839/1000000",
                "-323177873201/1000000000000"
              ],
              [
                "35571/200000",
                "-264500530169/1000000000000"
              ],
              [
                "366807/1000000",
                "-323177873201/1000000000000"
              ],
              [
                "573887/1000000",
                "-1948258793/8000000000"
              ],
              [
                "762839/1000000",
                "-3096520097/8000000000"
              ],
              [
                "35571/200000",
                "-1948258793/8000000000"
              ],
              [
                "366807/1000000",
                "-3096520097/8000000000"
              ]
            ],
            "raw": [
              "323177873201/762839000000",
              "907/1000"
            ],
            "new": [
              "423651/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "102999/200000"
            ],
            "lines": [
              [
                "-307011/500000",
                "2345336217/20000000000"
              ],
              [
                "-307011/500000",
                "87305076381/500000000000"
              ],
              [
                "-1/1",
                "7693833363/20000000000"
              ],
              [
                "-1/1",
                "257483162559/500000000000"
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
              "257483162559/500000000000"
            ],
            "new": [
              "118963/1000000",
              "514967/1000000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "310541/1000000",
              "6077/8000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-171904635913/1000000000000"
              ],
              [
                "324041/1000000",
                "-54221772511/200000000000"
              ],
              [
                "324041/1000000",
                "-284627570517/1000000000000"
              ],
              [
                "324041/1000000",
                "-192269218203/1000000000000"
              ],
              [
                "739541/1000000",
                "-229659135913/1000000000000"
              ],
              [
                "739541/1000000",
                "-105971383411/200000000000"
              ],
              [
                "739541/1000000",
                "-342382070517/1000000000000"
              ],
              [
                "739541/1000000",
                "-451017272703/1000000000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-164304754821/500000000000"
              ],
              [
                "324041/1000000",
                "-106707271/200000000"
              ],
              [
                "324041/1000000",
                "-220589001343/500000000000"
              ],
              [
                "739541/1000000",
                "-287159783/1000000000"
              ],
              [
                "739541/1000000",
                "-293678782071/500000000000"
              ],
              [
                "739541/1000000",
                "-118258171/200000000"
              ],
              [
                "739541/1000000",
                "-349963028593/500000000000"
              ]
            ],
            "raw": [
              "229659135913/739541000000",
              "6077/8000"
            ],
            "new": [
              "155271/500000",
              "6077/8000"
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
        "DGP+"
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
          "155271/500000",
          "324041/1000000",
          "423651/1000000",
          "324041/1000000",
          "10639/62500"
        ],
        "high": [
          "622739/1000000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "514967/1000000",
          "1",
          "6077/8000",
          "739541/1000000",
          "907/1000",
          "370627/500000",
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
        "DGP": 1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DOP": 1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "DGH": -1,
        "GOP": -1,
        "BDG": 1,
        "EGP": 1,
        "FGP": 1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "CFO": 1,
        "DFO": 1,
        "DHP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEG": 1,
        "BEO": 1,
        "AOP": -1
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
            "DCGOP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDG",
            "CDO",
            "DGP",
            "CDP",
            "DGO"
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
            "GADHP"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ADG",
            "GHP",
            "AGH",
            "DGP",
            "AGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GADOP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ADG",
            "AGO",
            "DGP",
            "AGP",
            "DGO"
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
            "GCDEP"
          ],
          "target": "EGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CEG",
            "DGP",
            "CGP",
            "DEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFP"
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CFG",
            "DGP",
            "CGP",
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
            "PCDGH"
          ],
          "target": "DHP",
          "sign": 1,
          "deps": [
            "CDP",
            "GHP",
            "CGP",
            "CHP",
            "DGP"
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
            "PDEFG"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FGP",
            "EGP",
            "DGP",
            "EFP"
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
          "target": "BEG",
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
              "80480253/125000000"
            ]
          ],
          "target": "AOP",
          "sign": -1,
          "deps": [
            "AHP",
            "HOP"
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
        "U_CHO": {
          "triangle": "CHO",
          "side": "hi",
          "value": "356221515129/500000000000",
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
              "-92092350449/500000000000",
              "-1505648093/20000000000",
              "777469359/25000000000",
              "2095929861/31250000000",
              "115657649551/500000000000",
              "121016707/500000000",
              "5192119/20000000",
              "1788905721/6250000000",
              "40274487069/125000000000",
              "6804351907/20000000000",
              "200979055101/500000000000",
              "228658444629/500000000000",
              "328542125601/500000000000",
              "328766707/500000000",
              "13502119/20000000",
              "356221515129/500000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "3283": {
          "row": [
            "linear",
            {
              "FHO": "-93/1000",
              "CFO": "263221515129/500000000000",
              "FOP": "-356221515129/500000000000"
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
              "value": "356221515129/500000000000"
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
            "residual": "216721515129/500000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0067",
          "relation": 3283,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "142287/1000000",
          "sources": [
            "L_FHO",
            "L_FOP"
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
        "152": {
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
        "190": {
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
              "-142287/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFO",
            "side": "lo",
            "reference": "T0067",
            "value": "142287/1000000"
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
          "6211/20000",
          "324041/1000000",
          "423663/1000000",
          "324041/1000000",
          "10639/62500"
        ],
        "high": [
          "311363/500000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "514959/1000000",
          "1/1",
          "6077/8000",
          "147903/200000",
          "907/1000",
          "370627/500000",
          "683603/1000000"
        ],
        "steps": [
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "514967/1000000"
            ],
            "lines": [
              [
                "-307011/500000",
                "58633059/500000000"
              ],
              [
                "-307011/500000",
                "2182615887/12500000000"
              ],
              [
                "-1/1",
                "3846909753/10000000000"
              ],
              [
                "-1/1",
                "128741360829/250000000000"
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
              "128741360829/250000000000"
            ],
            "new": [
              "118963/1000000",
              "257483/500000"
            ]
          },
          {
            "factor": 190,
            "target": "x",
            "old": [
              "324041/1000000",
              "739541/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "10368581433/20000000000"
              ],
              [
                "-1/1",
                "313665683949/500000000000"
              ],
              [
                "-1/1",
                "78826587969/125000000000"
              ],
              [
                "-1/1",
                "147903/200000"
              ],
              [
                "-1/1",
                "9635341/20000000"
              ],
              [
                "-1/1",
                "249669793/500000000"
              ],
              [
                "-1/1",
                "11280351/15625000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "147903/200000"
            ],
            "new": [
              "324041/1000000",
              "147903/200000"
            ]
          },
          {
            "factor": 98,
            "target": "a",
            "old": [
              "139/1000",
              "622739/1000000"
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
                "-147903/200000",
                "17507847933/100000000000"
              ],
              [
                "-147903/200000",
                "92103/200000"
              ]
            ],
            "raw": [
              "139/1000",
              "30701/49301"
            ],
            "new": [
              "139/1000",
              "311363/500000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "155271/500000",
              "6077/8000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-171904635913/1000000000000"
              ],
              [
                "324041/1000000",
                "-271106196541/1000000000000"
              ],
              [
                "324041/1000000",
                "-142313642933/500000000000"
              ],
              [
                "324041/1000000",
                "-48067974829/250000000000"
              ],
              [
                "147903/200000",
                "-229655521913/1000000000000"
              ],
              [
                "147903/200000",
                "-105966531733/200000000000"
              ],
              [
                "147903/200000",
                "-171189085933/500000000000"
              ],
              [
                "147903/200000",
                "-2818739759/6250000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-82151710907/250000000000"
              ],
              [
                "324041/1000000",
                "-533535587/1000000000"
              ],
              [
                "324041/1000000",
                "-8823604009/20000000000"
              ],
              [
                "147903/200000",
                "-287156169/1000000000"
              ],
              [
                "147903/200000",
                "-73416663219/125000000000"
              ],
              [
                "147903/200000",
                "-591286473/1000000000"
              ],
              [
                "147903/200000",
                "-349953331287/500000000000"
              ]
            ],
            "raw": [
              "229655521913/739515000000",
              "6077/8000"
            ],
            "new": [
              "77637/250000",
              "6077/8000"
            ]
          },
          {
            "factor": 152,
            "target": "y",
            "old": [
              "423651/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "573887/1000000",
                "-98383224333/250000000000"
              ],
              [
                "762839/1000000",
                "-113052890757/250000000000"
              ],
              [
                "44471/250000",
                "-98383224333/250000000000"
              ],
              [
                "91709/250000",
                "-113052890757/250000000000"
              ],
              [
                "573887/1000000",
                "-4473252293/8000000000"
              ],
              [
                "762839/1000000",
                "-5621513597/8000000000"
              ],
              [
                "44471/250000",
                "-4473252293/8000000000"
              ],
              [
                "91709/250000",
                "-5621513597/8000000000"
              ],
              [
                "573887/1000000",
                "-13225413879/50000000000"
              ],
              [
                "762839/1000000",
                "-80796735819/250000000000"
              ],
              [
                "44471/250000",
                "-13225413879/50000000000"
              ],
              [
                "91709/250000",
                "-80796735819/250000000000"
              ],
              [
                "573887/1000000",
                "-389683359/1600000000"
              ],
              [
                "762839/1000000",
                "-3096678099/8000000000"
              ],
              [
                "44471/250000",
                "-389683359/1600000000"
              ],
              [
                "91709/250000",
                "-3096678099/8000000000"
              ]
            ],
            "raw": [
              "80796735819/190709750000",
              "907/1000"
            ],
            "new": [
              "423663/1000000",
              "907/1000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "257483/500000"
            ],
            "lines": [
              [
                "-307011/500000",
                "1172619609/10000000000"
              ],
              [
                "-307011/500000",
                "43650995037/250000000000"
              ],
              [
                "-1/1",
                "1923434091/5000000000"
              ],
              [
                "-1/1",
                "64370019063/125000000000"
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
              "64370019063/125000000000"
            ],
            "new": [
              "118963/1000000",
              "514961/1000000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "77637/250000",
              "6077/8000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-171906063469/1000000000000"
              ],
              [
                "324041/1000000",
                "-271107624097/1000000000000"
              ],
              [
                "324041/1000000",
                "-284632042143/1000000000000"
              ],
              [
                "324041/1000000",
                "-192279074223/1000000000000"
              ],
              [
                "147903/200000",
                "-229656949469/1000000000000"
              ],
              [
                "147903/200000",
                "-529834086221/1000000000000"
              ],
              [
                "147903/200000",
                "-342382928143/1000000000000"
              ],
              [
                "147903/200000",
                "-451005536347/1000000000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-82151710907/250000000000"
              ],
              [
                "324041/1000000",
                "-533531747/1000000000"
              ],
              [
                "324041/1000000",
                "-11029469477/25000000000"
              ],
              [
                "147903/200000",
                "-287156169/1000000000"
              ],
              [
                "147903/200000",
                "-73416663219/125000000000"
              ],
              [
                "147903/200000",
                "-591282633/1000000000"
              ],
              [
                "147903/200000",
                "-174976310301/250000000000"
              ]
            ],
            "raw": [
              "229656949469/739515000000",
              "6077/8000"
            ],
            "new": [
              "6211/20000",
              "6077/8000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "514961/1000000"
            ],
            "lines": [
              [
                "-307011/500000",
                "146575719/1250000000"
              ],
              [
                "-307011/500000",
                "5456319267/31250000000"
              ],
              [
                "-1/1",
                "153874173/400000000"
              ],
              [
                "-1/1",
                "5149583889/10000000000"
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
              "5149583889/10000000000"
            ],
            "new": [
              "118963/1000000",
              "514959/1000000"
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
        "DGP+"
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
          "6211/20000",
          "324041/1000000",
          "423663/1000000",
          "324041/1000000",
          "10639/62500"
        ],
        "high": [
          "311363/500000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "514959/1000000",
          "1",
          "6077/8000",
          "147903/200000",
          "907/1000",
          "370627/500000",
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
        "DGP": 1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DOP": 1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "DGH": -1,
        "GOP": -1,
        "BDG": 1,
        "EGP": 1,
        "FGP": 1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "CFO": 1,
        "DFO": 1,
        "DHP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEG": 1,
        "BEO": 1,
        "AOP": -1
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
            "DCGOP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDG",
            "CDO",
            "DGP",
            "CDP",
            "DGO"
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
            "GADHP"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ADG",
            "GHP",
            "AGH",
            "DGP",
            "AGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GADOP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ADG",
            "AGO",
            "DGP",
            "AGP",
            "DGO"
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
            "GCDEP"
          ],
          "target": "EGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CEG",
            "DGP",
            "CGP",
            "DEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFP"
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CFG",
            "DGP",
            "CGP",
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
            "PCDGH"
          ],
          "target": "DHP",
          "sign": 1,
          "deps": [
            "CDP",
            "GHP",
            "CGP",
            "CHP",
            "DGP"
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
            "PDEFG"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FGP",
            "EGP",
            "DGP",
            "EFP"
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
          "target": "BEG",
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
              "80480253/125000000"
            ]
          ],
          "target": "AOP",
          "sign": -1,
          "deps": [
            "AHP",
            "HOP"
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
        "U_CHO": {
          "triangle": "CHO",
          "side": "hi",
          "value": "356213532843/500000000000",
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
              "-92087059637/500000000000",
              "-1505481809/20000000000",
              "1944334749/62500000000",
              "8384758719/125000000000",
              "115649940363/500000000000",
              "121016707/500000000",
              "5192119/20000000",
              "71554883103/250000000000",
              "16109412309/50000000000",
              "6803998191/20000000000",
              "200979055101/500000000000",
              "228658444629/500000000000",
              "65706828663/100000000000",
              "328753707/500000000",
              "13501599/20000000",
              "356213532843/500000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "3283": {
          "row": [
            "linear",
            {
              "FHO": "-93/1000",
              "CFO": "263213532843/500000000000",
              "FOP": "-356213532843/500000000000"
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
              "value": "356213532843/500000000000"
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
            "residual": "216713532843/500000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0067",
          "relation": 3283,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "8893/62500",
          "sources": [
            "L_FHO",
            "L_FOP"
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
        "152": {
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
        "190": {
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
              "-8893/62500"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFO",
            "side": "lo",
            "reference": "T0067",
            "value": "8893/62500"
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
          "310551/1000000",
          "324041/1000000",
          "26479/62500",
          "324041/1000000",
          "10639/62500"
        ],
        "high": [
          "311363/500000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "257479/500000",
          "1/1",
          "6077/8000",
          "369757/500000",
          "907/1000",
          "370627/500000",
          "683603/1000000"
        ],
        "steps": [
          {
            "factor": 190,
            "target": "x",
            "old": [
              "324041/1000000",
              "147903/200000"
            ],
            "lines": [
              [
                "-1/1",
                "10368543229/20000000000"
              ],
              [
                "-1/1",
                "313663595137/500000000000"
              ],
              [
                "-1/1",
                "78826746397/125000000000"
              ],
              [
                "-1/1",
                "369757/500000"
              ],
              [
                "-1/1",
                "9635321/20000000"
              ],
              [
                "-1/1",
                "249669293/500000000"
              ],
              [
                "-1/1",
                "90242683/125000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "369757/500000"
            ],
            "new": [
              "324041/1000000",
              "369757/500000"
            ]
          },
          {
            "factor": 152,
            "target": "y",
            "old": [
              "423663/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "573887/1000000",
                "-7870672699/20000000000"
              ],
              [
                "762839/1000000",
                "-9044253571/20000000000"
              ],
              [
                "177891/1000000",
                "-7870672699/20000000000"
              ],
              [
                "366843/1000000",
                "-9044253571/20000000000"
              ],
              [
                "573887/1000000",
                "-4473252293/8000000000"
              ],
              [
                "762839/1000000",
                "-5621513597/8000000000"
              ],
              [
                "177891/1000000",
                "-4473252293/8000000000"
              ],
              [
                "366843/1000000",
                "-5621513597/8000000000"
              ],
              [
                "573887/1000000",
                "-661271237/2500000000"
              ],
              [
                "762839/1000000",
                "-403984423/1250000000"
              ],
              [
                "177891/1000000",
                "-661271237/2500000000"
              ],
              [
                "366843/1000000",
                "-403984423/1250000000"
              ],
              [
                "573887/1000000",
                "-243552859/1000000000"
              ],
              [
                "762839/1000000",
                "-193542761/500000000"
              ],
              [
                "177891/1000000",
                "-243552859/1000000000"
              ],
              [
                "366843/1000000",
                "-193542761/500000000"
              ]
            ],
            "raw": [
              "403984423/953548750",
              "907/1000"
            ],
            "new": [
              "26479/62500",
              "907/1000"
            ]
          },
          {
            "factor": 138,
            "target": "z",
            "old": [
              "6211/20000",
              "6077/8000"
            ],
            "lines": [
              [
                "324041/1000000",
                "-5372068201/31250000000"
              ],
              [
                "324041/1000000",
                "-13555387153/50000000000"
              ],
              [
                "324041/1000000",
                "-4447374809/15625000000"
              ],
              [
                "324041/1000000",
                "-48069996827/250000000000"
              ],
              [
                "369757/500000",
                "-28707116179/125000000000"
              ],
              [
                "369757/500000",
                "-264916791229/500000000000"
              ],
              [
                "369757/500000",
                "-42797841847/125000000000"
              ],
              [
                "369757/500000",
                "-225502913353/500000000000"
              ],
              [
                "324041/1000000",
                "-229405283/1000000000"
              ],
              [
                "324041/1000000",
                "-82151710907/250000000000"
              ],
              [
                "324041/1000000",
                "-533530211/1000000000"
              ],
              [
                "324041/1000000",
                "-110294552633/250000000000"
              ],
              [
                "369757/500000",
                "-28715603/100000000"
              ],
              [
                "369757/500000",
                "-293666341513/500000000000"
              ],
              [
                "369757/500000",
                "-295640479/500000000"
              ],
              [
                "369757/500000",
                "-69990404993/100000000000"
              ]
            ],
            "raw": [
              "667607353/2149750000",
              "6077/8000"
            ],
            "new": [
              "310551/1000000",
              "6077/8000"
            ]
          },
          {
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "514959/1000000"
            ],
            "lines": [
              [
                "-307011/500000",
                "2345197647/20000000000"
              ],
              [
                "-307011/500000",
                "87300667371/500000000000"
              ],
              [
                "-1/1",
                "7693694793/20000000000"
              ],
              [
                "-1/1",
                "257478753549/500000000000"
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
              "257478753549/500000000000"
            ],
            "new": [
              "118963/1000000",
              "257479/500000"
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
        "DGP+"
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
          "310551/1000000",
          "324041/1000000",
          "26479/62500",
          "324041/1000000",
          "10639/62500"
        ],
        "high": [
          "311363/500000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "257479/500000",
          "1",
          "6077/8000",
          "369757/500000",
          "907/1000",
          "370627/500000",
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
        "DGP": 1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DOP": 1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "DGH": -1,
        "GOP": -1,
        "BDG": 1,
        "EGP": 1,
        "FGP": 1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "CFO": 1,
        "DFO": 1,
        "DHP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEG": 1,
        "BEO": 1,
        "AOP": -1
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
            "DCGOP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDG",
            "CDO",
            "DGP",
            "CDP",
            "DGO"
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
            "GADHP"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ADG",
            "GHP",
            "AGH",
            "DGP",
            "AGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GADOP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ADG",
            "AGO",
            "DGP",
            "AGP",
            "DGO"
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
            "GCDEP"
          ],
          "target": "EGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CEG",
            "DGP",
            "CGP",
            "DEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFP"
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CFG",
            "DGP",
            "CGP",
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
            "PCDGH"
          ],
          "target": "DHP",
          "sign": 1,
          "deps": [
            "CDP",
            "GHP",
            "CGP",
            "CHP",
            "DGP"
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
            "PDEFG"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FGP",
            "EGP",
            "DGP",
            "EFP"
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
          "target": "BEG",
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
              "80480253/125000000"
            ]
          ],
          "target": "AOP",
          "sign": -1,
          "deps": [
            "AHP",
            "HOP"
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
          "310551/1000000",
          "324041/1000000",
          "26479/62500",
          "324041/1000000",
          "10639/62500"
        ],
        "high": [
          "311363/500000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "257479/500000",
          "1/1",
          "6077/8000",
          "369757/500000",
          "907/1000",
          "370627/500000",
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
        "DGP+",
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
          "310551/1000000",
          "324041/1000000",
          "26479/62500",
          "324041/1000000",
          "10639/62500"
        ],
        "high": [
          "311363/500000",
          "535/907",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "257479/500000",
          "1",
          "6077/8000",
          "369757/500000",
          "907/1000",
          "370627/500000",
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
        "DGP": 1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DOP": 1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "DGH": -1,
        "GOP": -1,
        "BDG": 1,
        "EGP": 1,
        "FGP": 1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "CFO": 1,
        "DFO": 1,
        "DHP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEG": 1,
        "BEO": 1,
        "AOP": -1,
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
            "DCGOP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDG",
            "CDO",
            "DGP",
            "CDP",
            "DGO"
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
            "GADHP"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ADG",
            "GHP",
            "AGH",
            "DGP",
            "AGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GADOP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ADG",
            "AGO",
            "DGP",
            "AGP",
            "DGO"
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
            "GCDEP"
          ],
          "target": "EGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CEG",
            "DGP",
            "CGP",
            "DEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFP"
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CFG",
            "DGP",
            "CGP",
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
            "PCDGH"
          ],
          "target": "DHP",
          "sign": 1,
          "deps": [
            "CDP",
            "GHP",
            "CGP",
            "CHP",
            "DGP"
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
            "PDEFG"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FGP",
            "EGP",
            "DGP",
            "EFP"
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
          "target": "BEG",
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
              "80480253/125000000"
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
        }
      },
      "relations": {},
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
        "152": {
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
        "206": {
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
          "424391/1000000",
          "324041/1000000",
          "10639/62500"
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
          "369757/500000",
          "907/1000",
          "370627/500000",
          "683603/1000000"
        ],
        "steps": [
          {
            "factor": 206,
            "target": "a",
            "old": [
              "139/1000",
              "311363/500000"
            ],
            "lines": [
              [
                "-498037/1000000",
                "-20353033/1000000000"
              ],
              [
                "-762839/1000000",
                "30940746451/500000000000"
              ],
              [
                "-51021/500000",
                "-416348033/1000000000"
              ],
              [
                "-91711/250000",
                "-167056753549/500000000000"
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
                "-51021/500000",
                "-222831/1600000"
              ],
              [
                "-91711/250000",
                "247523377/4000000000"
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
            "factor": 206,
            "target": "z",
            "old": [
              "310551/1000000",
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
                "-311070919/500000000"
              ],
              [
                "617/1000",
                "-334603181767/500000000000"
              ],
              [
                "440901/500000",
                "-164737329/250000000"
              ],
              [
                "440901/500000",
                "-207036918397/250000000000"
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
            "factor": 84,
            "target": "g",
            "old": [
              "118963/1000000",
              "257479/500000"
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
            "factor": 152,
            "target": "y",
            "old": [
              "26479/62500",
              "907/1000"
            ],
            "lines": [
              [
                "573887/1000000",
                "-206000319599/500000000000"
              ],
              [
                "762839/1000000",
                "-240070443671/500000000000"
              ],
              [
                "44409/200000",
                "-206000319599/500000000000"
              ],
              [
                "410997/1000000",
                "-240070443671/500000000000"
              ],
              [
                "573887/1000000",
                "-4473252293/8000000000"
              ],
              [
                "762839/1000000",
                "-5621513597/8000000000"
              ],
              [
                "44409/200000",
                "-4473252293/8000000000"
              ],
              [
                "410997/1000000",
                "-5621513597/8000000000"
              ],
              [
                "573887/1000000",
                "-16385745937/62500000000"
              ],
              [
                "762839/1000000",
                "-10322255723/31250000000"
              ],
              [
                "44409/200000",
                "-16385745937/62500000000"
              ],
              [
                "410997/1000000",
                "-10322255723/31250000000"
              ],
              [
                "573887/1000000",
                "-243552859/1000000000"
              ],
              [
                "762839/1000000",
                "-193542761/500000000"
              ],
              [
                "44409/200000",
                "-243552859/1000000000"
              ],
              [
                "410997/1000000",
                "-193542761/500000000"
              ]
            ],
            "raw": [
              "243552859/573887000",
              "907/1000"
            ],
            "new": [
              "424391/1000000",
              "907/1000"
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
        "DGP+",
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
          "424391/1000000",
          "324041/1000000",
          "10639/62500"
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
          "369757/500000",
          "907/1000",
          "370627/500000",
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
        "DGP": 1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DOP": 1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "DGH": -1,
        "GOP": -1,
        "BDG": 1,
        "EGP": 1,
        "FGP": 1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "CFO": 1,
        "DFO": 1,
        "DHP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEG": 1,
        "BEO": 1,
        "AOP": -1,
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
            "DCGOP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDG",
            "CDO",
            "DGP",
            "CDP",
            "DGO"
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
            "GADHP"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ADG",
            "GHP",
            "AGH",
            "DGP",
            "AGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GADOP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ADG",
            "AGO",
            "DGP",
            "AGP",
            "DGO"
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
            "GCDEP"
          ],
          "target": "EGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CEG",
            "DGP",
            "CGP",
            "DEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFP"
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CFG",
            "DGP",
            "CGP",
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
            "PCDGH"
          ],
          "target": "DHP",
          "sign": 1,
          "deps": [
            "CDP",
            "GHP",
            "CGP",
            "CHP",
            "DGP"
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
            "PDEFG"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FGP",
            "EGP",
            "DGP",
            "EFP"
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
          "target": "BEG",
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
              "80480253/125000000"
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
          "424391/1000000",
          "324041/1000000",
          "10639/62500"
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
          "369757/500000",
          "907/1000",
          "370627/500000",
          "683603/1000000"
        ],
        "steps": []
      }
    },
    {
      "id": 8,
      "assumptions": [
        "AGO-",
        "AGP-",
        "DGP+",
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
          "424391/1000000",
          "324041/1000000",
          "10639/62500"
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
          "369757/500000",
          "907/1000",
          "370627/500000",
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
        "DGP": 1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DOP": 1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "DGH": -1,
        "GOP": -1,
        "BDG": 1,
        "EGP": 1,
        "FGP": 1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "CFO": 1,
        "DFO": 1,
        "DHP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEG": 1,
        "BEO": 1,
        "AOP": -1,
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
            "DCGOP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDG",
            "CDO",
            "DGP",
            "CDP",
            "DGO"
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
            "GADHP"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ADG",
            "GHP",
            "AGH",
            "DGP",
            "AGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GADOP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ADG",
            "AGO",
            "DGP",
            "AGP",
            "DGO"
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
            "GCDEP"
          ],
          "target": "EGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CEG",
            "DGP",
            "CGP",
            "DEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFP"
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CFG",
            "DGP",
            "CGP",
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
            "PCDGH"
          ],
          "target": "DHP",
          "sign": 1,
          "deps": [
            "CDP",
            "GHP",
            "CGP",
            "CHP",
            "DGP"
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
            "PDEFG"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FGP",
            "EGP",
            "DGP",
            "EFP"
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
          "target": "BEG",
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
              "80480253/125000000"
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
            "triangle": "OGP",
            "points": []
          }
        },
        "U_AFG": {
          "triangle": "AFG",
          "side": "hi",
          "value": "1779364893/4000000000",
          "witness": {
            "kind": "vertices",
            "signed": "AFG",
            "used": [
              0,
              5,
              6,
              8
            ],
            "values": [
              "-15979971819/40000000000",
              "-67210282453/200000000000",
              "-268622331/1000000000",
              "-258842363609/1000000000000",
              "-52484095539/250000000000",
              "-195394480399/1000000000000",
              "-17973312253/200000000000",
              "-47657652069/1000000000000",
              "-560937/25000000",
              "34313631/1000000000",
              "50790370601/1000000000000",
              "92999279797/1000000000000",
              "23249894961/250000000000",
              "113524209/800000000",
              "140249241/500000000",
              "1779364893/4000000000"
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
          "value": "149800317141/250000000000",
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
              "-33001218591/500000000000",
              "-29734126813/1000000000000",
              "-2416436021/100000000000",
              "-7792332993/500000000000",
              "-2016791283/500000000000",
              "8034983733/200000000000",
              "10177816539/200000000000",
              "15224642933/200000000000",
              "10894674133/125000000000",
              "96253992309/1000000000000",
              "26822042677/250000000000",
              "125700933427/1000000000000",
              "15117665757/100000000000",
              "151496671939/1000000000000",
              "187444967939/1000000000000",
              "50188594083/250000000000",
              "206963646297/1000000000000",
              "207575745583/1000000000000",
              "22594761021/100000000000",
              "237022686701/1000000000000",
              "31396518441/125000000000",
              "138182690703/500000000000",
              "76812805293/250000000000",
              "342839130087/1000000000000",
              "221563352481/500000000000",
              "123176105931/250000000000",
              "498913693689/1000000000000",
              "13578054873/25000000000",
              "149800317141/250000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "7": {
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
        "17": {
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
        "22": {
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
        "25": {
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
        "435": {
          "row": [
            "plu",
            "CFG",
            "FHO",
            "CFH",
            "FGO",
            "CFO",
            "FGH"
          ],
          "witness": {
            "kind": "plu",
            "word": "FCGHO"
          }
        },
        "437": {
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
        "512": {
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
        "672": {
          "row": [
            "plu",
            "CFO",
            "HOP",
            "CHO",
            "FOP",
            "COP",
            "FHO"
          ],
          "witness": {
            "kind": "plu",
            "word": "OCFHP"
          }
        },
        "1100": {
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
        "3241": {
          "row": [
            "linear",
            {
              "BFG": "-93/1000",
              "CFG": "-93/1000",
              "FGH": "587789/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "BCH",
            "point": "G",
            "line": "FG",
            "side": "lower",
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
        "3850": {
          "row": [
            "linear",
            {
              "ACH": "-93/1000",
              "AFH": "-279/1000",
              "AGH": "-93/1000",
              "AHO": "762839/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFG",
            "point": "O",
            "line": "AH",
            "side": "upper",
            "outer_upper": {
              "triangle": "CFG",
              "ref": "U_CFG",
              "value": "762839/1000000"
            },
            "fan_lower": [
              {
                "triangle": "FGO",
                "ref": "L_FGO",
                "value": "93/1000"
              },
              {
                "triangle": "CGO",
                "ref": "L_CGO",
                "value": "279/1000"
              },
              {
                "triangle": "CFO",
                "ref": "L_CFO",
                "value": "93/1000"
              }
            ],
            "residual": "297839/1000000"
          }
        },
        "3866": {
          "row": [
            "linear",
            {
              "CFG": "390839/1000000",
              "CFO": "-762839/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFG",
            "point": "O",
            "line": "CF",
            "side": "upper",
            "outer_upper": {
              "triangle": "CFG",
              "ref": "U_CFG",
              "value": "762839/1000000"
            },
            "fan_lower": [
              {
                "triangle": "FGO",
                "ref": "L_FGO",
                "value": "93/1000"
              },
              {
                "triangle": "CGO",
                "ref": "L_CGO",
                "value": "279/1000"
              },
              {
                "triangle": "CFO",
                "ref": "L_CFO",
                "value": "93/1000"
              }
            ],
            "residual": "297839/1000000"
          }
        },
        "3916": {
          "row": [
            "linear",
            {
              "ACH": "-279/1000",
              "AFH": "-93/1000",
              "AGH": "-93/1000",
              "AHP": "762839/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFG",
            "point": "P",
            "line": "AH",
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
                "value": "279/1000"
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
            "residual": "297839/1000000"
          }
        },
        "3928": {
          "row": [
            "linear",
            {
              "CFG": "390839/1000000",
              "CFP": "-762839/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFG",
            "point": "P",
            "line": "CF",
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
                "value": "279/1000"
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
            "residual": "297839/1000000"
          }
        },
        "4053": {
          "row": [
            "linear",
            {
              "BCF": "-93/1000",
              "BCH": "-93/1000",
              "BCP": "440901/500000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFH",
            "point": "P",
            "line": "BC",
            "side": "lower",
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
        "4333": {
          "row": [
            "linear",
            {
              "CFP": "103300317141/250000000000",
              "CGP": "-93/1000",
              "COP": "-149800317141/250000000000"
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
              "value": "149800317141/250000000000"
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
            "residual": "80050317141/250000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0011",
          "relation": 17,
          "rule": "sub",
          "triangle": "CFO",
          "side": "hi",
          "value": "390839/1000000",
          "sources": [
            "U_CFG",
            "L_FGO",
            "L_CGO"
          ]
        },
        {
          "id": "T0052",
          "relation": 1100,
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
          "id": "T0069",
          "relation": 3241,
          "rule": "linear",
          "triangle": "FGH",
          "side": "lo",
          "value": "136327/1000000",
          "sources": [
            "T0052",
            "L_CFG"
          ]
        },
        {
          "id": "T0089",
          "relation": 4333,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "31159/200000",
          "sources": [
            "L_CGP",
            "L_COP"
          ]
        },
        {
          "id": "T0103",
          "relation": 18,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "128511/250000",
          "sources": [
            "U_CFG",
            "T0089",
            "L_CGP"
          ]
        },
        {
          "id": "T0126",
          "relation": 437,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "30707/200000",
          "sources": [
            "L_CFG",
            "L_FOP",
            "T0089",
            "L_FGO",
            "T0103"
          ]
        },
        {
          "id": "T0127",
          "relation": 512,
          "rule": "sumlo",
          "triangle": "BCG",
          "side": "lo",
          "value": "71063/500000",
          "sources": [
            "T0052",
            "L_CGH",
            "L_BGH",
            "L_CFG",
            "U_FGH"
          ]
        },
        {
          "id": "T0143",
          "relation": 7,
          "rule": "sum",
          "triangle": "BCH",
          "side": "lo",
          "value": "164063/500000",
          "sources": [
            "T0127",
            "L_CGH",
            "L_BGH"
          ]
        },
        {
          "id": "T0159",
          "relation": 435,
          "rule": "sumlo",
          "triangle": "FHO",
          "side": "lo",
          "value": "22381/200000",
          "sources": [
            "L_CFH",
            "L_FGO",
            "T0126",
            "T0069",
            "U_CFG"
          ]
        },
        {
          "id": "T0160",
          "relation": 672,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "18603/200000",
          "sources": [
            "L_CHO",
            "L_FOP",
            "L_COP",
            "T0159",
            "T0011"
          ]
        },
        {
          "id": "T0172",
          "relation": 22,
          "rule": "sum",
          "triangle": "CHO",
          "side": "lo",
          "value": "55803/200000",
          "sources": [
            "L_CHP",
            "L_COP",
            "T0160"
          ]
        },
        {
          "id": "T0183",
          "relation": 672,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "93019/1000000",
          "sources": [
            "T0172",
            "L_FOP",
            "L_COP",
            "T0159",
            "T0011"
          ]
        },
        {
          "id": "T0188",
          "relation": 22,
          "rule": "sum",
          "triangle": "CHO",
          "side": "lo",
          "value": "279019/1000000",
          "sources": [
            "L_CHP",
            "L_COP",
            "T0183"
          ]
        },
        {
          "id": "T0193",
          "relation": 672,
          "rule": "sumlo",
          "triangle": "HOP",
          "side": "lo",
          "value": "4651/50000",
          "sources": [
            "T0188",
            "L_FOP",
            "L_COP",
            "T0159",
            "T0011"
          ]
        },
        {
          "id": "T0197",
          "relation": 25,
          "rule": "sum",
          "triangle": "FHP",
          "side": "lo",
          "value": "11917/40000",
          "sources": [
            "T0159",
            "T0193",
            "L_FOP"
          ]
        }
      ],
      "physical": {
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
              "-164063/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCH",
            "side": "lo",
            "reference": "T0143",
            "value": "164063/500000"
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
        "82": {
          "name": "AREA_LO_AGH",
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
            "triangle": "AGH",
            "side": "lo",
            "reference": "L_AGH",
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
              "-22381/200000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FHO",
            "side": "lo",
            "reference": "T0159",
            "value": "22381/200000"
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
              "-11917/40000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FHP",
            "side": "lo",
            "reference": "T0197",
            "value": "11917/40000"
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
              "-13857/20000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFG",
            "side": "lo",
            "reference": "L_CFG",
            "value": "13857/20000"
          }
        },
        "152": {
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
        "178": {
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
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FGP",
            "side": "lo",
            "reference": "L_FGP",
            "value": "279/1000"
          }
        },
        "190": {
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
              "-30707/200000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFO",
            "side": "lo",
            "reference": "T0126",
            "value": "30707/200000"
          }
        },
        "196": {
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
              "-31159/200000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "lo",
            "reference": "T0089",
            "value": "31159/200000"
          }
        },
        "212": {
          "name": "AREA_LO_FGO",
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
                6
              ],
              "-1"
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
                8,
                9
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
            "triangle": "FGO",
            "side": "lo",
            "reference": "L_FGO",
            "value": "93/1000"
          }
        },
        "229": {
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
        "2545": {
          "name": "LINEAR_3850",
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
                9
              ],
              "762839/1000000"
            ],
            [
              [
                0,
                9
              ],
              "-762839/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3850
          }
        },
        "2561": {
          "name": "LINEAR_3866",
          "terms": [
            [
              [
                5,
                8
              ],
              "390839/1000000"
            ],
            [
              [
                2,
                8
              ],
              "-390839/1000000"
            ],
            [
              [
                6
              ],
              "-390839/1000000"
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
              "-762839/1000000"
            ],
            [
              [
                2,
                10
              ],
              "762839/1000000"
            ],
            [
              [
                9
              ],
              "762839/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3866
          }
        },
        "2611": {
          "name": "LINEAR_3916",
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
              "762839/1000000"
            ],
            [
              [
                0,
                11
              ],
              "-762839/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3916
          }
        },
        "2623": {
          "name": "LINEAR_3928",
          "terms": [
            [
              [
                5,
                8
              ],
              "390839/1000000"
            ],
            [
              [
                2,
                8
              ],
              "-390839/1000000"
            ],
            [
              [
                6
              ],
              "-390839/1000000"
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
              "-762839/1000000"
            ],
            [
              [
                2,
                12
              ],
              "762839/1000000"
            ],
            [
              [
                11
              ],
              "762839/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 3928
          }
        },
        "2748": {
          "name": "LINEAR_4053",
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
                12
              ],
              "440901/500000"
            ],
            [
              [
                1,
                12
              ],
              "-440901/500000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 4053
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
          "688133/1000000",
          "118963/1000000",
          "157797/250000",
          "180693/500000",
          "35773/100000",
          "219237/500000",
          "71551/200000",
          "86017/500000"
        ],
        "high": [
          "126953/250000",
          "300089/1000000",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "23619/125000",
          "1/1",
          "6077/8000",
          "728267/1000000",
          "109137/125000",
          "726007/1000000",
          "58517/100000"
        ],
        "steps": [
          {
            "factor": 36,
            "target": "b",
            "old": [
              "108013/1000000",
              "535/907"
            ],
            "lines": [
              [
                "-307011/500000",
                "972991427/10000000000"
              ],
              [
                "-307011/500000",
                "53329956911/250000000000"
              ],
              [
                "-1/1",
                "91181/250000"
              ],
              [
                "-1/1",
                "138419/250000"
              ]
            ],
            "raw": [
              "108013/1000000",
              "138419/250000"
            ],
            "new": [
              "108013/1000000",
              "138419/250000"
            ]
          },
          {
            "factor": 96,
            "target": "y",
            "old": [
              "424391/1000000",
              "907/1000"
            ],
            "lines": [
              [
                "-617/1000",
                "196009635549/500000000000"
              ],
              [
                "-440901/500000",
                "277306762371/500000000000"
              ],
              [
                "-617/1000",
                "101019/200000"
              ],
              [
                "-440901/500000",
                "769897/1000000"
              ],
              [
                "-617/1000",
                "138095677173/250000000000"
              ],
              [
                "-440901/500000",
                "22343030073/31250000000"
              ]
            ],
            "raw": [
              "424391/1000000",
              "138095677173/154250000000"
            ],
            "new": [
              "424391/1000000",
              "111909/125000"
            ]
          },
          {
            "factor": 114,
            "target": "v",
            "old": [
              "10639/62500",
              "683603/1000000"
            ],
            "lines": [
              [
                "-617/1000",
                "102999635549/500000000000"
              ],
              [
                "-440901/500000",
                "184296762371/500000000000"
              ],
              [
                "-617/1000",
                "12763/40000"
              ],
              [
                "-440901/500000",
                "583877/1000000"
              ],
              [
                "-617/1000",
                "91758577603/250000000000"
              ],
              [
                "-440901/500000",
                "66203570507/125000000000"
              ]
            ],
            "raw": [
              "10639/62500",
              "583877/881802"
            ],
            "new": [
              "10639/62500",
              "662141/1000000"
            ]
          },
          {
            "factor": 150,
            "target": "f",
            "old": [
              "617/1000",
              "440901/500000"
            ],
            "lines": [
              [
                "180311/500000",
                "-3688199527/10000000000"
              ],
              [
                "180311/500000",
                "-62002050211/250000000000"
              ],
              [
                "180311/500000",
                "-7206619527/10000000000"
              ],
              [
                "180311/500000",
                "-149962550211/250000000000"
              ],
              [
                "6077/8000",
                "-103243069/160000000"
              ],
              [
                "6077/8000",
                "-2399399377/4000000000"
              ],
              [
                "6077/8000",
                "-159537789/160000000"
              ],
              [
                "6077/8000",
                "-3806767377/4000000000"
              ]
            ],
            "raw": [
              "62002050211/90155500000",
              "440901/500000"
            ],
            "new": [
              "687723/1000000",
              "440901/500000"
            ]
          },
          {
            "factor": 150,
            "target": "g",
            "old": [
              "118963/1000000",
              "94161/200000"
            ],
            "lines": [
              [
                "-1/1",
                "-924454497/500000000000"
              ],
              [
                "-1/1",
                "59481421431/500000000000"
              ],
              [
                "-1/1",
                "4258765509/62500000000"
              ],
              [
                "-1/1",
                "23619/125000"
              ],
              [
                "-1/1",
                "-31156779/8000000000"
              ],
              [
                "-1/1",
                "332197917/8000000000"
              ],
              [
                "-1/1",
                "143532663/1000000000"
              ]
            ],
            "raw": [
              "118963/1000000",
              "23619/125000"
            ],
            "new": [
              "118963/1000000",
              "23619/125000"
            ]
          },
          {
            "factor": 178,
            "target": "v",
            "old": [
              "10639/62500",
              "662141/1000000"
            ],
            "lines": [
              [
                "-14219/25000",
                "14307432551/250000000000"
              ],
              [
                "-762839/1000000",
                "63609443671/500000000000"
              ],
              [
                "-498771/1000000",
                "-3189817449/250000000000"
              ],
              [
                "-13857/20000",
                "28614943671/500000000000"
              ],
              [
                "-14219/25000",
                "809359757/4000000000"
              ],
              [
                "-762839/1000000",
                "2798137597/8000000000"
              ],
              [
                "-498771/1000000",
                "529403757/4000000000"
              ],
              [
                "-13857/20000",
                "2238225597/8000000000"
              ],
              [
                "-14219/25000",
                "161993271859/500000000000"
              ],
              [
                "-762839/1000000",
                "49246962607/125000000000"
              ],
              [
                "-498771/1000000",
                "126998771859/500000000000"
              ],
              [
                "-13857/20000",
                "40498337607/125000000000"
              ],
              [
                "-14219/25000",
                "2421020113/8000000000"
              ],
              [
                "-762839/1000000",
                "900109549/2000000000"
              ],
              [
                "-498771/1000000",
                "1861108113/8000000000"
              ],
              [
                "-13857/20000",
                "760131549/2000000000"
              ]
            ],
            "raw": [
              "10639/62500",
              "900109549/1525678000"
            ],
            "new": [
              "10639/62500",
              "294987/500000"
            ]
          },
          {
            "factor": 190,
            "target": "x",
            "old": [
              "324041/1000000",
              "369757/500000"
            ],
            "lines": [
              [
                "-1/1",
                "537139147343/1000000000000"
              ],
              [
                "-1/1",
                "645901619111/1000000000000"
              ],
              [
                "-1/1",
                "77438066029/125000000000"
              ],
              [
                "-1/1",
                "728267/1000000"
              ],
              [
                "-1/1",
                "66840617557/125000000000"
              ],
              [
                "-1/1",
                "69314188189/125000000000"
              ],
              [
                "-1/1",
                "5534987773/7812500000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "728267/1000000"
            ],
            "new": [
              "324041/1000000",
              "728267/1000000"
            ]
          },
          {
            "factor": 196,
            "target": "u",
            "old": [
              "324041/1000000",
              "370627/500000"
            ],
            "lines": [
              [
                "-1/1",
                "33511391347/62500000000"
              ],
              [
                "-1/1",
                "43310631019/62500000000"
              ],
              [
                "-1/1",
                "8894049457/15625000000"
              ],
              [
                "-1/1",
                "726007/1000000"
              ],
              [
                "-1/1",
                "267015101651/500000000000"
              ],
              [
                "-1/1",
                "305752718027/500000000000"
              ],
              [
                "-1/1",
                "40533235453/62500000000"
              ]
            ],
            "raw": [
              "324041/1000000",
              "726007/1000000"
            ],
            "new": [
              "324041/1000000",
              "726007/1000000"
            ]
          },
          {
            "factor": 212,
            "target": "y",
            "old": [
              "424391/1000000",
              "111909/125000"
            ],
            "lines": [
              [
                "-14219/25000",
                "60807432551/250000000000"
              ],
              [
                "-762839/1000000",
                "156609443671/500000000000"
              ],
              [
                "-498771/1000000",
                "43310182551/250000000000"
              ],
              [
                "-13857/20000",
                "121614943671/500000000000"
              ],
              [
                "-14219/25000",
                "1553359757/4000000000"
              ],
              [
                "-762839/1000000",
                "4286137597/8000000000"
              ],
              [
                "-498771/1000000",
                "1273403757/4000000000"
              ],
              [
                "-13857/20000",
                "3726225597/8000000000"
              ],
              [
                "-14219/25000",
                "7838795963/15625000000"
              ],
              [
                "-762839/1000000",
                "57167209877/100000000000"
              ],
              [
                "-498771/1000000",
                "3372608919/7812500000"
              ],
              [
                "-13857/20000",
                "50168309877/100000000000"
              ],
              [
                "-14219/25000",
                "121376441/250000000"
              ],
              [
                "-762839/1000000",
                "1012692839/1600000000"
              ],
              [
                "-498771/1000000",
                "103879191/250000000"
              ],
              [
                "-13857/20000",
                "900710439/1600000000"
              ]
            ],
            "raw": [
              "424391/1000000",
              "7838795963/8886875000"
            ],
            "new": [
              "424391/1000000",
              "176413/200000"
            ]
          },
          {
            "factor": 229,
            "target": "b",
            "old": [
              "108013/1000000",
              "138419/250000"
            ],
            "lines": [
              [
                "-83022949593/500000000000",
                "-138251987489799/10000000000000000"
              ],
              [
                "-83022949593/500000000000",
                "-4398891501496707/250000000000000000"
              ],
              [
                "-13063792809/62500000000",
                "19937351954313/1250000000000000"
              ],
              [
                "-13063792809/62500000000",
                "634365188280909/31250000000000000"
              ],
              [
                "-211963/1000000",
                "359769291/20000000000"
              ],
              [
                "-211963/1000000",
                "11447112663/500000000000"
              ],
              [
                "-8811/31250",
                "83100429/1250000000"
              ],
              [
                "-8811/31250",
                "2644083297/31250000000"
              ]
            ],
            "raw": [
              "108013/1000000",
              "293787033/979000000"
            ],
            "new": [
              "108013/1000000",
              "300089/1000000"
            ]
          },
          {
            "factor": 229,
            "target": "h",
            "old": [
              "307011/500000",
              "1/1"
            ],
            "lines": [
              [
                "69573964031/1000000000000",
                "-74480259/1000000000"
              ],
              [
                "46724026843/1000000000000",
                "-92343327/1000000000"
              ],
              [
                "92052260807/1000000000000",
                "-18410559/200000000"
              ],
              [
                "69202323619/1000000000000",
                "-109915863/1000000000"
              ],
              [
                "13813265103/125000000000",
                "-74480259/1000000000"
              ],
              [
                "9276622059/125000000000",
                "-92343327/1000000000"
              ],
              [
                "18276122391/125000000000",
                "-18410559/200000000"
              ],
              [
                "13739479347/125000000000",
                "-109915863/1000000000"
              ]
            ],
            "raw": [
              "3835533125/6092040797",
              "1/1"
            ],
            "new": [
              "629597/1000000",
              "1/1"
            ]
          },
          {
            "factor": 2545,
            "target": "x",
            "old": [
              "324041/1000000",
              "728267/1000000"
            ],
            "lines": [
              [
                "374246524883/1000000000000",
                "-65586275807811/500000000000000"
              ],
              [
                "2240458143/100000000000",
                "-392637729231/50000000000000"
              ],
              [
                "374246524883/1000000000000",
                "-69896792529807/500000000000000"
              ],
              [
                "2240458143/100000000000",
                "-418442998347/50000000000000"
              ],
              [
                "374246524883/1000000000000",
                "-157737418086099/1000000000000000"
              ],
              [
                "2240458143/100000000000",
                "-944308254879/100000000000000"
              ],
              [
                "374246524883/1000000000000",
                "-166358451530091/1000000000000000"
              ],
              [
                "2240458143/100000000000",
                "-995918793111/100000000000000"
              ],
              [
                "374246524883/1000000000000",
                "-134365836204891/1000000000000000"
              ],
              [
                "2240458143/100000000000",
                "-804392323911/100000000000000"
              ],
              [
                "374246524883/1000000000000",
                "-142986869648883/1000000000000000"
              ],
              [
                "2240458143/100000000000",
                "-856002862143/100000000000000"
              ],
              [
                "374246524883/1000000000000",
                "-20116337834421/125000000000000"
              ],
              [
                "2240458143/100000000000",
                "-120428140041/12500000000000"
              ],
              [
                "374246524883/1000000000000",
                "-529849175373/3125000000000"
              ],
              [
                "2240458143/100000000000",
                "-3171986433/312500000000"
              ],
              [
                "656804379/1000000000",
                "-115104216843/500000000000"
              ],
              [
                "304962435547/1000000000000",
                "-53444318327499/500000000000000"
              ],
              [
                "656804379/1000000000",
                "-122669193591/500000000000"
              ],
              [
                "304962435547/1000000000000",
                "-56956831044663/500000000000000"
              ],
              [
                "656804379/1000000000",
                "-276829896987/1000000000000"
              ],
              [
                "304962435547/1000000000000",
                "-128535561449691/1000000000000000"
              ],
              [
                "656804379/1000000000",
                "-291959850483/1000000000000"
              ],
              [
                "304962435547/1000000000000",
                "-135560586884019/1000000000000000"
              ],
              [
                "656804379/1000000000",
                "-235812662883/1000000000000"
              ],
              [
                "304962435547/1000000000000",
                "-109490749917219/1000000000000000"
              ],
              [
                "656804379/1000000000",
                "-250942616379/1000000000000"
              ],
              [
                "304962435547/1000000000000",
                "-116515775351547/1000000000000000"
              ],
              [
                "656804379/1000000000",
                "-35304265773/125000000000"
              ],
              [
                "304962435547/1000000000000",
                "-16392209338989/125000000000000"
              ],
              [
                "656804379/1000000000",
                "-929887749/3125000000"
              ],
              [
                "304962435547/1000000000000",
                "-431758437957/3125000000000"
              ]
            ],
            "raw": [
              "12153333/34674500",
              "728267/1000000"
            ],
            "new": [
              "350497/1000000",
              "728267/1000000"
            ]
          },
          {
            "factor": 2561,
            "target": "x",
            "old": [
              "350497/1000000",
              "728267/1000000"
            ],
            "lines": [
              [
                "762839/1000000",
                "-303298380434292743/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-339048691351674911/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-42346926629952229/125000000000000000"
              ],
              [
                "762839/1000000",
                "-374525723957/1000000000000"
              ],
              [
                "762839/1000000",
                "-330652811205292743/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-366403122122674911/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-45766230476327229/125000000000000000"
              ],
              [
                "762839/1000000",
                "-50235019341/125000000000"
              ],
              [
                "762839/1000000",
                "-152048957617717201/500000000000000000"
              ],
              [
                "762839/1000000",
                "-184657261091360377/500000000000000000"
              ],
              [
                "762839/1000000",
                "-19331819813107103/62500000000000000"
              ],
              [
                "762839/1000000",
                "-165726173003217201/500000000000000000"
              ],
              [
                "762839/1000000",
                "-198334476476860377/500000000000000000"
              ],
              [
                "762839/1000000",
                "-21041471736294603/62500000000000000"
              ],
              [
                "762839/1000000",
                "-301508382841649021/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-271289584118848517/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-50593065334975063/125000000000000000"
              ],
              [
                "762839/1000000",
                "-328862813612649021/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-298644014889848517/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-54012369181350063/125000000000000000"
              ],
              [
                "762839/1000000",
                "-7557697941069767/25000000000000000"
              ],
              [
                "762839/1000000",
                "-7538885373747359/25000000000000000"
              ],
              [
                "762839/1000000",
                "-586372229140463/1562500000000000"
              ],
              [
                "762839/1000000",
                "-8241558710344767/25000000000000000"
              ],
              [
                "762839/1000000",
                "-8222746143022359/25000000000000000"
              ],
              [
                "762839/1000000",
                "-1258227054440301/3125000000000000"
              ]
            ],
            "raw": [
              "271289584118848517/762839000000000000",
              "728267/1000000"
            ],
            "new": [
              "355631/1000000",
              "728267/1000000"
            ]
          },
          {
            "factor": 2611,
            "target": "u",
            "old": [
              "324041/1000000",
              "726007/1000000"
            ],
            "lines": [
              [
                "374246524883/1000000000000",
                "-32910098926989/250000000000000"
              ],
              [
                "2240458143/100000000000",
                "-197019061569/25000000000000"
              ],
              [
                "374246524883/1000000000000",
                "-39375874009983/250000000000000"
              ],
              [
                "2240458143/100000000000",
                "-235726965243/25000000000000"
              ],
              [
                "374246524883/1000000000000",
                "-28099070239623/200000000000000"
              ],
              [
                "2240458143/100000000000",
                "-168217435683/20000000000000"
              ],
              [
                "374246524883/1000000000000",
                "-166358451530091/1000000000000000"
              ],
              [
                "2240458143/100000000000",
                "-995918793111/100000000000000"
              ],
              [
                "374246524883/1000000000000",
                "-5393347211889/40000000000000"
              ],
              [
                "2240458143/100000000000",
                "-32287724469/4000000000000"
              ],
              [
                "374246524883/1000000000000",
                "-160696780629201/1000000000000000"
              ],
              [
                "2240458143/100000000000",
                "-962024726421/100000000000000"
              ],
              [
                "374246524883/1000000000000",
                "-17961079473423/125000000000000"
              ],
              [
                "2240458143/100000000000",
                "-107525505483/12500000000000"
              ],
              [
                "374246524883/1000000000000",
                "-529849175373/3125000000000"
              ],
              [
                "2240458143/100000000000",
                "-3171986433/312500000000"
              ],
              [
                "656804379/1000000000",
                "-57757375557/250000000000"
              ],
              [
                "304962435547/1000000000000",
                "-26817467245701/250000000000000"
              ],
              [
                "656804379/1000000000",
                "-69104840679/250000000000"
              ],
              [
                "304962435547/1000000000000",
                "-32086236321447/250000000000000"
              ],
              [
                "656804379/1000000000",
                "-49313997999/200000000000"
              ],
              [
                "304962435547/1000000000000",
                "-22897102116207/200000000000000"
              ],
              [
                "656804379/1000000000",
                "-291959850483/1000000000000"
              ],
              [
                "304962435547/1000000000000",
                "-135560586884019/1000000000000000"
              ],
              [
                "656804379/1000000000",
                "-9465349257/40000000000"
              ],
              [
                "304962435547/1000000000000",
                "-4394879289801/40000000000000"
              ],
              [
                "656804379/1000000000",
                "-282023591913/1000000000000"
              ],
              [
                "304962435547/1000000000000",
                "-130947058548009/1000000000000000"
              ],
              [
                "656804379/1000000000",
                "-31521777399/125000000000"
              ],
              [
                "304962435547/1000000000000",
                "-14635952980407/125000000000000"
              ],
              [
                "656804379/1000000000",
                "-929887749/3125000000"
              ],
              [
                "304962435547/1000000000000",
                "-431758437957/3125000000000"
              ]
            ],
            "raw": [
              "67081737/190709750",
              "726007/1000000"
            ],
            "new": [
              "351747/1000000",
              "726007/1000000"
            ]
          },
          {
            "factor": 2623,
            "target": "u",
            "old": [
              "351747/1000000",
              "726007/1000000"
            ],
            "lines": [
              [
                "762839/1000000",
                "-152146223387186047/500000000000000000"
              ],
              [
                "762839/1000000",
                "-188339188782552919/500000000000000000"
              ],
              [
                "762839/1000000",
                "-18883737072891641/62500000000000000"
              ],
              [
                "762839/1000000",
                "-374525723957/1000000000000"
              ],
              [
                "762839/1000000",
                "-165823438772686047/500000000000000000"
              ],
              [
                "762839/1000000",
                "-202016404168052919/500000000000000000"
              ],
              [
                "762839/1000000",
                "-20593388996079141/62500000000000000"
              ],
              [
                "762839/1000000",
                "-50235019341/125000000000"
              ],
              [
                "762839/1000000",
                "-305091981575513753/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-406944208396151681/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-34084187142045259/125000000000000000"
              ],
              [
                "762839/1000000",
                "-332446412346513753/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-434298639167151681/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-37503490988420259/125000000000000000"
              ],
              [
                "762839/1000000",
                "-37831346601375043/125000000000000000"
              ],
              [
                "762839/1000000",
                "-39316744700582011/125000000000000000"
              ],
              [
                "762839/1000000",
                "-2833144837213627/7812500000000000"
              ],
              [
                "762839/1000000",
                "-41250650447750043/125000000000000000"
              ],
              [
                "762839/1000000",
                "-42736048546957011/125000000000000000"
              ],
              [
                "762839/1000000",
                "-6093702655224129/15625000000000000"
              ],
              [
                "762839/1000000",
                "-303450307612142003/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-344799788435701931/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-41647030391680009/125000000000000000"
              ],
              [
                "762839/1000000",
                "-330804738383142003/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-372154219206701931/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-45066334238055009/125000000000000000"
              ]
            ],
            "raw": [
              "34084187142045259/95354875000000000",
              "726007/1000000"
            ],
            "new": [
              "71489/200000",
              "726007/1000000"
            ]
          },
          {
            "factor": 2748,
            "target": "v",
            "old": [
              "10639/62500",
              "294987/500000"
            ],
            "lines": [
              [
                "257855218137/500000000000",
                "-88633521724077/1000000000000000"
              ],
              [
                "173168717661/500000000000",
                "-59523919700481/1000000000000000"
              ],
              [
                "341164343889/500000000000",
                "-117269673672069/1000000000000000"
              ],
              [
                "256477843413/500000000000",
                "-88160071648473/1000000000000000"
              ],
              [
                "257855218137/500000000000",
                "-54389841/500000000"
              ],
              [
                "173168717661/500000000000",
                "-36526773/500000000"
              ],
              [
                "341164343889/500000000000",
                "-71962377/500000000"
              ],
              [
                "256477843413/500000000000",
                "-54099309/500000000"
              ]
            ],
            "raw": [
              "16839169/97978000",
              "294987/500000"
            ],
            "new": [
              "85933/500000",
              "294987/500000"
            ]
          },
          {
            "factor": 70,
            "target": "z",
            "old": [
              "180311/500000",
              "6077/8000"
            ],
            "lines": [
              [
                "108013/1000000",
                "-1829559/20000000"
              ],
              [
                "108013/1000000",
                "-1728550287/20000000000"
              ],
              [
                "300089/1000000",
                "-59088257/500000000"
              ],
              [
                "300089/1000000",
                "-100858357801/500000000000"
              ],
              [
                "108013/1000000",
                "-81749479/1000000000"
              ],
              [
                "108013/1000000",
                "-44418226847/1000000000000"
              ],
              [
                "300089/1000000",
                "-108448043/1000000000"
              ],
              [
                "300089/1000000",
                "-159707428099/1000000000000"
              ]
            ],
            "raw": [
              "108448043/300089000",
              "6077/8000"
            ],
            "new": [
              "180693/500000",
              "6077/8000"
            ]
          },
          {
            "factor": 82,
            "target": "a",
            "old": [
              "139/1000",
              "600227/1000000"
            ],
            "lines": [
              [
                "-118963/1000000",
                "-18101252089/1000000000000"
              ],
              [
                "-23619/125000",
                "3245451543/125000000000"
              ],
              [
                "-118963/1000000",
                "25963/1000000"
              ],
              [
                "-23619/125000",
                "5997/62500"
              ]
            ],
            "raw": [
              "139/1000",
              "3998/7873"
            ],
            "new": [
              "139/1000",
              "126953/250000"
            ]
          },
          {
            "factor": 82,
            "target": "h",
            "old": [
              "629597/1000000",
              "1/1"
            ],
            "lines": [
              [
                "118963/1000000",
                "-109535857/1000000000"
              ],
              [
                "118963/1000000",
                "-38352709739/250000000000"
              ],
              [
                "23619/125000",
                "-14908041/125000000"
              ],
              [
                "23619/125000",
                "-5904752907/31250000000"
              ]
            ],
            "raw": [
              "4969347/7873000",
              "1/1"
            ],
            "new": [
              "157797/250000",
              "1/1"
            ]
          },
          {
            "factor": 96,
            "target": "y",
            "old": [
              "424391/1000000",
              "176413/200000"
            ],
            "lines": [
              [
                "-687723/1000000",
                "28333655331/62500000000"
              ],
              [
                "-440901/500000",
                "143959705287/250000000000"
              ],
              [
                "-687723/1000000",
                "287909/500000"
              ],
              [
                "-440901/500000",
                "769897/1000000"
              ],
              [
                "-687723/1000000",
                "2307699663/3906250000"
              ],
              [
                "-440901/500000",
                "35663572479/50000000000"
              ]
            ],
            "raw": [
              "424391/1000000",
              "769897/881802"
            ],
            "new": [
              "424391/1000000",
              "109137/125000"
            ]
          },
          {
            "factor": 150,
            "target": "f",
            "old": [
              "687723/1000000",
              "440901/500000"
            ],
            "lines": [
              [
                "180693/500000",
                "-3693492901/10000000000"
              ],
              [
                "180693/500000",
                "-62170474393/250000000000"
              ],
              [
                "180693/500000",
                "-4393382901/10000000000"
              ],
              [
                "180693/500000",
                "-79667724393/250000000000"
              ],
              [
                "6077/8000",
                "-103243069/160000000"
              ],
              [
                "6077/8000",
                "-2399399377/4000000000"
              ],
              [
                "6077/8000",
                "-114441309/160000000"
              ],
              [
                "6077/8000",
                "-2679355377/4000000000"
              ]
            ],
            "raw": [
              "3657086729/5314500000",
              "440901/500000"
            ],
            "new": [
              "688133/1000000",
              "440901/500000"
            ]
          },
          {
            "factor": 152,
            "target": "y",
            "old": [
              "424391/1000000",
              "109137/125000"
            ],
            "lines": [
              [
                "573887/1000000",
                "-200433112767/500000000000"
              ],
              [
                "762839/1000000",
                "-234575416503/500000000000"
              ],
              [
                "251949/500000",
                "-200433112767/500000000000"
              ],
              [
                "13857/20000",
                "-234575416503/500000000000"
              ],
              [
                "573887/1000000",
                "-4281279863/8000000000"
              ],
              [
                "762839/1000000",
                "-5429541167/8000000000"
              ],
              [
                "251949/500000",
                "-4281279863/8000000000"
              ],
              [
                "13857/20000",
                "-5429541167/8000000000"
              ],
              [
                "573887/1000000",
                "-133100396019/500000000000"
              ],
              [
                "762839/1000000",
                "-33448539951/100000000000"
              ],
              [
                "251949/500000",
                "-133100396019/500000000000"
              ],
              [
                "13857/20000",
                "-33448539951/100000000000"
              ],
              [
                "573887/1000000",
                "-2016770891/8000000000"
              ],
              [
                "762839/1000000",
                "-633006439/1600000000"
              ],
              [
                "251949/500000",
                "-2016770891/8000000000"
              ],
              [
                "13857/20000",
                "-633006439/1600000000"
              ]
            ],
            "raw": [
              "33448539951/76283900000",
              "109137/125000"
            ],
            "new": [
              "219237/500000",
              "109137/125000"
            ]
          },
          {
            "factor": 178,
            "target": "v",
            "old": [
              "85933/500000",
              "294987/500000"
            ],
            "lines": [
              [
                "-56917/100000",
                "19284183/244140625"
              ],
              [
                "-762839/1000000",
                "74488639401/500000000000"
              ],
              [
                "-499181/1000000",
                "140609587/15625000000"
              ],
              [
                "-13857/20000",
                "39494139401/500000000000"
              ],
              [
                "-56917/100000",
                "26335109/125000000"
              ],
              [
                "-762839/1000000",
                "2862373489/8000000000"
              ],
              [
                "-499181/1000000",
                "4396621/31250000"
              ],
              [
                "-13857/20000",
                "2302461489/8000000000"
              ],
              [
                "-56917/100000",
                "78589216659/250000000000"
              ],
              [
                "-762839/1000000",
                "38434613187/100000000000"
              ],
              [
                "-499181/1000000",
                "61091966659/250000000000"
              ],
              [
                "-13857/20000",
                "31435713187/100000000000"
              ],
              [
                "-56917/100000",
                "1197095851/4000000000"
              ],
              [
                "-762839/1000000",
                "714223643/1600000000"
              ],
              [
                "-499181/1000000",
                "917139851/4000000000"
              ],
              [
                "-13857/20000",
                "602241243/1600000000"
              ]
            ],
            "raw": [
              "85933/500000",
              "102031949/174363200"
            ],
            "new": [
              "85933/500000",
              "58517/100000"
            ]
          },
          {
            "factor": 2561,
            "target": "x",
            "old": [
              "355631/1000000",
              "728267/1000000"
            ],
            "lines": [
              [
                "762839/1000000",
                "-9478876894617733/31250000000000000"
              ],
              [
                "762839/1000000",
                "-10534402181815981/31250000000000000"
              ],
              [
                "762839/1000000",
                "-5324201793229001/15625000000000000"
              ],
              [
                "762839/1000000",
                "-374525723957/1000000000000"
              ],
              [
                "762839/1000000",
                "-10333702856211483/31250000000000000"
              ],
              [
                "762839/1000000",
                "-11389228143409731/31250000000000000"
              ],
              [
                "762839/1000000",
                "-1437903693506469/3906250000000000"
              ],
              [
                "762839/1000000",
                "-50235019341/125000000000"
              ],
              [
                "762839/1000000",
                "-304058249095269013/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-367244933060120941/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-38917379999018509/125000000000000000"
              ],
              [
                "762839/1000000",
                "-331412679866269013/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-394599363831120941/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-42336683845393509/125000000000000000"
              ],
              [
                "762839/1000000",
                "-30176015525963327/100000000000000000"
              ],
              [
                "762839/1000000",
                "-27289056904618439/100000000000000000"
              ],
              [
                "762839/1000000",
                "-5042441377130611/12500000000000000"
              ],
              [
                "762839/1000000",
                "-32911458603063327/100000000000000000"
              ],
              [
                "762839/1000000",
                "-30024499981718439/100000000000000000"
              ],
              [
                "762839/1000000",
                "-5384371761768111/12500000000000000"
              ],
              [
                "762839/1000000",
                "-302494343727134827/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-303034632288193939/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-46748179424492611/125000000000000000"
              ],
              [
                "762839/1000000",
                "-329848774498134827/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-330389063059193939/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-50167483270867611/125000000000000000"
              ]
            ],
            "raw": [
              "3898436700659777/10897700000000000",
              "728267/1000000"
            ],
            "new": [
              "35773/100000",
              "728267/1000000"
            ]
          },
          {
            "factor": 2623,
            "target": "u",
            "old": [
              "71489/200000",
              "726007/1000000"
            ],
            "lines": [
              [
                "762839/1000000",
                "-3803542490961947/12500000000000000"
              ],
              [
                "762839/1000000",
                "-4706113418967779/12500000000000000"
              ],
              [
                "762839/1000000",
                "-944750155364167/3125000000000000"
              ],
              [
                "762839/1000000",
                "-374525723957/1000000000000"
              ],
              [
                "762839/1000000",
                "-4145472875599447/12500000000000000"
              ],
              [
                "762839/1000000",
                "-5048043803605279/12500000000000000"
              ],
              [
                "762839/1000000",
                "-515116375761771/1562500000000000"
              ],
              [
                "762839/1000000",
                "-50235019341/125000000000"
              ],
              [
                "762839/1000000",
                "-305017587744457317/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-406633136759431869/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-34113771867753181/125000000000000000"
              ],
              [
                "762839/1000000",
                "-332372018515457317/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-433987567530431869/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-37533075714128181/125000000000000000"
              ],
              [
                "762839/1000000",
                "-37849525339340201/125000000000000000"
              ],
              [
                "762839/1000000",
                "-39428532138285857/125000000000000000"
              ],
              [
                "762839/1000000",
                "-2827294293479959/7812500000000000"
              ],
              [
                "762839/1000000",
                "-41268829185715201/125000000000000000"
              ],
              [
                "762839/1000000",
                "-42847835984660857/125000000000000000"
              ],
              [
                "762839/1000000",
                "-6082001567756793/15625000000000000"
              ],
              [
                "762839/1000000",
                "-60706078236444633/200000000000000000"
              ],
              [
                "762839/1000000",
                "-69114464069659281/200000000000000000"
              ],
              [
                "762839/1000000",
                "-8312094869773169/25000000000000000"
              ],
              [
                "762839/1000000",
                "-66176964390644633/200000000000000000"
              ],
              [
                "762839/1000000",
                "-74585350223859281/200000000000000000"
              ],
              [
                "762839/1000000",
                "-8995955639048169/25000000000000000"
              ]
            ],
            "raw": [
              "34113771867753181/95354875000000000",
              "726007/1000000"
            ],
            "new": [
              "71551/200000",
              "726007/1000000"
            ]
          },
          {
            "factor": 2748,
            "target": "v",
            "old": [
              "85933/500000",
              "58517/100000"
            ],
            "lines": [
              [
                "257855218137/500000000000",
                "-22180013990277/250000000000000"
              ],
              [
                "173168717661/500000000000",
                "-14895508449081/250000000000000"
              ],
              [
                "341164343889/500000000000",
                "-29346041453469/250000000000000"
              ],
              [
                "256477843413/500000000000",
                "-22061535912273/250000000000000"
              ],
              [
                "257855218137/500000000000",
                "-54389841/500000000"
              ],
              [
                "173168717661/500000000000",
                "-36526773/500000000"
              ],
              [
                "341164343889/500000000000",
                "-71962377/500000000"
              ],
              [
                "256477843413/500000000000",
                "-54099309/500000000"
              ]
            ],
            "raw": [
              "12641707/73483500",
              "58517/100000"
            ],
            "new": [
              "86017/500000",
              "58517/100000"
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
        "DGP+",
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
          "688133/1000000",
          "118963/1000000",
          "157797/250000",
          "180693/500000",
          "35773/100000",
          "219237/500000",
          "71551/200000",
          "86017/500000"
        ],
        "high": [
          "126953/250000",
          "300089/1000000",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "23619/125000",
          "1",
          "6077/8000",
          "728267/1000000",
          "109137/125000",
          "726007/1000000",
          "58517/100000"
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
        "DGP": 1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DOP": 1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "DGH": -1,
        "GOP": -1,
        "BDG": 1,
        "EGP": 1,
        "FGP": 1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "CFO": 1,
        "DFO": 1,
        "DHP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEG": 1,
        "BEO": 1,
        "AOP": -1,
        "AFG": 1,
        "AEG": 1,
        "BFG": 1,
        "FGO": 1,
        "AFP": -1
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
            "DCGOP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDG",
            "CDO",
            "DGP",
            "CDP",
            "DGO"
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
            "GADHP"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ADG",
            "GHP",
            "AGH",
            "DGP",
            "AGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GADOP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ADG",
            "AGO",
            "DGP",
            "AGP",
            "DGO"
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
            "GCDEP"
          ],
          "target": "EGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CEG",
            "DGP",
            "CGP",
            "DEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFP"
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CFG",
            "DGP",
            "CGP",
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
            "PCDGH"
          ],
          "target": "DHP",
          "sign": 1,
          "deps": [
            "CDP",
            "GHP",
            "CGP",
            "CHP",
            "DGP"
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
            "PDEFG"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FGP",
            "EGP",
            "DGP",
            "EFP"
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
          "target": "BEG",
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
              "80480253/125000000"
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
        },
        {
          "rule": [
            "ray",
            "AFG",
            "OP",
            "AFG",
            [
              "area",
              "AFG",
              "U_AFG",
              "1779364893/4000000000"
            ]
          ],
          "target": "AFP",
          "sign": -1,
          "deps": [
            "FGO",
            "AGO",
            "FGP",
            "AGP",
            "AOP"
          ],
          "area_stage": 8
        }
      ],
      "initial": {
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
              "392761/1000000",
              "581713/1000000",
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
              "61976507517/250000000000",
              "91792566261/250000000000",
              "92285524089/250000000000",
              "392761/1000000",
              "122101582833/250000000000",
              "581713/1000000",
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
              "4002518791/8000000000",
              "251096671119/500000000000",
              "4365873487/8000000000",
              "4562430791/8000000000",
              "286091171119/500000000000",
              "35761412967/62500000000",
              "4925785487/8000000000",
              "311430367383/500000000000",
              "40135725467/62500000000",
              "647430663/1000000000",
              "346424867383/500000000000",
              "13857/20000",
              "717419663/1000000000",
              "762839/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_CGO": {
          "triangle": "CGO",
          "side": "hi",
          "value": "305273140017/500000000000",
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
              "-943014821/10000000000",
              "-31806562657/500000000000",
              "-8404839587/250000000000",
              "-1465500781/500000000000",
              "24959623833/250000000000",
              "28601106777/250000000000",
              "65263426059/500000000000",
              "72546391947/500000000000",
              "2896653097/15625000000",
              "7486707461/40000000000",
              "1034131853/5000000000",
              "217856043311/1000000000000",
              "116872689807/500000000000",
              "30811614269/125000000000",
              "247849810277/1000000000000",
              "24831131139/100000000000",
              "661084341/2500000000",
              "16745842909/62500000000",
              "278538167063/1000000000000",
              "17437479261/62500000000",
              "19927728243/62500000000",
              "47493845979/125000000000",
              "202896621/488281250",
              "45275053617/100000000000",
              "466854966833/1000000000000",
              "59579924469/125000000000",
              "19531821569/40000000000",
              "256928826057/500000000000",
              "527962082777/1000000000000",
              "549402655169/1000000000000",
              "54943916409/100000000000",
              "305273140017/500000000000"
            ],
            "cell": "CA"
          }
        },
        "U_FGP": {
          "triangle": "FGP",
          "side": "hi",
          "value": "594155532349/1000000000000",
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
              "-23624392679/500000000000",
              "-2276906061/125000000000",
              "-1954380931/500000000000",
              "785149219/31250000000",
              "1595758031/12500000000",
              "3133883587/20000000000",
              "1291577343/8000000000",
              "18792209737/100000000000",
              "38096140949/200000000000",
              "101160439877/500000000000",
              "10808960849/50000000000",
              "677986357/3125000000",
              "115631060433/500000000000",
              "119496246121/500000000000",
              "4904255077/20000000000",
              "1999725939/8000000000",
              "1016677313/3906250000",
              "32536957217/125000000000",
              "55799855849/200000000000",
              "37117625577/125000000000",
              "5217035689/15625000000",
              "39183879647/100000000000",
              "105602214649/250000000000",
              "218745881241/500000000000",
              "17907537819/40000000000",
              "47416337497/100000000000",
              "48035737097/100000000000",
              "61930034357/125000000000",
              "505636957849/1000000000000",
              "33256992959/62500000000",
              "21448280799/40000000000",
              "594155532349/1000000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "452": {
          "row": [
            "plu",
            "CFG",
            "FHO",
            "CFH",
            "FGO",
            "CFO",
            "FGH"
          ],
          "witness": {
            "kind": "plu",
            "word": "FCGHO"
          }
        },
        "1155": {
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
        "3447": {
          "row": [
            "linear",
            {
              "BFG": "-93/1000",
              "CFG": "-93/1000",
              "FGH": "587789/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "BCH",
            "point": "G",
            "line": "FG",
            "side": "lower",
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
        "4086": {
          "row": [
            "linear",
            {
              "CFG": "390839/1000000",
              "CFO": "-762839/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFG",
            "point": "O",
            "line": "CF",
            "side": "upper",
            "outer_upper": {
              "triangle": "CFG",
              "ref": "U_CFG",
              "value": "762839/1000000"
            },
            "fan_lower": [
              {
                "triangle": "FGO",
                "ref": "L_FGO",
                "value": "93/1000"
              },
              {
                "triangle": "CGO",
                "ref": "L_CGO",
                "value": "279/1000"
              },
              {
                "triangle": "CFO",
                "ref": "L_CFO",
                "value": "93/1000"
              }
            ],
            "residual": "297839/1000000"
          }
        },
        "4152": {
          "row": [
            "linear",
            {
              "CFG": "390839/1000000",
              "CFP": "-762839/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFG",
            "point": "P",
            "line": "CF",
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
                "value": "279/1000"
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
            "residual": "297839/1000000"
          }
        },
        "4390": {
          "row": [
            "linear",
            {
              "FGO": "-93/1000",
              "CFO": "212273140017/500000000000",
              "FOP": "-305273140017/500000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "GCO",
            "point": "P",
            "line": "FO",
            "side": "upper",
            "outer_upper": {
              "triangle": "CGO",
              "ref": "U_CGO",
              "value": "305273140017/500000000000"
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
            "residual": "165773140017/500000000000"
          }
        },
        "4565": {
          "row": [
            "linear",
            {
              "CFP": "408155532349/1000000000000",
              "CGP": "-93/1000",
              "COP": "-594155532349/1000000000000"
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
              "value": "594155532349/1000000000000"
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
            "residual": "315155532349/1000000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0053",
          "relation": 1155,
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
          "id": "T0071",
          "relation": 3447,
          "rule": "linear",
          "triangle": "FGH",
          "side": "lo",
          "value": "136327/1000000",
          "sources": [
            "T0053",
            "L_CFG"
          ]
        },
        {
          "id": "T0085",
          "relation": 4390,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "154117/1000000",
          "sources": [
            "L_FGO",
            "L_FOP"
          ]
        },
        {
          "id": "T0089",
          "relation": 4565,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "156571/1000000",
          "sources": [
            "L_CGP",
            "L_COP"
          ]
        },
        {
          "id": "T0132",
          "relation": 452,
          "rule": "sumlo",
          "triangle": "FHO",
          "side": "lo",
          "value": "112009/1000000",
          "sources": [
            "L_CFH",
            "L_FGO",
            "T0085",
            "T0071",
            "U_CFG"
          ]
        }
      ],
      "physical": {
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
              "-112009/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FHO",
            "side": "lo",
            "reference": "T0132",
            "value": "112009/1000000"
          }
        },
        "152": {
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
        "178": {
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
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FGP",
            "side": "lo",
            "reference": "L_FGP",
            "value": "279/1000"
          }
        },
        "190": {
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
              "-154117/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFO",
            "side": "lo",
            "reference": "T0085",
            "value": "154117/1000000"
          }
        },
        "196": {
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
              "-156571/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "lo",
            "reference": "T0089",
            "value": "156571/1000000"
          }
        },
        "2713": {
          "name": "LINEAR_4086",
          "terms": [
            [
              [
                5,
                8
              ],
              "390839/1000000"
            ],
            [
              [
                2,
                8
              ],
              "-390839/1000000"
            ],
            [
              [
                6
              ],
              "-390839/1000000"
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
              "-762839/1000000"
            ],
            [
              [
                2,
                10
              ],
              "762839/1000000"
            ],
            [
              [
                9
              ],
              "762839/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 4086
          }
        },
        "2779": {
          "name": "LINEAR_4152",
          "terms": [
            [
              [
                5,
                8
              ],
              "390839/1000000"
            ],
            [
              [
                2,
                8
              ],
              "-390839/1000000"
            ],
            [
              [
                6
              ],
              "-390839/1000000"
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
              "-762839/1000000"
            ],
            [
              [
                2,
                12
              ],
              "762839/1000000"
            ],
            [
              [
                11
              ],
              "762839/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 4152
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
          "688133/1000000",
          "118963/1000000",
          "157797/250000",
          "180693/500000",
          "357753/1000000",
          "351/800",
          "357787/1000000",
          "86017/500000"
        ],
        "high": [
          "126953/250000",
          "300089/1000000",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "23619/125000",
          "1/1",
          "6077/8000",
          "145537/200000",
          "436489/500000",
          "725231/1000000",
          "23397/40000"
        ],
        "steps": [
          {
            "factor": 96,
            "target": "y",
            "old": [
              "219237/500000",
              "109137/125000"
            ],
            "lines": [
              [
                "-688133/1000000",
                "113566852191/250000000000"
              ],
              [
                "-440901/500000",
                "18015904923/31250000000"
              ],
              [
                "-688133/1000000",
                "144031/250000"
              ],
              [
                "-440901/500000",
                "769793/1000000"
              ],
              [
                "-688133/1000000",
                "73865737601/125000000000"
              ],
              [
                "-440901/500000",
                "35658372479/50000000000"
              ]
            ],
            "raw": [
              "219237/500000",
              "769793/881802"
            ],
            "new": [
              "219237/500000",
              "436489/500000"
            ]
          },
          {
            "factor": 190,
            "target": "x",
            "old": [
              "35773/100000",
              "728267/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "268332359071/500000000000"
              ],
              [
                "-1/1",
                "321383089447/500000000000"
              ],
              [
                "-1/1",
                "38848971203/62500000000"
              ],
              [
                "-1/1",
                "145537/200000"
              ],
              [
                "-1/1",
                "267307581387/500000000000"
              ],
              [
                "-1/1",
                "279308111859/500000000000"
              ],
              [
                "-1/1",
                "43980246191/62500000000"
              ]
            ],
            "raw": [
              "35773/100000",
              "145537/200000"
            ],
            "new": [
              "35773/100000",
              "145537/200000"
            ]
          },
          {
            "factor": 196,
            "target": "u",
            "old": [
              "71551/200000",
              "726007/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "267733757811/500000000000"
              ],
              [
                "-1/1",
                "345956673627/500000000000"
              ],
              [
                "-1/1",
                "35549073023/62500000000"
              ],
              [
                "-1/1",
                "725231/1000000"
              ],
              [
                "-1/1",
                "53351875311/100000000000"
              ],
              [
                "-1/1",
                "61190171127/100000000000"
              ],
              [
                "-1/1",
                "8085600523/12500000000"
              ]
            ],
            "raw": [
              "71551/200000",
              "725231/1000000"
            ],
            "new": [
              "71551/200000",
              "725231/1000000"
            ]
          },
          {
            "factor": 2713,
            "target": "x",
            "old": [
              "35773/100000",
              "145537/200000"
            ],
            "lines": [
              [
                "762839/1000000",
                "-9478876894617733/31250000000000000"
              ],
              [
                "762839/1000000",
                "-10534402181815981/31250000000000000"
              ],
              [
                "762839/1000000",
                "-5324201793229001/15625000000000000"
              ],
              [
                "762839/1000000",
                "-374525723957/1000000000000"
              ],
              [
                "762839/1000000",
                "-10333702856211483/31250000000000000"
              ],
              [
                "762839/1000000",
                "-11389228143409731/31250000000000000"
              ],
              [
                "762839/1000000",
                "-1437903693506469/3906250000000000"
              ],
              [
                "762839/1000000",
                "-50235019341/125000000000"
              ],
              [
                "762839/1000000",
                "-304058249095269013/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-367244933060120941/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-38917379999018509/125000000000000000"
              ],
              [
                "762839/1000000",
                "-331412679866269013/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-394599363831120941/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-42336683845393509/125000000000000000"
              ],
              [
                "762839/1000000",
                "-37720072482549713/125000000000000000"
              ],
              [
                "762839/1000000",
                "-34113500270200841/125000000000000000"
              ],
              [
                "762839/1000000",
                "-3151392981685867/7812500000000000"
              ],
              [
                "762839/1000000",
                "-41139376328924713/125000000000000000"
              ],
              [
                "762839/1000000",
                "-37532804116575841/125000000000000000"
              ],
              [
                "762839/1000000",
                "-6730198944168609/15625000000000000"
              ],
              [
                "762839/1000000",
                "-302494768327899261/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-303052065403616277/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-46746053360160373/125000000000000000"
              ],
              [
                "762839/1000000",
                "-329849199098899261/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-330406496174616277/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-50165357206535373/125000000000000000"
              ]
            ],
            "raw": [
              "4873357181457263/13622125000000000",
              "145537/200000"
            ],
            "new": [
              "357753/1000000",
              "145537/200000"
            ]
          },
          {
            "factor": 2779,
            "target": "u",
            "old": [
              "71551/200000",
              "725231/1000000"
            ],
            "lines": [
              [
                "762839/1000000",
                "-38035349345076647/125000000000000000"
              ],
              [
                "762839/1000000",
                "-47058031686085679/125000000000000000"
              ],
              [
                "762839/1000000",
                "-1181032286050499/3906250000000000"
              ],
              [
                "762839/1000000",
                "-374525723957/1000000000000"
              ],
              [
                "762839/1000000",
                "-41454653191451647/125000000000000000"
              ],
              [
                "762839/1000000",
                "-50477335532460679/125000000000000000"
              ],
              [
                "762839/1000000",
                "-5151542124998871/15625000000000000"
              ],
              [
                "762839/1000000",
                "-50235019341/125000000000"
              ],
              [
                "762839/1000000",
                "-305016983228114733/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-406608316730694981/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-34116798806802469/125000000000000000"
              ],
              [
                "762839/1000000",
                "-332371413999114733/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-433962747501694981/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-37536102653177469/125000000000000000"
              ],
              [
                "762839/1000000",
                "-37849525339340201/125000000000000000"
              ],
              [
                "762839/1000000",
                "-39428532138285857/125000000000000000"
              ],
              [
                "762839/1000000",
                "-2827294293479959/7812500000000000"
              ],
              [
                "762839/1000000",
                "-41268829185715201/125000000000000000"
              ],
              [
                "762839/1000000",
                "-42847835984660857/125000000000000000"
              ],
              [
                "762839/1000000",
                "-6082001567756793/15625000000000000"
              ],
              [
                "762839/1000000",
                "-60706078236444633/200000000000000000"
              ],
              [
                "762839/1000000",
                "-69114464069659281/200000000000000000"
              ],
              [
                "762839/1000000",
                "-8312094869773169/25000000000000000"
              ],
              [
                "762839/1000000",
                "-66176964390644633/200000000000000000"
              ],
              [
                "762839/1000000",
                "-74585350223859281/200000000000000000"
              ],
              [
                "762839/1000000",
                "-8995955639048169/25000000000000000"
              ]
            ],
            "raw": [
              "34116798806802469/95354875000000000",
              "725231/1000000"
            ],
            "new": [
              "357787/1000000",
              "725231/1000000"
            ]
          },
          {
            "factor": 152,
            "target": "y",
            "old": [
              "219237/500000",
              "436489/500000"
            ],
            "lines": [
              [
                "573887/1000000",
                "-200049682221/500000000000"
              ],
              [
                "762839/1000000",
                "-234191985957/500000000000"
              ],
              [
                "251949/500000",
                "-200049682221/500000000000"
              ],
              [
                "13857/20000",
                "-234191985957/500000000000"
              ],
              [
                "573887/1000000",
                "-4268384469/8000000000"
              ],
              [
                "762839/1000000",
                "-5416645773/8000000000"
              ],
              [
                "251949/500000",
                "-4268384469/8000000000"
              ],
              [
                "13857/20000",
                "-5416645773/8000000000"
              ],
              [
                "573887/1000000",
                "-26641111869/100000000000"
              ],
              [
                "762839/1000000",
                "-167347863081/500000000000"
              ],
              [
                "251949/500000",
                "-26641111869/100000000000"
              ],
              [
                "13857/20000",
                "-167347863081/500000000000"
              ],
              [
                "573887/1000000",
                "-404061541/1600000000"
              ],
              [
                "762839/1000000",
                "-3168569009/8000000000"
              ],
              [
                "251949/500000",
                "-404061541/1600000000"
              ],
              [
                "13857/20000",
                "-3168569009/8000000000"
              ]
            ],
            "raw": [
              "23906837583/54488500000",
              "436489/500000"
            ],
            "new": [
              "351/800",
              "436489/500000"
            ]
          },
          {
            "factor": 178,
            "target": "v",
            "old": [
              "86017/500000",
              "58517/100000"
            ],
            "lines": [
              [
                "-56917/100000",
                "19801604889/250000000000"
              ],
              [
                "-762839/1000000",
                "14919568479/100000000000"
              ],
              [
                "-499181/1000000",
                "2304354889/250000000000"
              ],
              [
                "-13857/20000",
                "7920668479/100000000000"
              ],
              [
                "-56917/100000",
                "843052321/4000000000"
              ],
              [
                "-762839/1000000",
                "572606231/1600000000"
              ],
              [
                "-499181/1000000",
                "563096321/4000000000"
              ],
              [
                "-13857/20000",
                "460623831/1600000000"
              ],
              [
                "-56917/100000",
                "78465325543/250000000000"
              ],
              [
                "-762839/1000000",
                "191925283703/500000000000"
              ],
              [
                "-499181/1000000",
                "60968075543/250000000000"
              ],
              [
                "-13857/20000",
                "156930783703/500000000000"
              ],
              [
                "-56917/100000",
                "1196349727/4000000000"
              ],
              [
                "-762839/1000000",
                "3569625967/8000000000"
              ],
              [
                "-499181/1000000",
                "916393727/4000000000"
              ],
              [
                "-13857/20000",
                "3009713967/8000000000"
              ]
            ],
            "raw": [
              "86017/500000",
              "3569625967/6102712000"
            ],
            "new": [
              "86017/500000",
              "23397/40000"
            ]
          }
        ]
      }
    },
    {
      "id": 10,
      "assumptions": [
        "AGO-",
        "AGP-",
        "DGP+",
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
          "688133/1000000",
          "118963/1000000",
          "157797/250000",
          "180693/500000",
          "357753/1000000",
          "351/800",
          "357787/1000000",
          "86017/500000"
        ],
        "high": [
          "126953/250000",
          "300089/1000000",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "23619/125000",
          "1",
          "6077/8000",
          "145537/200000",
          "436489/500000",
          "725231/1000000",
          "23397/40000"
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
        "DGP": 1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DOP": 1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "DGH": -1,
        "GOP": -1,
        "BDG": 1,
        "EGP": 1,
        "FGP": 1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "CFO": 1,
        "DFO": 1,
        "DHP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEG": 1,
        "BEO": 1,
        "AOP": -1,
        "AFG": 1,
        "AEG": 1,
        "BFG": 1,
        "FGO": 1,
        "AFP": -1
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
            "DCGOP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDG",
            "CDO",
            "DGP",
            "CDP",
            "DGO"
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
            "GADHP"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ADG",
            "GHP",
            "AGH",
            "DGP",
            "AGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GADOP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ADG",
            "AGO",
            "DGP",
            "AGP",
            "DGO"
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
            "GCDEP"
          ],
          "target": "EGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CEG",
            "DGP",
            "CGP",
            "DEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFP"
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CFG",
            "DGP",
            "CGP",
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
            "PCDGH"
          ],
          "target": "DHP",
          "sign": 1,
          "deps": [
            "CDP",
            "GHP",
            "CGP",
            "CHP",
            "DGP"
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
            "PDEFG"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FGP",
            "EGP",
            "DGP",
            "EFP"
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
          "target": "BEG",
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
              "80480253/125000000"
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
        },
        {
          "rule": [
            "ray",
            "AFG",
            "OP",
            "AFG",
            [
              "area",
              "AFG",
              "U_AFG",
              "1779364893/4000000000"
            ]
          ],
          "target": "AFP",
          "sign": -1,
          "deps": [
            "FGO",
            "AGO",
            "FGP",
            "AGP",
            "AOP"
          ],
          "area_stage": 8
        }
      ],
      "initial": {
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
              "392761/1000000",
              "581713/1000000",
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
              "61976507517/250000000000",
              "91792566261/250000000000",
              "92285524089/250000000000",
              "392761/1000000",
              "122101582833/250000000000",
              "581713/1000000",
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
              "4002518791/8000000000",
              "251096671119/500000000000",
              "4365873487/8000000000",
              "4562430791/8000000000",
              "286091171119/500000000000",
              "35761412967/62500000000",
              "4925785487/8000000000",
              "311430367383/500000000000",
              "40135725467/62500000000",
              "647430663/1000000000",
              "346424867383/500000000000",
              "13857/20000",
              "717419663/1000000000",
              "762839/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_CGO": {
          "triangle": "CGO",
          "side": "hi",
          "value": "30512296919/50000000000",
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
              "-752742273/8000000000",
              "-507080883/8000000000",
              "-267702489/8000000000",
              "-22041099/8000000000",
              "49992941529/500000000000",
              "57301982793/500000000000",
              "16336694601/125000000000",
              "18163954917/125000000000",
              "185343809619/1000000000000",
              "1495334491/8000000000",
              "8270483427/40000000000",
              "1740995881/8000000000",
              "23367412881/100000000000",
              "246442666861/1000000000000",
              "79214971/320000000",
              "124146105669/500000000000",
              "826193133/3125000000",
              "267860942917/1000000000000",
              "445207133/1600000000",
              "8718746409/31250000000",
              "159396251901/500000000000",
              "94972840261/250000000000",
              "207729417693/500000000000",
              "226240374777/500000000000",
              "466353405119/1000000000000",
              "119139423157/250000000000",
              "19510867247/40000000000",
              "128394901699/250000000000",
              "527452262361/1000000000000",
              "548870538417/1000000000000",
              "274573540569/500000000000",
              "30512296919/50000000000"
            ],
            "cell": "CA"
          }
        },
        "U_FGP": {
          "triangle": "FGP",
          "side": "hi",
          "value": "593969001349/1000000000000",
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
              "-2352930073/50000000000",
              "-3601583457/200000000000",
              "-3766026869/1000000000000",
              "12642328653/500000000000",
              "5111625353/40000000000",
              "78420659/500000000",
              "258599373/1600000000",
              "46899070289/250000000000",
              "1906752923/10000000000",
              "101170657701/500000000000",
              "8644599413/40000000000",
              "216646965331/1000000000000",
              "230888855747/1000000000000",
              "23901292789/100000000000",
              "490331339/2000000000",
              "1999591677/8000000000",
              "129969769961/500000000000",
              "4067028559/15625000000",
              "1394998219/5000000000",
              "37120180033/125000000000",
              "10434311753/31250000000",
              "39184648847/100000000000",
              "105555581899/250000000000",
              "218498099009/500000000000",
              "17907845499/40000000000",
              "236833905253/500000000000",
              "48017083997/100000000000",
              "61868088799/125000000000",
              "505644649849/1000000000000",
              "1661301009/3125000000",
              "21440819559/40000000000",
              "593969001349/1000000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "452": {
          "row": [
            "plu",
            "CFG",
            "FHO",
            "CFH",
            "FGO",
            "CFO",
            "FGH"
          ],
          "witness": {
            "kind": "plu",
            "word": "FCGHO"
          }
        },
        "1155": {
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
        "3447": {
          "row": [
            "linear",
            {
              "BFG": "-93/1000",
              "CFG": "-93/1000",
              "FGH": "587789/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "BCH",
            "point": "G",
            "line": "FG",
            "side": "lower",
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
        "4086": {
          "row": [
            "linear",
            {
              "CFG": "390839/1000000",
              "CFO": "-762839/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFG",
            "point": "O",
            "line": "CF",
            "side": "upper",
            "outer_upper": {
              "triangle": "CFG",
              "ref": "U_CFG",
              "value": "762839/1000000"
            },
            "fan_lower": [
              {
                "triangle": "FGO",
                "ref": "L_FGO",
                "value": "93/1000"
              },
              {
                "triangle": "CGO",
                "ref": "L_CGO",
                "value": "279/1000"
              },
              {
                "triangle": "CFO",
                "ref": "L_CFO",
                "value": "93/1000"
              }
            ],
            "residual": "297839/1000000"
          }
        },
        "4390": {
          "row": [
            "linear",
            {
              "FGO": "-93/1000",
              "CFO": "21212296919/50000000000",
              "FOP": "-30512296919/50000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "GCO",
            "point": "P",
            "line": "FO",
            "side": "upper",
            "outer_upper": {
              "triangle": "CGO",
              "ref": "U_CGO",
              "value": "30512296919/50000000000"
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
            "residual": "16562296919/50000000000"
          }
        },
        "4565": {
          "row": [
            "linear",
            {
              "CFP": "407969001349/1000000000000",
              "CGP": "-93/1000",
              "COP": "-593969001349/1000000000000"
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
              "value": "593969001349/1000000000000"
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
            "residual": "314969001349/1000000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0053",
          "relation": 1155,
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
          "id": "T0071",
          "relation": 3447,
          "rule": "linear",
          "triangle": "FGH",
          "side": "lo",
          "value": "136327/1000000",
          "sources": [
            "T0053",
            "L_CFG"
          ]
        },
        {
          "id": "T0085",
          "relation": 4390,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "1927/12500",
          "sources": [
            "L_FGO",
            "L_FOP"
          ]
        },
        {
          "id": "T0089",
          "relation": 4565,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "783/5000",
          "sources": [
            "L_CGP",
            "L_COP"
          ]
        },
        {
          "id": "T0132",
          "relation": 452,
          "rule": "sumlo",
          "triangle": "FHO",
          "side": "lo",
          "value": "112017/1000000",
          "sources": [
            "L_CFH",
            "L_FGO",
            "T0085",
            "T0071",
            "U_CFG"
          ]
        }
      ],
      "physical": {
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
              "-112017/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FHO",
            "side": "lo",
            "reference": "T0132",
            "value": "112017/1000000"
          }
        },
        "152": {
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
        "178": {
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
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FGP",
            "side": "lo",
            "reference": "L_FGP",
            "value": "279/1000"
          }
        },
        "190": {
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
              "-1927/12500"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFO",
            "side": "lo",
            "reference": "T0085",
            "value": "1927/12500"
          }
        },
        "196": {
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
              "-783/5000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "lo",
            "reference": "T0089",
            "value": "783/5000"
          }
        },
        "2713": {
          "name": "LINEAR_4086",
          "terms": [
            [
              [
                5,
                8
              ],
              "390839/1000000"
            ],
            [
              [
                2,
                8
              ],
              "-390839/1000000"
            ],
            [
              [
                6
              ],
              "-390839/1000000"
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
              "-762839/1000000"
            ],
            [
              [
                2,
                10
              ],
              "762839/1000000"
            ],
            [
              [
                9
              ],
              "762839/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 4086
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
          "688133/1000000",
          "118963/1000000",
          "157797/250000",
          "180693/500000",
          "178877/500000",
          "43877/100000",
          "357787/1000000",
          "86017/500000"
        ],
        "high": [
          "126953/250000",
          "300089/1000000",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "23619/125000",
          "1/1",
          "6077/8000",
          "363821/500000",
          "872969/1000000",
          "362601/500000",
          "146229/250000"
        ],
        "steps": [
          {
            "factor": 96,
            "target": "y",
            "old": [
              "351/800",
              "436489/500000"
            ],
            "lines": [
              [
                "-688133/1000000",
                "5678348643/12500000000"
              ],
              [
                "-440901/500000",
                "144127360053/250000000000"
              ],
              [
                "-688133/1000000",
                "144029/250000"
              ],
              [
                "-440901/500000",
                "153957/200000"
              ],
              [
                "-688133/1000000",
                "2307434579/3906250000"
              ],
              [
                "-440901/500000",
                "178236200249/250000000000"
              ]
            ],
            "raw": [
              "351/800",
              "256595/293934"
            ],
            "new": [
              "351/800",
              "872969/1000000"
            ]
          },
          {
            "factor": 190,
            "target": "x",
            "old": [
              "357753/1000000",
              "145537/200000"
            ],
            "lines": [
              [
                "-1/1",
                "429296333/800000000"
              ],
              [
                "-1/1",
                "514135781/800000000"
              ],
              [
                "-1/1",
                "62159269/100000000"
              ],
              [
                "-1/1",
                "363821/500000"
              ],
              [
                "-1/1",
                "534572205227/1000000000000"
              ],
              [
                "-1/1",
                "558574966739/1000000000000"
              ],
              [
                "-1/1",
                "87954904811/125000000000"
              ]
            ],
            "raw": [
              "357753/1000000",
              "363821/500000"
            ],
            "new": [
              "357753/1000000",
              "363821/500000"
            ]
          },
          {
            "factor": 196,
            "target": "u",
            "old": [
              "357787/1000000",
              "725231/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "267719257811/500000000000"
              ],
              [
                "-1/1",
                "345942173627/500000000000"
              ],
              [
                "-1/1",
                "35547260523/62500000000"
              ],
              [
                "-1/1",
                "362601/500000"
              ],
              [
                "-1/1",
                "21339636351/40000000000"
              ],
              [
                "-1/1",
                "24476806407/40000000000"
              ],
              [
                "-1/1",
                "3233863743/5000000000"
              ]
            ],
            "raw": [
              "357787/1000000",
              "362601/500000"
            ],
            "new": [
              "357787/1000000",
              "362601/500000"
            ]
          },
          {
            "factor": 2713,
            "target": "x",
            "old": [
              "357753/1000000",
              "363821/500000"
            ],
            "lines": [
              [
                "762839/1000000",
                "-75830766873444017/250000000000000000"
              ],
              [
                "762839/1000000",
                "-84265023514153769/250000000000000000"
              ],
              [
                "762839/1000000",
                "-10649646793567531/31250000000000000"
              ],
              [
                "762839/1000000",
                "-374525723957/1000000000000"
              ],
              [
                "762839/1000000",
                "-82669374566194017/250000000000000000"
              ],
              [
                "762839/1000000",
                "-91103631206903769/250000000000000000"
              ],
              [
                "762839/1000000",
                "-11504472755161281/31250000000000000"
              ],
              [
                "762839/1000000",
                "-50235019341/125000000000"
              ],
              [
                "762839/1000000",
                "-2432458047690221/8000000000000000"
              ],
              [
                "762839/1000000",
                "-2937633258388997/8000000000000000"
              ],
              [
                "762839/1000000",
                "-311378822619653/1000000000000000"
              ],
              [
                "762839/1000000",
                "-2651293493858221/8000000000000000"
              ],
              [
                "762839/1000000",
                "-3156468704556997/8000000000000000"
              ],
              [
                "762839/1000000",
                "-338733253390653/1000000000000000"
              ],
              [
                "762839/1000000",
                "-301760612245201771/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-272909331806003347/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-50422125549524803/125000000000000000"
              ],
              [
                "762839/1000000",
                "-329115043016201771/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-300263762577003347/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-53841429395899803/125000000000000000"
              ],
              [
                "762839/1000000",
                "-9452962522271979/31250000000000000"
              ],
              [
                "762839/1000000",
                "-9470418595250403/31250000000000000"
              ],
              [
                "762839/1000000",
                "-5843236400338913/15625000000000000"
              ],
              [
                "762839/1000000",
                "-10307788483865729/31250000000000000"
              ],
              [
                "762839/1000000",
                "-10325244556844153/31250000000000000"
              ],
              [
                "762839/1000000",
                "-1567662345283947/3906250000000000"
              ]
            ],
            "raw": [
              "38987047400857621/108977000000000000",
              "363821/500000"
            ],
            "new": [
              "178877/500000",
              "363821/500000"
            ]
          },
          {
            "factor": 152,
            "target": "y",
            "old": [
              "351/800",
              "872969/1000000"
            ],
            "lines": [
              [
                "573887/1000000",
                "-25006187691/62500000000"
              ],
              [
                "762839/1000000",
                "-14636987829/31250000000"
              ],
              [
                "251949/500000",
                "-25006187691/62500000000"
              ],
              [
                "13857/20000",
                "-14636987829/31250000000"
              ],
              [
                "573887/1000000",
                "-533547299/1000000000"
              ],
              [
                "762839/1000000",
                "-338539981/500000000"
              ],
              [
                "251949/500000",
                "-533547299/1000000000"
              ],
              [
                "13857/20000",
                "-338539981/500000000"
              ],
              [
                "573887/1000000",
                "-16651666143/62500000000"
              ],
              [
                "762839/1000000",
                "-2091945411/6250000000"
              ],
              [
                "251949/500000",
                "-16651666143/62500000000"
              ],
              [
                "13857/20000",
                "-2091945411/6250000000"
              ],
              [
                "573887/1000000",
                "-252571127/1000000000"
              ],
              [
                "762839/1000000",
                "-39610379/100000000"
              ],
              [
                "251949/500000",
                "-252571127/1000000000"
              ],
              [
                "13857/20000",
                "-39610379/100000000"
              ]
            ],
            "raw": [
              "2091945411/4767743750",
              "872969/1000000"
            ],
            "new": [
              "43877/100000",
              "872969/1000000"
            ]
          },
          {
            "factor": 178,
            "target": "v",
            "old": [
              "86017/500000",
              "23397/40000"
            ],
            "lines": [
              [
                "-56917/100000",
                "19801604889/250000000000"
              ],
              [
                "-762839/1000000",
                "14919568479/100000000000"
              ],
              [
                "-499181/1000000",
                "2304354889/250000000000"
              ],
              [
                "-13857/20000",
                "7920668479/100000000000"
              ],
              [
                "-56917/100000",
                "843052321/4000000000"
              ],
              [
                "-762839/1000000",
                "572606231/1600000000"
              ],
              [
                "-499181/1000000",
                "563096321/4000000000"
              ],
              [
                "-13857/20000",
                "460623831/1600000000"
              ],
              [
                "-56917/100000",
                "156921391183/500000000000"
              ],
              [
                "-762839/1000000",
                "959580119/2500000000"
              ],
              [
                "-499181/1000000",
                "121926891183/500000000000"
              ],
              [
                "-13857/20000",
                "784607619/2500000000"
              ],
              [
                "-56917/100000",
                "2392643687/8000000000"
              ],
              [
                "-762839/1000000",
                "17847851/40000000"
              ],
              [
                "-499181/1000000",
                "1832731687/8000000000"
              ],
              [
                "-13857/20000",
                "15048291/40000000"
              ]
            ],
            "raw": [
              "86017/500000",
              "2549693/4359080"
            ],
            "new": [
              "86017/500000",
              "146229/250000"
            ]
          }
        ]
      }
    },
    {
      "id": 11,
      "assumptions": [
        "AGO-",
        "AGP-",
        "DGP+",
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
          "688133/1000000",
          "118963/1000000",
          "157797/250000",
          "180693/500000",
          "178877/500000",
          "43877/100000",
          "357787/1000000",
          "86017/500000"
        ],
        "high": [
          "126953/250000",
          "300089/1000000",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "23619/125000",
          "1",
          "6077/8000",
          "363821/500000",
          "872969/1000000",
          "362601/500000",
          "146229/250000"
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
        "DGP": 1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DOP": 1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "DGH": -1,
        "GOP": -1,
        "BDG": 1,
        "EGP": 1,
        "FGP": 1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "CFO": 1,
        "DFO": 1,
        "DHP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEG": 1,
        "BEO": 1,
        "AOP": -1,
        "AFG": 1,
        "AEG": 1,
        "BFG": 1,
        "FGO": 1,
        "AFP": -1
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
            "DCGOP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDG",
            "CDO",
            "DGP",
            "CDP",
            "DGO"
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
            "GADHP"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ADG",
            "GHP",
            "AGH",
            "DGP",
            "AGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GADOP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ADG",
            "AGO",
            "DGP",
            "AGP",
            "DGO"
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
            "GCDEP"
          ],
          "target": "EGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CEG",
            "DGP",
            "CGP",
            "DEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFP"
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CFG",
            "DGP",
            "CGP",
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
            "PCDGH"
          ],
          "target": "DHP",
          "sign": 1,
          "deps": [
            "CDP",
            "GHP",
            "CGP",
            "CHP",
            "DGP"
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
            "PDEFG"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FGP",
            "EGP",
            "DGP",
            "EFP"
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
          "target": "BEG",
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
              "80480253/125000000"
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
        },
        {
          "rule": [
            "ray",
            "AFG",
            "OP",
            "AFG",
            [
              "area",
              "AFG",
              "U_AFG",
              "1779364893/4000000000"
            ]
          ],
          "target": "AFP",
          "sign": -1,
          "deps": [
            "FGO",
            "AGO",
            "FGP",
            "AGP",
            "AOP"
          ],
          "area_stage": 8
        }
      ],
      "initial": {
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
        "U_CGO": {
          "triangle": "CGO",
          "side": "hi",
          "value": "610223533231/1000000000000",
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
              "-37631267/400000000",
              "-6336909397/100000000000",
              "-1672598677/50000000000",
              "-274290001/100000000000",
              "24999080601/250000000000",
              "28654545993/250000000000",
              "65352697967/500000000000",
              "72663628751/500000000000",
              "92670017081/500000000000",
              "373796009/2000000000",
              "4135132193/20000000000",
              "21760707803/100000000000",
              "58417166793/250000000000",
              "246438261503/1000000000000",
              "12376209923/50000000000",
              "12414526437/50000000000",
              "132188870351/500000000000",
              "267854836991/1000000000000",
              "27823327199/100000000000",
              "27899960227/100000000000",
              "159394165053/500000000000",
              "379886557447/1000000000000",
              "207726480561/500000000000",
              "226230337437/500000000000",
              "233158103081/500000000000",
              "476551188463/1000000000000",
              "9754655633/20000000000",
              "102711780443/200000000000",
              "527414433503/1000000000000",
              "548831008991/1000000000000",
              "54912530589/100000000000",
              "610223533231/1000000000000"
            ],
            "cell": "CA"
          }
        },
        "U_FGP": {
          "triangle": "FGP",
          "side": "hi",
          "value": "296981015237/500000000000",
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
              "-4705236581/100000000000",
              "-9000525867/500000000000",
              "-23509589/6250000000",
              "6322444959/250000000000",
              "63897563227/500000000000",
              "15684644053/100000000000",
              "6465233751/40000000000",
              "187583997/1000000000",
              "190682157851/1000000000000",
              "101170657701/500000000000",
              "216112507079/1000000000000",
              "54158827769/250000000000",
              "23087482857/100000000000",
              "23901292789/100000000000",
              "49032764231/200000000000",
              "624870561/2500000000",
              "129963071323/500000000000",
              "4067028559/15625000000",
              "69749884619/250000000000",
              "37120180033/125000000000",
              "10434311753/31250000000",
              "39184648847/100000000000",
              "422215356721/1000000000000",
              "109244419553/250000000000",
              "17907845499/40000000000",
              "4736492907/10000000000",
              "96032773819/200000000000",
              "247463095293/500000000000",
              "505644649849/1000000000000",
              "265798901537/500000000000",
              "5360135181/10000000000",
              "296981015237/500000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "4390": {
          "row": [
            "linear",
            {
              "FGO": "-93/1000",
              "CFO": "424223533231/1000000000000",
              "FOP": "-610223533231/1000000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "GCO",
            "point": "P",
            "line": "FO",
            "side": "upper",
            "outer_upper": {
              "triangle": "CGO",
              "ref": "U_CGO",
              "value": "610223533231/1000000000000"
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
            "residual": "331223533231/1000000000000"
          }
        },
        "4565": {
          "row": [
            "linear",
            {
              "CFP": "203981015237/500000000000",
              "CGP": "-93/1000",
              "COP": "-296981015237/500000000000"
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
              "value": "296981015237/500000000000"
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
            "residual": "157481015237/500000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0085",
          "relation": 4390,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "154163/1000000",
          "sources": [
            "L_FGO",
            "L_FOP"
          ]
        },
        {
          "id": "T0089",
          "relation": 4565,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "156601/1000000",
          "sources": [
            "L_CGP",
            "L_COP"
          ]
        }
      ],
      "physical": {
        "152": {
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
        "190": {
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
              "-154163/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFO",
            "side": "lo",
            "reference": "T0085",
            "value": "154163/1000000"
          }
        },
        "196": {
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
              "-156601/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "lo",
            "reference": "T0089",
            "value": "156601/1000000"
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
          "688133/1000000",
          "118963/1000000",
          "157797/250000",
          "180693/500000",
          "178877/500000",
          "438771/1000000",
          "357787/1000000",
          "86017/500000"
        ],
        "high": [
          "126953/250000",
          "300089/1000000",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "23619/125000",
          "1/1",
          "6077/8000",
          "727639/1000000",
          "872969/1000000",
          "725201/1000000",
          "146229/250000"
        ],
        "steps": [
          {
            "factor": 190,
            "target": "x",
            "old": [
              "178877/500000",
              "363821/500000"
            ],
            "lines": [
              [
                "-1/1",
                "53661732191/100000000000"
              ],
              [
                "-1/1",
                "64266285287/100000000000"
              ],
              [
                "-1/1",
                "7769918363/12500000000"
              ],
              [
                "-1/1",
                "727639/1000000"
              ],
              [
                "-1/1",
                "534569205227/1000000000000"
              ],
              [
                "-1/1",
                "558571966739/1000000000000"
              ],
              [
                "-1/1",
                "87954529811/125000000000"
              ]
            ],
            "raw": [
              "178877/500000",
              "727639/1000000"
            ],
            "new": [
              "178877/500000",
              "727639/1000000"
            ]
          },
          {
            "factor": 196,
            "target": "u",
            "old": [
              "357787/1000000",
              "362601/500000"
            ],
            "lines": [
              [
                "-1/1",
                "267718757811/500000000000"
              ],
              [
                "-1/1",
                "345941673627/500000000000"
              ],
              [
                "-1/1",
                "35547198023/62500000000"
              ],
              [
                "-1/1",
                "725201/1000000"
              ],
              [
                "-1/1",
                "133372487807/250000000000"
              ],
              [
                "-1/1",
                "152980225799/250000000000"
              ],
              [
                "-1/1",
                "20211564001/31250000000"
              ]
            ],
            "raw": [
              "357787/1000000",
              "725201/1000000"
            ],
            "new": [
              "357787/1000000",
              "725201/1000000"
            ]
          },
          {
            "factor": 152,
            "target": "y",
            "old": [
              "43877/100000",
              "872969/1000000"
            ],
            "lines": [
              [
                "573887/1000000",
                "-25006187691/62500000000"
              ],
              [
                "762839/1000000",
                "-14636987829/31250000000"
              ],
              [
                "251949/500000",
                "-25006187691/62500000000"
              ],
              [
                "13857/20000",
                "-14636987829/31250000000"
              ],
              [
                "573887/1000000",
                "-533547299/1000000000"
              ],
              [
                "762839/1000000",
                "-338539981/500000000"
              ],
              [
                "251949/500000",
                "-533547299/1000000000"
              ],
              [
                "13857/20000",
                "-338539981/500000000"
              ],
              [
                "573887/1000000",
                "-133213871223/500000000000"
              ],
              [
                "762839/1000000",
                "-167356174959/500000000000"
              ],
              [
                "251949/500000",
                "-133213871223/500000000000"
              ],
              [
                "13857/20000",
                "-167356174959/500000000000"
              ],
              [
                "573887/1000000",
                "-2020587247/8000000000"
              ],
              [
                "762839/1000000",
                "-3168848551/8000000000"
              ],
              [
                "251949/500000",
                "-2020587247/8000000000"
              ],
              [
                "13857/20000",
                "-3168848551/8000000000"
              ]
            ],
            "raw": [
              "167356174959/381419500000",
              "872969/1000000"
            ],
            "new": [
              "438771/1000000",
              "872969/1000000"
            ]
          }
        ]
      }
    },
    {
      "id": 12,
      "assumptions": [
        "AGO-",
        "AGP-",
        "DGP+",
        "AFG+",
        "FGO+",
        "EGO-"
      ],
      "initial_box": {
        "low": [
          "139/1000",
          "108013/1000000",
          "13857/20000",
          "120187/1000000",
          "42297/100000",
          "688133/1000000",
          "118963/1000000",
          "157797/250000",
          "180693/500000",
          "178877/500000",
          "438771/1000000",
          "357787/1000000",
          "86017/500000"
        ],
        "high": [
          "126953/250000",
          "300089/1000000",
          "440901/500000",
          "604217/1000000",
          "907/1000",
          "440901/500000",
          "23619/125000",
          "1",
          "6077/8000",
          "727639/1000000",
          "872969/1000000",
          "725201/1000000",
          "146229/250000"
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
        "DGP": 1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DOP": 1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "DGH": -1,
        "GOP": -1,
        "BDG": 1,
        "EGP": 1,
        "FGP": 1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "CFO": 1,
        "DFO": 1,
        "DHP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEG": 1,
        "BEO": 1,
        "AOP": -1,
        "AFG": 1,
        "AEG": 1,
        "BFG": 1,
        "FGO": 1,
        "AFP": -1,
        "EGO": -1,
        "AEO": 1
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
            "DCGOP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDG",
            "CDO",
            "DGP",
            "CDP",
            "DGO"
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
            "GADHP"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ADG",
            "GHP",
            "AGH",
            "DGP",
            "AGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GADOP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ADG",
            "AGO",
            "DGP",
            "AGP",
            "DGO"
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
            "GCDEP"
          ],
          "target": "EGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CEG",
            "DGP",
            "CGP",
            "DEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFP"
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CFG",
            "DGP",
            "CGP",
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
            "PCDGH"
          ],
          "target": "DHP",
          "sign": 1,
          "deps": [
            "CDP",
            "GHP",
            "CGP",
            "CHP",
            "DGP"
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
            "PDEFG"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FGP",
            "EGP",
            "DGP",
            "EFP"
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
          "target": "BEG",
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
              "80480253/125000000"
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
        },
        {
          "rule": [
            "ray",
            "AFG",
            "OP",
            "AFG",
            [
              "area",
              "AFG",
              "U_AFG",
              "1779364893/4000000000"
            ]
          ],
          "target": "AFP",
          "sign": -1,
          "deps": [
            "FGO",
            "AGO",
            "FGP",
            "AGP",
            "AOP"
          ],
          "area_stage": 8
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
        "L_EFG": {
          "triangle": "EFG",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EFG",
            "points": [
              "O"
            ]
          }
        },
        "L_EGO": {
          "triangle": "EGO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GEO",
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
            "triangle": "OGP",
            "points": []
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
              "392761/1000000",
              "581713/1000000",
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
              "61976507517/250000000000",
              "91792566261/250000000000",
              "92285524089/250000000000",
              "392761/1000000",
              "122101582833/250000000000",
              "581713/1000000",
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
              "4002518791/8000000000",
              "251096671119/500000000000",
              "4365873487/8000000000",
              "4562430791/8000000000",
              "286091171119/500000000000",
              "35761412967/62500000000",
              "4925785487/8000000000",
              "311430367383/500000000000",
              "40135725467/62500000000",
              "647430663/1000000000",
              "346424867383/500000000000",
              "13857/20000",
              "717419663/1000000000",
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
              "688133/1000000",
              "172468171551/250000000000",
              "189890112807/250000000000",
              "25378569843/31250000000",
              "440901/500000"
            ],
            "cell": "CA"
          }
        },
        "U_CGO": {
          "triangle": "CGO",
          "side": "hi",
          "value": "610222449073/1000000000000",
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
              "-1881549493/20000000000",
              "-63368331131/1000000000000",
              "-16725734821/500000000000",
              "-2742326123/1000000000000",
              "49998413151/500000000000",
              "57309438411/500000000000",
              "130705969821/1000000000000",
              "145328020341/1000000000000",
              "92670017081/500000000000",
              "7475856739/40000000000",
              "4135132193/20000000000",
              "108802780997/500000000000",
              "1825531929/7812500000",
              "246438261503/1000000000000",
              "247522423483/1000000000000",
              "31036267179/125000000000",
              "264377230431/1000000000000",
              "267854836991/1000000000000",
              "139115783501/500000000000",
              "278999280951/1000000000000",
              "159394165053/500000000000",
              "379886557447/1000000000000",
              "207726480561/500000000000",
              "113114897679/250000000000",
              "466313927287/1000000000000",
              "476551188463/1000000000000",
              "19509220111/40000000000",
              "513557818057/1000000000000",
              "131853038657/250000000000",
              "137207182529/250000000000",
              "137281055433/250000000000",
              "610222449073/1000000000000"
            ],
            "cell": "CA"
          }
        },
        "U_FGP": {
          "triangle": "FGP",
          "side": "hi",
          "value": "593961790099/1000000000000",
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
              "-4705236581/100000000000",
              "-9000525867/500000000000",
              "-23509589/6250000000",
              "6322444959/250000000000",
              "63897563227/500000000000",
              "15684644053/100000000000",
              "6465233751/40000000000",
              "93791679193/500000000000",
              "190682157851/1000000000000",
              "101170657701/500000000000",
              "13507016669/62500000000",
              "108317336231/500000000000",
              "57718547489/250000000000",
              "23901292789/100000000000",
              "12258179039/50000000000",
              "9997919361/40000000000",
              "8122672001/31250000000",
              "4067028559/15625000000",
              "278999298101/1000000000000",
              "37120180033/125000000000",
              "10434311753/31250000000",
              "39184648847/100000000000",
              "211107558173/500000000000",
              "218488519799/500000000000",
              "17907845499/40000000000",
              "236824326043/500000000000",
              "6002045359/12500000000",
              "123731387993/250000000000",
              "505644649849/1000000000000",
              "26579858223/50000000000",
              "21440531109/40000000000",
              "593961790099/1000000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "482": {
          "row": [
            "plu",
            "CFG",
            "FHO",
            "CFH",
            "FGO",
            "CFO",
            "FGH"
          ],
          "witness": {
            "kind": "plu",
            "word": "FCGHO"
          }
        },
        "1252": {
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
        "3796": {
          "row": [
            "linear",
            {
              "BFG": "-93/1000",
              "CFG": "-93/1000",
              "FGH": "587789/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "BCH",
            "point": "G",
            "line": "FG",
            "side": "lower",
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
        "4457": {
          "row": [
            "linear",
            {
              "CFG": "390839/1000000",
              "CFO": "-762839/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFG",
            "point": "O",
            "line": "CF",
            "side": "upper",
            "outer_upper": {
              "triangle": "CFG",
              "ref": "U_CFG",
              "value": "762839/1000000"
            },
            "fan_lower": [
              {
                "triangle": "FGO",
                "ref": "L_FGO",
                "value": "93/1000"
              },
              {
                "triangle": "CGO",
                "ref": "L_CGO",
                "value": "279/1000"
              },
              {
                "triangle": "CFO",
                "ref": "L_CFO",
                "value": "93/1000"
              }
            ],
            "residual": "297839/1000000"
          }
        },
        "4527": {
          "row": [
            "linear",
            {
              "CFG": "390839/1000000",
              "CFP": "-762839/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFG",
            "point": "P",
            "line": "CF",
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
                "value": "279/1000"
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
            "residual": "297839/1000000"
          }
        },
        "4664": {
          "row": [
            "linear",
            {
              "BCF": "-93/1000",
              "BCH": "-93/1000",
              "BCP": "440901/500000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFH",
            "point": "P",
            "line": "BC",
            "side": "lower",
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
        "4775": {
          "row": [
            "linear",
            {
              "FGO": "-93/1000",
              "CFO": "424222449073/1000000000000",
              "FOP": "-610222449073/1000000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "GCO",
            "point": "P",
            "line": "FO",
            "side": "upper",
            "outer_upper": {
              "triangle": "CGO",
              "ref": "U_CGO",
              "value": "610222449073/1000000000000"
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
            "residual": "331222449073/1000000000000"
          }
        },
        "5030": {
          "row": [
            "linear",
            {
              "CFP": "407961790099/1000000000000",
              "CGP": "-93/1000",
              "COP": "-593961790099/1000000000000"
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
              "value": "593961790099/1000000000000"
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
            "residual": "314961790099/1000000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0064",
          "relation": 1252,
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
          "id": "T0088",
          "relation": 3796,
          "rule": "linear",
          "triangle": "FGH",
          "side": "lo",
          "value": "136327/1000000",
          "sources": [
            "T0064",
            "L_CFG"
          ]
        },
        {
          "id": "T0105",
          "relation": 4775,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "154163/1000000",
          "sources": [
            "L_FGO",
            "L_FOP"
          ]
        },
        {
          "id": "T0110",
          "relation": 5030,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "156601/1000000",
          "sources": [
            "L_CGP",
            "L_COP"
          ]
        },
        {
          "id": "T0161",
          "relation": 482,
          "rule": "sumlo",
          "triangle": "FHO",
          "side": "lo",
          "value": "112017/1000000",
          "sources": [
            "L_CFH",
            "L_FGO",
            "T0105",
            "T0088",
            "U_CFG"
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
              "-112017/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FHO",
            "side": "lo",
            "reference": "T0161",
            "value": "112017/1000000"
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
              "-13857/20000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFG",
            "side": "lo",
            "reference": "L_CFG",
            "value": "13857/20000"
          }
        },
        "178": {
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
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FGP",
            "side": "lo",
            "reference": "L_FGP",
            "value": "279/1000"
          }
        },
        "190": {
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
              "-154163/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFO",
            "side": "lo",
            "reference": "T0105",
            "value": "154163/1000000"
          }
        },
        "196": {
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
              "-156601/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "lo",
            "reference": "T0110",
            "value": "156601/1000000"
          }
        },
        "206": {
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
        "212": {
          "name": "AREA_LO_FGO",
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
                6
              ],
              "-1"
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
                8,
                9
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
            "triangle": "FGO",
            "side": "lo",
            "reference": "L_FGO",
            "value": "93/1000"
          }
        },
        "216": {
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
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "EGO",
            "side": "lo",
            "reference": "L_EGO",
            "value": "93/1000"
          }
        },
        "227": {
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
        "235": {
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
        "2893": {
          "name": "LINEAR_4457",
          "terms": [
            [
              [
                5,
                8
              ],
              "390839/1000000"
            ],
            [
              [
                2,
                8
              ],
              "-390839/1000000"
            ],
            [
              [
                6
              ],
              "-390839/1000000"
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
              "-762839/1000000"
            ],
            [
              [
                2,
                10
              ],
              "762839/1000000"
            ],
            [
              [
                9
              ],
              "762839/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 4457
          }
        },
        "2963": {
          "name": "LINEAR_4527",
          "terms": [
            [
              [
                5,
                8
              ],
              "390839/1000000"
            ],
            [
              [
                2,
                8
              ],
              "-390839/1000000"
            ],
            [
              [
                6
              ],
              "-390839/1000000"
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
              "-762839/1000000"
            ],
            [
              [
                2,
                12
              ],
              "762839/1000000"
            ],
            [
              [
                11
              ],
              "762839/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 4527
          }
        },
        "3100": {
          "name": "LINEAR_4664",
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
                12
              ],
              "440901/500000"
            ],
            [
              [
                1,
                12
              ],
              "-440901/500000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 4664
          }
        }
      },
      "coordinate": {
        "low": [
          "139/1000",
          "108013/1000000",
          "175371/250000",
          "120187/1000000",
          "42297/100000",
          "175371/250000",
          "119219/1000000",
          "65723/100000",
          "362537/1000000",
          "185401/500000",
          "484473/1000000",
          "91457/250000",
          "174781/1000000"
        ],
        "high": [
          "126953/250000",
          "281639/1000000",
          "874247/1000000",
          "139237/250000",
          "859731/1000000",
          "874247/1000000",
          "181397/1000000",
          "1/1",
          "189387/250000",
          "180021/250000",
          "26897/31250",
          "358823/500000",
          "291379/500000"
        ],
        "steps": [
          {
            "factor": 78,
            "target": "e",
            "old": [
              "42297/100000",
              "907/1000"
            ],
            "lines": [
              [
                "-56917/100000",
                "244666316169/500000000000"
              ],
              [
                "-762839/1000000",
                "139830474393/250000000000"
              ],
              [
                "-499181/1000000",
                "209671816169/500000000000"
              ],
              [
                "-13857/20000",
                "122333224393/250000000000"
              ],
              [
                "-56917/100000",
                "2921080241/8000000000"
              ],
              [
                "-762839/1000000",
                "2049003377/4000000000"
              ],
              [
                "-499181/1000000",
                "2361168241/8000000000"
              ],
              [
                "-13857/20000",
                "1769047377/4000000000"
              ]
            ],
            "raw": [
              "42297/100000",
              "244666316169/284585000000"
            ],
            "new": [
              "42297/100000",
              "859731/1000000"
            ]
          },
          {
            "factor": 216,
            "target": "y",
            "old": [
              "438771/1000000",
              "872969/1000000"
            ],
            "lines": [
              [
                "881037/1000000",
                "-213050071113/500000000000"
              ],
              [
                "881037/1000000",
                "-530394738177/1000000000000"
              ],
              [
                "101381/125000",
                "-24781055931/62500000000"
              ],
              [
                "101381/125000",
                "-235111512609/500000000000"
              ],
              [
                "881037/1000000",
                "-34093377351/50000000000"
              ],
              [
                "881037/1000000",
                "-786162142971/1000000000000"
              ],
              [
                "101381/125000",
                "-65226429969/100000000000"
              ],
              [
                "101381/125000",
                "-181497607503/250000000000"
              ],
              [
                "881037/1000000",
                "-224439570033/500000000000"
              ],
              [
                "881037/1000000",
                "-357362539251/500000000000"
              ],
              [
                "101381/125000",
                "-204724557/488281250"
              ],
              [
                "101381/125000",
                "-654553365543/1000000000000"
              ],
              [
                "881037/1000000",
                "-111468782469/200000000000"
              ],
              [
                "881037/1000000",
                "-823189850781/1000000000000"
              ],
              [
                "101381/125000",
                "-105548133003/200000000000"
              ],
              [
                "101381/125000",
                "-381509068911/500000000000"
              ]
            ],
            "raw": [
              "71016690371/146839500000",
              "872969/1000000"
            ],
            "new": [
              "241817/500000",
              "872969/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "13857/20000",
              "440901/500000"
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
                "-92443/125000",
                "40409/62500"
              ],
              [
                "-127757/500000",
                "81257/500000"
              ]
            ],
            "raw": [
              "13857/20000",
              "80818/92443"
            ],
            "new": [
              "13857/20000",
              "874247/1000000"
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
                "-6143/20000",
                "73830471/2000000000"
              ],
              [
                "-125753/1000000",
                "-3981025359/100000000000"
              ],
              [
                "-6143/20000",
                "3421327533/20000000000"
              ],
              [
                "-125753/1000000",
                "15113752443/1000000000000"
              ]
            ],
            "raw": [
              "120187/1000000",
              "3421327533/6143000000"
            ],
            "new": [
              "120187/1000000",
              "139237/250000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "688133/1000000",
              "440901/500000"
            ],
            "lines": [
              [
                "-302783/1000000",
                "209783/1000000"
              ],
              [
                "66989/500000",
                "-113489/500000"
              ],
              [
                "-92443/125000",
                "40409/62500"
              ]
            ],
            "raw": [
              "688133/1000000",
              "80818/92443"
            ],
            "new": [
              "688133/1000000",
              "874247/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "180693/500000",
              "6077/8000"
            ],
            "lines": [
              [
                "-13857/20000",
                "67307646939/250000000000"
              ],
              [
                "-874247/1000000",
                "23982887337/62500000000"
              ],
              [
                "-13857/20000",
                "28131796353/125000000000"
              ],
              [
                "-874247/1000000",
                "16977499023/50000000000"
              ],
              [
                "-13857/20000",
                "480887/1000000"
              ],
              [
                "-874247/1000000",
                "165571/250000"
              ],
              [
                "-13857/20000",
                "205449/500000"
              ],
              [
                "-874247/1000000",
                "118459/200000"
              ]
            ],
            "raw": [
              "180693/500000",
              "662284/874247"
            ],
            "new": [
              "180693/500000",
              "189387/250000"
            ]
          },
          {
            "factor": 96,
            "target": "y",
            "old": [
              "241817/500000",
              "872969/1000000"
            ],
            "lines": [
              [
                "-688133/1000000",
                "113567065063/250000000000"
              ],
              [
                "-874247/1000000",
                "142935295921/250000000000"
              ],
              [
                "-688133/1000000",
                "144029/250000"
              ],
              [
                "-874247/1000000",
                "76223/100000"
              ],
              [
                "-688133/1000000",
                "73835785859/125000000000"
              ],
              [
                "-874247/1000000",
                "11064987661/15625000000"
              ]
            ],
            "raw": [
              "241817/500000",
              "762230/874247"
            ],
            "new": [
              "241817/500000",
              "871871/1000000"
            ]
          },
          {
            "factor": 150,
            "target": "f",
            "old": [
              "688133/1000000",
              "874247/1000000"
            ],
            "lines": [
              [
                "180693/500000",
                "-3693492901/10000000000"
              ],
              [
                "180693/500000",
                "-126753313171/500000000000"
              ],
              [
                "180693/500000",
                "-4393382901/10000000000"
              ],
              [
                "180693/500000",
                "-161747813171/500000000000"
              ],
              [
                "189387/250000",
                "-3219150659/5000000000"
              ],
              [
                "189387/250000",
                "-149962516589/250000000000"
              ],
              [
                "189387/250000",
                "-3569095659/5000000000"
              ],
              [
                "189387/250000",
                "-167459766589/250000000000"
              ]
            ],
            "raw": [
              "126753313171/180693000000",
              "874247/1000000"
            ],
            "new": [
              "175371/250000",
              "874247/1000000"
            ]
          },
          {
            "factor": 150,
            "target": "g",
            "old": [
              "118963/1000000",
              "23619/125000"
            ],
            "lines": [
              [
                "-1/1",
                "780051681/250000000000"
              ],
              [
                "-1/1",
                "59481435241/500000000000"
              ],
              [
                "-1/1",
                "32777168121/500000000000"
              ],
              [
                "-1/1",
                "181397/1000000"
              ],
              [
                "-1/1",
                "817583679/125000000000"
              ],
              [
                "-1/1",
                "12630183719/250000000000"
              ],
              [
                "-1/1",
                "34354233639/250000000000"
              ]
            ],
            "raw": [
              "118963/1000000",
              "181397/1000000"
            ],
            "new": [
              "118963/1000000",
              "181397/1000000"
            ]
          },
          {
            "factor": 178,
            "target": "v",
            "old": [
              "86017/500000",
              "146229/250000"
            ],
            "lines": [
              [
                "-582521/1000000",
                "42015642021/500000000000"
              ],
              [
                "-188821/250000",
                "3661635339/25000000000"
              ],
              [
                "-520087/1000000",
                "10798642021/500000000000"
              ],
              [
                "-13857/20000",
                "2100785339/25000000000"
              ],
              [
                "-582521/1000000",
                "55047743739/250000000000"
              ],
              [
                "-188821/250000",
                "4388340501/12500000000"
              ],
              [
                "-520087/1000000",
                "39439243739/250000000000"
              ],
              [
                "-13857/20000",
                "3607915501/12500000000"
              ],
              [
                "-582521/1000000",
                "159333504119/500000000000"
              ],
              [
                "-188821/250000",
                "95275284439/250000000000"
              ],
              [
                "-520087/1000000",
                "128116504119/500000000000"
              ],
              [
                "-13857/20000",
                "79666784439/250000000000"
              ],
              [
                "-582521/1000000",
                "77317808521/250000000000"
              ],
              [
                "-188821/250000",
                "55018437401/125000000000"
              ],
              [
                "-520087/1000000",
                "61709308521/250000000000"
              ],
              [
                "-13857/20000",
                "47214187401/125000000000"
              ]
            ],
            "raw": [
              "86017/500000",
              "55018437401/94410500000"
            ],
            "new": [
              "86017/500000",
              "291379/500000"
            ]
          },
          {
            "factor": 190,
            "target": "x",
            "old": [
              "178877/500000",
              "727639/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "135715673989/250000000000"
              ],
              [
                "-1/1",
                "318264969629/500000000000"
              ],
              [
                "-1/1",
                "313208378349/500000000000"
              ],
              [
                "-1/1",
                "180021/250000"
              ],
              [
                "-1/1",
                "273107367107/500000000000"
              ],
              [
                "-1/1",
                "569456950427/1000000000000"
              ],
              [
                "-1/1",
                "696841783787/1000000000000"
              ]
            ],
            "raw": [
              "178877/500000",
              "180021/250000"
            ],
            "new": [
              "178877/500000",
              "180021/250000"
            ]
          },
          {
            "factor": 196,
            "target": "u",
            "old": [
              "357787/1000000",
              "725201/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "134433585389/250000000000"
              ],
              [
                "-1/1",
                "343962445029/500000000000"
              ],
              [
                "-1/1",
                "283727725749/500000000000"
              ],
              [
                "-1/1",
                "358823/500000"
              ],
              [
                "-1/1",
                "135320133143/250000000000"
              ],
              [
                "-1/1",
                "308483489823/500000000000"
              ],
              [
                "-1/1",
                "320979776463/500000000000"
              ]
            ],
            "raw": [
              "357787/1000000",
              "358823/500000"
            ],
            "new": [
              "357787/1000000",
              "358823/500000"
            ]
          },
          {
            "factor": 206,
            "target": "z",
            "old": [
              "180693/500000",
              "189387/250000"
            ],
            "lines": [
              [
                "175371/250000",
                "-292933419/1000000000"
              ],
              [
                "175371/250000",
                "-126943538513/250000000000"
              ],
              [
                "874247/1000000",
                "-79236869/250000000"
              ],
              [
                "874247/1000000",
                "-37219079913/62500000000"
              ],
              [
                "175371/250000",
                "-346689093/1000000000"
              ],
              [
                "175371/250000",
                "-134625854911/250000000000"
              ],
              [
                "874247/1000000",
                "-7414063/20000000"
              ],
              [
                "874247/1000000",
                "-3131172721/5000000000"
              ]
            ],
            "raw": [
              "79236869/218561750",
              "189387/250000"
            ],
            "new": [
              "362537/1000000",
              "189387/250000"
            ]
          },
          {
            "factor": 212,
            "target": "y",
            "old": [
              "241817/500000",
              "871871/1000000"
            ],
            "lines": [
              [
                "-582521/1000000",
                "27040584301/100000000000"
              ],
              [
                "-188821/250000",
                "333038822741/1000000000000"
              ],
              [
                "-520087/1000000",
                "20797184301/100000000000"
              ],
              [
                "-13857/20000",
                "270604822741/1000000000000"
              ],
              [
                "-582521/1000000",
                "10154574351/25000000000"
              ],
              [
                "-188821/250000",
                "134264809791/250000000000"
              ],
              [
                "-520087/1000000",
                "8593724351/25000000000"
              ],
              [
                "-13857/20000",
                "118656309791/250000000000"
              ],
              [
                "-582521/1000000",
                "2506889059/5000000000"
              ],
              [
                "-188821/250000",
                "564010791531/1000000000000"
              ],
              [
                "-520087/1000000",
                "2194719059/5000000000"
              ],
              [
                "-13857/20000",
                "501576791531/1000000000000"
              ],
              [
                "-582521/1000000",
                "617538259/1250000000"
              ],
              [
                "-188821/250000",
                "156226718081/250000000000"
              ],
              [
                "-520087/1000000",
                "539495759/1250000000"
              ],
              [
                "-13857/20000",
                "140618218081/250000000000"
              ]
            ],
            "raw": [
              "241817/500000",
              "80867389/93955000"
            ],
            "new": [
              "241817/500000",
              "26897/31250"
            ]
          },
          {
            "factor": 216,
            "target": "y",
            "old": [
              "241817/500000",
              "26897/31250"
            ],
            "lines": [
              [
                "881037/1000000",
                "-106709841843/250000000000"
              ],
              [
                "881037/1000000",
                "-531133963323/1000000000000"
              ],
              [
                "818603/1000000",
                "-50053957299/125000000000"
              ],
              [
                "818603/1000000",
                "-477457518069/1000000000000"
              ],
              [
                "881037/1000000",
                "-340266801039/500000000000"
              ],
              [
                "881037/1000000",
                "-784828198029/1000000000000"
              ],
              [
                "818603/1000000",
                "-327062946549/500000000000"
              ],
              [
                "818603/1000000",
                "-29246070111/40000000000"
              ],
              [
                "881037/1000000",
                "-224368028131/500000000000"
              ],
              [
                "881037/1000000",
                "-711282265343/1000000000000"
              ],
              [
                "818603/1000000",
                "-211164173641/500000000000"
              ],
              [
                "818603/1000000",
                "-657605820089/1000000000000"
              ],
              [
                "881037/1000000",
                "-279652977669/500000000000"
              ],
              [
                "881037/1000000",
                "-821852164419/1000000000000"
              ],
              [
                "818603/1000000",
                "-266449123179/500000000000"
              ],
              [
                "818603/1000000",
                "-153635143833/200000000000"
              ]
            ],
            "raw": [
              "35569947281/73419750000",
              "26897/31250"
            ],
            "new": [
              "484473/1000000",
              "26897/31250"
            ]
          },
          {
            "factor": 227,
            "target": "c",
            "old": [
              "13857/20000",
              "874247/1000000"
            ],
            "lines": [
              [
                "1/1",
                "-175371/250000"
              ],
              [
                "1/1",
                "-874247/1000000"
              ]
            ],
            "raw": [
              "175371/250000",
              "874247/1000000"
            ],
            "new": [
              "175371/250000",
              "874247/1000000"
            ]
          },
          {
            "factor": 235,
            "target": "b",
            "old": [
              "108013/1000000",
              "300089/1000000"
            ],
            "lines": [
              [
                "-42022004511/250000000000",
                "-785310546901419/62500000000000000"
              ],
              [
                "-42022004511/250000000000",
                "-3914874122271783/250000000000000000"
              ],
              [
                "-51873902409/250000000000",
                "942426639368739/62500000000000000"
              ],
              [
                "-51873902409/250000000000",
                "4698118059361023/250000000000000000"
              ],
              [
                "-211963/1000000",
                "4553157273/250000000000"
              ],
              [
                "-211963/1000000",
                "22698074861/1000000000000"
              ],
              [
                "-274397/1000000",
                "15502270287/250000000000"
              ],
              [
                "-274397/1000000",
                "77280812059/1000000000000"
              ]
            ],
            "raw": [
              "108013/1000000",
              "77280812059/274397000000"
            ],
            "new": [
              "108013/1000000",
              "281639/1000000"
            ]
          },
          {
            "factor": 235,
            "target": "g",
            "old": [
              "118963/1000000",
              "181397/1000000"
            ],
            "lines": [
              [
                "93647943387/250000000000",
                "-75283221/1000000000"
              ],
              [
                "13250056293/50000000000",
                "-91430439/1000000000"
              ],
              [
                "60454713249/125000000000",
                "-4567509/50000000"
              ],
              [
                "2922242643/7812500000",
                "-53748699/500000000"
              ],
              [
                "593471/1000000",
                "-75283221/1000000000"
              ],
              [
                "83969/200000",
                "-91430439/1000000000"
              ],
              [
                "383117/500000",
                "-4567509/50000000"
              ],
              [
                "18519/31250",
                "-53748699/500000000"
              ]
            ],
            "raw": [
              "4567509/38311700",
              "181397/1000000"
            ],
            "new": [
              "119219/1000000",
              "181397/1000000"
            ]
          },
          {
            "factor": 235,
            "target": "h",
            "old": [
              "157797/250000",
              "1/1"
            ],
            "lines": [
              [
                "70753019149/1000000000000",
                "-75283221/1000000000"
              ],
              [
                "10010700211/200000000000",
                "-91430439/1000000000"
              ],
              [
                "45674825623/500000000000",
                "-4567509/50000000"
              ],
              [
                "2207816661/31250000000",
                "-53748699/500000000"
              ],
              [
                "107653858987/1000000000000",
                "-75283221/1000000000"
              ],
              [
                "15231724693/200000000000",
                "-91430439/1000000000"
              ],
              [
                "69496274449/500000000000",
                "-4567509/50000000"
              ],
              [
                "3359291043/31250000000",
                "-53748699/500000000"
              ]
            ],
            "raw": [
              "45675090000/69496274449",
              "1/1"
            ],
            "new": [
              "65723/100000",
              "1/1"
            ]
          },
          {
            "factor": 2893,
            "target": "x",
            "old": [
              "178877/500000",
              "180021/250000"
            ],
            "lines": [
              [
                "762839/1000000",
                "-307547482741/1000000000000"
              ],
              [
                "762839/1000000",
                "-20777866353536253/62500000000000000"
              ],
              [
                "762839/1000000",
                "-21682308739088747/62500000000000000"
              ],
              [
                "762839/1000000",
                "-371815318741/1000000000000"
              ],
              [
                "762839/1000000",
                "-331849070083/1000000000000"
              ],
              [
                "762839/1000000",
                "-22296715562411253/62500000000000000"
              ],
              [
                "762839/1000000",
                "-23201157947963747/62500000000000000"
              ],
              [
                "762839/1000000",
                "-396116906083/1000000000000"
              ],
              [
                "762839/1000000",
                "-14364719963051791/40000000000000000"
              ],
              [
                "762839/1000000",
                "-12809792096228209/40000000000000000"
              ],
              [
                "762839/1000000",
                "-15336783456731791/40000000000000000"
              ],
              [
                "762839/1000000",
                "-13781855589908209/40000000000000000"
              ],
              [
                "762839/1000000",
                "-282862244921737781/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-396500556560262219/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-307163832263737781/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-420802143902262219/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-77383595585363127/250000000000000000"
              ],
              [
                "762839/1000000",
                "-92457104785136873/250000000000000000"
              ],
              [
                "762839/1000000",
                "-83458992420863127/250000000000000000"
              ],
              [
                "762839/1000000",
                "-98532501620636873/250000000000000000"
              ]
            ],
            "raw": [
              "282862244921737781/762839000000000000",
              "180021/250000"
            ],
            "new": [
              "185401/500000",
              "180021/250000"
            ]
          },
          {
            "factor": 2963,
            "target": "u",
            "old": [
              "357787/1000000",
              "358823/500000"
            ],
            "lines": [
              [
                "762839/1000000",
                "-307547482741/1000000000000"
              ],
              [
                "762839/1000000",
                "-373622308119038971/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-305740493362961029/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-371815318741/1000000000000"
              ],
              [
                "762839/1000000",
                "-331849070083/1000000000000"
              ],
              [
                "762839/1000000",
                "-397923895461038971/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-330042080704961029/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-396116906083/1000000000000"
              ],
              [
                "762839/1000000",
                "-200147222769376849/500000000000000000"
              ],
              [
                "762839/1000000",
                "-139534177971623151/500000000000000000"
              ],
              [
                "762839/1000000",
                "-212298016440376849/500000000000000000"
              ],
              [
                "762839/1000000",
                "-151684971642623151/500000000000000000"
              ],
              [
                "762839/1000000",
                "-319492846698259303/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-359869954783740697/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-343794434040259303/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-384171542125740697/1000000000000000000"
              ],
              [
                "762839/1000000",
                "-34616498411797403/100000000000000000"
              ],
              [
                "762839/1000000",
                "-33319781736402597/100000000000000000"
              ],
              [
                "762839/1000000",
                "-37046657145997403/100000000000000000"
              ],
              [
                "762839/1000000",
                "-35749940470602597/100000000000000000"
              ]
            ],
            "raw": [
              "139534177971623151/381419500000000000",
              "358823/500000"
            ],
            "new": [
              "91457/250000",
              "358823/500000"
            ]
          },
          {
            "factor": 3100,
            "target": "v",
            "old": [
              "86017/500000",
              "291379/500000"
            ],
            "lines": [
              [
                "261661957371/500000000000",
                "-9146716891569/100000000000000"
              ],
              [
                "37022016069/100000000000",
                "-1294150296591/20000000000000"
              ],
              [
                "168916668417/250000000000",
                "-5904690768963/50000000000000"
              ],
              [
                "8165045619/15625000000",
                "-285419254041/3125000000000"
              ],
              [
                "261661957371/500000000000",
                "-55192803/500000000"
              ],
              [
                "37022016069/100000000000",
                "-7809117/100000000"
              ],
              [
                "168916668417/250000000000",
                "-35629881/250000000"
              ],
              [
                "8165045619/15625000000",
                "-1722267/15625000"
              ]
            ],
            "raw": [
              "1712471/9797800",
              "291379/500000"
            ],
            "new": [
              "174781/1000000",
              "291379/500000"
            ]
          }
        ]
      }
    },
    {
      "id": 13,
      "assumptions": [
        "AGO-",
        "AGP-",
        "DGP+",
        "AFG+",
        "FGO+",
        "EGO-"
      ],
      "initial_box": {
        "low": [
          "139/1000",
          "108013/1000000",
          "175371/250000",
          "120187/1000000",
          "42297/100000",
          "175371/250000",
          "119219/1000000",
          "65723/100000",
          "362537/1000000",
          "185401/500000",
          "484473/1000000",
          "91457/250000",
          "174781/1000000"
        ],
        "high": [
          "126953/250000",
          "281639/1000000",
          "874247/1000000",
          "139237/250000",
          "859731/1000000",
          "874247/1000000",
          "181397/1000000",
          "1",
          "189387/250000",
          "180021/250000",
          "26897/31250",
          "358823/500000",
          "291379/500000"
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
        "DGP": 1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DOP": 1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "DGH": -1,
        "GOP": -1,
        "BDG": 1,
        "EGP": 1,
        "FGP": 1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "CFO": 1,
        "DFO": 1,
        "DHP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEG": 1,
        "BEO": 1,
        "AOP": -1,
        "AFG": 1,
        "AEG": 1,
        "BFG": 1,
        "FGO": 1,
        "AFP": -1,
        "EGO": -1,
        "AEO": 1
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
            "DCGOP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDG",
            "CDO",
            "DGP",
            "CDP",
            "DGO"
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
            "GADHP"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ADG",
            "GHP",
            "AGH",
            "DGP",
            "AGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GADOP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ADG",
            "AGO",
            "DGP",
            "AGP",
            "DGO"
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
            "GCDEP"
          ],
          "target": "EGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CEG",
            "DGP",
            "CGP",
            "DEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFP"
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CFG",
            "DGP",
            "CGP",
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
            "PCDGH"
          ],
          "target": "DHP",
          "sign": 1,
          "deps": [
            "CDP",
            "GHP",
            "CGP",
            "CHP",
            "DGP"
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
            "PDEFG"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FGP",
            "EGP",
            "DGP",
            "EFP"
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
          "target": "BEG",
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
              "80480253/125000000"
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
        },
        {
          "rule": [
            "ray",
            "AFG",
            "OP",
            "AFG",
            [
              "area",
              "AFG",
              "U_AFG",
              "1779364893/4000000000"
            ]
          ],
          "target": "AFP",
          "sign": -1,
          "deps": [
            "FGO",
            "AGO",
            "FGP",
            "AGP",
            "AOP"
          ],
          "area_stage": 8
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
        "L_EFG": {
          "triangle": "EFG",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "EFG",
            "points": [
              "O"
            ]
          }
        },
        "L_EGO": {
          "triangle": "EGO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GEO",
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
            "triangle": "OGP",
            "points": []
          }
        },
        "U_CDH": {
          "triangle": "CDH",
          "side": "hi",
          "value": "43075381927/62500000000",
          "witness": {
            "kind": "vertices",
            "signed": "CDH",
            "used": [
              2,
              3,
              7
            ],
            "values": [
              "187721768379/1000000000000",
              "230826124189/1000000000000",
              "70125732047/250000000000",
              "95706314377/250000000000",
              "284779381173/500000000000",
              "73360472689/125000000000",
              "153165779539/250000000000",
              "43075381927/62500000000"
            ],
            "cell": "CA"
          }
        },
        "U_CFG": {
          "triangle": "CFG",
          "side": "hi",
          "value": "188757/250000",
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
              "520087/1000000",
              "140493433719/250000000000",
              "116453/200000",
              "582719979731/1000000000000",
              "156037933719/250000000000",
              "630217020269/1000000000000",
              "644897979731/1000000000000",
              "162740816281/250000000000",
              "692395020269/1000000000000",
              "13857/20000",
              "178285316281/250000000000",
              "188757/250000"
            ],
            "cell": "CA"
          }
        },
        "U_CFH": {
          "triangle": "CFH",
          "side": "hi",
          "value": "874247/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "CFH",
            "used": [
              2,
              5,
              7
            ],
            "values": [
              "175371/250000",
              "76070197351/100000000000",
              "81502902649/100000000000",
              "874247/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_FGP": {
          "triangle": "FGP",
          "side": "hi",
          "value": "14627380637/25000000000",
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
              "-35012181297/1000000000000",
              "-9068908221/1000000000000",
              "1516929663/500000000000",
              "14488566201/500000000000",
              "67810835771/500000000000",
              "80782472309/500000000000",
              "20727364539/125000000000",
              "189258776437/1000000000000",
              "47940547347/250000000000",
              "215202049513/1000000000000",
              "8608695733/40000000000",
              "110460324639/500000000000",
              "11365240853/50000000000",
              "123431961177/500000000000",
              "247654683153/1000000000000",
              "7847434189/31250000000",
              "31656011267/125000000000",
              "266527860307/1000000000000",
              "69265291781/250000000000",
              "59793030027/200000000000",
              "347805205541/1000000000000",
              "399115672523/1000000000000",
              "433104183277/1000000000000",
              "439488351059/1000000000000",
              "224242890381/500000000000",
              "471925640887/1000000000000",
              "484414650259/1000000000000",
              "490798818041/1000000000000",
              "7809316371/15625000000",
              "523236107869/1000000000000",
              "266892379249/500000000000",
              "14627380637/25000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "19": {
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
        "484": {
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
        "4457": {
          "row": [
            "linear",
            {
              "CFG": "95757/250000",
              "CFO": "-188757/250000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFG",
            "point": "O",
            "line": "CF",
            "side": "upper",
            "outer_upper": {
              "triangle": "CFG",
              "ref": "U_CFG",
              "value": "188757/250000"
            },
            "fan_lower": [
              {
                "triangle": "FGO",
                "ref": "L_FGO",
                "value": "93/1000"
              },
              {
                "triangle": "CGO",
                "ref": "L_CGO",
                "value": "279/1000"
              },
              {
                "triangle": "CFO",
                "ref": "L_CFO",
                "value": "93/1000"
              }
            ],
            "residual": "72507/250000"
          }
        },
        "4527": {
          "row": [
            "linear",
            {
              "CFG": "95757/250000",
              "CFP": "-188757/250000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFG",
            "point": "P",
            "line": "CF",
            "side": "upper",
            "outer_upper": {
              "triangle": "CFG",
              "ref": "U_CFG",
              "value": "188757/250000"
            },
            "fan_lower": [
              {
                "triangle": "FGP",
                "ref": "L_FGP",
                "value": "279/1000"
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
            "residual": "72507/250000"
          }
        },
        "4664": {
          "row": [
            "linear",
            {
              "BCF": "-93/1000",
              "BCH": "-93/1000",
              "BCP": "874247/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFH",
            "point": "P",
            "line": "BC",
            "side": "lower",
            "outer_upper": {
              "triangle": "CFH",
              "ref": "U_CFH",
              "value": "874247/1000000"
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
            "residual": "409247/1000000"
          }
        },
        "5030": {
          "row": [
            "linear",
            {
              "CFP": "9977380637/25000000000",
              "CGP": "-93/1000",
              "COP": "-14627380637/25000000000"
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
              "value": "14627380637/25000000000"
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
            "residual": "7652380637/25000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0109",
          "relation": 5030,
          "rule": "linear",
          "triangle": "CFP",
          "side": "lo",
          "value": "79007/500000",
          "sources": [
            "L_CGP",
            "L_COP"
          ]
        },
        {
          "id": "T0128",
          "relation": 19,
          "rule": "sub",
          "triangle": "FGP",
          "side": "hi",
          "value": "252007/500000",
          "sources": [
            "U_CFG",
            "T0109",
            "L_CGP"
          ]
        },
        {
          "id": "T0163",
          "relation": 484,
          "rule": "sumlo",
          "triangle": "CFO",
          "side": "lo",
          "value": "157/1000",
          "sources": [
            "L_CFG",
            "L_FOP",
            "T0109",
            "L_FGO",
            "T0128"
          ]
        }
      ],
      "physical": {
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
        "82": {
          "name": "AREA_LO_AGH",
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
            "triangle": "AGH",
            "side": "lo",
            "reference": "L_AGH",
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
              "-13857/20000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFG",
            "side": "lo",
            "reference": "L_CFG",
            "value": "13857/20000"
          }
        },
        "178": {
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
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FGP",
            "side": "lo",
            "reference": "L_FGP",
            "value": "279/1000"
          }
        },
        "190": {
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
              "-157/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFO",
            "side": "lo",
            "reference": "T0163",
            "value": "157/1000"
          }
        },
        "196": {
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
              "-79007/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "lo",
            "reference": "T0109",
            "value": "79007/500000"
          }
        },
        "212": {
          "name": "AREA_LO_FGO",
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
                6
              ],
              "-1"
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
                8,
                9
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
            "triangle": "FGO",
            "side": "lo",
            "reference": "L_FGO",
            "value": "93/1000"
          }
        },
        "216": {
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
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "EGO",
            "side": "lo",
            "reference": "L_EGO",
            "value": "93/1000"
          }
        },
        "227": {
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
        "235": {
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
        "240": {
          "name": "Central_endpoint_tangent_1",
          "terms": [
            [
              [
                0,
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
              "-1/5"
            ],
            [
              [
                2
              ],
              "1/100"
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
            "kind": "central_endpoint_tangent",
            "cell": "CA",
            "t": "1/10"
          }
        },
        "2893": {
          "name": "LINEAR_4457",
          "terms": [
            [
              [
                5,
                8
              ],
              "95757/250000"
            ],
            [
              [
                2,
                8
              ],
              "-95757/250000"
            ],
            [
              [
                6
              ],
              "-95757/250000"
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
              "-188757/250000"
            ],
            [
              [
                2,
                10
              ],
              "188757/250000"
            ],
            [
              [
                9
              ],
              "188757/250000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 4457
          }
        },
        "2963": {
          "name": "LINEAR_4527",
          "terms": [
            [
              [
                5,
                8
              ],
              "95757/250000"
            ],
            [
              [
                2,
                8
              ],
              "-95757/250000"
            ],
            [
              [
                6
              ],
              "-95757/250000"
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
              "-188757/250000"
            ],
            [
              [
                2,
                12
              ],
              "188757/250000"
            ],
            [
              [
                11
              ],
              "188757/250000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 4527
          }
        },
        "3100": {
          "name": "LINEAR_4664",
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
                12
              ],
              "874247/1000000"
            ],
            [
              [
                1,
                12
              ],
              "-874247/1000000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 4664
          }
        }
      },
      "coordinate": {
        "low": [
          "5589/40000",
          "108013/1000000",
          "717039/1000000",
          "30351/250000",
          "221497/500000",
          "717039/1000000",
          "14919/125000",
          "672311/1000000",
          "380209/1000000",
          "389701/1000000",
          "252333/500000",
          "191027/500000",
          "35579/200000"
        ],
        "high": [
          "60843/125000",
          "5439/20000",
          "108797/125000",
          "64659/125000",
          "415681/500000",
          "108797/125000",
          "88763/500000",
          "1/1",
          "94521/125000",
          "22293/31250",
          "842939/1000000",
          "356181/500000",
          "144617/250000"
        ],
        "steps": [
          {
            "factor": 30,
            "target": "d",
            "old": [
              "120187/1000000",
              "139237/250000"
            ],
            "lines": [
              [
                "593471/1000000",
                "-93/1000"
              ],
              [
                "83969/200000",
                "-93/1000"
              ],
              [
                "383117/500000",
                "-93/1000"
              ],
              [
                "18519/31250",
                "-93/1000"
              ]
            ],
            "raw": [
              "46500/383117",
              "139237/250000"
            ],
            "new": [
              "30343/250000",
              "139237/250000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "175371/250000",
              "874247/1000000"
            ],
            "lines": [
              [
                "-150799/500000",
                "104299/500000"
              ],
              [
                "66989/500000",
                "-113489/500000"
              ],
              [
                "-738359/1000000",
                "645359/1000000"
              ],
              [
                "-302783/1000000",
                "209783/1000000"
              ]
            ],
            "raw": [
              "175371/250000",
              "645359/738359"
            ],
            "new": [
              "175371/250000",
              "437023/500000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "30343/250000",
              "139237/250000"
            ],
            "lines": [
              [
                "-74629/250000",
                "831582813/25000000000"
              ],
              [
                "-62977/500000",
                "-1986261831/50000000000"
              ],
              [
                "-74629/250000",
                "40910864799/250000000000"
              ],
              [
                "-62977/500000",
                "7643279187/500000000000"
              ]
            ],
            "raw": [
              "30343/250000",
              "40910864799/74629000000"
            ],
            "new": [
              "30343/250000",
              "54819/100000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "42297/100000",
              "859731/1000000"
            ],
            "lines": [
              [
                "74629/250000",
                "-8076967747/62500000000"
              ],
              [
                "62977/500000",
                "-13535911111/125000000000"
              ],
              [
                "74629/250000",
                "-6416087151/25000000000"
              ],
              [
                "62977/500000",
                "-8102336163/50000000000"
              ]
            ],
            "raw": [
              "8076967747/18657250000",
              "859731/1000000"
            ],
            "new": [
              "432913/1000000",
              "859731/1000000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "175371/250000",
              "874247/1000000"
            ],
            "lines": [
              [
                "-311541/1000000",
                "218541/1000000"
              ],
              [
                "115277/1000000",
                "-208277/1000000"
              ],
              [
                "-738359/1000000",
                "645359/1000000"
              ]
            ],
            "raw": [
              "175371/250000",
              "645359/738359"
            ],
            "new": [
              "175371/250000",
              "437023/500000"
            ]
          },
          {
            "factor": 70,
            "target": "z",
            "old": [
              "362537/1000000",
              "189387/250000"
            ],
            "lines": [
              [
                "108013/1000000",
                "-45721183/500000000"
              ],
              [
                "108013/1000000",
                "-10913682341/125000000000"
              ],
              [
                "281639/1000000",
                "-5778819/50000000"
              ],
              [
                "281639/1000000",
                "-2193485313/12500000000"
              ],
              [
                "108013/1000000",
                "-10349953/125000000"
              ],
              [
                "108013/1000000",
                "-1741710131/31250000000"
              ],
              [
                "281639/1000000",
                "-53466819/500000000"
              ],
              [
                "281639/1000000",
                "-17988011313/125000000000"
              ]
            ],
            "raw": [
              "3145107/8283500",
              "189387/250000"
            ],
            "new": [
              "379683/1000000",
              "189387/250000"
            ]
          },
          {
            "factor": 78,
            "target": "e",
            "old": [
              "432913/1000000",
              "859731/1000000"
            ],
            "lines": [
              [
                "-116453/200000",
                "122109887393/250000000000"
              ],
              [
                "-754827/1000000",
                "276979203709/500000000000"
              ],
              [
                "-520087/1000000",
                "106565387393/250000000000"
              ],
              [
                "-692649/1000000",
                "245890203709/500000000000"
              ],
              [
                "-116453/200000",
                "23477550077/62500000000"
              ],
              [
                "-754827/1000000",
                "63295599901/125000000000"
              ],
              [
                "-520087/1000000",
                "19591425077/62500000000"
              ],
              [
                "-692649/1000000",
                "55523349901/125000000000"
              ]
            ],
            "raw": [
              "432913/1000000",
              "122109887393/145566250000"
            ],
            "new": [
              "432913/1000000",
              "419431/500000"
            ]
          },
          {
            "factor": 82,
            "target": "a",
            "old": [
              "139/1000",
              "126953/250000"
            ],
            "lines": [
              [
                "-119219/1000000",
                "-1464569663/100000000000"
              ],
              [
                "-181397/1000000",
                "2621955031/100000000000"
              ],
              [
                "-119219/1000000",
                "26219/1000000"
              ],
              [
                "-181397/1000000",
                "88397/1000000"
              ]
            ],
            "raw": [
              "139/1000",
              "88397/181397"
            ],
            "new": [
              "139/1000",
              "487313/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "379683/1000000",
              "189387/250000"
            ],
            "lines": [
              [
                "-175371/250000",
                "5793640519/20000000000"
              ],
              [
                "-437023/500000",
                "40309494921/100000000000"
              ],
              [
                "-175371/250000",
                "24881677901/100000000000"
              ],
              [
                "-437023/500000",
                "36222970227/100000000000"
              ],
              [
                "-175371/250000",
                "97853/200000"
              ],
              [
                "-437023/500000",
                "661827/1000000"
              ],
              [
                "-175371/250000",
                "427087/1000000"
              ],
              [
                "-437023/500000",
                "599649/1000000"
              ]
            ],
            "raw": [
              "379683/1000000",
              "661827/874046"
            ],
            "new": [
              "379683/1000000",
              "1893/2500"
            ]
          },
          {
            "factor": 150,
            "target": "f",
            "old": [
              "175371/250000",
              "437023/500000"
            ],
            "lines": [
              [
                "379683/1000000",
                "-94231637393/250000000000"
              ],
              [
                "379683/1000000",
                "-134941703709/500000000000"
              ],
              [
                "379683/1000000",
                "-109776137393/250000000000"
              ],
              [
                "379683/1000000",
                "-166030703709/500000000000"
              ],
              [
                "1893/2500",
                "-6267077/9765625"
              ],
              [
                "1893/2500",
                "-749813289/1250000000"
              ],
              [
                "1893/2500",
                "-219977089/312500000"
              ],
              [
                "1893/2500",
                "-827535789/1250000000"
              ]
            ],
            "raw": [
              "44980567903/63280500000",
              "437023/500000"
            ],
            "new": [
              "177703/250000",
              "437023/500000"
            ]
          },
          {
            "factor": 150,
            "target": "g",
            "old": [
              "119219/1000000",
              "181397/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "760980189/62500000000"
              ],
              [
                "-1/1",
                "59609412589/500000000000"
              ],
              [
                "-1/1",
                "37076428923/500000000000"
              ],
              [
                "-1/1",
                "45299/250000"
              ],
              [
                "-1/1",
                "4905363/312500000"
              ],
              [
                "-1/1",
                "71994019/1250000000"
              ],
              [
                "-1/1",
                "174122433/1250000000"
              ]
            ],
            "raw": [
              "119219/1000000",
              "45299/250000"
            ],
            "new": [
              "119219/1000000",
              "45299/250000"
            ]
          },
          {
            "factor": 178,
            "target": "v",
            "old": [
              "174781/1000000",
              "291379/500000"
            ],
            "lines": [
              [
                "-591593/1000000",
                "12324195009/125000000000"
              ],
              [
                "-754827/1000000",
                "80285367447/500000000000"
              ],
              [
                "-33101/62500",
                "4577070009/125000000000"
              ],
              [
                "-13857/20000",
                "49296867447/500000000000"
              ],
              [
                "-591593/1000000",
                "143019303/625000000"
              ],
              [
                "-754827/1000000",
                "440539587/1250000000"
              ],
              [
                "-33101/62500",
                "52141839/312500000"
              ],
              [
                "-13857/20000",
                "363068337/1250000000"
              ],
              [
                "-591593/1000000",
                "158416123189/500000000000"
              ],
              [
                "-754827/1000000",
                "947023553/2500000000"
              ],
              [
                "-33101/62500",
                "127427623189/500000000000"
              ],
              [
                "-13857/20000",
                "792081053/2500000000"
              ],
              [
                "-591593/1000000",
                "392815369/1250000000"
              ],
              [
                "-754827/1000000",
                "10946327/25000000"
              ],
              [
                "-33101/62500",
                "315344119/1250000000"
              ],
              [
                "-13857/20000",
                "4698451/12500000"
              ]
            ],
            "raw": [
              "174781/1000000",
              "10946327/18870675"
            ],
            "new": [
              "174781/1000000",
              "580071/1000000"
            ]
          },
          {
            "factor": 190,
            "target": "x",
            "old": [
              "185401/500000",
              "180021/250000"
            ],
            "lines": [
              [
                "-1/1",
                "34312697759/62500000000"
              ],
              [
                "-1/1",
                "318981767159/500000000000"
              ],
              [
                "-1/1",
                "314042814913/500000000000"
              ],
              [
                "-1/1",
                "358523/500000"
              ],
              [
                "-1/1",
                "2158252527/3906250000"
              ],
              [
                "-1/1",
                "9008591301/15625000000"
              ],
              [
                "-1/1",
                "10828262557/15625000000"
              ]
            ],
            "raw": [
              "185401/500000",
              "358523/500000"
            ],
            "new": [
              "185401/500000",
              "358523/500000"
            ]
          },
          {
            "factor": 196,
            "target": "u",
            "old": [
              "91457/250000",
              "358823/500000"
            ],
            "lines": [
              [
                "-1/1",
                "34068772323/62500000000"
              ],
              [
                "-1/1",
                "343750899123/500000000000"
              ],
              [
                "-1/1",
                "286815279461/500000000000"
              ],
              [
                "-1/1",
                "11188/15625"
              ],
              [
                "-1/1",
                "34305056393/62500000000"
              ],
              [
                "-1/1",
                "310672345193/500000000000"
              ],
              [
                "-1/1",
                "321784105951/500000000000"
              ]
            ],
            "raw": [
              "91457/250000",
              "11188/15625"
            ],
            "new": [
              "91457/250000",
              "11188/15625"
            ]
          },
          {
            "factor": 212,
            "target": "y",
            "old": [
              "484473/1000000",
              "26897/31250"
            ],
            "lines": [
              [
                "-591593/1000000",
                "28767901683/100000000000"
              ],
              [
                "-754827/1000000",
                "87414047913/250000000000"
              ],
              [
                "-33101/62500",
                "22570201683/100000000000"
              ],
              [
                "-13857/20000",
                "71919797913/250000000000"
              ],
              [
                "-591593/1000000",
                "104009643/250000000"
              ],
              [
                "-754827/1000000",
                "168637299/312500000"
              ],
              [
                "-33101/62500",
                "88515393/250000000"
              ],
              [
                "-13857/20000",
                "298538973/625000000"
              ],
              [
                "-591593/1000000",
                "251230028089/500000000000"
              ],
              [
                "-754827/1000000",
                "564437231/1000000000"
              ],
              [
                "-33101/62500",
                "220241528089/500000000000"
              ],
              [
                "-13857/20000",
                "502460231/1000000000"
              ],
              [
                "-591593/1000000",
                "625133269/1250000000"
              ],
              [
                "-754827/1000000",
                "3118537/5000000"
              ],
              [
                "-33101/62500",
                "547662019/1250000000"
              ],
              [
                "-13857/20000",
                "702163/1250000"
              ]
            ],
            "raw": [
              "484473/1000000",
              "251230028089/295796500000"
            ],
            "new": [
              "484473/1000000",
              "169867/200000"
            ]
          },
          {
            "factor": 216,
            "target": "y",
            "old": [
              "484473/1000000",
              "169867/200000"
            ],
            "lines": [
              [
                "880781/1000000",
                "-440809335513/1000000000000"
              ],
              [
                "880781/1000000",
                "-27146960139/50000000000"
              ],
              [
                "204701/250000",
                "-25873667907/62500000000"
              ],
              [
                "204701/250000",
                "-245474526303/500000000000"
              ],
              [
                "880781/1000000",
                "-678342276879/1000000000000"
              ],
              [
                "880781/1000000",
                "-390236072073/500000000000"
              ],
              [
                "204701/250000",
                "-325755813939/500000000000"
              ],
              [
                "204701/250000",
                "-182120498493/250000000000"
              ],
              [
                "880781/1000000",
                "-459239903633/1000000000000"
              ],
              [
                "880781/1000000",
                "-87740897057/125000000000"
              ],
              [
                "204701/250000",
                "-54051156829/125000000000"
              ],
              [
                "204701/250000",
                "-324968513141/500000000000"
              ],
              [
                "880781/1000000",
                "-566059848851/1000000000000"
              ],
              [
                "880781/1000000",
                "-404373560837/500000000000"
              ],
              [
                "204701/250000",
                "-10784583997/20000000000"
              ],
              [
                "204701/250000",
                "-1513513943/2000000000"
              ]
            ],
            "raw": [
              "440809335513/880781000000",
              "169867/200000"
            ],
            "new": [
              "20019/40000",
              "169867/200000"
            ]
          },
          {
            "factor": 227,
            "target": "c",
            "old": [
              "175371/250000",
              "437023/500000"
            ],
            "lines": [
              [
                "1/1",
                "-177703/250000"
              ],
              [
                "1/1",
                "-437023/500000"
              ]
            ],
            "raw": [
              "177703/250000",
              "437023/500000"
            ],
            "new": [
              "177703/250000",
              "437023/500000"
            ]
          },
          {
            "factor": 235,
            "target": "b",
            "old": [
              "108013/1000000",
              "281639/1000000"
            ],
            "lines": [
              [
                "-17135430337/100000000000",
                "-260258422824089/25000000000000000"
              ],
              [
                "-17135430337/100000000000",
                "-640050627833249/50000000000000000"
              ],
              [
                "-5302186177/25000000000",
                "115895440211431/6250000000000000"
              ],
              [
                "-5302186177/25000000000",
                "285020359631071/12500000000000000"
              ],
              [
                "-212219/1000000",
                "4659194957/250000000000"
              ],
              [
                "-212219/1000000",
                "11458306037/500000000000"
              ],
              [
                "-68549/250000",
                "3918173447/62500000000"
              ],
              [
                "-68549/250000",
                "9635920127/125000000000"
              ]
            ],
            "raw": [
              "108013/1000000",
              "9635920127/34274500000"
            ],
            "new": [
              "108013/1000000",
              "14057/50000"
            ]
          },
          {
            "factor": 235,
            "target": "g",
            "old": [
              "119219/1000000",
              "45299/250000"
            ],
            "lines": [
              [
                "39617758677/100000000000",
                "-3046029/40000000"
              ],
              [
                "3529916607/12500000000",
                "-5765721/62500000"
              ],
              [
                "50345986859/100000000000",
                "-91331487/1000000000"
              ],
              [
                "19483780519/50000000000",
                "-53716149/500000000"
              ],
              [
                "602799/1000000",
                "-3046029/40000000"
              ],
              [
                "53709/125000",
                "-5765721/62500000"
              ],
              [
                "766033/1000000",
                "-91331487/1000000000"
              ],
              [
                "296453/500000",
                "-53716149/500000000"
              ]
            ],
            "raw": [
              "91331487/766033000",
              "45299/250000"
            ],
            "new": [
              "59613/500000",
              "45299/250000"
            ]
          },
          {
            "factor": 235,
            "target": "h",
            "old": [
              "65723/100000",
              "1/1"
            ],
            "lines": [
              [
                "35934656787/500000000000",
                "-3046029/40000000"
              ],
              [
                "3201754617/62500000000",
                "-5765721/62500000"
              ],
              [
                "45665525229/500000000000",
                "-91331487/1000000000"
              ],
              [
                "17672452689/250000000000",
                "-53716149/500000000"
              ],
              [
                "27306191901/250000000000",
                "-3046029/40000000"
              ],
              [
                "2432963991/31250000000",
                "-5765721/62500000"
              ],
              [
                "34700528867/250000000000",
                "-91331487/1000000000"
              ],
              [
                "13429024447/125000000000",
                "-53716149/500000000"
              ]
            ],
            "raw": [
              "22832871750/34700528867",
              "1/1"
            ],
            "new": [
              "657997/1000000",
              "1/1"
            ]
          },
          {
            "factor": 2893,
            "target": "x",
            "old": [
              "185401/500000",
              "358523/500000"
            ],
            "lines": [
              [
                "188757/250000",
                "-38761120041/125000000000"
              ],
              [
                "188757/250000",
                "-2600541714105147/7812500000000000"
              ],
              [
                "188757/250000",
                "-2718997103519853/7812500000000000"
              ],
              [
                "188757/250000",
                "-46351501041/125000000000"
              ],
              [
                "188757/250000",
                "-20864075343/62500000000"
              ],
              [
                "188757/250000",
                "-2785981129417647/7812500000000000"
              ],
              [
                "188757/250000",
                "-2904436518832353/7812500000000000"
              ],
              [
                "188757/250000",
                "-24659265843/62500000000"
              ],
              [
                "188757/250000",
                "-1782364537440561/5000000000000000"
              ],
              [
                "188757/250000",
                "-1622140305839439/5000000000000000"
              ],
              [
                "188757/250000",
                "-1901045763240561/5000000000000000"
              ],
              [
                "188757/250000",
                "-1740821531639439/5000000000000000"
              ],
              [
                "188757/250000",
                "-9058551747702753/31250000000000000"
              ],
              [
                "188757/250000",
                "-12219603522797247/31250000000000000"
              ],
              [
                "188757/250000",
                "-9800309408952753/31250000000000000"
              ],
              [
                "188757/250000",
                "-12961361184047247/31250000000000000"
              ],
              [
                "188757/250000",
                "-7836930600228537/25000000000000000"
              ],
              [
                "188757/250000",
                "-9185593616171463/25000000000000000"
              ],
              [
                "188757/250000",
                "-8430336729228537/25000000000000000"
              ],
              [
                "188757/250000",
                "-9778999745171463/25000000000000000"
              ]
            ],
            "raw": [
              "3019517249234251/7864875000000000",
              "358523/500000"
            ],
            "new": [
              "95981/250000",
              "358523/500000"
            ]
          },
          {
            "factor": 2963,
            "target": "u",
            "old": [
              "91457/250000",
              "11188/15625"
            ],
            "lines": [
              [
                "188757/250000",
                "-38761120041/125000000000"
              ],
              [
                "188757/250000",
                "-23313118779737619/62500000000000000"
              ],
              [
                "188757/250000",
                "-19243191761262381/62500000000000000"
              ],
              [
                "188757/250000",
                "-46351501041/125000000000"
              ],
              [
                "188757/250000",
                "-20864075343/62500000000"
              ],
              [
                "188757/250000",
                "-24796634102237619/62500000000000000"
              ],
              [
                "188757/250000",
                "-20726707083762381/62500000000000000"
              ],
              [
                "188757/250000",
                "-24659265843/62500000000"
              ],
              [
                "188757/250000",
                "-49576683569806911/125000000000000000"
              ],
              [
                "188757/250000",
                "-35535937512193089/125000000000000000"
              ],
              [
                "188757/250000",
                "-52543714214806911/125000000000000000"
              ],
              [
                "188757/250000",
                "-38502968157193089/125000000000000000"
              ],
              [
                "188757/250000",
                "-10095607238827557/31250000000000000"
              ],
              [
                "188757/250000",
                "-11182548031672443/31250000000000000"
              ],
              [
                "188757/250000",
                "-10837364900077557/31250000000000000"
              ],
              [
                "188757/250000",
                "-11924305692922443/31250000000000000"
              ],
              [
                "188757/250000",
                "-43332874965641901/125000000000000000"
              ],
              [
                "188757/250000",
                "-41779746116358099/125000000000000000"
              ],
              [
                "188757/250000",
                "-46299905610641901/125000000000000000"
              ],
              [
                "188757/250000",
                "-44746776761358099/125000000000000000"
              ]
            ],
            "raw": [
              "11845312504064363/31459500000000000",
              "11188/15625"
            ],
            "new": [
              "15061/40000",
              "11188/15625"
            ]
          },
          {
            "factor": 3100,
            "target": "v",
            "old": [
              "174781/1000000",
              "580071/1000000"
            ],
            "lines": [
              [
                "526995217353/1000000000000",
                "-92947820825079/1000000000000000"
              ],
              [
                "46954932123/125000000000",
                "-8281590561189/125000000000000"
              ],
              [
                "669702052151/1000000000000",
                "-118117478678793/1000000000000000"
              ],
              [
                "259173145891/500000000000",
                "-45711191171613/500000000000000"
              ],
              [
                "526995217353/1000000000000",
                "-56060307/500000000"
              ],
              [
                "46954932123/125000000000",
                "-4994937/62500000"
              ],
              [
                "669702052151/1000000000000",
                "-71241069/500000000"
              ],
              [
                "259173145891/500000000000",
                "-27570129/250000000"
              ]
            ],
            "raw": [
              "737769/4183000",
              "580071/1000000"
            ],
            "new": [
              "176373/1000000",
              "580071/1000000"
            ]
          },
          {
            "factor": 30,
            "target": "d",
            "old": [
              "30343/250000",
              "54819/100000"
            ],
            "lines": [
              [
                "602799/1000000",
                "-93/1000"
              ],
              [
                "53709/125000",
                "-93/1000"
              ],
              [
                "766033/1000000",
                "-93/1000"
              ],
              [
                "296453/500000",
                "-93/1000"
              ]
            ],
            "raw": [
              "93000/766033",
              "54819/100000"
            ],
            "new": [
              "30351/250000",
              "54819/100000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "177703/250000",
              "437023/500000"
            ],
            "lines": [
              [
                "-311509/1000000",
                "218509/1000000"
              ],
              [
                "115277/1000000",
                "-208277/1000000"
              ],
              [
                "-358729/500000",
                "312229/500000"
              ],
              [
                "-18167/62500",
                "24709/125000"
              ]
            ],
            "raw": [
              "177703/250000",
              "312229/358729"
            ],
            "new": [
              "177703/250000",
              "108797/125000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "30351/250000",
              "54819/100000"
            ],
            "lines": [
              [
                "-72297/250000",
                "8048311161/250000000000"
              ],
              [
                "-16203/125000",
                "-4610510661/125000000000"
              ],
              [
                "-72297/250000",
                "18698603007/125000000000"
              ],
              [
                "-16203/125000",
                "983540493/62500000000"
              ]
            ],
            "raw": [
              "30351/250000",
              "6232867669/12049500000"
            ],
            "new": [
              "30351/250000",
              "64659/125000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "432913/1000000",
              "419431/500000"
            ],
            "lines": [
              [
                "72297/250000",
                "-8006786247/62500000000"
              ],
              [
                "16203/125000",
                "-3398027253/31250000000"
              ],
              [
                "72297/250000",
                "-7580901723/31250000000"
              ],
              [
                "16203/125000",
                "-2500794777/15625000000"
              ]
            ],
            "raw": [
              "2668928749/6024750000",
              "419431/500000"
            ],
            "new": [
              "221497/500000",
              "419431/500000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "177703/250000",
              "437023/500000"
            ],
            "lines": [
              [
                "-32159/100000",
                "22859/100000"
              ],
              [
                "37139/500000",
                "-83639/500000"
              ],
              [
                "-358729/500000",
                "312229/500000"
              ]
            ],
            "raw": [
              "177703/250000",
              "312229/358729"
            ],
            "new": [
              "177703/250000",
              "108797/125000"
            ]
          },
          {
            "factor": 70,
            "target": "z",
            "old": [
              "379683/1000000",
              "1893/2500"
            ],
            "lines": [
              [
                "108013/1000000",
                "-91441393/1000000000"
              ],
              [
                "108013/1000000",
                "-87535759331/1000000000000"
              ],
              [
                "14057/50000",
                "-57753023/500000000"
              ],
              [
                "14057/50000",
                "-85951398541/500000000000"
              ],
              [
                "108013/1000000",
                "-82827563/1000000000"
              ],
              [
                "108013/1000000",
                "-57336972721/1000000000000"
              ],
              [
                "14057/50000",
                "-13361527/125000000"
              ],
              [
                "14057/50000",
                "-17713001309/125000000000"
              ]
            ],
            "raw": [
              "13361527/35142500",
              "1893/2500"
            ],
            "new": [
              "380209/1000000",
              "1893/2500"
            ]
          },
          {
            "factor": 78,
            "target": "e",
            "old": [
              "221497/500000",
              "419431/500000"
            ],
            "lines": [
              [
                "-295793/500000",
                "122955529927/250000000000"
              ],
              [
                "-15023/20000",
                "69061223573/125000000000"
              ],
              [
                "-33101/62500",
                "107463029927/250000000000"
              ],
              [
                "-34459/50000",
                "61314973573/125000000000"
              ],
              [
                "-295793/500000",
                "239250529/625000000"
              ],
              [
                "-15023/20000",
                "9836381/19531250"
              ],
              [
                "-33101/62500",
                "200519279/625000000"
              ],
              [
                "-34459/50000",
                "138016471/312500000"
              ]
            ],
            "raw": [
              "221497/500000",
              "2319915659/2790500000"
            ],
            "new": [
              "221497/500000",
              "415681/500000"
            ]
          },
          {
            "factor": 82,
            "target": "a",
            "old": [
              "139/1000",
              "487313/1000000"
            ],
            "lines": [
              [
                "-59613/500000",
                "-7274824839/500000000000"
              ],
              [
                "-45299/250000",
                "6556606103/250000000000"
              ],
              [
                "-59613/500000",
                "13113/500000"
              ],
              [
                "-45299/250000",
                "22049/250000"
              ]
            ],
            "raw": [
              "139/1000",
              "22049/45299"
            ],
            "new": [
              "139/1000",
              "60843/125000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "380209/1000000",
              "1893/2500"
            ],
            "lines": [
              [
                "-177703/250000",
                "148130906621/500000000000"
              ],
              [
                "-108797/125000",
                "8025088931/20000000000"
              ],
              [
                "-177703/250000",
                "15967858697/62500000000"
              ],
              [
                "-108797/125000",
                "18023918623/50000000000"
              ],
              [
                "-177703/250000",
                "249293/500000"
              ],
              [
                "-108797/125000",
                "13163/20000"
              ],
              [
                "-177703/250000",
                "54577/125000"
              ],
              [
                "-108797/125000",
                "29809/50000"
              ]
            ],
            "raw": [
              "380209/1000000",
              "329075/435188"
            ],
            "new": [
              "380209/1000000",
              "94521/125000"
            ]
          },
          {
            "factor": 150,
            "target": "f",
            "old": [
              "177703/250000",
              "108797/125000"
            ],
            "lines": [
              [
                "380209/1000000",
                "-92880279927/250000000000"
              ],
              [
                "380209/1000000",
                "-34078098573/125000000000"
              ],
              [
                "380209/1000000",
                "-108372779927/250000000000"
              ],
              [
                "380209/1000000",
                "-41824348573/125000000000"
              ],
              [
                "94521/125000",
                "-19961165263/31250000000"
              ],
              [
                "94521/125000",
                "-9372663737/15625000000"
              ],
              [
                "94521/125000",
                "-21897727763/31250000000"
              ],
              [
                "94521/125000",
                "-10340944987/15625000000"
              ]
            ],
            "raw": [
              "34078098573/47526125000",
              "108797/125000"
            ],
            "new": [
              "717039/1000000",
              "108797/125000"
            ]
          },
          {
            "factor": 150,
            "target": "g",
            "old": [
              "59613/500000",
              "45299/250000"
            ],
            "lines": [
              [
                "-1/1",
                "20329561443/1000000000000"
              ],
              [
                "-1/1",
                "119225892567/1000000000000"
              ],
              [
                "-1/1",
                "19657417219/250000000000"
              ],
              [
                "-1/1",
                "88763/500000"
              ],
              [
                "-1/1",
                "2833832267/125000000000"
              ],
              [
                "-1/1",
                "7697183423/125000000000"
              ],
              [
                "-1/1",
                "4331849711/31250000000"
              ]
            ],
            "raw": [
              "59613/500000",
              "88763/500000"
            ],
            "new": [
              "59613/500000",
              "88763/500000"
            ]
          },
          {
            "factor": 178,
            "target": "v",
            "old": [
              "176373/1000000",
              "580071/1000000"
            ],
            "lines": [
              [
                "-597813/1000000",
                "53882743713/500000000000"
              ],
              [
                "-15023/20000",
                "166065594859/1000000000000"
              ],
              [
                "-539513/1000000",
                "24732743713/500000000000"
              ],
              [
                "-13857/20000",
                "107765594859/1000000000000"
              ],
              [
                "-597813/1000000",
                "14736549397/62500000000"
              ],
              [
                "-15023/20000",
                "43966665371/125000000000"
              ],
              [
                "-539513/1000000",
                "11092799397/62500000000"
              ],
              [
                "-13857/20000",
                "36679165371/125000000000"
              ],
              [
                "-597813/1000000",
                "318188870463/1000000000000"
              ],
              [
                "-15023/20000",
                "47061122237/125000000000"
              ],
              [
                "-539513/1000000",
                "259888870463/1000000000000"
              ],
              [
                "-13857/20000",
                "39773622237/125000000000"
              ],
              [
                "-597813/1000000",
                "39820932647/125000000000"
              ],
              [
                "-15023/20000",
                "6789312403/15625000000"
              ],
              [
                "-539513/1000000",
                "32533432647/125000000000"
              ],
              [
                "-13857/20000",
                "5878374903/15625000000"
              ]
            ],
            "raw": [
              "176373/1000000",
              "6789312403/11736718750"
            ],
            "new": [
              "176373/1000000",
              "144617/250000"
            ]
          },
          {
            "factor": 190,
            "target": "x",
            "old": [
              "95981/250000",
              "358523/500000"
            ],
            "lines": [
              [
                "-1/1",
                "22277138313/40000000000"
              ],
              [
                "-1/1",
                "25465386597/40000000000"
              ],
              [
                "-1/1",
                "6336697929/10000000000"
              ],
              [
                "-1/1",
                "22293/31250"
              ],
              [
                "-1/1",
                "111820161809/200000000000"
              ],
              [
                "-1/1",
                "116628303821/200000000000"
              ],
              [
                "-1/1",
                "34466764497/50000000000"
              ]
            ],
            "raw": [
              "95981/250000",
              "22293/31250"
            ],
            "new": [
              "95981/250000",
              "22293/31250"
            ]
          },
          {
            "factor": 196,
            "target": "u",
            "old": [
              "15061/40000",
              "11188/15625"
            ],
            "lines": [
              [
                "-1/1",
                "553896274671/1000000000000"
              ],
              [
                "-1/1",
                "685317493299/1000000000000"
              ],
              [
                "-1/1",
                "145235195343/250000000000"
              ],
              [
                "-1/1",
                "356181/500000"
              ],
              [
                "-1/1",
                "139100030059/250000000000"
              ],
              [
                "-1/1",
                "155915363071/250000000000"
              ],
              [
                "-1/1",
                "40318791747/62500000000"
              ]
            ],
            "raw": [
              "15061/40000",
              "356181/500000"
            ],
            "new": [
              "15061/40000",
              "356181/500000"
            ]
          },
          {
            "factor": 212,
            "target": "y",
            "old": [
              "20019/40000",
              "169867/200000"
            ],
            "lines": [
              [
                "-597813/1000000",
                "59670264207/200000000000"
              ],
              [
                "-15023/20000",
                "89162857117/250000000000"
              ],
              [
                "-539513/1000000",
                "48010264207/200000000000"
              ],
              [
                "-13857/20000",
                "74587857117/250000000000"
              ],
              [
                "-597813/1000000",
                "10589722583/25000000000"
              ],
              [
                "-15023/20000",
                "16860544873/31250000000"
              ],
              [
                "-539513/1000000",
                "9132222583/25000000000"
              ],
              [
                "-13857/20000",
                "15038669873/31250000000"
              ],
              [
                "-597813/1000000",
                "502542705567/1000000000000"
              ],
              [
                "-15023/20000",
                "560842813/1000000000"
              ],
              [
                "-539513/1000000",
                "444242705567/1000000000000"
              ],
              [
                "-13857/20000",
                "502542813/1000000000"
              ],
              [
                "-597813/1000000",
                "62989980423/125000000000"
              ],
              [
                "-15023/20000",
                "77483547/125000000"
              ],
              [
                "-539513/1000000",
                "55702480423/125000000000"
              ],
              [
                "-13857/20000",
                "70196047/125000000"
              ]
            ],
            "raw": [
              "20019/40000",
              "20996660141/24908875000"
            ],
            "new": [
              "20019/40000",
              "842939/1000000"
            ]
          },
          {
            "factor": 216,
            "target": "y",
            "old": [
              "20019/40000",
              "842939/1000000"
            ],
            "lines": [
              [
                "440387/500000",
                "-13890539553/31250000000"
              ],
              [
                "440387/500000",
                "-1710304683/3125000000"
              ],
              [
                "411237/500000",
                "-52333839437/125000000000"
              ],
              [
                "411237/500000",
                "-12470727349/25000000000"
              ],
              [
                "440387/500000",
                "-33805829129/50000000000"
              ],
              [
                "440387/500000",
                "-194729203861/250000000000"
              ],
              [
                "411237/500000",
                "-32514501619/50000000000"
              ],
              [
                "411237/500000",
                "-182612102711/250000000000"
              ],
              [
                "440387/500000",
                "-116295477379/250000000000"
              ],
              [
                "440387/500000",
                "-173982689179/250000000000"
              ],
              [
                "411237/500000",
                "-109838839829/250000000000"
              ],
              [
                "411237/500000",
                "-161865588029/250000000000"
              ],
              [
                "440387/500000",
                "-143235195483/250000000000"
              ],
              [
                "440387/500000",
                "-200922407283/250000000000"
              ],
              [
                "411237/500000",
                "-136778557933/250000000000"
              ],
              [
                "411237/500000",
                "-188805306133/250000000000"
              ]
            ],
            "raw": [
              "13890539553/27524187500",
              "842939/1000000"
            ],
            "new": [
              "252333/500000",
              "842939/1000000"
            ]
          },
          {
            "factor": 227,
            "target": "c",
            "old": [
              "177703/250000",
              "108797/125000"
            ],
            "lines": [
              [
                "1/1",
                "-717039/1000000"
              ],
              [
                "1/1",
                "-108797/125000"
              ]
            ],
            "raw": [
              "717039/1000000",
              "108797/125000"
            ],
            "new": [
              "717039/1000000",
              "108797/125000"
            ]
          },
          {
            "factor": 235,
            "target": "b",
            "old": [
              "108013/1000000",
              "14057/50000"
            ],
            "lines": [
              [
                "-85725175161/500000000000",
                "-5216333127731721/500000000000000000"
              ],
              [
                "-85725175161/500000000000",
                "-791479118008683/62500000000000000"
              ],
              [
                "-104905787711/500000000000",
                "8536914114507729/500000000000000000"
              ],
              [
                "-104905787711/500000000000",
                "1295313985593667/62500000000000000"
              ],
              [
                "-106113/500000",
                "9402532407/500000000000"
              ],
              [
                "-106113/500000",
                "1426655061/62500000000"
              ],
              [
                "-135263/500000",
                "30304219257/500000000000"
              ],
              [
                "-135263/500000",
                "4598087611/62500000000"
              ]
            ],
            "raw": [
              "108013/1000000",
              "4598087611/16907875000"
            ],
            "new": [
              "108013/1000000",
              "5439/20000"
            ]
          },
          {
            "factor": 235,
            "target": "g",
            "old": [
              "59613/500000",
              "88763/500000"
            ],
            "lines": [
              [
                "200368640461/500000000000",
                "-19182459/250000000"
              ],
              [
                "292867226733/1000000000000",
                "-91975977/1000000000"
              ],
              [
                "501632566911/1000000000000",
                "-90990177/1000000000"
              ],
              [
                "196881256361/500000000000",
                "-53118159/500000000"
              ],
              [
                "304513/500000",
                "-19182459/250000000"
              ],
              [
                "445089/1000000",
                "-91975977/1000000000"
              ],
              [
                "762363/1000000",
                "-90990177/1000000000"
              ],
              [
                "299213/500000",
                "-53118159/500000000"
              ]
            ],
            "raw": [
              "30330059/254121000",
              "88763/500000"
            ],
            "new": [
              "14919/125000",
              "88763/500000"
            ]
          },
          {
            "factor": 235,
            "target": "h",
            "old": [
              "657997/1000000",
              "1/1"
            ],
            "lines": [
              [
                "4543029447/62500000000",
                "-19182459/250000000"
              ],
              [
                "6640282791/125000000000",
                "-91975977/1000000000"
              ],
              [
                "11373693597/125000000000",
                "-90990177/1000000000"
              ],
              [
                "4463958747/62500000000",
                "-53118159/500000000"
              ],
              [
                "27029487419/250000000000",
                "-19182459/250000000"
              ],
              [
                "39507434907/500000000000",
                "-91975977/1000000000"
              ],
              [
                "67669626969/500000000000",
                "-90990177/1000000000"
              ],
              [
                "26559043519/250000000000",
                "-53118159/500000000"
              ]
            ],
            "raw": [
              "15165029500/22556542323",
              "1/1"
            ],
            "new": [
              "672311/1000000",
              "1/1"
            ]
          },
          {
            "factor": 240,
            "target": "a",
            "old": [
              "139/1000",
              "60843/125000"
            ],
            "lines": [
              [
                "245665407129/1000000000000",
                "-55354533/1000000000"
              ],
              [
                "39761019867/125000000000",
                "-53821163/1000000000"
              ],
              [
                "600789/1250000",
                "-8582961/100000000"
              ],
              [
                "377063/625000",
                "-1053703/12500000"
              ]
            ],
            "raw": [
              "1053703/7541260",
              "60843/125000"
            ],
            "new": [
              "5589/40000",
              "60843/125000"
            ]
          },
          {
            "factor": 2893,
            "target": "x",
            "old": [
              "95981/250000",
              "22293/31250"
            ],
            "lines": [
              [
                "188757/250000",
                "-4882088529/15625000000"
              ],
              [
                "188757/250000",
                "-83349634742741187/250000000000000000"
              ],
              [
                "188757/250000",
                "-87137539185258813/250000000000000000"
              ],
              [
                "188757/250000",
                "-11546719683/31250000000"
              ],
              [
                "188757/250000",
                "-41841992091/125000000000"
              ],
              [
                "188757/250000",
                "-88920202460741187/250000000000000000"
              ],
              [
                "188757/250000",
                "-92708106903258813/250000000000000000"
              ],
              [
                "188757/250000",
                "-48972162591/125000000000"
              ],
              [
                "188757/250000",
                "-44434937496494859/125000000000000000"
              ],
              [
                "188757/250000",
                "-40808649467505141/125000000000000000"
              ],
              [
                "188757/250000",
                "-47220221355494859/125000000000000000"
              ],
              [
                "188757/250000",
                "-43593933326505141/125000000000000000"
              ],
              [
                "188757/250000",
                "-7355885313293343/25000000000000000"
              ],
              [
                "188757/250000",
                "-9692832079506657/25000000000000000"
              ],
              [
                "188757/250000",
                "-7912942085093343/25000000000000000"
              ],
              [
                "188757/250000",
                "-10249888851306657/25000000000000000"
              ],
              [
                "188757/250000",
                "-79079093383181961/250000000000000000"
              ],
              [
                "188757/250000",
                "-91408080544818039/250000000000000000"
              ],
              [
                "188757/250000",
                "-84649661101181961/250000000000000000"
              ],
              [
                "188757/250000",
                "-96978648262818039/250000000000000000"
              ]
            ],
            "raw": [
              "817320590365927/2097300000000000",
              "22293/31250"
            ],
            "new": [
              "389701/1000000",
              "22293/31250"
            ]
          },
          {
            "factor": 2963,
            "target": "u",
            "old": [
              "15061/40000",
              "356181/500000"
            ],
            "lines": [
              [
                "188757/250000",
                "-4882088529/15625000000"
              ],
              [
                "188757/250000",
                "-23212890225025281/62500000000000000"
              ],
              [
                "188757/250000",
                "-19408903256974719/62500000000000000"
              ],
              [
                "188757/250000",
                "-11546719683/31250000000"
              ],
              [
                "188757/250000",
                "-41841992091/125000000000"
              ],
              [
                "188757/250000",
                "-24605532154525281/62500000000000000"
              ],
              [
                "188757/250000",
                "-20801545186474719/62500000000000000"
              ],
              [
                "188757/250000",
                "-48972162591/125000000000"
              ],
              [
                "188757/250000",
                "-19674360230069931/50000000000000000"
              ],
              [
                "188757/250000",
                "-14423074555530069/50000000000000000"
              ],
              [
                "188757/250000",
                "-20788473773669931/50000000000000000"
              ],
              [
                "188757/250000",
                "-15537188099130069/50000000000000000"
              ],
              [
                "188757/250000",
                "-81213551566232769/250000000000000000"
              ],
              [
                "188757/250000",
                "-89273622361767231/250000000000000000"
              ],
              [
                "188757/250000",
                "-86784119284232769/250000000000000000"
              ],
              [
                "188757/250000",
                "-94844190079767231/250000000000000000"
              ],
              [
                "188757/250000",
                "-867337918164813/2500000000000000"
              ],
              [
                "188757/250000",
                "-837533821115187/2500000000000000"
              ],
              [
                "188757/250000",
                "-923043595344813/2500000000000000"
              ],
              [
                "188757/250000",
                "-893239498295187/2500000000000000"
              ]
            ],
            "raw": [
              "1602563839503341/4194600000000000",
              "356181/500000"
            ],
            "new": [
              "191027/500000",
              "356181/500000"
            ]
          },
          {
            "factor": 3100,
            "target": "v",
            "old": [
              "176373/1000000",
              "144617/250000"
            ],
            "lines": [
              [
                "266219576711/500000000000",
                "-47359360877499/500000000000000"
              ],
              [
                "389117722983/1000000000000",
                "-69222432453147/1000000000000000"
              ],
              [
                "666493565661/1000000000000",
                "-118566446873049/1000000000000000"
              ],
              [
                "261586067611/500000000000",
                "-46535078785599/500000000000000"
              ],
              [
                "266219576711/500000000000",
                "-28319709/250000000"
              ],
              [
                "389117722983/1000000000000",
                "-41393277/500000000"
              ],
              [
                "666493565661/1000000000000",
                "-70899759/500000000"
              ],
              [
                "261586067611/500000000000",
                "-27826809/250000000"
              ]
            ],
            "raw": [
              "155524923/874247000",
              "144617/250000"
            ],
            "new": [
              "35579/200000",
              "144617/250000"
            ]
          }
        ]
      }
    },
    {
      "id": 14,
      "assumptions": [
        "AGO-",
        "AGP-",
        "DGP+",
        "AFG+",
        "FGO+",
        "EGO-"
      ],
      "initial_box": {
        "low": [
          "5589/40000",
          "108013/1000000",
          "717039/1000000",
          "30351/250000",
          "221497/500000",
          "717039/1000000",
          "14919/125000",
          "672311/1000000",
          "380209/1000000",
          "389701/1000000",
          "252333/500000",
          "191027/500000",
          "35579/200000"
        ],
        "high": [
          "60843/125000",
          "5439/20000",
          "108797/125000",
          "64659/125000",
          "415681/500000",
          "108797/125000",
          "88763/500000",
          "1",
          "94521/125000",
          "22293/31250",
          "842939/1000000",
          "356181/500000",
          "144617/250000"
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
        "DGP": 1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DOP": 1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "DGH": -1,
        "GOP": -1,
        "BDG": 1,
        "EGP": 1,
        "FGP": 1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "CFO": 1,
        "DFO": 1,
        "DHP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEG": 1,
        "BEO": 1,
        "AOP": -1,
        "AFG": 1,
        "AEG": 1,
        "BFG": 1,
        "FGO": 1,
        "AFP": -1,
        "EGO": -1,
        "AEO": 1,
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
            "DCGOP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDG",
            "CDO",
            "DGP",
            "CDP",
            "DGO"
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
            "GADHP"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ADG",
            "GHP",
            "AGH",
            "DGP",
            "AGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GADOP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ADG",
            "AGO",
            "DGP",
            "AGP",
            "DGO"
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
            "GCDEP"
          ],
          "target": "EGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CEG",
            "DGP",
            "CGP",
            "DEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFP"
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CFG",
            "DGP",
            "CGP",
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
            "PCDGH"
          ],
          "target": "DHP",
          "sign": 1,
          "deps": [
            "CDP",
            "GHP",
            "CGP",
            "CHP",
            "DGP"
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
            "PDEFG"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FGP",
            "EGP",
            "DGP",
            "EFP"
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
          "target": "BEG",
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
              "80480253/125000000"
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
        },
        {
          "rule": [
            "ray",
            "AFG",
            "OP",
            "AFG",
            [
              "area",
              "AFG",
              "U_AFG",
              "1779364893/4000000000"
            ]
          ],
          "target": "AFP",
          "sign": -1,
          "deps": [
            "FGO",
            "AGO",
            "FGP",
            "AGP",
            "AOP"
          ],
          "area_stage": 8
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
            "CDH",
            [
              "P"
            ],
            "O",
            [
              "area",
              "CDH",
              "U_CDH",
              "43075381927/62500000000"
            ]
          ],
          "target": "DHO",
          "sign": -1,
          "deps": [
            "CDO",
            "CHO"
          ],
          "area_stage": 13
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
        "L_DGP": {
          "triangle": "DGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DGP",
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
              "O"
            ]
          }
        },
        "L_EGO": {
          "triangle": "EGO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "GEO",
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
            "triangle": "OGP",
            "points": []
          }
        },
        "U_CFG": {
          "triangle": "CFG",
          "side": "hi",
          "value": "46939/62500",
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
              "539513/1000000",
              "72112683423/125000000000",
              "597687/1000000",
              "597813107433/1000000000000",
              "634549892567/1000000000000",
              "79384433423/125000000000",
              "81932691577/125000000000",
              "655987107433/1000000000000",
              "692723892567/1000000000000",
              "13857/20000",
              "89204441577/125000000000",
              "46939/62500"
            ],
            "cell": "CA"
          }
        },
        "U_CFH": {
          "triangle": "CFH",
          "side": "hi",
          "value": "108797/125000",
          "witness": {
            "kind": "vertices",
            "signed": "CFH",
            "used": [
              2,
              5,
              7
            ],
            "values": [
              "717039/1000000",
              "767285848193/1000000000000",
              "820129151807/1000000000000",
              "108797/125000"
            ],
            "cell": "CA"
          }
        },
        "U_CGO": {
          "triangle": "CGO",
          "side": "hi",
          "value": "71671825817/125000000000",
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
              "-138132153/10000000000",
              "1943153073/125000000000",
              "12375673437/500000000000",
              "27054893379/500000000000",
              "577410211/3906250000",
              "6676035081/40000000000",
              "1771754539/10000000000",
              "196259316909/1000000000000",
              "207254027923/1000000000000",
              "882236931/4000000000",
              "2309394621/10000000000",
              "256291161309/1000000000000",
              "8134309437/31250000000",
              "134752012137/500000000000",
              "33699545767/125000000000",
              "270881162091/1000000000000",
              "2899650251/10000000000",
              "149431232079/500000000000",
              "12009584079/40000000000",
              "39915433123/125000000000",
              "66063939013/200000000000",
              "379356828451/1000000000000",
              "16050933003/40000000000",
              "450310458461/1000000000000",
              "452006705323/1000000000000",
              "22669192157/50000000000",
              "9306238203/20000000000",
              "501043838709/1000000000000",
              "251210488263/500000000000",
              "32146815221/62500000000",
              "10486749463/20000000000",
              "71671825817/125000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "18": {
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
        "282": {
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
        "4730": {
          "row": [
            "linear",
            {
              "CFG": "23689/62500",
              "CFO": "-46939/62500"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFG",
            "point": "O",
            "line": "CF",
            "side": "upper",
            "outer_upper": {
              "triangle": "CFG",
              "ref": "U_CFG",
              "value": "46939/62500"
            },
            "fan_lower": [
              {
                "triangle": "FGO",
                "ref": "L_FGO",
                "value": "93/1000"
              },
              {
                "triangle": "CGO",
                "ref": "L_CGO",
                "value": "279/1000"
              },
              {
                "triangle": "CFO",
                "ref": "L_CFO",
                "value": "93/1000"
              }
            ],
            "residual": "35753/125000"
          }
        },
        "4802": {
          "row": [
            "linear",
            {
              "CFG": "23689/62500",
              "CFP": "-46939/62500"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFG",
            "point": "P",
            "line": "CF",
            "side": "upper",
            "outer_upper": {
              "triangle": "CFG",
              "ref": "U_CFG",
              "value": "46939/62500"
            },
            "fan_lower": [
              {
                "triangle": "FGP",
                "ref": "L_FGP",
                "value": "279/1000"
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
            "residual": "35753/125000"
          }
        },
        "4943": {
          "row": [
            "linear",
            {
              "BCF": "-93/1000",
              "BCH": "-93/1000",
              "BCP": "108797/125000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "CFH",
            "point": "P",
            "line": "BC",
            "side": "lower",
            "outer_upper": {
              "triangle": "CFH",
              "ref": "U_CFH",
              "value": "108797/125000"
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
            "residual": "6334/15625"
          }
        },
        "5058": {
          "row": [
            "linear",
            {
              "FGO": "-93/1000",
              "CFO": "48421825817/125000000000",
              "FOP": "-71671825817/125000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "GCO",
            "point": "P",
            "line": "FO",
            "side": "upper",
            "outer_upper": {
              "triangle": "CGO",
              "ref": "U_CGO",
              "value": "71671825817/125000000000"
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
            "residual": "36796825817/125000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0113",
          "relation": 5058,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "159981/1000000",
          "sources": [
            "L_FGO",
            "L_FOP"
          ]
        },
        {
          "id": "T0137",
          "relation": 18,
          "rule": "sub",
          "triangle": "CGO",
          "side": "hi",
          "value": "498043/1000000",
          "sources": [
            "U_CFG",
            "T0113",
            "L_FGO"
          ]
        },
        {
          "id": "T0162",
          "relation": 282,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "159249/1000000",
          "sources": [
            "L_CFG",
            "L_COP",
            "T0113",
            "L_CGP",
            "T0137"
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
        "82": {
          "name": "AREA_LO_AGH",
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
            "triangle": "AGH",
            "side": "lo",
            "reference": "L_AGH",
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
        "142": {
          "name": "AREA_LO_DGP",
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
              "-13857/20000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFG",
            "side": "lo",
            "reference": "L_CFG",
            "value": "13857/20000"
          }
        },
        "178": {
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
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "FGP",
            "side": "lo",
            "reference": "L_FGP",
            "value": "279/1000"
          }
        },
        "190": {
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
              "-159981/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFO",
            "side": "lo",
            "reference": "T0113",
            "value": "159981/1000000"
          }
        },
        "196": {
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
              "-159249/1000000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFP",
            "side": "lo",
            "reference": "T0162",
            "value": "159249/1000000"
          }
        },
        "212": {
          "name": "AREA_LO_FGO",
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
                6
              ],
              "-1"
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
                8,
                9
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
            "triangle": "FGO",
            "side": "lo",
            "reference": "L_FGO",
            "value": "93/1000"
          }
        },
        "216": {
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
              "-93/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "EGO",
            "side": "lo",
            "reference": "L_EGO",
            "value": "93/1000"
          }
        },
        "229": {
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
        "237": {
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
        "242": {
          "name": "Central_endpoint_tangent_1",
          "terms": [
            [
              [
                0,
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
              "-1/5"
            ],
            [
              [
                2
              ],
              "1/100"
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
            "kind": "central_endpoint_tangent",
            "cell": "CA",
            "t": "1/10"
          }
        },
        "3027": {
          "name": "LINEAR_4730",
          "terms": [
            [
              [
                5,
                8
              ],
              "23689/62500"
            ],
            [
              [
                2,
                8
              ],
              "-23689/62500"
            ],
            [
              [
                6
              ],
              "-23689/62500"
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
              "-46939/62500"
            ],
            [
              [
                2,
                10
              ],
              "46939/62500"
            ],
            [
              [
                9
              ],
              "46939/62500"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 4730
          }
        },
        "3099": {
          "name": "LINEAR_4802",
          "terms": [
            [
              [
                5,
                8
              ],
              "23689/62500"
            ],
            [
              [
                2,
                8
              ],
              "-23689/62500"
            ],
            [
              [
                6
              ],
              "-23689/62500"
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
              "-46939/62500"
            ],
            [
              [
                2,
                12
              ],
              "46939/62500"
            ],
            [
              [
                11
              ],
              "46939/62500"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 4802
          }
        },
        "3240": {
          "name": "LINEAR_4943",
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
                12
              ],
              "108797/125000"
            ],
            [
              [
                1,
                12
              ],
              "-108797/125000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 4943
          }
        }
      },
      "coordinate": {
        "low": [
          "140399/1000000",
          "54071/500000",
          "728341/1000000",
          "122247/1000000",
          "458847/1000000",
          "728341/1000000",
          "7469/62500",
          "343007/500000",
          "394867/1000000",
          "200543/500000",
          "520669/1000000",
          "196549/500000",
          "180151/1000000"
        ],
        "high": [
          "471729/1000000",
          "263493/1000000",
          "867051/1000000",
          "12129/25000",
          "12734/15625",
          "867051/1000000",
          "174201/1000000",
          "1/1",
          "754999/1000000",
          "70707/100000",
          "838711/1000000",
          "353901/500000",
          "572321/1000000"
        ],
        "steps": [
          {
            "factor": 8,
            "target": "b",
            "old": [
              "108013/1000000",
              "5439/20000"
            ],
            "lines": [
              [
                "266293/500000",
                "-93/1000"
              ],
              [
                "185567/1000000",
                "-93/1000"
              ],
              [
                "34411/40000",
                "-93/1000"
              ],
              [
                "64157/125000",
                "-93/1000"
              ]
            ],
            "raw": [
              "3720/34411",
              "5439/20000"
            ],
            "new": [
              "13513/125000",
              "5439/20000"
            ]
          },
          {
            "factor": 30,
            "target": "d",
            "old": [
              "30351/250000",
              "64659/125000"
            ],
            "lines": [
              [
                "121787/200000",
                "-93/1000"
              ],
              [
                "445089/1000000",
                "-93/1000"
              ],
              [
                "23821/31250",
                "-93/1000"
              ],
              [
                "299213/500000",
                "-93/1000"
              ]
            ],
            "raw": [
              "11625/95284",
              "64659/125000"
            ],
            "new": [
              "122003/1000000",
              "64659/125000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "717039/1000000",
              "108797/125000"
            ],
            "lines": [
              [
                "-320991/1000000",
                "227991/1000000"
              ],
              [
                "37139/500000",
                "-83639/500000"
              ],
              [
                "-709359/1000000",
                "616359/1000000"
              ],
              [
                "-31409/100000",
                "22109/100000"
              ]
            ],
            "raw": [
              "717039/1000000",
              "205453/236453"
            ],
            "new": [
              "717039/1000000",
              "27153/31250"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "122003/1000000",
              "64659/125000"
            ],
            "lines": [
              [
                "-282961/1000000",
                "16175012617/500000000000"
              ],
              [
                "-4097/31250",
                "-545651791/15625000000"
              ],
              [
                "-282961/1000000",
                "71121511441/500000000000"
              ],
              [
                "-4097/31250",
                "249920057/15625000000"
              ]
            ],
            "raw": [
              "122003/1000000",
              "71121511441/141480500000"
            ],
            "new": [
              "122003/1000000",
              "100539/200000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "221497/500000",
              "415681/500000"
            ],
            "lines": [
              [
                "282961/1000000",
                "-127522090883/1000000000000"
              ],
              [
                "4097/31250",
                "-3406096291/31250000000"
              ],
              [
                "282961/1000000",
                "-47048615979/200000000000"
              ],
              [
                "4097/31250",
                "-993158283/6250000000"
              ]
            ],
            "raw": [
              "127522090883/282961000000",
              "415681/500000"
            ],
            "new": [
              "45067/100000",
              "415681/500000"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "717039/1000000",
              "108797/125000"
            ],
            "lines": [
              [
                "-328667/1000000",
                "235667/1000000"
              ],
              [
                "2081/40000",
                "-5801/40000"
              ],
              [
                "-709359/1000000",
                "616359/1000000"
              ]
            ],
            "raw": [
              "717039/1000000",
              "205453/236453"
            ],
            "new": [
              "717039/1000000",
              "27153/31250"
            ]
          },
          {
            "factor": 70,
            "target": "z",
            "old": [
              "380209/1000000",
              "94521/125000"
            ],
            "lines": [
              [
                "13513/125000",
                "-228570933/2500000000"
              ],
              [
                "13513/125000",
                "-683789871/7812500000"
              ],
              [
                "5439/20000",
                "-2286435111/20000000000"
              ],
              [
                "5439/20000",
                "-10454760057/62500000000"
              ],
              [
                "13513/125000",
                "-1666000221/20000000000"
              ],
              [
                "13513/125000",
                "-3700578627/62500000000"
              ],
              [
                "5439/20000",
                "-530966967/5000000000"
              ],
              [
                "5439/20000",
                "-2171254929/15625000000"
              ]
            ],
            "raw": [
              "176988989/453250000",
              "94521/125000"
            ],
            "new": [
              "48811/125000",
              "94521/125000"
            ]
          },
          {
            "factor": 78,
            "target": "e",
            "old": [
              "45067/100000",
              "415681/500000"
            ],
            "lines": [
              [
                "-597687/1000000",
                "61394390629/125000000000"
              ],
              [
                "-93693/125000",
                "2150208833/3906250000"
              ],
              [
                "-539513/1000000",
                "54122640629/125000000000"
              ],
              [
                "-69137/100000",
                "3845933291/7812500000"
              ],
              [
                "-597687/1000000",
                "48460243319/125000000000"
              ],
              [
                "-93693/125000",
                "1962934963/3906250000"
              ],
              [
                "-539513/1000000",
                "41188493319/125000000000"
              ],
              [
                "-69137/100000",
                "3471385551/7812500000"
              ]
            ],
            "raw": [
              "45067/100000",
              "61394390629/74710875000"
            ],
            "new": [
              "45067/100000",
              "2568/3125"
            ]
          },
          {
            "factor": 82,
            "target": "a",
            "old": [
              "5589/40000",
              "60843/125000"
            ],
            "lines": [
              [
                "-14919/125000",
                "-1594792191/125000000000"
              ],
              [
                "-88763/500000",
                "13176341293/500000000000"
              ],
              [
                "-14919/125000",
                "1647/62500"
              ],
              [
                "-88763/500000",
                "42263/500000"
              ]
            ],
            "raw": [
              "5589/40000",
              "42263/88763"
            ],
            "new": [
              "5589/40000",
              "238067/500000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "48811/125000",
              "94521/125000"
            ],
            "lines": [
              [
                "-717039/1000000",
                "308831544657/1000000000000"
              ],
              [
                "-27153/31250",
                "51365834523/125000000000"
              ],
              [
                "-717039/1000000",
                "269720524543/1000000000000"
              ],
              [
                "-27153/31250",
                "37181565607/100000000000"
              ],
              [
                "-717039/1000000",
                "504687/1000000"
              ],
              [
                "-27153/31250",
                "20517/31250"
              ],
              [
                "-717039/1000000",
                "446513/1000000"
              ],
              [
                "-27153/31250",
                "59837/100000"
              ]
            ],
            "raw": [
              "48811/125000",
              "977/1293"
            ],
            "new": [
              "48811/125000",
              "94451/125000"
            ]
          },
          {
            "factor": 150,
            "target": "f",
            "old": [
              "717039/1000000",
              "27153/31250"
            ],
            "lines": [
              [
                "48811/125000",
                "-46894765629/125000000000"
              ],
              [
                "48811/125000",
                "-2207808291/7812500000"
              ],
              [
                "48811/125000",
                "-54166515629/125000000000"
              ],
              [
                "48811/125000",
                "-1331146333/3906250000"
              ],
              [
                "94451/125000",
                "-79620425589/125000000000"
              ],
              [
                "94451/125000",
                "-4686334131/7812500000"
              ],
              [
                "94451/125000",
                "-86892175589/125000000000"
              ],
              [
                "94451/125000",
                "-2570409253/3906250000"
              ]
            ],
            "raw": [
              "2207808291/3050687500",
              "27153/31250"
            ],
            "new": [
              "180927/250000",
              "27153/31250"
            ]
          },
          {
            "factor": 150,
            "target": "g",
            "old": [
              "14919/125000",
              "88763/500000"
            ],
            "lines": [
              [
                "-1/1",
                "3349145559/125000000000"
              ],
              [
                "-1/1",
                "3729744633/31250000000"
              ],
              [
                "-1/1",
                "10435917027/125000000000"
              ],
              [
                "-1/1",
                "88023/500000"
              ],
              [
                "-1/1",
                "3653518719/125000000000"
              ],
              [
                "-1/1",
                "2073149553/31250000000"
              ],
              [
                "-1/1",
                "17366670507/125000000000"
              ]
            ],
            "raw": [
              "14919/125000",
              "88023/500000"
            ],
            "new": [
              "14919/125000",
              "88023/500000"
            ]
          },
          {
            "factor": 178,
            "target": "v",
            "old": [
              "35579/200000",
              "144617/250000"
            ],
            "lines": [
              [
                "-151089/250000",
                "7319611697/62500000000"
              ],
              [
                "-93693/125000",
                "10862997431/62500000000"
              ],
              [
                "-273831/500000",
                "3776236697/62500000000"
              ],
              [
                "-13857/20000",
                "7319622431/62500000000"
              ],
              [
                "-151089/250000",
                "15116155977/62500000000"
              ],
              [
                "-93693/125000",
                "21972731871/62500000000"
              ],
              [
                "-273831/500000",
                "11572780977/62500000000"
              ],
              [
                "-13857/20000",
                "18429356871/62500000000"
              ],
              [
                "-151089/250000",
                "19902529803/62500000000"
              ],
              [
                "-93693/125000",
                "23445915537/62500000000"
              ],
              [
                "-273831/500000",
                "16359154803/62500000000"
              ],
              [
                "-13857/20000",
                "19902540537/62500000000"
              ],
              [
                "-151089/250000",
                "20161445523/62500000000"
              ],
              [
                "-93693/125000",
                "27018021417/62500000000"
              ],
              [
                "-273831/500000",
                "16618070523/62500000000"
              ],
              [
                "-13857/20000",
                "23474646417/62500000000"
              ]
            ],
            "raw": [
              "35579/200000",
              "9006007139/15615500000"
            ],
            "new": [
              "35579/200000",
              "18023/31250"
            ]
          },
          {
            "factor": 190,
            "target": "x",
            "old": [
              "389701/1000000",
              "22293/31250"
            ],
            "lines": [
              [
                "-1/1",
                "280211808777/500000000000"
              ],
              [
                "-1/1",
                "79455444099/125000000000"
              ],
              [
                "-1/1",
                "316847532381/500000000000"
              ],
              [
                "-1/1",
                "141783/200000"
              ],
              [
                "-1/1",
                "562679560191/1000000000000"
              ],
              [
                "-1/1",
                "146632593117/250000000000"
              ],
              [
                "-1/1",
                "685064187723/1000000000000"
              ]
            ],
            "raw": [
              "389701/1000000",
              "141783/200000"
            ],
            "new": [
              "389701/1000000",
              "141783/200000"
            ]
          },
          {
            "factor": 196,
            "target": "u",
            "old": [
              "191027/500000",
              "356181/500000"
            ],
            "lines": [
              [
                "-1/1",
                "111795276351/200000000000"
              ],
              [
                "-1/1",
                "34190939037/50000000000"
              ],
              [
                "-1/1",
                "116960920203/200000000000"
              ],
              [
                "-1/1",
                "709647/1000000"
              ],
              [
                "-1/1",
                "17551132887/31250000000"
              ],
              [
                "-1/1",
                "9779872713/15625000000"
              ],
              [
                "-1/1",
                "20167856211/31250000000"
              ]
            ],
            "raw": [
              "191027/500000",
              "709647/1000000"
            ],
            "new": [
              "191027/500000",
              "709647/1000000"
            ]
          },
          {
            "factor": 212,
            "target": "y",
            "old": [
              "252333/500000",
              "842939/1000000"
            ],
            "lines": [
              [
                "-151089/250000",
                "38471840677/125000000000"
              ],
              [
                "-93693/125000",
                "9111722429/25000000000"
              ],
              [
                "-273831/500000",
                "31385090677/125000000000"
              ],
              [
                "-13857/20000",
                "7694372429/25000000000"
              ],
              [
                "-151089/250000",
                "53715920157/125000000000"
              ],
              [
                "-93693/125000",
                "13485814389/25000000000"
              ],
              [
                "-273831/500000",
                "46629170157/125000000000"
              ],
              [
                "-13857/20000",
                "12068464389/25000000000"
              ],
              [
                "-151089/250000",
                "62792436123/125000000000"
              ],
              [
                "-93693/125000",
                "69879207591/125000000000"
              ],
              [
                "-273831/500000",
                "55705686123/125000000000"
              ],
              [
                "-13857/20000",
                "62792457591/125000000000"
              ],
              [
                "-151089/250000",
                "63467588643/125000000000"
              ],
              [
                "-93693/125000",
                "77180740431/125000000000"
              ],
              [
                "-273831/500000",
                "56380838643/125000000000"
              ],
              [
                "-13857/20000",
                "70093990431/125000000000"
              ]
            ],
            "raw": [
              "252333/500000",
              "21155862881/25181500000"
            ],
            "new": [
              "252333/500000",
              "105017/125000"
            ]
          },
          {
            "factor": 216,
            "target": "y",
            "old": [
              "252333/500000",
              "105017/125000"
            ],
            "lines": [
              [
                "110081/125000",
                "-226576309871/500000000000"
              ],
              [
                "110081/125000",
                "-69184553769/125000000000"
              ],
              [
                "411977/500000",
                "-213801167381/500000000000"
              ],
              [
                "411977/500000",
                "-63360946089/125000000000"
              ],
              [
                "110081/125000",
                "-337992495311/500000000000"
              ],
              [
                "110081/125000",
                "-97038600129/125000000000"
              ],
              [
                "411977/500000",
                "-325217352821/500000000000"
              ],
              [
                "411977/500000",
                "-91214992449/125000000000"
              ],
              [
                "110081/125000",
                "-47236355669/100000000000"
              ],
              [
                "110081/125000",
                "-17278612259/25000000000"
              ],
              [
                "411977/500000",
                "-44681327171/100000000000"
              ],
              [
                "411977/500000",
                "-16113890723/25000000000"
              ],
              [
                "110081/125000",
                "-57864451189/100000000000"
              ],
              [
                "110081/125000",
                "-19935636139/25000000000"
              ],
              [
                "411977/500000",
                "-55309422691/100000000000"
              ],
              [
                "411977/500000",
                "-18770914603/25000000000"
              ]
            ],
            "raw": [
              "226576309871/440324000000",
              "105017/125000"
            ],
            "new": [
              "514567/1000000",
              "105017/125000"
            ]
          },
          {
            "factor": 229,
            "target": "c",
            "old": [
              "717039/1000000",
              "27153/31250"
            ],
            "lines": [
              [
                "1/1",
                "-180927/250000"
              ],
              [
                "1/1",
                "-27153/31250"
              ]
            ],
            "raw": [
              "180927/250000",
              "27153/31250"
            ],
            "new": [
              "180927/250000",
              "27153/31250"
            ]
          },
          {
            "factor": 237,
            "target": "b",
            "old": [
              "13513/125000",
              "5439/20000"
            ],
            "lines": [
              [
                "-21655207809/125000000000",
                "-288540966741057/31250000000000000"
              ],
              [
                "-21655207809/125000000000",
                "-43303392362223/3906250000000000"
              ],
              [
                "-105678831153/500000000000",
                "2293942884018831/125000000000000000"
              ],
              [
                "-105678831153/500000000000",
                "344268302297409/15625000000000000"
              ],
              [
                "-3318/15625",
                "297986769/15625000000"
              ],
              [
                "-3318/15625",
                "44720991/1953125000"
              ],
              [
                "-134523/500000",
                "7512631821/125000000000"
              ],
              [
                "-134523/500000",
                "1127474019/15625000000"
              ]
            ],
            "raw": [
              "13513/125000",
              "125274891/467093750"
            ],
            "new": [
              "13513/125000",
              "268201/1000000"
            ]
          },
          {
            "factor": 237,
            "target": "g",
            "old": [
              "14919/125000",
              "88023/500000"
            ],
            "lines": [
              [
                "103469335211/250000000000",
                "-19339629/250000000"
              ],
              [
                "306242366677/1000000000000",
                "-92247537/1000000000"
              ],
              [
                "63936103789/125000000000",
                "-90861/1000000"
              ],
              [
                "80770771229/200000000000",
                "-105750021/1000000000"
              ],
              [
                "153901/250000",
                "-19339629/250000000"
              ],
              [
                "455507/1000000",
                "-92247537/1000000000"
              ],
              [
                "95099/125000",
                "-90861/1000000"
              ],
              [
                "120139/200000",
                "-105750021/1000000000"
              ]
            ],
            "raw": [
              "90861/760792",
              "88023/500000"
            ],
            "new": [
              "119429/1000000",
              "88023/500000"
            ]
          },
          {
            "factor": 237,
            "target": "h",
            "old": [
              "672311/1000000",
              "1/1"
            ],
            "lines": [
              [
                "18380242529/250000000000",
                "-19339629/250000000"
              ],
              [
                "54400745503/1000000000000",
                "-92247537/1000000000"
              ],
              [
                "11357578471/125000000000",
                "-90861/1000000"
              ],
              [
                "14348080631/200000000000",
                "-105750021/1000000000"
              ],
              [
                "13546827723/125000000000",
                "-19339629/250000000"
              ],
              [
                "40095092661/500000000000",
                "-92247537/1000000000"
              ],
              [
                "8370899277/62500000000",
                "-90861/1000000"
              ],
              [
                "10574995197/100000000000",
                "-105750021/1000000000"
              ]
            ],
            "raw": [
              "1892937500/2790299759",
              "1/1"
            ],
            "new": [
              "678399/1000000",
              "1/1"
            ]
          },
          {
            "factor": 242,
            "target": "a",
            "old": [
              "5589/40000",
              "238067/500000"
            ],
            "lines": [
              [
                "63305295873/250000000000",
                "-55854027/1000000000"
              ],
              [
                "10083718047/31250000000",
                "-54402147/1000000000"
              ],
              [
                "303729/625000",
                "-2144073/25000000"
              ],
              [
                "376323/625000",
                "-32934/390625"
              ]
            ],
            "raw": [
              "87824/627205",
              "238067/500000"
            ],
            "new": [
              "17503/125000",
              "238067/500000"
            ]
          },
          {
            "factor": 3027,
            "target": "x",
            "old": [
              "389701/1000000",
              "141783/200000"
            ],
            "lines": [
              [
                "46939/62500",
                "-19655364581/62500000000"
              ],
              [
                "46939/62500",
                "-5216812560650243/15625000000000000"
              ],
              [
                "46939/62500",
                "-5454774979849757/15625000000000000"
              ],
              [
                "46939/62500",
                "-23030985581/62500000000"
              ],
              [
                "46939/62500",
                "-10498282347/31250000000"
              ],
              [
                "46939/62500",
                "-5552112588900243/15625000000000000"
              ],
              [
                "46939/62500",
                "-5790075008099757/15625000000000000"
              ],
              [
                "46939/62500",
                "-12186092847/31250000000"
              ],
              [
                "46939/62500",
                "-5530757207451203/15625000000000000"
              ],
              [
                "46939/62500",
                "-5140830333048797/15625000000000000"
              ],
              [
                "46939/62500",
                "-5866057235701203/15625000000000000"
              ],
              [
                "46939/62500",
                "-5476130361298797/15625000000000000"
              ],
              [
                "46939/62500",
                "-291382877677301/976562500000000"
              ],
              [
                "46939/62500",
                "-375591343603949/976562500000000"
              ],
              [
                "46939/62500",
                "-156169564721463/488281250000000"
              ],
              [
                "46939/62500",
                "-198273797684787/488281250000000"
              ],
              [
                "46939/62500",
                "-311004418102361/976562500000000"
              ],
              [
                "46939/62500",
                "-355969803178889/976562500000000"
              ],
              [
                "46939/62500",
                "-165980334933993/488281250000000"
              ],
              [
                "46939/62500",
                "-188463027472257/488281250000000"
              ]
            ],
            "raw": [
              "291382877677301/733421875000000",
              "141783/200000"
            ],
            "new": [
              "99323/250000",
              "141783/200000"
            ]
          },
          {
            "factor": 3099,
            "target": "u",
            "old": [
              "191027/500000",
              "709647/1000000"
            ],
            "lines": [
              [
                "46939/62500",
                "-19655364581/62500000000"
              ],
              [
                "46939/62500",
                "-5790415757899619/15625000000000000"
              ],
              [
                "46939/62500",
                "-4881171782600381/15625000000000000"
              ],
              [
                "46939/62500",
                "-23030985581/62500000000"
              ],
              [
                "46939/62500",
                "-10498282347/31250000000"
              ],
              [
                "46939/62500",
                "-6125715786149619/15625000000000000"
              ],
              [
                "46939/62500",
                "-5216471810850381/15625000000000000"
              ],
              [
                "46939/62500",
                "-12186092847/31250000000"
              ],
              [
                "46939/62500",
                "-6104360404700579/15625000000000000"
              ],
              [
                "46939/62500",
                "-4567227135799421/15625000000000000"
              ],
              [
                "46939/62500",
                "-6439660432950579/15625000000000000"
              ],
              [
                "46939/62500",
                "-4902527164049421/15625000000000000"
              ],
              [
                "46939/62500",
                "-638861555627377/1953125000000000"
              ],
              [
                "46939/62500",
                "-695086886935123/1953125000000000"
              ],
              [
                "46939/62500",
                "-680774059158627/1953125000000000"
              ],
              [
                "46939/62500",
                "-736999390466373/1953125000000000"
              ],
              [
                "46939/62500",
                "-678104636477497/1953125000000000"
              ],
              [
                "46939/62500",
                "-655843806085003/1953125000000000"
              ],
              [
                "46939/62500",
                "-720017140008747/1953125000000000"
              ],
              [
                "46939/62500",
                "-697756309616253/1953125000000000"
              ]
            ],
            "raw": [
              "4567227135799421/11734750000000000",
              "709647/1000000"
            ],
            "new": [
              "77841/200000",
              "709647/1000000"
            ]
          },
          {
            "factor": 3240,
            "target": "v",
            "old": [
              "35579/200000",
              "18023/31250"
            ],
            "lines": [
              [
                "16743967097/31250000000",
                "-24022577458407/250000000000000"
              ],
              [
                "49557795079/125000000000",
                "-71100591876249/1000000000000000"
              ],
              [
                "10346485903/15625000000",
                "-14844108184593/125000000000000"
              ],
              [
                "13070762783/25000000000",
                "-18752629503873/200000000000000"
              ],
              [
                "16743967097/31250000000",
                "-14312793/125000000"
              ],
              [
                "49557795079/125000000000",
                "-42362151/500000000"
              ],
              [
                "10346485903/15625000000",
                "-8844207/62500000"
              ],
              [
                "13070762783/25000000000",
                "-11172927/100000000"
              ]
            ],
            "raw": [
              "156091107/870376000",
              "18023/31250"
            ],
            "new": [
              "179337/1000000",
              "18023/31250"
            ]
          },
          {
            "factor": 8,
            "target": "b",
            "old": [
              "13513/125000",
              "268201/1000000"
            ],
            "lines": [
              [
                "4307/8000",
                "-93/1000"
              ],
              [
                "40453/200000",
                "-93/1000"
              ],
              [
                "107497/125000",
                "-93/1000"
              ],
              [
                "261933/500000",
                "-93/1000"
              ]
            ],
            "raw": [
              "11625/107497",
              "268201/1000000"
            ],
            "new": [
              "54071/500000",
              "268201/1000000"
            ]
          },
          {
            "factor": 30,
            "target": "d",
            "old": [
              "122003/1000000",
              "100539/200000"
            ],
            "lines": [
              [
                "307783/500000",
                "-93/1000"
              ],
              [
                "455507/1000000",
                "-93/1000"
              ],
              [
                "380377/500000",
                "-93/1000"
              ],
              [
                "120139/200000",
                "-93/1000"
              ]
            ],
            "raw": [
              "46500/380377",
              "100539/200000"
            ],
            "new": [
              "122247/1000000",
              "100539/200000"
            ]
          },
          {
            "factor": 50,
            "target": "c",
            "old": [
              "180927/250000",
              "27153/31250"
            ],
            "lines": [
              [
                "-328423/1000000",
                "235423/1000000"
              ],
              [
                "2081/40000",
                "-5801/40000"
              ],
              [
                "-699513/1000000",
                "606513/1000000"
              ],
              [
                "-63813/200000",
                "45213/200000"
              ]
            ],
            "raw": [
              "180927/250000",
              "202171/233171"
            ],
            "new": [
              "180927/250000",
              "867051/1000000"
            ]
          },
          {
            "factor": 50,
            "target": "d",
            "old": [
              "122247/1000000",
              "100539/200000"
            ],
            "lines": [
              [
                "-69073/250000",
                "787912891/25000000000"
              ],
              [
                "-132949/1000000",
                "-3308387417/100000000000"
              ],
              [
                "-69073/250000",
                "52361607/390625000"
              ],
              [
                "-132949/1000000",
                "793563/48828125"
              ]
            ],
            "raw": [
              "122247/1000000",
              "104723214/215853125"
            ],
            "new": [
              "122247/1000000",
              "12129/25000"
            ]
          },
          {
            "factor": 50,
            "target": "e",
            "old": [
              "45067/100000",
              "2568/3125"
            ],
            "lines": [
              [
                "69073/250000",
                "-31693967031/250000000000"
              ],
              [
                "132949/1000000",
                "-109252616403/1000000000000"
              ],
              [
                "69073/250000",
                "-1419036417/6250000000"
              ],
              [
                "132949/1000000",
                "-3937538421/25000000000"
              ]
            ],
            "raw": [
              "31693967031/69073000000",
              "2568/3125"
            ],
            "new": [
              "458847/1000000",
              "2568/3125"
            ]
          },
          {
            "factor": 62,
            "target": "f",
            "old": [
              "180927/250000",
              "27153/31250"
            ],
            "lines": [
              [
                "-1683/5000",
                "609/2500"
              ],
              [
                "26313/1000000",
                "-119313/1000000"
              ],
              [
                "-699513/1000000",
                "606513/1000000"
              ]
            ],
            "raw": [
              "180927/250000",
              "202171/233171"
            ],
            "new": [
              "180927/250000",
              "867051/1000000"
            ]
          },
          {
            "factor": 70,
            "target": "z",
            "old": [
              "48811/125000",
              "94451/125000"
            ],
            "lines": [
              [
                "54071/500000",
                "-11427443639/125000000000"
              ],
              [
                "54071/500000",
                "-43812937771/500000000000"
              ],
              [
                "268201/1000000",
                "-3557239079/31250000000"
              ],
              [
                "268201/1000000",
                "-20479425931/125000000000"
              ],
              [
                "54071/500000",
                "-81534971/976562500"
              ],
              [
                "54071/500000",
                "-473973413/7812500000"
              ],
              [
                "268201/1000000",
                "-2647597793/25000000000"
              ],
              [
                "268201/1000000",
                "-13687812877/100000000000"
              ]
            ],
            "raw": [
              "2647597793/6705025000",
              "94451/125000"
            ],
            "new": [
              "394867/1000000",
              "94451/125000"
            ]
          },
          {
            "factor": 78,
            "target": "e",
            "old": [
              "458847/1000000",
              "2568/3125"
            ],
            "lines": [
              [
                "-604279/1000000",
                "123118101709/250000000000"
              ],
              [
                "-373811/500000",
                "549073827217/1000000000000"
              ],
              [
                "-273831/500000",
                "108963851709/250000000000"
              ],
              [
                "-138201/200000",
                "492456827217/1000000000000"
              ],
              [
                "-604279/1000000",
                "12275079827/31250000000"
              ],
              [
                "-373811/500000",
                "62639209001/125000000000"
              ],
              [
                "-273831/500000",
                "10505798577/31250000000"
              ],
              [
                "-138201/200000",
                "55562084001/125000000000"
              ]
            ],
            "raw": [
              "458847/1000000",
              "123118101709/151069750000"
            ],
            "new": [
              "458847/1000000",
              "12734/15625"
            ]
          },
          {
            "factor": 82,
            "target": "a",
            "old": [
              "17503/125000",
              "238067/500000"
            ],
            "lines": [
              [
                "-119429/1000000",
                "-11979485829/1000000000000"
              ],
              [
                "-88023/500000",
                "13214715177/500000000000"
              ],
              [
                "-119429/1000000",
                "26429/1000000"
              ],
              [
                "-88023/500000",
                "41523/500000"
              ]
            ],
            "raw": [
              "17503/125000",
              "13841/29341"
            ],
            "new": [
              "17503/125000",
              "471729/1000000"
            ]
          },
          {
            "factor": 84,
            "target": "z",
            "old": [
              "394867/1000000",
              "94451/125000"
            ],
            "lines": [
              [
                "-180927/250000",
                "316942269321/1000000000000"
              ],
              [
                "-867051/1000000",
                "207093008589/500000000000"
              ],
              [
                "-180927/250000",
                "139266676569/500000000000"
              ],
              [
                "-867051/1000000",
                "75155420199/200000000000"
              ],
              [
                "-180927/250000",
                "511279/1000000"
              ],
              [
                "-867051/1000000",
                "327311/500000"
              ],
              [
                "-180927/250000",
                "227331/500000"
              ],
              [
                "-867051/1000000",
                "119601/200000"
              ]
            ],
            "raw": [
              "394867/1000000",
              "654622/867051"
            ],
            "new": [
              "394867/1000000",
              "754999/1000000"
            ]
          },
          {
            "factor": 142,
            "target": "v",
            "old": [
              "179337/1000000",
              "18023/31250"
            ],
            "lines": [
              [
                "-880571/1000000",
                "181162095937/1000000000000"
              ],
              [
                "-880571/1000000",
                "11162692537/40000000000"
              ],
              [
                "-411977/500000",
                "87120418769/500000000000"
              ],
              [
                "-411977/500000",
                "50319801941/200000000000"
              ],
              [
                "-880571/1000000",
                "401128920877/1000000000000"
              ],
              [
                "-880571/1000000",
                "99806827673/200000000000"
              ],
              [
                "-411977/500000",
                "197103831239/500000000000"
              ],
              [
                "-411977/500000",
                "94313166929/200000000000"
              ],
              [
                "-880571/1000000",
                "93803197897/1000000000000"
              ],
              [
                "-880571/1000000",
                "308000982931/1000000000000"
              ],
              [
                "-411977/500000",
                "43440969749/500000000000"
              ],
              [
                "-411977/500000",
                "280532679211/1000000000000"
              ],
              [
                "-880571/1000000",
                "198368604493/1000000000000"
              ],
              [
                "-880571/1000000",
                "412566389527/1000000000000"
              ],
              [
                "-411977/500000",
                "95723673047/500000000000"
              ],
              [
                "-411977/500000",
                "385098085807/1000000000000"
              ]
            ],
            "raw": [
              "179337/1000000",
              "4963850891/8673200000"
            ],
            "new": [
              "179337/1000000",
              "572321/1000000"
            ]
          },
          {
            "factor": 150,
            "target": "f",
            "old": [
              "180927/250000",
              "867051/1000000"
            ],
            "lines": [
              [
                "394867/1000000",
                "-93584851709/250000000000"
              ],
              [
                "394867/1000000",
                "-287597827217/1000000000000"
              ],
              [
                "394867/1000000",
                "-107739101709/250000000000"
              ],
              [
                "394867/1000000",
                "-344214827217/1000000000000"
              ],
              [
                "754999/1000000",
                "-158742454073/250000000000"
              ],
              [
                "754999/1000000",
                "-599850637949/1000000000000"
              ],
              [
                "754999/1000000",
                "-172896704073/250000000000"
              ],
              [
                "754999/1000000",
                "-656467637949/1000000000000"
              ]
            ],
            "raw": [
              "287597827217/394867000000",
              "867051/1000000"
            ],
            "new": [
              "728341/1000000",
              "867051/1000000"
            ]
          },
          {
            "factor": 150,
            "target": "g",
            "old": [
              "119429/1000000",
              "88023/500000"
            ],
            "lines": [
              [
                "-1/1",
                "32687418811/1000000000000"
              ],
              [
                "-1/1",
                "11942899843/100000000000"
              ],
              [
                "-1/1",
                "87459420381/1000000000000"
              ],
              [
                "-1/1",
                "174201/1000000"
              ],
              [
                "-1/1",
                "34355910367/1000000000000"
              ],
              [
                "-1/1",
                "6947508871/100000000000"
              ],
              [
                "-1/1",
                "139081821657/1000000000000"
              ]
            ],
            "raw": [
              "119429/1000000",
              "174201/1000000"
            ],
            "new": [
              "119429/1000000",
              "174201/1000000"
            ]
          },
          {
            "factor": 190,
            "target": "x",
            "old": [
              "99323/250000",
              "141783/200000"
            ],
            "lines": [
              [
                "-1/1",
                "566110988911/1000000000000"
              ],
              [
                "-1/1",
                "63569441143/100000000000"
              ],
              [
                "-1/1",
                "637486577481/1000000000000"
              ],
              [
                "-1/1",
                "70707/100000"
              ],
              [
                "-1/1",
                "70952418761/125000000000"
              ],
              [
                "-1/1",
                "7381684193/12500000000"
              ],
              [
                "-1/1",
                "85519326831/125000000000"
              ]
            ],
            "raw": [
              "99323/250000",
              "70707/100000"
            ],
            "new": [
              "99323/250000",
              "70707/100000"
            ]
          },
          {
            "factor": 196,
            "target": "u",
            "old": [
              "77841/200000",
              "709647/1000000"
            ],
            "lines": [
              [
                "-1/1",
                "565289868321/1000000000000"
              ],
              [
                "-1/1",
                "68292616473/100000000000"
              ],
              [
                "-1/1",
                "590165703591/1000000000000"
              ],
              [
                "-1/1",
                "353901/500000"
              ],
              [
                "-1/1",
                "567110563193/1000000000000"
              ],
              [
                "-1/1",
                "62841535409/100000000000"
              ],
              [
                "-1/1",
                "646497209103/1000000000000"
              ]
            ],
            "raw": [
              "77841/200000",
              "353901/500000"
            ],
            "new": [
              "77841/200000",
              "353901/500000"
            ]
          },
          {
            "factor": 212,
            "target": "y",
            "old": [
              "514567/1000000",
              "105017/125000"
            ],
            "lines": [
              [
                "-38057/62500",
                "315583325483/1000000000000"
              ],
              [
                "-373811/500000",
                "370355327053/1000000000000"
              ],
              [
                "-27707/50000",
                "260811325483/1000000000000"
              ],
              [
                "-13857/20000",
                "315583327053/1000000000000"
              ],
              [
                "-38057/62500",
                "434804663951/1000000000000"
              ],
              [
                "-373811/500000",
                "539530575241/1000000000000"
              ],
              [
                "-27707/50000",
                "380032663951/1000000000000"
              ],
              [
                "-13857/20000",
                "484758575241/1000000000000"
              ],
              [
                "-38057/62500",
                "503040215957/1000000000000"
              ],
              [
                "-373811/500000",
                "557812217527/1000000000000"
              ],
              [
                "-27707/50000",
                "448268215957/1000000000000"
              ],
              [
                "-13857/20000",
                "503040217527/1000000000000"
              ],
              [
                "-38057/62500",
                "510700583729/1000000000000"
              ],
              [
                "-373811/500000",
                "615426495019/1000000000000"
              ],
              [
                "-27707/50000",
                "455928583729/1000000000000"
              ],
              [
                "-13857/20000",
                "560654495019/1000000000000"
              ]
            ],
            "raw": [
              "514567/1000000",
              "26878978091/32048000000"
            ],
            "new": [
              "514567/1000000",
              "838711/1000000"
            ]
          },
          {
            "factor": 216,
            "target": "y",
            "old": [
              "514567/1000000",
              "838711/1000000"
            ],
            "lines": [
              [
                "880571/1000000",
                "-458486103797/1000000000000"
              ],
              [
                "880571/1000000",
                "-139360294031/250000000000"
              ],
              [
                "825799/1000000",
                "-433354135913/1000000000000"
              ],
              [
                "825799/1000000",
                "-128200827663/250000000000"
              ],
              [
                "880571/1000000",
                "-675540541253/1000000000000"
              ],
              [
                "880571/1000000",
                "-38724780679/50000000000"
              ],
              [
                "825799/1000000",
                "-650408573369/1000000000000"
              ],
              [
                "825799/1000000",
                "-182464437027/250000000000"
              ],
              [
                "880571/1000000",
                "-478305700237/1000000000000"
              ],
              [
                "880571/1000000",
                "-343790850963/500000000000"
              ],
              [
                "825799/1000000",
                "-453173732353/1000000000000"
              ],
              [
                "825799/1000000",
                "-321471918227/500000000000"
              ],
              [
                "880571/1000000",
                "-583799166997/1000000000000"
              ],
              [
                "880571/1000000",
                "-396537584343/500000000000"
              ],
              [
                "825799/1000000",
                "-558667199113/1000000000000"
              ],
              [
                "825799/1000000",
                "-374218651607/500000000000"
              ]
            ],
            "raw": [
              "458486103797/880571000000",
              "838711/1000000"
            ],
            "new": [
              "520669/1000000",
              "838711/1000000"
            ]
          },
          {
            "factor": 229,
            "target": "c",
            "old": [
              "180927/250000",
              "867051/1000000"
            ],
            "lines": [
              [
                "1/1",
                "-728341/1000000"
              ],
              [
                "1/1",
                "-867051/1000000"
              ]
            ],
            "raw": [
              "728341/1000000",
              "867051/1000000"
            ],
            "new": [
              "728341/1000000",
              "867051/1000000"
            ]
          },
          {
            "factor": 237,
            "target": "b",
            "old": [
              "54071/500000",
              "268201/1000000"
            ],
            "lines": [
              [
                "-174020514171/1000000000000",
                "-8725150688179689/1000000000000000000"
              ],
              [
                "-174020514171/1000000000000",
                "-10386825167520279/1000000000000000000"
              ],
              [
                "-211177784199/1000000000000",
                "18338012521283859/1000000000000000000"
              ],
              [
                "-211177784199/1000000000000",
                "21830422967527149/1000000000000000000"
              ],
              [
                "-212429/1000000",
                "19249324289/1000000000000"
              ],
              [
                "-212429/1000000",
                "22915290879/1000000000000"
              ],
              [
                "-267201/1000000",
                "59142017541/1000000000000"
              ],
              [
                "-267201/1000000",
                "70405408251/1000000000000"
              ]
            ],
            "raw": [
              "54071/500000",
              "7822823139/29689000000"
            ],
            "new": [
              "54071/500000",
              "263493/1000000"
            ]
          },
          {
            "factor": 237,
            "target": "g",
            "old": [
              "119429/1000000",
              "174201/1000000"
            ],
            "lines": [
              [
                "420742381401/1000000000000",
                "-77792919/1000000000"
              ],
              [
                "19709526147/62500000000",
                "-46120281/500000000"
              ],
              [
                "514843106691/1000000000000",
                "-90692949/1000000000"
              ],
              [
                "204726571821/500000000000",
                "-6571287/62500000"
              ],
              [
                "620199/1000000",
                "-77792919/1000000000"
              ],
              [
                "29053/62500",
                "-46120281/500000000"
              ],
              [
                "758909/1000000",
                "-90692949/1000000000"
              ],
              [
                "301779/500000",
                "-6571287/62500000"
              ]
            ],
            "raw": [
              "90692949/758909000",
              "174201/1000000"
            ],
            "new": [
              "7469/62500",
              "174201/1000000"
            ]
          },
          {
            "factor": 237,
            "target": "h",
            "old": [
              "678399/1000000",
              "1/1"
            ],
            "lines": [
              [
                "4632266331/62500000000",
                "-77792919/1000000000"
              ],
              [
                "216996857/3906250000",
                "-46120281/500000000"
              ],
              [
                "5668291321/62500000000",
                "-90692949/1000000000"
              ],
              [
                "2253987351/31250000000",
                "-6571287/62500000"
              ],
              [
                "108039285999/1000000000000",
                "-77792919/1000000000"
              ],
              [
                "5061061653/62500000000",
                "-46120281/500000000"
              ],
              [
                "132202706709/1000000000000",
                "-90692949/1000000000"
              ],
              [
                "52570203579/500000000000",
                "-6571287/62500000"
              ]
            ],
            "raw": [
              "30230983000/44067568903",
              "1/1"
            ],
            "new": [
              "343007/500000",
              "1/1"
            ]
          },
          {
            "factor": 242,
            "target": "a",
            "old": [
              "17503/125000",
              "471729/1000000"
            ],
            "lines": [
              [
                "130491961387/500000000000",
                "-14128973/250000000"
              ],
              [
                "164199462357/500000000000",
                "-6891099/125000000"
              ],
              [
                "612091/1250000",
                "-8571659/100000000"
              ],
              [
                "750801/1250000",
                "-8432949/100000000"
              ]
            ],
            "raw": [
              "2810983/20021360",
              "471729/1000000"
            ],
            "new": [
              "140399/1000000",
              "471729/1000000"
            ]
          },
          {
            "factor": 3027,
            "target": "x",
            "old": [
              "99323/250000",
              "70707/100000"
            ],
            "lines": [
              [
                "46939/62500",
                "-9882429253/31250000000"
              ],
              [
                "46939/62500",
                "-522433290861953/1562500000000000"
              ],
              [
                "46939/62500",
                "-546434821938047/1562500000000000"
              ],
              [
                "46939/62500",
                "-11494933003/31250000000"
              ],
              [
                "46939/62500",
                "-21060575739/62500000000"
              ],
              [
                "46939/62500",
                "-554826221686953/1562500000000000"
              ],
              [
                "46939/62500",
                "-578827752763047/1562500000000000"
              ],
              [
                "46939/62500",
                "-24285583239/62500000000"
              ],
              [
                "46939/62500",
                "-13800431126147/39062500000000"
              ],
              [
                "46939/62500",
                "-12921271693853/39062500000000"
              ],
              [
                "46939/62500",
                "-3652563599193/9765625000000"
              ],
              [
                "46939/62500",
                "-6865547482239/19531250000000"
              ],
              [
                "46939/62500",
                "-941329460644657/3125000000000000"
              ],
              [
                "46939/62500",
                "-1196406764955343/3125000000000000"
              ],
              [
                "46939/62500",
                "-1006115322294657/3125000000000000"
              ],
              [
                "46939/62500",
                "-1261192626605343/3125000000000000"
              ],
              [
                "46939/62500",
                "-1000497369012511/3125000000000000"
              ],
              [
                "46939/62500",
                "-1137238856587489/3125000000000000"
              ],
              [
                "46939/62500",
                "-1065283230662511/3125000000000000"
              ],
              [
                "46939/62500",
                "-1202024718237489/3125000000000000"
              ]
            ],
            "raw": [
              "941329460644657/2346950000000000",
              "70707/100000"
            ],
            "new": [
              "200543/500000",
              "70707/100000"
            ]
          },
          {
            "factor": 3099,
            "target": "u",
            "old": [
              "77841/200000",
              "353901/500000"
            ],
            "lines": [
              [
                "46939/62500",
                "-9882429253/31250000000"
              ],
              [
                "46939/62500",
                "-57799282798633/156250000000000"
              ],
              [
                "46939/62500",
                "-49087528481367/156250000000000"
              ],
              [
                "46939/62500",
                "-11494933003/31250000000"
              ],
              [
                "46939/62500",
                "-21060575739/62500000000"
              ],
              [
                "46939/62500",
                "-61038575881133/156250000000000"
              ],
              [
                "46939/62500",
                "-52326821563867/156250000000000"
              ],
              [
                "46939/62500",
                "-24285583239/62500000000"
              ],
              [
                "46939/62500",
                "-607576782170257/1562500000000000"
              ],
              [
                "46939/62500",
                "-461291330629743/1562500000000000"
              ],
              [
                "46939/62500",
                "-639969712995257/1562500000000000"
              ],
              [
                "46939/62500",
                "-493684261454743/1562500000000000"
              ],
              [
                "46939/62500",
                "-128506438617639/390625000000000"
              ],
              [
                "46939/62500",
                "-138710589582361/390625000000000"
              ],
              [
                "46939/62500",
                "-136604671323889/390625000000000"
              ],
              [
                "46939/62500",
                "-146808822288611/390625000000000"
              ],
              [
                "46939/62500",
                "-543609708654483/1562500000000000"
              ],
              [
                "46939/62500",
                "-525258404145517/1562500000000000"
              ],
              [
                "46939/62500",
                "-576002639479483/1562500000000000"
              ],
              [
                "46939/62500",
                "-557651334970517/1562500000000000"
              ]
            ],
            "raw": [
              "461291330629743/1173475000000000",
              "353901/500000"
            ],
            "new": [
              "196549/500000",
              "353901/500000"
            ]
          },
          {
            "factor": 3240,
            "target": "v",
            "old": [
              "179337/1000000",
              "572321/1000000"
            ],
            "lines": [
              [
                "67475790603/125000000000",
                "-48623385150549/500000000000000"
              ],
              [
                "3160879241/7812500000",
                "-2277745060503/31250000000000"
              ],
              [
                "82567022473/125000000000",
                "-59498200740759/500000000000000"
              ],
              [
                "32832649863/62500000000",
                "-23659368279129/250000000000000"
              ],
              [
                "67475790603/125000000000",
                "-57678507/500000000"
              ],
              [
                "3160879241/7812500000",
                "-2701929/31250000"
              ],
              [
                "82567022473/125000000000",
                "-70578537/500000000"
              ],
              [
                "32832649863/62500000000",
                "-28065447/250000000"
              ]
            ],
            "raw": [
              "78399651/435188000",
              "572321/1000000"
            ],
            "new": [
              "180151/1000000",
              "572321/1000000"
            ]
          }
        ]
      }
    },
    {
      "id": 15,
      "assumptions": [
        "AGO-",
        "AGP-",
        "DGP+",
        "AFG+",
        "FGO+",
        "EGO-"
      ],
      "initial_box": {
        "low": [
          "140399/1000000",
          "54071/500000",
          "728341/1000000",
          "122247/1000000",
          "458847/1000000",
          "728341/1000000",
          "7469/62500",
          "343007/500000",
          "394867/1000000",
          "200543/500000",
          "520669/1000000",
          "196549/500000",
          "180151/1000000"
        ],
        "high": [
          "471729/1000000",
          "263493/1000000",
          "867051/1000000",
          "12129/25000",
          "12734/15625",
          "867051/1000000",
          "174201/1000000",
          "1",
          "754999/1000000",
          "70707/100000",
          "838711/1000000",
          "353901/500000",
          "572321/1000000"
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
        "DGP": 1,
        "ACO": 1,
        "ACP": 1,
        "CEG": 1,
        "CFG": 1,
        "CGO": -1,
        "CGP": -1,
        "DOP": 1,
        "DFG": 1,
        "BGO": -1,
        "BGP": -1,
        "ADG": 1,
        "GHO": -1,
        "GHP": -1,
        "DGH": -1,
        "GOP": -1,
        "BDG": 1,
        "EGP": 1,
        "FGP": 1,
        "EGH": -1,
        "BHO": -1,
        "BHP": -1,
        "ADO": 1,
        "BDO": 1,
        "CFO": 1,
        "DFO": 1,
        "DHP": 1,
        "CFP": 1,
        "DFP": 1,
        "BEG": 1,
        "BEO": 1,
        "AOP": -1,
        "AFG": 1,
        "AEG": 1,
        "BFG": 1,
        "FGO": 1,
        "AFP": -1,
        "EGO": -1,
        "AEO": 1,
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
            "DCGOP"
          ],
          "target": "DOP",
          "sign": 1,
          "deps": [
            "CDG",
            "CDO",
            "DGP",
            "CDP",
            "DGO"
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
            "GADHP"
          ],
          "target": "DGH",
          "sign": -1,
          "deps": [
            "ADG",
            "GHP",
            "AGH",
            "DGP",
            "AGP"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GADOP"
          ],
          "target": "GOP",
          "sign": -1,
          "deps": [
            "ADG",
            "AGO",
            "DGP",
            "AGP",
            "DGO"
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
            "GCDEP"
          ],
          "target": "EGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CEG",
            "DGP",
            "CGP",
            "DEG"
          ],
          "area_stage": null
        },
        {
          "rule": [
            "plu",
            "GCDFP"
          ],
          "target": "FGP",
          "sign": 1,
          "deps": [
            "CDG",
            "CFG",
            "DGP",
            "CGP",
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
            "PCDGH"
          ],
          "target": "DHP",
          "sign": 1,
          "deps": [
            "CDP",
            "GHP",
            "CGP",
            "CHP",
            "DGP"
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
            "PDEFG"
          ],
          "target": "DFP",
          "sign": 1,
          "deps": [
            "DEP",
            "FGP",
            "EGP",
            "DGP",
            "EFP"
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
          "target": "BEG",
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
              "80480253/125000000"
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
        },
        {
          "rule": [
            "ray",
            "AFG",
            "OP",
            "AFG",
            [
              "area",
              "AFG",
              "U_AFG",
              "1779364893/4000000000"
            ]
          ],
          "target": "AFP",
          "sign": -1,
          "deps": [
            "FGO",
            "AGO",
            "FGP",
            "AGP",
            "AOP"
          ],
          "area_stage": 8
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
            "CDH",
            [
              "P"
            ],
            "O",
            [
              "area",
              "CDH",
              "U_CDH",
              "43075381927/62500000000"
            ]
          ],
          "target": "DHO",
          "sign": -1,
          "deps": [
            "CDO",
            "CHO"
          ],
          "area_stage": 13
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
        "L_CDG": {
          "triangle": "CDG",
          "side": "lo",
          "value": "279/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "CDG",
            "points": [
              "P"
            ]
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
        "L_DGP": {
          "triangle": "DGP",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "DGP",
            "points": []
          }
        },
        "L_DHO": {
          "triangle": "DHO",
          "side": "lo",
          "value": "93/1000",
          "witness": {
            "kind": "occupants",
            "triangle": "HDO",
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
              "O"
            ]
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
            "triangle": "FGO",
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
            "triangle": "OGP",
            "points": []
          }
        },
        "U_ADE": {
          "triangle": "ADE",
          "side": "hi",
          "value": "692729/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "ADE",
            "used": [
              0,
              3,
              4
            ],
            "values": [
              "-26313/1000000",
              "41227/125000",
              "1683/5000",
              "692729/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_ADH": {
          "triangle": "ADH",
          "side": "hi",
          "value": "859601/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "ADH",
            "used": [
              0,
              3,
              7
            ],
            "values": [
              "42857/200000",
              "528271/1000000",
              "109123/200000",
              "859601/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_BCF": {
          "triangle": "BCF",
          "side": "hi",
          "value": "758909/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "BCF",
            "used": [
              1,
              2,
              5
            ],
            "values": [
              "29053/62500",
              "301779/500000",
              "620199/1000000",
              "758909/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_BCH": {
          "triangle": "BCH",
          "side": "hi",
          "value": "758909/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "BCH",
            "used": [
              1,
              2,
              7
            ],
            "values": [
              "9965382371/31250000000",
              "103512309453/250000000000",
              "212732598393/500000000000",
              "29053/62500",
              "260311099363/500000000000",
              "301779/500000",
              "620199/1000000",
              "758909/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_BFG": {
          "triangle": "BFG",
          "side": "hi",
          "value": "299837343221/500000000000",
          "witness": {
            "kind": "vertices",
            "signed": "BFG",
            "used": [
              1,
              5,
              6,
              8
            ],
            "values": [
              "178837118533/1000000000000",
              "233534118533/1000000000000",
              "233609120103/1000000000000",
              "17052820951/62500000000",
              "288306120103/1000000000000",
              "20471383451/62500000000",
              "163808568393/500000000000",
              "191157068393/500000000000",
              "402190624801/1000000000000",
              "27515735947/62500000000",
              "456887624801/1000000000000",
              "30934298447/62500000000",
              "506916536091/1000000000000",
              "272488843221/500000000000",
              "561613536091/1000000000000",
              "299837343221/500000000000"
            ],
            "cell": "CA"
          }
        },
        "U_CDF": {
          "triangle": "CDF",
          "side": "hi",
          "value": "271659/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "CDF",
            "used": [
              2,
              3,
              5
            ],
            "values": [
              "132949/1000000",
              "14990588137/100000000000",
              "500613859/2500000000",
              "510906141/2500000000",
              "25470211863/100000000000",
              "271659/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_CEF": {
          "triangle": "CEF",
          "side": "hi",
          "value": "271659/1000000",
          "witness": {
            "kind": "vertices",
            "signed": "CEF",
            "used": [
              2,
              4,
              5
            ],
            "values": [
              "132949/1000000",
              "495667747/3125000000",
              "19659566737/100000000000",
              "20801233263/100000000000",
              "768732253/3125000000",
              "271659/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_CEG": {
          "triangle": "CEG",
          "side": "hi",
          "value": "709609225923/1000000000000",
          "witness": {
            "kind": "vertices",
            "signed": "CEG",
            "used": [
              2,
              4,
              6,
              8
            ],
            "values": [
              "361534650933/1000000000000",
              "370409316733/1000000000000",
              "96658051323/250000000000",
              "98876717773/250000000000",
              "418288506001/1000000000000",
              "11084651509/25000000000",
              "459367749921/1000000000000",
              "12111632607/25000000000",
              "558879974993/1000000000000",
              "120691343453/200000000000",
              "617153294383/1000000000000",
              "656713073981/1000000000000",
              "132346007331/200000000000",
              "665032483651/1000000000000",
              "701289816253/1000000000000",
              "709609225923/1000000000000"
            ],
            "cell": "CA"
          }
        },
        "U_CFG": {
          "triangle": "CFG",
          "side": "hi",
          "value": "747547/1000000",
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
              "27707/50000",
              "58812408871/100000000000",
              "608837/1000000",
              "60891200157/100000000000",
              "63807799843/100000000000",
              "64282108871/100000000000",
              "65886591129/100000000000",
              "66360900157/100000000000",
              "69277499843/100000000000",
              "13857/20000",
              "71356291129/100000000000",
              "747547/1000000"
            ],
            "cell": "CA"
          }
        },
        "U_CGO": {
          "triangle": "CGO",
          "side": "hi",
          "value": "56380467439/100000000000",
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
              "1788481523/200000000000",
              "9355359977/250000000000",
              "8289264383/200000000000",
              "2185167319/31250000000",
              "6372052783/40000000000",
              "35350262999/200000000000",
              "46945087967/250000000000",
              "25653793411/125000000000",
              "43537223159/200000000000",
              "45859561463/200000000000",
              "239960021631/1000000000000",
              "131780545681/500000000000",
              "67109763481/250000000000",
              "272463935931/1000000000000",
              "137586391441/500000000000",
              "280124303703/1000000000000",
              "297574299123/1000000000000",
              "9404467757/31250000000",
              "77150833999/250000000000",
              "40756666427/125000000000",
              "67108222691/200000000000",
              "190708044511/500000000000",
              "79421342939/200000000000",
              "221490845131/500000000000",
              "448703729811/1000000000000",
              "456364097583/1000000000000",
              "460315421331/1000000000000",
              "247289352689/500000000000",
              "10044781463/20000000000",
              "253095198449/500000000000",
              "517929698823/1000000000000",
              "56380467439/100000000000"
            ],
            "cell": "CA"
          }
        },
        "U_DFG": {
          "triangle": "DFG",
          "side": "hi",
          "value": "184153362277/250000000000",
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
              "351850164259/1000000000000",
              "380010367739/1000000000000",
              "389279531949/1000000000000",
              "417439735429/1000000000000",
              "437158721217/1000000000000",
              "449683263247/1000000000000",
              "465318924697/1000000000000",
              "477843466727/1000000000000",
              "552954774079/1000000000000",
              "3756032687/6250000000",
              "640723803999/1000000000000",
              "650787873067/1000000000000",
              "688602993267/1000000000000",
              "1076147281/1562500000",
              "174699582227/250000000000",
              "184153362277/250000000000"
            ],
            "cell": "CA"
          }
        }
      },
      "relations": {
        "15": {
          "row": [
            "fan",
            "CDH",
            "CDP",
            "DHP",
            "CHP"
          ],
          "witness": {
            "kind": "fan",
            "outer": "CDH",
            "point": "P"
          }
        },
        "18": {
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
        "25": {
          "row": [
            "fan",
            "DFH",
            "DFO",
            "FHO",
            "DHO"
          ],
          "witness": {
            "kind": "fan",
            "outer": "DFH",
            "point": "O"
          }
        },
        "250": {
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
        "282": {
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
        "341": {
          "row": [
            "plu",
            "CDF",
            "DEH",
            "CDE",
            "DFH",
            "CDH",
            "DEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "DCEFH"
          }
        },
        "486": {
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
        "488": {
          "row": [
            "plu",
            "CEF",
            "DFO",
            "CDF",
            "EFO",
            "CFO",
            "DEF"
          ],
          "witness": {
            "kind": "plu",
            "word": "FCDEO"
          }
        },
        "502": {
          "row": [
            "plu",
            "CFG",
            "FHO",
            "CFH",
            "FGO",
            "CFO",
            "FGH"
          ],
          "witness": {
            "kind": "plu",
            "word": "FCGHO"
          }
        },
        "616": {
          "row": [
            "plu",
            "CFG",
            "DGH",
            "CDG",
            "FGH",
            "CGH",
            "DFG"
          ],
          "witness": {
            "kind": "plu",
            "word": "GCDFH"
          }
        },
        "862": {
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
              "P"
            ],
            "rate": "29/5"
          }
        },
        "992": {
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
              "G"
            ]
          }
        },
        "1074": {
          "row": [
            "support",
            "CFG",
            "BFG",
            "BCF",
            "53103/62500"
          ],
          "witness": {
            "kind": "quad_support",
            "poly": "FGBC",
            "occupants": [
              "O",
              "P"
            ],
            "rate": "1142/125"
          }
        },
        "1160": {
          "row": [
            "quad",
            "CDH",
            "CGH",
            "449/1000"
          ],
          "witness": {
            "kind": "quad",
            "poly": "CDHG",
            "occupants": [
              "P"
            ]
          }
        },
        "1322": {
          "row": [
            "support",
            "BCF",
            "ABC",
            "ACF",
            "1023/1000"
          ],
          "witness": {
            "kind": "five_support",
            "poly": "CFGAB"
          }
        },
        "1323": {
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
        "3235": {
          "row": [
            "balance",
            [
              [
                1,
                "CDF",
                "GHP"
              ],
              [
                -1,
                "CFG",
                "DHP"
              ],
              [
                1,
                "CFH",
                "DGP"
              ],
              [
                1,
                "CFP",
                "DGH"
              ]
            ]
          ],
          "witness": {
            "kind": "six_label",
            "outer": "DGH",
            "point": "P",
            "line": "CF"
          }
        },
        "4047": {
          "row": [
            "linear",
            {
              "BFG": "-93/1000",
              "CFG": "-93/1000",
              "FGH": "572909/1000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "BCH",
            "point": "G",
            "line": "FG",
            "side": "lower",
            "outer_upper": {
              "triangle": "BCH",
              "ref": "U_BCH",
              "value": "758909/1000000"
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
            "residual": "479909/1000000"
          }
        },
        "5058": {
          "row": [
            "linear",
            {
              "FGO": "-93/1000",
              "CFO": "37780467439/100000000000",
              "FOP": "-56380467439/100000000000"
            },
            "0"
          ],
          "witness": {
            "kind": "bary_sign",
            "outer": "GCO",
            "point": "P",
            "line": "FO",
            "side": "upper",
            "outer_upper": {
              "triangle": "CGO",
              "ref": "U_CGO",
              "value": "56380467439/100000000000"
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
            "residual": "28480467439/100000000000"
          }
        }
      },
      "updates": [
        {
          "id": "T0022",
          "relation": 250,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "15921/125000",
          "sources": [
            "L_CDE",
            "L_CFG",
            "L_CDG",
            "L_CEF",
            "U_CEG"
          ]
        },
        {
          "id": "T0036",
          "relation": 486,
          "rule": "sumlo",
          "triangle": "CEF",
          "side": "lo",
          "value": "33929/250000",
          "sources": [
            "T0022",
            "L_EFG",
            "L_CFG",
            "L_DEF",
            "U_DFG"
          ]
        },
        {
          "id": "T0065",
          "relation": 1074,
          "rule": "support_z",
          "triangle": "BCF",
          "side": "lo",
          "value": "101921/500000",
          "sources": [
            "L_CFG",
            "U_BFG"
          ]
        },
        {
          "id": "T0069",
          "relation": 1323,
          "rule": "support_z",
          "triangle": "BFG",
          "side": "lo",
          "value": "178861/1000000",
          "sources": [
            "L_CFG",
            "U_BCF"
          ]
        },
        {
          "id": "T0103",
          "relation": 4047,
          "rule": "linear",
          "triangle": "FGH",
          "side": "lo",
          "value": "2211/15625",
          "sources": [
            "T0069",
            "L_CFG"
          ]
        },
        {
          "id": "T0121",
          "relation": 5058,
          "rule": "linear",
          "triangle": "CFO",
          "side": "lo",
          "value": "80839/500000",
          "sources": [
            "L_FGO",
            "L_FOP"
          ]
        },
        {
          "id": "T0146",
          "relation": 18,
          "rule": "sub",
          "triangle": "CGO",
          "side": "hi",
          "value": "492869/1000000",
          "sources": [
            "U_CFG",
            "T0121",
            "L_FGO"
          ]
        },
        {
          "id": "T0162",
          "relation": 250,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "144163/1000000",
          "sources": [
            "L_CDE",
            "L_CFG",
            "L_CDG",
            "T0036",
            "U_CEG"
          ]
        },
        {
          "id": "T0168",
          "relation": 282,
          "rule": "sumlo",
          "triangle": "CFP",
          "side": "lo",
          "value": "161241/1000000",
          "sources": [
            "L_CFG",
            "L_COP",
            "T0121",
            "L_CGP",
            "T0146"
          ]
        },
        {
          "id": "T0178",
          "relation": 486,
          "rule": "sumlo",
          "triangle": "CEF",
          "side": "lo",
          "value": "142077/1000000",
          "sources": [
            "T0162",
            "L_EFG",
            "L_CFG",
            "L_DEF",
            "U_DFG"
          ]
        },
        {
          "id": "T0182",
          "relation": 502,
          "rule": "sumlo",
          "triangle": "FHO",
          "side": "lo",
          "value": "116799/1000000",
          "sources": [
            "L_CFH",
            "L_FGO",
            "T0121",
            "T0103",
            "U_CFG"
          ]
        },
        {
          "id": "T0241",
          "relation": 250,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "18333/125000",
          "sources": [
            "L_CDE",
            "L_CFG",
            "L_CDG",
            "T0178",
            "U_CEG"
          ]
        },
        {
          "id": "T0255",
          "relation": 486,
          "rule": "sumlo",
          "triangle": "CEF",
          "side": "lo",
          "value": "5721/40000",
          "sources": [
            "T0241",
            "L_EFG",
            "L_CFG",
            "L_DEF",
            "U_DFG"
          ]
        },
        {
          "id": "T0307",
          "relation": 250,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "147037/1000000",
          "sources": [
            "L_CDE",
            "L_CFG",
            "L_CDG",
            "T0255",
            "U_CEG"
          ]
        },
        {
          "id": "T0318",
          "relation": 486,
          "rule": "sumlo",
          "triangle": "CEF",
          "side": "lo",
          "value": "71583/500000",
          "sources": [
            "T0307",
            "L_EFG",
            "L_CFG",
            "L_DEF",
            "U_DFG"
          ]
        },
        {
          "id": "T0366",
          "relation": 250,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "36773/250000",
          "sources": [
            "L_CDE",
            "L_CFG",
            "L_CDG",
            "T0318",
            "U_CEG"
          ]
        },
        {
          "id": "T0376",
          "relation": 486,
          "rule": "sumlo",
          "triangle": "CEF",
          "side": "lo",
          "value": "143187/1000000",
          "sources": [
            "T0366",
            "L_EFG",
            "L_CFG",
            "L_DEF",
            "U_DFG"
          ]
        },
        {
          "id": "T0424",
          "relation": 250,
          "rule": "sumlo",
          "triangle": "CDF",
          "side": "lo",
          "value": "1471/10000",
          "sources": [
            "L_CDE",
            "L_CFG",
            "L_CDG",
            "T0376",
            "U_CEG"
          ]
        },
        {
          "id": "T0435",
          "relation": 486,
          "rule": "sumlo",
          "triangle": "DFG",
          "side": "lo",
          "value": "77653/200000",
          "sources": [
            "T0424",
            "L_EFG",
            "L_CFG",
            "L_DEF",
            "U_CEF"
          ]
        },
        {
          "id": "T0436",
          "relation": 488,
          "rule": "sumlo",
          "triangle": "DFO",
          "side": "lo",
          "value": "105707/1000000",
          "sources": [
            "T0424",
            "L_EFO",
            "T0121",
            "L_DEF",
            "U_CEF"
          ]
        },
        {
          "id": "T0440",
          "relation": 616,
          "rule": "sumlo",
          "triangle": "DGH",
          "side": "lo",
          "value": "20223/200000",
          "sources": [
            "L_CDG",
            "T0103",
            "L_CGH",
            "T0435",
            "U_CFG"
          ]
        },
        {
          "id": "T0461",
          "relation": 3235,
          "rule": "balance_lo",
          "triangle": "DHP",
          "side": "lo",
          "value": "25261/200000",
          "sources": [
            "T0424",
            "L_GHP",
            "L_CFH",
            "L_DGP",
            "T0168",
            "T0440",
            "U_CFG"
          ]
        },
        {
          "id": "T0469",
          "relation": 15,
          "rule": "sum",
          "triangle": "CDH",
          "side": "lo",
          "value": "62461/200000",
          "sources": [
            "L_CDP",
            "T0461",
            "L_CHP"
          ]
        },
        {
          "id": "T0476",
          "relation": 25,
          "rule": "sum",
          "triangle": "DFH",
          "side": "lo",
          "value": "157753/500000",
          "sources": [
            "T0436",
            "T0182",
            "L_DHO"
          ]
        },
        {
          "id": "T0487",
          "relation": 341,
          "rule": "sumlo",
          "triangle": "DEH",
          "side": "lo",
          "value": "8597/40000",
          "sources": [
            "L_CDE",
            "T0476",
            "T0469",
            "L_DEF",
            "U_CDF"
          ]
        }
      ],
      "physical": {
        "AREA_HI_ADE": {
          "name": "AREA_HI_ADE",
          "terms": [
            [
              [],
              "692729/1000000"
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
            "value": "692729/1000000"
          }
        },
        "AREA_HI_ADH": {
          "name": "AREA_HI_ADH",
          "terms": [
            [
              [],
              "859601/1000000"
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
            "value": "859601/1000000"
          }
        },
        "AREA_HI_BCF": {
          "name": "AREA_HI_BCF",
          "terms": [
            [
              [],
              "758909/1000000"
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
            "value": "758909/1000000"
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
        "AREA_LO_ABH": {
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
        "AREA_LO_AGH": {
          "name": "AREA_LO_AGH",
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
            "triangle": "AGH",
            "side": "lo",
            "reference": "L_AGH",
            "value": "93/1000"
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
              "-101921/500000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "BCF",
            "side": "lo",
            "reference": "T0065",
            "value": "101921/500000"
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
        "AREA_LO_CDG": {
          "name": "AREA_LO_CDG",
          "terms": [
            [
              [
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
                3,
                6
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
              "-279/1000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CDG",
            "side": "lo",
            "reference": "L_CDG",
            "value": "279/1000"
          }
        },
        "AREA_LO_CFG": {
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
              "-13857/20000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "CFG",
            "side": "lo",
            "reference": "L_CFG",
            "value": "13857/20000"
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
        "AREA_LO_DEH": {
          "name": "AREA_LO_DEH",
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
              "-8597/40000"
            ]
          ],
          "why": {
            "kind": "area",
            "triangle": "DEH",
            "side": "lo",
            "reference": "T0487",
            "value": "8597/40000"
          }
        },
        "AREA_LO_EFG": {
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
        "Central_g": {
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
        "NATURAL_SUPPORT_1322_ABC": {
          "name": "NATURAL_SUPPORT_1322_ABC",
          "terms": [
            [
              [
                0,
                2
              ],
              "-23/1000"
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
                1
              ],
              "1023/1000"
            ],
            [
              [
                0,
                5
              ],
              "1023/1000"
            ]
          ],
          "why": {
            "kind": "natural_contact_support",
            "relation": 1322,
            "paired": "ABC",
            "target": "BCF",
            "raw": [
              [
                [
                  0,
                  2
                ],
                "-23/1000"
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
                  1
                ],
                "1023/1000"
              ],
              [
                [
                  0,
                  5
                ],
                "1023/1000"
              ]
            ],
            "relax": false,
            "box": {
              "low": [
                "140399/1000000",
                "54071/500000",
                "728341/1000000",
                "122247/1000000",
                "458847/1000000",
                "728341/1000000",
                "7469/62500",
                "343007/500000",
                "394867/1000000",
                "200543/500000",
                "520669/1000000",
                "196549/500000",
                "180151/1000000"
              ],
              "high": [
                "471729/1000000",
                "263493/1000000",
                "867051/1000000",
                "12129/25000",
                "12734/15625",
                "867051/1000000",
                "174201/1000000",
                "1",
                "754999/1000000",
                "70707/100000",
                "838711/1000000",
                "353901/500000",
                "572321/1000000"
              ]
            },
            "scheme": {
              "tag": "SUPPORT",
              "rate": "1023/1000",
              "constant": "0"
            }
          }
        },
        "NATURAL_SUPPORT_862_ACF": {
          "name": "NATURAL_SUPPORT_862_ACF",
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
            "relation": 862,
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
                "140399/1000000",
                "54071/500000",
                "728341/1000000",
                "122247/1000000",
                "458847/1000000",
                "728341/1000000",
                "7469/62500",
                "343007/500000",
                "394867/1000000",
                "200543/500000",
                "520669/1000000",
                "196549/500000",
                "180151/1000000"
              ],
              "high": [
                "471729/1000000",
                "263493/1000000",
                "867051/1000000",
                "12129/25000",
                "12734/15625",
                "867051/1000000",
                "174201/1000000",
                "1",
                "754999/1000000",
                "70707/100000",
                "838711/1000000",
                "353901/500000",
                "572321/1000000"
              ]
            },
            "scheme": {
              "tag": "SUPPORT",
              "rate": "2697/5000",
              "constant": "0"
            }
          }
        },
        "QUAD_1160": {
          "name": "QUAD_1160",
          "terms": [
            [
              [
                7
              ],
              "1"
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
                6,
                7
              ],
              "-1"
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
              "-449/1000"
            ]
          ],
          "why": {
            "kind": "relation",
            "index": 1160
          }
        },
        "QUAD_992": {
          "name": "QUAD_992",
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
            "index": 992
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
        "span_AH": {
          "name": "span_AH",
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
            "kind": "setup",
            "name": "span_AH"
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
    "stage": 15,
    "sum": {
      "factors": [
        {
          "weight": 4,
          "atoms": [
            "L0",
            "L2",
            "L3"
          ]
        },
        {
          "weight": 29,
          "atoms": [
            "L0",
            "L12",
            "L5"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L0",
            "L12",
            "L15"
          ]
        },
        {
          "weight": 8,
          "atoms": [
            "L0",
            "L16",
            "overlap_fc"
          ]
        },
        {
          "weight": 14,
          "atoms": [
            "L2",
            "L12",
            "L7"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "L2",
            "L12",
            "span_DE"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L2",
            "L15",
            "AREA_HI_ADE"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "L2",
            "L17",
            "AREA_LO_BCF"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L2",
            "L17",
            "overlap_ae"
          ]
        },
        {
          "weight": 17,
          "atoms": [
            "L2",
            "L17",
            "QUAD_992"
          ]
        },
        {
          "weight": 22,
          "atoms": [
            "L4",
            "L12",
            "L15"
          ]
        },
        {
          "weight": 8,
          "atoms": [
            "L4",
            "L12",
            "L17"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L4",
            "L15",
            "AREA_HI_ADE"
          ]
        },
        {
          "weight": 7,
          "atoms": [
            "L10",
            "L15",
            "AREA_HI_ADE"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L10",
            "L15",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 80,
          "atoms": [
            "L12",
            "L12",
            "AREA_LO_DEH"
          ]
        },
        {
          "weight": 8,
          "atoms": [
            "L12",
            "L7",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L12",
            "L7",
            "AREA_LO_DEH"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "L12",
            "L11",
            "AREA_HI_ADE"
          ]
        },
        {
          "weight": 20,
          "atoms": [
            "L12",
            "L11",
            "span_AH_hi"
          ]
        },
        {
          "weight": 64,
          "atoms": [
            "L12",
            "L13",
            "L15"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "L12",
            "L15",
            "span_DE"
          ]
        },
        {
          "weight": 44,
          "atoms": [
            "L12",
            "L15",
            "span_BC"
          ]
        },
        {
          "weight": 45,
          "atoms": [
            "L12",
            "L15",
            "span_BC_hi"
          ]
        },
        {
          "weight": 12,
          "atoms": [
            "L12",
            "L15",
            "QUAD_992"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "L12",
            "AREA_HI_ADH",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L12",
            "AREA_HI_ADH",
            "overlap_ae"
          ]
        },
        {
          "weight": 7,
          "atoms": [
            "L16",
            "L3",
            "overlap_fc"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "L16",
            "L5",
            "overlap_fc"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L16",
            "L7",
            "overlap_fc"
          ]
        },
        {
          "weight": 82,
          "atoms": [
            "L16",
            "L13",
            "overlap_fc"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L16",
            "L15",
            "AREA_HI_BCF"
          ]
        },
        {
          "weight": 99,
          "atoms": [
            "L16",
            "span_DE",
            "overlap_fc"
          ]
        },
        {
          "weight": 15,
          "atoms": [
            "L16",
            "overlap_fc",
            "QUAD_992"
          ]
        },
        {
          "weight": 13,
          "atoms": [
            "L1",
            "L15",
            "overlap_bf"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "L3",
            "L7",
            "L15"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "L3",
            "L7",
            "overlap_fc"
          ]
        },
        {
          "weight": 14,
          "atoms": [
            "L3",
            "L15",
            "QUAD_992"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "L5",
            "L7",
            "overlap_fc"
          ]
        },
        {
          "weight": 19,
          "atoms": [
            "L7",
            "L13",
            "overlap_fc"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L7",
            "overlap_fc",
            "overlap_eh"
          ]
        },
        {
          "weight": 53,
          "atoms": [
            "L9",
            "L13",
            "overlap_fc"
          ]
        },
        {
          "weight": 19,
          "atoms": [
            "L13",
            "overlap_fc",
            "overlap_eh"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "L15",
            "overlap_bf",
            "overlap_ae"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "span_BC",
            "overlap_fc",
            "overlap_eh"
          ]
        },
        {
          "weight": 9,
          "atoms": [
            "span_BC_hi",
            "overlap_fc",
            "overlap_eh"
          ]
        },
        {
          "weight": 19,
          "atoms": [
            "AREA_LO_ABH",
            "L17"
          ]
        },
        {
          "weight": 77,
          "atoms": [
            "AREA_LO_CDE",
            "L12"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_CDE",
            "L14"
          ]
        },
        {
          "weight": 68,
          "atoms": [
            "AREA_LO_CDE",
            "span_AH"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_CDE",
            "span_BC_hi"
          ]
        },
        {
          "weight": 68,
          "atoms": [
            "AREA_LO_CDE",
            "span_AH_hi"
          ]
        },
        {
          "weight": 31,
          "atoms": [
            "AREA_LO_DEF"
          ]
        },
        {
          "weight": 13,
          "atoms": [
            "AREA_LO_DEF",
            "L12"
          ]
        },
        {
          "weight": 6,
          "atoms": [
            "AREA_LO_DEF",
            "L14"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_DEF",
            "L16"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "AREA_LO_DEF",
            "span_BC_hi"
          ]
        },
        {
          "weight": 18,
          "atoms": [
            "AREA_LO_ABG"
          ]
        },
        {
          "weight": 24,
          "atoms": [
            "AREA_LO_ABG",
            "L14"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "AREA_LO_ABG",
            "L11"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "AREA_LO_ABG",
            "span_AH_hi"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "AREA_LO_ABG",
            "overlap_bf"
          ]
        },
        {
          "weight": 11,
          "atoms": [
            "AREA_LO_CDG",
            "L3"
          ]
        },
        {
          "weight": 12,
          "atoms": [
            "AREA_LO_CDG",
            "L11"
          ]
        },
        {
          "weight": 80,
          "atoms": [
            "AREA_LO_CDG",
            "L13"
          ]
        },
        {
          "weight": 14,
          "atoms": [
            "AREA_LO_CDG",
            "AREA_LO_BCF"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_CDG",
            "span_AH_hi"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_CDG",
            "span_DE_hi"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_CDG",
            "overlap_bf"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_CDG",
            "overlap_eh"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_EFG",
            "L7"
          ]
        },
        {
          "weight": 82,
          "atoms": [
            "AREA_LO_EFG",
            "L13"
          ]
        },
        {
          "weight": 20,
          "atoms": [
            "AREA_LO_EFG",
            "span_AH"
          ]
        },
        {
          "weight": 5,
          "atoms": [
            "AREA_LO_EFG",
            "span_BC"
          ]
        },
        {
          "weight": 20,
          "atoms": [
            "AREA_LO_EFG",
            "span_AH_hi"
          ]
        },
        {
          "weight": 32,
          "atoms": [
            "AREA_LO_AGH",
            "L5"
          ]
        },
        {
          "weight": 20,
          "atoms": [
            "AREA_LO_AGH",
            "L11"
          ]
        },
        {
          "weight": 19,
          "atoms": [
            "AREA_LO_BGH",
            "L1"
          ]
        },
        {
          "weight": 3,
          "atoms": [
            "AREA_LO_BGH",
            "L7"
          ]
        },
        {
          "weight": 74,
          "atoms": [
            "AREA_LO_BGH",
            "L13"
          ]
        },
        {
          "weight": 4,
          "atoms": [
            "AREA_LO_BGH",
            "overlap_ae"
          ]
        },
        {
          "weight": 14,
          "atoms": [
            "AREA_LO_BGH",
            "QUAD_992"
          ]
        },
        {
          "weight": 8,
          "atoms": [
            "AREA_LO_CFG",
            "L0"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "AREA_LO_CFG",
            "L3"
          ]
        },
        {
          "weight": 100,
          "atoms": [
            "AREA_LO_CFG",
            "span_DE"
          ]
        },
        {
          "weight": 15,
          "atoms": [
            "AREA_LO_CFG",
            "QUAD_992"
          ]
        },
        {
          "weight": 51,
          "atoms": [
            "Central_g"
          ]
        },
        {
          "weight": 19,
          "atoms": [
            "QUAD_1160",
            "L10"
          ]
        },
        {
          "weight": 10,
          "atoms": [
            "QUAD_1160",
            "L13"
          ]
        },
        {
          "weight": 19,
          "atoms": [
            "QUAD_1160",
            "span_BC_hi"
          ]
        },
        {
          "weight": 2,
          "atoms": [
            "QUAD_1160",
            "QUAD_992"
          ]
        },
        {
          "weight": 1,
          "atoms": [
            "NATURAL_SUPPORT_862_ACF",
            "L15"
          ]
        },
        {
          "weight": 15,
          "atoms": [
            "NATURAL_SUPPORT_1322_ABC",
            "L15"
          ]
        }
      ],
      "sum": {
        "0,1": "-19180725552563459709797/19750000000000000000000",
        "0,6": "67793788838302399/3950000000000000000",
        "0,2,6": "-25138076248571/10000000000000000",
        "1,6": "-4386297500282341/62500000000000000",
        "1": "-1312352815148671235891/197500000000000000000000",
        "1,4": "-208519910975551/500000000000000000",
        "1,3": "5823996486825363/500000000000000000",
        "1,7": "-12744089425812949071/2500000000000000000000",
        "1,2": "176305303231057/100000000000000000",
        "1,1": "-74163576726673/1250000000000000",
        "1,8": "892689024409670397/19750000000000000000",
        "1,2,8": "-194009745722793/25000000000000000",
        "0,1,8": "463421880544539/25000000000000000",
        "1,7,8": "-2195816596514919/125000000000000000",
        "2,6": "-3477131664721/50000000000000000",
        "2,6,7": "119110916744391/25000000000000000",
        "2": "96224601367218753/38574218750000000000",
        "2,4": "15663162064760353/7900000000000000000",
        "2,3": "-138440872020867273/7900000000000000000",
        "2,7": "1396100701464333579/62500000000000000000",
        "2,4,7": "775524282305487/50000000000000000",
        "2,3,7": "-790297459247439/50000000000000000",
        "5": "7537264765026929647/790000000000000000000",
        "4,5": "-9972012342771479/1580000000000000000",
        "3,5": "-3560468935899447/100000000000000000",
        "5,7": "81557058895018707/10000000000000000000",
        "4,5,7": "-775524282305487/50000000000000000",
        "3,5,7": "790297459247439/50000000000000000",
        "2,5": "8051941821209/2000000000000000",
        "1,5": "380488207790691/100000000000000000",
        "6,6": "-167080921747223/500000000000000000",
        "4,6,6": "-1065453141277361/500000000000000000",
        "6": "840656093445374563/79000000000000000000",
        "3,6": "2170135608302380101/79000000000000000000",
        "4,6": "-1294762141389197/79000000000000000000",
        "5,6": "12921449932782391/3950000000000000000",
        "3,5,6": "275342850499431/100000000000000000",
        "6,7": "3901876473967311/500000000000000000",
        "4,6,7": "-3058096148025609/500000000000000000",
        "3,6,7": "3116350668910473/500000000000000000",
        "1,6,7": "-1334006201943471/500000000000000000",
        "0,4,6": "645403933121429/100000000000000000",
        "2,8": "104649694320171/39500000000000000",
        "5,8": "10334705870487999/987500000000000000",
        "2,5,8": "17322767043153/2500000000000000",
        "8": "-95580016015910361/3950000000000000000",
        "7,8": "1501470924538563/62500000000000000",
        "2,4,8": "444750897866847/25000000000000000",
        "4,5,8": "-444750897866847/25000000000000000",
        "": "-187007086864649504725841/197500000000000000000000",
        "7": "74665079166016327479/2500000000000000000000",
        "0": "441855153773221601053/19750000000000000000000",
        "0,5": "-12209586659281869/1000000000000000000",
        "0,7": "-2072371855743309507/250000000000000000000",
        "0,5,7": "-4978493122290831/1000000000000000000",
        "0,1,7": "2179395494045636643/250000000000000000000",
        "3": "-10459751016901319901/79000000000000000000",
        "3,7": "-980137494876627/125000000000000000",
        "1,2,3": "-2346095060127819/100000000000000000",
        "4": "-475097612491980459/9875000000000000000",
        "4,7": "25260532799665473/500000000000000000",
        "7,7": "-3140668044697923/125000000000000000",
        "2,2": "97549152987/80000000000000",
        "2,3,5": "-69826145479233/10000000000000000",
        "0,8": "241010640387477/12500000000000000",
        "0,2": "-12594291097494821/781250000000000000",
        "0,3": "-89810216928201/3125000000000000",
        "4,8": "-428398583115777/62500000000000000",
        "3,8": "2639842288200297/125000000000000000",
        "0,0": "6236577309209/5000000000000000",
        "0,0,1": "-170543658081839/10000000000000000",
        "6,8": "-43281738123789/12500000000000000",
        "0,3,6": "-657698411477013/50000000000000000",
        "3,3": "-983710960554861/31250000000000000",
        "3,4": "965322269170413/31250000000000000",
        "1,6,8": "-28306163166792987/125000000000000000",
        "0,2,7": "-17532954039372057/6250000000000000000"
      },
      "upper": "-178705972706283063683/395000000000000000000"
    }
  },
  "word": "CEF"
}
```
