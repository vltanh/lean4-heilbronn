# Nine-core HA: rpppppm

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
  "id": "rpppppm",
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
            "71207/500000",
            "118459/1000000",
            "405057/1000000",
            "552517/1000000",
            "118459/1000000",
            "808677/1000000",
            "199139/250000",
            "71207/500000",
            "426879/500000",
            "217859/250000",
            "272191/500000",
            "390353/500000"
          ],
          "high": [
            "20281/62500",
            "15423/100000",
            "385741/500000",
            "340891/500000",
            "371729/1000000",
            "927491/1000000",
            "955623/1000000",
            "474611/1000000",
            "62201/62500",
            "1/1",
            "758297/1000000",
            "222323/250000"
          ]
        },
        "initialBox": {
          "low": [
            "71207/500000",
            "118459/1000000",
            "200541/500000",
            "552517/1000000",
            "118459/1000000",
            "808677/1000000",
            "199139/250000",
            "71207/500000",
            "426879/500000",
            "217859/250000",
            "272191/500000",
            "390353/500000"
          ],
          "high": [
            "219009/500000",
            "15423/100000",
            "385741/500000",
            "340891/500000",
            "371729/1000000",
            "927491/1000000",
            "955623/1000000",
            "237993/500000",
            "62201/62500",
            "1/1",
            "758297/1000000",
            "222323/250000"
          ]
        },
        "refinement": {
          "factors": {
            "0": {
              "name": "A_ABC",
              "why": [
                "actual-area",
                "ABC",
                []
              ],
              "terms": [
                [
                  [
                    0,
                    1
                  ],
                  "-1/1"
                ],
                [
                  [
                    0,
                    2
                  ],
                  "1/1"
                ],
                [
                  [],
                  "-93/1000"
                ]
              ]
            },
            "7": {
              "name": "A_ABH",
              "why": [
                "actual-area",
                "ABH",
                []
              ],
              "terms": [
                [
                  [
                    1,
                    5
                  ],
                  "1/1"
                ],
                [
                  [
                    0,
                    1
                  ],
                  "-1/1"
                ],
                [
                  [],
                  "-93/1000"
                ]
              ]
            },
            "60": {
              "name": "A_CEQ",
              "why": [
                "actual-area",
                "CEQ",
                []
              ],
              "terms": [
                [
                  [
                    7
                  ],
                  "-1/1"
                ],
                [
                  [
                    2,
                    7
                  ],
                  "1/1"
                ],
                [
                  [
                    3,
                    6
                  ],
                  "1/1"
                ],
                [
                  [
                    2,
                    3
                  ],
                  "-1/1"
                ],
                [
                  [],
                  "-93/1000"
                ]
              ]
            }
          },
          "steps": [
            {
              "factor": 7,
              "target": "a",
              "old": [
                "71207/500000",
                "219009/500000"
              ],
              "lines": [
                [
                  "-118459/1000000",
                  "2795068743/1000000000000"
                ],
                [
                  "-15423/100000",
                  "3172225371/100000000000"
                ],
                [
                  "-118459/1000000",
                  "16869656369/1000000000000"
                ],
                [
                  "-15423/100000",
                  "5004693693/100000000000"
                ]
              ],
              "raw": [
                "71207/500000",
                "1668231231/5141000000"
              ],
              "new": [
                "71207/500000",
                "20281/62500"
              ]
            },
            {
              "factor": 0,
              "target": "c",
              "old": [
                "200541/500000",
                "385741/500000"
              ],
              "lines": [
                [
                  "71207/500000",
                  "-54935110013/500000000000"
                ],
                [
                  "20281/62500",
                  "-8214966979/62500000000"
                ],
                [
                  "71207/500000",
                  "-5748225561/50000000000"
                ],
                [
                  "20281/62500",
                  "-894043863/6250000000"
                ]
              ],
              "raw": [
                "8214966979/20281000000",
                "385741/500000"
              ],
              "new": [
                "405057/1000000",
                "385741/500000"
              ]
            },
            {
              "factor": 60,
              "target": "v",
              "old": [
                "71207/500000",
                "237993/500000"
              ],
              "lines": [
                [
                  "-594943/1000000",
                  "123309852983/1000000000000"
                ],
                [
                  "-114259/500000",
                  "-39573094371/500000000000"
                ],
                [
                  "-594943/1000000",
                  "86958485609/500000000000"
                ],
                [
                  "-114259/500000",
                  "-18976249533/250000000000"
                ],
                [
                  "-594943/1000000",
                  "105598537311/500000000000"
                ],
                [
                  "-114259/500000",
                  "8741032897/1000000000000"
                ],
                [
                  "-594943/1000000",
                  "70591497153/250000000000"
                ],
                [
                  "-114259/500000",
                  "16272009631/500000000000"
                ]
              ],
              "raw": [
                "71207/500000",
                "70591497153/148735750000"
              ],
              "new": [
                "71207/500000",
                "474611/1000000"
              ]
            }
          ]
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
            "value": "414141/1000000",
            "source": [
              "earlier-area",
              {
                "triangle": "AHR",
                "direction": "lo",
                "value": "414141/1000000",
                "origin": {
                  "packet": "rppppp",
                  "stage": 2,
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
            "value": "166989/500000",
            "source": [
              "earlier-area",
              {
                "triangle": "BFR",
                "direction": "lo",
                "value": "166989/500000",
                "origin": {
                  "packet": "rppppp",
                  "stage": 2,
                  "id": 82
                }
              }
            ]
          },
          {
            "id": 96,
            "triangle": "BRS",
            "direction": "lo",
            "value": "93/1000",
            "source": [
              "occupants",
              []
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
                  "packet": "rppppp",
                  "stage": 2,
                  "id": 98
                }
              }
            ]
          },
          {
            "id": 100,
            "triangle": "CEH",
            "direction": "lo",
            "value": "218877/1000000",
            "source": [
              "earlier-area",
              {
                "triangle": "CEH",
                "direction": "lo",
                "value": "218877/1000000",
                "origin": {
                  "packet": "rppppp",
                  "stage": 2,
                  "id": 100
                }
              }
            ]
          },
          {
            "id": 102,
            "triangle": "CEQ",
            "direction": "lo",
            "value": "93/1000",
            "source": [
              "occupants",
              []
            ]
          },
          {
            "id": 105,
            "triangle": "CER",
            "direction": "hi",
            "value": "347028069583/1000000000000",
            "source": [
              "vertices",
              "347028069583/1000000000000"
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
                  "packet": "rppppp",
                  "stage": 2,
                  "id": 112
                }
              }
            ]
          },
          {
            "id": 118,
            "triangle": "CHR",
            "direction": "lo",
            "value": "97059/250000",
            "source": [
              "earlier-area",
              {
                "triangle": "CHR",
                "direction": "lo",
                "value": "97059/250000",
                "origin": {
                  "packet": "rppppp",
                  "stage": 2,
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
                  "packet": "rppppp",
                  "stage": 2,
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
                  "packet": "rppppp",
                  "stage": 2,
                  "id": 138
                }
              }
            ]
          },
          {
            "id": 139,
            "triangle": "EHR",
            "direction": "hi",
            "value": "1394554783/3125000000",
            "source": [
              "vertices",
              "1394554783/3125000000"
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
                  "packet": "rppppp",
                  "stage": 2,
                  "id": 140
                }
              }
            ]
          },
          {
            "id": 142,
            "triangle": "EQR",
            "direction": "lo",
            "value": "93/1000",
            "source": [
              "occupants",
              []
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
            "id": 148,
            "triangle": "FHQ",
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
                  "packet": "rppppp",
                  "stage": 2,
                  "id": 159
                }
              }
            ]
          },
          {
            "id": 160,
            "triangle": "HQR",
            "direction": "lo",
            "value": "179373/500000",
            "source": [
              "earlier-area",
              {
                "triangle": "HQR",
                "direction": "lo",
                "value": "179373/500000",
                "origin": {
                  "packet": "rppppp",
                  "stage": 2,
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
          },
          {
            "id": 166,
            "triangle": "QRS",
            "direction": "lo",
            "value": "93/1000",
            "source": [
              "occupants",
              []
            ]
          }
        ],
        "relations": {
          "487": {
            "kind": "plu",
            "witness": "FBERS",
            "iso": [
              "BFS",
              "EFR"
            ],
            "rhs": [
              [
                "BEF",
                "FRS"
              ],
              [
                "BFR",
                "EFS"
              ]
            ]
          },
          "566": {
            "kind": "plu",
            "witness": "ECHQR",
            "iso": [
              "CER",
              "EHQ"
            ],
            "rhs": [
              [
                "CEH",
                "EQR"
              ],
              [
                "CEQ",
                "EHR"
              ]
            ]
          },
          "1124": {
            "kind": "support",
            "X": "AHR",
            "Y": "EHR",
            "Z": "AEH",
            "constant": [
              "1697728214961",
              "1000000000000"
            ],
            "source": [
              "pentagon-ear-box",
              "HAQER",
              [
                {
                  "ear": "HAQ",
                  "occupants": [],
                  "lower": "6173309/12852500",
                  "root": "693051/1000000",
                  "side": [
                    "AH-clearance",
                    "Q",
                    "199139/250000",
                    "15423/100000"
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
              "1697728214961/1000000000000"
            ]
          },
          "1159": {
            "kind": "support",
            "X": "BFR",
            "Y": "EFR",
            "Z": "BEF",
            "constant": [
              "1533235821121",
              "1000000000000"
            ],
            "source": [
              "pentagon-ear-box",
              "FBCER",
              [
                {
                  "ear": "FBC",
                  "occupants": [],
                  "lower": "11625/40562",
                  "root": "133837/250000",
                  "side": [
                    "BC-clearance",
                    "F",
                    "1/1",
                    "20281/62500"
                  ]
                },
                {
                  "ear": "BCE",
                  "occupants": [],
                  "lower": "3022593/19088000",
                  "root": "99483/250000",
                  "side": [
                    "BC-clearance",
                    "E",
                    "552517/1000000",
                    "20281/62500"
                  ]
                },
                {
                  "ear": "CER",
                  "occupants": [],
                  "lower": "93/1000",
                  "root": "304959/1000000",
                  "side": null
                }
              ],
              "1533235821121/1000000000000"
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
          "1571": {
            "kind": "bary",
            "outer": "EFR",
            "fans": [
              "FRS",
              "ERS",
              "EFS"
            ],
            "target": "BFS",
            "targetSign": -1,
            "vertices": [
              {
                "name": "BEF",
                "sign": -1
              },
              {
                "name": null,
                "sign": 0
              },
              {
                "name": "BFR",
                "sign": -1
              }
            ],
            "witness": {
              "container": "EFR",
              "inner": "S",
              "line": "BF"
            }
          },
          "1591": {
            "kind": "bary",
            "outer": "EFR",
            "fans": [
              "FRS",
              "ERS",
              "EFS"
            ],
            "target": "HQS",
            "targetSign": 1,
            "vertices": [
              {
                "name": "EHQ",
                "sign": 1
              },
              {
                "name": "FHQ",
                "sign": 1
              },
              {
                "name": "HQR",
                "sign": 1
              }
            ],
            "witness": {
              "container": "EFR",
              "inner": "S",
              "line": "HQ"
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
          },
          "1791": {
            "kind": "four",
            "vertices": "BFRS",
            "terms": [
              {
                "triangle": "BFR",
                "co": -1
              },
              {
                "triangle": "BRS",
                "co": 1
              },
              {
                "triangle": "BFS",
                "co": 1
              },
              {
                "triangle": "FRS",
                "co": 1
              }
            ]
          },
          "1830": {
            "kind": "four",
            "vertices": "HQRS",
            "terms": [
              {
                "triangle": "HQR",
                "co": 1
              },
              {
                "triangle": "HRS",
                "co": -1
              },
              {
                "triangle": "HQS",
                "co": -1
              },
              {
                "triangle": "QRS",
                "co": -1
              }
            ]
          }
        },
        "closed": false,
        "rounds": 16,
        "updates": [
          {
            "id": 173,
            "triangle": "EHQ",
            "direction": "lo",
            "value": "135373/1000000",
            "raw": "46978299000/347028069583",
            "why": [
              "plu",
              566
            ],
            "refs": [
              100,
              142,
              102,
              138,
              105
            ]
          },
          {
            "id": 178,
            "triangle": "AEH",
            "direction": "lo",
            "value": "305281/1000000",
            "raw": "172761773569504847/565909404987000000",
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
            "id": 181,
            "triangle": "BEF",
            "direction": "lo",
            "value": "255883/1000000",
            "raw": "196164620253174669/766617910560500000",
            "why": [
              "support",
              1159
            ],
            "refs": [
              82,
              133
            ]
          },
          {
            "id": 190,
            "triangle": "AHS",
            "direction": "lo",
            "value": "231369/1000000",
            "raw": "41475303/179260000",
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
              178,
              36,
              46
            ]
          },
          {
            "id": 191,
            "triangle": "BFS",
            "direction": "lo",
            "value": "153009/1000000",
            "raw": "54857073/358520000",
            "why": [
              "bary",
              1571,
              "neg-hi"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              181,
              82
            ]
          },
          {
            "id": 194,
            "triangle": "HQS",
            "direction": "lo",
            "value": "6917/40000",
            "raw": "61997427/358520000",
            "why": [
              "bary",
              1591,
              "lo"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              173,
              148,
              160
            ]
          },
          {
            "id": 201,
            "triangle": "AHR",
            "direction": "lo",
            "value": "417369/1000000",
            "raw": "417369/1000000",
            "why": [
              "four",
              1759
            ],
            "refs": [
              54,
              190,
              164
            ]
          },
          {
            "id": 202,
            "triangle": "BFR",
            "direction": "lo",
            "value": "339009/1000000",
            "raw": "339009/1000000",
            "why": [
              "four",
              1791
            ],
            "refs": [
              96,
              191,
              158
            ]
          },
          {
            "id": 205,
            "triangle": "HQR",
            "direction": "lo",
            "value": "14357/40000",
            "raw": "14357/40000",
            "why": [
              "four",
              1830
            ],
            "refs": [
              164,
              194,
              166
            ]
          },
          {
            "id": 213,
            "triangle": "AEH",
            "direction": "lo",
            "value": "307661/1000000",
            "raw": "174108356025920323/565909404987000000",
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
            "id": 216,
            "triangle": "BEF",
            "direction": "lo",
            "value": "259737/1000000",
            "raw": "398239235802409089/1533235821121000000",
            "why": [
              "support",
              1159
            ],
            "refs": [
              202,
              133
            ]
          },
          {
            "id": 220,
            "triangle": "AHS",
            "direction": "lo",
            "value": "29103/125000",
            "raw": "1669443/7170400",
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
              213,
              36,
              201
            ]
          },
          {
            "id": 222,
            "triangle": "BFS",
            "direction": "lo",
            "value": "77657/500000",
            "raw": "27841689/179260000",
            "why": [
              "bary",
              1571,
              "neg-hi"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              216,
              202
            ]
          },
          {
            "id": 225,
            "triangle": "HQS",
            "direction": "lo",
            "value": "43243/250000",
            "raw": "31007037/179260000",
            "why": [
              "bary",
              1591,
              "lo"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              173,
              148,
              205
            ]
          },
          {
            "id": 231,
            "triangle": "AHR",
            "direction": "lo",
            "value": "52353/125000",
            "raw": "52353/125000",
            "why": [
              "four",
              1759
            ],
            "refs": [
              54,
              220,
              164
            ]
          },
          {
            "id": 232,
            "triangle": "BFR",
            "direction": "lo",
            "value": "170657/500000",
            "raw": "170657/500000",
            "why": [
              "four",
              1791
            ],
            "refs": [
              96,
              222,
              158
            ]
          },
          {
            "id": 234,
            "triangle": "HQR",
            "direction": "lo",
            "value": "89743/250000",
            "raw": "89743/250000",
            "why": [
              "four",
              1830
            ],
            "refs": [
              164,
              225,
              166
            ]
          },
          {
            "id": 244,
            "triangle": "AEH",
            "direction": "lo",
            "value": "308733/1000000",
            "raw": "7279804971160617/23579558541125000",
            "why": [
              "support",
              1124
            ],
            "refs": [
              231,
              139
            ]
          },
          {
            "id": 247,
            "triangle": "BEF",
            "direction": "lo",
            "value": "261503/1000000",
            "raw": "200473477885046497/766617910560500000",
            "why": [
              "support",
              1159
            ],
            "refs": [
              232,
              133
            ]
          },
          {
            "id": 251,
            "triangle": "AHS",
            "direction": "lo",
            "value": "233479/1000000",
            "raw": "83707161/358520000",
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
              231
            ]
          },
          {
            "id": 253,
            "triangle": "BFS",
            "direction": "lo",
            "value": "15637/100000",
            "raw": "56061981/358520000",
            "why": [
              "bary",
              1571,
              "neg-hi"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              247,
              232
            ]
          },
          {
            "id": 256,
            "triangle": "HQS",
            "direction": "lo",
            "value": "21623/125000",
            "raw": "12403689/71704000",
            "why": [
              "bary",
              1591,
              "lo"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              173,
              148,
              234
            ]
          },
          {
            "id": 262,
            "triangle": "AHR",
            "direction": "lo",
            "value": "419479/1000000",
            "raw": "419479/1000000",
            "why": [
              "four",
              1759
            ],
            "refs": [
              54,
              251,
              164
            ]
          },
          {
            "id": 263,
            "triangle": "BFR",
            "direction": "lo",
            "value": "34237/100000",
            "raw": "34237/100000",
            "why": [
              "four",
              1791
            ],
            "refs": [
              96,
              253,
              158
            ]
          },
          {
            "id": 265,
            "triangle": "HQR",
            "direction": "lo",
            "value": "44873/125000",
            "raw": "44873/125000",
            "why": [
              "four",
              1830
            ],
            "refs": [
              164,
              256,
              166
            ]
          },
          {
            "id": 276,
            "triangle": "AEH",
            "direction": "lo",
            "value": "9663/31250",
            "raw": "524965671221847079/1697728214961000000",
            "why": [
              "support",
              1124
            ],
            "refs": [
              262,
              139
            ]
          },
          {
            "id": 279,
            "triangle": "BEF",
            "direction": "lo",
            "value": "32789/125000",
            "raw": "40218745567719677/153323582112100000",
            "why": [
              "support",
              1159
            ],
            "refs": [
              263,
              133
            ]
          },
          {
            "id": 283,
            "triangle": "AHS",
            "direction": "lo",
            "value": "116887/500000",
            "raw": "16762599/71704000",
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
              276,
              36,
              262
            ]
          },
          {
            "id": 285,
            "triangle": "BFS",
            "direction": "lo",
            "value": "78427/500000",
            "raw": "28117713/179260000",
            "why": [
              "bary",
              1571,
              "neg-hi"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              279,
              263
            ]
          },
          {
            "id": 289,
            "triangle": "HQS",
            "direction": "lo",
            "value": "172987/1000000",
            "raw": "62019561/358520000",
            "why": [
              "bary",
              1591,
              "lo"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              173,
              148,
              265
            ]
          },
          {
            "id": 295,
            "triangle": "AHR",
            "direction": "lo",
            "value": "209887/500000",
            "raw": "209887/500000",
            "why": [
              "four",
              1759
            ],
            "refs": [
              54,
              283,
              164
            ]
          },
          {
            "id": 296,
            "triangle": "BFR",
            "direction": "lo",
            "value": "171427/500000",
            "raw": "171427/500000",
            "why": [
              "four",
              1791
            ],
            "refs": [
              96,
              285,
              158
            ]
          },
          {
            "id": 298,
            "triangle": "HQR",
            "direction": "lo",
            "value": "358987/1000000",
            "raw": "358987/1000000",
            "why": [
              "four",
              1830
            ],
            "refs": [
              164,
              289,
              166
            ]
          },
          {
            "id": 309,
            "triangle": "AEH",
            "direction": "lo",
            "value": "154717/500000",
            "raw": "262667427536872687/848864107480500000",
            "why": [
              "support",
              1124
            ],
            "refs": [
              295,
              139
            ]
          },
          {
            "id": 312,
            "triangle": "BEF",
            "direction": "lo",
            "value": "262683/1000000",
            "raw": "201378009067309667/766617910560500000",
            "why": [
              "support",
              1159
            ],
            "refs": [
              296,
              133
            ]
          },
          {
            "id": 316,
            "triangle": "AHS",
            "direction": "lo",
            "value": "58477/250000",
            "raw": "2620647/11203750",
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
              309,
              36,
              295
            ]
          },
          {
            "id": 318,
            "triangle": "BFS",
            "direction": "lo",
            "value": "39269/250000",
            "raw": "56314941/358520000",
            "why": [
              "bary",
              1571,
              "neg-hi"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              312,
              296
            ]
          },
          {
            "id": 322,
            "triangle": "HQS",
            "direction": "lo",
            "value": "43247/250000",
            "raw": "193812/1120375",
            "why": [
              "bary",
              1591,
              "lo"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              173,
              148,
              298
            ]
          },
          {
            "id": 328,
            "triangle": "AHR",
            "direction": "lo",
            "value": "104977/250000",
            "raw": "104977/250000",
            "why": [
              "four",
              1759
            ],
            "refs": [
              54,
              316,
              164
            ]
          },
          {
            "id": 329,
            "triangle": "BFR",
            "direction": "lo",
            "value": "85769/250000",
            "raw": "85769/250000",
            "why": [
              "four",
              1791
            ],
            "refs": [
              96,
              318,
              158
            ]
          },
          {
            "id": 331,
            "triangle": "HQR",
            "direction": "lo",
            "value": "89747/250000",
            "raw": "89747/250000",
            "why": [
              "four",
              1830
            ],
            "refs": [
              164,
              322,
              166
            ]
          },
          {
            "id": 342,
            "triangle": "AEH",
            "direction": "lo",
            "value": "77383/250000",
            "raw": "131375638036363777/424432053740250000",
            "why": [
              "support",
              1124
            ],
            "refs": [
              328,
              139
            ]
          },
          {
            "id": 345,
            "triangle": "BEF",
            "direction": "lo",
            "value": "262853/1000000",
            "raw": "100754201261727049/383308955280250000",
            "why": [
              "support",
              1159
            ],
            "refs": [
              329,
              133
            ]
          },
          {
            "id": 349,
            "triangle": "AHS",
            "direction": "lo",
            "value": "14623/62500",
            "raw": "2097057/8963000",
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
              342,
              36,
              328
            ]
          },
          {
            "id": 351,
            "triangle": "BFS",
            "direction": "lo",
            "value": "157177/1000000",
            "raw": "56351397/358520000",
            "why": [
              "bary",
              1571,
              "neg-hi"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              345,
              329
            ]
          },
          {
            "id": 360,
            "triangle": "AHR",
            "direction": "lo",
            "value": "6562/15625",
            "raw": "6562/15625",
            "why": [
              "four",
              1759
            ],
            "refs": [
              54,
              349,
              164
            ]
          },
          {
            "id": 361,
            "triangle": "BFR",
            "direction": "lo",
            "value": "343177/1000000",
            "raw": "343177/1000000",
            "why": [
              "four",
              1791
            ],
            "refs": [
              96,
              351,
              158
            ]
          },
          {
            "id": 373,
            "triangle": "AEH",
            "direction": "lo",
            "value": "309577/1000000",
            "raw": "8212150631039362/26527003358765625",
            "why": [
              "support",
              1124
            ],
            "refs": [
              360,
              139
            ]
          },
          {
            "id": 376,
            "triangle": "BEF",
            "direction": "lo",
            "value": "262931/1000000",
            "raw": "403135451344841417/1533235821121000000",
            "why": [
              "support",
              1159
            ],
            "refs": [
              361,
              133
            ]
          },
          {
            "id": 380,
            "triangle": "AHS",
            "direction": "lo",
            "value": "46799/200000",
            "raw": "16778409/71704000",
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
              373,
              36,
              360
            ]
          },
          {
            "id": 382,
            "triangle": "BFS",
            "direction": "lo",
            "value": "19653/125000",
            "raw": "14092011/89630000",
            "why": [
              "bary",
              1571,
              "neg-hi"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              376,
              361
            ]
          },
          {
            "id": 391,
            "triangle": "AHR",
            "direction": "lo",
            "value": "83999/200000",
            "raw": "83999/200000",
            "why": [
              "four",
              1759
            ],
            "refs": [
              54,
              380,
              164
            ]
          },
          {
            "id": 392,
            "triangle": "BFR",
            "direction": "lo",
            "value": "42903/125000",
            "raw": "42903/125000",
            "why": [
              "four",
              1791
            ],
            "refs": [
              96,
              382,
              158
            ]
          },
          {
            "id": 404,
            "triangle": "AEH",
            "direction": "lo",
            "value": "77399/250000",
            "raw": "105122286018999599/339545642992200000",
            "why": [
              "support",
              1124
            ],
            "refs": [
              391,
              139
            ]
          },
          {
            "id": 407,
            "triangle": "BEF",
            "direction": "lo",
            "value": "262967/1000000",
            "raw": "50398832873554263/191654477640125000",
            "why": [
              "support",
              1159
            ],
            "refs": [
              392,
              133
            ]
          },
          {
            "id": 411,
            "triangle": "AHS",
            "direction": "lo",
            "value": "234007/1000000",
            "raw": "83896323/358520000",
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
              404,
              36,
              391
            ]
          },
          {
            "id": 413,
            "triangle": "BFS",
            "direction": "lo",
            "value": "31449/200000",
            "raw": "56375763/358520000",
            "why": [
              "bary",
              1571,
              "neg-hi"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              407,
              392
            ]
          },
          {
            "id": 422,
            "triangle": "AHR",
            "direction": "lo",
            "value": "420007/1000000",
            "raw": "420007/1000000",
            "why": [
              "four",
              1759
            ],
            "refs": [
              54,
              411,
              164
            ]
          },
          {
            "id": 423,
            "triangle": "BFR",
            "direction": "lo",
            "value": "68649/200000",
            "raw": "68649/200000",
            "why": [
              "four",
              1791
            ],
            "refs": [
              96,
              413,
              158
            ]
          },
          {
            "id": 435,
            "triangle": "AEH",
            "direction": "lo",
            "value": "61921/200000",
            "raw": "525626447743210807/1697728214961000000",
            "why": [
              "support",
              1124
            ],
            "refs": [
              422,
              139
            ]
          },
          {
            "id": 438,
            "triangle": "BEF",
            "direction": "lo",
            "value": "262983/1000000",
            "raw": "80643066404135529/306647164224200000",
            "why": [
              "support",
              1159
            ],
            "refs": [
              423,
              133
            ]
          },
          {
            "id": 442,
            "triangle": "AHS",
            "direction": "lo",
            "value": "58503/250000",
            "raw": "20974569/89630000",
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
              435,
              36,
              422
            ]
          },
          {
            "id": 443,
            "triangle": "BFS",
            "direction": "lo",
            "value": "31451/200000",
            "raw": "14094801/89630000",
            "why": [
              "bary",
              1571,
              "neg-hi"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              438,
              423
            ]
          },
          {
            "id": 451,
            "triangle": "AHR",
            "direction": "lo",
            "value": "105003/250000",
            "raw": "105003/250000",
            "why": [
              "four",
              1759
            ],
            "refs": [
              54,
              442,
              164
            ]
          },
          {
            "id": 452,
            "triangle": "BFR",
            "direction": "lo",
            "value": "68651/200000",
            "raw": "68651/200000",
            "why": [
              "four",
              1791
            ],
            "refs": [
              96,
              443,
              158
            ]
          },
          {
            "id": 464,
            "triangle": "AEH",
            "direction": "lo",
            "value": "309609/1000000",
            "raw": "14600908474906467/47159117082250000",
            "why": [
              "support",
              1124
            ],
            "refs": [
              451,
              139
            ]
          },
          {
            "id": 467,
            "triangle": "BEF",
            "direction": "lo",
            "value": "26299/100000",
            "raw": "80645415835777771/306647164224200000",
            "why": [
              "support",
              1159
            ],
            "refs": [
              452,
              133
            ]
          },
          {
            "id": 471,
            "triangle": "AHS",
            "direction": "lo",
            "value": "46803/200000",
            "raw": "83899113/358520000",
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
              464,
              36,
              451
            ]
          },
          {
            "id": 473,
            "triangle": "BFS",
            "direction": "lo",
            "value": "157259/1000000",
            "raw": "11276157/71704000",
            "why": [
              "bary",
              1571,
              "neg-hi"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              467,
              452
            ]
          },
          {
            "id": 482,
            "triangle": "AHR",
            "direction": "lo",
            "value": "84003/200000",
            "raw": "84003/200000",
            "why": [
              "four",
              1759
            ],
            "refs": [
              54,
              471,
              164
            ]
          },
          {
            "id": 483,
            "triangle": "BFR",
            "direction": "lo",
            "value": "343259/1000000",
            "raw": "343259/1000000",
            "why": [
              "four",
              1791
            ],
            "refs": [
              96,
              473,
              158
            ]
          },
          {
            "id": 493,
            "triangle": "AEH",
            "direction": "lo",
            "value": "309611/1000000",
            "raw": "35042430633912401/113181880997400000",
            "why": [
              "support",
              1124
            ],
            "refs": [
              482,
              139
            ]
          },
          {
            "id": 496,
            "triangle": "BEF",
            "direction": "lo",
            "value": "262993/1000000",
            "raw": "403231778042173339/1533235821121000000",
            "why": [
              "support",
              1159
            ],
            "refs": [
              483,
              133
            ]
          },
          {
            "id": 499,
            "triangle": "AHS",
            "direction": "lo",
            "value": "7313/31250",
            "raw": "41949789/179260000",
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
              493,
              36,
              482
            ]
          },
          {
            "id": 500,
            "triangle": "BFS",
            "direction": "lo",
            "value": "157261/1000000",
            "raw": "14095359/89630000",
            "why": [
              "bary",
              1571,
              "neg-hi"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              496,
              483
            ]
          },
          {
            "id": 505,
            "triangle": "AHR",
            "direction": "lo",
            "value": "26251/62500",
            "raw": "26251/62500",
            "why": [
              "four",
              1759
            ],
            "refs": [
              54,
              499,
              164
            ]
          },
          {
            "id": 506,
            "triangle": "BFR",
            "direction": "lo",
            "value": "343261/1000000",
            "raw": "343261/1000000",
            "why": [
              "four",
              1791
            ],
            "refs": [
              96,
              500,
              158
            ]
          },
          {
            "id": 512,
            "triangle": "BFS",
            "direction": "lo",
            "value": "78631/500000",
            "raw": "28190811/179260000",
            "why": [
              "plu",
              487
            ],
            "refs": [
              496,
              158,
              506,
              134,
              133
            ]
          },
          {
            "id": 525,
            "triangle": "BFR",
            "direction": "lo",
            "value": "171631/500000",
            "raw": "171631/500000",
            "why": [
              "four",
              1791
            ],
            "refs": [
              96,
              512,
              158
            ]
          },
          {
            "id": 533,
            "triangle": "BEF",
            "direction": "lo",
            "value": "65749/250000",
            "raw": "201617651094818351/766617910560500000",
            "why": [
              "support",
              1159
            ],
            "refs": [
              525,
              133
            ]
          },
          {
            "id": 535,
            "triangle": "BFS",
            "direction": "lo",
            "value": "157263/1000000",
            "raw": "28190997/179260000",
            "why": [
              "bary",
              1571,
              "neg-hi"
            ],
            "refs": [
              133,
              158,
              146,
              134,
              533,
              525
            ]
          },
          {
            "id": 537,
            "triangle": "BFR",
            "direction": "lo",
            "value": "343263/1000000",
            "raw": "343263/1000000",
            "why": [
              "four",
              1791
            ],
            "refs": [
              96,
              535,
              158
            ]
          }
        ],
        "areaVertexDifferences": {
          "105": {
            "indices": [
              2,
              3,
              8,
              9
            ],
            "differences": [
              "19122062963/250000000000",
              "193348146427/1000000000000",
              "134489586617/1000000000000",
              "203983553567/1000000000000",
              "77323100819/500000000000",
              "271506096213/1000000000000",
              "230933104773/1000000000000",
              "300427071723/1000000000000",
              "0",
              "6558758331/40000000000",
              "11600266953/200000000000",
              "34920873083/200000000000",
              "39078974893/500000000000",
              "242126908061/1000000000000",
              "154444852921/1000000000000",
              "271047883571/1000000000000"
            ]
          },
          "139": {
            "indices": [
              3,
              5,
              8,
              9
            ],
            "differences": [
              "514999629/3125000000",
              "5503218183/20000000000",
              "45543869567/250000000000",
              "146268253069/500000000000",
              "32141/250000",
              "3215132453/12500000000",
              "4035387693/31250000000",
              "16111187651/62500000000",
              "113237129/3125000000",
              "2931938183/20000000000",
              "13402869567/250000000000",
              "81986253069/500000000000",
              "0",
              "1608082453/12500000000",
              "17762693/31250000000",
              "8075937651/62500000000"
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
            "71207/500000",
            "118459/1000000",
            "405057/1000000",
            "552517/1000000",
            "118459/1000000",
            "808677/1000000",
            "199139/250000",
            "71207/500000",
            "426879/500000",
            "217859/250000",
            "272191/500000",
            "390353/500000"
          ],
          "high": [
            "20281/62500",
            "15423/100000",
            "385741/500000",
            "340891/500000",
            "371729/1000000",
            "927491/1000000",
            "955623/1000000",
            "474611/1000000",
            "62201/62500",
            "1/1",
            "758297/1000000",
            "222323/250000"
          ]
        },
        "initialBox": {
          "low": [
            "71207/500000",
            "118459/1000000",
            "405057/1000000",
            "552517/1000000",
            "118459/1000000",
            "808677/1000000",
            "199139/250000",
            "71207/500000",
            "426879/500000",
            "217859/250000",
            "272191/500000",
            "390353/500000"
          ],
          "high": [
            "20281/62500",
            "15423/100000",
            "385741/500000",
            "340891/500000",
            "371729/1000000",
            "927491/1000000",
            "955623/1000000",
            "474611/1000000",
            "62201/62500",
            "1/1",
            "758297/1000000",
            "222323/250000"
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
            "value": "26251/62500",
            "source": [
              "earlier-area",
              {
                "triangle": "AHR",
                "direction": "lo",
                "value": "26251/62500",
                "origin": {
                  "packet": "rpppppm",
                  "stage": 0,
                  "id": 505
                }
              }
            ]
          },
          {
            "id": 82,
            "triangle": "BFR",
            "direction": "lo",
            "value": "343263/1000000",
            "source": [
              "earlier-area",
              {
                "triangle": "BFR",
                "direction": "lo",
                "value": "343263/1000000",
                "origin": {
                  "packet": "rpppppm",
                  "stage": 0,
                  "id": 537
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
                  "packet": "rpppppm",
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
            "value": "218877/1000000",
            "source": [
              "earlier-area",
              {
                "triangle": "CEH",
                "direction": "lo",
                "value": "218877/1000000",
                "origin": {
                  "packet": "rpppppm",
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
                  "packet": "rpppppm",
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
            "value": "97059/250000",
            "source": [
              "earlier-area",
              {
                "triangle": "CHR",
                "direction": "lo",
                "value": "97059/250000",
                "origin": {
                  "packet": "rpppppm",
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
                  "packet": "rpppppm",
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
                  "packet": "rpppppm",
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
                  "packet": "rpppppm",
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
                  "packet": "rpppppm",
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
            "value": "89747/250000",
            "source": [
              "earlier-area",
              {
                "triangle": "HQR",
                "direction": "lo",
                "value": "89747/250000",
                "origin": {
                  "packet": "rpppppm",
                  "stage": 0,
                  "id": 331
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
