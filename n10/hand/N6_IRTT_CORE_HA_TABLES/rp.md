# Nine-core HA: rp

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
  "id": "rp",
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
            "3197/25000",
            "26659/250000",
            "93/250",
            "416403/1000000",
            "26659/250000",
            "808677/1000000",
            "156003/250000",
            "3197/25000",
            "141503/200000",
            "145741/200000",
            "247121/500000",
            "329913/500000"
          ],
          "high": [
            "97/190",
            "19/100",
            "6671/8000",
            "343849/500000",
            "521931/1000000",
            "1/1",
            "1/1",
            "539609/1000000",
            "1/1",
            "1/1",
            "786727/1000000",
            "8959/10000"
          ]
        },
        "initialBox": {
          "low": [
            "3197/25000",
            "26659/250000",
            "93/250",
            "416403/1000000",
            "26659/250000",
            "808677/1000000",
            "156003/250000",
            "3197/25000",
            "141503/200000",
            "145741/200000",
            "247121/500000",
            "329913/500000"
          ],
          "high": [
            "97/190",
            "19/100",
            "6671/8000",
            "343849/500000",
            "521931/1000000",
            "1/1",
            "1/1",
            "539609/1000000",
            "1/1",
            "1/1",
            "786727/1000000",
            "8959/10000"
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
            "value": "38899/100000",
            "source": [
              "earlier-area",
              {
                "triangle": "AHR",
                "direction": "lo",
                "value": "38899/100000",
                "origin": {
                  "packet": "r",
                  "stage": 1,
                  "id": 46
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
                  "packet": "r",
                  "stage": 1,
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
                  "packet": "r",
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
            "value": "78763/500000",
            "source": [
              "earlier-area",
              {
                "triangle": "CEH",
                "direction": "lo",
                "value": "78763/500000",
                "origin": {
                  "packet": "r",
                  "stage": 1,
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
                  "packet": "r",
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
            "value": "366747/1000000",
            "source": [
              "earlier-area",
              {
                "triangle": "CHR",
                "direction": "lo",
                "value": "366747/1000000",
                "origin": {
                  "packet": "r",
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
                  "packet": "r",
                  "stage": 1,
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
                  "packet": "r",
                  "stage": 1,
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
                  "packet": "r",
                  "stage": 1,
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
                  "packet": "r",
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
            "value": "344147/1000000",
            "source": [
              "earlier-area",
              {
                "triangle": "HQR",
                "direction": "lo",
                "value": "344147/1000000",
                "origin": {
                  "packet": "r",
                  "stage": 1,
                  "id": 160
                }
              }
            ]
          }
        ],
        "relations": {},
        "closed": false,
        "rounds": 2,
        "updates": [],
        "areaVertexDifferences": {}
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
            "3197/25000",
            "26659/250000",
            "93/250",
            "416403/1000000",
            "26659/250000",
            "808677/1000000",
            "156003/250000",
            "3197/25000",
            "141503/200000",
            "145741/200000",
            "247121/500000",
            "329913/500000"
          ],
          "high": [
            "97/190",
            "19/100",
            "6671/8000",
            "343849/500000",
            "521931/1000000",
            "1/1",
            "1/1",
            "539609/1000000",
            "1/1",
            "1/1",
            "786727/1000000",
            "8959/10000"
          ]
        },
        "initialBox": {
          "low": [
            "3197/25000",
            "26659/250000",
            "93/250",
            "416403/1000000",
            "26659/250000",
            "808677/1000000",
            "156003/250000",
            "3197/25000",
            "141503/200000",
            "145741/200000",
            "247121/500000",
            "329913/500000"
          ],
          "high": [
            "97/190",
            "19/100",
            "6671/8000",
            "343849/500000",
            "521931/1000000",
            "1/1",
            "1/1",
            "539609/1000000",
            "1/1",
            "1/1",
            "786727/1000000",
            "8959/10000"
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
            "value": "38899/100000",
            "source": [
              "earlier-area",
              {
                "triangle": "AHR",
                "direction": "lo",
                "value": "38899/100000",
                "origin": {
                  "packet": "rp",
                  "stage": 0,
                  "id": 46
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
                  "packet": "rp",
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
                  "packet": "rp",
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
            "value": "78763/500000",
            "source": [
              "earlier-area",
              {
                "triangle": "CEH",
                "direction": "lo",
                "value": "78763/500000",
                "origin": {
                  "packet": "rp",
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
                  "packet": "rp",
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
            "value": "366747/1000000",
            "source": [
              "earlier-area",
              {
                "triangle": "CHR",
                "direction": "lo",
                "value": "366747/1000000",
                "origin": {
                  "packet": "rp",
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
                  "packet": "rp",
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
                  "packet": "rp",
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
                  "packet": "rp",
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
                  "packet": "rp",
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
            "value": "344147/1000000",
            "source": [
              "earlier-area",
              {
                "triangle": "HQR",
                "direction": "lo",
                "value": "344147/1000000",
                "origin": {
                  "packet": "rp",
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
