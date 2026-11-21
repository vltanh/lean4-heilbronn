# Nine-core HA: rppp

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
  "id": "rppp",
  "loc": "IRTT",
  "word": "-",
  "extra": [
    "ARS+"
  ],
  "stages": [
    {
      "result": {
        "loc": "IRTT",
        "word": "-",
        "extra": [
          "ARS+"
        ],
        "known": {
          "ABC": 1,
          "ABQ": 1,
          "ABE": 1,
          "ABR": 1,
          "ABF": 1,
          "ABH": 1,
          "ACQ": 1,
          "ACE": 1,
          "ACR": 1,
          "ACF": 1,
          "ACH": 1,
          "AEQ": -1,
          "AQR": 1,
          "AFQ": -1,
          "AHQ": -1,
          "AER": 1,
          "AEF": 1,
          "AEH": 1,
          "AFR": -1,
          "AHR": -1,
          "AFH": 1,
          "BCQ": 1,
          "BCE": 1,
          "BCR": 1,
          "BCF": 1,
          "BCH": 1,
          "BEQ": -1,
          "BQR": 1,
          "BFQ": -1,
          "BHQ": -1,
          "BER": 1,
          "BEF": 1,
          "BEH": 1,
          "BFR": -1,
          "BHR": -1,
          "BFH": 1,
          "CEQ": -1,
          "CQR": 1,
          "CFQ": -1,
          "CHQ": -1,
          "CER": 1,
          "CEF": 1,
          "CEH": 1,
          "CFR": -1,
          "CHR": -1,
          "CFH": 1,
          "EQR": -1,
          "EFQ": 1,
          "EHQ": 1,
          "FQR": 1,
          "HQR": 1,
          "FHQ": 1,
          "EFR": -1,
          "EHR": -1,
          "EFH": 1,
          "FHR": 1,
          "ABS": 1,
          "BCS": 1,
          "CQS": 1,
          "EQS": -1,
          "ERS": 1,
          "FRS": -1,
          "FHS": 1,
          "AHS": -1,
          "BHS": -1,
          "ACS": 1,
          "BQS": 1,
          "CES": 1,
          "QRS": 1,
          "EFS": -1,
          "HRS": -1,
          "AFS": -1,
          "FQS": 1,
          "ARS": 1,
          "BFS": -1,
          "AES": 1,
          "BES": 1,
          "BRS": 1,
          "AQS": 1,
          "CFS": -1,
          "CRS": 1,
          "CHS": -1,
          "EHS": -1,
          "HQS": 1
        },
        "trace": [
          {
            "word": "ARS",
            "sign": 1,
            "why": [
              "branch"
            ]
          },
          {
            "word": "FBS",
            "sign": 1,
            "why": [
              "plu",
              "FABES"
            ]
          },
          {
            "word": "AES",
            "sign": 1,
            "why": [
              "plu",
              "ABERS"
            ]
          },
          {
            "word": "EBS",
            "sign": -1,
            "why": [
              "plu",
              "EABRS"
            ]
          },
          {
            "word": "RBS",
            "sign": -1,
            "why": [
              "plu",
              "RABES"
            ]
          },
          {
            "word": "QAS",
            "sign": -1,
            "why": [
              "plu",
              "QABFS"
            ]
          },
          {
            "word": "FCS",
            "sign": 1,
            "why": [
              "plu",
              "FACES"
            ]
          },
          {
            "word": "RCS",
            "sign": -1,
            "why": [
              "plu",
              "RACES"
            ]
          },
          {
            "word": "CHS",
            "sign": -1,
            "why": [
              "plu",
              "CAFHS"
            ]
          },
          {
            "word": "EHS",
            "sign": -1,
            "why": [
              "plu",
              "EAFHS"
            ]
          },
          {
            "word": "HQS",
            "sign": 1,
            "why": [
              "plu",
              "HAEQS"
            ]
          }
        ],
        "box": {
          "low": [
            "138491/1000000",
            "2159/20000",
            "93/250",
            "52127/125000",
            "2159/20000",
            "808677/1000000",
            "199139/250000",
            "138491/1000000",
            "426879/500000",
            "364889/500000",
            "532809/1000000",
            "662367/1000000"
          ],
          "high": [
            "97/190",
            "19/100",
            "779469/1000000",
            "343619/500000",
            "130357/250000",
            "1/1",
            "479617/500000",
            "247269/500000",
            "1/1",
            "1/1",
            "7841/10000",
            "447873/500000"
          ]
        },
        "initialBox": {
          "low": [
            "138491/1000000",
            "2159/20000",
            "93/250",
            "52127/125000",
            "2159/20000",
            "808677/1000000",
            "199139/250000",
            "138491/1000000",
            "426879/500000",
            "364889/500000",
            "532809/1000000",
            "662367/1000000"
          ],
          "high": [
            "97/190",
            "19/100",
            "779469/1000000",
            "343619/500000",
            "130357/250000",
            "1/1",
            "479617/500000",
            "247269/500000",
            "1/1",
            "1/1",
            "7841/10000",
            "447873/500000"
          ]
        },
        "refinement": {
          "factors": {},
          "steps": []
        },
        "initial": [
          {
            "id": 36,
            "triangle": "AFH",
            "direction": "lo",
            "value": "93/1000",
            "source": [
              "occupants",
              []
            ]
          },
          {
            "id": 46,
            "triangle": "AHR",
            "direction": "lo",
            "value": "194807/500000",
            "source": [
              "earlier-area",
              {
                "triangle": "AHR",
                "direction": "lo",
                "value": "194807/500000",
                "origin": {
                  "packet": "rpp",
                  "stage": 3,
                  "id": 46
                }
              }
            ]
          },
          {
            "id": 54,
            "triangle": "ARS",
            "direction": "lo",
            "value": "93/1000",
            "source": [
              "occupants",
              []
            ]
          },
          {
            "id": 82,
            "triangle": "BFR",
            "direction": "lo",
            "value": "16381/50000",
            "source": [
              "earlier-area",
              {
                "triangle": "BFR",
                "direction": "lo",
                "value": "16381/50000",
                "origin": {
                  "packet": "rpp",
                  "stage": 3,
                  "id": 82
                }
              }
            ]
          },
          {
            "id": 98,
            "triangle": "CEF",
            "direction": "lo",
            "value": "52793/250000",
            "source": [
              "earlier-area",
              {
                "triangle": "CEF",
                "direction": "lo",
                "value": "52793/250000",
                "origin": {
                  "packet": "rpp",
                  "stage": 3,
                  "id": 98
                }
              }
            ]
          },
          {
            "id": 100,
            "triangle": "CEH",
            "direction": "lo",
            "value": "31557/200000",
            "source": [
              "earlier-area",
              {
                "triangle": "CEH",
                "direction": "lo",
                "value": "31557/200000",
                "origin": {
                  "packet": "rpp",
                  "stage": 3,
                  "id": 100
                }
              }
            ]
          },
          {
            "id": 112,
            "triangle": "CFR",
            "direction": "lo",
            "value": "325111/1000000",
            "source": [
              "earlier-area",
              {
                "triangle": "CFR",
                "direction": "lo",
                "value": "325111/1000000",
                "origin": {
                  "packet": "rpp",
                  "stage": 3,
                  "id": 112
                }
              }
            ]
          },
          {
            "id": 118,
            "triangle": "CHR",
            "direction": "lo",
            "value": "183419/500000",
            "source": [
              "earlier-area",
              {
                "triangle": "CHR",
                "direction": "lo",
                "value": "183419/500000",
                "origin": {
                  "packet": "rpp",
                  "stage": 3,
                  "id": 118
                }
              }
            ]
          },
          {
            "id": 128,
            "triangle": "EFH",
            "direction": "lo",
            "value": "96909/1000000",
            "source": [
              "earlier-area",
              {
                "triangle": "EFH",
                "direction": "lo",
                "value": "96909/1000000",
                "origin": {
                  "packet": "rpp",
                  "stage": 3,
                  "id": 128
                }
              }
            ]
          },
          {
            "id": 133,
            "triangle": "EFR",
            "direction": "hi",
            "value": "8963/25000",
            "source": [
              "core-width-six-chain-cap",
              "BCQERF",
              "ERF",
              "ERF",
              "S"
            ]
          },
          {
            "id": 134,
            "triangle": "EFS",
            "direction": "lo",
            "value": "93/1000",
            "source": [
              "occupants",
              []
            ]
          },
          {
            "id": 138,
            "triangle": "EHR",
            "direction": "lo",
            "value": "143133/500000",
            "source": [
              "earlier-area",
              {
                "triangle": "EHR",
                "direction": "lo",
                "value": "143133/500000",
                "origin": {
                  "packet": "rpp",
                  "stage": 3,
                  "id": 138
                }
              }
            ]
          },
          {
            "id": 139,
            "triangle": "EHR",
            "direction": "hi",
            "value": "72873/125000",
            "source": [
              "vertices",
              "72873/125000"
            ]
          },
          {
            "id": 140,
            "triangle": "EHS",
            "direction": "lo",
            "value": "50133/500000",
            "source": [
              "earlier-area",
              {
                "triangle": "EHS",
                "direction": "lo",
                "value": "50133/500000",
                "origin": {
                  "packet": "rpp",
                  "stage": 3,
                  "id": 140
                }
              }
            ]
          },
          {
            "id": 146,
            "triangle": "ERS",
            "direction": "lo",
            "value": "93/1000",
            "source": [
              "occupants",
              []
            ]
          },
          {
            "id": 158,
            "triangle": "FRS",
            "direction": "lo",
            "value": "93/1000",
            "source": [
              "occupants",
              []
            ]
          },
          {
            "id": 159,
            "triangle": "FRS",
            "direction": "hi",
            "value": "4313/25000",
            "source": [
              "earlier-area",
              {
                "triangle": "FRS",
                "direction": "hi",
                "value": "4313/25000",
                "origin": {
                  "packet": "rpp",
                  "stage": 3,
                  "id": 159
                }
              }
            ]
          },
          {
            "id": 160,
            "triangle": "HQR",
            "direction": "lo",
            "value": "2159/6250",
            "source": [
              "earlier-area",
              {
                "triangle": "HQR",
                "direction": "lo",
                "value": "2159/6250",
                "origin": {
                  "packet": "rpp",
                  "stage": 3,
                  "id": 160
                }
              }
            ]
          },
          {
            "id": 164,
            "triangle": "HRS",
            "direction": "lo",
            "value": "93/1000",
            "source": [
              "occupants",
              []
            ]
          }
        ],
        "relations": {
          "1124": {
            "kind": "support",
            "X": "AHR",
            "Y": "EHR",
            "Z": "AEH",
            "constant": [
              "95223467889",
              "62500000000"
            ],
            "source": [
              "pentagon-ear-box",
              "HAQER",
              [
                {
                  "ear": "HAQ",
                  "occupants": [],
                  "lower": "974733/2500000",
                  "root": "312207/500000",
                  "side": [
                    "AH-clearance",
                    "Q",
                    "199139/250000",
                    "19/100"
                  ]
                },
                {
                  "ear": "AQE",
                  "occupants": [],
                  "lower": "93/1000",
                  "root": "304959/1000000",
                  "side": null
                },
                {
                  "ear": "QER",
                  "occupants": [],
                  "lower": "93/1000",
                  "root": "304959/1000000",
                  "side": null
                }
              ],
              "95223467889/62500000000"
            ]
          },
          "1565": {
            "kind": "bary",
            "outer": "EFR",
            "fans": [
              "FRS",
              "ERS",
              "EFS"
            ],
            "target": "AHS",
            "targetSign": -1,
            "vertices": [
              {
                "name": "AEH",
                "sign": -1
              },
              {
                "name": "AFH",
                "sign": -1
              },
              {
                "name": "AHR",
                "sign": -1
              }
            ],
            "witness": {
              "container": "EFR",
              "inner": "S",
              "line": "AH"
            }
          },
          "1759": {
            "kind": "four",
            "vertices": "AHRS",
            "terms": [
              {
                "triangle": "AHR",
                "co": -1
              },
              {
                "triangle": "ARS",
                "co": 1
              },
              {
                "triangle": "AHS",
                "co": 1
              },
              {
                "triangle": "HRS",
                "co": 1
              }
            ]
          }
        },
        "closed": false,
        "rounds": 13,
        "updates": [
          {
            "id": 170,
            "triangle": "AEH",
            "direction": "lo",
            "value": "240531/1000000",
            "raw": "424152327909349/1763397553500000",
            "why": [
              "support",
              1124
            ],
            "refs": [
              46,
              139
            ]
          },
          {
            "id": 173,
            "triangle": "AHS",
            "direction": "lo",
            "value": "208211/1000000",
            "raw": "14929569/71704000",
            "why": [
              "bary",
              1565,
              "neg-hi"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              170,
              36,
              46
            ]
          },
          {
            "id": 177,
            "triangle": "AHR",
            "direction": "lo",
            "value": "394211/1000000",
            "raw": "394211/1000000",
            "why": [
              "four",
              1759
            ],
            "refs": [
              54,
              173,
              164
            ]
          },
          {
            "id": 180,
            "triangle": "AEH",
            "direction": "lo",
            "value": "243369/1000000",
            "raw": "858313681425577/3526795107000000",
            "why": [
              "support",
              1124
            ],
            "refs": [
              177,
              139
            ]
          },
          {
            "id": 181,
            "triangle": "AHS",
            "direction": "lo",
            "value": "210139/1000000",
            "raw": "753393/3585200",
            "why": [
              "bary",
              1565,
              "neg-hi"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              180,
              36,
              177
            ]
          },
          {
            "id": 185,
            "triangle": "AHR",
            "direction": "lo",
            "value": "396139/1000000",
            "raw": "396139/1000000",
            "why": [
              "four",
              1759
            ],
            "refs": [
              54,
              181,
              164
            ]
          },
          {
            "id": 188,
            "triangle": "AEH",
            "direction": "lo",
            "value": "244559/1000000",
            "raw": "862511506391873/3526795107000000",
            "why": [
              "support",
              1124
            ],
            "refs": [
              185,
              139
            ]
          },
          {
            "id": 189,
            "triangle": "AHS",
            "direction": "lo",
            "value": "52737/250000",
            "raw": "37814637/179260000",
            "why": [
              "bary",
              1565,
              "neg-hi"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              188,
              36,
              185
            ]
          },
          {
            "id": 193,
            "triangle": "AHR",
            "direction": "lo",
            "value": "99237/250000",
            "raw": "99237/250000",
            "why": [
              "four",
              1759
            ],
            "refs": [
              54,
              189,
              164
            ]
          },
          {
            "id": 196,
            "triangle": "AEH",
            "direction": "lo",
            "value": "245059/1000000",
            "raw": "72022744844453/293899592250000",
            "why": [
              "support",
              1124
            ],
            "refs": [
              193,
              139
            ]
          },
          {
            "id": 197,
            "triangle": "AHS",
            "direction": "lo",
            "value": "26411/125000",
            "raw": "75751011/358520000",
            "why": [
              "bary",
              1565,
              "neg-hi"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              196,
              36,
              193
            ]
          },
          {
            "id": 201,
            "triangle": "AHR",
            "direction": "lo",
            "value": "49661/125000",
            "raw": "49661/125000",
            "why": [
              "four",
              1759
            ],
            "refs": [
              54,
              197,
              164
            ]
          },
          {
            "id": 204,
            "triangle": "AEH",
            "direction": "lo",
            "value": "61317/250000",
            "raw": "108126652308727/440849388375000",
            "why": [
              "support",
              1124
            ],
            "refs": [
              201,
              139
            ]
          },
          {
            "id": 205,
            "triangle": "AHS",
            "direction": "lo",
            "value": "21143/100000",
            "raw": "18950517/89630000",
            "why": [
              "bary",
              1565,
              "neg-hi"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              204,
              36,
              201
            ]
          },
          {
            "id": 209,
            "triangle": "AHR",
            "direction": "lo",
            "value": "39743/100000",
            "raw": "39743/100000",
            "why": [
              "four",
              1759
            ],
            "refs": [
              54,
              205,
              164
            ]
          },
          {
            "id": 212,
            "triangle": "AEH",
            "direction": "lo",
            "value": "61339/250000",
            "raw": "7866567221591/32061773700000",
            "why": [
              "support",
              1124
            ],
            "refs": [
              209,
              139
            ]
          },
          {
            "id": 213,
            "triangle": "AHS",
            "direction": "lo",
            "value": "21149/100000",
            "raw": "37911729/179260000",
            "why": [
              "bary",
              1565,
              "neg-hi"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              212,
              36,
              209
            ]
          },
          {
            "id": 217,
            "triangle": "AHR",
            "direction": "lo",
            "value": "39749/100000",
            "raw": "39749/100000",
            "why": [
              "four",
              1759
            ],
            "refs": [
              54,
              213,
              164
            ]
          },
          {
            "id": 220,
            "triangle": "AEH",
            "direction": "lo",
            "value": "245393/1000000",
            "raw": "86545303208143/352679510700000",
            "why": [
              "support",
              1124
            ],
            "refs": [
              217,
              139
            ]
          },
          {
            "id": 221,
            "triangle": "AHS",
            "direction": "lo",
            "value": "42303/200000",
            "raw": "75832479/358520000",
            "why": [
              "bary",
              1565,
              "neg-hi"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              220,
              36,
              217
            ]
          },
          {
            "id": 225,
            "triangle": "AHR",
            "direction": "lo",
            "value": "79503/200000",
            "raw": "79503/200000",
            "why": [
              "four",
              1759
            ],
            "refs": [
              54,
              221,
              164
            ]
          },
          {
            "id": 228,
            "triangle": "AEH",
            "direction": "lo",
            "value": "245409/1000000",
            "raw": "57700497630607/235119673800000",
            "why": [
              "support",
              1124
            ],
            "refs": [
              225,
              139
            ]
          },
          {
            "id": 229,
            "triangle": "AHS",
            "direction": "lo",
            "value": "8461/40000",
            "raw": "18959073/89630000",
            "why": [
              "bary",
              1565,
              "neg-hi"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              228,
              36,
              225
            ]
          },
          {
            "id": 233,
            "triangle": "AHR",
            "direction": "lo",
            "value": "15901/40000",
            "raw": "15901/40000",
            "why": [
              "four",
              1759
            ],
            "refs": [
              54,
              229,
              164
            ]
          },
          {
            "id": 236,
            "triangle": "AEH",
            "direction": "lo",
            "value": "49083/200000",
            "raw": "34621169496407/141071804280000",
            "why": [
              "support",
              1124
            ],
            "refs": [
              233,
              139
            ]
          },
          {
            "id": 237,
            "triangle": "AHS",
            "direction": "lo",
            "value": "21153/100000",
            "raw": "3791889/17926000",
            "why": [
              "bary",
              1565,
              "neg-hi"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              236,
              36,
              233
            ]
          },
          {
            "id": 241,
            "triangle": "AHR",
            "direction": "lo",
            "value": "39753/100000",
            "raw": "39753/100000",
            "why": [
              "four",
              1759
            ],
            "refs": [
              54,
              237,
              164
            ]
          },
          {
            "id": 244,
            "triangle": "AEH",
            "direction": "lo",
            "value": "122709/500000",
            "raw": "9617112487619/39186612300000",
            "why": [
              "support",
              1124
            ],
            "refs": [
              241,
              139
            ]
          },
          {
            "id": 245,
            "triangle": "AHS",
            "direction": "lo",
            "value": "52883/250000",
            "raw": "18959631/89630000",
            "why": [
              "bary",
              1565,
              "neg-hi"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              244,
              36,
              241
            ]
          },
          {
            "id": 248,
            "triangle": "AHR",
            "direction": "lo",
            "value": "99383/250000",
            "raw": "99383/250000",
            "why": [
              "four",
              1759
            ],
            "refs": [
              54,
              245,
              164
            ]
          }
        ],
        "areaVertexDifferences": {
          "139": {
            "indices": [
              3,
              5,
              8,
              9
            ],
            "differences": [
              "163749643981/500000000000",
              "279101741119/500000000000",
              "22217421633/62500000000",
              "146545735101/250000000000",
              "135111/500000",
              "135111/250000",
              "135111/500000",
              "135111/250000",
              "28638643981/500000000000",
              "143990741119/500000000000",
              "5328546633/62500000000",
              "78990235101/250000000000",
              "0",
              "135111/500000",
              "0",
              "135111/500000"
            ]
          }
        }
      },
      "forced": []
    },
    {
      "result": {
        "loc": "IRTT",
        "word": "-",
        "extra": [
          "ARS+"
        ],
        "known": {
          "ABC": 1,
          "ABQ": 1,
          "ABE": 1,
          "ABR": 1,
          "ABF": 1,
          "ABH": 1,
          "ACQ": 1,
          "ACE": 1,
          "ACR": 1,
          "ACF": 1,
          "ACH": 1,
          "AEQ": -1,
          "AQR": 1,
          "AFQ": -1,
          "AHQ": -1,
          "AER": 1,
          "AEF": 1,
          "AEH": 1,
          "AFR": -1,
          "AHR": -1,
          "AFH": 1,
          "BCQ": 1,
          "BCE": 1,
          "BCR": 1,
          "BCF": 1,
          "BCH": 1,
          "BEQ": -1,
          "BQR": 1,
          "BFQ": -1,
          "BHQ": -1,
          "BER": 1,
          "BEF": 1,
          "BEH": 1,
          "BFR": -1,
          "BHR": -1,
          "BFH": 1,
          "CEQ": -1,
          "CQR": 1,
          "CFQ": -1,
          "CHQ": -1,
          "CER": 1,
          "CEF": 1,
          "CEH": 1,
          "CFR": -1,
          "CHR": -1,
          "CFH": 1,
          "EQR": -1,
          "EFQ": 1,
          "EHQ": 1,
          "FQR": 1,
          "HQR": 1,
          "FHQ": 1,
          "EFR": -1,
          "EHR": -1,
          "EFH": 1,
          "FHR": 1,
          "ABS": 1,
          "BCS": 1,
          "CQS": 1,
          "EQS": -1,
          "ERS": 1,
          "FRS": -1,
          "FHS": 1,
          "AHS": -1,
          "BHS": -1,
          "ACS": 1,
          "BQS": 1,
          "CES": 1,
          "QRS": 1,
          "EFS": -1,
          "HRS": -1,
          "AFS": -1,
          "FQS": 1,
          "ARS": 1,
          "BFS": -1,
          "AES": 1,
          "BES": 1,
          "BRS": 1,
          "AQS": 1,
          "CFS": -1,
          "CRS": 1,
          "CHS": -1,
          "EHS": -1,
          "HQS": 1
        },
        "trace": [
          {
            "word": "ARS",
            "sign": 1,
            "why": [
              "branch"
            ]
          },
          {
            "word": "FBS",
            "sign": 1,
            "why": [
              "plu",
              "FABES"
            ]
          },
          {
            "word": "AES",
            "sign": 1,
            "why": [
              "plu",
              "ABERS"
            ]
          },
          {
            "word": "EBS",
            "sign": -1,
            "why": [
              "plu",
              "EABRS"
            ]
          },
          {
            "word": "RBS",
            "sign": -1,
            "why": [
              "plu",
              "RABES"
            ]
          },
          {
            "word": "QAS",
            "sign": -1,
            "why": [
              "plu",
              "QABFS"
            ]
          },
          {
            "word": "FCS",
            "sign": 1,
            "why": [
              "plu",
              "FACES"
            ]
          },
          {
            "word": "RCS",
            "sign": -1,
            "why": [
              "plu",
              "RACES"
            ]
          },
          {
            "word": "CHS",
            "sign": -1,
            "why": [
              "plu",
              "CAFHS"
            ]
          },
          {
            "word": "EHS",
            "sign": -1,
            "why": [
              "plu",
              "EAFHS"
            ]
          },
          {
            "word": "HQS",
            "sign": 1,
            "why": [
              "plu",
              "HAEQS"
            ]
          }
        ],
        "box": {
          "low": [
            "138491/1000000",
            "2159/20000",
            "93/250",
            "52127/125000",
            "2159/20000",
            "808677/1000000",
            "199139/250000",
            "138491/1000000",
            "426879/500000",
            "364889/500000",
            "532809/1000000",
            "662367/1000000"
          ],
          "high": [
            "97/190",
            "19/100",
            "779469/1000000",
            "343619/500000",
            "130357/250000",
            "1/1",
            "479617/500000",
            "247269/500000",
            "1/1",
            "1/1",
            "7841/10000",
            "447873/500000"
          ]
        },
        "initialBox": {
          "low": [
            "138491/1000000",
            "2159/20000",
            "93/250",
            "52127/125000",
            "2159/20000",
            "808677/1000000",
            "199139/250000",
            "138491/1000000",
            "426879/500000",
            "364889/500000",
            "532809/1000000",
            "662367/1000000"
          ],
          "high": [
            "97/190",
            "19/100",
            "779469/1000000",
            "343619/500000",
            "130357/250000",
            "1/1",
            "479617/500000",
            "247269/500000",
            "1/1",
            "1/1",
            "7841/10000",
            "447873/500000"
          ]
        },
        "refinement": {
          "factors": {},
          "steps": []
        },
        "initial": [
          {
            "id": 46,
            "triangle": "AHR",
            "direction": "lo",
            "value": "99383/250000",
            "source": [
              "earlier-area",
              {
                "triangle": "AHR",
                "direction": "lo",
                "value": "99383/250000",
                "origin": {
                  "packet": "rppp",
                  "stage": 0,
                  "id": 248
                }
              }
            ]
          },
          {
            "id": 82,
            "triangle": "BFR",
            "direction": "lo",
            "value": "16381/50000",
            "source": [
              "earlier-area",
              {
                "triangle": "BFR",
                "direction": "lo",
                "value": "16381/50000",
                "origin": {
                  "packet": "rppp",
                  "stage": 0,
                  "id": 82
                }
              }
            ]
          },
          {
            "id": 98,
            "triangle": "CEF",
            "direction": "lo",
            "value": "52793/250000",
            "source": [
              "earlier-area",
              {
                "triangle": "CEF",
                "direction": "lo",
                "value": "52793/250000",
                "origin": {
                  "packet": "rppp",
                  "stage": 0,
                  "id": 98
                }
              }
            ]
          },
          {
            "id": 100,
            "triangle": "CEH",
            "direction": "lo",
            "value": "31557/200000",
            "source": [
              "earlier-area",
              {
                "triangle": "CEH",
                "direction": "lo",
                "value": "31557/200000",
                "origin": {
                  "packet": "rppp",
                  "stage": 0,
                  "id": 100
                }
              }
            ]
          },
          {
            "id": 112,
            "triangle": "CFR",
            "direction": "lo",
            "value": "325111/1000000",
            "source": [
              "earlier-area",
              {
                "triangle": "CFR",
                "direction": "lo",
                "value": "325111/1000000",
                "origin": {
                  "packet": "rppp",
                  "stage": 0,
                  "id": 112
                }
              }
            ]
          },
          {
            "id": 118,
            "triangle": "CHR",
            "direction": "lo",
            "value": "183419/500000",
            "source": [
              "earlier-area",
              {
                "triangle": "CHR",
                "direction": "lo",
                "value": "183419/500000",
                "origin": {
                  "packet": "rppp",
                  "stage": 0,
                  "id": 118
                }
              }
            ]
          },
          {
            "id": 128,
            "triangle": "EFH",
            "direction": "lo",
            "value": "96909/1000000",
            "source": [
              "earlier-area",
              {
                "triangle": "EFH",
                "direction": "lo",
                "value": "96909/1000000",
                "origin": {
                  "packet": "rppp",
                  "stage": 0,
                  "id": 128
                }
              }
            ]
          },
          {
            "id": 138,
            "triangle": "EHR",
            "direction": "lo",
            "value": "143133/500000",
            "source": [
              "earlier-area",
              {
                "triangle": "EHR",
                "direction": "lo",
                "value": "143133/500000",
                "origin": {
                  "packet": "rppp",
                  "stage": 0,
                  "id": 138
                }
              }
            ]
          },
          {
            "id": 140,
            "triangle": "EHS",
            "direction": "lo",
            "value": "50133/500000",
            "source": [
              "earlier-area",
              {
                "triangle": "EHS",
                "direction": "lo",
                "value": "50133/500000",
                "origin": {
                  "packet": "rppp",
                  "stage": 0,
                  "id": 140
                }
              }
            ]
          },
          {
            "id": 159,
            "triangle": "FRS",
            "direction": "hi",
            "value": "4313/25000",
            "source": [
              "earlier-area",
              {
                "triangle": "FRS",
                "direction": "hi",
                "value": "4313/25000",
                "origin": {
                  "packet": "rppp",
                  "stage": 0,
                  "id": 159
                }
              }
            ]
          },
          {
            "id": 160,
            "triangle": "HQR",
            "direction": "lo",
            "value": "2159/6250",
            "source": [
              "earlier-area",
              {
                "triangle": "HQR",
                "direction": "lo",
                "value": "2159/6250",
                "origin": {
                  "packet": "rppp",
                  "stage": 0,
                  "id": 160
                }
              }
            ]
          }
        ],
        "relations": {},
        "closed": false,
        "rounds": 1,
        "updates": [],
        "areaVertexDifferences": {}
      },
      "forced": []
    }
  ]
}
```
