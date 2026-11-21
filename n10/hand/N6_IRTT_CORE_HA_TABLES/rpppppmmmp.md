# Nine-core HA: rpppppmmmp

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
  "id": "rpppppmmmp",
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
            "1243/6250",
            "32019/250000",
            "429521/1000000",
            "552517/1000000",
            "32019/250000",
            "808677/1000000",
            "199139/250000",
            "1243/6250",
            "180637/200000",
            "437673/500000",
            "80879/125000",
            "396743/500000"
          ],
          "high": [
            "80503/250000",
            "15423/100000",
            "595693/1000000",
            "677969/1000000",
            "74193/200000",
            "925007/1000000",
            "434341/500000",
            "308513/1000000",
            "248613/250000",
            "1/1",
            "738299/1000000",
            "177433/200000"
          ]
        },
        "initialBox": {
          "low": [
            "1243/6250",
            "32019/250000",
            "429521/1000000",
            "552517/1000000",
            "32019/250000",
            "808677/1000000",
            "199139/250000",
            "1243/6250",
            "426879/500000",
            "437673/500000",
            "80879/125000",
            "396743/500000"
          ],
          "high": [
            "80503/250000",
            "15423/100000",
            "595693/1000000",
            "677969/1000000",
            "74193/200000",
            "925007/1000000",
            "464387/500000",
            "308513/1000000",
            "248613/250000",
            "1/1",
            "738299/1000000",
            "177433/200000"
          ]
        },
        "refinement": {
          "factors": {
            "81": {
              "name": "A_EQR",
              "why": [
                "actual-area",
                "EQR",
                []
              ],
              "terms": [
                [
                  [
                    6,
                    9
                  ],
                  "-1/1"
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
                    9
                  ],
                  "1/1"
                ],
                [
                  [
                    7,
                    8
                  ],
                  "1/1"
                ],
                [
                  [
                    7
                  ],
                  "-1/1"
                ],
                [
                  [
                    3,
                    8
                  ],
                  "-1/1"
                ],
                [
                  [],
                  "-93/1000"
                ]
              ]
            },
            "107": {
              "name": "RS_GAP_HA",
              "why": [
                "core-rs-cut-gap",
                "HA"
              ],
              "terms": [
                [
                  [
                    5,
                    8
                  ],
                  "1/1"
                ],
                [
                  [
                    5,
                    10
                  ],
                  "-1/1"
                ],
                [
                  [
                    0,
                    8
                  ],
                  "-1/1"
                ],
                [
                  [
                    0,
                    10
                  ],
                  "1/1"
                ],
                [
                  [],
                  "-93/500"
                ]
              ]
            }
          },
          "steps": [
            {
              "factor": 107,
              "target": "r",
              "old": [
                "426879/500000",
                "248613/250000"
              ],
              "lines": [
                [
                  "609797/1000000",
                  "-72569771563/125000000000"
                ],
                [
                  "97333/200000",
                  "-12522195707/25000000000"
                ],
                [
                  "726127/1000000",
                  "-81978425633/125000000000"
                ],
                [
                  "120599/200000",
                  "-14403926521/25000000000"
                ],
                [
                  "609797/1000000",
                  "-636212515303/1000000000000"
                ],
                [
                  "97333/200000",
                  "-109060856567/200000000000"
                ],
                [
                  "726127/1000000",
                  "-722098837973/1000000000000"
                ],
                [
                  "120599/200000",
                  "-126238121101/200000000000"
                ]
              ],
              "raw": [
                "81978425633/90765875000",
                "248613/250000"
              ],
              "new": [
                "180637/200000",
                "248613/250000"
              ]
            },
            {
              "factor": 81,
              "target": "u",
              "old": [
                "199139/250000",
                "464387/500000"
              ],
              "lines": [
                [
                  "-322829/1000000",
                  "52813273231/200000000000"
                ],
                [
                  "-197377/1000000",
                  "30152000307/200000000000"
                ],
                [
                  "-322829/1000000",
                  "12672612363/50000000000"
                ],
                [
                  "-197377/1000000",
                  "1751823533/12500000000"
                ],
                [
                  "-322829/1000000",
                  "57947744519/250000000000"
                ],
                [
                  "-197377/1000000",
                  "26758746443/250000000000"
                ],
                [
                  "-322829/1000000",
                  "14448920887/62500000000"
                ],
                [
                  "-197377/1000000",
                  "831458921/7812500000"
                ],
                [
                  "-447483/1000000",
                  "77744073231/200000000000"
                ],
                [
                  "-322031/1000000",
                  "55082800307/200000000000"
                ],
                [
                  "-447483/1000000",
                  "18905312363/50000000000"
                ],
                [
                  "-322031/1000000",
                  "3309998533/12500000000"
                ],
                [
                  "-447483/1000000",
                  "89111244519/250000000000"
                ],
                [
                  "-322031/1000000",
                  "57922246443/250000000000"
                ],
                [
                  "-447483/1000000",
                  "22239795887/62500000000"
                ],
                [
                  "-322031/1000000",
                  "225664787/976562500"
                ]
              ],
              "raw": [
                "199139/250000",
                "25914691077/29832200000"
              ],
              "new": [
                "199139/250000",
                "434341/500000"
              ]
            }
          ]
        },
        "initial": [
          {
            "id": 26,
            "triangle": "AEF",
            "direction": "lo",
            "value": "250181/1000000",
            "source": [
              "earlier-area",
              {
                "triangle": "AEF",
                "direction": "lo",
                "value": "250181/1000000",
                "origin": {
                  "packet": "rpppppmmm",
                  "stage": 1,
                  "id": 26
                }
              }
            ]
          },
          {
            "id": 30,
            "triangle": "AEQ",
            "direction": "lo",
            "value": "93/1000",
            "source": [
              "occupants",
              []
            ]
          },
          {
            "id": 32,
            "triangle": "AER",
            "direction": "lo",
            "value": "1047/10000",
            "source": [
              "earlier-area",
              {
                "triangle": "AER",
                "direction": "lo",
                "value": "1047/10000",
                "origin": {
                  "packet": "rpppppmmm",
                  "stage": 1,
                  "id": 32
                }
              }
            ]
          },
          {
            "id": 44,
            "triangle": "AHQ",
            "direction": "lo",
            "value": "178723/1000000",
            "source": [
              "earlier-area",
              {
                "triangle": "AHQ",
                "direction": "lo",
                "value": "178723/1000000",
                "origin": {
                  "packet": "rpppppmmm",
                  "stage": 1,
                  "id": 44
                }
              }
            ]
          },
          {
            "id": 47,
            "triangle": "AHR",
            "direction": "hi",
            "value": "180524611851/250000000000",
            "source": [
              "vertices",
              "180524611851/250000000000"
            ]
          },
          {
            "id": 48,
            "triangle": "AHS",
            "direction": "lo",
            "value": "234039/1000000",
            "source": [
              "earlier-area",
              {
                "triangle": "AHS",
                "direction": "lo",
                "value": "234039/1000000",
                "origin": {
                  "packet": "rpppppmmm",
                  "stage": 1,
                  "id": 48
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
            "id": 68,
            "triangle": "BEF",
            "direction": "lo",
            "value": "263631/1000000",
            "source": [
              "earlier-area",
              {
                "triangle": "BEF",
                "direction": "lo",
                "value": "263631/1000000",
                "origin": {
                  "packet": "rpppppmmm",
                  "stage": 1,
                  "id": 68
                }
              }
            ]
          },
          {
            "id": 70,
            "triangle": "BEH",
            "direction": "lo",
            "value": "145343/500000",
            "source": [
              "earlier-area",
              {
                "triangle": "BEH",
                "direction": "lo",
                "value": "145343/500000",
                "origin": {
                  "packet": "rpppppmmm",
                  "stage": 1,
                  "id": 70
                }
              }
            ]
          },
          {
            "id": 74,
            "triangle": "BER",
            "direction": "lo",
            "value": "26107/250000",
            "source": [
              "earlier-area",
              {
                "triangle": "BER",
                "direction": "lo",
                "value": "26107/250000",
                "origin": {
                  "packet": "rpppppmmm",
                  "stage": 1,
                  "id": 74
                }
              }
            ]
          },
          {
            "id": 86,
            "triangle": "BHQ",
            "direction": "lo",
            "value": "20241/125000",
            "source": [
              "earlier-area",
              {
                "triangle": "BHQ",
                "direction": "lo",
                "value": "20241/125000",
                "origin": {
                  "packet": "rpppppmmm",
                  "stage": 1,
                  "id": 86
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
                  "packet": "rpppppmmm",
                  "stage": 1,
                  "id": 98
                }
              }
            ]
          },
          {
            "id": 100,
            "triangle": "CEH",
            "direction": "lo",
            "value": "21897/100000",
            "source": [
              "earlier-area",
              {
                "triangle": "CEH",
                "direction": "lo",
                "value": "21897/100000",
                "origin": {
                  "packet": "rpppppmmm",
                  "stage": 1,
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
            "value": "2412278029/7812500000",
            "source": [
              "vertices",
              "2412278029/7812500000"
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
                  "packet": "rpppppmmm",
                  "stage": 1,
                  "id": 112
                }
              }
            ]
          },
          {
            "id": 118,
            "triangle": "CHR",
            "direction": "lo",
            "value": "388269/1000000",
            "source": [
              "earlier-area",
              {
                "triangle": "CHR",
                "direction": "lo",
                "value": "388269/1000000",
                "origin": {
                  "packet": "rpppppmmm",
                  "stage": 1,
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
                  "packet": "rpppppmmm",
                  "stage": 1,
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
            "id": 137,
            "triangle": "EHQ",
            "direction": "hi",
            "value": "66168424859/125000000000",
            "source": [
              "vertices",
              "66168424859/125000000000"
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
                  "packet": "rpppppmmm",
                  "stage": 1,
                  "id": 138
                }
              }
            ]
          },
          {
            "id": 139,
            "triangle": "EHR",
            "direction": "hi",
            "value": "1393943201/3125000000",
            "source": [
              "vertices",
              "1393943201/3125000000"
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
                  "packet": "rpppppmmm",
                  "stage": 1,
                  "id": 140
                }
              }
            ]
          },
          {
            "id": 141,
            "triangle": "EHS",
            "direction": "hi",
            "value": "130031/500000",
            "source": [
              "earlier-area",
              {
                "triangle": "EHS",
                "direction": "hi",
                "value": "130031/500000",
                "origin": {
                  "packet": "rpppppmmm",
                  "stage": 1,
                  "id": 141
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
                  "packet": "rpppppmmm",
                  "stage": 1,
                  "id": 159
                }
              }
            ]
          },
          {
            "id": 160,
            "triangle": "HQR",
            "direction": "lo",
            "value": "180271/500000",
            "source": [
              "earlier-area",
              {
                "triangle": "HQR",
                "direction": "lo",
                "value": "180271/500000",
                "origin": {
                  "packet": "rpppppmmm",
                  "stage": 1,
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
          "318": {
            "kind": "plu",
            "witness": "QAEHR",
            "iso": [
              "AQR",
              "EHQ"
            ],
            "rhs": [
              [
                "AEQ",
                "HQR"
              ],
              [
                "AHQ",
                "EQR"
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
          "1404": {
            "kind": "bary",
            "outer": "AHR",
            "fans": [
              "HRS",
              "ARS",
              "AHS"
            ],
            "target": "EQS",
            "targetSign": -1,
            "vertices": [
              {
                "name": "AEQ",
                "sign": -1
              },
              {
                "name": "EHQ",
                "sign": -1
              },
              {
                "name": "EQR",
                "sign": -1
              }
            ],
            "witness": {
              "container": "AHR",
              "inner": "S",
              "line": "EQ"
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
          "1602": {
            "kind": "bary",
            "outer": "EHR",
            "fans": [
              "HRS",
              "ERS",
              "EHS"
            ],
            "target": "AQS",
            "targetSign": 1,
            "vertices": [
              {
                "name": "AEQ",
                "sign": 1
              },
              {
                "name": "AHQ",
                "sign": 1
              },
              {
                "name": "AQR",
                "sign": 1
              }
            ],
            "witness": {
              "container": "EHR",
              "inner": "S",
              "line": "AQ"
            }
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
        "rounds": 9,
        "updates": [
          {
            "id": 169,
            "triangle": "EHQ",
            "direction": "lo",
            "value": "152173/1000000",
            "raw": "1468342125/9649112116",
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
            "id": 174,
            "triangle": "EQS",
            "direction": "lo",
            "value": "5031/50000",
            "raw": "6054853717381/60174870617000",
            "why": [
              "bary",
              1404,
              "neg-hi"
            ],
            "refs": [
              47,
              164,
              54,
              48,
              30,
              169,
              142
            ]
          },
          {
            "id": 177,
            "triangle": "HQS",
            "direction": "lo",
            "value": "177749/1000000",
            "raw": "12745371/71704000",
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
              169,
              148,
              160
            ]
          },
          {
            "id": 178,
            "triangle": "HQR",
            "direction": "lo",
            "value": "363749/1000000",
            "raw": "363749/1000000",
            "why": [
              "four",
              1830
            ],
            "refs": [
              164,
              177,
              166
            ]
          },
          {
            "id": 182,
            "triangle": "HQS",
            "direction": "lo",
            "value": "178581/1000000",
            "raw": "32012553/179260000",
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
              169,
              148,
              178
            ]
          },
          {
            "id": 184,
            "triangle": "HQR",
            "direction": "lo",
            "value": "364581/1000000",
            "raw": "364581/1000000",
            "why": [
              "four",
              1830
            ],
            "refs": [
              164,
              182,
              166
            ]
          },
          {
            "id": 186,
            "triangle": "HQS",
            "direction": "lo",
            "value": "178797/1000000",
            "raw": "32051241/179260000",
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
              169,
              148,
              184
            ]
          },
          {
            "id": 188,
            "triangle": "HQR",
            "direction": "lo",
            "value": "364797/1000000",
            "raw": "364797/1000000",
            "why": [
              "four",
              1830
            ],
            "refs": [
              164,
              186,
              166
            ]
          },
          {
            "id": 190,
            "triangle": "HQS",
            "direction": "lo",
            "value": "178853/1000000",
            "raw": "6412257/35852000",
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
              169,
              148,
              188
            ]
          },
          {
            "id": 192,
            "triangle": "HQR",
            "direction": "lo",
            "value": "364853/1000000",
            "raw": "364853/1000000",
            "why": [
              "four",
              1830
            ],
            "refs": [
              164,
              190,
              166
            ]
          },
          {
            "id": 194,
            "triangle": "HQS",
            "direction": "lo",
            "value": "44717/250000",
            "raw": "32063889/179260000",
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
              169,
              148,
              192
            ]
          },
          {
            "id": 196,
            "triangle": "HQR",
            "direction": "lo",
            "value": "91217/250000",
            "raw": "91217/250000",
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
            "id": 198,
            "triangle": "HQS",
            "direction": "lo",
            "value": "178871/1000000",
            "raw": "64129173/358520000",
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
              169,
              148,
              196
            ]
          },
          {
            "id": 199,
            "triangle": "HQR",
            "direction": "lo",
            "value": "364871/1000000",
            "raw": "364871/1000000",
            "why": [
              "four",
              1830
            ],
            "refs": [
              164,
              198,
              166
            ]
          },
          {
            "id": 200,
            "triangle": "HQS",
            "direction": "lo",
            "value": "22359/125000",
            "raw": "16032363/89630000",
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
              169,
              148,
              199
            ]
          },
          {
            "id": 201,
            "triangle": "HQR",
            "direction": "lo",
            "value": "45609/125000",
            "raw": "45609/125000",
            "why": [
              "four",
              1830
            ],
            "refs": [
              164,
              200,
              166
            ]
          },
          {
            "id": 202,
            "triangle": "AQR",
            "direction": "lo",
            "value": "95503/1000000",
            "raw": "6319291875/66168424859",
            "why": [
              "plu",
              318
            ],
            "refs": [
              30,
              201,
              44,
              142,
              137
            ]
          },
          {
            "id": 203,
            "triangle": "AQS",
            "direction": "lo",
            "value": "22287/200000",
            "raw": "621336930747/5575772804000",
            "why": [
              "bary",
              1602,
              "lo"
            ],
            "refs": [
              139,
              164,
              146,
              140,
              30,
              44,
              202
            ]
          }
        ],
        "areaVertexDifferences": {
          "47": {
            "indices": [
              0,
              5,
              8
            ],
            "differences": [
              "171338943959/1000000000000",
              "282549919379/1000000000000",
              "66271432909/1000000000000",
              "177482408329/1000000000000",
              "2892115029/25000000000",
              "29766683103/125000000000",
              "0",
              "7653053979/62500000000"
            ]
          },
          "105": {
            "indices": [
              2,
              3,
              8,
              9
            ],
            "differences": [
              "35556244633/500000000000",
              "62378814927/500000000000",
              "65267292697/500000000000",
              "81666558119/500000000000",
              "24307811661/200000000000",
              "175184198893/1000000000000",
              "192410782117/1000000000000",
              "225209312961/1000000000000",
              "0",
              "18589786269/250000000000",
              "232117563/3906250000",
              "5646731573/50000000000",
              "50426569039/1000000000000",
              "24957142823/200000000000",
              "121298292851/1000000000000",
              "174810828183/1000000000000"
            ]
          },
          "137": {
            "indices": [
              3,
              5,
              6,
              7
            ],
            "differences": [
              "15449522979/125000000000",
              "591666013/25000000000",
              "6245596457/62500000000",
              "0",
              "17758997499/125000000000",
              "1034190179/31250000000",
              "31698939263/250000000000",
              "4454465697/250000000000",
              "29153647979/125000000000",
              "3332491013/25000000000",
              "13097658957/62500000000",
              "109633/1000000",
              "31463122499/125000000000",
              "4460221429/31250000000",
              "59107189263/250000000000",
              "31862715697/250000000000"
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
              "925205967/6250000000",
              "13066965967/50000000000",
              "15929544367/100000000000",
              "27260180829/100000000000",
              "62327/500000",
              "15588124519/62500000000",
              "3132484971/25000000000",
              "31256923893/125000000000",
              "146118467/6250000000",
              "6834265967/50000000000",
              "3464144367/100000000000",
              "14794780829/100000000000",
              "0",
              "7797249519/62500000000",
              "16134971/25000000000",
              "15675173893/125000000000"
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
            "1243/6250",
            "32019/250000",
            "429521/1000000",
            "552517/1000000",
            "32019/250000",
            "808677/1000000",
            "199139/250000",
            "1243/6250",
            "180637/200000",
            "437673/500000",
            "80879/125000",
            "396743/500000"
          ],
          "high": [
            "80503/250000",
            "15423/100000",
            "595693/1000000",
            "677969/1000000",
            "74193/200000",
            "925007/1000000",
            "434341/500000",
            "308513/1000000",
            "248613/250000",
            "1/1",
            "738299/1000000",
            "177433/200000"
          ]
        },
        "initialBox": {
          "low": [
            "1243/6250",
            "32019/250000",
            "429521/1000000",
            "552517/1000000",
            "32019/250000",
            "808677/1000000",
            "199139/250000",
            "1243/6250",
            "180637/200000",
            "437673/500000",
            "80879/125000",
            "396743/500000"
          ],
          "high": [
            "80503/250000",
            "15423/100000",
            "595693/1000000",
            "677969/1000000",
            "74193/200000",
            "925007/1000000",
            "434341/500000",
            "308513/1000000",
            "248613/250000",
            "1/1",
            "738299/1000000",
            "177433/200000"
          ]
        },
        "refinement": {
          "factors": {
            "4": {
              "name": "AC_ABE_ABE_0",
              "why": [
                "anchor-cap",
                "ABE",
                "ABE",
                0,
                []
              ],
              "terms": [
                [
                  [],
                  "-93/1000"
                ],
                [
                  [
                    3
                  ],
                  "1/1"
                ]
              ]
            },
            "8": {
              "name": "AC_ABH_ABH_0",
              "why": [
                "anchor-cap",
                "ABH",
                "ABH",
                0,
                []
              ],
              "terms": [
                [
                  [],
                  "-93/1000"
                ],
                [
                  [
                    1
                  ],
                  "1/1"
                ]
              ]
            },
            "15": {
              "name": "AC_ACF_ACF_0",
              "why": [
                "anchor-cap",
                "ACF",
                "ACF",
                0,
                []
              ],
              "terms": [
                [
                  [],
                  "-93/1000"
                ],
                [
                  [
                    2
                  ],
                  "1/1"
                ]
              ]
            },
            "21": {
              "name": "AC_AEF_AEF_0",
              "why": [
                "anchor-cap",
                "AEF",
                "AEF",
                0,
                []
              ],
              "terms": [
                [
                  [],
                  "907/1000"
                ],
                [
                  [
                    0
                  ],
                  "-1/1"
                ]
              ]
            },
            "37": {
              "name": "AC_BCH_BCH_0",
              "why": [
                "anchor-cap",
                "BCH",
                "BCH",
                0,
                []
              ],
              "terms": [
                [
                  [],
                  "-93/1000"
                ],
                [
                  [
                    5
                  ],
                  "1/1"
                ]
              ]
            },
            "58": {
              "name": "AC_CEF_CEF_0",
              "why": [
                "anchor-cap",
                "CEF",
                "CEF",
                0,
                []
              ],
              "terms": [
                [
                  [],
                  "907/1000"
                ],
                [
                  [
                    4
                  ],
                  "-1/1"
                ]
              ]
            },
            "74": {
              "name": "AC_EFH_EFH_0",
              "why": [
                "anchor-cap",
                "EFH",
                "EFH",
                0,
                []
              ],
              "terms": [
                [
                  [],
                  "907/1000"
                ],
                [
                  [
                    3
                  ],
                  "-1/1"
                ]
              ]
            },
            "99": {
              "name": "OCT_CAP_RFH",
              "why": [
                "octagon-ear-cap",
                "ABCQERFH",
                "RFH",
                [
                  "ERF",
                  "S"
                ]
              ],
              "terms": [
                [
                  [],
                  "248858189/1000000000"
                ],
                [
                  [
                    4,
                    5
                  ],
                  "-1/1"
                ],
                [
                  [
                    4,
                    9
                  ],
                  "1/1"
                ],
                [
                  [
                    5,
                    8
                  ],
                  "1/1"
                ],
                [
                  [
                    8
                  ],
                  "-1/1"
                ]
              ]
            },
            "102": {
              "name": "OCT_ROOT_BUDGET",
              "why": [
                "octagon-ear-root-budget",
                "ABCQERFH",
                [
                  {
                    "ear": "HAB",
                    "occupants": [],
                    "floor": "93/1000",
                    "ceiling": "11199056721/100000000000",
                    "beta": "90613/200000",
                    "gamma": "241007/500000",
                    "sixChain": null,
                    "sixCap": null
                  },
                  {
                    "ear": "ABC",
                    "occupants": [],
                    "floor": "93/1000",
                    "ceiling": "37644571351/250000000000",
                    "beta": "90613/200000",
                    "gamma": "532011/1000000",
                    "sixChain": null,
                    "sixCap": null
                  },
                  {
                    "ear": "BCQ",
                    "occupants": [],
                    "floor": "93/1000",
                    "ceiling": "8963/62500",
                    "beta": "90613/200000",
                    "gamma": "523429/1000000",
                    "sixChain": "BCQERF",
                    "sixCap": "8963/62500"
                  },
                  {
                    "ear": "CQE",
                    "occupants": [],
                    "floor": "93/1000",
                    "ceiling": "80667/500000",
                    "beta": "90613/200000",
                    "gamma": "136097/250000",
                    "sixChain": "BCQERF",
                    "sixCap": "80667/500000"
                  },
                  {
                    "ear": "QER",
                    "occupants": [],
                    "floor": "93/1000",
                    "ceiling": "125275097607/1000000000000",
                    "beta": "90613/200000",
                    "gamma": "250183/500000",
                    "sixChain": "BCQERF",
                    "sixCap": "295779/2000000"
                  },
                  {
                    "ear": "ERF",
                    "occupants": [
                      "S"
                    ],
                    "floor": "279/1000",
                    "ceiling": "8963/25000",
                    "beta": "653433/1000000",
                    "gamma": "355201/500000",
                    "sixChain": "BCQERF",
                    "sixCap": "8963/25000"
                  },
                  {
                    "ear": "RFH",
                    "occupants": [],
                    "floor": "93/1000",
                    "ceiling": "2839419393/15625000000",
                    "beta": "90613/200000",
                    "gamma": "566417/1000000",
                    "sixChain": null,
                    "sixCap": null
                  },
                  {
                    "ear": "FHA",
                    "occupants": [],
                    "floor": "93/1000",
                    "ceiling": "248858189/1000000000",
                    "beta": "90613/200000",
                    "gamma": "629/1000",
                    "sixChain": null,
                    "sixCap": null
                  }
                ],
                [
                  "ERF",
                  "S"
                ]
              ],
              "terms": [
                [
                  [],
                  "284171051834397979409429761823285485212056351777144997658369439/143892771750947010603251127072808993020754860674909640772000000"
                ],
                [
                  [
                    0,
                    1
                  ],
                  "79151577578026400000/27336107470030600071"
                ],
                [
                  [
                    1,
                    5
                  ],
                  "-2894900000/1899056721"
                ],
                [
                  [
                    0,
                    2
                  ],
                  "-19736500000/14394571351"
                ],
                [
                  [
                    2,
                    7
                  ],
                  "-196076320/71762089"
                ],
                [
                  [
                    1,
                    7
                  ],
                  "17591/12602"
                ],
                [
                  [
                    3,
                    6
                  ],
                  "-686636141418229/245054057764082"
                ],
                [
                  [
                    2,
                    3
                  ],
                  "30441/22778"
                ],
                [
                  [
                    7
                  ],
                  "686636141418229/245054057764082"
                ],
                [
                  [
                    9
                  ],
                  "-1866685185191061/855505253902880"
                ],
                [
                  [
                    6,
                    9
                  ],
                  "15767000000/10758365869"
                ],
                [
                  [
                    3,
                    8
                  ],
                  "1866685185191061/855505253902880"
                ],
                [
                  [
                    7,
                    8
                  ],
                  "-15767000000/10758365869"
                ],
                [
                  [
                    8
                  ],
                  "-73271888424939/36746043377120"
                ],
                [
                  [
                    4,
                    9
                  ],
                  "73271888424939/36746043377120"
                ],
                [
                  [
                    3,
                    4
                  ],
                  "-56969/79520"
                ],
                [
                  [
                    4,
                    5
                  ],
                  "-173314013008360000/72021777837944759"
                ],
                [
                  [
                    5,
                    8
                  ],
                  "590375000/462098131"
                ],
                [
                  [
                    0,
                    4
                  ],
                  "175935000/155858189"
                ]
              ]
            },
            "107": {
              "name": "RS_GAP_HA",
              "why": [
                "core-rs-cut-gap",
                "HA"
              ],
              "terms": [
                [
                  [
                    5,
                    8
                  ],
                  "1/1"
                ],
                [
                  [
                    5,
                    10
                  ],
                  "-1/1"
                ],
                [
                  [
                    0,
                    8
                  ],
                  "-1/1"
                ],
                [
                  [
                    0,
                    10
                  ],
                  "1/1"
                ],
                [
                  [],
                  "-93/500"
                ]
              ]
            },
            "108": {
              "name": "RS_BARY_GAP_HA",
              "why": [
                "core-rs-bary-gap",
                "HA",
                "2325/8963",
                "ERF",
                "S",
                "8963/25000"
              ],
              "terms": [
                [
                  [
                    5,
                    8
                  ],
                  "6638/8963"
                ],
                [
                  [
                    4,
                    5
                  ],
                  "-4313/8963"
                ],
                [
                  [
                    5
                  ],
                  "-2325/8963"
                ],
                [
                  [
                    0,
                    8
                  ],
                  "-6638/8963"
                ],
                [
                  [
                    0,
                    4
                  ],
                  "4313/8963"
                ],
                [
                  [
                    0
                  ],
                  "2325/8963"
                ],
                [
                  [],
                  "-93/500"
                ]
              ]
            },
            "109": {
              "name": "ha",
              "why": [
                "contact-order",
                "ha"
              ],
              "terms": [
                [
                  [
                    5
                  ],
                  "1/1"
                ],
                [
                  [
                    0
                  ],
                  "-1/1"
                ]
              ]
            },
            "110": {
              "name": "ea",
              "why": [
                "contact-order",
                "ea"
              ],
              "terms": [
                [
                  [
                    3
                  ],
                  "1/1"
                ],
                [
                  [
                    0
                  ],
                  "-1/1"
                ]
              ]
            },
            "111": {
              "name": "he",
              "why": [
                "contact-order",
                "he"
              ],
              "terms": [
                [
                  [
                    5
                  ],
                  "1/1"
                ],
                [
                  [
                    3
                  ],
                  "-1/1"
                ]
              ]
            },
            "112": {
              "name": "fb",
              "why": [
                "contact-order",
                "fb"
              ],
              "terms": [
                [
                  [
                    4
                  ],
                  "1/1"
                ],
                [
                  [
                    1
                  ],
                  "-1/1"
                ]
              ]
            },
            "115": {
              "name": "top-area",
              "why": [
                "top-hull",
                "-"
              ],
              "terms": [
                [
                  [],
                  "721/1000"
                ],
                [
                  [
                    4
                  ],
                  "-1/1"
                ],
                [
                  [
                    3
                  ],
                  "-1/1"
                ],
                [
                  [
                    3,
                    4
                  ],
                  "1/1"
                ]
              ]
            },
            "118": {
              "name": "right-y",
              "why": [
                "right-clearance",
                "Q",
                "y"
              ],
              "terms": [
                [
                  [
                    3
                  ],
                  "1/1"
                ],
                [
                  [
                    7
                  ],
                  "-1/1"
                ],
                [
                  [],
                  "-93/1000"
                ]
              ]
            },
            "121": {
              "name": "WBARY_RS_0",
              "why": [
                "weighted-barycentric-core-width",
                "R",
                "S",
                [
                  "1/1",
                  "1/1",
                  "1/1"
                ],
                "8963/2325",
                0,
                [
                  "BCQERF",
                  "ERF",
                  "S",
                  "8963/25000"
                ]
              ],
              "terms": [
                [
                  [
                    10
                  ],
                  "8963/2325"
                ],
                [
                  [],
                  "-1/1"
                ],
                [
                  [
                    4
                  ],
                  "-4313/2325"
                ],
                [
                  [
                    8
                  ],
                  "-1/1"
                ]
              ]
            },
            "123": {
              "name": "WBARY_RS_2",
              "why": [
                "weighted-barycentric-core-width",
                "R",
                "S",
                [
                  "1/1",
                  "1/1",
                  "1/1"
                ],
                "8963/2325",
                2,
                [
                  "BCQERF",
                  "ERF",
                  "S",
                  "8963/25000"
                ]
              ],
              "terms": [
                [
                  [
                    11
                  ],
                  "8963/2325"
                ],
                [
                  [],
                  "-1/1"
                ],
                [
                  [
                    3
                  ],
                  "-4313/2325"
                ],
                [
                  [
                    9
                  ],
                  "-1/1"
                ]
              ]
            },
            "124": {
              "name": "WBARY_RS_3",
              "why": [
                "weighted-barycentric-core-width",
                "R",
                "S",
                [
                  "1/1",
                  "1/1",
                  "1/1"
                ],
                "8963/2325",
                3,
                [
                  "BCQERF",
                  "ERF",
                  "S",
                  "8963/25000"
                ]
              ],
              "terms": [
                [
                  [],
                  "4313/2325"
                ],
                [
                  [
                    3
                  ],
                  "1/1"
                ],
                [
                  [
                    9
                  ],
                  "1/1"
                ],
                [
                  [
                    11
                  ],
                  "-8963/2325"
                ]
              ]
            },
            "235": {
              "name": "SUP_ABE_AEQ_ABQ",
              "why": [
                "support-envelope",
                [
                  "pentagon-ear-box",
                  "ABCQE",
                  [
                    {
                      "ear": "ABC",
                      "occupants": [],
                      "lower": "93/1000",
                      "root": "304959/1000000",
                      "side": null
                    },
                    {
                      "ear": "BCQ",
                      "occupants": [],
                      "lower": "93/1000",
                      "root": "304959/1000000",
                      "side": null
                    },
                    {
                      "ear": "CQE",
                      "occupants": [],
                      "lower": "93/1000",
                      "root": "304959/1000000",
                      "side": null
                    }
                  ],
                  "1023/1000"
                ],
                "ABE",
                "AEQ",
                "ABQ",
                "37691124811/100000000000"
              ],
              "terms": [
                [
                  [
                    7
                  ],
                  "-37691124811/100000000000"
                ],
                [
                  [
                    0
                  ],
                  "-64608875189/100000000000"
                ],
                [
                  [
                    3,
                    6
                  ],
                  "37691124811/100000000000"
                ],
                [
                  [
                    0,
                    6
                  ],
                  "64608875189/100000000000"
                ],
                [
                  [
                    1,
                    3
                  ],
                  "-1023/1000"
                ],
                [
                  [
                    1,
                    7
                  ],
                  "1023/1000"
                ]
              ]
            },
            "251": {
              "name": "SUP_CFH_BCF_BFH",
              "why": [
                "support-envelope",
                [
                  "pentagon-ear-box",
                  "FHABC",
                  [
                    {
                      "ear": "FHA",
                      "occupants": [],
                      "lower": "93/1000",
                      "root": "304959/1000000",
                      "side": null
                    },
                    {
                      "ear": "HAB",
                      "occupants": [],
                      "lower": "93/1000",
                      "root": "304959/1000000",
                      "side": null
                    },
                    {
                      "ear": "ABC",
                      "occupants": [],
                      "lower": "93/1000",
                      "root": "304959/1000000",
                      "side": null
                    }
                  ],
                  "1023/1000"
                ],
                "CFH",
                "BCF",
                "BFH",
                "51745079393/125000000000"
              ],
              "terms": [
                [
                  [
                    2
                  ],
                  "-76129920607/125000000000"
                ],
                [
                  [
                    1
                  ],
                  "76129920607/125000000000"
                ],
                [
                  [
                    2,
                    5
                  ],
                  "1023/1000"
                ],
                [
                  [
                    1,
                    5
                  ],
                  "-1023/1000"
                ]
              ]
            },
            "283": {
              "name": "SUP_AQR_CQR_ACR",
              "why": [
                "support-envelope",
                [
                  "pentagon-ear-box",
                  "RABCQ",
                  [
                    {
                      "ear": "RAB",
                      "occupants": [],
                      "lower": "93/1000",
                      "root": "304959/1000000",
                      "side": null
                    },
                    {
                      "ear": "ABC",
                      "occupants": [],
                      "lower": "93/1000",
                      "root": "304959/1000000",
                      "side": null
                    },
                    {
                      "ear": "BCQ",
                      "occupants": [],
                      "lower": "93/1000",
                      "root": "304959/1000000",
                      "side": null
                    }
                  ],
                  "1023/1000"
                ],
                "AQR",
                "CQR",
                "ACR",
                "17785120887/25000000000"
              ],
              "terms": [
                [
                  [
                    6,
                    9
                  ],
                  "-7789879113/25000000000"
                ],
                [
                  [
                    2,
                    9
                  ],
                  "7789879113/25000000000"
                ],
                [
                  [
                    7,
                    8
                  ],
                  "7789879113/25000000000"
                ],
                [
                  [
                    2,
                    7
                  ],
                  "17785120887/25000000000"
                ],
                [
                  [
                    0,
                    6
                  ],
                  "1023/1000"
                ],
                [
                  [
                    0,
                    2
                  ],
                  "-1023/1000"
                ]
              ]
            },
            "390": {
              "name": "SUP_ACE_ACH_CEH",
              "why": [
                "support-envelope",
                [
                  "pentagon-ear-box",
                  "CERHA",
                  [
                    {
                      "ear": "CER",
                      "occupants": [],
                      "lower": "93/1000",
                      "root": "304959/1000000",
                      "side": null
                    },
                    {
                      "ear": "ERH",
                      "occupants": [
                        "S"
                      ],
                      "lower": "279/1000",
                      "root": "132051/250000",
                      "side": null
                    },
                    {
                      "ear": "RHA",
                      "occupants": [
                        "S"
                      ],
                      "lower": "5599747/10282000",
                      "root": "737981/1000000",
                      "side": [
                        "AH-clearance",
                        "R",
                        "180637/200000",
                        "15423/100000"
                      ]
                    }
                  ],
                  "38570210449/15625000000"
                ],
                "ACE",
                "ACH",
                "CEH",
                "534053093201/1000000000000"
              ],
              "terms": [
                [
                  [
                    2,
                    5
                  ],
                  "-386888075107/200000000000"
                ],
                [
                  [
                    0,
                    2
                  ],
                  "386888075107/200000000000"
                ],
                [
                  [
                    0
                  ],
                  "-38570210449/15625000000"
                ],
                [
                  [
                    5
                  ],
                  "38570210449/15625000000"
                ]
              ]
            },
            "517": {
              "name": "SUP_BCR_BER_BCE",
              "why": [
                "support-envelope",
                [
                  "pentagon-ear-box",
                  "BCQER",
                  [
                    {
                      "ear": "BCQ",
                      "occupants": [],
                      "lower": "93/1000",
                      "root": "304959/1000000",
                      "side": null
                    },
                    {
                      "ear": "CQE",
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
                  "1023/1000"
                ],
                "BCR",
                "BER",
                "BCE",
                "467617/1000000"
              ],
              "terms": [
                [
                  [
                    9
                  ],
                  "467617/1000000"
                ],
                [
                  [
                    1,
                    9
                  ],
                  "555383/1000000"
                ],
                [
                  [
                    3,
                    8
                  ],
                  "-467617/1000000"
                ],
                [
                  [
                    1,
                    3
                  ],
                  "-555383/1000000"
                ],
                [
                  [
                    2,
                    9
                  ],
                  "-1023/1000"
                ],
                [
                  [
                    2,
                    3
                  ],
                  "1023/1000"
                ]
              ]
            },
            "522": {
              "name": "SUP_BCS_BES_BCE",
              "why": [
                "support-envelope",
                [
                  "pentagon-ear-box",
                  "BCQES",
                  [
                    {
                      "ear": "BCQ",
                      "occupants": [],
                      "lower": "93/1000",
                      "root": "304959/1000000",
                      "side": null
                    },
                    {
                      "ear": "CQE",
                      "occupants": [],
                      "lower": "93/1000",
                      "root": "304959/1000000",
                      "side": null
                    },
                    {
                      "ear": "QES",
                      "occupants": [],
                      "lower": "93/1000",
                      "root": "304959/1000000",
                      "side": null
                    }
                  ],
                  "1023/1000"
                ],
                "BCS",
                "BES",
                "BCE",
                "82970687161/200000000000"
              ],
              "terms": [
                [
                  [
                    11
                  ],
                  "82970687161/200000000000"
                ],
                [
                  [
                    1,
                    11
                  ],
                  "121629312839/200000000000"
                ],
                [
                  [
                    3,
                    10
                  ],
                  "-82970687161/200000000000"
                ],
                [
                  [
                    1,
                    3
                  ],
                  "-121629312839/200000000000"
                ],
                [
                  [
                    2,
                    11
                  ],
                  "-1023/1000"
                ],
                [
                  [
                    2,
                    3
                  ],
                  "1023/1000"
                ]
              ]
            },
            "614": {
              "name": "SUP_CFQ_CFS_CQS",
              "why": [
                "support-envelope",
                [
                  "pentagon-ear-box",
                  "CQESF",
                  [
                    {
                      "ear": "CQE",
                      "occupants": [],
                      "lower": "93/1000",
                      "root": "304959/1000000",
                      "side": null
                    },
                    {
                      "ear": "QES",
                      "occupants": [],
                      "lower": "93/1000",
                      "root": "304959/1000000",
                      "side": null
                    },
                    {
                      "ear": "ESF",
                      "occupants": [],
                      "lower": "93/1000",
                      "root": "304959/1000000",
                      "side": null
                    }
                  ],
                  "1023/1000"
                ],
                "CFQ",
                "CFS",
                "CQS",
                "106432140257/200000000000"
              ],
              "terms": [
                [
                  [
                    4,
                    11
                  ],
                  "-106432140257/200000000000"
                ],
                [
                  [
                    2,
                    11
                  ],
                  "-98167859743/200000000000"
                ],
                [
                  [
                    10
                  ],
                  "106432140257/200000000000"
                ],
                [
                  [
                    2
                  ],
                  "98167859743/200000000000"
                ],
                [
                  [
                    4,
                    7
                  ],
                  "1023/1000"
                ],
                [
                  [
                    6
                  ],
                  "-1023/1000"
                ],
                [
                  [
                    6,
                    11
                  ],
                  "1023/1000"
                ],
                [
                  [
                    7,
                    10
                  ],
                  "-1023/1000"
                ]
              ]
            },
            "633": {
              "name": "SUP_EQS_EHQ_EHS",
              "why": [
                "support-envelope",
                [
                  "pentagon-ear-box",
                  "ESFHQ",
                  [
                    {
                      "ear": "ESF",
                      "occupants": [],
                      "lower": "93/1000",
                      "root": "304959/1000000",
                      "side": null
                    },
                    {
                      "ear": "SFH",
                      "occupants": [],
                      "lower": "93/1000",
                      "root": "304959/1000000",
                      "side": null
                    },
                    {
                      "ear": "FHQ",
                      "occupants": [],
                      "lower": "93/1000",
                      "root": "304959/1000000",
                      "side": null
                    }
                  ],
                  "1023/1000"
                ],
                "EQS",
                "EHQ",
                "EHS",
                "26457844647/125000000000"
              ],
              "terms": [
                [
                  [
                    7
                  ],
                  "101417155353/125000000000"
                ],
                [
                  [
                    5,
                    6
                  ],
                  "-26457844647/125000000000"
                ],
                [
                  [
                    5
                  ],
                  "-101417155353/125000000000"
                ],
                [
                  [
                    3,
                    6
                  ],
                  "-101417155353/125000000000"
                ],
                [
                  [
                    6,
                    11
                  ],
                  "1023/1000"
                ],
                [
                  [
                    7,
                    10
                  ],
                  "-1023/1000"
                ],
                [
                  [
                    5,
                    10
                  ],
                  "1023/1000"
                ]
              ]
            }
          },
          "steps": []
        },
        "initial": [
          {
            "id": 0,
            "triangle": "ABC",
            "direction": "lo",
            "value": "93/1000",
            "source": [
              "occupants",
              []
            ]
          },
          {
            "id": 1,
            "triangle": "ABC",
            "direction": "hi",
            "value": "37644571351/250000000000",
            "source": [
              "vertices",
              "37644571351/250000000000"
            ]
          },
          {
            "id": 4,
            "triangle": "ABF",
            "direction": "lo",
            "value": "93/1000",
            "source": [
              "occupants",
              []
            ]
          },
          {
            "id": 5,
            "triangle": "ABF",
            "direction": "hi",
            "value": "11201063541/50000000000",
            "source": [
              "vertices",
              "11201063541/50000000000"
            ]
          },
          {
            "id": 6,
            "triangle": "ABH",
            "direction": "lo",
            "value": "93/1000",
            "source": [
              "occupants",
              []
            ]
          },
          {
            "id": 7,
            "triangle": "ABH",
            "direction": "hi",
            "value": "11199056721/100000000000",
            "source": [
              "vertices",
              "11199056721/100000000000"
            ]
          },
          {
            "id": 8,
            "triangle": "ABQ",
            "direction": "lo",
            "value": "93/1000",
            "source": [
              "occupants",
              []
            ]
          },
          {
            "id": 20,
            "triangle": "ACQ",
            "direction": "lo",
            "value": "93/1000",
            "source": [
              "occupants",
              []
            ]
          },
          {
            "id": 23,
            "triangle": "ACR",
            "direction": "hi",
            "value": "181024545777/250000000000",
            "source": [
              "vertices",
              "181024545777/250000000000"
            ]
          },
          {
            "id": 26,
            "triangle": "AEF",
            "direction": "lo",
            "value": "250181/1000000",
            "source": [
              "earlier-area",
              {
                "triangle": "AEF",
                "direction": "lo",
                "value": "250181/1000000",
                "origin": {
                  "packet": "rpppppmmmp",
                  "stage": 0,
                  "id": 26
                }
              }
            ]
          },
          {
            "id": 27,
            "triangle": "AEF",
            "direction": "hi",
            "value": "188956896897/250000000000",
            "source": [
              "vertices",
              "188956896897/250000000000"
            ]
          },
          {
            "id": 32,
            "triangle": "AER",
            "direction": "lo",
            "value": "1047/10000",
            "source": [
              "earlier-area",
              {
                "triangle": "AER",
                "direction": "lo",
                "value": "1047/10000",
                "origin": {
                  "packet": "rpppppmmmp",
                  "stage": 0,
                  "id": 32
                }
              }
            ]
          },
          {
            "id": 35,
            "triangle": "AES",
            "direction": "hi",
            "value": "57433818077/125000000000",
            "source": [
              "vertices",
              "57433818077/125000000000"
            ]
          },
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
            "id": 39,
            "triangle": "AFQ",
            "direction": "hi",
            "value": "2174745387/3125000000",
            "source": [
              "vertices",
              "2174745387/3125000000"
            ]
          },
          {
            "id": 41,
            "triangle": "AFR",
            "direction": "hi",
            "value": "88754540853/125000000000",
            "source": [
              "vertices",
              "88754540853/125000000000"
            ]
          },
          {
            "id": 44,
            "triangle": "AHQ",
            "direction": "lo",
            "value": "178723/1000000",
            "source": [
              "earlier-area",
              {
                "triangle": "AHQ",
                "direction": "lo",
                "value": "178723/1000000",
                "origin": {
                  "packet": "rpppppmmmp",
                  "stage": 0,
                  "id": 44
                }
              }
            ]
          },
          {
            "id": 45,
            "triangle": "AHQ",
            "direction": "hi",
            "value": "315386727307/500000000000",
            "source": [
              "vertices",
              "315386727307/500000000000"
            ]
          },
          {
            "id": 47,
            "triangle": "AHR",
            "direction": "hi",
            "value": "180524611851/250000000000",
            "source": [
              "vertices",
              "180524611851/250000000000"
            ]
          },
          {
            "id": 49,
            "triangle": "AHS",
            "direction": "hi",
            "value": "536098837973/1000000000000",
            "source": [
              "vertices",
              "536098837973/1000000000000"
            ]
          },
          {
            "id": 50,
            "triangle": "AQR",
            "direction": "lo",
            "value": "95503/1000000",
            "source": [
              "earlier-area",
              {
                "triangle": "AQR",
                "direction": "lo",
                "value": "95503/1000000",
                "origin": {
                  "packet": "rpppppmmmp",
                  "stage": 0,
                  "id": 202
                }
              }
            ]
          },
          {
            "id": 52,
            "triangle": "AQS",
            "direction": "lo",
            "value": "22287/200000",
            "source": [
              "earlier-area",
              {
                "triangle": "AQS",
                "direction": "lo",
                "value": "22287/200000",
                "origin": {
                  "packet": "rpppppmmmp",
                  "stage": 0,
                  "id": 203
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
            "id": 56,
            "triangle": "BCE",
            "direction": "lo",
            "value": "93/1000",
            "source": [
              "occupants",
              []
            ]
          },
          {
            "id": 61,
            "triangle": "BCH",
            "direction": "hi",
            "value": "432548998319/1000000000000",
            "source": [
              "vertices",
              "432548998319/1000000000000"
            ]
          },
          {
            "id": 62,
            "triangle": "BCQ",
            "direction": "lo",
            "value": "93/1000",
            "source": [
              "occupants",
              []
            ]
          },
          {
            "id": 63,
            "triangle": "BCQ",
            "direction": "hi",
            "value": "8963/62500",
            "source": [
              "core-width-six-chain-cap",
              "BCQERF",
              "BCQ",
              "ERF",
              "S"
            ]
          },
          {
            "id": 68,
            "triangle": "BEF",
            "direction": "lo",
            "value": "263631/1000000",
            "source": [
              "earlier-area",
              {
                "triangle": "BEF",
                "direction": "lo",
                "value": "263631/1000000",
                "origin": {
                  "packet": "rpppppmmmp",
                  "stage": 0,
                  "id": 68
                }
              }
            ]
          },
          {
            "id": 69,
            "triangle": "BEF",
            "direction": "hi",
            "value": "217981/250000",
            "source": [
              "vertices",
              "217981/250000"
            ]
          },
          {
            "id": 70,
            "triangle": "BEH",
            "direction": "lo",
            "value": "145343/500000",
            "source": [
              "earlier-area",
              {
                "triangle": "BEH",
                "direction": "lo",
                "value": "145343/500000",
                "origin": {
                  "packet": "rpppppmmmp",
                  "stage": 0,
                  "id": 70
                }
              }
            ]
          },
          {
            "id": 74,
            "triangle": "BER",
            "direction": "lo",
            "value": "26107/250000",
            "source": [
              "earlier-area",
              {
                "triangle": "BER",
                "direction": "lo",
                "value": "26107/250000",
                "origin": {
                  "packet": "rpppppmmmp",
                  "stage": 0,
                  "id": 74
                }
              }
            ]
          },
          {
            "id": 75,
            "triangle": "BER",
            "direction": "hi",
            "value": "443663100647/1000000000000",
            "source": [
              "vertices",
              "443663100647/1000000000000"
            ]
          },
          {
            "id": 77,
            "triangle": "BES",
            "direction": "hi",
            "value": "60851055401/125000000000",
            "source": [
              "vertices",
              "60851055401/125000000000"
            ]
          },
          {
            "id": 81,
            "triangle": "BFQ",
            "direction": "hi",
            "value": "370303/500000",
            "source": [
              "vertices",
              "370303/500000"
            ]
          },
          {
            "id": 86,
            "triangle": "BHQ",
            "direction": "lo",
            "value": "20241/125000",
            "source": [
              "earlier-area",
              {
                "triangle": "BHQ",
                "direction": "lo",
                "value": "20241/125000",
                "origin": {
                  "packet": "rpppppmmmp",
                  "stage": 0,
                  "id": 86
                }
              }
            ]
          },
          {
            "id": 93,
            "triangle": "BQR",
            "direction": "hi",
            "value": "3665327013/6250000000",
            "source": [
              "vertices",
              "3665327013/6250000000"
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
                  "packet": "rpppppmmmp",
                  "stage": 0,
                  "id": 98
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
            "id": 103,
            "triangle": "CEQ",
            "direction": "hi",
            "value": "80667/500000",
            "source": [
              "core-width-six-chain-cap",
              "BCQERF",
              "CQE",
              "ERF",
              "S"
            ]
          },
          {
            "id": 105,
            "triangle": "CER",
            "direction": "hi",
            "value": "2412278029/7812500000",
            "source": [
              "vertices",
              "2412278029/7812500000"
            ]
          },
          {
            "id": 107,
            "triangle": "CES",
            "direction": "hi",
            "value": "24120654803/62500000000",
            "source": [
              "vertices",
              "24120654803/62500000000"
            ]
          },
          {
            "id": 108,
            "triangle": "CFH",
            "direction": "lo",
            "value": "93/1000",
            "source": [
              "occupants",
              []
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
                  "packet": "rpppppmmmp",
                  "stage": 0,
                  "id": 112
                }
              }
            ]
          },
          {
            "id": 113,
            "triangle": "CFR",
            "direction": "hi",
            "value": "108297/125000",
            "source": [
              "vertices",
              "108297/125000"
            ]
          },
          {
            "id": 118,
            "triangle": "CHR",
            "direction": "lo",
            "value": "388269/1000000",
            "source": [
              "earlier-area",
              {
                "triangle": "CHR",
                "direction": "lo",
                "value": "388269/1000000",
                "origin": {
                  "packet": "rpppppmmmp",
                  "stage": 0,
                  "id": 118
                }
              }
            ]
          },
          {
            "id": 119,
            "triangle": "CHR",
            "direction": "hi",
            "value": "964547866313/1000000000000",
            "source": [
              "vertices",
              "964547866313/1000000000000"
            ]
          },
          {
            "id": 122,
            "triangle": "CQR",
            "direction": "lo",
            "value": "93/1000",
            "source": [
              "occupants",
              []
            ]
          },
          {
            "id": 125,
            "triangle": "CQS",
            "direction": "hi",
            "value": "69269936177/200000000000",
            "source": [
              "vertices",
              "69269936177/200000000000"
            ]
          },
          {
            "id": 126,
            "triangle": "CRS",
            "direction": "lo",
            "value": "93/1000",
            "source": [
              "occupants",
              []
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
                  "packet": "rpppppmmmp",
                  "stage": 0,
                  "id": 128
                }
              }
            ]
          },
          {
            "id": 131,
            "triangle": "EFQ",
            "direction": "hi",
            "value": "60405559/125000000",
            "source": [
              "vertices",
              "60405559/125000000"
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
            "id": 139,
            "triangle": "EHR",
            "direction": "hi",
            "value": "1393943201/3125000000",
            "source": [
              "vertices",
              "1393943201/3125000000"
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
                  "packet": "rpppppmmmp",
                  "stage": 0,
                  "id": 140
                }
              }
            ]
          },
          {
            "id": 141,
            "triangle": "EHS",
            "direction": "hi",
            "value": "130031/500000",
            "source": [
              "earlier-area",
              {
                "triangle": "EHS",
                "direction": "hi",
                "value": "130031/500000",
                "origin": {
                  "packet": "rpppppmmmp",
                  "stage": 0,
                  "id": 141
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
            "id": 144,
            "triangle": "EQS",
            "direction": "lo",
            "value": "5031/50000",
            "source": [
              "earlier-area",
              {
                "triangle": "EQS",
                "direction": "lo",
                "value": "5031/50000",
                "origin": {
                  "packet": "rpppppmmmp",
                  "stage": 0,
                  "id": 174
                }
              }
            ]
          },
          {
            "id": 145,
            "triangle": "EQS",
            "direction": "hi",
            "value": "26457844647/125000000000",
            "source": [
              "vertices",
              "26457844647/125000000000"
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
            "id": 147,
            "triangle": "ERS",
            "direction": "hi",
            "value": "39152570883/250000000000",
            "source": [
              "vertices",
              "39152570883/250000000000"
            ]
          },
          {
            "id": 149,
            "triangle": "FHQ",
            "direction": "hi",
            "value": "392412190391/1000000000000",
            "source": [
              "vertices",
              "392412190391/1000000000000"
            ]
          },
          {
            "id": 150,
            "triangle": "FHR",
            "direction": "lo",
            "value": "93/1000",
            "source": [
              "occupants",
              []
            ]
          },
          {
            "id": 151,
            "triangle": "FHR",
            "direction": "hi",
            "value": "2839419393/15625000000",
            "source": [
              "vertices",
              "2839419393/15625000000"
            ]
          },
          {
            "id": 152,
            "triangle": "FHS",
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
                  "packet": "rpppppmmmp",
                  "stage": 0,
                  "id": 159
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
          },
          {
            "id": 167,
            "triangle": "QRS",
            "direction": "hi",
            "value": "5282677049/20000000000",
            "source": [
              "vertices",
              "5282677049/20000000000"
            ]
          }
        ],
        "relations": {},
        "closed": false,
        "rounds": 1,
        "updates": [],
        "areaVertexDifferences": {
          "1": {
            "indices": [
              0,
              1,
              2
            ],
            "differences": [
              "22656725951/250000000000",
              "3344336129/62500000000",
              "23957102831/250000000000",
              "7741409989/125000000000",
              "14394654111/250000000000",
              "0",
              "15695030991/250000000000",
              "1052737731/125000000000"
            ]
          },
          "5": {
            "indices": [
              0,
              1,
              4
            ],
            "differences": [
              "4797263541/50000000000",
              "4797263541/50000000000",
              "3749638917/50000000000",
              "19553293167/250000000000",
              "95279013/2000000000",
              "2216512269/125000000000",
              "1334350701/50000000000",
              "0"
            ]
          },
          "7": {
            "indices": [
              0,
              1,
              5
            ],
            "differences": [
              "16945103319/500000000000",
              "4966046067/100000000000",
              "179415759/10000000000",
              "1846611213/50000000000",
              "9495562779/500000000000",
              "3476137959/100000000000",
              "0",
              "474766209/25000000000"
            ]
          },
          "23": {
            "indices": [
              0,
              2,
              8,
              9
            ],
            "differences": [
              "126958198761/500000000000",
              "97796600937/500000000000",
              "14150668937/100000000000",
              "51822292213/500000000000",
              "117882608281/500000000000",
              "16620413267/100000000000",
              "12335550841/100000000000",
              "37127757611/500000000000",
              "50093721697/250000000000",
              "7102584557/50000000000",
              "16812793537/250000000000",
              "7347267301/250000000000",
              "45555926457/250000000000",
              "7041413871/62500000000",
              "12274998297/250000000000",
              "0"
            ]
          },
          "27": {
            "indices": [
              0,
              3,
              4
            ],
            "differences": [
              "0",
              "6710109123/62500000000",
              "1004211897/62500000000",
              "385716051/3125000000",
              "85894537293/1000000000000",
              "163348874913/1000000000000",
              "132432838473/1000000000000",
              "209887176093/1000000000000"
            ]
          },
          "35": {
            "indices": [
              0,
              3,
              10,
              11
            ],
            "differences": [
              "93679/1000000",
              "4285645493/31250000000",
              "5464076827/31250000000",
              "682225357/3125000000",
              "125954388079/1000000000000",
              "158178155611/1000000000000",
              "218575474227/1000000000000",
              "250799241759/1000000000000",
              "0",
              "1358176743/31250000000",
              "2536608077/31250000000",
              "194739241/1562500000",
              "32275388079/1000000000000",
              "64499155611/1000000000000",
              "124896474227/1000000000000",
              "157120241759/1000000000000"
            ]
          },
          "39": {
            "indices": [
              0,
              4,
              6,
              7
            ],
            "differences": [
              "180567441/3125000000",
              "437790189/3125000000",
              "180567441/3125000000",
              "27546363033/250000000000",
              "0",
              "11399037249/125000000000",
              "0",
              "15321222411/250000000000",
              "17955734307/250000000000",
              "38533554147/250000000000",
              "19690317393/200000000000",
              "150855457977/1000000000000",
              "3510339027/250000000000",
              "1052336541/10000000000",
              "8134001169/200000000000",
              "101954895489/1000000000000"
            ]
          },
          "41": {
            "indices": [
              0,
              4,
              8,
              9
            ],
            "differences": [
              "456973869/6250000000",
              "42139135107/250000000000",
              "118710984657/500000000000",
              "151477641177/500000000000",
              "0",
              "3333706551/31250000000",
              "82153075137/500000000000",
              "120538675779/500000000000",
              "11135125593/125000000000",
              "46130431533/250000000000",
              "35458030053/125000000000",
              "43649694183/125000000000",
              "1995648213/125000000000",
              "15330474417/125000000000",
              "26318552673/125000000000",
              "71829905667/250000000000"
            ]
          },
          "45": {
            "indices": [
              0,
              5,
              6
            ],
            "differences": [
              "72517997741/500000000000",
              "121558764437/500000000000",
              "26186318001/500000000000",
              "75227084697/500000000000",
              "5052688853/50000000000",
              "52004082271/250000000000",
              "0",
              "13370319003/125000000000"
            ]
          },
          "47": {
            "indices": [
              0,
              5,
              8
            ],
            "differences": [
              "171338943959/1000000000000",
              "282549919379/1000000000000",
              "66271432909/1000000000000",
              "177482408329/1000000000000",
              "2892115029/25000000000",
              "29766683103/125000000000",
              "0",
              "7653053979/62500000000"
            ]
          },
          "49": {
            "indices": [
              0,
              5,
              10
            ],
            "differences": [
              "141540665469/1000000000000",
              "221211009693/1000000000000",
              "66271432909/1000000000000",
              "145941777133/1000000000000",
              "8588632267/100000000000",
              "88397277569/500000000000",
              "0",
              "22727058117/250000000000"
            ]
          },
          "61": {
            "indices": [
              1,
              2,
              5
            ],
            "differences": [
              "94388680027/500000000000",
              "26240937289/125000000000",
              "5439788561/100000000000",
              "18887005967/250000000000",
              "38427565801/250000000000",
              "88951448141/500000000000",
              "0",
              "12096316539/500000000000"
            ]
          },
          "69": {
            "indices": [
              1,
              3,
              4
            ],
            "differences": [
              "0",
              "5851735191/500000000000",
              "0",
              "4211199387/500000000000",
              "134200301613/1000000000000",
              "29180754399/200000000000",
              "164671212441/1000000000000",
              "34618722243/200000000000"
            ]
          },
          "75": {
            "indices": [
              1,
              3,
              8,
              9
            ],
            "differences": [
              "13586101787/125000000000",
              "58566041981/500000000000",
              "51481947141/250000000000",
              "105544993311/500000000000",
              "31823076667/200000000000",
              "167558653001/1000000000000",
              "267803985287/1000000000000",
              "54593236669/200000000000",
              "0",
              "5851735191/500000000000",
              "24309743567/250000000000",
              "52830686521/500000000000",
              "50426569039/1000000000000",
              "62130039421/1000000000000",
              "159115170991/1000000000000",
              "33507513953/200000000000"
            ]
          },
          "77": {
            "indices": [
              1,
              3,
              10,
              11
            ],
            "differences": [
              "20420242099/250000000000",
              "43991635811/500000000000",
              "36696259127/250000000000",
              "74903134063/500000000000",
              "26421507487/200000000000",
              "138409840661/1000000000000",
              "208661233231/1000000000000",
              "211682464849/1000000000000",
              "0",
              "547023987/62500000000",
              "4069004257/62500000000",
              "8821922537/125000000000",
              "50426569039/1000000000000",
              "59178952831/1000000000000",
              "25396052967/200000000000",
              "132451577019/1000000000000"
            ]
          },
          "81": {
            "indices": [
              1,
              4,
              6,
              7
            ],
            "differences": [
              "36063/500000",
              "290870289/3125000000",
              "752698527/6250000000",
              "176730321/1250000000",
              "0",
              "65476539/3125000000",
              "301911027/6250000000",
              "86572821/1250000000",
              "36063/500000",
              "45105575499/500000000000",
              "147060414057/1000000000000",
              "33029113011/200000000000",
              "0",
              "9042575499/500000000000",
              "74934414057/1000000000000",
              "18603913011/200000000000"
            ]
          },
          "93": {
            "indices": [
              1,
              6,
              7,
              8,
              9
            ],
            "differences": [
              "121448989/781250000",
              "43286749421/250000000000",
              "23079875081/250000000000",
              "13751474011/125000000000",
              "240432230917/1000000000000",
              "255257181199/1000000000000",
              "177297025321/1000000000000",
              "192121975603/1000000000000",
              "1085036793/6250000000",
              "47824544661/250000000000",
              "27617670321/250000000000",
              "16020371631/125000000000",
              "33573660861/125000000000",
              "28341423717/100000000000",
              "51363520323/250000000000",
              "110139515787/500000000000",
              "36063/500000",
              "290870289/3125000000",
              "0",
              "65476539/3125000000",
              "157103524997/1000000000000",
              "35037735199/200000000000",
              "84977524997/1000000000000",
              "20612535199/200000000000",
              "564232381/6250000000",
              "695185459/6250000000",
              "113444881/6250000000",
              "244397959/6250000000",
              "23157572621/125000000000",
              "101672865983/500000000000",
              "14141822621/125000000000",
              "65609865983/500000000000"
            ]
          },
          "105": {
            "indices": [
              2,
              3,
              8,
              9
            ],
            "differences": [
              "35556244633/500000000000",
              "62378814927/500000000000",
              "65267292697/500000000000",
              "81666558119/500000000000",
              "24307811661/200000000000",
              "175184198893/1000000000000",
              "192410782117/1000000000000",
              "225209312961/1000000000000",
              "0",
              "18589786269/250000000000",
              "232117563/3906250000",
              "5646731573/50000000000",
              "50426569039/1000000000000",
              "24957142823/200000000000",
              "121298292851/1000000000000",
              "174810828183/1000000000000"
            ]
          },
          "107": {
            "indices": [
              2,
              3,
              10,
              11
            ],
            "differences": [
              "53441902241/1000000000000",
              "93484202909/1000000000000",
              "80729092213/1000000000000",
              "99924783137/1000000000000",
              "1298355891/12500000000",
              "35977692987/250000000000",
              "17825661117/125000000000",
              "8090048993/50000000000",
              "0",
              "1737785233/31250000000",
              "6821797493/250000000000",
              "15512426921/250000000000",
              "50426569039/1000000000000",
              "21207139299/200000000000",
              "17832677339/200000000000",
              "123925904407/1000000000000"
            ]
          },
          "113": {
            "indices": [
              2,
              4,
              8,
              9
            ],
            "differences": [
              "12884332503/100000000000",
              "74778664759/500000000000",
              "42681904953/125000000000",
              "22635577757/62500000000",
              "3757632503/100000000000",
              "29145164759/500000000000",
              "31273529953/125000000000",
              "16931390257/62500000000",
              "91267/1000000",
              "91267/1000000",
              "83539/250000",
              "83539/250000",
              "0",
              "0",
              "242889/1000000",
              "242889/1000000"
            ]
          },
          "119": {
            "indices": [
              2,
              5,
              8,
              9
            ],
            "differences": [
              "205527194519/1000000000000",
              "194448673451/1000000000000",
              "150425861399/1000000000000",
              "158678129091/1000000000000",
              "3293041769/25000000000",
              "30160787423/250000000000",
              "6600324753/100000000000",
              "37127757611/500000000000",
              "30397136757/200000000000",
              "120193158229/1000000000000",
              "19376870133/200000000000",
              "84422613869/1000000000000",
              "39090080013/500000000000",
              "4638763447/100000000000",
              "3115434199/250000000000",
              "0"
            ]
          },
          "125": {
            "indices": [
              2,
              6,
              7,
              10,
              11
            ],
            "differences": [
              "19674226911/200000000000",
              "197178002787/1000000000000",
              "41140163319/1000000000000",
              "139947031551/1000000000000",
              "61108759009/500000000000",
              "101403225687/500000000000",
              "32493273391/500000000000",
              "72787740069/500000000000",
              "23304463103/200000000000",
              "215329183747/1000000000000",
              "59291344279/1000000000000",
              "158098212511/1000000000000",
              "150374573989/1000000000000",
              "46192701469/200000000000",
              "93143602753/1000000000000",
              "173732536109/1000000000000",
              "6398766279/100000000000",
              "17836135781/100000000000",
              "0",
              "5718684751/50000000000",
              "87834046253/1000000000000",
              "183989806397/1000000000000",
              "23846383463/1000000000000",
              "120002143607/1000000000000",
              "2628443/32000000",
              "19651253877/100000000000",
              "113444881/6250000000",
              "6626243799/50000000000",
              "7249443889/62500000000",
              "6629589449/31250000000",
              "26001719717/500000000000",
              "74079599789/500000000000"
            ]
          },
          "131": {
            "indices": [
              3,
              4,
              6,
              7
            ],
            "differences": [
              "65517307/781250000",
              "0",
              "169756690253/1000000000000",
              "116365448121/1000000000000",
              "58068655909/500000000000",
              "11613403953/500000000000",
              "202031849111/1000000000000",
              "139592256027/1000000000000",
              "44863449213/250000000000",
              "23897910973/250000000000",
              "29839960551/125000000000",
              "46332110569/250000000000",
              "21172895571/100000000000",
              "59409225899/500000000000",
              "135497421633/500000000000",
              "104277625091/500000000000"
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
              "925205967/6250000000",
              "13066965967/50000000000",
              "15929544367/100000000000",
              "27260180829/100000000000",
              "62327/500000",
              "15588124519/62500000000",
              "3132484971/25000000000",
              "31256923893/125000000000",
              "146118467/6250000000",
              "6834265967/50000000000",
              "3464144367/100000000000",
              "14794780829/100000000000",
              "0",
              "7797249519/62500000000",
              "16134971/25000000000",
              "15675173893/125000000000"
            ]
          },
          "145": {
            "indices": [
              3,
              6,
              7,
              10,
              11
            ],
            "differences": [
              "9454128831/250000000000",
              "4764607619/250000000000",
              "27598322709/500000000000",
              "13695104809/500000000000",
              "19128364017/250000000000",
              "2887768561/50000000000",
              "46946793081/500000000000",
              "33043575181/500000000000",
              "70091903403/1000000000000",
              "62783446239/1000000000000",
              "87472033497/1000000000000",
              "71115225381/1000000000000",
              "6173935571/62500000000",
              "22868627993/250000000000",
              "11616309923/100000000000",
              "49903145557/500000000000",
              "1172380303/62500000000",
              "0",
              "335116457/7812500000",
              "1886058837/125000000000",
              "7181878199/125000000000",
              "4837117593/125000000000",
              "2039796181/25000000000",
              "672317643/12500000000",
              "51033472927/1000000000000",
              "43725015763/1000000000000",
              "3006811783/40000000000",
              "58813486459/1000000000000",
              "3986226933/50000000000",
              "9052010187/125000000000",
              "25965340077/250000000000",
              "341814657/3906250000"
            ]
          },
          "147": {
            "indices": [
              3,
              8,
              9,
              10,
              11
            ],
            "differences": [
              "13198278159/200000000000",
              "98126296951/1000000000000",
              "2749929567/62500000000",
              "1368490733/15625000000",
              "21992517723/1000000000000",
              "54127423879/1000000000000",
              "0",
              "544806673/12500000000",
              "47727512569/500000000000",
              "11614030361/100000000000",
              "14692501483/200000000000",
              "105597413571/1000000000000",
              "15708237171/250000000000",
              "20879556789/250000000000",
              "40840430961/1000000000000",
              "72975337117/1000000000000",
              "3753046159/50000000000",
              "13399478667/125000000000",
              "11129651041/250000000000",
              "22025784501/250000000000",
              "7765512527/250000000000",
              "7899619533/125000000000",
              "129932773/250000000000",
              "11026066233/250000000000",
              "104524557523/1000000000000",
              "25041967199/200000000000",
              "73982238507/1000000000000",
              "106117144663/1000000000000",
              "71902481069/1000000000000",
              "92587759541/1000000000000",
              "41360162053/1000000000000",
              "73495068209/1000000000000"
            ]
          },
          "149": {
            "indices": [
              4,
              5,
              6,
              7
            ],
            "differences": [
              "161912346231/1000000000000",
              "6899681349/500000000000",
              "239676624631/1000000000000",
              "3956772733/62500000000",
              "148112983533/1000000000000",
              "0",
              "234267679513/1000000000000",
              "5789941861/100000000000",
              "175953702339/1000000000000",
              "54469368543/1000000000000",
              "253717980739/1000000000000",
              "103978369573/1000000000000",
              "162154339641/1000000000000",
              "8134001169/200000000000",
              "248309035621/1000000000000",
              "19713884891/200000000000"
            ]
          },
          "151": {
            "indices": [
              4,
              5,
              8,
              9
            ],
            "differences": [
              "17461476241/1000000000000",
              "16827321491/500000000000",
              "107629906211/1000000000000",
              "47783897791/500000000000",
              "0",
              "16193166741/1000000000000",
              "1259819001/12500000000",
              "88723409451/1000000000000",
              "6685332389/200000000000",
              "19974228523/250000000000",
              "24719018383/200000000000",
              "35452516673/250000000000",
              "1995648213/125000000000",
              "62435437851/1000000000000",
              "14593838223/125000000000",
              "134965680561/1000000000000"
            ]
          },
          "167": {
            "indices": [
              6,
              7,
              8,
              9,
              10,
              11
            ],
            "differences": [
              "24895926773/250000000000",
              "23419868183/250000000000",
              "127666528941/1000000000000",
              "121762294581/1000000000000",
              "4531580129/100000000000",
              "3941156693/100000000000",
              "1668089963/20000000000",
              "7750026379/100000000000",
              "20236235599/250000000000",
              "2064059801/31250000000",
              "21805552849/200000000000",
              "94132735481/1000000000000",
              "13338518297/500000000000",
              "1178200783/100000000000",
              "32382866727/500000000000",
              "4987070469/100000000000",
              "80661364757/500000000000",
              "77709247577/500000000000",
              "2803119943/15625000000",
              "21686930249/125000000000",
              "3345463241/31250000000",
              "12643823669/125000000000",
              "135137645561/1000000000000",
              "129233411201/1000000000000",
              "38515190359/250000000000",
              "2174464573/15625000000",
              "86068854137/500000000000",
              "15724267951/100000000000",
              "49896427817/500000000000",
              "8489782687/100000000000",
              "127875677483/1000000000000",
              "112980648719/1000000000000",
              "89594809001/1000000000000",
              "18089453239/200000000000",
              "2353552617/20000000000",
              "29632522011/250000000000",
              "13388550953/500000000000",
              "276295591/10000000000",
              "32432899383/500000000000",
              "1642956399/25000000000",
              "14191208861/200000000000",
              "12563541419/200000000000",
              "49519433077/500000000000",
              "5681283059/62500000000",
              "813833721/100000000000",
              "0",
              "4622703407/100000000000",
              "1904434843/50000000000",
              "151333831423/1000000000000",
              "152186288617/1000000000000",
              "169410778261/1000000000000",
              "34052647091/200000000000",
              "11064515541/125000000000",
              "44684290761/500000000000",
              "116598946177/1000000000000",
              "117451403371/1000000000000",
              "28814372669/200000000000",
              "27186705227/200000000000",
              "162148810183/1000000000000",
              "154010472973/1000000000000",
              "2600133/32000000",
              "456973869/6250000000",
              "109336978099/1000000000000",
              "101198640889/1000000000000"
            ]
          }
        }
      },
      "forced": []
    }
  ],
  "coordinateCertificate": {
    "sources": {
      "0": {
        "origin": {
          "kind": "bound",
          "triangle": "ABC",
          "direction": "lo",
          "id": 0,
          "value": "93/1000"
        },
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
        ]
      },
      "1": {
        "origin": {
          "kind": "bound",
          "triangle": "ABC",
          "direction": "hi",
          "id": 1,
          "value": "37644571351/250000000000"
        },
        "terms": [
          [
            [],
            "37644571351/250000000000"
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
              2
            ],
            "-1"
          ]
        ]
      },
      "4": {
        "origin": {
          "kind": "bound",
          "triangle": "ABF",
          "direction": "lo",
          "id": 4,
          "value": "93/1000"
        },
        "terms": [
          [
            [
              1
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
              4
            ],
            "1"
          ],
          [
            [],
            "-93/1000"
          ]
        ]
      },
      "5": {
        "origin": {
          "kind": "bound",
          "triangle": "ABF",
          "direction": "hi",
          "id": 5,
          "value": "11201063541/50000000000"
        },
        "terms": [
          [
            [],
            "11201063541/50000000000"
          ],
          [
            [
              1
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
              4
            ],
            "-1"
          ]
        ]
      },
      "6": {
        "origin": {
          "kind": "bound",
          "triangle": "ABH",
          "direction": "lo",
          "id": 6,
          "value": "93/1000"
        },
        "terms": [
          [
            [
              1,
              5
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
        ]
      },
      "7": {
        "origin": {
          "kind": "bound",
          "triangle": "ABH",
          "direction": "hi",
          "id": 7,
          "value": "11199056721/100000000000"
        },
        "terms": [
          [
            [],
            "11199056721/100000000000"
          ],
          [
            [
              1,
              5
            ],
            "-1"
          ],
          [
            [
              0,
              1
            ],
            "1"
          ]
        ]
      },
      "8": {
        "origin": {
          "kind": "bound",
          "triangle": "ABQ",
          "direction": "lo",
          "id": 8,
          "value": "93/1000"
        },
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
        ]
      },
      "20": {
        "origin": {
          "kind": "bound",
          "triangle": "ACQ",
          "direction": "lo",
          "id": 20,
          "value": "93/1000"
        },
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
        ]
      },
      "23": {
        "origin": {
          "kind": "bound",
          "triangle": "ACR",
          "direction": "hi",
          "id": 23,
          "value": "181024545777/250000000000"
        },
        "terms": [
          [
            [],
            "181024545777/250000000000"
          ],
          [
            [
              2,
              9
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
            [
              0,
              8
            ],
            "-1"
          ]
        ]
      },
      "26": {
        "origin": {
          "kind": "bound",
          "triangle": "AEF",
          "direction": "lo",
          "id": 26,
          "value": "250181/1000000"
        },
        "terms": [
          [
            [],
            "749819/1000000"
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
              4
            ],
            "-1"
          ],
          [
            [
              0,
              4
            ],
            "1"
          ]
        ]
      },
      "27": {
        "origin": {
          "kind": "bound",
          "triangle": "AEF",
          "direction": "hi",
          "id": 27,
          "value": "188956896897/250000000000"
        },
        "terms": [
          [
            [],
            "-61043103103/250000000000"
          ],
          [
            [
              0
            ],
            "1"
          ],
          [
            [
              3,
              4
            ],
            "1"
          ],
          [
            [
              0,
              4
            ],
            "-1"
          ]
        ]
      },
      "32": {
        "origin": {
          "kind": "bound",
          "triangle": "AER",
          "direction": "lo",
          "id": 32,
          "value": "1047/10000"
        },
        "terms": [
          [
            [
              9
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
              8
            ],
            "-1"
          ],
          [
            [
              0,
              8
            ],
            "1"
          ],
          [
            [],
            "-1047/10000"
          ]
        ]
      },
      "35": {
        "origin": {
          "kind": "bound",
          "triangle": "AES",
          "direction": "hi",
          "id": 35,
          "value": "57433818077/125000000000"
        },
        "terms": [
          [
            [],
            "57433818077/125000000000"
          ],
          [
            [
              11
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
            [
              3,
              10
            ],
            "1"
          ],
          [
            [
              0,
              10
            ],
            "-1"
          ]
        ]
      },
      "36": {
        "origin": {
          "kind": "bound",
          "triangle": "AFH",
          "direction": "lo",
          "id": 36,
          "value": "93/1000"
        },
        "terms": [
          [
            [
              4,
              5
            ],
            "1"
          ],
          [
            [
              0,
              4
            ],
            "-1"
          ],
          [
            [],
            "-93/1000"
          ]
        ]
      },
      "39": {
        "origin": {
          "kind": "bound",
          "triangle": "AFQ",
          "direction": "hi",
          "id": 39,
          "value": "2174745387/3125000000"
        },
        "terms": [
          [
            [],
            "2174745387/3125000000"
          ],
          [
            [
              4,
              7
            ],
            "1"
          ],
          [
            [
              0,
              4
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
          ]
        ]
      },
      "41": {
        "origin": {
          "kind": "bound",
          "triangle": "AFR",
          "direction": "hi",
          "id": 41,
          "value": "88754540853/125000000000"
        },
        "terms": [
          [
            [],
            "88754540853/125000000000"
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
              0,
              4
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
              0,
              8
            ],
            "1"
          ]
        ]
      },
      "44": {
        "origin": {
          "kind": "bound",
          "triangle": "AHQ",
          "direction": "lo",
          "id": 44,
          "value": "178723/1000000"
        },
        "terms": [
          [
            [
              5,
              6
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
            "-178723/1000000"
          ]
        ]
      },
      "45": {
        "origin": {
          "kind": "bound",
          "triangle": "AHQ",
          "direction": "hi",
          "id": 45,
          "value": "315386727307/500000000000"
        },
        "terms": [
          [
            [],
            "315386727307/500000000000"
          ],
          [
            [
              5,
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
          ]
        ]
      },
      "47": {
        "origin": {
          "kind": "bound",
          "triangle": "AHR",
          "direction": "hi",
          "id": 47,
          "value": "180524611851/250000000000"
        },
        "terms": [
          [
            [],
            "180524611851/250000000000"
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
              0,
              8
            ],
            "1"
          ]
        ]
      },
      "49": {
        "origin": {
          "kind": "bound",
          "triangle": "AHS",
          "direction": "hi",
          "id": 49,
          "value": "536098837973/1000000000000"
        },
        "terms": [
          [
            [],
            "536098837973/1000000000000"
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
              0,
              10
            ],
            "1"
          ]
        ]
      },
      "50": {
        "origin": {
          "kind": "bound",
          "triangle": "AQR",
          "direction": "lo",
          "id": 50,
          "value": "95503/1000000"
        },
        "terms": [
          [
            [
              6,
              9
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
              7,
              8
            ],
            "-1"
          ],
          [
            [
              0,
              8
            ],
            "1"
          ],
          [
            [],
            "-95503/1000000"
          ]
        ]
      },
      "52": {
        "origin": {
          "kind": "bound",
          "triangle": "AQS",
          "direction": "lo",
          "id": 52,
          "value": "22287/200000"
        },
        "terms": [
          [
            [
              6,
              11
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
              7,
              10
            ],
            "-1"
          ],
          [
            [
              0,
              10
            ],
            "1"
          ],
          [
            [],
            "-22287/200000"
          ]
        ]
      },
      "54": {
        "origin": {
          "kind": "bound",
          "triangle": "ARS",
          "direction": "lo",
          "id": 54,
          "value": "93/1000"
        },
        "terms": [
          [
            [
              8,
              11
            ],
            "1"
          ],
          [
            [
              0,
              8
            ],
            "-1"
          ],
          [
            [
              9,
              10
            ],
            "-1"
          ],
          [
            [
              0,
              10
            ],
            "1"
          ],
          [
            [],
            "-93/1000"
          ]
        ]
      },
      "56": {
        "origin": {
          "kind": "bound",
          "triangle": "BCE",
          "direction": "lo",
          "id": 56,
          "value": "93/1000"
        },
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
        ]
      },
      "61": {
        "origin": {
          "kind": "bound",
          "triangle": "BCH",
          "direction": "hi",
          "id": 61,
          "value": "432548998319/1000000000000"
        },
        "terms": [
          [
            [],
            "432548998319/1000000000000"
          ],
          [
            [
              2,
              5
            ],
            "-1"
          ],
          [
            [
              1,
              5
            ],
            "1"
          ]
        ]
      },
      "62": {
        "origin": {
          "kind": "bound",
          "triangle": "BCQ",
          "direction": "lo",
          "id": 62,
          "value": "93/1000"
        },
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
            "-93/1000"
          ]
        ]
      },
      "63": {
        "origin": {
          "kind": "bound",
          "triangle": "BCQ",
          "direction": "hi",
          "id": 63,
          "value": "8963/62500"
        },
        "terms": [
          [
            [],
            "8963/62500"
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
              1,
              7
            ],
            "1"
          ]
        ]
      },
      "68": {
        "origin": {
          "kind": "bound",
          "triangle": "BEF",
          "direction": "lo",
          "id": 68,
          "value": "263631/1000000"
        },
        "terms": [
          [
            [],
            "736369/1000000"
          ],
          [
            [
              1
            ],
            "-1"
          ],
          [
            [
              3,
              4
            ],
            "-1"
          ],
          [
            [
              1,
              3
            ],
            "1"
          ]
        ]
      },
      "69": {
        "origin": {
          "kind": "bound",
          "triangle": "BEF",
          "direction": "hi",
          "id": 69,
          "value": "217981/250000"
        },
        "terms": [
          [
            [],
            "-32019/250000"
          ],
          [
            [
              1
            ],
            "1"
          ],
          [
            [
              3,
              4
            ],
            "1"
          ],
          [
            [
              1,
              3
            ],
            "-1"
          ]
        ]
      },
      "70": {
        "origin": {
          "kind": "bound",
          "triangle": "BEH",
          "direction": "lo",
          "id": 70,
          "value": "145343/500000"
        },
        "terms": [
          [
            [
              5
            ],
            "1"
          ],
          [
            [
              1,
              5
            ],
            "-1"
          ],
          [
            [
              1,
              3
            ],
            "1"
          ],
          [
            [],
            "-145343/500000"
          ]
        ]
      },
      "74": {
        "origin": {
          "kind": "bound",
          "triangle": "BER",
          "direction": "lo",
          "id": 74,
          "value": "26107/250000"
        },
        "terms": [
          [
            [
              9
            ],
            "1"
          ],
          [
            [
              1,
              9
            ],
            "-1"
          ],
          [
            [
              3,
              8
            ],
            "-1"
          ],
          [
            [
              1,
              3
            ],
            "1"
          ],
          [
            [],
            "-26107/250000"
          ]
        ]
      },
      "75": {
        "origin": {
          "kind": "bound",
          "triangle": "BER",
          "direction": "hi",
          "id": 75,
          "value": "443663100647/1000000000000"
        },
        "terms": [
          [
            [],
            "443663100647/1000000000000"
          ],
          [
            [
              9
            ],
            "-1"
          ],
          [
            [
              1,
              9
            ],
            "1"
          ],
          [
            [
              3,
              8
            ],
            "1"
          ],
          [
            [
              1,
              3
            ],
            "-1"
          ]
        ]
      },
      "77": {
        "origin": {
          "kind": "bound",
          "triangle": "BES",
          "direction": "hi",
          "id": 77,
          "value": "60851055401/125000000000"
        },
        "terms": [
          [
            [],
            "60851055401/125000000000"
          ],
          [
            [
              11
            ],
            "-1"
          ],
          [
            [
              1,
              11
            ],
            "1"
          ],
          [
            [
              3,
              10
            ],
            "1"
          ],
          [
            [
              1,
              3
            ],
            "-1"
          ]
        ]
      },
      "81": {
        "origin": {
          "kind": "bound",
          "triangle": "BFQ",
          "direction": "hi",
          "id": 81,
          "value": "370303/500000"
        },
        "terms": [
          [
            [],
            "370303/500000"
          ],
          [
            [
              4,
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
              6
            ],
            "-1"
          ],
          [
            [
              1
            ],
            "1"
          ]
        ]
      },
      "86": {
        "origin": {
          "kind": "bound",
          "triangle": "BHQ",
          "direction": "lo",
          "id": 86,
          "value": "20241/125000"
        },
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
              5,
              6
            ],
            "1"
          ],
          [
            [
              1,
              5
            ],
            "-1"
          ],
          [
            [],
            "-20241/125000"
          ]
        ]
      },
      "93": {
        "origin": {
          "kind": "bound",
          "triangle": "BQR",
          "direction": "hi",
          "id": 93,
          "value": "3665327013/6250000000"
        },
        "terms": [
          [
            [],
            "3665327013/6250000000"
          ],
          [
            [
              6,
              9
            ],
            "-1"
          ],
          [
            [
              1,
              9
            ],
            "1"
          ],
          [
            [
              7,
              8
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
        ]
      },
      "96": {
        "origin": {
          "kind": "bound",
          "triangle": "BRS",
          "direction": "lo",
          "id": 96,
          "value": "93/1000"
        },
        "terms": [
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
              11
            ],
            "-1"
          ],
          [
            [
              9,
              10
            ],
            "-1"
          ],
          [
            [
              1,
              9
            ],
            "1"
          ],
          [
            [],
            "-93/1000"
          ]
        ]
      },
      "98": {
        "origin": {
          "kind": "bound",
          "triangle": "CEF",
          "direction": "lo",
          "id": 98,
          "value": "52793/250000"
        },
        "terms": [
          [
            [],
            "197207/250000"
          ],
          [
            [
              2
            ],
            "-1"
          ],
          [
            [
              3,
              4
            ],
            "-1"
          ],
          [
            [
              2,
              3
            ],
            "1"
          ]
        ]
      },
      "102": {
        "origin": {
          "kind": "bound",
          "triangle": "CEQ",
          "direction": "lo",
          "id": 102,
          "value": "93/1000"
        },
        "terms": [
          [
            [
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
              3,
              6
            ],
            "1"
          ],
          [
            [
              2,
              3
            ],
            "-1"
          ],
          [
            [],
            "-93/1000"
          ]
        ]
      },
      "103": {
        "origin": {
          "kind": "bound",
          "triangle": "CEQ",
          "direction": "hi",
          "id": 103,
          "value": "80667/500000"
        },
        "terms": [
          [
            [],
            "80667/500000"
          ],
          [
            [
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
          ]
        ]
      },
      "105": {
        "origin": {
          "kind": "bound",
          "triangle": "CER",
          "direction": "hi",
          "id": 105,
          "value": "2412278029/7812500000"
        },
        "terms": [
          [
            [],
            "2412278029/7812500000"
          ],
          [
            [
              9
            ],
            "-1"
          ],
          [
            [
              2,
              9
            ],
            "1"
          ],
          [
            [
              3,
              8
            ],
            "1"
          ],
          [
            [
              2,
              3
            ],
            "-1"
          ]
        ]
      },
      "107": {
        "origin": {
          "kind": "bound",
          "triangle": "CES",
          "direction": "hi",
          "id": 107,
          "value": "24120654803/62500000000"
        },
        "terms": [
          [
            [],
            "24120654803/62500000000"
          ],
          [
            [
              11
            ],
            "-1"
          ],
          [
            [
              2,
              11
            ],
            "1"
          ],
          [
            [
              3,
              10
            ],
            "1"
          ],
          [
            [
              2,
              3
            ],
            "-1"
          ]
        ]
      },
      "108": {
        "origin": {
          "kind": "bound",
          "triangle": "CFH",
          "direction": "lo",
          "id": 108,
          "value": "93/1000"
        },
        "terms": [
          [
            [
              4,
              5
            ],
            "1"
          ],
          [
            [
              2,
              5
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
            "-93/1000"
          ]
        ]
      },
      "112": {
        "origin": {
          "kind": "bound",
          "triangle": "CFR",
          "direction": "lo",
          "id": 112,
          "value": "325111/1000000"
        },
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
              2,
              9
            ],
            "1"
          ],
          [
            [
              8
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
            "-325111/1000000"
          ]
        ]
      },
      "113": {
        "origin": {
          "kind": "bound",
          "triangle": "CFR",
          "direction": "hi",
          "id": 113,
          "value": "108297/125000"
        },
        "terms": [
          [
            [],
            "108297/125000"
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
              9
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
              2
            ],
            "1"
          ]
        ]
      },
      "118": {
        "origin": {
          "kind": "bound",
          "triangle": "CHR",
          "direction": "lo",
          "id": 118,
          "value": "388269/1000000"
        },
        "terms": [
          [
            [
              2,
              9
            ],
            "1"
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
              2,
              5
            ],
            "-1"
          ],
          [
            [],
            "-388269/1000000"
          ]
        ]
      },
      "119": {
        "origin": {
          "kind": "bound",
          "triangle": "CHR",
          "direction": "hi",
          "id": 119,
          "value": "964547866313/1000000000000"
        },
        "terms": [
          [
            [],
            "964547866313/1000000000000"
          ],
          [
            [
              2,
              9
            ],
            "-1"
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
              2,
              5
            ],
            "1"
          ]
        ]
      },
      "122": {
        "origin": {
          "kind": "bound",
          "triangle": "CQR",
          "direction": "lo",
          "id": 122,
          "value": "93/1000"
        },
        "terms": [
          [
            [
              6,
              9
            ],
            "1"
          ],
          [
            [
              2,
              9
            ],
            "-1"
          ],
          [
            [
              7,
              8
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
            [],
            "-93/1000"
          ]
        ]
      },
      "125": {
        "origin": {
          "kind": "bound",
          "triangle": "CQS",
          "direction": "hi",
          "id": 125,
          "value": "69269936177/200000000000"
        },
        "terms": [
          [
            [],
            "69269936177/200000000000"
          ],
          [
            [
              6,
              11
            ],
            "-1"
          ],
          [
            [
              2,
              11
            ],
            "1"
          ],
          [
            [
              7,
              10
            ],
            "1"
          ],
          [
            [
              2,
              7
            ],
            "-1"
          ]
        ]
      },
      "126": {
        "origin": {
          "kind": "bound",
          "triangle": "CRS",
          "direction": "lo",
          "id": 126,
          "value": "93/1000"
        },
        "terms": [
          [
            [
              8,
              11
            ],
            "1"
          ],
          [
            [
              2,
              11
            ],
            "-1"
          ],
          [
            [
              9,
              10
            ],
            "-1"
          ],
          [
            [
              2,
              9
            ],
            "1"
          ],
          [
            [],
            "-93/1000"
          ]
        ]
      },
      "128": {
        "origin": {
          "kind": "bound",
          "triangle": "EFH",
          "direction": "lo",
          "id": 128,
          "value": "96909/1000000"
        },
        "terms": [
          [
            [
              4,
              5
            ],
            "1"
          ],
          [
            [
              3,
              4
            ],
            "-1"
          ],
          [
            [
              5
            ],
            "-1"
          ],
          [
            [],
            "903091/1000000"
          ]
        ]
      },
      "131": {
        "origin": {
          "kind": "bound",
          "triangle": "EFQ",
          "direction": "hi",
          "id": 131,
          "value": "60405559/125000000"
        },
        "terms": [
          [
            [],
            "-64594441/125000000"
          ],
          [
            [
              4,
              7
            ],
            "-1"
          ],
          [
            [
              3,
              4
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
              6
            ],
            "1"
          ],
          [
            [
              3,
              6
            ],
            "-1"
          ]
        ]
      },
      "134": {
        "origin": {
          "kind": "bound",
          "triangle": "EFS",
          "direction": "lo",
          "id": 134,
          "value": "93/1000"
        },
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
              3,
              4
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
              10
            ],
            "1"
          ],
          [
            [],
            "-1093/1000"
          ],
          [
            [
              3,
              10
            ],
            "-1"
          ]
        ]
      },
      "139": {
        "origin": {
          "kind": "bound",
          "triangle": "EHR",
          "direction": "hi",
          "id": 139,
          "value": "1393943201/3125000000"
        },
        "terms": [
          [
            [],
            "1393943201/3125000000"
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
              8
            ],
            "-1"
          ],
          [
            [
              5
            ],
            "1"
          ],
          [
            [
              3,
              8
            ],
            "1"
          ]
        ]
      },
      "140": {
        "origin": {
          "kind": "bound",
          "triangle": "EHS",
          "direction": "lo",
          "id": 140,
          "value": "50133/500000"
        },
        "terms": [
          [
            [
              11
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
              5
            ],
            "-1"
          ],
          [
            [
              3,
              10
            ],
            "-1"
          ],
          [
            [],
            "-50133/500000"
          ]
        ]
      },
      "141": {
        "origin": {
          "kind": "bound",
          "triangle": "EHS",
          "direction": "hi",
          "id": 141,
          "value": "130031/500000"
        },
        "terms": [
          [
            [],
            "130031/500000"
          ],
          [
            [
              11
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
              5
            ],
            "1"
          ],
          [
            [
              3,
              10
            ],
            "1"
          ]
        ]
      },
      "142": {
        "origin": {
          "kind": "bound",
          "triangle": "EQR",
          "direction": "lo",
          "id": 142,
          "value": "93/1000"
        },
        "terms": [
          [
            [
              6,
              9
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
              9
            ],
            "1"
          ],
          [
            [
              7,
              8
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
              3,
              8
            ],
            "-1"
          ],
          [
            [],
            "-93/1000"
          ]
        ]
      },
      "144": {
        "origin": {
          "kind": "bound",
          "triangle": "EQS",
          "direction": "lo",
          "id": 144,
          "value": "5031/50000"
        },
        "terms": [
          [
            [
              6,
              11
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
              11
            ],
            "1"
          ],
          [
            [
              7,
              10
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
              3,
              10
            ],
            "-1"
          ],
          [
            [],
            "-5031/50000"
          ]
        ]
      },
      "145": {
        "origin": {
          "kind": "bound",
          "triangle": "EQS",
          "direction": "hi",
          "id": 145,
          "value": "26457844647/125000000000"
        },
        "terms": [
          [
            [],
            "26457844647/125000000000"
          ],
          [
            [
              6,
              11
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
              11
            ],
            "-1"
          ],
          [
            [
              7,
              10
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
              3,
              10
            ],
            "1"
          ]
        ]
      },
      "146": {
        "origin": {
          "kind": "bound",
          "triangle": "ERS",
          "direction": "lo",
          "id": 146,
          "value": "93/1000"
        },
        "terms": [
          [
            [
              8,
              11
            ],
            "1"
          ],
          [
            [
              3,
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
            [
              9,
              10
            ],
            "-1"
          ],
          [
            [
              9
            ],
            "1"
          ],
          [
            [
              3,
              10
            ],
            "1"
          ],
          [
            [],
            "-93/1000"
          ]
        ]
      },
      "147": {
        "origin": {
          "kind": "bound",
          "triangle": "ERS",
          "direction": "hi",
          "id": 147,
          "value": "39152570883/250000000000"
        },
        "terms": [
          [
            [],
            "39152570883/250000000000"
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
              3,
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
            [
              9,
              10
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
              3,
              10
            ],
            "-1"
          ]
        ]
      },
      "149": {
        "origin": {
          "kind": "bound",
          "triangle": "FHQ",
          "direction": "hi",
          "id": 149,
          "value": "392412190391/1000000000000"
        },
        "terms": [
          [
            [],
            "392412190391/1000000000000"
          ],
          [
            [
              4,
              7
            ],
            "1"
          ],
          [
            [
              5,
              6
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
              6
            ],
            "-1"
          ]
        ]
      },
      "150": {
        "origin": {
          "kind": "bound",
          "triangle": "FHR",
          "direction": "lo",
          "id": 150,
          "value": "93/1000"
        },
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
              5,
              8
            ],
            "-1"
          ],
          [
            [
              4,
              5
            ],
            "1"
          ],
          [
            [
              8
            ],
            "1"
          ],
          [
            [],
            "-93/1000"
          ]
        ]
      },
      "151": {
        "origin": {
          "kind": "bound",
          "triangle": "FHR",
          "direction": "hi",
          "id": 151,
          "value": "2839419393/15625000000"
        },
        "terms": [
          [
            [],
            "2839419393/15625000000"
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
          ]
        ]
      },
      "152": {
        "origin": {
          "kind": "bound",
          "triangle": "FHS",
          "direction": "lo",
          "id": 152,
          "value": "93/1000"
        },
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
              5,
              10
            ],
            "-1"
          ],
          [
            [
              4,
              5
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
            [],
            "-93/1000"
          ]
        ]
      },
      "158": {
        "origin": {
          "kind": "bound",
          "triangle": "FRS",
          "direction": "lo",
          "id": 158,
          "value": "93/1000"
        },
        "terms": [
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
              4,
              11
            ],
            "1"
          ],
          [
            [
              9,
              10
            ],
            "1"
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
              10
            ],
            "-1"
          ],
          [
            [],
            "-93/1000"
          ]
        ]
      },
      "159": {
        "origin": {
          "kind": "bound",
          "triangle": "FRS",
          "direction": "hi",
          "id": 159,
          "value": "4313/25000"
        },
        "terms": [
          [
            [],
            "4313/25000"
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
            [
              9,
              10
            ],
            "-1"
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
              10
            ],
            "1"
          ]
        ]
      },
      "164": {
        "origin": {
          "kind": "bound",
          "triangle": "HRS",
          "direction": "lo",
          "id": 164,
          "value": "93/1000"
        },
        "terms": [
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
              9,
              10
            ],
            "1"
          ],
          [
            [
              5,
              10
            ],
            "-1"
          ],
          [
            [],
            "-93/1000"
          ]
        ]
      },
      "166": {
        "origin": {
          "kind": "bound",
          "triangle": "QRS",
          "direction": "lo",
          "id": 166,
          "value": "93/1000"
        },
        "terms": [
          [
            [
              8,
              11
            ],
            "1"
          ],
          [
            [
              7,
              8
            ],
            "-1"
          ],
          [
            [
              6,
              11
            ],
            "-1"
          ],
          [
            [
              9,
              10
            ],
            "-1"
          ],
          [
            [
              6,
              9
            ],
            "1"
          ],
          [
            [
              7,
              10
            ],
            "1"
          ],
          [
            [],
            "-93/1000"
          ]
        ]
      },
      "167": {
        "origin": {
          "kind": "bound",
          "triangle": "QRS",
          "direction": "hi",
          "id": 167,
          "value": "5282677049/20000000000"
        },
        "terms": [
          [
            [],
            "5282677049/20000000000"
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
              7,
              8
            ],
            "1"
          ],
          [
            [
              6,
              11
            ],
            "1"
          ],
          [
            [
              9,
              10
            ],
            "1"
          ],
          [
            [
              6,
              9
            ],
            "-1"
          ],
          [
            [
              7,
              10
            ],
            "-1"
          ]
        ]
      },
      "168": {
        "origin": {
          "kind": "coordinate",
          "variable": "a",
          "direction": "lo",
          "value": "1243/6250"
        },
        "terms": [
          [
            [
              0
            ],
            "1"
          ],
          [
            [],
            "-1243/6250"
          ]
        ]
      },
      "170": {
        "origin": {
          "kind": "coordinate",
          "variable": "b",
          "direction": "lo",
          "value": "32019/250000"
        },
        "terms": [
          [
            [
              1
            ],
            "1"
          ],
          [
            [],
            "-32019/250000"
          ]
        ]
      },
      "171": {
        "origin": {
          "kind": "coordinate",
          "variable": "b",
          "direction": "hi",
          "value": "15423/100000"
        },
        "terms": [
          [
            [],
            "15423/100000"
          ],
          [
            [
              1
            ],
            "-1"
          ]
        ]
      },
      "173": {
        "origin": {
          "kind": "coordinate",
          "variable": "c",
          "direction": "hi",
          "value": "595693/1000000"
        },
        "terms": [
          [
            [],
            "595693/1000000"
          ],
          [
            [
              2
            ],
            "-1"
          ]
        ]
      },
      "174": {
        "origin": {
          "kind": "coordinate",
          "variable": "e",
          "direction": "lo",
          "value": "552517/1000000"
        },
        "terms": [
          [
            [
              3
            ],
            "1"
          ],
          [
            [],
            "-552517/1000000"
          ]
        ]
      },
      "175": {
        "origin": {
          "kind": "coordinate",
          "variable": "e",
          "direction": "hi",
          "value": "677969/1000000"
        },
        "terms": [
          [
            [],
            "677969/1000000"
          ],
          [
            [
              3
            ],
            "-1"
          ]
        ]
      },
      "176": {
        "origin": {
          "kind": "coordinate",
          "variable": "f",
          "direction": "lo",
          "value": "32019/250000"
        },
        "terms": [
          [
            [
              4
            ],
            "1"
          ],
          [
            [],
            "-32019/250000"
          ]
        ]
      },
      "179": {
        "origin": {
          "kind": "coordinate",
          "variable": "h",
          "direction": "hi",
          "value": "925007/1000000"
        },
        "terms": [
          [
            [],
            "925007/1000000"
          ],
          [
            [
              5
            ],
            "-1"
          ]
        ]
      },
      "180": {
        "origin": {
          "kind": "coordinate",
          "variable": "u",
          "direction": "lo",
          "value": "199139/250000"
        },
        "terms": [
          [
            [
              6
            ],
            "1"
          ],
          [
            [],
            "-199139/250000"
          ]
        ]
      },
      "181": {
        "origin": {
          "kind": "coordinate",
          "variable": "u",
          "direction": "hi",
          "value": "434341/500000"
        },
        "terms": [
          [
            [],
            "434341/500000"
          ],
          [
            [
              6
            ],
            "-1"
          ]
        ]
      },
      "182": {
        "origin": {
          "kind": "coordinate",
          "variable": "v",
          "direction": "lo",
          "value": "1243/6250"
        },
        "terms": [
          [
            [
              7
            ],
            "1"
          ],
          [
            [],
            "-1243/6250"
          ]
        ]
      },
      "183": {
        "origin": {
          "kind": "coordinate",
          "variable": "v",
          "direction": "hi",
          "value": "308513/1000000"
        },
        "terms": [
          [
            [],
            "308513/1000000"
          ],
          [
            [
              7
            ],
            "-1"
          ]
        ]
      },
      "184": {
        "origin": {
          "kind": "coordinate",
          "variable": "r",
          "direction": "lo",
          "value": "180637/200000"
        },
        "terms": [
          [
            [
              8
            ],
            "1"
          ],
          [
            [],
            "-180637/200000"
          ]
        ]
      },
      "185": {
        "origin": {
          "kind": "coordinate",
          "variable": "r",
          "direction": "hi",
          "value": "248613/250000"
        },
        "terms": [
          [
            [],
            "248613/250000"
          ],
          [
            [
              8
            ],
            "-1"
          ]
        ]
      },
      "186": {
        "origin": {
          "kind": "coordinate",
          "variable": "w",
          "direction": "lo",
          "value": "437673/500000"
        },
        "terms": [
          [
            [
              9
            ],
            "1"
          ],
          [
            [],
            "-437673/500000"
          ]
        ]
      },
      "187": {
        "origin": {
          "kind": "coordinate",
          "variable": "w",
          "direction": "hi",
          "value": "1"
        },
        "terms": [
          [
            [],
            "1"
          ],
          [
            [
              9
            ],
            "-1"
          ]
        ]
      },
      "188": {
        "origin": {
          "kind": "coordinate",
          "variable": "j",
          "direction": "lo",
          "value": "80879/125000"
        },
        "terms": [
          [
            [
              10
            ],
            "1"
          ],
          [
            [],
            "-80879/125000"
          ]
        ]
      },
      "189": {
        "origin": {
          "kind": "coordinate",
          "variable": "j",
          "direction": "hi",
          "value": "738299/1000000"
        },
        "terms": [
          [
            [],
            "738299/1000000"
          ],
          [
            [
              10
            ],
            "-1"
          ]
        ]
      },
      "190": {
        "origin": {
          "kind": "coordinate",
          "variable": "k",
          "direction": "lo",
          "value": "396743/500000"
        },
        "terms": [
          [
            [
              11
            ],
            "1"
          ],
          [
            [],
            "-396743/500000"
          ]
        ]
      },
      "191": {
        "origin": {
          "kind": "coordinate",
          "variable": "k",
          "direction": "hi",
          "value": "177433/200000"
        },
        "terms": [
          [
            [],
            "177433/200000"
          ],
          [
            [
              11
            ],
            "-1"
          ]
        ]
      },
      "194": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "AC_ABE_ABE_0",
            "why": [
              "anchor-cap",
              "ABE",
              "ABE",
              0,
              []
            ],
            "terms": [
              [
                [],
                "-93/1000"
              ],
              [
                [
                  3
                ],
                "1/1"
              ]
            ]
          },
          "factorIndex": 4
        },
        "terms": [
          [
            [],
            "-93/1000"
          ],
          [
            [
              3
            ],
            "1"
          ]
        ]
      },
      "196": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "AC_ABH_ABH_0",
            "why": [
              "anchor-cap",
              "ABH",
              "ABH",
              0,
              []
            ],
            "terms": [
              [
                [],
                "-93/1000"
              ],
              [
                [
                  1
                ],
                "1/1"
              ]
            ]
          },
          "factorIndex": 8
        },
        "terms": [
          [
            [],
            "-93/1000"
          ],
          [
            [
              1
            ],
            "1"
          ]
        ]
      },
      "198": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "AC_ACF_ACF_0",
            "why": [
              "anchor-cap",
              "ACF",
              "ACF",
              0,
              []
            ],
            "terms": [
              [
                [],
                "-93/1000"
              ],
              [
                [
                  2
                ],
                "1/1"
              ]
            ]
          },
          "factorIndex": 15
        },
        "terms": [
          [
            [],
            "-93/1000"
          ],
          [
            [
              2
            ],
            "1"
          ]
        ]
      },
      "199": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "AC_AEF_AEF_0",
            "why": [
              "anchor-cap",
              "AEF",
              "AEF",
              0,
              []
            ],
            "terms": [
              [
                [],
                "907/1000"
              ],
              [
                [
                  0
                ],
                "-1/1"
              ]
            ]
          },
          "factorIndex": 21
        },
        "terms": [
          [
            [],
            "907/1000"
          ],
          [
            [
              0
            ],
            "-1"
          ]
        ]
      },
      "200": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "AC_BCH_BCH_0",
            "why": [
              "anchor-cap",
              "BCH",
              "BCH",
              0,
              []
            ],
            "terms": [
              [
                [],
                "-93/1000"
              ],
              [
                [
                  5
                ],
                "1/1"
              ]
            ]
          },
          "factorIndex": 37
        },
        "terms": [
          [
            [],
            "-93/1000"
          ],
          [
            [
              5
            ],
            "1"
          ]
        ]
      },
      "202": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "AC_CEF_CEF_0",
            "why": [
              "anchor-cap",
              "CEF",
              "CEF",
              0,
              []
            ],
            "terms": [
              [
                [],
                "907/1000"
              ],
              [
                [
                  4
                ],
                "-1/1"
              ]
            ]
          },
          "factorIndex": 58
        },
        "terms": [
          [
            [],
            "907/1000"
          ],
          [
            [
              4
            ],
            "-1"
          ]
        ]
      },
      "203": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "AC_EFH_EFH_0",
            "why": [
              "anchor-cap",
              "EFH",
              "EFH",
              0,
              []
            ],
            "terms": [
              [
                [],
                "907/1000"
              ],
              [
                [
                  3
                ],
                "-1/1"
              ]
            ]
          },
          "factorIndex": 74
        },
        "terms": [
          [
            [],
            "907/1000"
          ],
          [
            [
              3
            ],
            "-1"
          ]
        ]
      },
      "209": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "OCT_CAP_RFH",
            "why": [
              "octagon-ear-cap",
              "ABCQERFH",
              "RFH",
              [
                "ERF",
                "S"
              ]
            ],
            "terms": [
              [
                [],
                "248858189/1000000000"
              ],
              [
                [
                  4,
                  5
                ],
                "-1/1"
              ],
              [
                [
                  4,
                  9
                ],
                "1/1"
              ],
              [
                [
                  5,
                  8
                ],
                "1/1"
              ],
              [
                [
                  8
                ],
                "-1/1"
              ]
            ]
          },
          "factorIndex": 99
        },
        "terms": [
          [
            [],
            "248858189/1000000000"
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
              4,
              9
            ],
            "1"
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
              8
            ],
            "-1"
          ]
        ]
      },
      "212": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "OCT_ROOT_BUDGET",
            "why": [
              "octagon-ear-root-budget",
              "ABCQERFH",
              [
                {
                  "ear": "HAB",
                  "occupants": [],
                  "floor": "93/1000",
                  "ceiling": "11199056721/100000000000",
                  "beta": "90613/200000",
                  "gamma": "241007/500000",
                  "sixChain": null,
                  "sixCap": null
                },
                {
                  "ear": "ABC",
                  "occupants": [],
                  "floor": "93/1000",
                  "ceiling": "37644571351/250000000000",
                  "beta": "90613/200000",
                  "gamma": "532011/1000000",
                  "sixChain": null,
                  "sixCap": null
                },
                {
                  "ear": "BCQ",
                  "occupants": [],
                  "floor": "93/1000",
                  "ceiling": "8963/62500",
                  "beta": "90613/200000",
                  "gamma": "523429/1000000",
                  "sixChain": "BCQERF",
                  "sixCap": "8963/62500"
                },
                {
                  "ear": "CQE",
                  "occupants": [],
                  "floor": "93/1000",
                  "ceiling": "80667/500000",
                  "beta": "90613/200000",
                  "gamma": "136097/250000",
                  "sixChain": "BCQERF",
                  "sixCap": "80667/500000"
                },
                {
                  "ear": "QER",
                  "occupants": [],
                  "floor": "93/1000",
                  "ceiling": "125275097607/1000000000000",
                  "beta": "90613/200000",
                  "gamma": "250183/500000",
                  "sixChain": "BCQERF",
                  "sixCap": "295779/2000000"
                },
                {
                  "ear": "ERF",
                  "occupants": [
                    "S"
                  ],
                  "floor": "279/1000",
                  "ceiling": "8963/25000",
                  "beta": "653433/1000000",
                  "gamma": "355201/500000",
                  "sixChain": "BCQERF",
                  "sixCap": "8963/25000"
                },
                {
                  "ear": "RFH",
                  "occupants": [],
                  "floor": "93/1000",
                  "ceiling": "2839419393/15625000000",
                  "beta": "90613/200000",
                  "gamma": "566417/1000000",
                  "sixChain": null,
                  "sixCap": null
                },
                {
                  "ear": "FHA",
                  "occupants": [],
                  "floor": "93/1000",
                  "ceiling": "248858189/1000000000",
                  "beta": "90613/200000",
                  "gamma": "629/1000",
                  "sixChain": null,
                  "sixCap": null
                }
              ],
              [
                "ERF",
                "S"
              ]
            ],
            "terms": [
              [
                [],
                "284171051834397979409429761823285485212056351777144997658369439/143892771750947010603251127072808993020754860674909640772000000"
              ],
              [
                [
                  0,
                  1
                ],
                "79151577578026400000/27336107470030600071"
              ],
              [
                [
                  1,
                  5
                ],
                "-2894900000/1899056721"
              ],
              [
                [
                  0,
                  2
                ],
                "-19736500000/14394571351"
              ],
              [
                [
                  2,
                  7
                ],
                "-196076320/71762089"
              ],
              [
                [
                  1,
                  7
                ],
                "17591/12602"
              ],
              [
                [
                  3,
                  6
                ],
                "-686636141418229/245054057764082"
              ],
              [
                [
                  2,
                  3
                ],
                "30441/22778"
              ],
              [
                [
                  7
                ],
                "686636141418229/245054057764082"
              ],
              [
                [
                  9
                ],
                "-1866685185191061/855505253902880"
              ],
              [
                [
                  6,
                  9
                ],
                "15767000000/10758365869"
              ],
              [
                [
                  3,
                  8
                ],
                "1866685185191061/855505253902880"
              ],
              [
                [
                  7,
                  8
                ],
                "-15767000000/10758365869"
              ],
              [
                [
                  8
                ],
                "-73271888424939/36746043377120"
              ],
              [
                [
                  4,
                  9
                ],
                "73271888424939/36746043377120"
              ],
              [
                [
                  3,
                  4
                ],
                "-56969/79520"
              ],
              [
                [
                  4,
                  5
                ],
                "-173314013008360000/72021777837944759"
              ],
              [
                [
                  5,
                  8
                ],
                "590375000/462098131"
              ],
              [
                [
                  0,
                  4
                ],
                "175935000/155858189"
              ]
            ]
          },
          "factorIndex": 102
        },
        "terms": [
          [
            [],
            "284171051834397979409429761823285485212056351777144997658369439/143892771750947010603251127072808993020754860674909640772000000"
          ],
          [
            [
              0,
              1
            ],
            "79151577578026400000/27336107470030600071"
          ],
          [
            [
              1,
              5
            ],
            "-2894900000/1899056721"
          ],
          [
            [
              0,
              2
            ],
            "-19736500000/14394571351"
          ],
          [
            [
              2,
              7
            ],
            "-196076320/71762089"
          ],
          [
            [
              1,
              7
            ],
            "17591/12602"
          ],
          [
            [
              3,
              6
            ],
            "-686636141418229/245054057764082"
          ],
          [
            [
              2,
              3
            ],
            "30441/22778"
          ],
          [
            [
              7
            ],
            "686636141418229/245054057764082"
          ],
          [
            [
              9
            ],
            "-1866685185191061/855505253902880"
          ],
          [
            [
              6,
              9
            ],
            "15767000000/10758365869"
          ],
          [
            [
              3,
              8
            ],
            "1866685185191061/855505253902880"
          ],
          [
            [
              7,
              8
            ],
            "-15767000000/10758365869"
          ],
          [
            [
              8
            ],
            "-73271888424939/36746043377120"
          ],
          [
            [
              4,
              9
            ],
            "73271888424939/36746043377120"
          ],
          [
            [
              3,
              4
            ],
            "-56969/79520"
          ],
          [
            [
              4,
              5
            ],
            "-173314013008360000/72021777837944759"
          ],
          [
            [
              5,
              8
            ],
            "590375000/462098131"
          ],
          [
            [
              0,
              4
            ],
            "175935000/155858189"
          ]
        ]
      },
      "217": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "RS_GAP_HA",
            "why": [
              "core-rs-cut-gap",
              "HA"
            ],
            "terms": [
              [
                [
                  5,
                  8
                ],
                "1/1"
              ],
              [
                [
                  5,
                  10
                ],
                "-1/1"
              ],
              [
                [
                  0,
                  8
                ],
                "-1/1"
              ],
              [
                [
                  0,
                  10
                ],
                "1/1"
              ],
              [
                [],
                "-93/500"
              ]
            ]
          },
          "factorIndex": 107
        },
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
              5,
              10
            ],
            "-1"
          ],
          [
            [
              0,
              8
            ],
            "-1"
          ],
          [
            [
              0,
              10
            ],
            "1"
          ],
          [
            [],
            "-93/500"
          ]
        ]
      },
      "218": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "RS_BARY_GAP_HA",
            "why": [
              "core-rs-bary-gap",
              "HA",
              "2325/8963",
              "ERF",
              "S",
              "8963/25000"
            ],
            "terms": [
              [
                [
                  5,
                  8
                ],
                "6638/8963"
              ],
              [
                [
                  4,
                  5
                ],
                "-4313/8963"
              ],
              [
                [
                  5
                ],
                "-2325/8963"
              ],
              [
                [
                  0,
                  8
                ],
                "-6638/8963"
              ],
              [
                [
                  0,
                  4
                ],
                "4313/8963"
              ],
              [
                [
                  0
                ],
                "2325/8963"
              ],
              [
                [],
                "-93/500"
              ]
            ]
          },
          "factorIndex": 108
        },
        "terms": [
          [
            [
              5,
              8
            ],
            "6638/8963"
          ],
          [
            [
              4,
              5
            ],
            "-4313/8963"
          ],
          [
            [
              5
            ],
            "-2325/8963"
          ],
          [
            [
              0,
              8
            ],
            "-6638/8963"
          ],
          [
            [
              0,
              4
            ],
            "4313/8963"
          ],
          [
            [
              0
            ],
            "2325/8963"
          ],
          [
            [],
            "-93/500"
          ]
        ]
      },
      "219": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "ha",
            "why": [
              "contact-order",
              "ha"
            ],
            "terms": [
              [
                [
                  5
                ],
                "1/1"
              ],
              [
                [
                  0
                ],
                "-1/1"
              ]
            ]
          },
          "factorIndex": 109
        },
        "terms": [
          [
            [
              5
            ],
            "1"
          ],
          [
            [
              0
            ],
            "-1"
          ]
        ]
      },
      "220": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "ea",
            "why": [
              "contact-order",
              "ea"
            ],
            "terms": [
              [
                [
                  3
                ],
                "1/1"
              ],
              [
                [
                  0
                ],
                "-1/1"
              ]
            ]
          },
          "factorIndex": 110
        },
        "terms": [
          [
            [
              3
            ],
            "1"
          ],
          [
            [
              0
            ],
            "-1"
          ]
        ]
      },
      "221": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "he",
            "why": [
              "contact-order",
              "he"
            ],
            "terms": [
              [
                [
                  5
                ],
                "1/1"
              ],
              [
                [
                  3
                ],
                "-1/1"
              ]
            ]
          },
          "factorIndex": 111
        },
        "terms": [
          [
            [
              5
            ],
            "1"
          ],
          [
            [
              3
            ],
            "-1"
          ]
        ]
      },
      "222": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "fb",
            "why": [
              "contact-order",
              "fb"
            ],
            "terms": [
              [
                [
                  4
                ],
                "1/1"
              ],
              [
                [
                  1
                ],
                "-1/1"
              ]
            ]
          },
          "factorIndex": 112
        },
        "terms": [
          [
            [
              4
            ],
            "1"
          ],
          [
            [
              1
            ],
            "-1"
          ]
        ]
      },
      "225": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "top-area",
            "why": [
              "top-hull",
              "-"
            ],
            "terms": [
              [
                [],
                "721/1000"
              ],
              [
                [
                  4
                ],
                "-1/1"
              ],
              [
                [
                  3
                ],
                "-1/1"
              ],
              [
                [
                  3,
                  4
                ],
                "1/1"
              ]
            ]
          },
          "factorIndex": 115
        },
        "terms": [
          [
            [],
            "721/1000"
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
            "-1"
          ],
          [
            [
              3,
              4
            ],
            "1"
          ]
        ]
      },
      "228": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "right-y",
            "why": [
              "right-clearance",
              "Q",
              "y"
            ],
            "terms": [
              [
                [
                  3
                ],
                "1/1"
              ],
              [
                [
                  7
                ],
                "-1/1"
              ],
              [
                [],
                "-93/1000"
              ]
            ]
          },
          "factorIndex": 118
        },
        "terms": [
          [
            [
              3
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
            "-93/1000"
          ]
        ]
      },
      "231": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "WBARY_RS_0",
            "why": [
              "weighted-barycentric-core-width",
              "R",
              "S",
              [
                "1/1",
                "1/1",
                "1/1"
              ],
              "8963/2325",
              0,
              [
                "BCQERF",
                "ERF",
                "S",
                "8963/25000"
              ]
            ],
            "terms": [
              [
                [
                  10
                ],
                "8963/2325"
              ],
              [
                [],
                "-1/1"
              ],
              [
                [
                  4
                ],
                "-4313/2325"
              ],
              [
                [
                  8
                ],
                "-1/1"
              ]
            ]
          },
          "factorIndex": 121
        },
        "terms": [
          [
            [
              10
            ],
            "8963/2325"
          ],
          [
            [],
            "-1"
          ],
          [
            [
              4
            ],
            "-4313/2325"
          ],
          [
            [
              8
            ],
            "-1"
          ]
        ]
      },
      "233": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "WBARY_RS_2",
            "why": [
              "weighted-barycentric-core-width",
              "R",
              "S",
              [
                "1/1",
                "1/1",
                "1/1"
              ],
              "8963/2325",
              2,
              [
                "BCQERF",
                "ERF",
                "S",
                "8963/25000"
              ]
            ],
            "terms": [
              [
                [
                  11
                ],
                "8963/2325"
              ],
              [
                [],
                "-1/1"
              ],
              [
                [
                  3
                ],
                "-4313/2325"
              ],
              [
                [
                  9
                ],
                "-1/1"
              ]
            ]
          },
          "factorIndex": 123
        },
        "terms": [
          [
            [
              11
            ],
            "8963/2325"
          ],
          [
            [],
            "-1"
          ],
          [
            [
              3
            ],
            "-4313/2325"
          ],
          [
            [
              9
            ],
            "-1"
          ]
        ]
      },
      "234": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "WBARY_RS_3",
            "why": [
              "weighted-barycentric-core-width",
              "R",
              "S",
              [
                "1/1",
                "1/1",
                "1/1"
              ],
              "8963/2325",
              3,
              [
                "BCQERF",
                "ERF",
                "S",
                "8963/25000"
              ]
            ],
            "terms": [
              [
                [],
                "4313/2325"
              ],
              [
                [
                  3
                ],
                "1/1"
              ],
              [
                [
                  9
                ],
                "1/1"
              ],
              [
                [
                  11
                ],
                "-8963/2325"
              ]
            ]
          },
          "factorIndex": 124
        },
        "terms": [
          [
            [],
            "4313/2325"
          ],
          [
            [
              3
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
              11
            ],
            "-8963/2325"
          ]
        ]
      },
      "345": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "SUP_ABE_AEQ_ABQ",
            "why": [
              "support-envelope",
              [
                "pentagon-ear-box",
                "ABCQE",
                [
                  {
                    "ear": "ABC",
                    "occupants": [],
                    "lower": "93/1000",
                    "root": "304959/1000000",
                    "side": null
                  },
                  {
                    "ear": "BCQ",
                    "occupants": [],
                    "lower": "93/1000",
                    "root": "304959/1000000",
                    "side": null
                  },
                  {
                    "ear": "CQE",
                    "occupants": [],
                    "lower": "93/1000",
                    "root": "304959/1000000",
                    "side": null
                  }
                ],
                "1023/1000"
              ],
              "ABE",
              "AEQ",
              "ABQ",
              "37691124811/100000000000"
            ],
            "terms": [
              [
                [
                  7
                ],
                "-37691124811/100000000000"
              ],
              [
                [
                  0
                ],
                "-64608875189/100000000000"
              ],
              [
                [
                  3,
                  6
                ],
                "37691124811/100000000000"
              ],
              [
                [
                  0,
                  6
                ],
                "64608875189/100000000000"
              ],
              [
                [
                  1,
                  3
                ],
                "-1023/1000"
              ],
              [
                [
                  1,
                  7
                ],
                "1023/1000"
              ]
            ]
          },
          "factorIndex": 235
        },
        "terms": [
          [
            [
              7
            ],
            "-37691124811/100000000000"
          ],
          [
            [
              0
            ],
            "-64608875189/100000000000"
          ],
          [
            [
              3,
              6
            ],
            "37691124811/100000000000"
          ],
          [
            [
              0,
              6
            ],
            "64608875189/100000000000"
          ],
          [
            [
              1,
              3
            ],
            "-1023/1000"
          ],
          [
            [
              1,
              7
            ],
            "1023/1000"
          ]
        ]
      },
      "361": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "SUP_CFH_BCF_BFH",
            "why": [
              "support-envelope",
              [
                "pentagon-ear-box",
                "FHABC",
                [
                  {
                    "ear": "FHA",
                    "occupants": [],
                    "lower": "93/1000",
                    "root": "304959/1000000",
                    "side": null
                  },
                  {
                    "ear": "HAB",
                    "occupants": [],
                    "lower": "93/1000",
                    "root": "304959/1000000",
                    "side": null
                  },
                  {
                    "ear": "ABC",
                    "occupants": [],
                    "lower": "93/1000",
                    "root": "304959/1000000",
                    "side": null
                  }
                ],
                "1023/1000"
              ],
              "CFH",
              "BCF",
              "BFH",
              "51745079393/125000000000"
            ],
            "terms": [
              [
                [
                  2
                ],
                "-76129920607/125000000000"
              ],
              [
                [
                  1
                ],
                "76129920607/125000000000"
              ],
              [
                [
                  2,
                  5
                ],
                "1023/1000"
              ],
              [
                [
                  1,
                  5
                ],
                "-1023/1000"
              ]
            ]
          },
          "factorIndex": 251
        },
        "terms": [
          [
            [
              2
            ],
            "-76129920607/125000000000"
          ],
          [
            [
              1
            ],
            "76129920607/125000000000"
          ],
          [
            [
              2,
              5
            ],
            "1023/1000"
          ],
          [
            [
              1,
              5
            ],
            "-1023/1000"
          ]
        ]
      },
      "393": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "SUP_AQR_CQR_ACR",
            "why": [
              "support-envelope",
              [
                "pentagon-ear-box",
                "RABCQ",
                [
                  {
                    "ear": "RAB",
                    "occupants": [],
                    "lower": "93/1000",
                    "root": "304959/1000000",
                    "side": null
                  },
                  {
                    "ear": "ABC",
                    "occupants": [],
                    "lower": "93/1000",
                    "root": "304959/1000000",
                    "side": null
                  },
                  {
                    "ear": "BCQ",
                    "occupants": [],
                    "lower": "93/1000",
                    "root": "304959/1000000",
                    "side": null
                  }
                ],
                "1023/1000"
              ],
              "AQR",
              "CQR",
              "ACR",
              "17785120887/25000000000"
            ],
            "terms": [
              [
                [
                  6,
                  9
                ],
                "-7789879113/25000000000"
              ],
              [
                [
                  2,
                  9
                ],
                "7789879113/25000000000"
              ],
              [
                [
                  7,
                  8
                ],
                "7789879113/25000000000"
              ],
              [
                [
                  2,
                  7
                ],
                "17785120887/25000000000"
              ],
              [
                [
                  0,
                  6
                ],
                "1023/1000"
              ],
              [
                [
                  0,
                  2
                ],
                "-1023/1000"
              ]
            ]
          },
          "factorIndex": 283
        },
        "terms": [
          [
            [
              6,
              9
            ],
            "-7789879113/25000000000"
          ],
          [
            [
              2,
              9
            ],
            "7789879113/25000000000"
          ],
          [
            [
              7,
              8
            ],
            "7789879113/25000000000"
          ],
          [
            [
              2,
              7
            ],
            "17785120887/25000000000"
          ],
          [
            [
              0,
              6
            ],
            "1023/1000"
          ],
          [
            [
              0,
              2
            ],
            "-1023/1000"
          ]
        ]
      },
      "500": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "SUP_ACE_ACH_CEH",
            "why": [
              "support-envelope",
              [
                "pentagon-ear-box",
                "CERHA",
                [
                  {
                    "ear": "CER",
                    "occupants": [],
                    "lower": "93/1000",
                    "root": "304959/1000000",
                    "side": null
                  },
                  {
                    "ear": "ERH",
                    "occupants": [
                      "S"
                    ],
                    "lower": "279/1000",
                    "root": "132051/250000",
                    "side": null
                  },
                  {
                    "ear": "RHA",
                    "occupants": [
                      "S"
                    ],
                    "lower": "5599747/10282000",
                    "root": "737981/1000000",
                    "side": [
                      "AH-clearance",
                      "R",
                      "180637/200000",
                      "15423/100000"
                    ]
                  }
                ],
                "38570210449/15625000000"
              ],
              "ACE",
              "ACH",
              "CEH",
              "534053093201/1000000000000"
            ],
            "terms": [
              [
                [
                  2,
                  5
                ],
                "-386888075107/200000000000"
              ],
              [
                [
                  0,
                  2
                ],
                "386888075107/200000000000"
              ],
              [
                [
                  0
                ],
                "-38570210449/15625000000"
              ],
              [
                [
                  5
                ],
                "38570210449/15625000000"
              ]
            ]
          },
          "factorIndex": 390
        },
        "terms": [
          [
            [
              2,
              5
            ],
            "-386888075107/200000000000"
          ],
          [
            [
              0,
              2
            ],
            "386888075107/200000000000"
          ],
          [
            [
              0
            ],
            "-38570210449/15625000000"
          ],
          [
            [
              5
            ],
            "38570210449/15625000000"
          ]
        ]
      },
      "627": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "SUP_BCR_BER_BCE",
            "why": [
              "support-envelope",
              [
                "pentagon-ear-box",
                "BCQER",
                [
                  {
                    "ear": "BCQ",
                    "occupants": [],
                    "lower": "93/1000",
                    "root": "304959/1000000",
                    "side": null
                  },
                  {
                    "ear": "CQE",
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
                "1023/1000"
              ],
              "BCR",
              "BER",
              "BCE",
              "467617/1000000"
            ],
            "terms": [
              [
                [
                  9
                ],
                "467617/1000000"
              ],
              [
                [
                  1,
                  9
                ],
                "555383/1000000"
              ],
              [
                [
                  3,
                  8
                ],
                "-467617/1000000"
              ],
              [
                [
                  1,
                  3
                ],
                "-555383/1000000"
              ],
              [
                [
                  2,
                  9
                ],
                "-1023/1000"
              ],
              [
                [
                  2,
                  3
                ],
                "1023/1000"
              ]
            ]
          },
          "factorIndex": 517
        },
        "terms": [
          [
            [
              9
            ],
            "467617/1000000"
          ],
          [
            [
              1,
              9
            ],
            "555383/1000000"
          ],
          [
            [
              3,
              8
            ],
            "-467617/1000000"
          ],
          [
            [
              1,
              3
            ],
            "-555383/1000000"
          ],
          [
            [
              2,
              9
            ],
            "-1023/1000"
          ],
          [
            [
              2,
              3
            ],
            "1023/1000"
          ]
        ]
      },
      "632": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "SUP_BCS_BES_BCE",
            "why": [
              "support-envelope",
              [
                "pentagon-ear-box",
                "BCQES",
                [
                  {
                    "ear": "BCQ",
                    "occupants": [],
                    "lower": "93/1000",
                    "root": "304959/1000000",
                    "side": null
                  },
                  {
                    "ear": "CQE",
                    "occupants": [],
                    "lower": "93/1000",
                    "root": "304959/1000000",
                    "side": null
                  },
                  {
                    "ear": "QES",
                    "occupants": [],
                    "lower": "93/1000",
                    "root": "304959/1000000",
                    "side": null
                  }
                ],
                "1023/1000"
              ],
              "BCS",
              "BES",
              "BCE",
              "82970687161/200000000000"
            ],
            "terms": [
              [
                [
                  11
                ],
                "82970687161/200000000000"
              ],
              [
                [
                  1,
                  11
                ],
                "121629312839/200000000000"
              ],
              [
                [
                  3,
                  10
                ],
                "-82970687161/200000000000"
              ],
              [
                [
                  1,
                  3
                ],
                "-121629312839/200000000000"
              ],
              [
                [
                  2,
                  11
                ],
                "-1023/1000"
              ],
              [
                [
                  2,
                  3
                ],
                "1023/1000"
              ]
            ]
          },
          "factorIndex": 522
        },
        "terms": [
          [
            [
              11
            ],
            "82970687161/200000000000"
          ],
          [
            [
              1,
              11
            ],
            "121629312839/200000000000"
          ],
          [
            [
              3,
              10
            ],
            "-82970687161/200000000000"
          ],
          [
            [
              1,
              3
            ],
            "-121629312839/200000000000"
          ],
          [
            [
              2,
              11
            ],
            "-1023/1000"
          ],
          [
            [
              2,
              3
            ],
            "1023/1000"
          ]
        ]
      },
      "724": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "SUP_CFQ_CFS_CQS",
            "why": [
              "support-envelope",
              [
                "pentagon-ear-box",
                "CQESF",
                [
                  {
                    "ear": "CQE",
                    "occupants": [],
                    "lower": "93/1000",
                    "root": "304959/1000000",
                    "side": null
                  },
                  {
                    "ear": "QES",
                    "occupants": [],
                    "lower": "93/1000",
                    "root": "304959/1000000",
                    "side": null
                  },
                  {
                    "ear": "ESF",
                    "occupants": [],
                    "lower": "93/1000",
                    "root": "304959/1000000",
                    "side": null
                  }
                ],
                "1023/1000"
              ],
              "CFQ",
              "CFS",
              "CQS",
              "106432140257/200000000000"
            ],
            "terms": [
              [
                [
                  4,
                  11
                ],
                "-106432140257/200000000000"
              ],
              [
                [
                  2,
                  11
                ],
                "-98167859743/200000000000"
              ],
              [
                [
                  10
                ],
                "106432140257/200000000000"
              ],
              [
                [
                  2
                ],
                "98167859743/200000000000"
              ],
              [
                [
                  4,
                  7
                ],
                "1023/1000"
              ],
              [
                [
                  6
                ],
                "-1023/1000"
              ],
              [
                [
                  6,
                  11
                ],
                "1023/1000"
              ],
              [
                [
                  7,
                  10
                ],
                "-1023/1000"
              ]
            ]
          },
          "factorIndex": 614
        },
        "terms": [
          [
            [
              4,
              11
            ],
            "-106432140257/200000000000"
          ],
          [
            [
              2,
              11
            ],
            "-98167859743/200000000000"
          ],
          [
            [
              10
            ],
            "106432140257/200000000000"
          ],
          [
            [
              2
            ],
            "98167859743/200000000000"
          ],
          [
            [
              4,
              7
            ],
            "1023/1000"
          ],
          [
            [
              6
            ],
            "-1023/1000"
          ],
          [
            [
              6,
              11
            ],
            "1023/1000"
          ],
          [
            [
              7,
              10
            ],
            "-1023/1000"
          ]
        ]
      },
      "743": {
        "origin": {
          "kind": "physical",
          "factor": {
            "name": "SUP_EQS_EHQ_EHS",
            "why": [
              "support-envelope",
              [
                "pentagon-ear-box",
                "ESFHQ",
                [
                  {
                    "ear": "ESF",
                    "occupants": [],
                    "lower": "93/1000",
                    "root": "304959/1000000",
                    "side": null
                  },
                  {
                    "ear": "SFH",
                    "occupants": [],
                    "lower": "93/1000",
                    "root": "304959/1000000",
                    "side": null
                  },
                  {
                    "ear": "FHQ",
                    "occupants": [],
                    "lower": "93/1000",
                    "root": "304959/1000000",
                    "side": null
                  }
                ],
                "1023/1000"
              ],
              "EQS",
              "EHQ",
              "EHS",
              "26457844647/125000000000"
            ],
            "terms": [
              [
                [
                  7
                ],
                "101417155353/125000000000"
              ],
              [
                [
                  5,
                  6
                ],
                "-26457844647/125000000000"
              ],
              [
                [
                  5
                ],
                "-101417155353/125000000000"
              ],
              [
                [
                  3,
                  6
                ],
                "-101417155353/125000000000"
              ],
              [
                [
                  6,
                  11
                ],
                "1023/1000"
              ],
              [
                [
                  7,
                  10
                ],
                "-1023/1000"
              ],
              [
                [
                  5,
                  10
                ],
                "1023/1000"
              ]
            ]
          },
          "factorIndex": 633
        },
        "terms": [
          [
            [
              7
            ],
            "101417155353/125000000000"
          ],
          [
            [
              5,
              6
            ],
            "-26457844647/125000000000"
          ],
          [
            [
              5
            ],
            "-101417155353/125000000000"
          ],
          [
            [
              3,
              6
            ],
            "-101417155353/125000000000"
          ],
          [
            [
              6,
              11
            ],
            "1023/1000"
          ],
          [
            [
              7,
              10
            ],
            "-1023/1000"
          ],
          [
            [
              5,
              10
            ],
            "1023/1000"
          ]
        ]
      }
    },
    "products": [
      {
        "weight": "2437960000",
        "factors": [
          0,
          5
        ]
      },
      {
        "weight": "290640000",
        "factors": [
          0,
          56
        ]
      },
      {
        "weight": "1215930000",
        "factors": [
          0,
          81
        ]
      },
      {
        "weight": "1065830000",
        "factors": [
          0,
          102
        ]
      },
      {
        "weight": "121380000",
        "factors": [
          0,
          134
        ]
      },
      {
        "weight": "2685330000",
        "factors": [
          0,
          140
        ]
      },
      {
        "weight": "679360000",
        "factors": [
          0,
          145
        ]
      },
      {
        "weight": "162500000",
        "factors": [
          0,
          146
        ]
      },
      {
        "weight": "1372060000",
        "factors": [
          0,
          150
        ]
      },
      {
        "weight": "1374100000",
        "factors": [
          0,
          166
        ]
      },
      {
        "weight": "1096200000",
        "factors": [
          0,
          181
        ]
      },
      {
        "weight": "1135345000",
        "factors": [
          0,
          186
        ]
      },
      {
        "weight": "1943510000",
        "factors": [
          0,
          189
        ]
      },
      {
        "weight": "316320000",
        "factors": [
          0,
          196
        ]
      },
      {
        "weight": "2484250000",
        "factors": [
          0,
          218
        ]
      },
      {
        "weight": "1175293000",
        "factors": [
          0,
          219
        ]
      },
      {
        "weight": "297198000",
        "factors": [
          0,
          228
        ]
      },
      {
        "weight": "360809000",
        "factors": [
          0,
          234
        ]
      },
      {
        "weight": "1305420000",
        "factors": [
          1,
          54
        ]
      },
      {
        "weight": "290640000",
        "factors": [
          1,
          62
        ]
      },
      {
        "weight": "537470000",
        "factors": [
          1,
          217
        ]
      },
      {
        "weight": "176640000",
        "factors": [
          4,
          102
        ]
      },
      {
        "weight": "925180000",
        "factors": [
          4,
          142
        ]
      },
      {
        "weight": "402880000",
        "factors": [
          4,
          217
        ]
      },
      {
        "weight": "5097290000",
        "factors": [
          5,
          6
        ]
      },
      {
        "weight": "207544000",
        "factors": [
          5,
          36
        ]
      },
      {
        "weight": "1392580000",
        "factors": [
          5,
          62
        ]
      },
      {
        "weight": "75521000",
        "factors": [
          5,
          69
        ]
      },
      {
        "weight": "76060000",
        "factors": [
          5,
          134
        ]
      },
      {
        "weight": "75520000",
        "factors": [
          5,
          152
        ]
      },
      {
        "weight": "120510000",
        "factors": [
          5,
          164
        ]
      },
      {
        "weight": "183675000",
        "factors": [
          5,
          187
        ]
      },
      {
        "weight": "116529000",
        "factors": [
          5,
          222
        ]
      },
      {
        "weight": "3100920000",
        "factors": [
          6,
          8
        ]
      },
      {
        "weight": "205296000",
        "factors": [
          6,
          49
        ]
      },
      {
        "weight": "159710000",
        "factors": [
          6,
          103
        ]
      },
      {
        "weight": "258160000",
        "factors": [
          6,
          105
        ]
      },
      {
        "weight": "324840000",
        "factors": [
          6,
          125
        ]
      },
      {
        "weight": "182380000",
        "factors": [
          6,
          131
        ]
      },
      {
        "weight": "450380000",
        "factors": [
          6,
          145
        ]
      },
      {
        "weight": "645160000",
        "factors": [
          6,
          158
        ]
      },
      {
        "weight": "102900000",
        "factors": [
          6,
          167
        ]
      },
      {
        "weight": "63090000",
        "factors": [
          6,
          180
        ]
      },
      {
        "weight": "7973350000",
        "factors": [
          6,
          185
        ]
      },
      {
        "weight": "8083900000",
        "factors": [
          6,
          188
        ]
      },
      {
        "weight": "434550000",
        "factors": [
          6,
          190
        ]
      },
      {
        "weight": "321950000",
        "factors": [
          6,
          217
        ]
      },
      {
        "weight": "1105234000",
        "factors": [
          6,
          231
        ]
      },
      {
        "weight": "76660000",
        "factors": [
          7,
          134
        ]
      },
      {
        "weight": "606140000",
        "factors": [
          8,
          152
        ]
      },
      {
        "weight": "231180000",
        "factors": [
          20,
          54
        ]
      },
      {
        "weight": "775190000",
        "factors": [
          20,
          102
        ]
      },
      {
        "weight": "1139190000",
        "factors": [
          20,
          142
        ]
      },
      {
        "weight": "176640000",
        "factors": [
          20,
          152
        ]
      },
      {
        "weight": "444520000",
        "factors": [
          20,
          217
        ]
      },
      {
        "weight": "55264000",
        "factors": [
          23,
          134
        ]
      },
      {
        "weight": "151580000",
        "factors": [
          26,
          134
        ]
      },
      {
        "weight": "68035000",
        "factors": [
          27,
          181
        ]
      },
      {
        "weight": "905205000",
        "factors": [
          27,
          184
        ]
      },
      {
        "weight": "618409000",
        "factors": [
          27,
          191
        ]
      },
      {
        "weight": "468176000",
        "factors": [
          32,
          62
        ]
      },
      {
        "weight": "628460000",
        "factors": [
          35,
          54
        ]
      },
      {
        "weight": "858250000",
        "factors": [
          35,
          134
        ]
      },
      {
        "weight": "241494000",
        "factors": [
          35,
          139
        ]
      },
      {
        "weight": "431930000",
        "factors": [
          35,
          142
        ]
      },
      {
        "weight": "263502000",
        "factors": [
          35,
          187
        ]
      },
      {
        "weight": "10587000",
        "factors": [
          36,
          181
        ]
      },
      {
        "weight": "944551000",
        "factors": [
          36,
          185
        ]
      },
      {
        "weight": "390476000",
        "factors": [
          36,
          189
        ]
      },
      {
        "weight": "431305000",
        "factors": [
          36,
          218
        ]
      },
      {
        "weight": "37880000",
        "factors": [
          39,
          54
        ]
      },
      {
        "weight": "71776000",
        "factors": [
          39,
          93
        ]
      },
      {
        "weight": "334827000",
        "factors": [
          39,
          168
        ]
      },
      {
        "weight": "405384000",
        "factors": [
          39,
          187
        ]
      },
      {
        "weight": "146466000",
        "factors": [
          41,
          150
        ]
      },
      {
        "weight": "183357000",
        "factors": [
          44,
          134
        ]
      },
      {
        "weight": "398064000",
        "factors": [
          45,
          54
        ]
      },
      {
        "weight": "291081000",
        "factors": [
          47,
          102
        ]
      },
      {
        "weight": "163627000",
        "factors": [
          49,
          217
        ]
      },
      {
        "weight": "870996000",
        "factors": [
          50,
          102
        ]
      },
      {
        "weight": "31790000",
        "factors": [
          50,
          134
        ]
      },
      {
        "weight": "270396000",
        "factors": [
          50,
          152
        ]
      },
      {
        "weight": "636098000",
        "factors": [
          50,
          217
        ]
      },
      {
        "weight": "718869000",
        "factors": [
          52,
          217
        ]
      },
      {
        "weight": "658580000",
        "factors": [
          54,
          63
        ]
      },
      {
        "weight": "204570000",
        "factors": [
          54,
          96
        ]
      },
      {
        "weight": "766730000",
        "factors": [
          54,
          103
        ]
      },
      {
        "weight": "317602000",
        "factors": [
          54,
          108
        ]
      },
      {
        "weight": "33500000",
        "factors": [
          54,
          125
        ]
      },
      {
        "weight": "1163880000",
        "factors": [
          54,
          140
        ]
      },
      {
        "weight": "151260000",
        "factors": [
          54,
          147
        ]
      },
      {
        "weight": "144750000",
        "factors": [
          54,
          158
        ]
      },
      {
        "weight": "378760000",
        "factors": [
          54,
          170
        ]
      },
      {
        "weight": "201297000",
        "factors": [
          54,
          182
        ]
      },
      {
        "weight": "5540650000",
        "factors": [
          56,
          142
        ]
      },
      {
        "weight": "305810000",
        "factors": [
          56,
          152
        ]
      },
      {
        "weight": "1253380000",
        "factors": [
          56,
          217
        ]
      },
      {
        "weight": "196615000",
        "factors": [
          61,
          217
        ]
      },
      {
        "weight": "1590270000",
        "factors": [
          62,
          63
        ]
      },
      {
        "weight": "557380000",
        "factors": [
          62,
          74
        ]
      },
      {
        "weight": "922440000",
        "factors": [
          62,
          81
        ]
      },
      {
        "weight": "994221000",
        "factors": [
          62,
          98
        ]
      },
      {
        "weight": "815080000",
        "factors": [
          62,
          102
        ]
      },
      {
        "weight": "596048000",
        "factors": [
          62,
          122
        ]
      },
      {
        "weight": "994220000",
        "factors": [
          62,
          131
        ]
      },
      {
        "weight": "6262420000",
        "factors": [
          62,
          140
        ]
      },
      {
        "weight": "2906440000",
        "factors": [
          62,
          145
        ]
      },
      {
        "weight": "3376180000",
        "factors": [
          62,
          146
        ]
      },
      {
        "weight": "328540000",
        "factors": [
          62,
          158
        ]
      },
      {
        "weight": "6376220000",
        "factors": [
          62,
          164
        ]
      },
      {
        "weight": "6182840000",
        "factors": [
          62,
          166
        ]
      },
      {
        "weight": "3276400000",
        "factors": [
          62,
          167
        ]
      },
      {
        "weight": "1016980000",
        "factors": [
          62,
          171
        ]
      },
      {
        "weight": "1103870000",
        "factors": [
          62,
          181
        ]
      },
      {
        "weight": "471902000",
        "factors": [
          62,
          183
        ]
      },
      {
        "weight": "1727240000",
        "factors": [
          62,
          185
        ]
      },
      {
        "weight": "148912000",
        "factors": [
          62,
          186
        ]
      },
      {
        "weight": "375700000",
        "factors": [
          62,
          189
        ]
      },
      {
        "weight": "834640000",
        "factors": [
          62,
          190
        ]
      },
      {
        "weight": "1148846000",
        "factors": [
          62,
          199
        ]
      },
      {
        "weight": "483390000",
        "factors": [
          62,
          209
        ]
      },
      {
        "weight": "146054000",
        "factors": [
          62,
          219
        ]
      },
      {
        "weight": "90983000",
        "factors": [
          68,
          102
        ]
      },
      {
        "weight": "338579000",
        "factors": [
          68,
          164
        ]
      },
      {
        "weight": "187510000",
        "factors": [
          68,
          217
        ]
      },
      {
        "weight": "237291000",
        "factors": [
          69,
          150
        ]
      },
      {
        "weight": "663934000",
        "factors": [
          70,
          142
        ]
      },
      {
        "weight": "38668000",
        "factors": [
          74,
          102
        ]
      },
      {
        "weight": "207718000",
        "factors": [
          75,
          181
        ]
      },
      {
        "weight": "46270000",
        "factors": [
          77,
          134
        ]
      },
      {
        "weight": "160355000",
        "factors": [
          77,
          139
        ]
      },
      {
        "weight": "859510000",
        "factors": [
          77,
          142
        ]
      },
      {
        "weight": "56410000",
        "factors": [
          77,
          164
        ]
      },
      {
        "weight": "2590989000",
        "factors": [
          77,
          187
        ]
      },
      {
        "weight": "852010000",
        "factors": [
          77,
          217
        ]
      },
      {
        "weight": "71780000",
        "factors": [
          81,
          102
        ]
      },
      {
        "weight": "1966370000",
        "factors": [
          81,
          142
        ]
      },
      {
        "weight": "322220000",
        "factors": [
          81,
          152
        ]
      },
      {
        "weight": "192290000",
        "factors": [
          81,
          217
        ]
      },
      {
        "weight": "1002636000",
        "factors": [
          86,
          142
        ]
      },
      {
        "weight": "398360000",
        "factors": [
          96,
          134
        ]
      },
      {
        "weight": "645160000",
        "factors": [
          96,
          152
        ]
      },
      {
        "weight": "20205000",
        "factors": [
          98,
          134
        ]
      },
      {
        "weight": "2070191000",
        "factors": [
          98,
          142
        ]
      },
      {
        "weight": "33496000",
        "factors": [
          98,
          164
        ]
      },
      {
        "weight": "596050000",
        "factors": [
          102,
          125
        ]
      },
      {
        "weight": "596050000",
        "factors": [
          102,
          126
        ]
      },
      {
        "weight": "162760000",
        "factors": [
          102,
          134
        ]
      },
      {
        "weight": "4791380000",
        "factors": [
          102,
          140
        ]
      },
      {
        "weight": "2638240000",
        "factors": [
          102,
          142
        ]
      },
      {
        "weight": "4933930000",
        "factors": [
          102,
          146
        ]
      },
      {
        "weight": "306740000",
        "factors": [
          102,
          152
        ]
      },
      {
        "weight": "317600000",
        "factors": [
          102,
          158
        ]
      },
      {
        "weight": "3849600000",
        "factors": [
          102,
          164
        ]
      },
      {
        "weight": "4158130000",
        "factors": [
          102,
          166
        ]
      },
      {
        "weight": "4754180000",
        "factors": [
          102,
          167
        ]
      },
      {
        "weight": "307430000",
        "factors": [
          102,
          180
        ]
      },
      {
        "weight": "1243615000",
        "factors": [
          102,
          182
        ]
      },
      {
        "weight": "1000000",
        "factors": [
          102,
          185
        ]
      },
      {
        "weight": "93970000",
        "factors": [
          102,
          189
        ]
      },
      {
        "weight": "37100000",
        "factors": [
          102,
          191
        ]
      },
      {
        "weight": "98680000",
        "factors": [
          102,
          196
        ]
      },
      {
        "weight": "994221000",
        "factors": [
          102,
          198
        ]
      },
      {
        "weight": "946402000",
        "factors": [
          102,
          200
        ]
      },
      {
        "weight": "302677000",
        "factors": [
          102,
          221
        ]
      },
      {
        "weight": "869603000",
        "factors": [
          105,
          174
        ]
      },
      {
        "weight": "174110000",
        "factors": [
          107,
          152
        ]
      },
      {
        "weight": "33500000",
        "factors": [
          107,
          164
        ]
      },
      {
        "weight": "46442000",
        "factors": [
          112,
          152
        ]
      },
      {
        "weight": "34514000",
        "factors": [
          113,
          134
        ]
      },
      {
        "weight": "97048000",
        "factors": [
          118,
          152
        ]
      },
      {
        "weight": "227824000",
        "factors": [
          119,
          134
        ]
      },
      {
        "weight": "99920000",
        "factors": [
          125,
          217
        ]
      },
      {
        "weight": "174110000",
        "factors": [
          126,
          152
        ]
      },
      {
        "weight": "44891000",
        "factors": [
          128,
          134
        ]
      },
      {
        "weight": "2038140000",
        "factors": [
          131,
          142
        ]
      },
      {
        "weight": "322220000",
        "factors": [
          131,
          152
        ]
      },
      {
        "weight": "138498000",
        "factors": [
          131,
          187
        ]
      },
      {
        "weight": "1127040000",
        "factors": [
          134,
          140
        ]
      },
      {
        "weight": "336290000",
        "factors": [
          134,
          145
        ]
      },
      {
        "weight": "32050000",
        "factors": [
          134,
          146
        ]
      },
      {
        "weight": "124400000",
        "factors": [
          134,
          158
        ]
      },
      {
        "weight": "1275080000",
        "factors": [
          134,
          164
        ]
      },
      {
        "weight": "336290000",
        "factors": [
          134,
          166
        ]
      },
      {
        "weight": "165700000",
        "factors": [
          134,
          180
        ]
      },
      {
        "weight": "1213650000",
        "factors": [
          134,
          185
        ]
      },
      {
        "weight": "2724980000",
        "factors": [
          134,
          188
        ]
      },
      {
        "weight": "781540000",
        "factors": [
          134,
          191
        ]
      },
      {
        "weight": "1908307000",
        "factors": [
          134,
          200
        ]
      },
      {
        "weight": "327180000",
        "factors": [
          134,
          209
        ]
      },
      {
        "weight": "11462000",
        "factors": [
          134,
          233
        ]
      },
      {
        "weight": "11838000",
        "factors": [
          139,
          188
        ]
      },
      {
        "weight": "1149200000",
        "factors": [
          140,
          142
        ]
      },
      {
        "weight": "166380000",
        "factors": [
          140,
          152
        ]
      },
      {
        "weight": "2825348000",
        "factors": [
          140,
          176
        ]
      },
      {
        "weight": "308190000",
        "factors": [
          140,
          217
        ]
      },
      {
        "weight": "279702000",
        "factors": [
          140,
          222
        ]
      },
      {
        "weight": "1450502000",
        "factors": [
          141,
          188
        ]
      },
      {
        "weight": "228650000",
        "factors": [
          142,
          152
        ]
      },
      {
        "weight": "502180000",
        "factors": [
          142,
          181
        ]
      },
      {
        "weight": "261300000",
        "factors": [
          142,
          184
        ]
      },
      {
        "weight": "360780000",
        "factors": [
          142,
          189
        ]
      },
      {
        "weight": "1002180000",
        "factors": [
          142,
          190
        ]
      },
      {
        "weight": "1173739000",
        "factors": [
          142,
          194
        ]
      },
      {
        "weight": "422433000",
        "factors": [
          142,
          202
        ]
      },
      {
        "weight": "1369744000",
        "factors": [
          142,
          220
        ]
      },
      {
        "weight": "160007000",
        "factors": [
          142,
          234
        ]
      },
      {
        "weight": "82530000",
        "factors": [
          144,
          150
        ]
      },
      {
        "weight": "277960000",
        "factors": [
          144,
          152
        ]
      },
      {
        "weight": "789620000",
        "factors": [
          144,
          217
        ]
      },
      {
        "weight": "145830000",
        "factors": [
          146,
          146
        ]
      },
      {
        "weight": "1014170000",
        "factors": [
          146,
          164
        ]
      },
      {
        "weight": "438704000",
        "factors": [
          146,
          175
        ]
      },
      {
        "weight": "179460000",
        "factors": [
          146,
          222
        ]
      },
      {
        "weight": "149896000",
        "factors": [
          149,
          164
        ]
      },
      {
        "weight": "144750000",
        "factors": [
          150,
          164
        ]
      },
      {
        "weight": "88639000",
        "factors": [
          150,
          168
        ]
      },
      {
        "weight": "709150000",
        "factors": [
          150,
          189
        ]
      },
      {
        "weight": "377736000",
        "factors": [
          151,
          187
        ]
      },
      {
        "weight": "153980000",
        "factors": [
          152,
          152
        ]
      },
      {
        "weight": "6079590000",
        "factors": [
          152,
          166
        ]
      },
      {
        "weight": "6121340000",
        "factors": [
          152,
          167
        ]
      },
      {
        "weight": "75680000",
        "factors": [
          152,
          181
        ]
      },
      {
        "weight": "2158090000",
        "factors": [
          152,
          184
        ]
      },
      {
        "weight": "2798820000",
        "factors": [
          152,
          189
        ]
      },
      {
        "weight": "283420000",
        "factors": [
          152,
          190
        ]
      },
      {
        "weight": "2951460000",
        "factors": [
          152,
          196
        ]
      },
      {
        "weight": "123731000",
        "factors": [
          152,
          202
        ]
      },
      {
        "weight": "1258478000",
        "factors": [
          152,
          203
        ]
      },
      {
        "weight": "25680000",
        "factors": [
          152,
          209
        ]
      },
      {
        "weight": "45583000",
        "factors": [
          152,
          221
        ]
      },
      {
        "weight": "18861000",
        "factors": [
          152,
          225
        ]
      },
      {
        "weight": "201655000",
        "factors": [
          152,
          233
        ]
      },
      {
        "weight": "26130000",
        "factors": [
          158,
          180
        ]
      },
      {
        "weight": "396880000",
        "factors": [
          158,
          217
        ]
      },
      {
        "weight": "309397000",
        "factors": [
          159,
          187
        ]
      },
      {
        "weight": "4542830000",
        "factors": [
          164,
          166
        ]
      },
      {
        "weight": "4542830000",
        "factors": [
          164,
          167
        ]
      },
      {
        "weight": "3030000",
        "factors": [
          164,
          181
        ]
      },
      {
        "weight": "714900000",
        "factors": [
          164,
          185
        ]
      },
      {
        "weight": "1187310000",
        "factors": [
          164,
          188
        ]
      },
      {
        "weight": "599650000",
        "factors": [
          164,
          191
        ]
      },
      {
        "weight": "268445000",
        "factors": [
          164,
          199
        ]
      },
      {
        "weight": "637922000",
        "factors": [
          164,
          202
        ]
      },
      {
        "weight": "85042000",
        "factors": [
          164,
          234
        ]
      },
      {
        "weight": "636100000",
        "factors": [
          167,
          217
        ]
      },
      {
        "weight": "1726688000",
        "factors": [
          170,
          179
        ]
      },
      {
        "weight": "2822862000",
        "factors": [
          171,
          187
        ]
      },
      {
        "weight": "2992200000",
        "factors": [
          171,
          188
        ]
      },
      {
        "weight": "2212982000",
        "factors": [
          174,
          181
        ]
      },
      {
        "weight": "207588000",
        "factors": [
          174,
          191
        ]
      },
      {
        "weight": "344348000",
        "factors": [
          175,
          180
        ]
      },
      {
        "weight": "657905000",
        "factors": [
          181,
          187
        ]
      },
      {
        "weight": "28770000",
        "factors": [
          181,
          188
        ]
      },
      {
        "weight": "208631000",
        "factors": [
          182,
          191
        ]
      },
      {
        "weight": "124530000",
        "factors": [
          184,
          217
        ]
      },
      {
        "weight": "206261000",
        "factors": [
          185,
          187
        ]
      },
      {
        "weight": "1174140000",
        "factors": [
          185,
          191
        ]
      },
      {
        "weight": "1776107000",
        "factors": [
          187,
          190
        ]
      },
      {
        "weight": "764310000",
        "factors": [
          187,
          218
        ]
      },
      {
        "weight": "97296000",
        "factors": [
          188,
          212
        ]
      },
      {
        "weight": "845360000",
        "factors": [
          190,
          217
        ]
      },
      {
        "weight": "7850970000",
        "factors": [
          196,
          217
        ]
      },
      {
        "weight": "733027000",
        "factors": [
          202,
          217
        ]
      },
      {
        "weight": "110750000",
        "factors": [
          209,
          217
        ]
      },
      {
        "weight": "371500000",
        "factors": [
          217,
          217
        ]
      },
      {
        "weight": "2945090000",
        "factors": [
          171,
          345
        ]
      },
      {
        "weight": "522268000",
        "factors": [
          187,
          361
        ]
      },
      {
        "weight": "513509000",
        "factors": [
          187,
          393
        ]
      },
      {
        "weight": "238073200",
        "factors": [
          187,
          500
        ]
      },
      {
        "weight": "2323975000",
        "factors": [
          168,
          627
        ]
      },
      {
        "weight": "321922000",
        "factors": [
          173,
          627
        ]
      },
      {
        "weight": "3295033000",
        "factors": [
          175,
          627
        ]
      },
      {
        "weight": "12600034000",
        "factors": [
          182,
          627
        ]
      },
      {
        "weight": "156409000",
        "factors": [
          187,
          627
        ]
      },
      {
        "weight": "36260000",
        "factors": [
          191,
          627
        ]
      },
      {
        "weight": "274200000",
        "factors": [
          187,
          632
        ]
      },
      {
        "weight": "299460000",
        "factors": [
          188,
          724
        ]
      },
      {
        "weight": "167688000",
        "factors": [
          176,
          743
        ]
      }
    ],
    "sum": [
      [
        [
          0,
          1
        ],
        "-23851479791242502067801654473910163807/6834026867507650017750000000"
      ],
      [
        [
          0,
          1,
          1
        ],
        "5961992000"
      ],
      [
        [
          0,
          0,
          1,
          1
        ],
        "-4434330000"
      ],
      [
        [
          0,
          0,
          1,
          4
        ],
        "54963658628000/8963"
      ],
      [
        [
          0,
          2
        ],
        "61398507164166724682691947633/21591857026500000000"
      ],
      [
        [
          0,
          1,
          2
        ],
        "-905710000"
      ],
      [
        [
          0,
          0,
          1,
          2
        ],
        "2437960000"
      ],
      [
        [
          0,
          0,
          2,
          4
        ],
        "-11136865230000/8963"
      ],
      [
        [],
        "-50277882061166874174649058614411480239110289032710957468504550072373985245552621507/28104056982606838008447485756408006449366183725568289213281250000000000000"
      ],
      [
        [
          1
        ],
        "-14119864772661661/31250000"
      ],
      [
        [
          0,
          4
        ],
        "-6608098880232928515585902757/8730980925043750000"
      ],
      [
        [
          0,
          1,
          2,
          3
        ],
        "759640000"
      ],
      [
        [
          0,
          1,
          1,
          3
        ],
        "215119000"
      ],
      [
        [
          2,
          3
        ],
        "2935179587807575188057/5694500000000"
      ],
      [
        [
          1,
          3
        ],
        "-2366627037279876669/1000000000"
      ],
      [
        [
          0,
          1,
          4,
          7
        ],
        "430806000"
      ],
      [
        [
          0,
          1,
          1,
          7
        ],
        "-3568210000"
      ],
      [
        [
          0,
          1,
          6
        ],
        "1638704776962799/10000000"
      ],
      [
        [
          0,
          2,
          4,
          7
        ],
        "-10000"
      ],
      [
        [
          0,
          1,
          2,
          7
        ],
        "10000"
      ],
      [
        [
          0,
          2,
          6
        ],
        "-2312130000"
      ],
      [
        [
          4,
          7
        ],
        "7187218629714453/15625000"
      ],
      [
        [
          1,
          7
        ],
        "-1943540955682171696977/315050000000"
      ],
      [
        [
          6
        ],
        "440725430978601397/500000000"
      ],
      [
        [
          0,
          1,
          7
        ],
        "2756094000"
      ],
      [
        [
          0,
          1,
          3,
          6
        ],
        "-695820000"
      ],
      [
        [
          0,
          2,
          7
        ],
        "-532364000"
      ],
      [
        [
          0,
          2,
          3,
          6
        ],
        "-1432104000"
      ],
      [
        [
          7
        ],
        "-1673882896249677354979350999253714003457/1424376710753726625000000000000"
      ],
      [
        [
          2,
          7
        ],
        "163962381978055927865166283/35881044500000000"
      ],
      [
        [
          3,
          6
        ],
        "-1794603150804612238277237313871285996543/1424376710753726625000000000000"
      ],
      [
        [
          0,
          1,
          4,
          11
        ],
        "-145880000"
      ],
      [
        [
          0,
          1,
          3,
          4
        ],
        "2000"
      ],
      [
        [
          0,
          1,
          11
        ],
        "-1216085720/3"
      ],
      [
        [
          0,
          1,
          10
        ],
        "-1132267777682863677048704803760/847419331570948602201"
      ],
      [
        [
          0,
          1,
          3,
          10
        ],
        "-556130000"
      ],
      [
        [
          0,
          2,
          4,
          11
        ],
        "-4000"
      ],
      [
        [
          0,
          2,
          3,
          4
        ],
        "4000"
      ],
      [
        [
          0,
          2,
          11
        ],
        "1887527720/3"
      ],
      [
        [
          0,
          2,
          10
        ],
        "-25324473641876304000/14394571351"
      ],
      [
        [
          0,
          2,
          3,
          10
        ],
        "-4000"
      ],
      [
        [
          4,
          11
        ],
        "345743385369887325619/1250000000000"
      ],
      [
        [
          3,
          4
        ],
        "90961195466820421767/124250000000"
      ],
      [
        [
          11
        ],
        "-13249035038875241641/23250000000"
      ],
      [
        [
          10
        ],
        "4217083120834061176790939543976029938828214044748032820084416543165642965533/44966491172170940813515977210252810318985893960909262741250000000000"
      ],
      [
        [
          3,
          10
        ],
        "741056689456399371/1937500000"
      ],
      [
        [
          0,
          1,
          5,
          10
        ],
        "-1158703000"
      ],
      [
        [
          0,
          1,
          5
        ],
        "19310342881000/8963"
      ],
      [
        [
          0,
          2,
          5,
          10
        ],
        "3329743000"
      ],
      [
        [
          0,
          2,
          5
        ],
        "-19310342881000/8963"
      ],
      [
        [
          5,
          10
        ],
        "-36330049242125383829/23250000000"
      ],
      [
        [
          5
        ],
        "26566419219440869734388951/35011718750000000"
      ],
      [
        [
          0,
          1,
          6,
          11
        ],
        "466300000"
      ],
      [
        [
          0,
          1,
          7,
          10
        ],
        "-10000"
      ],
      [
        [
          0,
          2,
          6,
          11
        ],
        "-694740000"
      ],
      [
        [
          0,
          2,
          7,
          10
        ],
        "-188290000"
      ],
      [
        [
          6,
          11
        ],
        "-1014578691581/15625"
      ],
      [
        [
          7,
          10
        ],
        "1834084720108578911875046821/1914484826281890625"
      ],
      [
        [
          0,
          1,
          8,
          11
        ],
        "-251070000"
      ],
      [
        [
          0,
          1,
          3,
          8
        ],
        "2747400000"
      ],
      [
        [
          0,
          1,
          9,
          10
        ],
        "-191800000"
      ],
      [
        [
          0,
          1,
          9
        ],
        "-48746111703/40"
      ],
      [
        [
          0,
          2,
          3,
          8
        ],
        "-2205497000"
      ],
      [
        [
          0,
          2,
          9
        ],
        "-896590564206409581/500000000"
      ],
      [
        [
          8,
          11
        ],
        "-900720859828731091/1162500000"
      ],
      [
        [
          3,
          8
        ],
        "-414418079284660736650225114521383/497262428831049000000000"
      ],
      [
        [
          9,
          10
        ],
        "-1654573146110367916834464059737/6215780360388112500000"
      ],
      [
        [
          9
        ],
        "-361866706862870031488789229504541/497262428831049000000000"
      ],
      [
        [
          0,
          1,
          4,
          9
        ],
        "1945444000"
      ],
      [
        [
          0,
          1,
          5,
          8
        ],
        "-9439752365000/8963"
      ],
      [
        [
          0,
          1,
          4,
          5
        ],
        "-50165943988000/8963"
      ],
      [
        [
          0,
          1,
          8
        ],
        "-1576026000"
      ],
      [
        [
          0,
          2,
          4,
          9
        ],
        "-1372060000"
      ],
      [
        [
          0,
          2,
          5,
          8
        ],
        "28321000/8963"
      ],
      [
        [
          0,
          2,
          4,
          5
        ],
        "-20790000/8963"
      ],
      [
        [
          0,
          2,
          8
        ],
        "1054458000"
      ],
      [
        [
          4,
          9
        ],
        "-3157358742080818674092443143/14353923194187500000"
      ],
      [
        [
          5,
          8
        ],
        "-23537294145224199158637917982671/96296513994557250000000"
      ],
      [
        [
          4,
          5
        ],
        "-10197343235225445836713337828334978507/80691399345187359364625000000"
      ],
      [
        [
          8
        ],
        "42818673597468098239909538267/57415692776750000000"
      ],
      [
        [
          0,
          1,
          7,
          8
        ],
        "-588446000"
      ],
      [
        [
          0,
          1,
          6,
          9
        ],
        "-274244000"
      ],
      [
        [
          0,
          2,
          7,
          8
        ],
        "-7000"
      ],
      [
        [
          0,
          2,
          6,
          9
        ],
        "2513290000"
      ],
      [
        [
          7,
          8
        ],
        "49666198654675480408105952029/25013200645425000000"
      ],
      [
        [
          6,
          9
        ],
        "-48623923596981266083105952029/25013200645425000000"
      ],
      [
        [
          0,
          0,
          1,
          8
        ],
        "6469279720000/8963"
      ],
      [
        [
          0,
          0,
          1
        ],
        "4758269909000/8963"
      ],
      [
        [
          0,
          0,
          2,
          8
        ],
        "6083670670000/8963"
      ],
      [
        [
          0,
          0,
          2
        ],
        "-4758269909000/8963"
      ],
      [
        [
          0,
          8
        ],
        "-136335889015010657109/2240750000000"
      ],
      [
        [
          0
        ],
        "-7282020102694452914756749/8963000000000000"
      ],
      [
        [
          0,
          1,
          3
        ],
        "-77948128297/40"
      ],
      [
        [
          0,
          2,
          3
        ],
        "3035433425"
      ],
      [
        [
          3
        ],
        "1873677702755343791/726562500"
      ],
      [
        [
          0,
          10
        ],
        "398826395288952423/250000000"
      ],
      [
        [
          0,
          0,
          1,
          10
        ],
        "912764000"
      ],
      [
        [
          0,
          0,
          2,
          10
        ],
        "-2518590000"
      ],
      [
        [
          1,
          2,
          7
        ],
        "-236782000"
      ],
      [
        [
          1,
          3,
          6
        ],
        "22453474523037201/10000000"
      ],
      [
        [
          1,
          2,
          3
        ],
        "-38663496937/500"
      ],
      [
        [
          0,
          4,
          7
        ],
        "-766993000"
      ],
      [
        [
          0,
          3,
          4,
          6
        ],
        "886673000"
      ],
      [
        [
          1,
          6,
          9
        ],
        "-3171044000"
      ],
      [
        [
          1,
          9
        ],
        "4975435068101603281/1000000000"
      ],
      [
        [
          1,
          7,
          8
        ],
        "4773640000"
      ],
      [
        [
          1,
          3,
          8
        ],
        "-2949381000"
      ],
      [
        [
          0,
          4,
          6,
          9
        ],
        "-853404000"
      ],
      [
        [
          0,
          4,
          9
        ],
        "9481183770000/8963"
      ],
      [
        [
          0,
          4,
          7,
          8
        ],
        "623234000"
      ],
      [
        [
          0,
          3,
          4,
          8
        ],
        "-761144000"
      ],
      [
        [
          1,
          5,
          8
        ],
        "-871174000"
      ],
      [
        [
          1,
          5,
          10
        ],
        "11603226268197634760/58870758351"
      ],
      [
        [
          0,
          4,
          5,
          8
        ],
        "-28482000/8963"
      ],
      [
        [
          0,
          4,
          5,
          10
        ],
        "2000"
      ],
      [
        [
          0,
          0,
          4,
          8
        ],
        "-408492410000/8963"
      ],
      [
        [
          0,
          0,
          4,
          10
        ],
        "365000000"
      ],
      [
        [
          1,
          5
        ],
        "47881956934926267573258407/79127363375000000"
      ],
      [
        [
          1,
          1,
          5
        ],
        "-5097290000"
      ],
      [
        [
          0,
          1,
          1,
          5
        ],
        "1996370000"
      ],
      [
        [
          1,
          4,
          5
        ],
        "109520381320/93"
      ],
      [
        [
          0,
          1,
          4
        ],
        "224627502680/93"
      ],
      [
        [
          0,
          4,
          4,
          5
        ],
        "-129440460000/8963"
      ],
      [
        [
          0,
          0,
          4,
          4
        ],
        "-1593000/8963"
      ],
      [
        [
          1,
          1,
          7
        ],
        "-1525707070"
      ],
      [
        [
          1,
          1
        ],
        "41008000"
      ],
      [
        [
          1,
          3,
          4
        ],
        "-151581000"
      ],
      [
        [
          1,
          1,
          3
        ],
        "3088348070"
      ],
      [
        [
          0,
          3,
          4,
          4
        ],
        "-1000"
      ],
      [
        [
          1,
          4,
          11
        ],
        "-3122100000"
      ],
      [
        [
          1,
          11
        ],
        "14365869358705513/5000000"
      ],
      [
        [
          1,
          10
        ],
        "129900000"
      ],
      [
        [
          1,
          3,
          10
        ],
        "-175778000"
      ],
      [
        [
          0,
          4,
          11
        ],
        "-12741000"
      ],
      [
        [
          0,
          3,
          4,
          10
        ],
        "-1121280000"
      ],
      [
        [
          1,
          8,
          11
        ],
        "658389000"
      ],
      [
        [
          1,
          9,
          10
        ],
        "385131000"
      ],
      [
        [
          0,
          4,
          8,
          11
        ],
        "-705922000"
      ],
      [
        [
          0,
          4,
          9,
          10
        ],
        "-513510000"
      ],
      [
        [
          4
        ],
        "6848815702369189/50000000"
      ],
      [
        [
          1,
          4
        ],
        "-116529000"
      ],
      [
        [
          0,
          4,
          4
        ],
        "-116529000"
      ],
      [
        [
          1,
          1,
          5,
          7
        ],
        "3100920000"
      ],
      [
        [
          0,
          1,
          5,
          6
        ],
        "3100920000"
      ],
      [
        [
          0,
          0,
          1,
          6
        ],
        "-3100920000"
      ],
      [
        [
          0,
          6
        ],
        "706196040134516831023/1000000000000"
      ],
      [
        [
          1,
          5,
          5,
          10
        ],
        "-723861000"
      ],
      [
        [
          1,
          5,
          7
        ],
        "8575406000"
      ],
      [
        [
          1,
          2,
          5,
          7
        ],
        "-484550000"
      ],
      [
        [
          1,
          3,
          5,
          6
        ],
        "-2459040000"
      ],
      [
        [
          1,
          2,
          3,
          5
        ],
        "-98450000"
      ],
      [
        [
          1,
          5,
          9
        ],
        "-1390449836"
      ],
      [
        [
          1,
          2,
          5,
          9
        ],
        "258160000"
      ],
      [
        [
          1,
          3,
          5,
          8
        ],
        "686665000"
      ],
      [
        [
          0,
          1,
          2,
          9
        ],
        "-258160000"
      ],
      [
        [
          2,
          9
        ],
        "-24493214782072733/15625000"
      ],
      [
        [
          1,
          5,
          6,
          11
        ],
        "228440000"
      ],
      [
        [
          1,
          2,
          5,
          11
        ],
        "324840000"
      ],
      [
        [
          1,
          5,
          7,
          10
        ],
        "-206270000"
      ],
      [
        [
          0,
          1,
          2,
          11
        ],
        "-324840000"
      ],
      [
        [
          2,
          11
        ],
        "-282648397472548705619/1250000000000"
      ],
      [
        [
          1,
          4,
          5,
          7
        ],
        "584930000"
      ],
      [
        [
          1,
          3,
          4,
          5
        ],
        "-437381000"
      ],
      [
        [
          1,
          5,
          6
        ],
        "245470000"
      ],
      [
        [
          1,
          5,
          11
        ],
        "67865000"
      ],
      [
        [
          1,
          3,
          5,
          10
        ],
        "2468561000"
      ],
      [
        [
          1,
          5,
          8,
          11
        ],
        "5000"
      ],
      [
        [
          1,
          4,
          5,
          11
        ],
        "76660000"
      ],
      [
        [
          1,
          5,
          9,
          10
        ],
        "102900000"
      ],
      [
        [
          1,
          5,
          7,
          8
        ],
        "-8615570000"
      ],
      [
        [
          1,
          5,
          6,
          9
        ],
        "1563670000"
      ],
      [
        [
          1,
          5,
          5,
          8
        ],
        "518565000"
      ],
      [
        [
          1,
          4,
          7,
          11
        ],
        "-612460000"
      ],
      [
        [
          1,
          7,
          10
        ],
        "7082163128000/6301"
      ],
      [
        [
          0,
          4,
          6,
          11
        ],
        "-297237000"
      ],
      [
        [
          0,
          5,
          6,
          10
        ],
        "-1000"
      ],
      [
        [
          0,
          4,
          5,
          6
        ],
        "512384000"
      ],
      [
        [
          0,
          6,
          10
        ],
        "67067000"
      ],
      [
        [
          2,
          7,
          8,
          11
        ],
        "-883040000"
      ],
      [
        [
          2,
          7,
          9,
          10
        ],
        "883040000"
      ],
      [
        [
          0,
          6,
          8,
          11
        ],
        "235195000"
      ],
      [
        [
          0,
          0,
          6,
          8
        ],
        "243323000"
      ],
      [
        [
          0,
          6,
          9,
          10
        ],
        "-235196000"
      ],
      [
        [
          0,
          0,
          6,
          10
        ],
        "-243323000"
      ],
      [
        [
          2,
          7,
          7
        ],
        "-99277000"
      ],
      [
        [
          2,
          3,
          6,
          7
        ],
        "870990000"
      ],
      [
        [
          2,
          2,
          3,
          7
        ],
        "1000"
      ],
      [
        [
          0,
          6,
          7
        ],
        "-1043384000"
      ],
      [
        [
          0,
          2,
          6,
          7
        ],
        "-95806000"
      ],
      [
        [
          0,
          3,
          6,
          6
        ],
        "1043384000"
      ],
      [
        [
          2,
          6,
          7,
          9
        ],
        "4000"
      ],
      [
        [
          2,
          7,
          9
        ],
        "-13763039191562483/25000000"
      ],
      [
        [
          2,
          7,
          7,
          8
        ],
        "-4000"
      ],
      [
        [
          2,
          3,
          7,
          8
        ],
        "-7904217000"
      ],
      [
        [
          0,
          6,
          6,
          9
        ],
        "-1210966000"
      ],
      [
        [
          0,
          6,
          9
        ],
        "1146300293"
      ],
      [
        [
          0,
          6,
          7,
          8
        ],
        "1210966000"
      ],
      [
        [
          0,
          3,
          6,
          8
        ],
        "-3000"
      ],
      [
        [
          2,
          4,
          5,
          7
        ],
        "-10000"
      ],
      [
        [
          2,
          7,
          10
        ],
        "-52781941971350000/71762089"
      ],
      [
        [
          2,
          5,
          7,
          8
        ],
        "10762729000"
      ],
      [
        [
          0,
          5,
          6,
          8
        ],
        "-512383000"
      ],
      [
        [
          2,
          4,
          9,
          11
        ],
        "2000"
      ],
      [
        [
          2,
          3,
          4,
          9
        ],
        "-2000"
      ],
      [
        [
          2,
          9,
          11
        ],
        "-1420"
      ],
      [
        [
          2,
          9,
          10
        ],
        "-351100000"
      ],
      [
        [
          2,
          3,
          9,
          10
        ],
        "317598000"
      ],
      [
        [
          0,
          8,
          11
        ],
        "-904409000"
      ],
      [
        [
          0,
          8,
          10
        ],
        "1343962000"
      ],
      [
        [
          0,
          3,
          8,
          10
        ],
        "1297650000"
      ],
      [
        [
          0,
          3,
          4
        ],
        "706670000"
      ],
      [
        [
          0,
          11
        ],
        "88261000"
      ],
      [
        [
          0,
          3,
          10
        ],
        "-706670000"
      ],
      [
        [
          3,
          4,
          4,
          11
        ],
        "-5000"
      ],
      [
        [
          3,
          3,
          4,
          4
        ],
        "-216676000"
      ],
      [
        [
          3,
          4,
          11
        ],
        "662080/93"
      ],
      [
        [
          3,
          4,
          10
        ],
        "-134343533900/497"
      ],
      [
        [
          3,
          3,
          4,
          10
        ],
        "362496000"
      ],
      [
        [
          3,
          4,
          6
        ],
        "-7200304993354233/15625000"
      ],
      [
        [
          0,
          4,
          6
        ],
        "78622000"
      ],
      [
        [
          3,
          4,
          8
        ],
        "-65475000"
      ],
      [
        [
          0,
          4,
          8
        ],
        "625907000"
      ],
      [
        [
          1,
          7,
          9
        ],
        "761065341511/500"
      ],
      [
        [
          1,
          3,
          7,
          8
        ],
        "-370756000"
      ],
      [
        [
          8,
          11,
          11
        ],
        "166824467840/93"
      ],
      [
        [
          9,
          10,
          11
        ],
        "-166824467840/93"
      ],
      [
        [
          0,
          10,
          11
        ],
        "919590000"
      ],
      [
        [
          0,
          0,
          8
        ],
        "-628460000"
      ],
      [
        [
          0,
          9,
          10
        ],
        "-975099000"
      ],
      [
        [
          0,
          0,
          10
        ],
        "628460000"
      ],
      [
        [
          3,
          8,
          10,
          11
        ],
        "-866320000"
      ],
      [
        [
          3,
          9,
          10,
          10
        ],
        "866320000"
      ],
      [
        [
          0,
          3,
          10,
          10
        ],
        "-74230000"
      ],
      [
        [
          0,
          8,
          10,
          11
        ],
        "-1752880000"
      ],
      [
        [
          0,
          0,
          8,
          10
        ],
        "-360938000"
      ],
      [
        [
          0,
          9,
          10,
          10
        ],
        "1752880000"
      ],
      [
        [
          0,
          0,
          10,
          10
        ],
        "625536000"
      ],
      [
        [
          4,
          11,
          11
        ],
        "-10027492280/31"
      ],
      [
        [
          11,
          11
        ],
        "-68572933760/93"
      ],
      [
        [
          10,
          11
        ],
        "49536310280/31"
      ],
      [
        [
          3,
          10,
          11
        ],
        "68572003760/93"
      ],
      [
        [
          3,
          4,
          10,
          11
        ],
        "10000"
      ],
      [
        [
          3,
          10,
          10
        ],
        "-1274488000"
      ],
      [
        [
          3,
          3,
          10,
          10
        ],
        "10000"
      ],
      [
        [
          0,
          4,
          10,
          11
        ],
        "1399880000"
      ],
      [
        [
          0,
          10,
          10
        ],
        "-1399880000"
      ],
      [
        [
          9,
          11
        ],
        "122904783139851017/93000000"
      ],
      [
        [
          5,
          8,
          11
        ],
        "-38179892840/93"
      ],
      [
        [
          5,
          11
        ],
        "334527000"
      ],
      [
        [
          3,
          8,
          11
        ],
        "-4148421333247/4650"
      ],
      [
        [
          0,
          9
        ],
        "23346185507893776267/700234375000"
      ],
      [
        [
          0,
          5,
          8
        ],
        "873492000"
      ],
      [
        [
          0,
          5
        ],
        "241494000"
      ],
      [
        [
          0,
          3,
          8
        ],
        "3703111297/40"
      ],
      [
        [
          3,
          9,
          10
        ],
        "-2205529187902269/1000000"
      ],
      [
        [
          3,
          5,
          8,
          10
        ],
        "-741855000"
      ],
      [
        [
          3,
          5,
          10
        ],
        "3832301600/3"
      ],
      [
        [
          3,
          3,
          8,
          10
        ],
        "-1000"
      ],
      [
        [
          0,
          5,
          8,
          10
        ],
        "505803000"
      ],
      [
        [
          0,
          5,
          10
        ],
        "-1445119000"
      ],
      [
        [
          6,
          9,
          11
        ],
        "11622729640/93"
      ],
      [
        [
          3,
          6,
          11
        ],
        "-10237029640/93"
      ],
      [
        [
          7,
          8,
          11
        ],
        "7097891360/93"
      ],
      [
        [
          7,
          11
        ],
        "-9165653360/93"
      ],
      [
        [
          0,
          3,
          6
        ],
        "-937814000"
      ],
      [
        [
          0,
          7,
          8
        ],
        "-2278298000"
      ],
      [
        [
          0,
          7
        ],
        "937814000"
      ],
      [
        [
          3,
          6,
          9,
          10
        ],
        "-510320000"
      ],
      [
        [
          3,
          3,
          6,
          10
        ],
        "458320000"
      ],
      [
        [
          3,
          7,
          8,
          10
        ],
        "510320000"
      ],
      [
        [
          3,
          7,
          10
        ],
        "-458320000"
      ],
      [
        [
          0,
          3,
          6,
          10
        ],
        "-193893000"
      ],
      [
        [
          0,
          7,
          8,
          10
        ],
        "1000"
      ],
      [
        [
          0,
          7,
          10
        ],
        "610337000"
      ],
      [
        [
          4,
          5,
          6
        ],
        "-1902504756645767/15625000"
      ],
      [
        [
          4,
          5,
          8
        ],
        "-283114000"
      ],
      [
        [
          4,
          5,
          10
        ],
        "47357677998822126611601416/72021777837944759"
      ],
      [
        [
          0,
          4,
          10
        ],
        "-36271606740139000/155858189"
      ],
      [
        [
          4,
          5,
          5,
          8
        ],
        "2924237806000/8963"
      ],
      [
        [
          4,
          4,
          5,
          5
        ],
        "-710265565000/8963"
      ],
      [
        [
          4,
          5,
          5
        ],
        "-2085487636000/8963"
      ],
      [
        [
          0,
          4,
          5
        ],
        "2800039607000/8963"
      ],
      [
        [
          0,
          0,
          4
        ],
        "-4003838526000/8963"
      ],
      [
        [
          4,
          7,
          8,
          11
        ],
        "256060000"
      ],
      [
        [
          4,
          7,
          9,
          10
        ],
        "29486000"
      ],
      [
        [
          0,
          4,
          7,
          10
        ],
        "230170000"
      ],
      [
        [
          6,
          8,
          11
        ],
        "6386000"
      ],
      [
        [
          0,
          6,
          8
        ],
        "230170000"
      ],
      [
        [
          6,
          9,
          10
        ],
        "8418774686207860000/10758365869"
      ],
      [
        [
          4,
          6,
          7,
          9
        ],
        "-6000"
      ],
      [
        [
          1,
          4,
          7,
          9
        ],
        "-83074000"
      ],
      [
        [
          4,
          7,
          7,
          8
        ],
        "6000"
      ],
      [
        [
          1,
          4,
          7,
          7
        ],
        "4000"
      ],
      [
        [
          6,
          6,
          9
        ],
        "502186000"
      ],
      [
        [
          6,
          7,
          8
        ],
        "-502186000"
      ],
      [
        [
          1,
          6,
          7
        ],
        "1103866000"
      ],
      [
        [
          0,
          1,
          6,
          7
        ],
        "-71776000"
      ],
      [
        [
          0,
          0,
          6
        ],
        "334827000"
      ],
      [
        [
          4,
          7,
          9
        ],
        "61474000"
      ],
      [
        [
          4,
          4,
          9,
          9
        ],
        "-146466000"
      ],
      [
        [
          4,
          5,
          8,
          9
        ],
        "-577346000"
      ],
      [
        [
          4,
          4,
          5,
          9
        ],
        "125704000"
      ],
      [
        [
          4,
          8,
          9
        ],
        "292932000"
      ],
      [
        [
          0,
          4,
          4,
          9
        ],
        "146466000"
      ],
      [
        [
          5,
          8,
          8
        ],
        "-13024000"
      ],
      [
        [
          8,
          8
        ],
        "-146466000"
      ],
      [
        [
          0,
          4,
          8,
          9
        ],
        "284414000"
      ],
      [
        [
          0,
          5,
          8,
          8
        ],
        "-364118000"
      ],
      [
        [
          0,
          8,
          8
        ],
        "-408944000"
      ],
      [
        [
          4,
          5,
          6,
          11
        ],
        "-502097000"
      ],
      [
        [
          3,
          4,
          5,
          6
        ],
        "757017000"
      ],
      [
        [
          5,
          6,
          11
        ],
        "183357000"
      ],
      [
        [
          5,
          6,
          10
        ],
        "604253000"
      ],
      [
        [
          5,
          6
        ],
        "-1039175330243834186427/3906250000000"
      ],
      [
        [
          3,
          5,
          6,
          10
        ],
        "626873000"
      ],
      [
        [
          0,
          6,
          11
        ],
        "-215147000"
      ],
      [
        [
          5,
          6,
          8,
          11
        ],
        "-1000"
      ],
      [
        [
          5,
          6,
          9,
          10
        ],
        "-601234000"
      ],
      [
        [
          5,
          7,
          8
        ],
        "-4750875000"
      ],
      [
        [
          3,
          5,
          6,
          8
        ],
        "3262973000"
      ],
      [
        [
          2,
          3,
          5,
          8
        ],
        "-2305143000"
      ],
      [
        [
          5,
          5,
          8,
          10
        ],
        "-687165000"
      ],
      [
        [
          5,
          5,
          10,
          10
        ],
        "214537000"
      ],
      [
        [
          0,
          5,
          10,
          10
        ],
        "-317053000"
      ],
      [
        [
          6,
          7,
          9
        ],
        "325154000"
      ],
      [
        [
          3,
          6,
          6,
          9
        ],
        "-325154000"
      ],
      [
        [
          2,
          3,
          6,
          9
        ],
        "-4651497000"
      ],
      [
        [
          7,
          7,
          8
        ],
        "-325154000"
      ],
      [
        [
          3,
          6,
          7,
          8
        ],
        "325154000"
      ],
      [
        [
          4,
          6,
          9,
          11
        ],
        "-285546000"
      ],
      [
        [
          3,
          4,
          6,
          9
        ],
        "1000"
      ],
      [
        [
          3,
          4,
          7,
          8
        ],
        "-328361000"
      ],
      [
        [
          7,
          8,
          10
        ],
        "-8487477610647294000/10758365869"
      ],
      [
        [
          4,
          5,
          6,
          9
        ],
        "-4000"
      ],
      [
        [
          5,
          7,
          8,
          10
        ],
        "601235000"
      ],
      [
        [
          4,
          5,
          7,
          8
        ],
        "342190000"
      ],
      [
        [
          5,
          6,
          8,
          9
        ],
        "-2000"
      ],
      [
        [
          0,
          6,
          8,
          9
        ],
        "2000"
      ],
      [
        [
          5,
          7,
          8,
          8
        ],
        "2000"
      ],
      [
        [
          0,
          7,
          8,
          8
        ],
        "-2000"
      ],
      [
        [
          0,
          0,
          8,
          8
        ],
        "-264598000"
      ],
      [
        [
          5,
          6,
          10,
          11
        ],
        "-229219000"
      ],
      [
        [
          0,
          6,
          10,
          11
        ],
        "431929000"
      ],
      [
        [
          5,
          7,
          10,
          10
        ],
        "229219000"
      ],
      [
        [
          0,
          7,
          10,
          10
        ],
        "-431929000"
      ],
      [
        [
          1,
          7,
          8,
          11
        ],
        "1940230000"
      ],
      [
        [
          1,
          7,
          9,
          10
        ],
        "-1080720000"
      ],
      [
        [
          8,
          8,
          11,
          11
        ],
        "-959780000"
      ],
      [
        [
          1,
          8,
          11,
          11
        ],
        "-260980000"
      ],
      [
        [
          8,
          9,
          10,
          11
        ],
        "1919560000"
      ],
      [
        [
          1,
          8,
          9,
          11
        ],
        "204570000"
      ],
      [
        [
          0,
          8,
          8,
          11
        ],
        "1124420000"
      ],
      [
        [
          0,
          8,
          9,
          10
        ],
        "-1124420000"
      ],
      [
        [
          0,
          1,
          8,
          9
        ],
        "-204570000"
      ],
      [
        [
          1,
          9,
          10,
          11
        ],
        "260980000"
      ],
      [
        [
          9,
          9,
          10,
          10
        ],
        "-959780000"
      ],
      [
        [
          1,
          9,
          9,
          10
        ],
        "-204570000"
      ],
      [
        [
          0,
          1,
          10,
          11
        ],
        "647440000"
      ],
      [
        [
          2,
          3,
          8,
          11
        ],
        "4000"
      ],
      [
        [
          7,
          9,
          10
        ],
        "-201297000"
      ],
      [
        [
          4,
          5,
          8,
          11
        ],
        "-16000"
      ],
      [
        [
          2,
          5,
          8,
          11
        ],
        "-184182000"
      ],
      [
        [
          2,
          8,
          11
        ],
        "351098000"
      ],
      [
        [
          4,
          5,
          9,
          10
        ],
        "-648626000"
      ],
      [
        [
          2,
          5,
          9,
          10
        ],
        "2000"
      ],
      [
        [
          2,
          5
        ],
        "-50068519206409581/500000000"
      ],
      [
        [
          2
        ],
        "-323002023783218054381/1250000000000"
      ],
      [
        [
          6,
          8,
          11,
          11
        ],
        "-33500000"
      ],
      [
        [
          7,
          8,
          10,
          11
        ],
        "33500000"
      ],
      [
        [
          0,
          2,
          8,
          11
        ],
        "-133420000"
      ],
      [
        [
          6,
          9,
          10,
          11
        ],
        "33500000"
      ],
      [
        [
          7,
          9,
          10,
          10
        ],
        "-33500000"
      ],
      [
        [
          0,
          2,
          10,
          11
        ],
        "133420000"
      ],
      [
        [
          5,
          8,
          10,
          11
        ],
        "405170000"
      ],
      [
        [
          5,
          9,
          10,
          10
        ],
        "-405170000"
      ],
      [
        [
          5,
          9,
          10
        ],
        "1186873000"
      ],
      [
        [
          3,
          8,
          8,
          11
        ],
        "873770000"
      ],
      [
        [
          8,
          9,
          11
        ],
        "-1268209000"
      ],
      [
        [
          0,
          3,
          8,
          8
        ],
        "-151260000"
      ],
      [
        [
          0,
          8,
          9
        ],
        "6429233160000/8963"
      ],
      [
        [
          3,
          8,
          9,
          10
        ],
        "-873770000"
      ],
      [
        [
          9,
          9,
          10
        ],
        "1268209000"
      ],
      [
        [
          4,
          8,
          11,
          11
        ],
        "10000"
      ],
      [
        [
          8,
          10,
          11
        ],
        "-1187320000"
      ],
      [
        [
          4,
          9,
          10,
          11
        ],
        "-10000"
      ],
      [
        [
          9,
          10,
          10
        ],
        "1187320000"
      ],
      [
        [
          2,
          3,
          3,
          6
        ],
        "4972601000"
      ],
      [
        [
          2,
          3,
          9
        ],
        "3799911752"
      ],
      [
        [
          2,
          3,
          7
        ],
        "6370941782"
      ],
      [
        [
          2,
          3,
          3,
          8
        ],
        "-3000"
      ],
      [
        [
          1,
          3,
          6,
          9
        ],
        "5697558000"
      ],
      [
        [
          1,
          3,
          3,
          6
        ],
        "-5606575000"
      ],
      [
        [
          1,
          3,
          9
        ],
        "-4561266625089731/1000000"
      ],
      [
        [
          1,
          3,
          7
        ],
        "-695634841511/500"
      ],
      [
        [
          1,
          3,
          3,
          8
        ],
        "5575871000"
      ],
      [
        [
          2,
          3,
          4,
          11
        ],
        "-5000"
      ],
      [
        [
          2,
          3,
          5,
          10
        ],
        "-2247940000"
      ],
      [
        [
          2,
          3,
          4,
          5
        ],
        "52784000"
      ],
      [
        [
          2,
          3,
          10
        ],
        "2388209842000/11389"
      ],
      [
        [
          1,
          3,
          4,
          11
        ],
        "-10000"
      ],
      [
        [
          2,
          5,
          5,
          8
        ],
        "-196615000"
      ],
      [
        [
          2,
          5,
          5,
          10
        ],
        "293663000"
      ],
      [
        [
          1,
          2,
          7,
          7
        ],
        "775192000"
      ],
      [
        [
          1,
          1,
          7,
          7
        ],
        "-667830000"
      ],
      [
        [
          1,
          2,
          3,
          7
        ],
        "579670000"
      ],
      [
        [
          1,
          1,
          7,
          9
        ],
        "557380000"
      ],
      [
        [
          1,
          1,
          3,
          7
        ],
        "-557380000"
      ],
      [
        [
          2,
          6,
          7
        ],
        "-796440000"
      ],
      [
        [
          2,
          3,
          4,
          7
        ],
        "-4000"
      ],
      [
        [
          1,
          3,
          4,
          7
        ],
        "1000"
      ],
      [
        [
          1,
          7,
          7
        ],
        "-1578164000"
      ],
      [
        [
          1,
          3,
          6,
          7
        ],
        "2050066000"
      ],
      [
        [
          2,
          2,
          7,
          9
        ],
        "2000"
      ],
      [
        [
          2,
          2,
          7,
          7
        ],
        "-2000"
      ],
      [
        [
          1,
          6,
          7,
          9
        ],
        "-2538754000"
      ],
      [
        [
          1,
          7,
          7,
          8
        ],
        "2538754000"
      ],
      [
        [
          2,
          7,
          11
        ],
        "797550000"
      ],
      [
        [
          2,
          5,
          7
        ],
        "-9658667000"
      ],
      [
        [
          2,
          3,
          7,
          10
        ],
        "-10000"
      ],
      [
        [
          1,
          7,
          11
        ],
        "-1673950000"
      ],
      [
        [
          1,
          3,
          7,
          10
        ],
        "-20200000"
      ],
      [
        [
          2,
          7,
          8
        ],
        "-3635681000"
      ],
      [
        [
          2,
          4,
          7,
          9
        ],
        "-162750000"
      ],
      [
        [
          3,
          4,
          7
        ],
        "296564000"
      ],
      [
        [
          3,
          3,
          4,
          6
        ],
        "-296564000"
      ],
      [
        [
          2,
          3,
          3,
          4
        ],
        "-51572000"
      ],
      [
        [
          1,
          2,
          3,
          3
        ],
        "-129651000"
      ],
      [
        [
          3,
          4,
          8,
          11
        ],
        "-5000"
      ],
      [
        [
          3,
          4,
          5,
          8
        ],
        "348910000"
      ],
      [
        [
          3,
          4,
          9,
          10
        ],
        "105941000"
      ],
      [
        [
          3,
          4,
          5,
          10
        ],
        "-7000"
      ],
      [
        [
          1,
          3,
          8,
          11
        ],
        "-981324000"
      ],
      [
        [
          1,
          3,
          9,
          10
        ],
        "-116191000"
      ],
      [
        [
          1,
          4,
          9
        ],
        "-237291000"
      ],
      [
        [
          1,
          8
        ],
        "237291000"
      ],
      [
        [
          3,
          4,
          4,
          9
        ],
        "3000"
      ],
      [
        [
          3,
          4,
          4,
          5
        ],
        "296083000"
      ],
      [
        [
          1,
          3,
          4,
          9
        ],
        "635651000"
      ],
      [
        [
          5,
          6,
          9
        ],
        "1487902000"
      ],
      [
        [
          3,
          5,
          6
        ],
        "-4027567000"
      ],
      [
        [
          5,
          9
        ],
        "-306242711811574817821/350117187500"
      ],
      [
        [
          5,
          7
        ],
        "4027567000"
      ],
      [
        [
          3,
          5,
          8
        ],
        "570308000"
      ],
      [
        [
          7,
          9
        ],
        "10393549489/500"
      ],
      [
        [
          3,
          6,
          9
        ],
        "3167713000"
      ],
      [
        [
          1,
          2,
          3,
          9
        ],
        "38668000"
      ],
      [
        [
          3,
          7,
          8
        ],
        "1192098950511/500"
      ],
      [
        [
          3,
          3,
          6,
          8
        ],
        "-5572698000"
      ],
      [
        [
          3,
          6,
          8
        ],
        "883122000"
      ],
      [
        [
          1,
          4,
          11,
          11
        ],
        "997250000"
      ],
      [
        [
          1,
          11,
          11
        ],
        "-352090000"
      ],
      [
        [
          1,
          10,
          11
        ],
        "-997250000"
      ],
      [
        [
          1,
          3,
          10,
          11
        ],
        "352090000"
      ],
      [
        [
          1,
          3,
          3,
          4
        ],
        "-46270000"
      ],
      [
        [
          1,
          3,
          11
        ],
        "-1306590621/50"
      ],
      [
        [
          1,
          3,
          3,
          10
        ],
        "46270000"
      ],
      [
        [
          1,
          9,
          11
        ],
        "-1680365975482269/1000000"
      ],
      [
        [
          1,
          3,
          5
        ],
        "-160355000"
      ],
      [
        [
          1,
          6,
          9,
          11
        ],
        "-859510000"
      ],
      [
        [
          1,
          3,
          6,
          11
        ],
        "859510000"
      ],
      [
        [
          5,
          10,
          11
        ],
        "-16698750920/31"
      ],
      [
        [
          1,
          5,
          10,
          11
        ],
        "-263260000"
      ],
      [
        [
          3,
          5,
          10,
          10
        ],
        "-440010000"
      ],
      [
        [
          4,
          7,
          7
        ],
        "-10000"
      ],
      [
        [
          3,
          4,
          6,
          7
        ],
        "10000"
      ],
      [
        [
          6,
          7
        ],
        "194760000"
      ],
      [
        [
          3,
          6,
          6
        ],
        "-194760000"
      ],
      [
        [
          2,
          3,
          6
        ],
        "-1311620000"
      ],
      [
        [
          4,
          5,
          7,
          10
        ],
        "-23446000"
      ],
      [
        [
          5,
          6,
          8
        ],
        "-345216000"
      ],
      [
        [
          5,
          6,
          6,
          9
        ],
        "-1002636000"
      ],
      [
        [
          3,
          5,
          6,
          6
        ],
        "1002636000"
      ],
      [
        [
          5,
          6,
          7,
          8
        ],
        "1002636000"
      ],
      [
        [
          5,
          6,
          7
        ],
        "-1002636000"
      ],
      [
        [
          1,
          4,
          9,
          11
        ],
        "-1043520000"
      ],
      [
        [
          2,
          4,
          11
        ],
        "32133000"
      ],
      [
        [
          2,
          3,
          4
        ],
        "14309000"
      ],
      [
        [
          2,
          10
        ],
        "1148537363931939/10000000"
      ],
      [
        [
          2,
          3,
          11
        ],
        "1020"
      ],
      [
        [
          2,
          3,
          3,
          10
        ],
        "5000"
      ],
      [
        [
          2,
          6,
          9
        ],
        "2070191000"
      ],
      [
        [
          2,
          3,
          8
        ],
        "952063599937/500"
      ],
      [
        [
          3,
          4,
          9
        ],
        "-149961000"
      ],
      [
        [
          3,
          3,
          4,
          8
        ],
        "1000"
      ],
      [
        [
          2,
          5,
          8
        ],
        "-33496000"
      ],
      [
        [
          2,
          5,
          10
        ],
        "210714000"
      ],
      [
        [
          2,
          2,
          3,
          9
        ],
        "-596050000"
      ],
      [
        [
          3,
          6,
          10
        ],
        "-109425370077576342842000/122527028882041"
      ],
      [
        [
          5,
          7,
          10
        ],
        "-810230000"
      ],
      [
        [
          2,
          3,
          5
        ],
        "3542301000"
      ],
      [
        [
          3,
          6,
          7
        ],
        "43415000"
      ],
      [
        [
          7,
          7
        ],
        "-643515000"
      ],
      [
        [
          3,
          3,
          6,
          6
        ],
        "600100000"
      ],
      [
        [
          4,
          5,
          7
        ],
        "-573660000"
      ],
      [
        [
          2,
          2,
          3
        ],
        "-1323547206"
      ],
      [
        [
          3,
          7
        ],
        "-2400813000"
      ],
      [
        [
          3,
          3,
          6
        ],
        "2400813000"
      ],
      [
        [
          2,
          3,
          3
        ],
        "-3937744759"
      ],
      [
        [
          3,
          9
        ],
        "-145630446361/1000"
      ],
      [
        [
          3,
          3,
          8
        ],
        "145630446361/1000"
      ],
      [
        [
          4,
          5,
          11
        ],
        "1547108600/3"
      ],
      [
        [
          2,
          5,
          10,
          11
        ],
        "-133420000"
      ],
      [
        [
          2,
          4,
          5,
          11
        ],
        "-130776000"
      ],
      [
        [
          4,
          4,
          9,
          11
        ],
        "-216532000"
      ],
      [
        [
          4,
          9,
          10
        ],
        "69429113462093505900/229662771107"
      ],
      [
        [
          2,
          4,
          5,
          9
        ],
        "317600000"
      ],
      [
        [
          4,
          8,
          11
        ],
        "89474000"
      ],
      [
        [
          5,
          8,
          10
        ],
        "503617203798264000/462098131"
      ],
      [
        [
          8,
          10
        ],
        "-40248621090780299900/229662771107"
      ],
      [
        [
          2,
          4,
          5
        ],
        "-46442000"
      ],
      [
        [
          4,
          9,
          11
        ],
        "416578000"
      ],
      [
        [
          3,
          8,
          10
        ],
        "9050330033118172670100/5346907836893"
      ],
      [
        [
          2,
          4,
          5,
          5
        ],
        "-97048000"
      ],
      [
        [
          2,
          5,
          11
        ],
        "227824000"
      ],
      [
        [
          4,
          4,
          5,
          11
        ],
        "9000"
      ],
      [
        [
          3,
          4,
          5
        ],
        "-2881880600/3"
      ],
      [
        [
          4,
          5,
          10,
          11
        ],
        "-107260000"
      ],
      [
        [
          5,
          10,
          10
        ],
        "268268000"
      ],
      [
        [
          4,
          4,
          11,
          11
        ],
        "29580000"
      ],
      [
        [
          4,
          10,
          11
        ],
        "-1446808436068061/10000000"
      ],
      [
        [
          10,
          10
        ],
        "1151008436068061/10000000"
      ],
      [
        [
          4,
          6,
          11
        ],
        "107654824"
      ],
      [
        [
          6,
          10
        ],
        "-271227580"
      ],
      [
        [
          3,
          3,
          4
        ],
        "-1977424240/93"
      ],
      [
        [
          3,
          11
        ],
        "19516363760/93"
      ],
      [
        [
          3,
          3,
          10
        ],
        "-38822047760/93"
      ],
      [
        [
          4,
          5,
          5,
          10
        ],
        "-4000"
      ],
      [
        [
          5,
          5,
          10
        ],
        "428987000"
      ],
      [
        [
          5,
          5,
          8
        ],
        "-308190000"
      ],
      [
        [
          4,
          5,
          9
        ],
        "6924072983000/8963"
      ],
      [
        [
          6,
          8,
          9
        ],
        "-261300000"
      ],
      [
        [
          8,
          9
        ],
        "1154694000"
      ],
      [
        [
          7,
          8,
          8
        ],
        "261300000"
      ],
      [
        [
          3,
          8,
          8
        ],
        "-261300000"
      ],
      [
        [
          4,
          6,
          9
        ],
        "396303000"
      ],
      [
        [
          4,
          7,
          8
        ],
        "-422433000"
      ],
      [
        [
          6,
          9,
          9
        ],
        "-1966562483/25000000"
      ],
      [
        [
          9,
          9
        ],
        "232697492647/1000"
      ],
      [
        [
          7,
          8,
          9
        ],
        "1966562483/25000000"
      ],
      [
        [
          3,
          8,
          9
        ],
        "-378527492647/1000"
      ],
      [
        [
          4,
          6,
          11,
          11
        ],
        "236210000"
      ],
      [
        [
          6,
          10,
          11
        ],
        "70137580"
      ],
      [
        [
          4,
          7,
          10,
          11
        ],
        "-236210000"
      ],
      [
        [
          7,
          10,
          10
        ],
        "-70137580"
      ],
      [
        [
          3,
          3,
          8,
          8
        ],
        "145830000"
      ],
      [
        [
          5,
          8,
          8,
          11
        ],
        "125940000"
      ],
      [
        [
          3,
          5,
          8,
          8
        ],
        "-1014170000"
      ],
      [
        [
          5,
          8,
          9,
          10
        ],
        "-125940000"
      ],
      [
        [
          5,
          8,
          9
        ],
        "1393099608000/8963"
      ],
      [
        [
          5,
          5,
          6,
          8
        ],
        "149896000"
      ],
      [
        [
          5,
          5,
          6,
          10
        ],
        "-149896000"
      ],
      [
        [
          5,
          5,
          8,
          8
        ],
        "337500000"
      ],
      [
        [
          4,
          9,
          9
        ],
        "-687133000"
      ],
      [
        [
          4,
          4,
          11
        ],
        "142592000"
      ],
      [
        [
          4,
          4,
          5
        ],
        "-142592000"
      ],
      [
        [
          4,
          10
        ],
        "-142592000"
      ],
      [
        [
          6,
          8
        ],
        "26130000"
      ],
      [
        [
          8,
          8,
          11
        ],
        "714900000"
      ],
      [
        [
          8,
          9,
          10
        ],
        "-714900000"
      ],
      [
        [
          2,
          5,
          9
        ],
        "-36870876793590419/500000000"
      ],
      [
        [
          2,
          9,
          9
        ],
        "-12858437517/25000000"
      ],
      [
        [
          1,
          2,
          9
        ],
        "-89395003063/500"
      ],
      [
        [
          2,
          2,
          9
        ],
        "329326206"
      ],
      [
        [
          1,
          3,
          3
        ],
        "1830005312639/1000"
      ],
      [
        [
          1,
          9,
          9
        ],
        "-86866899647/1000"
      ],
      [
        [
          2,
          10,
          11
        ],
        "-1469867363931939/10000000"
      ],
      [
        [
          4,
          7,
          10
        ],
        "134802756"
      ]
    ],
    "shifted": [
      [
        [
          0,
          1
        ],
        "-6562178875820147298006177901/2083897500000000000"
      ],
      [
        [
          0
        ],
        "30919269374287350843290077431/69463250000000000000000000"
      ],
      [
        [
          1
        ],
        "-11876353956162463880511599/1041948750000000000000000"
      ],
      [
        [],
        "-11198915587536472391770279878199603184107/69463250000000000000000000000000"
      ],
      [
        [
          0,
          1,
          1
        ],
        "5221822701413/1000"
      ],
      [
        [
          1,
          1
        ],
        "-11951517924211947/12500000"
      ],
      [
        [
          0,
          0,
          1,
          1
        ],
        "-4434330000"
      ],
      [
        [
          0,
          0,
          1
        ],
        "-1647830676/1120375"
      ],
      [
        [
          0,
          0
        ],
        "-786538045076372612859/1120375000000"
      ],
      [
        [
          0,
          0,
          1,
          4
        ],
        "54963658628000/8963"
      ],
      [
        [
          0,
          0,
          4
        ],
        "-1643318886/1120375"
      ],
      [
        [
          0,
          1,
          4
        ],
        "834067967322502397/416779500"
      ],
      [
        [
          0,
          4
        ],
        "-4813213039235121/34731625000000"
      ],
      [
        [
          1,
          4
        ],
        "-1454096194187514430309343/833559000000000"
      ],
      [
        [
          4
        ],
        "164104412248336454312157133/868290625000000000000000"
      ],
      [
        [
          0,
          2
        ],
        "165513664670738048481/2240750000000000000"
      ],
      [
        [
          2
        ],
        "-204502167105195099860883917/2240750000000000000000000"
      ],
      [
        [
          0,
          1,
          2
        ],
        "-158583/25"
      ],
      [
        [
          1,
          2
        ],
        "-1462141049867/1000000000"
      ],
      [
        [
          0,
          0,
          1,
          2
        ],
        "2437960000"
      ],
      [
        [
          0,
          0,
          2
        ],
        "-1249748993147649/896300"
      ],
      [
        [
          0,
          0,
          2,
          4
        ],
        "-11136865230000/8963"
      ],
      [
        [
          0,
          2,
          4
        ],
        "-7597324939171249/4481500"
      ],
      [
        [
          2,
          4
        ],
        "-1054129504230855402937/4481500000000"
      ],
      [
        [
          0,
          1,
          2,
          3
        ],
        "759640000"
      ],
      [
        [
          0,
          1,
          3
        ],
        "-59593/40"
      ],
      [
        [
          0,
          2,
          3
        ],
        "160047/1000"
      ],
      [
        [
          0,
          3
        ],
        "-156282717273/250000000"
      ],
      [
        [
          1,
          2,
          3
        ],
        "-15573/100"
      ],
      [
        [
          1,
          3
        ],
        "293178000751281/625000000000"
      ],
      [
        [
          2,
          3
        ],
        "-610339074213/1000000000"
      ],
      [
        [
          3
        ],
        "21992289886246941604331/116250000000000000000"
      ],
      [
        [
          0,
          1,
          1,
          3
        ],
        "215119000"
      ],
      [
        [
          1,
          1,
          3
        ],
        "75506980058/25"
      ],
      [
        [
          0,
          1,
          4,
          7
        ],
        "430806000"
      ],
      [
        [
          0,
          1,
          7
        ],
        "65430720113/50"
      ],
      [
        [
          0,
          4,
          7
        ],
        "196222/125"
      ],
      [
        [
          0,
          7
        ],
        "-960435697478986257/1000000000"
      ],
      [
        [
          1,
          4,
          7
        ],
        "3349283/1000"
      ],
      [
        [
          1,
          7
        ],
        "-699796736039/250000000"
      ],
      [
        [
          4,
          7
        ],
        "-33712342901/1000000000"
      ],
      [
        [
          7
        ],
        "-21745967331724562739511/96875000000000000000"
      ],
      [
        [
          0,
          1,
          1,
          7
        ],
        "-3568210000"
      ],
      [
        [
          1,
          1,
          7
        ],
        "9329618763/50"
      ],
      [
        [
          0,
          1,
          6
        ],
        "11693081648922799/10000000"
      ],
      [
        [
          0,
          6
        ],
        "15413169858577477/5000000000000"
      ],
      [
        [
          1,
          6
        ],
        "-80892034559139963/10000000000000"
      ],
      [
        [
          6
        ],
        "768793034161591715143737/775000000000000000000"
      ],
      [
        [
          0,
          2,
          4,
          7
        ],
        "-10000"
      ],
      [
        [
          0,
          2,
          7
        ],
        "-730514821711/1000"
      ],
      [
        [
          2,
          4,
          7
        ],
        "-71237423569/500"
      ],
      [
        [
          2,
          7
        ],
        "-2098661855522059/12500000000000"
      ],
      [
        [
          0,
          1,
          2,
          7
        ],
        "10000"
      ],
      [
        [
          1,
          2,
          7
        ],
        "-163806/25"
      ],
      [
        [
          0,
          2,
          6
        ],
        "-368428454587/250"
      ],
      [
        [
          2,
          6
        ],
        "1276538436283/200000000"
      ],
      [
        [
          0,
          1,
          3,
          6
        ],
        "-695820000"
      ],
      [
        [
          0,
          3,
          6
        ],
        "8280832521/1000"
      ],
      [
        [
          1,
          3,
          6
        ],
        "-14349182799/10000000"
      ],
      [
        [
          3,
          6
        ],
        "298174082897203213/155000000000000"
      ],
      [
        [
          0,
          2,
          3,
          6
        ],
        "-1432104000"
      ],
      [
        [
          2,
          3,
          6
        ],
        "1191019/125"
      ],
      [
        [
          0,
          1,
          4,
          11
        ],
        "-145880000"
      ],
      [
        [
          0,
          1,
          11
        ],
        "4370323/300"
      ],
      [
        [
          0,
          4,
          11
        ],
        "-1683073/500"
      ],
      [
        [
          0,
          11
        ],
        "-921677982791/750000000"
      ],
      [
        [
          1,
          4,
          11
        ],
        "-254176423647/100"
      ],
      [
        [
          1,
          11
        ],
        "-20573479397132611/1500000000000"
      ],
      [
        [
          4,
          11
        ],
        "-139413342658933/46500000000"
      ],
      [
        [
          11
        ],
        "5187745091054891611207/3875000000000000000"
      ],
      [
        [
          0,
          1,
          3,
          4
        ],
        "2000"
      ],
      [
        [
          0,
          3,
          4
        ],
        "-183541/125"
      ],
      [
        [
          1,
          3,
          4
        ],
        "-3656091/1000"
      ],
      [
        [
          3,
          4
        ],
        "179959157549451067/181640625000000"
      ],
      [
        [
          0,
          1,
          10
        ],
        "-1585963810615850204303789100846461/847419331570948602201000"
      ],
      [
        [
          0,
          10
        ],
        "3374387159069214174634620553679958034191/1375804607731651814074263270718750000"
      ],
      [
        [
          1,
          10
        ],
        "-131999812763680446515686828926581539/667448651028568392808562625000000"
      ],
      [
        [
          10
        ],
        "46011968816302711232464768586739068644880392422895749940254218005571598061/203981887885465398239472514141991896087589202529824349000000000000000000"
      ],
      [
        [
          0,
          1,
          3,
          10
        ],
        "-556130000"
      ],
      [
        [
          0,
          3,
          10
        ],
        "2665389/500"
      ],
      [
        [
          1,
          3,
          10
        ],
        "1934671075231/1000"
      ],
      [
        [
          3,
          10
        ],
        "-964677420056681510023758051554070483251/404522985854058361500000000000"
      ],
      [
        [
          0,
          2,
          4,
          11
        ],
        "-4000"
      ],
      [
        [
          0,
          2,
          11
        ],
        "-3046633/750"
      ],
      [
        [
          2,
          4,
          11
        ],
        "-14724870153/200"
      ],
      [
        [
          2,
          11
        ],
        "-1393786313/60000000"
      ],
      [
        [
          0,
          2,
          3,
          4
        ],
        "4000"
      ],
      [
        [
          2,
          3,
          4
        ],
        "-162401/500"
      ],
      [
        [
          0,
          2,
          10
        ],
        "36780612779633513/14394571351000"
      ],
      [
        [
          2,
          10
        ],
        "-3409598287587718942053411283704925131803/5164922552036561195000000000000"
      ],
      [
        [
          0,
          2,
          3,
          10
        ],
        "-4000"
      ],
      [
        [
          2,
          3,
          10
        ],
        "-7574550948319479/5694500"
      ],
      [
        [
          0,
          1,
          5,
          10
        ],
        "-1158703000"
      ],
      [
        [
          0,
          1,
          5
        ],
        "24362287452216619/8963000"
      ],
      [
        [
          0,
          5,
          10
        ],
        "-58390116783/500"
      ],
      [
        [
          0,
          5
        ],
        "7353619766546839/8963000000000"
      ],
      [
        [
          1,
          5,
          10
        ],
        "-401361634307997907/58870758351000"
      ],
      [
        [
          1,
          5
        ],
        "-1978522239542865047/833559000000000"
      ],
      [
        [
          5,
          10
        ],
        "1330467546073911774952578279735196485459/282665111940470209705062160600000000"
      ],
      [
        [
          5
        ],
        "-75392098442598727856469485631/69463250000000000000000000"
      ],
      [
        [
          0,
          2,
          5,
          10
        ],
        "3329743000"
      ],
      [
        [
          0,
          2,
          5
        ],
        "17830293633/8963000"
      ],
      [
        [
          2,
          5,
          10
        ],
        "49567/500"
      ],
      [
        [
          2,
          5
        ],
        "536699215782265701519/2240750000000000000"
      ],
      [
        [
          0,
          1,
          6,
          11
        ],
        "466300000"
      ],
      [
        [
          0,
          6,
          11
        ],
        "-3025949/1000"
      ],
      [
        [
          1,
          6,
          11
        ],
        "-283591/100"
      ],
      [
        [
          6,
          11
        ],
        "-507396266895133/93000000000"
      ],
      [
        [
          0,
          1,
          7,
          10
        ],
        "-10000"
      ],
      [
        [
          0,
          7,
          10
        ],
        "-2403201/1000"
      ],
      [
        [
          1,
          7,
          10
        ],
        "1198894089/630100"
      ],
      [
        [
          7,
          10
        ],
        "513740693787277354296681443583/110291829855105763000000000"
      ],
      [
        [
          0,
          2,
          6,
          11
        ],
        "-694740000"
      ],
      [
        [
          2,
          6,
          11
        ],
        "-690849456/5"
      ],
      [
        [
          0,
          2,
          7,
          10
        ],
        "-188290000"
      ],
      [
        [
          2,
          7,
          10
        ],
        "-39303251917/7176208900"
      ],
      [
        [
          0,
          1,
          8,
          11
        ],
        "-251070000"
      ],
      [
        [
          0,
          1,
          8
        ],
        "-2004052905654973/1792600"
      ],
      [
        [
          0,
          8,
          11
        ],
        "1461556/125"
      ],
      [
        [
          0,
          8
        ],
        "-21698323557606687/8963000000000"
      ],
      [
        [
          1,
          8,
          11
        ],
        "217036570337/1000"
      ],
      [
        [
          1,
          8
        ],
        "-43314356397139767/8963000000000"
      ],
      [
        [
          8,
          11
        ],
        "-506042391463007/46500000000"
      ],
      [
        [
          8
        ],
        "-25795028153081006154281687/173658125000000000000000"
      ],
      [
        [
          0,
          1,
          3,
          8
        ],
        "2747400000"
      ],
      [
        [
          0,
          3,
          8
        ],
        "-8487653031/250"
      ],
      [
        [
          1,
          3,
          8
        ],
        "138457453203/40"
      ],
      [
        [
          3,
          8
        ],
        "-11388523968033607649/3100000000"
      ],
      [
        [
          0,
          1,
          9,
          10
        ],
        "-191800000"
      ],
      [
        [
          0,
          1,
          9
        ],
        "-321537848981/200"
      ],
      [
        [
          0,
          9,
          10
        ],
        "139521/250"
      ],
      [
        [
          0,
          9
        ],
        "13651301466207765196937/4481500000000000000"
      ],
      [
        [
          1,
          9,
          10
        ],
        "12496793/1000"
      ],
      [
        [
          1,
          9
        ],
        "7696378777568339/1000000000000"
      ],
      [
        [
          9,
          10
        ],
        "-331722623810746397087561718424879965529/76594679659782752556473000000000000"
      ],
      [
        [
          9
        ],
        "75312964265386597883883284002534541/138926500000000000000000000"
      ],
      [
        [
          0,
          2,
          3,
          8
        ],
        "-2205497000"
      ],
      [
        [
          0,
          2,
          8
        ],
        "-1073325201/896300"
      ],
      [
        [
          2,
          3,
          8
        ],
        "-394121797483/200"
      ],
      [
        [
          2,
          8
        ],
        "5813224574936879/8963000000000"
      ],
      [
        [
          0,
          2,
          9
        ],
        "1522053590419/500000000"
      ],
      [
        [
          2,
          9
        ],
        "374531772996648977/500000000000000"
      ],
      [
        [
          0,
          1,
          4,
          9
        ],
        "1945444000"
      ],
      [
        [
          0,
          4,
          9
        ],
        "19242471203/4481500"
      ],
      [
        [
          1,
          4,
          9
        ],
        "-343713381553/1000"
      ],
      [
        [
          4,
          9
        ],
        "-832597078722946780791/1120375000000"
      ],
      [
        [
          0,
          1,
          5,
          8
        ],
        "-9439752365000/8963"
      ],
      [
        [
          0,
          5,
          8
        ],
        "14173238613/8963000"
      ],
      [
        [
          1,
          5,
          8
        ],
        "-2825130410257213/1792600"
      ],
      [
        [
          5,
          8
        ],
        "-425958928995507513/277853000000000"
      ],
      [
        [
          0,
          1,
          4,
          5
        ],
        "-50165943988000/8963"
      ],
      [
        [
          0,
          4,
          5
        ],
        "-1456534223/1120375"
      ],
      [
        [
          1,
          4,
          5
        ],
        "4579597734377/833559000"
      ],
      [
        [
          4,
          5
        ],
        "-1760538596758698702403/2170726562500000000"
      ],
      [
        [
          0,
          2,
          4,
          9
        ],
        "-1372060000"
      ],
      [
        [
          2,
          4,
          9
        ],
        "-24203357831/500"
      ],
      [
        [
          0,
          2,
          5,
          8
        ],
        "28321000/8963"
      ],
      [
        [
          2,
          5,
          8
        ],
        "3309350964046681/8963000"
      ],
      [
        [
          0,
          2,
          4,
          5
        ],
        "-20790000/8963"
      ],
      [
        [
          2,
          4,
          5
        ],
        "-17895046/44815"
      ],
      [
        [
          0,
          1,
          7,
          8
        ],
        "-588446000"
      ],
      [
        [
          0,
          7,
          8
        ],
        "-1309246231371/1000"
      ],
      [
        [
          1,
          7,
          8
        ],
        "16953849299/500"
      ],
      [
        [
          7,
          8
        ],
        "418343303120208829/387500000000000"
      ],
      [
        [
          0,
          1,
          6,
          9
        ],
        "-274244000"
      ],
      [
        [
          0,
          6,
          9
        ],
        "1120937/250"
      ],
      [
        [
          1,
          6,
          9
        ],
        "-72003/125"
      ],
      [
        [
          6,
          9
        ],
        "-735198999568165079/193750000000000"
      ],
      [
        [
          0,
          2,
          7,
          8
        ],
        "-7000"
      ],
      [
        [
          2,
          7,
          8
        ],
        "-840662/125"
      ],
      [
        [
          0,
          2,
          6,
          9
        ],
        "2513290000"
      ],
      [
        [
          2,
          6,
          9
        ],
        "3742771/1000"
      ],
      [
        [
          0,
          0,
          1,
          8
        ],
        "6469279720000/8963"
      ],
      [
        [
          0,
          0,
          8
        ],
        "-3441773242214457/4481500"
      ],
      [
        [
          0,
          0,
          2,
          8
        ],
        "6083670670000/8963"
      ],
      [
        [
          0,
          0,
          1,
          10
        ],
        "912764000"
      ],
      [
        [
          0,
          0,
          10
        ],
        "-347907/50"
      ],
      [
        [
          0,
          0,
          2,
          10
        ],
        "-2518590000"
      ],
      [
        [
          0,
          3,
          4,
          6
        ],
        "886673000"
      ],
      [
        [
          0,
          4,
          6
        ],
        "-114057/1000"
      ],
      [
        [
          3,
          4,
          6
        ],
        "-48405122429/7812500"
      ],
      [
        [
          4,
          6
        ],
        "-140119936773690056819/3125000000000"
      ],
      [
        [
          0,
          4,
          6,
          9
        ],
        "-853404000"
      ],
      [
        [
          4,
          6,
          9
        ],
        "-2616347/1000"
      ],
      [
        [
          0,
          4,
          7,
          8
        ],
        "623234000"
      ],
      [
        [
          0,
          4,
          8
        ],
        "7019522999/4481500"
      ],
      [
        [
          4,
          7,
          8
        ],
        "-5662367/1000"
      ],
      [
        [
          4,
          8
        ],
        "9016129989795269/8963000000000"
      ],
      [
        [
          0,
          3,
          4,
          8
        ],
        "-761144000"
      ],
      [
        [
          3,
          4,
          8
        ],
        "-1562363/500"
      ],
      [
        [
          0,
          4,
          5,
          8
        ],
        "-28482000/8963"
      ],
      [
        [
          4,
          5,
          8
        ],
        "4540739289/4481500"
      ],
      [
        [
          0,
          4,
          5,
          10
        ],
        "2000"
      ],
      [
        [
          0,
          4,
          10
        ],
        "-127165507875877/77929094500"
      ],
      [
        [
          4,
          5,
          10
        ],
        "-556228720862826666065649/72021777837944759000"
      ],
      [
        [
          4,
          10
        ],
        "382206137941504432484643892783942971/178974117927292726115000000000000"
      ],
      [
        [
          0,
          0,
          4,
          8
        ],
        "-408492410000/8963"
      ],
      [
        [
          0,
          0,
          4,
          10
        ],
        "365000000"
      ],
      [
        [
          1,
          1,
          5
        ],
        "-20417704824/5"
      ],
      [
        [
          0,
          1,
          1,
          5
        ],
        "1996370000"
      ],
      [
        [
          0,
          4,
          4,
          5
        ],
        "-129440460000/8963"
      ],
      [
        [
          0,
          4,
          4
        ],
        "1597603297/8963000"
      ],
      [
        [
          4,
          4,
          5
        ],
        "22262064037/8963000"
      ],
      [
        [
          4,
          4
        ],
        "-640204248472471229027/4481500000000"
      ],
      [
        [
          0,
          0,
          4,
          4
        ],
        "-1593000/8963"
      ],
      [
        [
          0,
          3,
          4,
          4
        ],
        "-1000"
      ],
      [
        [
          3,
          4,
          4
        ],
        "-75013/200"
      ],
      [
        [
          0,
          3,
          4,
          10
        ],
        "-1121280000"
      ],
      [
        [
          3,
          4,
          10
        ],
        "-684944013/497000"
      ],
      [
        [
          0,
          4,
          8,
          11
        ],
        "-705922000"
      ],
      [
        [
          4,
          8,
          11
        ],
        "5613743/1000"
      ],
      [
        [
          0,
          4,
          9,
          10
        ],
        "-513510000"
      ],
      [
        [
          4,
          9,
          10
        ],
        "-11940461088226633705899/45932554221400"
      ],
      [
        [
          1,
          1,
          5,
          7
        ],
        "3100920000"
      ],
      [
        [
          1,
          5,
          7
        ],
        "33039676822/25"
      ],
      [
        [
          5,
          7
        ],
        "-308373748570857741/1000000000"
      ],
      [
        [
          0,
          1,
          5,
          6
        ],
        "3100920000"
      ],
      [
        [
          0,
          5,
          6
        ],
        "236217/1000"
      ],
      [
        [
          1,
          5,
          6
        ],
        "52676789379/50"
      ],
      [
        [
          5,
          6
        ],
        "201868419883/1000000000"
      ],
      [
        [
          0,
          0,
          1,
          6
        ],
        "-3100920000"
      ],
      [
        [
          0,
          0,
          6
        ],
        "1486499/1000"
      ],
      [
        [
          1,
          5,
          5,
          10
        ],
        "-723861000"
      ],
      [
        [
          1,
          5,
          5
        ],
        "-1101027/1000"
      ],
      [
        [
          5,
          5,
          10
        ],
        "-27573/20"
      ],
      [
        [
          5,
          5
        ],
        "-24652893170143973/8963000000000"
      ],
      [
        [
          1,
          2,
          5,
          7
        ],
        "-484550000"
      ],
      [
        [
          1,
          2,
          5
        ],
        "6659454259/20"
      ],
      [
        [
          2,
          5,
          7
        ],
        "1577061/200"
      ],
      [
        [
          1,
          3,
          5,
          6
        ],
        "-2459040000"
      ],
      [
        [
          1,
          3,
          5
        ],
        "1071331/1000"
      ],
      [
        [
          3,
          5,
          6
        ],
        "28177252217/40"
      ],
      [
        [
          3,
          5
        ],
        "3609825741869/3000000000"
      ],
      [
        [
          1,
          2,
          3,
          5
        ],
        "-98450000"
      ],
      [
        [
          2,
          3,
          5
        ],
        "-7413151/1000"
      ],
      [
        [
          1,
          5,
          9
        ],
        "814140467/25"
      ],
      [
        [
          5,
          9
        ],
        "-4794491808261907196937/4481500000000000000"
      ],
      [
        [
          1,
          2,
          5,
          9
        ],
        "258160000"
      ],
      [
        [
          1,
          2,
          9
        ],
        "-341/4"
      ],
      [
        [
          2,
          5,
          9
        ],
        "289118409581/500000000"
      ],
      [
        [
          1,
          3,
          5,
          8
        ],
        "686665000"
      ],
      [
        [
          3,
          5,
          8
        ],
        "140437/40"
      ],
      [
        [
          0,
          1,
          2,
          9
        ],
        "-258160000"
      ],
      [
        [
          1,
          5,
          6,
          11
        ],
        "228440000"
      ],
      [
        [
          1,
          5,
          11
        ],
        "45768206409/200"
      ],
      [
        [
          5,
          6,
          11
        ],
        "-38601/8"
      ],
      [
        [
          5,
          11
        ],
        "2383746475117/1500000000"
      ],
      [
        [
          1,
          2,
          5,
          11
        ],
        "324840000"
      ],
      [
        [
          1,
          2,
          11
        ],
        "4952161437/25"
      ],
      [
        [
          2,
          5,
          11
        ],
        "755877/500"
      ],
      [
        [
          1,
          5,
          7,
          10
        ],
        "-206270000"
      ],
      [
        [
          5,
          7,
          10
        ],
        "-24677/40"
      ],
      [
        [
          0,
          1,
          2,
          11
        ],
        "-324840000"
      ],
      [
        [
          1,
          4,
          5,
          7
        ],
        "584930000"
      ],
      [
        [
          4,
          5,
          7
        ],
        "-51214559413/250"
      ],
      [
        [
          1,
          3,
          4,
          5
        ],
        "-437381000"
      ],
      [
        [
          3,
          4,
          5
        ],
        "2094053/1500"
      ],
      [
        [
          1,
          3,
          5,
          10
        ],
        "2468561000"
      ],
      [
        [
          3,
          5,
          10
        ],
        "-336105022189/3000"
      ],
      [
        [
          1,
          5,
          8,
          11
        ],
        "5000"
      ],
      [
        [
          5,
          8,
          11
        ],
        "161302709/46500"
      ],
      [
        [
          1,
          4,
          5,
          11
        ],
        "76660000"
      ],
      [
        [
          4,
          5,
          11
        ],
        "-1656197/150"
      ],
      [
        [
          1,
          5,
          9,
          10
        ],
        "102900000"
      ],
      [
        [
          5,
          9,
          10
        ],
        "-62009/500"
      ],
      [
        [
          1,
          5,
          7,
          8
        ],
        "-8615570000"
      ],
      [
        [
          5,
          7,
          8
        ],
        "-135039/200"
      ],
      [
        [
          1,
          5,
          6,
          9
        ],
        "1563670000"
      ],
      [
        [
          5,
          6,
          9
        ],
        "-149080400237/500"
      ],
      [
        [
          1,
          5,
          5,
          8
        ],
        "518565000"
      ],
      [
        [
          5,
          5,
          8
        ],
        "-55684461321/8963000"
      ],
      [
        [
          1,
          4,
          7,
          11
        ],
        "-612460000"
      ],
      [
        [
          1,
          7,
          11
        ],
        "-479441/100"
      ],
      [
        [
          4,
          7,
          11
        ],
        "-365229/50"
      ],
      [
        [
          7,
          11
        ],
        "-1022073742381/2325000000"
      ],
      [
        [
          0,
          4,
          6,
          11
        ],
        "-297237000"
      ],
      [
        [
          4,
          6,
          11
        ],
        "-9303474361/40"
      ],
      [
        [
          0,
          5,
          6,
          10
        ],
        "-1000"
      ],
      [
        [
          0,
          6,
          10
        ],
        "114821/25"
      ],
      [
        [
          5,
          6,
          10
        ],
        "6050879/1000"
      ],
      [
        [
          6,
          10
        ],
        "7445080822664227717055421/17503861268863000000000"
      ],
      [
        [
          0,
          4,
          5,
          6
        ],
        "512384000"
      ],
      [
        [
          4,
          5,
          6
        ],
        "-5965317049/1953125"
      ],
      [
        [
          2,
          7,
          8,
          11
        ],
        "-883040000"
      ],
      [
        [
          2,
          7,
          11
        ],
        "7588/5"
      ],
      [
        [
          2,
          8,
          11
        ],
        "1449027/500"
      ],
      [
        [
          7,
          8,
          11
        ],
        "2231383/465"
      ],
      [
        [
          2,
          7,
          9,
          10
        ],
        "883040000"
      ],
      [
        [
          2,
          7,
          9
        ],
        "-147376862483/25000000"
      ],
      [
        [
          2,
          9,
          10
        ],
        "-27332/25"
      ],
      [
        [
          7,
          9,
          10
        ],
        "-220743/125"
      ],
      [
        [
          7,
          9
        ],
        "1123505734412357/1562500000000"
      ],
      [
        [
          0,
          6,
          8,
          11
        ],
        "235195000"
      ],
      [
        [
          0,
          6,
          8
        ],
        "17003138009/50"
      ],
      [
        [
          6,
          8,
          11
        ],
        "-2789077/1000"
      ],
      [
        [
          6,
          8
        ],
        "4333774468713/1000000000"
      ],
      [
        [
          0,
          0,
          6,
          8
        ],
        "243323000"
      ],
      [
        [
          0,
          6,
          9,
          10
        ],
        "-235196000"
      ],
      [
        [
          6,
          9,
          10
        ],
        "-31337689275252710861/5379182934500"
      ],
      [
        [
          0,
          0,
          6,
          10
        ],
        "-243323000"
      ],
      [
        [
          2,
          7,
          7
        ],
        "144971/125"
      ],
      [
        [
          7,
          7
        ],
        "-428297400231841683/500000000"
      ],
      [
        [
          2,
          3,
          6,
          7
        ],
        "870990000"
      ],
      [
        [
          2,
          3,
          7
        ],
        "-447367/1000"
      ],
      [
        [
          2,
          6,
          7
        ],
        "-167126807033/500"
      ],
      [
        [
          3,
          6,
          7
        ],
        "121720405632/125"
      ],
      [
        [
          3,
          7
        ],
        "636608484261/500000000"
      ],
      [
        [
          6,
          7
        ],
        "1889485901729/250000000"
      ],
      [
        [
          2,
          2,
          3,
          7
        ],
        "1000"
      ],
      [
        [
          2,
          2,
          3
        ],
        "-92264849521/50"
      ],
      [
        [
          2,
          2,
          7
        ],
        "1507689/1000"
      ],
      [
        [
          2,
          2
        ],
        "-36564165553374749/50000000"
      ],
      [
        [
          0,
          6,
          7
        ],
        "-143149/125"
      ],
      [
        [
          0,
          2,
          6,
          7
        ],
        "-95806000"
      ],
      [
        [
          0,
          3,
          6,
          6
        ],
        "1043384000"
      ],
      [
        [
          0,
          6,
          6
        ],
        "-120881711677/250"
      ],
      [
        [
          3,
          6,
          6
        ],
        "150258191576/125"
      ],
      [
        [
          6,
          6
        ],
        "-290408955039/250000000"
      ],
      [
        [
          2,
          6,
          7,
          9
        ],
        "4000"
      ],
      [
        [
          6,
          7,
          9
        ],
        "373081/250"
      ],
      [
        [
          2,
          7,
          7,
          8
        ],
        "-4000"
      ],
      [
        [
          7,
          7,
          8
        ],
        "-373081/250"
      ],
      [
        [
          2,
          3,
          7,
          8
        ],
        "-7904217000"
      ],
      [
        [
          3,
          7,
          8
        ],
        "-511172658063/1000"
      ],
      [
        [
          0,
          6,
          6,
          9
        ],
        "-1210966000"
      ],
      [
        [
          6,
          6,
          9
        ],
        "-72911270327/100"
      ],
      [
        [
          0,
          6,
          7,
          8
        ],
        "1210966000"
      ],
      [
        [
          6,
          7,
          8
        ],
        "72911270327/100"
      ],
      [
        [
          0,
          3,
          6,
          8
        ],
        "-3000"
      ],
      [
        [
          3,
          6,
          8
        ],
        "-2571541514131/1000"
      ],
      [
        [
          2,
          4,
          5,
          7
        ],
        "-10000"
      ],
      [
        [
          2,
          5,
          7,
          8
        ],
        "10762729000"
      ],
      [
        [
          0,
          5,
          6,
          8
        ],
        "-512383000"
      ],
      [
        [
          5,
          6,
          8
        ],
        "1797565920687/1000"
      ],
      [
        [
          2,
          4,
          9,
          11
        ],
        "2000"
      ],
      [
        [
          2,
          9,
          11
        ],
        "-145481/125"
      ],
      [
        [
          4,
          9,
          11
        ],
        "2018381/500"
      ],
      [
        [
          9,
          11
        ],
        "97313860736484677/23250000000000"
      ],
      [
        [
          2,
          3,
          4,
          9
        ],
        "-2000"
      ],
      [
        [
          2,
          3,
          9
        ],
        "-5171245517/25"
      ],
      [
        [
          3,
          4,
          9
        ],
        "-719721/500"
      ],
      [
        [
          3,
          9
        ],
        "121611924318959/250000000000"
      ],
      [
        [
          2,
          3,
          9,
          10
        ],
        "317598000"
      ],
      [
        [
          3,
          9,
          10
        ],
        "-2145027847234269/1000000"
      ],
      [
        [
          0,
          8,
          10
        ],
        "-48741851319/1000"
      ],
      [
        [
          8,
          10
        ],
        "-705654490124330053708548601587097/224617828914318922453000000000"
      ],
      [
        [
          0,
          3,
          8,
          10
        ],
        "1297650000"
      ],
      [
        [
          3,
          8,
          10
        ],
        "63074208861547300363/5346907836893000"
      ],
      [
        [
          3,
          4,
          4,
          11
        ],
        "-5000"
      ],
      [
        [
          3,
          4,
          11
        ],
        "40589011/9300"
      ],
      [
        [
          3,
          11
        ],
        "-34406440768499/9300000000"
      ],
      [
        [
          4,
          4,
          11
        ],
        "-318201/250"
      ],
      [
        [
          3,
          3,
          4,
          4
        ],
        "-216676000"
      ],
      [
        [
          3,
          3,
          4
        ],
        "-9906766321423/93000"
      ],
      [
        [
          3,
          3
        ],
        "-13897339364384678341/11625000000"
      ],
      [
        [
          3,
          3,
          4,
          10
        ],
        "362496000"
      ],
      [
        [
          3,
          3,
          10
        ],
        "80710807/23250"
      ],
      [
        [
          1,
          7,
          9
        ],
        "-533627627553/500"
      ],
      [
        [
          1,
          3,
          7,
          8
        ],
        "-370756000"
      ],
      [
        [
          1,
          3,
          7
        ],
        "-10251/5"
      ],
      [
        [
          8,
          11,
          11
        ],
        "-34726594/2325"
      ],
      [
        [
          11,
          11
        ],
        "-18455451401699/4650000000"
      ],
      [
        [
          9,
          10,
          11
        ],
        "34726594/2325"
      ],
      [
        [
          10,
          11
        ],
        "46610889303680887/6000000000000"
      ],
      [
        [
          0,
          10,
          11
        ],
        "-1254767/125"
      ],
      [
        [
          3,
          8,
          10,
          11
        ],
        "-866320000"
      ],
      [
        [
          3,
          8,
          11
        ],
        "-3353378/2325"
      ],
      [
        [
          3,
          10,
          11
        ],
        "-8507564/465"
      ],
      [
        [
          8,
          10,
          11
        ],
        "400601/100"
      ],
      [
        [
          3,
          9,
          10,
          10
        ],
        "866320000"
      ],
      [
        [
          3,
          10,
          10
        ],
        "-88673603211/100"
      ],
      [
        [
          9,
          10,
          10
        ],
        "-400601/100"
      ],
      [
        [
          10,
          10
        ],
        "-4870096943247/1000000000"
      ],
      [
        [
          0,
          3,
          10,
          10
        ],
        "-74230000"
      ],
      [
        [
          0,
          10,
          10
        ],
        "850529/1000"
      ],
      [
        [
          0,
          8,
          10,
          11
        ],
        "-1752880000"
      ],
      [
        [
          0,
          0,
          8,
          10
        ],
        "-360938000"
      ],
      [
        [
          0,
          9,
          10,
          10
        ],
        "1752880000"
      ],
      [
        [
          0,
          0,
          10,
          10
        ],
        "625536000"
      ],
      [
        [
          4,
          11,
          11
        ],
        "-9923513/3100"
      ],
      [
        [
          3,
          4,
          10,
          11
        ],
        "10000"
      ],
      [
        [
          4,
          10,
          11
        ],
        "79226831939/10000000"
      ],
      [
        [
          3,
          3,
          10,
          10
        ],
        "10000"
      ],
      [
        [
          0,
          4,
          10,
          11
        ],
        "1399880000"
      ],
      [
        [
          3,
          5,
          8,
          10
        ],
        "-741855000"
      ],
      [
        [
          5,
          8,
          10
        ],
        "-15367715407015/3696785048"
      ],
      [
        [
          3,
          3,
          8,
          10
        ],
        "-1000"
      ],
      [
        [
          3,
          3,
          8
        ],
        "-66315583959/20"
      ],
      [
        [
          0,
          5,
          8,
          10
        ],
        "505803000"
      ],
      [
        [
          6,
          9,
          11
        ],
        "-35255476/11625"
      ],
      [
        [
          3,
          6,
          11
        ],
        "16310417/2325"
      ],
      [
        [
          3,
          6,
          9,
          10
        ],
        "-510320000"
      ],
      [
        [
          3,
          6,
          9
        ],
        "1051317814059/1000"
      ],
      [
        [
          3,
          6,
          10
        ],
        "-44715299048229667688315019/122527028882041000"
      ],
      [
        [
          3,
          3,
          6,
          10
        ],
        "458320000"
      ],
      [
        [
          3,
          3,
          6
        ],
        "-3902133/1000"
      ],
      [
        [
          3,
          7,
          8,
          10
        ],
        "510320000"
      ],
      [
        [
          3,
          7,
          10
        ],
        "193879/100"
      ],
      [
        [
          7,
          8,
          10
        ],
        "12541076892261646927/2151673173800"
      ],
      [
        [
          0,
          3,
          6,
          10
        ],
        "-193893000"
      ],
      [
        [
          0,
          7,
          8,
          10
        ],
        "1000"
      ],
      [
        [
          4,
          5,
          5,
          8
        ],
        "2924237806000/8963"
      ],
      [
        [
          4,
          5,
          5
        ],
        "32936020631/4481500"
      ],
      [
        [
          4,
          4,
          5,
          5
        ],
        "-710265565000/8963"
      ],
      [
        [
          4,
          7,
          8,
          11
        ],
        "256060000"
      ],
      [
        [
          4,
          7,
          9,
          10
        ],
        "29486000"
      ],
      [
        [
          4,
          7,
          9
        ],
        "1638921/500"
      ],
      [
        [
          4,
          7,
          10
        ],
        "-75623/500"
      ],
      [
        [
          0,
          4,
          7,
          10
        ],
        "230170000"
      ],
      [
        [
          4,
          6,
          7,
          9
        ],
        "-6000"
      ],
      [
        [
          4,
          6,
          7
        ],
        "136547/500"
      ],
      [
        [
          1,
          4,
          7,
          9
        ],
        "-83074000"
      ],
      [
        [
          4,
          7,
          7,
          8
        ],
        "6000"
      ],
      [
        [
          4,
          7,
          7
        ],
        "-2034293/500"
      ],
      [
        [
          1,
          4,
          7,
          7
        ],
        "4000"
      ],
      [
        [
          1,
          7,
          7
        ],
        "438348148333/500"
      ],
      [
        [
          1,
          6,
          7
        ],
        "-326821/500"
      ],
      [
        [
          0,
          1,
          6,
          7
        ],
        "-71776000"
      ],
      [
        [
          4,
          4,
          9,
          9
        ],
        "-146466000"
      ],
      [
        [
          4,
          4,
          9
        ],
        "-59489443157/200"
      ],
      [
        [
          4,
          9,
          9
        ],
        "-90581319854/125"
      ],
      [
        [
          9,
          9
        ],
        "2664853989760774070419/5000000000000"
      ],
      [
        [
          4,
          5,
          8,
          9
        ],
        "-577346000"
      ],
      [
        [
          4,
          5,
          9
        ],
        "-11936263827/4481500"
      ],
      [
        [
          4,
          8,
          9
        ],
        "-58695087461/500"
      ],
      [
        [
          5,
          8,
          9
        ],
        "-5762190118/1120375"
      ],
      [
        [
          8,
          9
        ],
        "-8839346618826154237/5601875000000000"
      ],
      [
        [
          4,
          4,
          5,
          9
        ],
        "125704000"
      ],
      [
        [
          0,
          4,
          4,
          9
        ],
        "146466000"
      ],
      [
        [
          5,
          8,
          8
        ],
        "304587/100"
      ],
      [
        [
          8,
          8
        ],
        "178219267911/50000000"
      ],
      [
        [
          0,
          4,
          8,
          9
        ],
        "284414000"
      ],
      [
        [
          0,
          8,
          9
        ],
        "162923351/1120375"
      ],
      [
        [
          0,
          5,
          8,
          8
        ],
        "-364118000"
      ],
      [
        [
          0,
          8,
          8
        ],
        "-3471713/500"
      ],
      [
        [
          4,
          5,
          6,
          11
        ],
        "-502097000"
      ],
      [
        [
          3,
          4,
          5,
          6
        ],
        "757017000"
      ],
      [
        [
          3,
          5,
          6,
          10
        ],
        "626873000"
      ],
      [
        [
          5,
          6,
          8,
          11
        ],
        "-1000"
      ],
      [
        [
          5,
          6,
          9,
          10
        ],
        "-601234000"
      ],
      [
        [
          3,
          5,
          6,
          8
        ],
        "3262973000"
      ],
      [
        [
          2,
          3,
          5,
          8
        ],
        "-2305143000"
      ],
      [
        [
          5,
          5,
          8,
          10
        ],
        "-687165000"
      ],
      [
        [
          5,
          5,
          10,
          10
        ],
        "214537000"
      ],
      [
        [
          5,
          10,
          10
        ],
        "1226297/250"
      ],
      [
        [
          0,
          5,
          10,
          10
        ],
        "-317053000"
      ],
      [
        [
          3,
          6,
          6,
          9
        ],
        "-325154000"
      ],
      [
        [
          2,
          3,
          6,
          9
        ],
        "-4651497000"
      ],
      [
        [
          3,
          6,
          7,
          8
        ],
        "325154000"
      ],
      [
        [
          4,
          6,
          9,
          11
        ],
        "-285546000"
      ],
      [
        [
          3,
          4,
          6,
          9
        ],
        "1000"
      ],
      [
        [
          3,
          4,
          7,
          8
        ],
        "-328361000"
      ],
      [
        [
          3,
          4,
          7
        ],
        "-354233/1000"
      ],
      [
        [
          4,
          5,
          6,
          9
        ],
        "-4000"
      ],
      [
        [
          5,
          7,
          8,
          10
        ],
        "601235000"
      ],
      [
        [
          4,
          5,
          7,
          8
        ],
        "342190000"
      ],
      [
        [
          5,
          6,
          8,
          9
        ],
        "-2000"
      ],
      [
        [
          6,
          8,
          9
        ],
        "-130650609797/500"
      ],
      [
        [
          0,
          6,
          8,
          9
        ],
        "2000"
      ],
      [
        [
          5,
          7,
          8,
          8
        ],
        "2000"
      ],
      [
        [
          7,
          8,
          8
        ],
        "130650609797/500"
      ],
      [
        [
          0,
          7,
          8,
          8
        ],
        "-2000"
      ],
      [
        [
          0,
          0,
          8,
          8
        ],
        "-264598000"
      ],
      [
        [
          5,
          6,
          10,
          11
        ],
        "-229219000"
      ],
      [
        [
          5,
          10,
          11
        ],
        "-7131133037137/15500"
      ],
      [
        [
          6,
          10,
          11
        ],
        "-422743/1000"
      ],
      [
        [
          0,
          6,
          10,
          11
        ],
        "431929000"
      ],
      [
        [
          5,
          7,
          10,
          10
        ],
        "229219000"
      ],
      [
        [
          7,
          10,
          10
        ],
        "422743/1000"
      ],
      [
        [
          0,
          7,
          10,
          10
        ],
        "-431929000"
      ],
      [
        [
          1,
          7,
          8,
          11
        ],
        "1940230000"
      ],
      [
        [
          1,
          7,
          9,
          10
        ],
        "-1080720000"
      ],
      [
        [
          8,
          8,
          11,
          11
        ],
        "-959780000"
      ],
      [
        [
          8,
          8,
          11
        ],
        "-177609/100"
      ],
      [
        [
          1,
          8,
          11,
          11
        ],
        "-260980000"
      ],
      [
        [
          1,
          11,
          11
        ],
        "-4600794303/10"
      ],
      [
        [
          8,
          9,
          10,
          11
        ],
        "1919560000"
      ],
      [
        [
          8,
          9,
          10
        ],
        "177609/100"
      ],
      [
        [
          8,
          9,
          11
        ],
        "206331/25"
      ],
      [
        [
          1,
          8,
          9,
          11
        ],
        "204570000"
      ],
      [
        [
          1,
          8,
          9
        ],
        "6081927471/50"
      ],
      [
        [
          1,
          9,
          11
        ],
        "-2145036723752269/1000000"
      ],
      [
        [
          0,
          8,
          8,
          11
        ],
        "1124420000"
      ],
      [
        [
          0,
          8,
          9,
          10
        ],
        "-1124420000"
      ],
      [
        [
          0,
          1,
          8,
          9
        ],
        "-204570000"
      ],
      [
        [
          1,
          9,
          10,
          11
        ],
        "260980000"
      ],
      [
        [
          1,
          10,
          11
        ],
        "-65839593021/100"
      ],
      [
        [
          9,
          9,
          10,
          10
        ],
        "-959780000"
      ],
      [
        [
          9,
          9,
          10
        ],
        "-206331/25"
      ],
      [
        [
          1,
          9,
          9,
          10
        ],
        "-204570000"
      ],
      [
        [
          1,
          9,
          9
        ],
        "-219230235887/1000"
      ],
      [
        [
          0,
          1,
          10,
          11
        ],
        "647440000"
      ],
      [
        [
          2,
          3,
          8,
          11
        ],
        "4000"
      ],
      [
        [
          2,
          3,
          11
        ],
        "99809/25"
      ],
      [
        [
          4,
          5,
          8,
          11
        ],
        "-16000"
      ],
      [
        [
          2,
          5,
          8,
          11
        ],
        "-184182000"
      ],
      [
        [
          4,
          5,
          9,
          10
        ],
        "-648626000"
      ],
      [
        [
          2,
          5,
          9,
          10
        ],
        "2000"
      ],
      [
        [
          6,
          8,
          11,
          11
        ],
        "-33500000"
      ],
      [
        [
          6,
          11,
          11
        ],
        "-193277/50"
      ],
      [
        [
          7,
          8,
          10,
          11
        ],
        "33500000"
      ],
      [
        [
          7,
          10,
          11
        ],
        "193277/50"
      ],
      [
        [
          0,
          2,
          8,
          11
        ],
        "-133420000"
      ],
      [
        [
          6,
          9,
          10,
          11
        ],
        "33500000"
      ],
      [
        [
          7,
          9,
          10,
          10
        ],
        "-33500000"
      ],
      [
        [
          0,
          2,
          10,
          11
        ],
        "133420000"
      ],
      [
        [
          2,
          10,
          11
        ],
        "-2283458521331939/10000000"
      ],
      [
        [
          5,
          8,
          10,
          11
        ],
        "405170000"
      ],
      [
        [
          5,
          9,
          10,
          10
        ],
        "-405170000"
      ],
      [
        [
          3,
          8,
          8,
          11
        ],
        "873770000"
      ],
      [
        [
          3,
          8,
          8
        ],
        "-5140943429/20"
      ],
      [
        [
          0,
          3,
          8,
          8
        ],
        "-151260000"
      ],
      [
        [
          3,
          8,
          9,
          10
        ],
        "-873770000"
      ],
      [
        [
          3,
          8,
          9
        ],
        "-943884643287/1000"
      ],
      [
        [
          4,
          8,
          11,
          11
        ],
        "10000"
      ],
      [
        [
          4,
          9,
          10,
          11
        ],
        "-10000"
      ],
      [
        [
          2,
          3,
          3,
          6
        ],
        "4972601000"
      ],
      [
        [
          2,
          3,
          3
        ],
        "611813/1000"
      ],
      [
        [
          2,
          3,
          3,
          8
        ],
        "-3000"
      ],
      [
        [
          1,
          3,
          6,
          9
        ],
        "5697558000"
      ],
      [
        [
          1,
          3,
          9
        ],
        "-1554449731/1000000"
      ],
      [
        [
          1,
          3,
          3,
          6
        ],
        "-5606575000"
      ],
      [
        [
          1,
          3,
          3
        ],
        "2368421673023/1000"
      ],
      [
        [
          1,
          3,
          3,
          8
        ],
        "5575871000"
      ],
      [
        [
          2,
          3,
          4,
          11
        ],
        "-5000"
      ],
      [
        [
          2,
          3,
          5,
          10
        ],
        "-2247940000"
      ],
      [
        [
          2,
          3,
          4,
          5
        ],
        "52784000"
      ],
      [
        [
          1,
          3,
          4,
          11
        ],
        "-10000"
      ],
      [
        [
          1,
          3,
          11
        ],
        "278358/25"
      ],
      [
        [
          2,
          5,
          5,
          8
        ],
        "-196615000"
      ],
      [
        [
          2,
          5,
          5
        ],
        "119793/1000"
      ],
      [
        [
          2,
          5,
          5,
          10
        ],
        "293663000"
      ],
      [
        [
          1,
          2,
          7,
          7
        ],
        "775192000"
      ],
      [
        [
          1,
          1,
          7,
          7
        ],
        "-667830000"
      ],
      [
        [
          1,
          2,
          3,
          7
        ],
        "579670000"
      ],
      [
        [
          1,
          1,
          7,
          9
        ],
        "557380000"
      ],
      [
        [
          1,
          1,
          9
        ],
        "554258672/5"
      ],
      [
        [
          1,
          1,
          3,
          7
        ],
        "-557380000"
      ],
      [
        [
          2,
          3,
          4,
          7
        ],
        "-4000"
      ],
      [
        [
          1,
          3,
          4,
          7
        ],
        "1000"
      ],
      [
        [
          1,
          3,
          6,
          7
        ],
        "2050066000"
      ],
      [
        [
          2,
          2,
          7,
          9
        ],
        "2000"
      ],
      [
        [
          2,
          2,
          9
        ],
        "-115409/100"
      ],
      [
        [
          2,
          2,
          7,
          7
        ],
        "-2000"
      ],
      [
        [
          1,
          6,
          7,
          9
        ],
        "-2538754000"
      ],
      [
        [
          1,
          7,
          7,
          8
        ],
        "2538754000"
      ],
      [
        [
          2,
          3,
          7,
          10
        ],
        "-10000"
      ],
      [
        [
          1,
          3,
          7,
          10
        ],
        "-20200000"
      ],
      [
        [
          2,
          4,
          7,
          9
        ],
        "-162750000"
      ],
      [
        [
          3,
          3,
          4,
          6
        ],
        "-296564000"
      ],
      [
        [
          2,
          3,
          3,
          4
        ],
        "-51572000"
      ],
      [
        [
          1,
          2,
          3,
          3
        ],
        "-129651000"
      ],
      [
        [
          3,
          4,
          8,
          11
        ],
        "-5000"
      ],
      [
        [
          3,
          4,
          5,
          8
        ],
        "348910000"
      ],
      [
        [
          3,
          4,
          9,
          10
        ],
        "105941000"
      ],
      [
        [
          3,
          4,
          5,
          10
        ],
        "-7000"
      ],
      [
        [
          1,
          3,
          8,
          11
        ],
        "-981324000"
      ],
      [
        [
          1,
          3,
          9,
          10
        ],
        "-116191000"
      ],
      [
        [
          3,
          4,
          4,
          9
        ],
        "3000"
      ],
      [
        [
          3,
          4,
          4,
          5
        ],
        "296083000"
      ],
      [
        [
          1,
          3,
          4,
          9
        ],
        "635651000"
      ],
      [
        [
          1,
          2,
          3,
          9
        ],
        "38668000"
      ],
      [
        [
          3,
          3,
          6,
          8
        ],
        "-5572698000"
      ],
      [
        [
          1,
          4,
          11,
          11
        ],
        "997250000"
      ],
      [
        [
          1,
          3,
          10,
          11
        ],
        "352090000"
      ],
      [
        [
          1,
          3,
          3,
          4
        ],
        "-46270000"
      ],
      [
        [
          1,
          3,
          3,
          10
        ],
        "46270000"
      ],
      [
        [
          1,
          6,
          9,
          11
        ],
        "-859510000"
      ],
      [
        [
          1,
          3,
          6,
          11
        ],
        "859510000"
      ],
      [
        [
          1,
          5,
          10,
          11
        ],
        "-263260000"
      ],
      [
        [
          3,
          5,
          10,
          10
        ],
        "-440010000"
      ],
      [
        [
          3,
          4,
          6,
          7
        ],
        "10000"
      ],
      [
        [
          4,
          5,
          7,
          10
        ],
        "-23446000"
      ],
      [
        [
          5,
          6,
          6,
          9
        ],
        "-1002636000"
      ],
      [
        [
          5,
          6,
          6
        ],
        "-80919994311/250"
      ],
      [
        [
          3,
          5,
          6,
          6
        ],
        "1002636000"
      ],
      [
        [
          5,
          6,
          7,
          8
        ],
        "1002636000"
      ],
      [
        [
          5,
          6,
          7
        ],
        "-4853510217/50"
      ],
      [
        [
          1,
          4,
          9,
          11
        ],
        "-1043520000"
      ],
      [
        [
          2,
          3,
          3,
          10
        ],
        "5000"
      ],
      [
        [
          3,
          3,
          4,
          8
        ],
        "1000"
      ],
      [
        [
          2,
          2,
          3,
          9
        ],
        "-596050000"
      ],
      [
        [
          3,
          3,
          6,
          6
        ],
        "600100000"
      ],
      [
        [
          2,
          5,
          10,
          11
        ],
        "-133420000"
      ],
      [
        [
          2,
          4,
          5,
          11
        ],
        "-130776000"
      ],
      [
        [
          4,
          4,
          9,
          11
        ],
        "-216532000"
      ],
      [
        [
          2,
          4,
          5,
          9
        ],
        "317600000"
      ],
      [
        [
          2,
          4,
          5,
          5
        ],
        "-97048000"
      ],
      [
        [
          4,
          4,
          5,
          11
        ],
        "9000"
      ],
      [
        [
          4,
          5,
          10,
          11
        ],
        "-107260000"
      ],
      [
        [
          4,
          4,
          11,
          11
        ],
        "29580000"
      ],
      [
        [
          4,
          5,
          5,
          10
        ],
        "-4000"
      ],
      [
        [
          6,
          9,
          9
        ],
        "-1966562483/25000000"
      ],
      [
        [
          7,
          8,
          9
        ],
        "1966562483/25000000"
      ],
      [
        [
          4,
          6,
          11,
          11
        ],
        "236210000"
      ],
      [
        [
          4,
          7,
          10,
          11
        ],
        "-236210000"
      ],
      [
        [
          3,
          3,
          8,
          8
        ],
        "145830000"
      ],
      [
        [
          5,
          8,
          8,
          11
        ],
        "125940000"
      ],
      [
        [
          3,
          5,
          8,
          8
        ],
        "-1014170000"
      ],
      [
        [
          5,
          8,
          9,
          10
        ],
        "-125940000"
      ],
      [
        [
          5,
          5,
          6,
          8
        ],
        "149896000"
      ],
      [
        [
          5,
          5,
          6
        ],
        "4799538761/125"
      ],
      [
        [
          5,
          5,
          6,
          10
        ],
        "-149896000"
      ],
      [
        [
          5,
          5,
          8,
          8
        ],
        "337500000"
      ],
      [
        [
          2,
          9,
          9
        ],
        "-12858437517/25000000"
      ]
    ],
    "box": {
      "low": [
        "1243/6250",
        "32019/250000",
        "429521/1000000",
        "552517/1000000",
        "32019/250000",
        "808677/1000000",
        "199139/250000",
        "1243/6250",
        "180637/200000",
        "437673/500000",
        "80879/125000",
        "396743/500000"
      ],
      "high": [
        "80503/250000",
        "15423/100000",
        "595693/1000000",
        "677969/1000000",
        "74193/200000",
        "925007/1000000",
        "434341/500000",
        "308513/1000000",
        "248613/250000",
        "1/1",
        "738299/1000000",
        "177433/200000"
      ]
    },
    "upper": "-88789728153042525761413590457695848283340401754918057233199765818219883232261128741756300619/1521194132101608654771654401274396197917352385720842700541136718750000000000000000000"
  }
}
```
