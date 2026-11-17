# Complete C-word coarse, split and terminal tables

The twelve coarse roots cover the six admissible G words in each weak contact
cell. AGP+,DGP+ is excluded by the cited actual central-orientation theorem.
For every further split the positive child is first, the negative child second.
Every terminal lists its complete shared-stage ancestry. All rational numbers
below are exact; no discovery file is a premise.

```json
{
 "schema": "n7-central-C-shared-1",
 "cells": [
  "CA",
  "CB"
 ],
 "word": "C",
 "roots": [
  {
   "cell": "CA",
   "given": [
    "AGO-",
    "AGP-",
    "DGP-"
   ],
   "node": "Ccap_CA1"
  },
  {
   "cell": "CA",
   "given": [
    "AGO-",
    "AGP-",
    "DGP+"
   ],
   "node": "C_CA2"
  },
  {
   "cell": "CA",
   "given": [
    "AGO-",
    "AGP+",
    "DGP-"
   ],
   "node": "C_CA3"
  },
  {
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP-",
    "DGP-"
   ],
   "node": "C_CA4"
  },
  {
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP-",
    "DGP+"
   ],
   "node": "C_CA5"
  },
  {
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-"
   ],
   "node": "Ccap_CA6"
  },
  {
   "cell": "CB",
   "given": [
    "AGO-",
    "AGP-",
    "DGP-"
   ],
   "node": "C_CB1"
  },
  {
   "cell": "CB",
   "given": [
    "AGO-",
    "AGP-",
    "DGP+"
   ],
   "node": "C_CB2"
  },
  {
   "cell": "CB",
   "given": [
    "AGO-",
    "AGP+",
    "DGP-"
   ],
   "node": "Ccap_CB3"
  },
  {
   "cell": "CB",
   "given": [
    "AGO+",
    "AGP-",
    "DGP-"
   ],
   "node": "C_CB4"
  },
  {
   "cell": "CB",
   "given": [
    "AGO+",
    "AGP-",
    "DGP+"
   ],
   "node": "C_CB5"
  },
  {
   "cell": "CB",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-"
   ],
   "node": "Ccap_CB6"
  }
 ],
 "splits": {
  "Ccap_CB6": {
   "triangle": "BGP",
   "children": [
    "Ccap_CB6p",
    "Ccap_CB6m"
   ]
  },
  "Ccap_CA6": {
   "triangle": "EGO",
   "children": [
    "Ccap_CA6p",
    "Ccap_CA6m"
   ]
  },
  "Ccap_CB3": {
   "triangle": "FGP",
   "children": [
    "Ccap_CB3p",
    "Ccap_CB3m"
   ]
  },
  "Ccap_CA1": {
   "triangle": "EGP",
   "children": [
    "Ccap_CA1p",
    "Ccap_CA1m"
   ]
  },
  "Ccap_CB6p": {
   "triangle": "FGP",
   "children": [
    "Ccap_CB6pp",
    "Ccap_CB6pm"
   ]
  },
  "Ccap_CA6m": {
   "triangle": "BGO",
   "children": [
    "Ccap_CA6mp",
    "Ccap_CA6mm"
   ]
  },
  "Ccap_CB6m": {
   "triangle": "FGP",
   "children": [
    "Ccap_CB6mp",
    "Ccap_CB6mm"
   ]
  },
  "Ccap_CA6p": {
   "triangle": "BGP",
   "children": [
    "Ccap_CA6pp",
    "Ccap_CA6pm"
   ]
  },
  "Ccap_CB3m": {
   "triangle": "BGP",
   "children": [
    "Ccap_CB3mp",
    "Ccap_CB3mm"
   ]
  },
  "Ccap_CB6pm": {
   "triangle": "BGO",
   "children": [
    "Ccap_CB6pmp",
    "Ccap_CB6pmm"
   ]
  },
  "Ccap_CB6mp": {
   "triangle": "EGO",
   "children": [
    "Ccap_CB6mpp",
    "Ccap_CB6mpm"
   ]
  },
  "Ccap_CA6mp": {
   "triangle": "FGP",
   "children": [
    "Ccap_CA6mpp",
    "Ccap_CA6mpm"
   ]
  },
  "Ccap_CA6pm": {
   "triangle": "FGP",
   "children": [
    "Ccap_CA6pmp",
    "Ccap_CA6pmm"
   ]
  },
  "Ccap_CB6pp": {
   "triangle": "EGO",
   "children": [
    "Ccap_CB6ppp",
    "Ccap_CB6ppm"
   ]
  },
  "Ccap_CA6pp": {
   "triangle": "FGP",
   "children": [
    "Ccap_CA6ppp",
    "Ccap_CA6ppm"
   ]
  },
  "Ccap_CB6pmm": {
   "triangle": "EGO",
   "children": [
    "Ccap_CB6pmmp",
    "Ccap_CB6pmmm"
   ]
  },
  "Ccap_CB6pmp": {
   "triangle": "EGO",
   "children": [
    "Ccap_CB6pmpp",
    "Ccap_CB6pmpm"
   ]
  },
  "Ccap_CA6mpm": {
   "triangle": "BFP",
   "children": [
    "Ccap_CA6mpmp",
    "Ccap_CA6mpmm"
   ]
  },
  "Ccap_CB6mpp": {
   "triangle": "ADG",
   "children": [
    "Ccap_CB6mppp",
    "Ccap_CB6mppm"
   ]
  },
  "Ccap_CA6pmp": {
   "triangle": "CFP",
   "children": [
    "Ccap_CA6pmpp",
    "Ccap_CA6pmpm"
   ]
  },
  "Ccap_CA6ppm": {
   "triangle": "ADG",
   "children": [
    "Ccap_CA6ppmp",
    "Ccap_CA6ppmm"
   ]
  },
  "Ccap_CA6mpmp": {
   "triangle": "FGO",
   "children": [
    "Ccap_CA6mpmpp",
    "Ccap_CA6mpmpm"
   ]
  },
  "Ccap_CB6pmpm": {
   "triangle": "BFP",
   "children": [
    "Ccap_CB6pmpmp",
    "Ccap_CB6pmpmm"
   ]
  },
  "Ccap_CA6pmpp": {
   "triangle": "AEP",
   "children": [
    "Ccap_CA6pmppp",
    "Ccap_CA6pmppm"
   ]
  },
  "Ccap_CB6pmmp": {
   "triangle": "DHP",
   "children": [
    "Ccap_CB6pmmpp",
    "Ccap_CB6pmmpm"
   ]
  },
  "Ccap_CA6ppmm": {
   "triangle": "DHO",
   "children": [
    "Ccap_CA6ppmmp",
    "Ccap_CA6ppmmm"
   ]
  },
  "Ccap_CA6ppmp": {
   "triangle": "DHP",
   "children": [
    "Ccap_CA6ppmpp",
    "Ccap_CA6ppmpm"
   ]
  },
  "Ccap_CB6pmpmp": {
   "triangle": "AFP",
   "children": [
    "Ccap_CB6pmpmpp",
    "Ccap_CB6pmpmpm"
   ]
  },
  "Ccap_CA6mpmpp": {
   "triangle": "CFO",
   "children": [
    "Ccap_CA6mpmppp",
    "Ccap_CA6mpmppm"
   ]
  },
  "Ccap_CB6pmmpp": {
   "triangle": "ADG",
   "children": [
    "Ccap_CB6pmmppp",
    "Ccap_CB6pmmppm"
   ]
  },
  "Ccap_CA6ppmmm": {
   "triangle": "DFO",
   "children": [
    "Ccap_CA6ppmmmp",
    "Ccap_CA6ppmmmm"
   ]
  },
  "Ccap_CB6pmpmpp": {
   "triangle": "FGO",
   "children": [
    "Ccap_CB6pmpmppp",
    "Ccap_CB6pmpmppm"
   ]
  },
  "Ccap_CA6mpmppm": {
   "triangle": "AFP",
   "children": [
    "Ccap_CA6mpmppmp",
    "Ccap_CA6mpmppmm"
   ]
  },
  "Ccap_CA6mpmppmp": {
   "triangle": "DHO",
   "children": [
    "Ccap_CA6mpmppmpp",
    "Ccap_CA6mpmppmpm"
   ]
  },
  "Ccap_CB6pmpmppp": {
   "triangle": "CFO",
   "children": [
    "Ccap_CB6pmpmpppp",
    "Ccap_CB6pmpmpppm"
   ]
  },
  "Ccap_CB6pmpmpppm": {
   "triangle": "BDG",
   "children": [
    "Ccap_CB6pmpmpppmp",
    "Ccap_CB6pmpmpppmm"
   ]
  },
  "Ccap_CA6mpmppmpm": {
   "triangle": "ADG",
   "children": [
    "Ccap_CA6mpmppmpmp",
    "Ccap_CA6mpmppmpmm"
   ]
  },
  "Ccap_CB6pmpmpppmp": {
   "triangle": "ADG",
   "children": [
    "Ccap_CB6pmpmpppmpp",
    "Ccap_CB6pmpmpppmpm"
   ]
  },
  "Ccap_CA6mpmppmpmm": {
   "triangle": "AEO",
   "children": [
    "Ccap_CA6mpmppmpmmp",
    "Ccap_CA6mpmppmpmmm"
   ]
  }
 },
 "leaves": [
  {
   "id": "Ccap_CA1p",
   "cell": "CA",
   "given": [
    "AGO-",
    "AGP-",
    "DGP-",
    "EGP+"
   ],
   "stages": [
    "other_CA_C_1:0",
    "other_CA_C_1:1",
    "other_CA_C_1:2",
    "other_CA_C_1:3",
    "Ccap_CA1:0",
    "Ccap_CA1p:0"
   ],
   "terminal": {
    "kind": "box",
    "stage": 5,
    "contradiction": {
     "factor": 33,
     "target": "b",
     "old": [
      "108013/1000000",
      "109687/1000000"
     ],
     "lines": [
      [
       "906589/1000000",
       "-10419585113/100000000000"
      ],
      [
       "906589/1000000",
       "-53290996689/500000000000"
      ],
      [
       "907/1000",
       "-10455719/100000000"
      ],
      [
       "907/1000",
       "-53472207/500000000"
      ]
     ]
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CA1m",
   "cell": "CA",
   "given": [
    "AGO-",
    "AGP-",
    "DGP-",
    "EGP-"
   ],
   "stages": [
    "other_CA_C_1:0",
    "other_CA_C_1:1",
    "other_CA_C_1:2",
    "other_CA_C_1:3",
    "Ccap_CA1:0",
    "Ccap_CA1m:0",
    "Ccap_CA1m:1",
    "Ccap_CA1m:2",
    "Ccap_CA1m:3"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 8,
    "sum": {
     "factors": [
      {
       "weight": 6,
       "atoms": [
        "L0",
        "L0",
        "L17"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L0",
        "L0",
        "Gsum"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L0",
        "L2",
        "L15"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "L0",
        "L6",
        "L3"
       ]
      },
      {
       "weight": 80,
       "atoms": [
        "L0",
        "L12",
        "L25"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L0",
        "L12",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L22",
        "L3"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L0",
        "L22",
        "L17"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L0",
        "L24",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L3",
        "L19"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L0",
        "L3",
        "L21"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "L0",
        "L3",
        "L25"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L0",
        "L5",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L0",
        "L17",
        "span_BC"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L0",
        "L17",
        "overlap_ae"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L19",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L2",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L6",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L12",
        "L9"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L2",
        "L20",
        "L17"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "L2",
        "L24",
        "L17"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L3",
        "L17"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "L2",
        "L15",
        "L25"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "L2",
        "L17",
        "QUAD_745"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L2",
        "AREA_HI_ADH",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L4",
        "L12",
        "L9"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L4",
        "L22",
        "L17"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L6",
        "L20",
        "L19"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L6",
        "L5",
        "overlap_ae"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L6",
        "L19",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L6",
        "L23",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L8",
        "L12",
        "L9"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L12",
        "L14",
        "L9"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L12",
        "L14",
        "L15"
       ]
      },
      {
       "weight": 39,
       "atoms": [
        "L12",
        "L18",
        "L9"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L12",
        "L22",
        "L9"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L12",
        "L24",
        "L21"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L12",
        "L1",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L12",
        "L3",
        "L15"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L12",
        "L5",
        "L25"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L12",
        "L5",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 40,
       "atoms": [
        "L12",
        "L9",
        "L25"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L12",
        "L9",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L12",
        "L15",
        "QUAD_745"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L12",
        "L19",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L12",
        "L25",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 51,
       "atoms": [
        "L14",
        "L22",
        "L17"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L14",
        "L5",
        "L23"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L14",
        "L19",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L16",
        "L18",
        "L15"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L16",
        "L1",
        "L9"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "L16",
        "L3",
        "L9"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L16",
        "L5",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L16",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L16",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L18",
        "L20",
        "L15"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L18",
        "L1",
        "L15"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L18",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 38,
       "atoms": [
        "L18",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "L18",
        "L15",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L18",
        "L15",
        "span_BC"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L20",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L20",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L20",
        "L5",
        "L21"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L20",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L22",
        "L9",
        "L9"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L22",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L22",
        "L9",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L22",
        "L17",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 48,
       "atoms": [
        "L22",
        "L17",
        "overlap_ae"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L22",
        "L21",
        "QUAD_745"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L22",
        "AREA_HI_ADH",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "L24",
        "L3",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L24",
        "L17",
        "L19"
       ]
      },
      {
       "weight": 51,
       "atoms": [
        "L1",
        "L1",
        "L1"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L3",
        "L7",
        "L15"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L3",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L3",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L3",
        "L15",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L3",
        "L15",
        "QUAD_745"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L3",
        "L17",
        "L19"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "L3",
        "L17",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L5",
        "L9",
        "L13"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L5",
        "L21",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L21",
        "overlap_ae"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L5",
        "L21",
        "QUAD_745"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L23",
        "overlap_ae"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L5",
        "AREA_HI_ADE",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L9",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L9",
        "L13",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L9",
        "L19",
        "L21"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L9",
        "L23",
        "QUAD_745"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L13",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L13",
        "L21",
        "L25"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L15",
        "L23",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L15",
        "L23",
        "QUAD_745"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L15",
        "AREA_LO_ADE",
        "span_BC"
       ]
      },
      {
       "weight": 38,
       "atoms": [
        "L17",
        "L19",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L17",
        "L19",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L17",
        "AREA_HI_ADH",
        "span_BC"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L19",
        "L25",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L19",
        "L25",
        "QUAD_745"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L19",
        "AREA_HI_ADE",
        "span_BC"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L19",
        "AREA_HI_ADE",
        "Gsum"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDE",
        "L0"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_HI_CDE",
        "L15"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_ABG",
        "L0"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "AREA_LO_ABG",
        "L14"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABG",
        "L18"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_ABG",
        "L20"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "AREA_LO_ABG",
        "L24"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "AREA_LO_ABG",
        "span_DE"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "AREA_LO_ABG",
        "overlap_eh"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_ABG",
        "overlap_ae"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_BCG",
        "L15"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_ABO",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDO",
        "L0"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_CDO",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_CDO",
        "overlap_ae"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_DEO",
        "L0"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_DEO",
        "L4"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "AREA_LO_DEO",
        "L14"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_DEO",
        "L20"
       ]
      },
      {
       "weight": 38,
       "atoms": [
        "AREA_LO_DEO",
        "L17"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_DEO",
        "overlap_ae"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_DEO",
        "Gsum"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CEO",
        "L20"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CEO",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_CEO",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CEO",
        "overlap_eh"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_HOP",
        "L16"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_HOP",
        "L20"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "AREA_LO_HOP",
        "L13"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "AREA_LO_HOP",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_HOP",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_HOP",
        "span_DE"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_HOP",
        "span_BC"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_HOP",
        "overlap_eh"
       ]
      },
      {
       "weight": 63,
       "atoms": [
        "AREA_LO_BGH",
        "L24"
       ]
      },
      {
       "weight": 83,
       "atoms": [
        "AREA_LO_BGH",
        "L1"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BGH",
        "L3"
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
       "weight": 8,
       "atoms": [
        "AREA_LO_BGH",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_EOP",
        "L20"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_EOP",
        "L13"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_EOP",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "AREA_LO_EOP",
        "span_AH"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_EOP",
        "span_BC_hi"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EOP",
        "span_AH_hi"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EOP",
        "overlap_ae"
       ]
      },
      {
       "weight": 55,
       "atoms": [
        "AREA_LO_AGP",
        "L0"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_AGP",
        "L14"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_AGP",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_AGP",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 36,
       "atoms": [
        "AREA_LO_AGP",
        "span_DE"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_AGP",
        "span_DE_hi"
       ]
      },
      {
       "weight": 36,
       "atoms": [
        "AREA_LO_AGP",
        "overlap_ae"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_GHO",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "AREA_LO_GHP",
        "L0"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_HI_GHP",
        "L5"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_HI_BOP",
        "L15"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_EGP",
        "L2"
       ]
      },
      {
       "weight": 60,
       "atoms": [
        "AREA_LO_EGP",
        "L18"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EGP",
        "L20"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "AREA_LO_EGP",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 40,
       "atoms": [
        "AREA_LO_EGP",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_EGP",
        "span_DE"
       ]
      },
      {
       "weight": 47,
       "atoms": [
        "AREA_LO_EGP",
        "span_BC"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EGP",
        "overlap_ae"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_HI_AOP",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_HI_GOP",
        "L15"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_EGO",
        "L22"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "Central_order",
        "L16"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "Central_order",
        "L22"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "Central_order",
        "L7"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "Central_order",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "Central_order",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "QUAD_685",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "QUAD_787",
        "L15"
       ]
      },
      {
       "weight": 55,
       "atoms": [
        "QUAD_929",
        "L22"
       ]
      }
     ],
     "sum": {
      "0,0": "-78901679185042099/220750000000000000000",
      "0,1": "-227864180833101/100000000000000000",
      "0,3": "-583924030222083/100000000000000000",
      "0,6": "-147814587329042619/19750000000000000000",
      "0,3,6": "-2338478877891087/12500000000000000",
      "0,11": "1218561106206458583/79000000000000000000",
      "0,12": "-363668655222171/200000000000000000",
      "0,9,12": "11311777016397/8000000000000000",
      "0": "132597309736668709/79000000000000000000",
      "0,9": "-17920951680159/8000000000000000",
      "0,10": "904014881278041/50000000000000000",
      "0,7": "1090567654025777/500000000000000000",
      "0,2": "90167696709739/250000000000000000",
      "0,8": "-155812287361047/50000000000000000",
      "0,1,8": "-64720053228107/40000000000000000",
      "0,4": "-555283571841861/50000000000000000",
      "0,4,9": "-7087370324859/4000000000000000",
      "0,3,9": "-7087370324859/2000000000000000",
      "1,1": "8944849006423/2500000000000000",
      "1,3": "-20183251399887/20000000000000000",
      "1,6": "-126401332776079/25000000000000000",
      "1,10": "-20543568294213/1562500000000000",
      "1,12": "-432704923209/200000000000000",
      "1": "1290327298719963/520000000000000000",
      "1,8": "3233836028804321/140000000000000000",
      "1,7": "6779305255449357/9100000000000000000",
      "1,4": "491060024541051/20000000000000000",
      "1,4,8": "26608389930453/4000000000000000",
      "1,3,8": "-239475509374077/2000000000000000",
      "1,7,8": "64720053228107/40000000000000000",
      "2,6": "557568628345707/62500000000000000",
      "2,4,6": "182783421586887/12500000000000000",
      "2,11": "-4107107022602199/125000000000000000",
      "2,8,11": "641403106329777/50000000000000000",
      "3,10": "1915130824839279/25000000000000000",
      "3": "-13677745301864949/1103750000000000000",
      "3,4": "-83813800420413/5000000000000000",
      "2,3": "34370684725443/12500000000000000",
      "0,2,3": "-852288035015571/25000000000000000",
      "3,7": "959769426237333/100000000000000000",
      "3,9": "-29171724817851/4000000000000000",
      "3,7,9": "-7087370324859/4000000000000000",
      "3,11": "-1488117245598531/100000000000000000",
      "3,7,11": "-1870920277222383/100000000000000000",
      "0,3,11": "-623640092407461/100000000000000000",
      "4,6": "1274290590230847/25000000000000000",
      "6,7": "95972027530746901/22750000000000000000",
      "4,6,7": "259830986432343/50000000000000000",
      "6,7,7": "631991462699017/500000000000000000",
      "6,9": "117037830346371/20000000000000000",
      "6,11": "-5600698079637627/500000000000000000",
      "6,12": "-75749879168580279/7900000000000000000",
      "6,10,12": "555092798007813/25000000000000000",
      "6": "-3516236503113784647/3594500000000000000000",
      "0,6,7": "-631991462699017/500000000000000000",
      "2,6,12": "-291730954149921/12500000000000000",
      "4,6,12": "170496858870351/10000000000000000",
      "3,6": "479006069654523/50000000000000000",
      "3,6,12": "-170496858870351/10000000000000000",
      "7,11": "-19435781024173833/4550000000000000000",
      "7": "47518671092070669/13000000000000000000",
      "2,7": "125430264106983/125000000000000000",
      "2,7,11": "-1067087806834731/250000000000000000",
      "4,7": "-264043226078007/50000000000000000",
      "7,9": "3098036247867/1000000000000000",
      "4,7,9": "7087370324859/4000000000000000",
      "8,9": "5089042319229/4000000000000000",
      "7,8,9": "-10361826039807/8000000000000000",
      "8": "-1069449826264270201/15800000000000000000",
      "4,8": "-120238162875777/20000000000000000",
      "7,8": "35886558806487/100000000000000000",
      "2,8": "-829061213247047/50000000000000000",
      "8,11": "139622895353570571/15800000000000000000",
      "4,8,11": "-374856398826687/20000000000000000",
      "8,12": "124156861231611/10000000000000000",
      "9,10": "-13720012367193/2000000000000000",
      "9": "7056727840868199021/247240000000000000000",
      "4,9": "6288042671834913/316000000000000000",
      "2,9": "-34264064584233/10000000000000000",
      "7,7,9": "17238735070821/40000000000000000",
      "1,9": "-92892034719/125000000000000",
      "10,11": "8102828967759069579/128375000000000000000",
      "7,10,11": "2030407634122743/250000000000000000",
      "10": "-292085924254136676049/1797250000000000000000",
      "10,10": "283771837954917/15625000000000000",
      "2,10": "229283943475542351/2843750000000000000",
      "10,12": "-60974215340259/1562500000000000",
      "11": "-233262323447328242373/3594500000000000000000",
      "4,11": "-52472679619148755677/718900000000000000000",
      "4,4,11": "-256397483119419/10000000000000000",
      "4,7,11": "-623640092407461/100000000000000000",
      "3,8,11": "374856398826687/20000000000000000",
      "3,10,11": "-834762571286697/6250000000000000",
      "0,10,11": "-2030407634122743/7812500000000000",
      "0,7,11": "-1516890728123259/1000000000000000000",
      "0,0,11": "-25787142378095403/1000000000000000000",
      "12": "240125737297493073/5530000000000000000",
      "7,12": "-262691971240023/25000000000000000",
      "9,12": "-12937873230017307/884800000000000000",
      "": "-622718958161753153488293/317394350000000000000000",
      "0,0,0": "-21470044100682273/1000000000000000000",
      "1,3,7": "-44267775091959/20000000000000000",
      "4": "8519716512270829687149/63478870000000000000000",
      "1,11": "-93422237700093/100000000000000000",
      "7,7": "1534786658372733/1000000000000000000",
      "1,4,7": "44267775091959/20000000000000000",
      "2": "-577885830188064563/22750000000000000000",
      "2,4": "-662442678064431/12500000000000000",
      "4,10": "-2705192574639009/25000000000000000",
      "2,4,10": "162973612561881/6250000000000000",
      "2,3,10": "-162973612561881/6250000000000000",
      "7,10": "-514099865575061/125000000000000000",
      "2,4,7": "-121755433573653/25000000000000000",
      "2,3,7": "121755433573653/25000000000000000",
      "6,10": "1233678759825453/125000000000000000",
      "4,4": "55543246127469/2500000000000000",
      "0,4,11": "-623640092407461/25000000000000000",
      "3,8": "15536945510541/2000000000000000",
      "7,9,12": "-11311777016397/8000000000000000",
      "4,12": "352442206082187/5000000000000000",
      "3,12": "-126109152649467/5000000000000000",
      "8,10": "-353049940964351/50000000000000000",
      "0,1,4": "-44267775091959/20000000000000000",
      "3,4,9": "-2913834333861/400000000000000",
      "4,4,9": "2913834333861/400000000000000",
      "8,10,11": "-1220433553172181/50000000000000000",
      "6,7,11": "-20494874223651249/500000000000000000",
      "2,12": "17680742459523/6250000000000000",
      "1,4,11": "-1116547673949729/20000000000000000",
      "0,1,6": "-161642818905059/100000000000000000"
     },
     "upper": "-46049537137331007247519/45342050000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "C_CA2",
   "cell": "CA",
   "given": [
    "AGO-",
    "AGP-",
    "DGP+"
   ],
   "stages": [
    "C_CA2:0",
    "C_CA2:1",
    "C_CA2:2",
    "C_CA2:3",
    "C_CA2:4",
    "C_CA2:5",
    "C_CA2:6"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 6,
    "sum": {
     "factors": [
      {
       "weight": 4,
       "atoms": [
        "L0",
        "L12",
        "L1"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L0",
        "L12",
        "L23"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L2",
        "L4",
        "L25"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L2",
        "L8",
        "L7"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L18",
        "L7"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L2",
        "L22",
        "L25"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "L2",
        "L24",
        "L9"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L2",
        "L7",
        "L15"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "L2",
        "L7",
        "L25"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L2",
        "L7",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L2",
        "L9",
        "L17"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L2",
        "L9",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L9",
        "overlap_eh"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L2",
        "L17",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L2",
        "L17",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L2",
        "L17",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L2",
        "L21",
        "L25"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L2",
        "L21",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L4",
        "L16",
        "L7"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "L4",
        "L22",
        "L7"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "L4",
        "L24",
        "L9"
       ]
      },
      {
       "weight": 51,
       "atoms": [
        "L4",
        "L7",
        "L25"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L4",
        "L9",
        "L9"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L6",
        "L12",
        "L9"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "L6",
        "L12",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L8",
        "L10",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L8",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L8",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L8",
        "L15",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L8",
        "L25",
        "overlap_fc"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L12",
        "L12",
        "L9"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "L12",
        "L12",
        "L25"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "L12",
        "L20",
        "L5"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L12",
        "L20",
        "L15"
       ]
      },
      {
       "weight": 36,
       "atoms": [
        "L12",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "L12",
        "L24",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L12",
        "L5",
        "L25"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L12",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L12",
        "L9",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L12",
        "L15",
        "L15"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L12",
        "L15",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "L12",
        "L15",
        "span_DE_hi"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "L12",
        "L17",
        "L23"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L12",
        "L17",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L12",
        "L19",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 63,
       "atoms": [
        "L12",
        "L25",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L14",
        "L14",
        "overlap_fc"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L14",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L18",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L18",
        "L7",
        "L15"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L18",
        "L15",
        "L25"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "L18",
        "L15",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L20",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L20",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L22",
        "L22",
        "L7"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L22",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L22",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L22",
        "L7",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L22",
        "L7",
        "L21"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L22",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L22",
        "L15",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 78,
       "atoms": [
        "L22",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "L24",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L3",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L3",
        "L15",
        "L17"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L3",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L5",
        "L7",
        "L21"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L5",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L5",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L5",
        "L15",
        "L15"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "L5",
        "L17",
        "L25"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L7",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L7",
        "L15",
        "AREA_HI_BCF"
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
       "weight": 18,
       "atoms": [
        "L9",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L9",
        "L23",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L13",
        "L15",
        "L25"
       ]
      },
      {
       "weight": 69,
       "atoms": [
        "L13",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L15",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L15",
        "L15",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L15",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L15",
        "L17",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 43,
       "atoms": [
        "L15",
        "L25",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L15",
        "L25",
        "overlap_bf"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_BCF",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_DEH",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "span_DE",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ABH",
        "L17"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "AREA_LO_EFH",
        "L14"
       ]
      },
      {
       "weight": 78,
       "atoms": [
        "AREA_LO_EFH",
        "L22"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "AREA_LO_EFH",
        "L24"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_EFH",
        "L3"
       ]
      },
      {
       "weight": 69,
       "atoms": [
        "AREA_LO_EFH",
        "L13"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_EFH",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_EFH",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "AREA_LO_ABG",
        "L14"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_ABG",
        "L22"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ABG",
        "L21"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_ABG",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_ABG",
        "span_DE"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_ABG",
        "span_BC_hi"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ABG",
        "span_AH_hi"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_AGH",
        "L6"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_AGH",
        "L22"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_AGH",
        "L17"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "AREA_LO_CDO",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_DEO",
        "L4"
       ]
      },
      {
       "weight": 72,
       "atoms": [
        "AREA_LO_DEO",
        "L22"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_CEO"
       ]
      },
      {
       "weight": 40,
       "atoms": [
        "AREA_LO_CEO",
        "L14"
       ]
      },
      {
       "weight": 60,
       "atoms": [
        "AREA_LO_CEO",
        "L13"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_CEO",
        "L25"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_CEO",
        "span_DE"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_CEO",
        "overlap_eh"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_DEP",
        "L4"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "AREA_LO_DEP",
        "L22"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_DEP",
        "L13"
       ]
      },
      {
       "weight": 60,
       "atoms": [
        "AREA_LO_DEP",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_DEP",
        "L21"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_DEP",
        "Gsum"
       ]
      },
      {
       "weight": 82,
       "atoms": [
        "AREA_LO_CHP",
        "L16"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CHP",
        "L3"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_CHP",
        "L7"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_CHP",
        "L21"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CHP",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_CHP",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_HOP",
        "L12"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_BGH"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_BGH",
        "L8"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_BGH",
        "L20"
       ]
      },
      {
       "weight": 52,
       "atoms": [
        "AREA_LO_BGH",
        "L22"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_BGH",
        "L13"
       ]
      },
      {
       "weight": 78,
       "atoms": [
        "AREA_LO_BGH",
        "L25"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_BGH",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_BGH",
        "span_DE_hi"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "AREA_LO_BGH",
        "overlap_ae"
       ]
      },
      {
       "weight": 73,
       "atoms": [
        "AREA_LO_EOP",
        "L14"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "AREA_LO_EOP",
        "L3"
       ]
      },
      {
       "weight": 39,
       "atoms": [
        "AREA_LO_EOP",
        "L13"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "AREA_LO_EOP",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 70,
       "atoms": [
        "AREA_LO_EOP",
        "span_BC_hi"
       ]
      },
      {
       "weight": 64,
       "atoms": [
        "AREA_LO_DGP"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_DGP",
        "L8"
       ]
      },
      {
       "weight": 39,
       "atoms": [
        "AREA_LO_DGP",
        "L12"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_DGP",
        "L19"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_DGP",
        "L23"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CEG",
        "L4"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "AREA_LO_CEG",
        "L18"
       ]
      },
      {
       "weight": 68,
       "atoms": [
        "AREA_LO_CEG",
        "L22"
       ]
      },
      {
       "weight": 48,
       "atoms": [
        "AREA_LO_CEG",
        "L24"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_CEG",
        "L7"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CEG",
        "L13"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CGP",
        "L12"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CGP",
        "L5"
       ]
      },
      {
       "weight": 78,
       "atoms": [
        "AREA_LO_CGP",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_DOP",
        "L8"
       ]
      },
      {
       "weight": 60,
       "atoms": [
        "AREA_LO_DOP",
        "L14"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "AREA_LO_DOP",
        "L13"
       ]
      },
      {
       "weight": 39,
       "atoms": [
        "AREA_LO_DOP",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "AREA_LO_DOP",
        "span_BC_hi"
       ]
      },
      {
       "weight": 66,
       "atoms": [
        "AREA_LO_GHP"
       ]
      },
      {
       "weight": 70,
       "atoms": [
        "AREA_LO_GHP",
        "L8"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_GHP",
        "L14"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_GHP",
        "L18"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_GHP",
        "L22"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "AREA_LO_GHP",
        "L3"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_GHP",
        "span_DE"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "AREA_LO_GHP",
        "span_BC_hi"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "AREA_LO_GOP",
        "L4"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_BEP",
        "L6"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BEP",
        "L18"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_BEP",
        "L20"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_BEP",
        "L5"
       ]
      },
      {
       "weight": 78,
       "atoms": [
        "AREA_LO_BEP",
        "L17"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_BEP",
        "L23"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_BEP",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BEP",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BEP",
        "Gsum"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "AREA_HI_BEP",
        "L15"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_HI_BDP",
        "L15"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_BOP",
        "L9"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "QUAD_711",
        "L7"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "QUAD_952",
        "L9"
       ]
      }
     ],
     "sum": {
      "0,6": "-4729357990905119/493750000000000000",
      "1,2": "134481582610401/3906250000000000",
      "1,2,12": "-2832644481742491/125000000000000000",
      "1,4": "109187379940080013/220750000000000000000",
      "1,9": "-26602822501450533/1000000000000000000",
      "1,3,9": "11948508437375757/1000000000000000000",
      "1,11": "-335715153095439/10000000000000000",
      "1,12": "-6046823028379891667/88300000000000000000",
      "1": "2269151035156740291193/34878500000000000000000",
      "1,7": "588389773717941/9875000000000000000",
      "1,3": "-3079480413260433/200000000000000000",
      "1,3,7": "7874679983725061/500000000000000000",
      "0,1": "-1747366471249816131/39500000000000000000",
      "0,1,3": "18523113139300913/500000000000000000",
      "1,8": "43982048895595083/9875000000000000000",
      "1,4,7": "-2595061196064103/250000000000000000",
      "1,1": "-3475470922867333/250000000000000000",
      "1,10": "5086830212072089/125000000000000000",
      "1,7,10": "935322016161637/62500000000000000",
      "0,1,10": "-2200098996130321/62500000000000000",
      "2,8": "-372579518363499/31250000000000000",
      "2,11": "18425349745998093/250000000000000000",
      "2,12": "2881457017149609/31250000000000000",
      "2": "-7769337906927549/50000000000000000",
      "2,3": "16950773543418627/250000000000000000",
      "2,3,12": "-4093152337224831/125000000000000000",
      "2,4": "-1418098756369359/62500000000000000",
      "2,4,4": "-1153838288979489/250000000000000000",
      "3,6": "341409861531689/50000000000000000",
      "3,6,9": "239270172598803/50000000000000000",
      "4,5": "1729114516886673/25000000000000000",
      "4,5,7": "-1567682556578409/100000000000000000",
      "4,11": "901228203787169451/44150000000000000000",
      "4,7,11": "3067650700999917/500000000000000000",
      "4": "-58049493076440395097/883000000000000000000",
      "4,7": "322144869118797/20000000000000000",
      "4,6": "47616508126253/5000000000000000",
      "2,4,7": "902954335686969/125000000000000000",
      "4,12": "4135344198551771/500000000000000000",
      "6,6": "-15030542128411/2500000000000000",
      "6,6,12": "3264552244997/1250000000000000",
      "6,10": "-43032848714151/1562500000000000",
      "2,6,10": "17488511241843/1562500000000000",
      "6,11": "33786365516823/3125000000000000",
      "6,12": "-632739822641043/25000000000000000",
      "6": "5354125287332643/493750000000000000",
      "2,6": "132213244991733/12500000000000000",
      "2,6,12": "-56724011838789/6250000000000000",
      "6,7": "-3593571026602719/987500000000000000",
      "0,4,6": "122237240660821/25000000000000000",
      "6,7,7": "-40667110256977/12500000000000000",
      "1,6": "-5284360039432617/50000000000000000",
      "1,6,7": "-109129444453159/1000000000000000",
      "6,8": "10052733930327/2500000000000000",
      "6,8,11": "-111610944670167/12500000000000000",
      "6,9": "103121074916133/50000000000000000",
      "1,6,12": "163022952756443/25000000000000000",
      "7,7": "1337048550684923/250000000000000000",
      "7": "2420357219068410803/39500000000000000000",
      "2,7": "407034684224133/31250000000000000",
      "5,7": "-5140225518770661/50000000000000000",
      "9,11": "534459515104791/500000000000000000",
      "7,9,11": "3642566835089709/500000000000000000",
      "9": "-6174612497354217/500000000000000000",
      "7,9": "28238124366297/250000000000000000",
      "3,9": "-2027371303173807/1000000000000000000",
      "3,7,9": "4452614163519771/500000000000000000",
      "9,12": "222286927710981/50000000000000000",
      "7,9,12": "-1715368399980861/250000000000000000",
      "4,9": "3792558496728849/1000000000000000000",
      "10,11": "1171074888881607/25000000000000000",
      "10": "1240307426756669/125000000000000000",
      "7,10": "-469066612988501/31250000000000000",
      "2,10": "122733850489773/7812500000000000",
      "11,11": "-376128369192429/62500000000000000",
      "11": "370274231036110863/883000000000000000000",
      "7,11": "26678621772389157/500000000000000000",
      "3,11": "-20895170740502013021/220750000000000000000",
      "3,4,11": "-11895162403377999/1000000000000000000",
      "1,7,11": "-6442069106429619/500000000000000000",
      "2,4,11": "2864327826458997/250000000000000000",
      "12": "812401722160089043/3532000000000000000",
      "7,12": "990703933913863/50000000000000000",
      "5,12": "471577960599693/100000000000000000",
      "": "-19260256895155409151819/6975700000000000000000",
      "8": "-2260257739295449983/19750000000000000000",
      "7,8": "-15742080289677/125000000000000000",
      "5": "-4650790104571749/200000000000000000",
      "3": "-42615132491425482849/883000000000000000000",
      "3,10": "390663330777293/62500000000000000",
      "8,12": "-9774869171721561/125000000000000000",
      "3,4": "15844785749842207/500000000000000000",
      "3,7": "-1716893604365159/62500000000000000",
      "2,3,7": "-2740003374192603/125000000000000000",
      "2,3,4": "3501307519245843/250000000000000000",
      "3,5": "1419423565790757/200000000000000000",
      "3,5,7": "4757112652235883/100000000000000000",
      "3,4,5": "-6078866345951523/200000000000000000",
      "4,4": "-4142381024604677/1000000000000000000",
      "1,4,11": "8231984388884139/1000000000000000000",
      "2,7,8": "-611354573148483/31250000000000000",
      "4,4,5": "2003259840786129/200000000000000000",
      "0": "52933076714112881/19750000000000000000",
      "0,8": "395253138317037/125000000000000000",
      "0,1,8": "-53727842247617109/125000000000000000",
      "8,11": "3748299846745149/31250000000000000",
      "0,11": "92142963913143/500000000000000000",
      "0,1,11": "-166686002062090797/500000000000000000",
      "0,10": "-1970294304693/312500000000000",
      "0,6,10": "-44057220137359/781250000000000",
      "4,8": "1320447712265247/250000000000000000",
      "3,8": "1630128104215599/31250000000000000",
      "0,4": "5466603166167/2000000000000000",
      "0,3": "2375616547551533/500000000000000000",
      "0,1,4": "-6104198803945099/100000000000000000",
      "0,3,6": "-2596491395386889/25000000000000000",
      "0,0": "10062814235331/1250000000000000",
      "0,0,1": "-11236487586988807/62500000000000000",
      "2,9": "58086329273289/6250000000000000",
      "2,3,9": "-4157496368441811/250000000000000000",
      "10,12": "-2309275414618167/62500000000000000",
      "4,11,11": "-9731120298620121/62500000000000000",
      "4,8,11": "2654070430038039/250000000000000000",
      "3,12": "-19794898207943221/500000000000000000",
      "3,7,11": "-9308746787498679/250000000000000000",
      "6,6,7": "-6555986752683/156250000000000",
      "1,6,8": "-283249880576559/1562500000000000",
      "1,8,12": "2624712816862617/125000000000000000",
      "1,1,7": "-5449630740230521/125000000000000000",
      "1,4,9": "-3937570880437311/1000000000000000000",
      "2,9,12": "1601674349394501/125000000000000000",
      "2,10,11": "-1032372138913263/31250000000000000",
      "3,6,6": "-330480537584613/2500000000000000",
      "8,9": "-211485146038461/62500000000000000",
      "11,12": "4250626865978133/100000000000000000",
      "1,3,11": "-24979851262005393/500000000000000000",
      "3,6,12": "-235567076771263/6250000000000000",
      "1,4,6": "-139450829890879/50000000000000000"
     },
     "upper": "-40909244887667107099193/34878500000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "C_CA3",
   "cell": "CA",
   "given": [
    "AGO-",
    "AGP+",
    "DGP-"
   ],
   "stages": [
    "C_CA3:0",
    "C_CA3:1",
    "C_CA3:2",
    "C_CA3:3",
    "C_CA3:4",
    "C_CA3:5",
    "C_CA3:6",
    "C_CA3:7"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 7,
    "sum": {
     "factors": [
      {
       "weight": 28,
       "atoms": [
        "L0",
        "L0",
        "L3"
       ]
      },
      {
       "weight": 39,
       "atoms": [
        "L0",
        "L0",
        "L5"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L0",
        "L2",
        "L25"
       ]
      },
      {
       "weight": 143,
       "atoms": [
        "L0",
        "L4",
        "L15"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L0",
        "L6",
        "L13"
       ]
      },
      {
       "weight": 67,
       "atoms": [
        "L0",
        "L18",
        "Gsum"
       ]
      },
      {
       "weight": 122,
       "atoms": [
        "L0",
        "L22",
        "Gsum"
       ]
      },
      {
       "weight": 96,
       "atoms": [
        "L0",
        "L5",
        "L17"
       ]
      },
      {
       "weight": 61,
       "atoms": [
        "L0",
        "L5",
        "L19"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L0",
        "L5",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L0",
        "L9",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 173,
       "atoms": [
        "L0",
        "L19",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L0",
        "L21",
        "overlap_fc"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L0",
        "AREA_HI_ADE",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L2",
        "L2",
        "L9"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L2",
        "L6",
        "L17"
       ]
      },
      {
       "weight": 188,
       "atoms": [
        "L2",
        "L5",
        "L17"
       ]
      },
      {
       "weight": 177,
       "atoms": [
        "L2",
        "L5",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L2",
        "L9",
        "L9"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L2",
        "L9",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 75,
       "atoms": [
        "L2",
        "L15",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 106,
       "atoms": [
        "L2",
        "L17",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L2",
        "L21",
        "L25"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L21",
        "overlap_fc"
       ]
      },
      {
       "weight": 373,
       "atoms": [
        "L2",
        "L25",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 71,
       "atoms": [
        "L4",
        "L22",
        "L9"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L4",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 111,
       "atoms": [
        "L4",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L4",
        "L9",
        "L21"
       ]
      },
      {
       "weight": 304,
       "atoms": [
        "L4",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 55,
       "atoms": [
        "L4",
        "L15",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 275,
       "atoms": [
        "L4",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L4",
        "L21",
        "L25"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L6",
        "L6",
        "L5"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L6",
        "L10",
        "L5"
       ]
      },
      {
       "weight": 99,
       "atoms": [
        "L6",
        "L5",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L6",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L8",
        "L5",
        "L21"
       ]
      },
      {
       "weight": 719,
       "atoms": [
        "L12",
        "L18",
        "L15"
       ]
      },
      {
       "weight": 200,
       "atoms": [
        "L12",
        "L18",
        "L21"
       ]
      },
      {
       "weight": 83,
       "atoms": [
        "L12",
        "L22",
        "L1"
       ]
      },
      {
       "weight": 547,
       "atoms": [
        "L12",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 248,
       "atoms": [
        "L12",
        "L24",
        "L15"
       ]
      },
      {
       "weight": 76,
       "atoms": [
        "L12",
        "L1",
        "L19"
       ]
      },
      {
       "weight": 71,
       "atoms": [
        "L12",
        "L1",
        "L21"
       ]
      },
      {
       "weight": 371,
       "atoms": [
        "L12",
        "L1",
        "L25"
       ]
      },
      {
       "weight": 188,
       "atoms": [
        "L12",
        "L3",
        "L15"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L12",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 146,
       "atoms": [
        "L12",
        "L5",
        "L21"
       ]
      },
      {
       "weight": 247,
       "atoms": [
        "L12",
        "L5",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L12",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 276,
       "atoms": [
        "L12",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L12",
        "L9",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 182,
       "atoms": [
        "L12",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "L12",
        "L15",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 547,
       "atoms": [
        "L12",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 200,
       "atoms": [
        "L12",
        "L19",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 363,
       "atoms": [
        "L12",
        "L21",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L14",
        "L18",
        "L15"
       ]
      },
      {
       "weight": 103,
       "atoms": [
        "L14",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L14",
        "L15",
        "overlap_fc"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L16",
        "L18",
        "L15"
       ]
      },
      {
       "weight": 200,
       "atoms": [
        "L16",
        "L19",
        "L19"
       ]
      },
      {
       "weight": 323,
       "atoms": [
        "L18",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 139,
       "atoms": [
        "L18",
        "L3",
        "L15"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "L18",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L18",
        "L9",
        "L25"
       ]
      },
      {
       "weight": 43,
       "atoms": [
        "L18",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L18",
        "L15",
        "L25"
       ]
      },
      {
       "weight": 39,
       "atoms": [
        "L18",
        "L15",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 275,
       "atoms": [
        "L18",
        "L15",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L18",
        "L15",
        "overlap_ae"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L18",
        "L21",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L18",
        "AREA_HI_ADE",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 453,
       "atoms": [
        "L22",
        "L1",
        "L19"
       ]
      },
      {
       "weight": 64,
       "atoms": [
        "L22",
        "L1",
        "L21"
       ]
      },
      {
       "weight": 84,
       "atoms": [
        "L22",
        "L3",
        "L9"
       ]
      },
      {
       "weight": 308,
       "atoms": [
        "L22",
        "L3",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L22",
        "L9",
        "L17"
       ]
      },
      {
       "weight": 170,
       "atoms": [
        "L22",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 76,
       "atoms": [
        "L22",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 43,
       "atoms": [
        "L22",
        "L19",
        "L21"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "L22",
        "L19",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L22",
        "L21",
        "overlap_bf"
       ]
      },
      {
       "weight": 248,
       "atoms": [
        "L22",
        "AREA_HI_ADH",
        "Gsum"
       ]
      },
      {
       "weight": 62,
       "atoms": [
        "L1",
        "L3",
        "L15"
       ]
      },
      {
       "weight": 51,
       "atoms": [
        "L1",
        "L5",
        "L21"
       ]
      },
      {
       "weight": 57,
       "atoms": [
        "L1",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 49,
       "atoms": [
        "L1",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 40,
       "atoms": [
        "L1",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 200,
       "atoms": [
        "L1",
        "L19",
        "L19"
       ]
      },
      {
       "weight": 64,
       "atoms": [
        "L1",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 308,
       "atoms": [
        "L3",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L3",
        "L5",
        "L21"
       ]
      },
      {
       "weight": 174,
       "atoms": [
        "L3",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L3",
        "L9",
        "L21"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L3",
        "L9",
        "L25"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L3",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 258,
       "atoms": [
        "L3",
        "L15",
        "L17"
       ]
      },
      {
       "weight": 65,
       "atoms": [
        "L3",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 47,
       "atoms": [
        "L3",
        "L15",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L3",
        "L15",
        "overlap_ae"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "L3",
        "L19",
        "L21"
       ]
      },
      {
       "weight": 241,
       "atoms": [
        "L3",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L3",
        "AREA_HI_ADH",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 276,
       "atoms": [
        "L5",
        "L9",
        "L13"
       ]
      },
      {
       "weight": 128,
       "atoms": [
        "L5",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 570,
       "atoms": [
        "L5",
        "L13",
        "L25"
       ]
      },
      {
       "weight": 211,
       "atoms": [
        "L5",
        "L13",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 233,
       "atoms": [
        "L5",
        "L17",
        "L19"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "L5",
        "L23",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 39,
       "atoms": [
        "L7",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L7",
        "L19",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L9",
        "L13",
        "L25"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L9",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "L9",
        "L19",
        "L19"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "L9",
        "L19",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L9",
        "AREA_HI_ADH",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L9",
        "AREA_LO_BCF",
        "overlap_fc"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L9",
        "overlap_fc",
        "overlap_ae"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L11",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L15",
        "L21",
        "L23"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L15",
        "L23",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 229,
       "atoms": [
        "L15",
        "L23",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 47,
       "atoms": [
        "L15",
        "L23",
        "overlap_fc"
       ]
      },
      {
       "weight": 62,
       "atoms": [
        "L15",
        "AREA_HI_ADH",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 55,
       "atoms": [
        "L15",
        "AREA_LO_BCF",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L15",
        "AREA_LO_BCF",
        "span_DE"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L15",
        "AREA_LO_BCF",
        "overlap_bf"
       ]
      },
      {
       "weight": 43,
       "atoms": [
        "L19",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 53,
       "atoms": [
        "L19",
        "AREA_HI_ADH",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 70,
       "atoms": [
        "L23",
        "AREA_HI_ADH",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 39,
       "atoms": [
        "AREA_HI_ADH",
        "AREA_HI_ADH",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_ABC",
        "L15"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "AREA_LO_ABE",
        "L15"
       ]
      },
      {
       "weight": 119,
       "atoms": [
        "AREA_LO_CDE",
        "L2"
       ]
      },
      {
       "weight": 36,
       "atoms": [
        "AREA_LO_CDE",
        "L6"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "AREA_LO_CDE",
        "L8"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_CDE",
        "L13"
       ]
      },
      {
       "weight": 106,
       "atoms": [
        "AREA_LO_CDE",
        "L21"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_HI_CDE",
        "L15"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_HI_CDF",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_HI_CDH",
        "L15"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_HI_DEF",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EFH",
        "L6"
       ]
      },
      {
       "weight": 54,
       "atoms": [
        "AREA_LO_EFH",
        "L22"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "AREA_LO_EFH",
        "L1"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_EFH",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_EFH",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_EFH",
        "overlap_ae"
       ]
      },
      {
       "weight": 191,
       "atoms": [
        "AREA_LO_ABG",
        "L18"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ABG",
        "L21"
       ]
      },
      {
       "weight": 506,
       "atoms": [
        "AREA_LO_ABG",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_ABG",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 503,
       "atoms": [
        "AREA_LO_ABG",
        "span_DE"
       ]
      },
      {
       "weight": 61,
       "atoms": [
        "AREA_LO_ABG",
        "overlap_eh"
       ]
      },
      {
       "weight": 67,
       "atoms": [
        "AREA_LO_ABG",
        "overlap_ae"
       ]
      },
      {
       "weight": 287,
       "atoms": [
        "AREA_LO_CGH",
        "L0"
       ]
      },
      {
       "weight": 308,
       "atoms": [
        "AREA_LO_CGH",
        "L2"
       ]
      },
      {
       "weight": 528,
       "atoms": [
        "AREA_LO_CGH",
        "L23"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CGH",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 130,
       "atoms": [
        "AREA_LO_CDO",
        "L0"
       ]
      },
      {
       "weight": 58,
       "atoms": [
        "AREA_LO_CDO",
        "L2"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "AREA_LO_CDO",
        "L6"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDO",
        "L10"
       ]
      },
      {
       "weight": 200,
       "atoms": [
        "AREA_LO_CDO",
        "L13"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "AREA_LO_CDO",
        "L23"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "AREA_LO_CDO",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 39,
       "atoms": [
        "AREA_LO_CDO",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 139,
       "atoms": [
        "AREA_LO_CDO",
        "overlap_ae"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_DEO",
        "L1"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_DEO",
        "overlap_bf"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EFO",
        "L4"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_EFO",
        "L22"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_EFO",
        "L1"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_EFO",
        "L3"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EFO",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 476,
       "atoms": [
        "AREA_LO_CEO",
        "L12"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_CEO",
        "L18"
       ]
      },
      {
       "weight": 309,
       "atoms": [
        "AREA_LO_CEO",
        "L22"
       ]
      },
      {
       "weight": 67,
       "atoms": [
        "AREA_LO_CEO",
        "L1"
       ]
      },
      {
       "weight": 234,
       "atoms": [
        "AREA_LO_CEO",
        "L3"
       ]
      },
      {
       "weight": 150,
       "atoms": [
        "AREA_LO_CEO",
        "L7"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_CEO",
        "overlap_bf"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "AREA_LO_CEO",
        "QUAD_950"
       ]
      },
      {
       "weight": 43,
       "atoms": [
        "AREA_LO_CHP",
        "L12"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_HI_CEP",
        "L21"
       ]
      },
      {
       "weight": 1000,
       "atoms": [
        "AREA_LO_HOP",
        "L12"
       ]
      },
      {
       "weight": 139,
       "atoms": [
        "AREA_LO_HOP",
        "L3"
       ]
      },
      {
       "weight": 43,
       "atoms": [
        "AREA_LO_HOP",
        "L19"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "AREA_LO_HOP",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 275,
       "atoms": [
        "AREA_LO_HOP",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_HOP",
        "span_AH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_HOP",
        "overlap_ae"
       ]
      },
      {
       "weight": 118,
       "atoms": [
        "AREA_LO_AGO",
        "L14"
       ]
      },
      {
       "weight": 453,
       "atoms": [
        "AREA_LO_AGO",
        "L22"
       ]
      },
      {
       "weight": 130,
       "atoms": [
        "AREA_LO_AGO",
        "L3"
       ]
      },
      {
       "weight": 200,
       "atoms": [
        "AREA_LO_AGO",
        "L19"
       ]
      },
      {
       "weight": 154,
       "atoms": [
        "AREA_LO_AGO",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 233,
       "atoms": [
        "AREA_LO_AGO",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 88,
       "atoms": [
        "AREA_LO_AGO",
        "span_AH"
       ]
      },
      {
       "weight": 232,
       "atoms": [
        "AREA_LO_AGP",
        "L15"
       ]
      },
      {
       "weight": 47,
       "atoms": [
        "AREA_HI_GOP",
        "L15"
       ]
      },
      {
       "weight": 164,
       "atoms": [
        "AREA_LO_GHP",
        "L0"
       ]
      },
      {
       "weight": 408,
       "atoms": [
        "AREA_LO_GHP",
        "L2"
       ]
      },
      {
       "weight": 281,
       "atoms": [
        "AREA_LO_GHP",
        "L18"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_GHP",
        "L21"
       ]
      },
      {
       "weight": 151,
       "atoms": [
        "AREA_LO_GHP",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 140,
       "atoms": [
        "AREA_LO_GHP",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 528,
       "atoms": [
        "AREA_LO_GHP",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 151,
       "atoms": [
        "AREA_LO_GHP",
        "span_DE"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_GHP",
        "overlap_ae"
       ]
      },
      {
       "weight": 120,
       "atoms": [
        "AREA_LO_BGP",
        "L2"
       ]
      },
      {
       "weight": 173,
       "atoms": [
        "AREA_LO_BGP",
        "L18"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_BGP",
        "L20"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_BGP",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 389,
       "atoms": [
        "AREA_LO_BGP",
        "overlap_eh"
       ]
      },
      {
       "weight": 386,
       "atoms": [
        "AREA_LO_BGP",
        "overlap_ae"
       ]
      },
      {
       "weight": 55,
       "atoms": [
        "AREA_LO_BEO",
        "L18"
       ]
      },
      {
       "weight": 84,
       "atoms": [
        "AREA_LO_BEO",
        "L22"
       ]
      },
      {
       "weight": 38,
       "atoms": [
        "AREA_LO_BEO",
        "L1"
       ]
      },
      {
       "weight": 170,
       "atoms": [
        "AREA_LO_BEO",
        "L5"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_BEO",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_BEO",
        "overlap_bf"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_BEO",
        "overlap_ae"
       ]
      },
      {
       "weight": 197,
       "atoms": [
        "Central_order",
        "L16"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "Central_order",
        "L7"
       ]
      },
      {
       "weight": 81,
       "atoms": [
        "QUAD_828",
        "L15"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "QUAD_1034",
        "L15"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "LINEAR_1049",
        "L15"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "QUAD_1068",
        "L15"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "QUAD_1120",
        "L15"
       ]
      }
     ],
     "sum": {
      "0,0": "1091618824009111/1000000000000000000",
      "0,1": "-2112674188720547/500000000000000000",
      "0,2": "-1656080496264403/1000000000000000000",
      "0,2,7": "899072900616427/1000000000000000000",
      "0,3": "-890425165113847/1000000000000000000",
      "0,9": "49577165337464557/44150000000000000000",
      "0,8,9": "-47381898540927/40000000000000000",
      "0,11": "-6446761582874448213/883000000000000000000",
      "0,8,11": "778415917097457/200000000000000000",
      "0": "9908740132770283/1000000000000000000",
      "0,8": "-288739600700823/20000000000000000",
      "0,2,9": "182374123589521/200000000000000000",
      "0,4": "11693376009851877/1000000000000000000",
      "0,1,9": "-80826527576933/200000000000000000",
      "0,5": "-14348960135211/62500000000000000",
      "0,10": "42514361373627/50000000000000000",
      "0,2,10": "4263196350417147/1000000000000000000",
      "1,1": "-1212322174673453/1000000000000000000",
      "1,1,4": "-2337296998247189/1000000000000000000",
      "1,3": "-594806573414251/100000000000000000",
      "1": "-676824541898179/125000000000000000",
      "1,8": "7053615214119/100000000000000000",
      "1,2": "219755029746169/100000000000000000",
      "1,4": "2864078983133951/1000000000000000000",
      "1,7": "4534628205080103/1000000000000000000",
      "1,4,7": "-1810675764652733/1000000000000000000",
      "1,7,7": "398460807734471/1000000000000000000",
      "0,1,7": "398460807734471/1000000000000000000",
      "1,12": "10742339266838103/1000000000000000000",
      "1,10": "1452890663142633/1000000000000000000",
      "1,5": "16076881949349/1562500000000000",
      "1,5,10": "-1268039827746549/62500000000000000",
      "2,11": "2137771158795357/1000000000000000000",
      "2": "479195731208070731/18200000000000000000",
      "2,4": "5843174961913699047/91000000000000000000",
      "2,9": "-145150729233043/20000000000000000",
      "2,4,9": "828739989663883/200000000000000000",
      "2,10": "-81168419095138287/1750000000000000000",
      "2,4,10": "-19372711598778681/1000000000000000000",
      "2,7": "-2622055393199431/500000000000000000",
      "2,6": "-3392241550928637/500000000000000000",
      "2,6,7": "-1171470052459671/500000000000000000",
      "2,12": "554557778098347/50000000000000000",
      "3,3": "-1870567995993873/200000000000000000",
      "2,3,3": "18565432160309683/1000000000000000000",
      "3,5": "-626035447138959/31250000000000000",
      "3": "3228925330125407/200000000000000000",
      "3,4": "-4224316541752109/1000000000000000000",
      "2,3": "-3769379573675111/500000000000000000",
      "2,3,4": "-18565432160309683/1000000000000000000",
      "4": "273899969089140977/4550000000000000000",
      "4,10": "-233150042305323/8000000000000000",
      "6,9": "113702624669397/100000000000000000",
      "6,11": "1337567338752003/31250000000000000",
      "6,12": "-1671985481572593/250000000000000000",
      "6,7,12": "1646502131768211/500000000000000000",
      "6": "-29532168437524089/500000000000000000",
      "0,6": "557915714594559/500000000000000000",
      "6,10": "180577548777483/12500000000000000",
      "0,6,10": "1907168694956811/500000000000000000",
      "6,7": "-2168168530463643/250000000000000000",
      "1,6": "-1758535300189011/250000000000000000",
      "4,6": "-112474795841529/7812500000000000",
      "6,7,11": "1340343897140943/500000000000000000",
      "0,6,7": "402206126483451/500000000000000000",
      "6,9,12": "333987803506953/100000000000000000",
      "3,6": "3191076817723707/500000000000000000",
      "7,9": "-28073735509447/200000000000000000",
      "7": "-503377675145152891/11375000000000000000",
      "7,7": "-108171199917187/40000000000000000",
      "5,7": "455178688194321/31250000000000000",
      "2,7,7": "-899072900616427/1000000000000000000",
      "8,9": "5361250286943/8000000000000000",
      "7,8,9": "47381898540927/40000000000000000",
      "8": "-4623040154623641/100000000000000000",
      "9,11": "-36238307579727/100000000000000000",
      "7,9,11": "208664355555993/200000000000000000",
      "9": "-39759983085779269/2275000000000000000",
      "1,9": "952855577435779/200000000000000000",
      "4,9": "-57077102258517/5824000000000000",
      "9,12": "1341128349264267/100000000000000000",
      "9,9": "-90649566650221/40000000000000000",
      "7,9,12": "-256326982187061/200000000000000000",
      "3,9": "132742048912649/25000000000000000",
      "4,7,9": "-284535059521823/200000000000000000",
      "9,10": "97832778008823/20000000000000000",
      "3,4,9": "1292977192410629/200000000000000000",
      "3,3,9": "-34910384195086983/100000000000000000",
      "11": "5010112325259767631/220750000000000000000",
      "10,11": "-6941224377768681/1000000000000000000",
      "4,11": "2257396259923827/50000000000000000",
      "1,11": "-158970999839031/250000000000000000",
      "8,11": "4691815181535771/200000000000000000",
      "4,9,11": "948207412669539/200000000000000000",
      "5,11": "-633969138095163/62500000000000000",
      "3,11": "-377443128670047/20000000000000000",
      "7,11": "4611435392403335817/441500000000000000000",
      "7,8,11": "-778415917097457/200000000000000000",
      "": "-2327461737615249381/437500000000000000",
      "0,7": "3411894031083/62500000000000000",
      "10": "-62916404163725079/7000000000000000000",
      "0,4,9": "284535059521823/200000000000000000",
      "5": "2417820298910757/62500000000000000",
      "4,5": "-71890370973993/488281250000000",
      "0,5,7": "-207166368899373/62500000000000000",
      "12": "6165315368248239/250000000000000000",
      "0,12": "-414846214441923/100000000000000000",
      "1,4,9": "367289911037159/200000000000000000",
      "4,12": "11470963890925869/1000000000000000000",
      "1,4,12": "7412322463875813/1000000000000000000",
      "1,4,5": "1215199394187207/62500000000000000",
      "7,8": "429271221874803/40000000000000000",
      "4,7": "-12068217586550697/1000000000000000000",
      "2,6,12": "4795620483311631/500000000000000000",
      "2,8": "-2959311802538247/100000000000000000",
      "4,7,11": "4674498619187793/1000000000000000000",
      "4,4": "-518643342407619/31250000000000000",
      "2,5": "913775299160997/62500000000000000",
      "2,4,5": "-2741933015623659/62500000000000000",
      "5,7,11": "-690377793781689/62500000000000000",
      "7,10": "1956332016565641/1000000000000000000",
      "7,10,11": "4877759528378451/1000000000000000000",
      "0,7,11": "-1028679199178691/1000000000000000000",
      "2,7,11": "2996142515187711/1000000000000000000",
      "3,7": "-6371206770459949/500000000000000000",
      "0,0,9": "-7451224869319819/200000000000000000",
      "0,0,11": "-7200754394250837/100000000000000000",
      "3,5,7": "941400298689279/62500000000000000",
      "1,8,9": "61162562283591/40000000000000000",
      "0,1,10": "-73686961030606209/1000000000000000000",
      "4,8": "-1696028851654203/100000000000000000",
      "3,8": "5089311612149391/200000000000000000",
      "0,1,6": "-195732635738946891/500000000000000000",
      "0,1,8": "-69048276557001393/100000000000000000",
      "0,0,6": "-402206126483451/500000000000000000",
      "0,3,9": "-13942217916569327/200000000000000000",
      "1,3,9": "-21670104751192381/200000000000000000",
      "5,10": "9445246240176747/62500000000000000",
      "5,9": "-370882651533771/12500000000000000",
      "2,7,10": "-4263196350417147/1000000000000000000",
      "4,5,9": "-190960103794317/12500000000000000",
      "10,12": "-5163661909649529/500000000000000000",
      "7,12": "-7530486231589221/1000000000000000000",
      "6,7,10": "-1907168694956811/500000000000000000",
      "8,9,11": "-157899232166211/40000000000000000",
      "1,1,12": "-6316750073355669/25000000000000000",
      "1,1,10": "-2438929526485023/500000000000000000"
     },
     "upper": "-71727971002180252490403/16070600000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "C_CA4",
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP-",
    "DGP-"
   ],
   "stages": [],
   "terminal": {
    "kind": "geometry",
    "stage": -1,
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
      "EOP": -1,
      "FOP": -1,
      "AGO": 1,
      "AGP": -1,
      "DGP": -1,
      "ACO": 1,
      "AOP": -1,
      "ACP": 1,
      "CEG": 1,
      "CFG": 1,
      "CGO": -1,
      "CGP": -1,
      "EHO": 1,
      "DFG": 1,
      "BGP": -1,
      "ADG": 1,
      "GHP": -1,
      "GOP": -1,
      "BDG": 1,
      "DGH": -1,
      "EGH": -1,
      "BHO": -1,
      "BHP": -1,
      "GHO": -1,
      "AEO": -1,
      "AFO": -1,
      "EGO": 1,
      "FGO": 1,
      "DOP": 1,
      "ADP": 1,
      "AEP": -1,
      "EGP": 1,
      "AFP": -1,
      "FGP": 1,
      "BDP": 1,
      "ADO": 1,
      "AEG": -1,
      "AFG": -1,
      "BDO": 1,
      "BEG": 1,
      "BEP": 1,
      "DFP": 1
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
        "ABGOP"
       ],
       "target": "AOP",
       "sign": -1,
       "deps": [
        "ABG",
        "ABO",
        "AGP",
        "ABP",
        "AGO"
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
        "ECHOP"
       ],
       "target": "EHO",
       "sign": 1,
       "deps": [
        "CEH",
        "EOP",
        "CEO",
        "EHP",
        "CEP"
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
        "GACDP"
       ],
       "target": "ADG",
       "sign": 1,
       "deps": [
        "ACG",
        "DGP",
        "CGP",
        "AGP",
        "CDG"
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
        "GACOP"
       ],
       "target": "GOP",
       "sign": -1,
       "deps": [
        "ACG",
        "AGO",
        "CGP",
        "AGP",
        "CGO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "GBCDP"
       ],
       "target": "BDG",
       "sign": 1,
       "deps": [
        "BCG",
        "DGP",
        "CGP",
        "BGP",
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
        "OACEP"
       ],
       "target": "AEO",
       "sign": -1,
       "deps": [
        "ACO",
        "EOP",
        "COP",
        "AOP",
        "CEO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "OAEFH"
       ],
       "target": "AFO",
       "sign": -1,
       "deps": [
        "AEO",
        "FHO",
        "EHO",
        "AHO",
        "EFO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "OAEGP"
       ],
       "target": "EGO",
       "sign": 1,
       "deps": [
        "AEO",
        "GOP",
        "AGO",
        "EOP",
        "AOP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "OAFGP"
       ],
       "target": "FGO",
       "sign": 1,
       "deps": [
        "AFO",
        "GOP",
        "AGO",
        "FOP",
        "AOP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "OCDGP"
       ],
       "target": "DOP",
       "sign": 1,
       "deps": [
        "CDO",
        "GOP",
        "CGO",
        "COP",
        "DGO"
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
        "PACEO"
       ],
       "target": "AEP",
       "sign": -1,
       "deps": [
        "ACP",
        "EOP",
        "COP",
        "AOP",
        "CEP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "PADEG"
       ],
       "target": "EGP",
       "sign": 1,
       "deps": [
        "ADP",
        "AEP",
        "DGP",
        "AGP",
        "DEP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "PAEFH"
       ],
       "target": "AFP",
       "sign": -1,
       "deps": [
        "AEP",
        "FHP",
        "EHP",
        "AHP",
        "EFP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "PAFGH"
       ],
       "target": "FGP",
       "sign": 1,
       "deps": [
        "AFP",
        "GHP",
        "AGP",
        "FHP",
        "AHP"
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
        "ABDGO"
       ],
       "target": "ADO",
       "sign": 1,
       "deps": [
        "ABD",
        "AGO",
        "ABG",
        "ABO",
        "ADG"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "ABEGO"
       ],
       "target": "AEG",
       "sign": -1,
       "deps": [
        "ABE",
        "AGO",
        "ABG",
        "AEO",
        "ABO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "ABFGO"
       ],
       "target": "AFG",
       "sign": -1,
       "deps": [
        "ABF",
        "AGO",
        "ABG",
        "AFO",
        "ABO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "DABCO"
       ],
       "target": "BDO",
       "sign": 1,
       "deps": [
        "ABD",
        "CDO",
        "ACD",
        "ADO",
        "BCD"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "ray",
        "BCE",
        "GO",
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
        "BCO",
        "CEO",
        "EGO"
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
       "target": "BEP",
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
        "DEF",
        "OP",
        "FDE",
        [
         "fixed",
         "DEF"
        ]
       ],
       "target": "DFP",
       "sign": 1,
       "deps": [
        "DEO",
        "EFO",
        "DEP",
        "EFP",
        "FOP"
       ],
       "area_stage": null
      }
     ],
     "contradiction": {
      "kind": "nomesh",
      "outer": "ACE",
      "points": "GOP"
     },
     "mesh_table": [
      {
       "order": "GOP",
       "opposite": "CGP"
      },
      {
       "order": "GPO",
       "opposite": "AOP"
      },
      {
       "order": "OGP",
       "opposite": "AOG"
      },
      {
       "order": "OPG",
       "opposite": "AGP"
      },
      {
       "order": "PGO",
       "opposite": "AOG"
      },
      {
       "order": "POG",
       "opposite": "EOP"
      }
     ]
    }
   },
   "word": "C"
  },
  {
   "id": "C_CA5",
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP-",
    "DGP+"
   ],
   "stages": [],
   "terminal": {
    "kind": "geometry",
    "stage": -1,
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
      "EOP": -1,
      "FOP": -1,
      "AGO": 1,
      "AGP": -1,
      "DGP": 1,
      "ACO": 1,
      "AOP": -1,
      "ACP": 1,
      "CEG": 1,
      "CFG": 1,
      "CGO": -1,
      "CGP": -1,
      "DOP": 1,
      "EHO": 1,
      "DFG": 1,
      "BGP": -1,
      "GHP": -1,
      "GOP": -1,
      "EGP": 1,
      "DGH": -1,
      "FGP": 1,
      "EGH": -1,
      "BHO": -1,
      "BHP": -1,
      "GHO": -1,
      "AEO": -1,
      "AFO": -1,
      "EGO": 1,
      "FGO": 1,
      "AEP": -1,
      "AFP": -1,
      "DHP": 1,
      "DFP": 1,
      "AEG": -1,
      "AFG": -1,
      "ADO": 1,
      "ADG": 1,
      "BEG": 1,
      "BEP": 1
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
        "ABGOP"
       ],
       "target": "AOP",
       "sign": -1,
       "deps": [
        "ABG",
        "ABO",
        "AGP",
        "ABP",
        "AGO"
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
        "ECHOP"
       ],
       "target": "EHO",
       "sign": 1,
       "deps": [
        "CEH",
        "EOP",
        "CEO",
        "EHP",
        "CEP"
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
        "GACOP"
       ],
       "target": "GOP",
       "sign": -1,
       "deps": [
        "ACG",
        "AGO",
        "CGP",
        "AGP",
        "CGO"
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
        "OACEP"
       ],
       "target": "AEO",
       "sign": -1,
       "deps": [
        "ACO",
        "EOP",
        "COP",
        "AOP",
        "CEO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "OAEFH"
       ],
       "target": "AFO",
       "sign": -1,
       "deps": [
        "AEO",
        "FHO",
        "EHO",
        "AHO",
        "EFO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "OAEGP"
       ],
       "target": "EGO",
       "sign": 1,
       "deps": [
        "AEO",
        "GOP",
        "AGO",
        "EOP",
        "AOP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "OAFGP"
       ],
       "target": "FGO",
       "sign": 1,
       "deps": [
        "AFO",
        "GOP",
        "AGO",
        "FOP",
        "AOP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "PACEO"
       ],
       "target": "AEP",
       "sign": -1,
       "deps": [
        "ACP",
        "EOP",
        "COP",
        "AOP",
        "CEP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "PAEFG"
       ],
       "target": "AFP",
       "sign": -1,
       "deps": [
        "AEP",
        "FGP",
        "EGP",
        "AGP",
        "EFP"
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
        "plu",
        "ABEGO"
       ],
       "target": "AEG",
       "sign": -1,
       "deps": [
        "ABE",
        "AGO",
        "ABG",
        "AEO",
        "ABO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "ABFGO"
       ],
       "target": "AFG",
       "sign": -1,
       "deps": [
        "ABF",
        "AGO",
        "ABG",
        "AFO",
        "ABO"
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
       "target": "ADG",
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
        "GO",
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
        "BCO",
        "CEO",
        "EGO"
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
       "target": "BEP",
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
     "contradiction": {
      "kind": "nomesh",
      "outer": "ACE",
      "points": "GOP"
     },
     "mesh_table": [
      {
       "order": "GOP",
       "opposite": "CGP"
      },
      {
       "order": "GPO",
       "opposite": "AOP"
      },
      {
       "order": "OGP",
       "opposite": "AOG"
      },
      {
       "order": "OPG",
       "opposite": "AGP"
      },
      {
       "order": "PGO",
       "opposite": "AOG"
      },
      {
       "order": "POG",
       "opposite": "EOP"
      }
     ]
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CA6ppp",
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "EGO+",
    "BGP+",
    "FGP+"
   ],
   "stages": [
    "other_CA_C_6:0",
    "other_CA_C_6:1",
    "other_CA_C_6:2",
    "other_CA_C_6:3",
    "other_CA_C_6:4",
    "other_CA_C_6:5",
    "Ccap_CA6:0",
    "Ccap_CA6p:0",
    "Ccap_CA6p:1",
    "Ccap_CA6p:2",
    "Ccap_CA6p:3",
    "Ccap_CA6pp:0",
    "Ccap_CA6pp:1",
    "Ccap_CA6pp:2",
    "Ccap_CA6pp:3",
    "Ccap_CA6ppp:0",
    "Ccap_CA6ppp:1",
    "Ccap_CA6ppp:2",
    "Ccap_CA6ppp:3"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 18,
    "sum": {
     "factors": [
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L2",
        "L3"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L0",
        "L2",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L11",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L2",
        "L2",
        "L21"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L2",
        "L8",
        "L5"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L12",
        "L21"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L2",
        "L12",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L2",
        "L14",
        "L5"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L20",
        "overlap_bf"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L2",
        "L22",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L24",
        "Gsum"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L7",
        "L19"
       ]
      },
      {
       "weight": 80,
       "atoms": [
        "L2",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L2",
        "L11",
        "L21"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L15",
        "overlap_eh"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L2",
        "L21",
        "L25"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L2",
        "L25",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L25",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L6",
        "L18",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L6",
        "L5",
        "L19"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L6",
        "L5",
        "span_DE_hi"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L6",
        "L5",
        "overlap_eh"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L6",
        "L19",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "L8",
        "L18",
        "overlap_bf"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L8",
        "L24",
        "overlap_bf"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L8",
        "L3",
        "overlap_bf"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L8",
        "L5",
        "L19"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L8",
        "L13",
        "overlap_bf"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L8",
        "L23",
        "overlap_bf"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L8",
        "overlap_bf",
        "overlap_bf"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L8",
        "overlap_bf",
        "Gsum"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L10",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L10",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L12",
        "L14",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L12",
        "L22",
        "L25"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L12",
        "L22",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L12",
        "L24",
        "L5"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L12",
        "L1",
        "L5"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L12",
        "L5",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L12",
        "L11",
        "L25"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L12",
        "L19",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L12",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L12",
        "L21",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L12",
        "L25",
        "overlap_eh"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L14",
        "L22",
        "L3"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "L14",
        "L22",
        "L11"
       ]
      },
      {
       "weight": 77,
       "atoms": [
        "L14",
        "L22",
        "L19"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L16",
        "L22",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L16",
        "L11",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L16",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L16",
        "L19",
        "overlap_bf"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L18",
        "L5",
        "overlap_eh"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L20",
        "L22",
        "overlap_bf"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L20",
        "L17",
        "overlap_bf"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L20",
        "overlap_bf",
        "overlap_ae"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L22",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "L22",
        "L11",
        "L21"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L22",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L22",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L24",
        "L19",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L24",
        "AREA_HI_BCF",
        "overlap_bf"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L3",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L5",
        "L13",
        "L25"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L17",
        "L19"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L5",
        "L19",
        "overlap_ae"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L9",
        "L11",
        "L21"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L11",
        "L11",
        "overlap_eh"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L11",
        "L15",
        "L21"
       ]
      },
      {
       "weight": 98,
       "atoms": [
        "L11",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 84,
       "atoms": [
        "L11",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L11",
        "L21",
        "L25"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L11",
        "L25",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L11",
        "AREA_HI_BCF",
        "overlap_eh"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L13",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L15",
        "L19",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "L15",
        "L25",
        "overlap_bf"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L17",
        "overlap_bf",
        "overlap_bf"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L21",
        "AREA_HI_BCF",
        "overlap_eh"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L23",
        "AREA_HI_BCF",
        "overlap_eh"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_ABH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ABH",
        "L14"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_ABH",
        "L18"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_ABH",
        "L13"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ABH",
        "span_BC"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ABH",
        "span_AH_hi"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ABH",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ACE",
        "overlap_bf"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_CDE",
        "L21"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_EFH",
        "L23"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CDO"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CDO",
        "L2"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_CDO",
        "L8"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDO",
        "L14"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_CDO",
        "span_DE_hi"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_DEO",
        "span_DE_hi"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_CEO"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_CEO",
        "L3"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_CEO",
        "L7"
       ]
      },
      {
       "weight": 39,
       "atoms": [
        "AREA_LO_FHP"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_FHP",
        "L12"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_FHP",
        "L20"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_FHP",
        "L5"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_FHP",
        "L17"
       ]
      },
      {
       "weight": 54,
       "atoms": [
        "AREA_LO_FHP",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_FHP",
        "L23"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_FHP",
        "overlap_fc"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_HOP",
        "L12"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "AREA_LO_HOP",
        "L3"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "AREA_LO_HOP",
        "L11"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_HOP",
        "overlap_fc"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EHP",
        "L22"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EHP",
        "L5"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_EHP",
        "L19"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ACG",
        "L19"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_AGO",
        "L2"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_AGO",
        "L10"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_AGO",
        "overlap_fc"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CGP",
        "L2"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_GHO",
        "overlap_bf"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_GHP",
        "overlap_bf"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "AREA_LO_BEP",
        "Gsum"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_EGO",
        "L22"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_EGO",
        "L5"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_EGO",
        "L11"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BEG"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_BEG",
        "L22"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "AREA_LO_BEG",
        "L24"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_BEG",
        "span_BC"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BEG",
        "overlap_fc"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "AREA_LO_BGO",
        "L22"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_BGO",
        "L5"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_BGO",
        "L11"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_BGO",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "AREA_LO_BGP"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "AREA_LO_BGP",
        "L8"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_BGP",
        "L18"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_BGP",
        "L3"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_BGP",
        "L15"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_BGP",
        "L21"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_BGP",
        "L23"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_BGP",
        "span_BC"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_BGP",
        "overlap_fc"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_BEO",
        "L16"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_BEO",
        "L11"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BFO",
        "L2"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_BFO",
        "L12"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_BFO",
        "L16"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "AREA_LO_BFO",
        "L25"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BFO",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "AREA_LO_FGP"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_FGP",
        "L10"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_FGP",
        "L14"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_FGP",
        "L18"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_FGP",
        "L20"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_FGP",
        "L3"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BFP",
        "L12"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "AREA_LO_BFP",
        "L14"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BFP",
        "L16"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BFP",
        "L22"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_BFP",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "QUAD_1134",
        "L12"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "QUAD_1134",
        "L11"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "QUAD_1134",
        "L19"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "QUAD_1134",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "LINEAR_1363",
        "L22"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "LINEAR_1425",
        "L5"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "QUAD_1468",
        "L2"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "QUAD_1468",
        "L10"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "QUAD_1468",
        "L18"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "QUAD_1468",
        "Gsum"
       ]
      }
     ],
     "sum": {
      "0,1": "-78618595320351/12500000000000000",
      "0": "15865708509649/1953125000000000",
      "0,2": "8291044212381/976562500000000",
      "0,5": "-117354145167629/25000000000000000",
      "1,1": "-6691234016557/1250000000000000",
      "1,1,10": "-92953611835499/10000000000000000",
      "1,4": "-1013286260241943589/22075000000000000000",
      "1,2,4": "605220968906829/50000000000000000",
      "1,6": "1326199322874951/25000000000000000",
      "1,6,7": "-9690471639891/100000000000000",
      "1,4,6": "293331739282659/25000000000000000",
      "1,7": "292948816546539/19750000000000000",
      "1,11": "-40190198017141/10000000000000000",
      "1,12": "-1049571126461764637/22075000000000000000",
      "1": "47579082726248852707/3487850000000000000000",
      "1,9": "-31292210308517/2000000000000000",
      "1,3": "556888042943/312500000000000",
      "1,4,9": "-112317284548733/50000000000000000",
      "1,10": "1492609419957584087/88300000000000000000",
      "1,5": "-39490661168863/5000000000000000",
      "1,7,7": "203639180049/40000000000000",
      "1,2": "494080742060307/25000000000000000",
      "1,2,12": "454022513514909/25000000000000000",
      "1,1,12": "-23602896806233/2500000000000000",
      "1,7,12": "-4624224435921/500000000000000",
      "3,9": "62123715304393/15800000000000000",
      "3": "-11961603724881959/395000000000000000",
      "2,3": "1337895217557819/50000000000000000",
      "3,3": "-1123952772463/500000000000000",
      "3,4": "327771660627323/12500000000000000",
      "2,3,4": "-553169397703329/25000000000000000",
      "3,7": "852843005829/200000000000000",
      "4,5,9": "-112317284548733/50000000000000000",
      "4,5": "43862859037190633/2759375000000000000",
      "4": "681583549725446449147/34878500000000000000000",
      "4,9": "119701200960996787/21799062500000000000",
      "2,4": "-6364415013146883/250000000000000000",
      "4,5,11": "-102034627316633/10000000000000000",
      "1,4,8": "133528422046107/12500000000000000",
      "5": "-1653954344864361/50000000000000000",
      "5,9": "23717013059941/12500000000000000",
      "5,7": "6818306979873/1000000000000000",
      "5,7,9": "3710500143117/2000000000000000",
      "5,5": "-21490611994169/5000000000000000",
      "6,7": "-203886612095607/5000000000000000",
      "6,11": "-2789602895034711/50000000000000000",
      "6,7,11": "-282834980667099/2000000000000000",
      "6,12": "674206858138023/25000000000000000",
      "6": "-67678437011456313/500000000000000000",
      "2,6": "-5705774936805447/500000000000000000",
      "0,6": "168001239598479/62500000000000000",
      "4,6": "-140989620457917/10000000000000000",
      "5,6": "340936145764137/25000000000000000",
      "5,6,12": "220050560712339/6250000000000000",
      "6,9": "23618884618539/25000000000000000",
      "6,10": "601672744416933/12500000000000000",
      "2,6,10": "-16669997030528541/500000000000000000",
      "6,7,12": "43111792096443/2500000000000000",
      "7,11": "-147886105020471/4000000000000000",
      "1,7,11": "-3370803530217/400000000000000",
      "5,7,11": "3370803530217/400000000000000",
      "7,9,11": "-12033117286557/4000000000000000",
      "8,11": "2219088758936973/50000000000000000",
      "7,8,11": "14305573447803/1000000000000000",
      "4,8,11": "-433031424766347/25000000000000000",
      "8": "2049543643301187/50000000000000000",
      "7,8": "43715450934243/5000000000000000",
      "4,8": "-1323271945121907/125000000000000000",
      "5,8": "-53405946763851/2500000000000000",
      "5,7,8": "-4411228700043/500000000000000",
      "1,8": "-253996147352871/25000000000000000",
      "9": "421709788158756635309/34878500000000000000000",
      "7,9": "12645399805443/5000000000000000",
      "2,9": "-860528278138581/125000000000000000",
      "1,10,11": "301447694457179/20000000000000000",
      "5,10": "6051194323877227/100000000000000000",
      "1,4,10": "-551256862162787/50000000000000000",
      "11,11": "5160223660973/2500000000000000",
      "11": "10506595112482319711/88300000000000000000",
      "10,11": "-19362911311033691/200000000000000000",
      "5,11": "-318091591782851/20000000000000000",
      "11,12": "-1648844355008427/50000000000000000",
      "9,11": "495590467911751/100000000000000000",
      "4,11": "287241504853165269/5518750000000000000",
      "4,9,11": "364243904097293/100000000000000000",
      "12": "786077581977746753/110375000000000000000",
      "2,12": "4088493429568893/250000000000000000",
      "9,12": "2468036542745829/250000000000000000",
      "1,9,12": "-84257780978893/25000000000000000",
      "5,12": "-196137758317629/25000000000000000",
      "2,5,12": "-454022513514909/25000000000000000",
      "1,5,12": "-23602896806233/2500000000000000",
      "": "-58764575896812633634479/34878500000000000000000",
      "2": "-1499349334654452339/39500000000000000000",
      "7": "-12713370412909803/1580000000000000000",
      "2,7": "14202496629009/2500000000000000",
      "8,9": "-1855883201861931/125000000000000000",
      "2,8": "11688353667675927/125000000000000000",
      "2,8,9": "1546118470265787/250000000000000000",
      "0,9": "-3094118258069743/125000000000000000",
      "10": "-2425517850985242517641/34878500000000000000000",
      "4,10": "-7054387381628037/500000000000000000",
      "7,10": "-123375219934551/10000000000000000",
      "5,9,12": "-84257780978893/25000000000000000",
      "10,12": "24920041705697/62500000000000000",
      "7,12": "-5000186264379/500000000000000",
      "4,12": "576973928600179/25000000000000000",
      "2,5": "3916584168658137/100000000000000000",
      "2,5,7": "19994006272221/2000000000000000",
      "5,6,7": "-9690471639891/1000000000000000",
      "1,5,8": "22515727175139/2500000000000000",
      "1,1,8": "-22515727175139/625000000000000",
      "2,10": "-90320088767653341/7900000000000000000",
      "2,4,10": "10603911384529551/500000000000000000",
      "1,7,10": "18211254609363/2000000000000000",
      "2,11": "111407036713083/6250000000000000",
      "7,7": "1937135068101/200000000000000",
      "0,7": "-23005061560389/2500000000000000",
      "0,1,7": "-7255144904883/500000000000000",
      "1,1,7": "-3118236118731/200000000000000",
      "0,0": "-819611703043663/15625000000000000",
      "0,0,1": "-258482319454361/3125000000000000",
      "4,7": "-19545770314983/2500000000000000",
      "0,4": "696365973771061/31250000000000000",
      "4,4": "-32854741836719/3906250000000000",
      "4,4,9": "666092178930629/250000000000000000",
      "7,10,11": "-649648213494753/4000000000000000",
      "8,12": "317624831633901/31250000000000000",
      "7,11,11": "-10931484345657/800000000000000",
      "4,11,11": "-330897342793193/2500000000000000",
      "1,8,11": "-949237806421047/5000000000000000",
      "1,2,8": "-433109847896847/25000000000000000",
      "5,8,11": "-219054878404857/2500000000000000",
      "8,11,11": "-236797641141699/10000000000000000",
      "2,8,11": "1404571188973887/50000000000000000"
     },
     "upper": "-17538100156517548203383/34878500000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CA6ppmpp",
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "EGO+",
    "BGP+",
    "FGP-",
    "ADG+",
    "DHP+"
   ],
   "stages": [
    "other_CA_C_6:0",
    "other_CA_C_6:1",
    "other_CA_C_6:2",
    "other_CA_C_6:3",
    "other_CA_C_6:4",
    "other_CA_C_6:5",
    "Ccap_CA6:0",
    "Ccap_CA6p:0",
    "Ccap_CA6p:1",
    "Ccap_CA6p:2",
    "Ccap_CA6p:3",
    "Ccap_CA6pp:0",
    "Ccap_CA6pp:1",
    "Ccap_CA6pp:2",
    "Ccap_CA6pp:3",
    "Ccap_CA6ppm:0",
    "Ccap_CA6ppm:1",
    "Ccap_CA6ppm:2",
    "Ccap_CA6ppm:3",
    "Ccap_CA6ppmp:0",
    "Ccap_CA6ppmp:1",
    "Ccap_CA6ppmp:2",
    "Ccap_CA6ppmp:3",
    "Ccap_CA6ppmpp:0",
    "Ccap_CA6ppmpp:1",
    "Ccap_CA6ppmpp:2"
   ],
   "terminal": {
    "kind": "scalar",
    "stage": 25,
    "contradiction": {
     "triangle": "ABO",
     "lower": "L_ABO",
     "upper": "T0044"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CA6ppmpm",
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "EGO+",
    "BGP+",
    "FGP-",
    "ADG+",
    "DHP-"
   ],
   "stages": [
    "other_CA_C_6:0",
    "other_CA_C_6:1",
    "other_CA_C_6:2",
    "other_CA_C_6:3",
    "other_CA_C_6:4",
    "other_CA_C_6:5",
    "Ccap_CA6:0",
    "Ccap_CA6p:0",
    "Ccap_CA6p:1",
    "Ccap_CA6p:2",
    "Ccap_CA6p:3",
    "Ccap_CA6pp:0",
    "Ccap_CA6pp:1",
    "Ccap_CA6pp:2",
    "Ccap_CA6pp:3",
    "Ccap_CA6ppm:0",
    "Ccap_CA6ppm:1",
    "Ccap_CA6ppm:2",
    "Ccap_CA6ppm:3",
    "Ccap_CA6ppmp:0",
    "Ccap_CA6ppmp:1",
    "Ccap_CA6ppmp:2",
    "Ccap_CA6ppmp:3",
    "Ccap_CA6ppmpm:0",
    "Ccap_CA6ppmpm:1",
    "Ccap_CA6ppmpm:2",
    "Ccap_CA6ppmpm:3"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 26,
    "sum": {
     "factors": [
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L0",
        "L19"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L0",
        "L13",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L2",
        "L6",
        "L21"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L2",
        "L12",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L14",
        "L15"
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
       "weight": 9,
       "atoms": [
        "L2",
        "L16",
        "L9"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "L2",
        "L16",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L2",
        "L22",
        "L9"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L2",
        "L22",
        "L17"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L3",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L2",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L15",
        "Gsum"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L2",
        "L19",
        "span_AH_hi"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "L2",
        "L25",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L2",
        "L25",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L25",
        "overlap_eh"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L2",
        "AREA_HI_ADE",
        "QUAD_1263"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "AREA_LO_AEH",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L4",
        "L4",
        "L9"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "L4",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L6",
        "L10",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L6",
        "L10",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L6",
        "L14",
        "L5"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "L6",
        "L16",
        "L19"
       ]
      },
      {
       "weight": 55,
       "atoms": [
        "L6",
        "L20",
        "L5"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L6",
        "L22",
        "L3"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L6",
        "L3",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L6",
        "L5",
        "L17"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "L6",
        "L5",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L6",
        "L19",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L6",
        "L23",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L6",
        "L23",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L6",
        "AREA_HI_ADE",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L6",
        "overlap_bf",
        "overlap_eh"
       ]
      },
      {
       "weight": 44,
       "atoms": [
        "L8",
        "L22",
        "L19"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L8",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L10",
        "L14",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L10",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L10",
        "L22",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L10",
        "L5",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L10",
        "L9",
        "L13"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L10",
        "L17",
        "L19"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L10",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L12",
        "L20",
        "L11"
       ]
      },
      {
       "weight": 89,
       "atoms": [
        "L12",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L12",
        "L9",
        "overlap_eh"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "L12",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L12",
        "AREA_HI_ADE",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L12",
        "AREA_HI_BCF",
        "overlap_eh"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L14",
        "L22",
        "L19"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L14",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L14",
        "L17",
        "L19"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L16",
        "L5",
        "L25"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L16",
        "L11",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L16",
        "L19",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "L18",
        "L9",
        "overlap_eh"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L18",
        "L11",
        "overlap_eh"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L18",
        "AREA_HI_ADE",
        "overlap_eh"
       ]
      },
      {
       "weight": 42,
       "atoms": [
        "L20",
        "L5",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "L20",
        "L9",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 69,
       "atoms": [
        "L20",
        "L11",
        "overlap_eh"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "L20",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "L22",
        "L7",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L22",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "L22",
        "L9",
        "L13"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "L22",
        "L9",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L22",
        "L13",
        "overlap_eh"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L22",
        "L15",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L22",
        "L15",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L22",
        "L15",
        "overlap_eh"
       ]
      },
      {
       "weight": 91,
       "atoms": [
        "L22",
        "L17",
        "L19"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "L22",
        "L19",
        "span_DE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L22",
        "L19",
        "QUAD_1263"
       ]
      },
      {
       "weight": 75,
       "atoms": [
        "L22",
        "L21",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L22",
        "L21",
        "span_AH_hi"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "L22",
        "AREA_HI_ADE",
        "Gsum"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "L22",
        "AREA_LO_BCF",
        "overlap_eh"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L22",
        "overlap_bf",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L22",
        "overlap_eh",
        "Gsum"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L24",
        "L5",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L1",
        "L19",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L3",
        "AREA_HI_ADE",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L3",
        "overlap_eh",
        "overlap_eh"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L5",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L5",
        "L9",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "L5",
        "L9",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L5",
        "L13",
        "L25"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L5",
        "L13",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L5",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L5",
        "L15",
        "L25"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L5",
        "L17",
        "L19"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "L5",
        "L21",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L5",
        "AREA_HI_ADE",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L7",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "L7",
        "L9",
        "L13"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L9",
        "L9",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L9",
        "L11",
        "L21"
       ]
      },
      {
       "weight": 40,
       "atoms": [
        "L9",
        "L11",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L9",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L9",
        "L13",
        "L25"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L9",
        "L13",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L9",
        "L13",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L9",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "L11",
        "AREA_LO_BCF",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L13",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "L13",
        "L25",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L15",
        "L19",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 55,
       "atoms": [
        "L15",
        "L19",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L19",
        "L25",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "L19",
        "L25",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L19",
        "AREA_LO_ADE",
        "Gsum"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L19",
        "AREA_HI_ADE",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L19",
        "AREA_HI_ADH",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 55,
       "atoms": [
        "L19",
        "AREA_LO_BCF",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_HI_ADE",
        "AREA_LO_AEH",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_HI_ADE",
        "AREA_HI_BCF",
        "overlap_eh"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_ABH",
        "L14"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_ABH",
        "L18"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_ABH",
        "L13"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_ABH",
        "span_DE"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ABH",
        "span_BC"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ABH",
        "span_AH_hi"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ABH",
        "span_DE_hi"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_BCD",
        "L12"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_BCD",
        "L21"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_BCD",
        "span_DE"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "AREA_LO_BCD",
        "span_BC"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "AREA_LO_EFH",
        "L18"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EFH",
        "L24"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "AREA_LO_EFH",
        "L23"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_EFH",
        "span_DE"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_EFH",
        "span_BC"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_CGH",
        "L20"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CGH",
        "L24"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_CGH",
        "L9"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CGH",
        "L19"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_CGH",
        "L23"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_CDO",
        "L8"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_CDO",
        "L14"
       ]
      },
      {
       "weight": 52,
       "atoms": [
        "AREA_LO_CDO",
        "L22"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CDO",
        "L13"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CDO",
        "span_AH"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "AREA_LO_CDO",
        "span_DE"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_CDO",
        "span_BC"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDO",
        "Gsum"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EFO",
        "L14"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EFO",
        "L13"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EFO",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 62,
       "atoms": [
        "AREA_LO_EFO",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CEO",
        "L4"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "AREA_LO_CEO",
        "L14"
       ]
      },
      {
       "weight": 43,
       "atoms": [
        "AREA_LO_CEO",
        "L7"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "AREA_LO_CEO",
        "L17"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "AREA_LO_CEO",
        "span_DE"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "AREA_LO_CEO",
        "span_BC"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CEO",
        "span_AH_hi"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CEO",
        "overlap_bf"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_FHP",
        "L19"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_HOP",
        "L3"
       ]
      },
      {
       "weight": 38,
       "atoms": [
        "AREA_LO_HOP",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_HOP",
        "span_DE"
       ]
      },
      {
       "weight": 89,
       "atoms": [
        "AREA_LO_HOP",
        "span_BC"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_HOP",
        "overlap_bf"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_AGO",
        "L2"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_AGO",
        "L4"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_AGO",
        "L8"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_AGO",
        "L14"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_AGO",
        "L23"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_AGO",
        "span_DE"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_AGO",
        "span_BC_hi"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_AGO",
        "span_AH_hi"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_CEG",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CGP",
        "L9"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "AREA_LO_GHP",
        "L19"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_BEP",
        "Gsum"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_EGO"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EGO",
        "L14"
       ]
      },
      {
       "weight": 90,
       "atoms": [
        "AREA_LO_EGO",
        "L22"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "AREA_LO_EGO",
        "L5"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EGO",
        "span_AH"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "AREA_LO_EGO",
        "span_DE"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "AREA_LO_EGO",
        "span_BC"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EGO",
        "overlap_bf"
       ]
      },
      {
       "weight": 44,
       "atoms": [
        "AREA_LO_BEG",
        "L18"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "AREA_LO_BEG",
        "L20"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BEG",
        "L22"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_BEG",
        "L24"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_BEG",
        "L7"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_BEG",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_BGP",
        "L8"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_BGP",
        "L18"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BGP",
        "L15"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_BGP",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 49,
       "atoms": [
        "AREA_LO_BGP",
        "span_DE"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_BGP",
        "span_BC"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_BEO",
        "L12"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_FGP",
        "L8"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_FGP",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_AEP",
        "L20"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_AEP",
        "Gsum"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_DHO",
        "L23"
       ]
      },
      {
       "weight": 36,
       "atoms": [
        "AREA_LO_DHP",
        "L4"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_DHP",
        "L14"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_DHP",
        "L16"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "AREA_LO_DHP",
        "L18"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_DHP",
        "L13"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_DHP",
        "L21"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_DHP",
        "span_DE"
       ]
      },
      {
       "weight": 66,
       "atoms": [
        "AREA_LO_DHP",
        "span_BC"
       ]
      }
     ],
     "sum": {
      "0,0": "11429276157629379/1000000000000000000",
      "0": "3551286349707191643681/69757000000000000000000",
      "0,4": "732287069515617/250000000000000000",
      "0,3": "-732287069515617/250000000000000000",
      "0,6": "-7569555907738671/316000000000000000",
      "1,3": "-15729071780463569/1137500000000000000",
      "1,6": "-3637943514117/400000000000000",
      "1,7": "1961321086082156799/279028000000000000000",
      "1,8": "239903590014847/20000000000000000",
      "1,4,8": "-96077484537397/25000000000000000",
      "1,3,8": "96077484537397/25000000000000000",
      "1,11": "-3626861816022401/100000000000000000",
      "1,4,11": "68444851597001/25000000000000000",
      "1": "6486440708506588585151/317394350000000000000000",
      "1,4": "12489437941802652589/1004412500000000000000",
      "1,1": "40939154517943/10000000000000000",
      "0,1": "-144960176240968011/7900000000000000000",
      "1,9": "6834471289494849/7900000000000000000",
      "0,1,9": "-564408145440909/100000000000000000",
      "1,7,9": "10943053432179/4000000000000000",
      "1,12": "1359778542310089/220750000000000000",
      "1,4,12": "1746324525143/625000000000000",
      "1,3,12": "-1746324525143/625000000000000",
      "1,2": "-318442881463817/50000000000000000",
      "1,3,4": "10175053328803/6250000000000000",
      "1,4,7": "3127869008473/1000000000000000",
      "1,3,3": "-10175053328803/6250000000000000",
      "2,2": "455005973379339/200000000000000000",
      "2": "-2484652538969712688663/69757000000000000000000",
      "2,12": "256450579430117/12500000000000000",
      "2,9": "38985702309537/25000000000000000",
      "3,5": "616431852135223/125000000000000000",
      "3,5,7": "-43284298194661/1250000000000000",
      "3,7": "-12591737953593/10000000000000000",
      "3,8": "-641146202996679/125000000000000000",
      "3,10": "-94404545353269/31250000000000000",
      "2,3,10": "-44464412466501/31250000000000000",
      "3,11": "-65624938674693034043/220750000000000000000",
      "1,3,11": "-68444851597001/25000000000000000",
      "3": "11430641091758067/55187500000000000000",
      "2,3": "2335138194483439333/220750000000000000000",
      "1,2,3": "-81350307508789/25000000000000000",
      "3,4": "39528831218271/31250000000000000",
      "3,3": "-1608538188959/7812500000000000",
      "3,9": "-568703265506797047/220750000000000000000",
      "2,3,3": "-101745627546349/1953125000000000",
      "4,11": "-632054588898612731/220750000000000000000",
      "4,10,11": "37410554499609/31250000000000000",
      "5,7": "194848865205837/5000000000000000",
      "5,7,9": "151432936173303/40000000000000000",
      "5,11": "-9878042087501559/1000000000000000000",
      "5": "262988138398753/100000000000000000",
      "5,10": "-250914493295157/125000000000000000",
      "2,5": "7237582455218759/1000000000000000000",
      "5,6": "-47114387291367/4000000000000000",
      "4,5": "-426745667542987/31250000000000000",
      "5,9": "-1801307119137669/500000000000000000",
      "5,8": "-8274029312677551/500000000000000000",
      "4,5,9": "-492615962217933/250000000000000000",
      "6,10": "30602105108487/4937500000000000",
      "6,11": "-18643526603823/1000000000000000",
      "6": "3616939564768563/158000000000000000",
      "6,7": "1277829905187/160000000000000",
      "4,6": "-2200892669679/500000000000000",
      "6,9": "37529070579/7812500000000",
      "2,6": "-287028806361/4000000000000000",
      "3,6": "1253617001571/200000000000000",
      "1,3,6": "-733482449667/100000000000000",
      "7,11": "-551018397649952103/35320000000000000000",
      "7,9,11": "-92065977311313/40000000000000000",
      "7": "1963796700508037/1580000000000000000",
      "2,7": "-138136979948661/8000000000000000",
      "4,7": "-1508052771/10000000000000000",
      "7,9": "286922323613817/40000000000000000",
      "7,8": "-73791814490659/5000000000000000",
      "8": "21526313264898939/3160000000000000000",
      "8,12": "78365087284923/6250000000000000",
      "2,8": "-200770739895607/25000000000000000",
      "4,8": "39584932424981/250000000000000000",
      "8,9": "-243604978452085119/19750000000000000000",
      "9": "388236973636374948303/69757000000000000000000",
      "4,9": "40372153618058367723/17439250000000000000000",
      "4,7,9": "13686584265339/10000000000000000",
      "3,7,9": "-13686584265339/10000000000000000",
      "10": "45633611922813776337/4359812500000000000000",
      "4,10": "51846523043091/15625000000000000",
      "2,10": "-21720722798868681591/8719625000000000000000",
      "1,10": "-79191304801191/12500000000000000",
      "7,10": "-11794002733791/5000000000000000",
      "11": "261133501825251935757/317394350000000000000000",
      "2,11": "1185583446621327/250000000000000000",
      "6,7,11": "-632325917553/160000000000000",
      "4,7,11": "-26315353292531/10000000000000000",
      "3,7,11": "26315353292531/10000000000000000",
      "2,7,11": "210393205162853/40000000000000000",
      "1,7,11": "-21040334942891/4000000000000000",
      "9,11": "-918065544495379023/91000000000000000000",
      "8,11": "931572087461679/250000000000000000",
      "3,9,11": "-299493433508043/5000000000000000",
      "0,11": "-4314425098850690943/441500000000000000000",
      "10,11": "-3483363756635307/9875000000000000000",
      "1,10,11": "-1704953132655993/12500000000000000",
      "3,6,11": "-47310436607709/1000000000000000",
      "3,8,11": "-808318040880359/250000000000000000",
      "7,8,11": "248481542784869/40000000000000000",
      "12": "-68029066394518929/883000000000000000",
      "7,12": "-35343875731/20000000000000",
      "4,12": "-46392434295387/3125000000000000",
      "": "-40913800571206921989117/17439250000000000000000",
      "4": "-19462412595559252217/4359812500000000000000",
      "0,9": "-81787357252145727/79000000000000000000",
      "2,4": "-14720788540366199/1234375000000000000",
      "7,7": "975947256563/160000000000000",
      "4,4": "1907243349091/12500000000000000",
      "2,4,4": "-101745627546349/62500000000000000",
      "6,12": "-31378812993/6250000000000",
      "0,2": "12458860597027131/1000000000000000000",
      "2,4,5": "1125747580509073/250000000000000000",
      "9,12": "-62761908984153/25000000000000000",
      "3,12": "4841567105037/390625000000000",
      "3,6,12": "-682270571697/25000000000000",
      "1,9,12": "-6109630082589/2500000000000000",
      "0,1,6": "-3876458045229/200000000000000",
      "0,0,1": "-2557819688463963/25000000000000000",
      "5,12": "-4845229294673/390625000000000",
      "5,7,12": "7428799540241/1000000000000000",
      "4,5,12": "-24166111587851/6250000000000000",
      "8,10": "-14613584887623/6250000000000000",
      "6,7,12": "-16133372079/4000000000000",
      "0,10": "27921985170093/2500000000000000",
      "3,10,11": "-635979426493353/31250000000000000",
      "1,6,10": "-320543171883/50000000000000",
      "1,8,9": "336133336809831/100000000000000000",
      "4,6,10": "133635496401/125000000000000",
      "3,6,10": "-4944513366837/125000000000000",
      "0,0,6": "-76870244025729/4000000000000000",
      "0,8": "-603301518837843/20000000000000000",
      "1,8,10": "-1553531814160161/12500000000000000",
      "1,1,8": "-76818366550717/10000000000000000",
      "0,8,11": "-12815893444063899/1000000000000000000"
     },
     "upper": "-12217371711550524521271909/6347887000000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CA6ppmmp",
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "EGO+",
    "BGP+",
    "FGP-",
    "ADG-",
    "DHO+"
   ],
   "stages": [
    "other_CA_C_6:0",
    "other_CA_C_6:1",
    "other_CA_C_6:2",
    "other_CA_C_6:3",
    "other_CA_C_6:4",
    "other_CA_C_6:5",
    "Ccap_CA6:0",
    "Ccap_CA6p:0",
    "Ccap_CA6p:1",
    "Ccap_CA6p:2",
    "Ccap_CA6p:3",
    "Ccap_CA6pp:0",
    "Ccap_CA6pp:1",
    "Ccap_CA6pp:2",
    "Ccap_CA6pp:3",
    "Ccap_CA6ppm:0",
    "Ccap_CA6ppm:1",
    "Ccap_CA6ppm:2",
    "Ccap_CA6ppm:3",
    "Ccap_CA6ppmm:0",
    "Ccap_CA6ppmm:1",
    "Ccap_CA6ppmm:2",
    "Ccap_CA6ppmm:3"
   ],
   "terminal": {
    "kind": "geometry",
    "stage": 22,
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
      "EOP": -1,
      "FOP": -1,
      "AGO": 1,
      "AGP": 1,
      "DGP": -1,
      "ACO": 1,
      "ACP": 1,
      "CEG": 1,
      "CFG": 1,
      "CGO": -1,
      "CGP": -1,
      "EHO": 1,
      "DFG": 1,
      "DGH": -1,
      "EGH": -1,
      "BHO": -1,
      "BHP": -1,
      "GHO": -1,
      "GHP": -1,
      "ADO": 1,
      "ADP": 1,
      "BEP": 1,
      "DFP": 1,
      "BDP": 1,
      "BDO": 1,
      "BOP": 1,
      "EGO": 1,
      "AEG": -1,
      "AFG": -1,
      "FGO": 1,
      "AEO": -1,
      "AFO": -1,
      "BEG": 1,
      "BDG": 1,
      "BGO": -1,
      "AOP": 1,
      "EGP": -1,
      "GOP": 1,
      "BGP": 1,
      "BEO": -1,
      "BFO": -1,
      "FGP": -1,
      "CFP": 1,
      "ADG": -1,
      "DHO": 1,
      "DFO": 1,
      "DHP": 1
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
        "ECHOP"
       ],
       "target": "EHO",
       "sign": 1,
       "deps": [
        "CEH",
        "EOP",
        "CEO",
        "EHP",
        "CEP"
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
       "target": "BEP",
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
        "DEF",
        "OP",
        "FDE",
        [
         "fixed",
         "DEF"
        ]
       ],
       "target": "DFP",
       "sign": 1,
       "deps": [
        "DEO",
        "EFO",
        "DEP",
        "EFP",
        "FOP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "BADEP"
       ],
       "target": "BDP",
       "sign": 1,
       "deps": [
        "ABD",
        "BEP",
        "ABE",
        "ABP",
        "BDE"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "DABCO"
       ],
       "target": "BDO",
       "sign": 1,
       "deps": [
        "ABD",
        "CDO",
        "ACD",
        "ADO",
        "BCD"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "PBCEO"
       ],
       "target": "BOP",
       "sign": 1,
       "deps": [
        "BCP",
        "EOP",
        "BEP",
        "COP",
        "CEP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "GACEO"
       ],
       "target": "AEG",
       "sign": -1,
       "deps": [
        "ACG",
        "EGO",
        "CGO",
        "AGO",
        "CEG"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "GAEFH"
       ],
       "target": "AFG",
       "sign": -1,
       "deps": [
        "AEG",
        "FGH",
        "EGH",
        "AGH",
        "EFG"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "GAEFO"
       ],
       "target": "FGO",
       "sign": 1,
       "deps": [
        "AEG",
        "AFG",
        "EGO",
        "AGO",
        "EFG"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "OACEG"
       ],
       "target": "AEO",
       "sign": -1,
       "deps": [
        "ACO",
        "EGO",
        "CGO",
        "AGO",
        "CEO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "OAEFH"
       ],
       "target": "AFO",
       "sign": -1,
       "deps": [
        "AEO",
        "FHO",
        "EHO",
        "AHO",
        "EFO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "ray",
        "BCE",
        "GO",
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
        "BCO",
        "CEO",
        "EGO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "BADEG"
       ],
       "target": "BDG",
       "sign": 1,
       "deps": [
        "ABD",
        "BEG",
        "ABE",
        "ABG",
        "BDE"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "GABEO"
       ],
       "target": "BGO",
       "sign": -1,
       "deps": [
        "ABG",
        "EGO",
        "AEG",
        "AGO",
        "BEG"
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
         "313024595396821/453500000000000"
        ]
       ],
       "target": "AOP",
       "sign": 1,
       "deps": [
        "ABP",
        "BOP"
       ],
       "area_stage": 7
      },
      {
       "rule": [
        "cap",
        "CEG",
        [
         "O"
        ],
        "P",
        [
         "area",
         "CEG",
         "T0108",
         "651037/1000000"
        ]
       ],
       "target": "EGP",
       "sign": -1,
       "deps": [
        "CEP",
        "CGP"
       ],
       "area_stage": 7
      },
      {
       "rule": [
        "plu",
        "GAEOP"
       ],
       "target": "GOP",
       "sign": 1,
       "deps": [
        "AEG",
        "AGO",
        "EGP",
        "AGP",
        "EGO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "cap",
        "BEP",
        [
         "G"
        ],
        "O",
        [
         "area",
         "BEP",
         "T0176",
         "33919/50000"
        ]
       ],
       "target": "BEO",
       "sign": -1,
       "deps": [
        "EOP",
        "BOP"
       ],
       "area_stage": 11
      },
      {
       "rule": [
        "plu",
        "BAEFO"
       ],
       "target": "BFO",
       "sign": -1,
       "deps": [
        "ABE",
        "ABF",
        "BEO",
        "ABO",
        "BEF"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "FCDGP"
       ],
       "target": "CFP",
       "sign": 1,
       "deps": [
        "CDF",
        "FGP",
        "CFG",
        "DFP",
        "DFG"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "DAFHO"
       ],
       "target": "DFO",
       "sign": 1,
       "deps": [
        "ADF",
        "DHO",
        "ADH",
        "ADO",
        "DFH"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "HADOP"
       ],
       "target": "DHP",
       "sign": 1,
       "deps": [
        "ADH",
        "HOP",
        "AHO",
        "AHP",
        "DHO"
       ],
       "area_stage": null
      }
     ],
     "contradiction": {
      "kind": "nomesh",
      "outer": "BDH",
      "points": "GOP"
     },
     "mesh_table": [
      {
       "order": "GOP",
       "opposite": "BPO"
      },
      {
       "order": "GPO",
       "opposite": "DGO"
      },
      {
       "order": "OGP",
       "opposite": "BPG"
      },
      {
       "order": "OPG",
       "opposite": "BGO"
      },
      {
       "order": "PGO",
       "opposite": "BPG"
      },
      {
       "order": "POG",
       "opposite": "BGO"
      }
     ]
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CA6ppmmmp",
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "EGO+",
    "BGP+",
    "FGP-",
    "ADG-",
    "DHO-",
    "DFO+"
   ],
   "stages": [
    "other_CA_C_6:0",
    "other_CA_C_6:1",
    "other_CA_C_6:2",
    "other_CA_C_6:3",
    "other_CA_C_6:4",
    "other_CA_C_6:5",
    "Ccap_CA6:0",
    "Ccap_CA6p:0",
    "Ccap_CA6p:1",
    "Ccap_CA6p:2",
    "Ccap_CA6p:3",
    "Ccap_CA6pp:0",
    "Ccap_CA6pp:1",
    "Ccap_CA6pp:2",
    "Ccap_CA6pp:3",
    "Ccap_CA6ppm:0",
    "Ccap_CA6ppm:1",
    "Ccap_CA6ppm:2",
    "Ccap_CA6ppm:3",
    "Ccap_CA6ppmm:0",
    "Ccap_CA6ppmm:1",
    "Ccap_CA6ppmm:2",
    "Ccap_CA6ppmm:3",
    "Ccap_CA6ppmmm:0",
    "Ccap_CA6ppmmm:1",
    "Ccap_CA6ppmmm:2",
    "Ccap_CA6ppmmm:3",
    "Ccap_CA6ppmmmp:0",
    "Ccap_CA6ppmmmp:1",
    "Ccap_CA6ppmmmp:2",
    "Ccap_CA6ppmmmp:3"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 30,
    "sum": {
     "factors": [
      {
       "weight": 18,
       "atoms": [
        "L15",
        "L15"
       ]
      },
      {
       "weight": 257,
       "atoms": [
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 69,
       "atoms": [
        "L0",
        "L2",
        "L7"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L0",
        "L2",
        "L21"
       ]
      },
      {
       "weight": 61,
       "atoms": [
        "L0",
        "L8",
        "overlap_fc"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L0",
        "L22",
        "overlap_fc"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L0",
        "L19",
        "overlap_fc"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L0",
        "span_BC_hi",
        "overlap_fc"
       ]
      },
      {
       "weight": 169,
       "atoms": [
        "L2",
        "L2",
        "L21"
       ]
      },
      {
       "weight": 240,
       "atoms": [
        "L2",
        "L6",
        "L9"
       ]
      },
      {
       "weight": 246,
       "atoms": [
        "L2",
        "L12",
        "L21"
       ]
      },
      {
       "weight": 159,
       "atoms": [
        "L2",
        "L18",
        "L21"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L2",
        "L22",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L2",
        "L24",
        "L9"
       ]
      },
      {
       "weight": 193,
       "atoms": [
        "L2",
        "L3",
        "L9"
       ]
      },
      {
       "weight": 440,
       "atoms": [
        "L2",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L2",
        "L7",
        "overlap_fc"
       ]
      },
      {
       "weight": 138,
       "atoms": [
        "L2",
        "L7",
        "Gsum"
       ]
      },
      {
       "weight": 233,
       "atoms": [
        "L2",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L2",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 87,
       "atoms": [
        "L2",
        "L9",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 86,
       "atoms": [
        "L2",
        "L17",
        "L21"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L2",
        "L17",
        "L25"
       ]
      },
      {
       "weight": 179,
       "atoms": [
        "L2",
        "L17",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L2",
        "L21",
        "L25"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "L2",
        "L25",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L4",
        "L20",
        "overlap_fc"
       ]
      },
      {
       "weight": 65,
       "atoms": [
        "L4",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L4",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L6",
        "L18",
        "L19"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L6",
        "L1",
        "L5"
       ]
      },
      {
       "weight": 69,
       "atoms": [
        "L6",
        "L3",
        "L15"
       ]
      },
      {
       "weight": 141,
       "atoms": [
        "L6",
        "L5",
        "L17"
       ]
      },
      {
       "weight": 158,
       "atoms": [
        "L6",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "L6",
        "L17",
        "L19"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L8",
        "L1",
        "L5"
       ]
      },
      {
       "weight": 90,
       "atoms": [
        "L12",
        "L14",
        "overlap_fc"
       ]
      },
      {
       "weight": 283,
       "atoms": [
        "L12",
        "L20",
        "overlap_fc"
       ]
      },
      {
       "weight": 596,
       "atoms": [
        "L12",
        "L1",
        "L5"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L12",
        "L1",
        "L15"
       ]
      },
      {
       "weight": 148,
       "atoms": [
        "L12",
        "L7",
        "L9"
       ]
      },
      {
       "weight": 462,
       "atoms": [
        "L12",
        "L7",
        "overlap_fc"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L12",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L12",
        "L9",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 79,
       "atoms": [
        "L12",
        "L9",
        "QUAD_1198"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L12",
        "L15",
        "L15"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L12",
        "L25",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 44,
       "atoms": [
        "L12",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 140,
       "atoms": [
        "L14",
        "L7",
        "overlap_fc"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L14",
        "L25",
        "overlap_fc"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L14",
        "span_DE",
        "overlap_fc"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L16",
        "L1",
        "L5"
       ]
      },
      {
       "weight": 123,
       "atoms": [
        "L16",
        "L5",
        "L5"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "L16",
        "L5",
        "QUAD_1198"
       ]
      },
      {
       "weight": 59,
       "atoms": [
        "L16",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L16",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 51,
       "atoms": [
        "L18",
        "L1",
        "L9"
       ]
      },
      {
       "weight": 229,
       "atoms": [
        "L18",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 51,
       "atoms": [
        "L18",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L18",
        "L9",
        "L25"
       ]
      },
      {
       "weight": 48,
       "atoms": [
        "L18",
        "L15",
        "L15"
       ]
      },
      {
       "weight": 143,
       "atoms": [
        "L18",
        "L15",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 36,
       "atoms": [
        "L18",
        "L17",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 183,
       "atoms": [
        "L18",
        "L19",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L20",
        "L22",
        "overlap_fc"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L20",
        "L24",
        "overlap_fc"
       ]
      },
      {
       "weight": 62,
       "atoms": [
        "L20",
        "L1",
        "L11"
       ]
      },
      {
       "weight": 76,
       "atoms": [
        "L20",
        "L3",
        "L15"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L20",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L20",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L20",
        "L17",
        "overlap_fc"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L20",
        "AREA_LO_AEH",
        "overlap_fc"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L20",
        "span_DE_hi",
        "overlap_fc"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L20",
        "overlap_fc",
        "overlap_ae"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L22",
        "L7",
        "overlap_fc"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L22",
        "L9",
        "L13"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L22",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L22",
        "L9",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L22",
        "L9",
        "Gsum"
       ]
      },
      {
       "weight": 55,
       "atoms": [
        "L22",
        "span_DE",
        "overlap_fc"
       ]
      },
      {
       "weight": 68,
       "atoms": [
        "L22",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L24",
        "L5",
        "Gsum"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L24",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 126,
       "atoms": [
        "L1",
        "L3",
        "L5"
       ]
      },
      {
       "weight": 312,
       "atoms": [
        "L1",
        "L5",
        "L5"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "L1",
        "L5",
        "L11"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "L1",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 422,
       "atoms": [
        "L1",
        "L5",
        "L19"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L1",
        "L5",
        "overlap_ae"
       ]
      },
      {
       "weight": 69,
       "atoms": [
        "L3",
        "L3",
        "L15"
       ]
      },
      {
       "weight": 169,
       "atoms": [
        "L3",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 163,
       "atoms": [
        "L3",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 56,
       "atoms": [
        "L3",
        "L15",
        "L15"
       ]
      },
      {
       "weight": 50,
       "atoms": [
        "L3",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L3",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L3",
        "L15",
        "L25"
       ]
      },
      {
       "weight": 36,
       "atoms": [
        "L3",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L5",
        "L7",
        "L9"
       ]
      },
      {
       "weight": 145,
       "atoms": [
        "L5",
        "L15",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 76,
       "atoms": [
        "L5",
        "L15",
        "Gsum"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L7",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L7",
        "L17",
        "overlap_fc"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L7",
        "L19",
        "overlap_fc"
       ]
      },
      {
       "weight": 84,
       "atoms": [
        "L9",
        "L11",
        "L13"
       ]
      },
      {
       "weight": 135,
       "atoms": [
        "L9",
        "L11",
        "L15"
       ]
      },
      {
       "weight": 291,
       "atoms": [
        "L9",
        "L13",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L9",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L9",
        "L15",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L9",
        "L19",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L9",
        "L19",
        "Gsum"
       ]
      },
      {
       "weight": 104,
       "atoms": [
        "L9",
        "AREA_HI_ADE",
        "overlap_fc"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L9",
        "AREA_HI_ADH",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L9",
        "AREA_LO_AEH",
        "overlap_fc"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "L9",
        "span_BC",
        "overlap_fc"
       ]
      },
      {
       "weight": 229,
       "atoms": [
        "L13",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "L13",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 134,
       "atoms": [
        "L13",
        "L15",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L15",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L15",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 142,
       "atoms": [
        "L15",
        "L19",
        "L19"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L15",
        "L19",
        "L23"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L15",
        "L19",
        "QUAD_1198"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L15",
        "L23",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 112,
       "atoms": [
        "L17",
        "AREA_LO_DEH",
        "overlap_fc"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L17",
        "span_BC_hi",
        "overlap_fc"
       ]
      },
      {
       "weight": 49,
       "atoms": [
        "L19",
        "AREA_HI_ADE",
        "Gsum"
       ]
      },
      {
       "weight": 387,
       "atoms": [
        "L19",
        "span_DE",
        "overlap_fc"
       ]
      },
      {
       "weight": 36,
       "atoms": [
        "L19",
        "span_AH_hi",
        "overlap_fc"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L25",
        "AREA_LO_DEH",
        "overlap_fc"
       ]
      },
      {
       "weight": 80,
       "atoms": [
        "L25",
        "span_DE",
        "overlap_fc"
       ]
      },
      {
       "weight": 104,
       "atoms": [
        "span_DE",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 44,
       "atoms": [
        "span_BC",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_ABH",
        "L12"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_ABH",
        "L24"
       ]
      },
      {
       "weight": 99,
       "atoms": [
        "AREA_LO_ABH",
        "L17"
       ]
      },
      {
       "weight": 69,
       "atoms": [
        "AREA_LO_ABH",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 83,
       "atoms": [
        "AREA_LO_ACD",
        "L13"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "AREA_LO_ACD",
        "L15"
       ]
      },
      {
       "weight": 93,
       "atoms": [
        "AREA_LO_CDE",
        "L15"
       ]
      },
      {
       "weight": 112,
       "atoms": [
        "AREA_LO_EFH",
        "L12"
       ]
      },
      {
       "weight": 1000,
       "atoms": [
        "AREA_LO_EFH",
        "L18"
       ]
      },
      {
       "weight": 68,
       "atoms": [
        "AREA_LO_EFH",
        "L22"
       ]
      },
      {
       "weight": 144,
       "atoms": [
        "AREA_LO_EFH",
        "L3"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_EFH",
        "L7"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_EFH",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EFH",
        "L25"
       ]
      },
      {
       "weight": 48,
       "atoms": [
        "AREA_LO_CDG",
        "L15"
       ]
      },
      {
       "weight": 264,
       "atoms": [
        "AREA_LO_CGH",
        "L6"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CGH",
        "L24"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "AREA_LO_CGH",
        "L3"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_CGH",
        "L21"
       ]
      },
      {
       "weight": 59,
       "atoms": [
        "AREA_LO_CGH",
        "L23"
       ]
      },
      {
       "weight": 103,
       "atoms": [
        "AREA_LO_CGH",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 127,
       "atoms": [
        "AREA_LO_CGH",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CDO",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_DEO",
        "L2"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "AREA_LO_EFO"
       ]
      },
      {
       "weight": 112,
       "atoms": [
        "AREA_LO_EFO",
        "L16"
       ]
      },
      {
       "weight": 94,
       "atoms": [
        "AREA_LO_EFO",
        "L24"
       ]
      },
      {
       "weight": 176,
       "atoms": [
        "AREA_LO_EFO",
        "L13"
       ]
      },
      {
       "weight": 314,
       "atoms": [
        "AREA_LO_EFO",
        "L15"
       ]
      },
      {
       "weight": 461,
       "atoms": [
        "AREA_LO_EFO",
        "L19"
       ]
      },
      {
       "weight": 68,
       "atoms": [
        "AREA_LO_EFO",
        "L23"
       ]
      },
      {
       "weight": 68,
       "atoms": [
        "AREA_LO_EFO",
        "span_AH"
       ]
      },
      {
       "weight": 77,
       "atoms": [
        "AREA_LO_EFO",
        "span_BC"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_EFO",
        "span_DE_hi"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_EFO",
        "overlap_ae"
       ]
      },
      {
       "weight": 44,
       "atoms": [
        "AREA_LO_CHO",
        "overlap_fc"
       ]
      },
      {
       "weight": 140,
       "atoms": [
        "AREA_LO_CEO",
        "L2"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_CHP",
        "L0"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_CHP",
        "L2"
       ]
      },
      {
       "weight": 272,
       "atoms": [
        "AREA_LO_CHP",
        "L4"
       ]
      },
      {
       "weight": 89,
       "atoms": [
        "AREA_LO_CHP",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_HOP",
        "L12"
       ]
      },
      {
       "weight": 357,
       "atoms": [
        "AREA_LO_HOP",
        "L18"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_HOP",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 808,
       "atoms": [
        "AREA_LO_ACG"
       ]
      },
      {
       "weight": 109,
       "atoms": [
        "AREA_LO_ACG",
        "L8"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ACG",
        "L14"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_ACG",
        "L24"
       ]
      },
      {
       "weight": 107,
       "atoms": [
        "AREA_LO_ACG",
        "L3"
       ]
      },
      {
       "weight": 278,
       "atoms": [
        "AREA_LO_ACG",
        "L19"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_ACG",
        "L21"
       ]
      },
      {
       "weight": 68,
       "atoms": [
        "AREA_LO_ACG",
        "L23"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_ACG",
        "span_DE_hi"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_ACG",
        "overlap_bf"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_ACG",
        "overlap_ae"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_HI_EOP",
        "overlap_fc"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "AREA_LO_ACO",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CGP",
        "L0"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CGP",
        "L18"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CGP",
        "L21"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_CGP",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 69,
       "atoms": [
        "AREA_LO_BHO",
        "L3"
       ]
      },
      {
       "weight": 560,
       "atoms": [
        "AREA_LO_BHO",
        "L5"
       ]
      },
      {
       "weight": 62,
       "atoms": [
        "AREA_LO_BHO",
        "L11"
       ]
      },
      {
       "weight": 58,
       "atoms": [
        "AREA_LO_BHO",
        "L15"
       ]
      },
      {
       "weight": 119,
       "atoms": [
        "AREA_LO_BHO",
        "L19"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_GHP",
        "L2"
       ]
      },
      {
       "weight": 83,
       "atoms": [
        "AREA_LO_GHP",
        "L20"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "AREA_LO_GHP",
        "L7"
       ]
      },
      {
       "weight": 57,
       "atoms": [
        "AREA_LO_GHP",
        "L9"
       ]
      },
      {
       "weight": 52,
       "atoms": [
        "AREA_LO_GHP",
        "L19"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_GHP",
        "overlap_eh"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "AREA_LO_EGO",
        "L0"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "AREA_LO_EGO",
        "L14"
       ]
      },
      {
       "weight": 53,
       "atoms": [
        "AREA_LO_EGO",
        "L22"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_EGO",
        "L25"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_EGO",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 246,
       "atoms": [
        "AREA_LO_EGO",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 251,
       "atoms": [
        "AREA_LO_BEG",
        "L6"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_BEG",
        "L20"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_BEG",
        "L24"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_BEG",
        "L5"
       ]
      },
      {
       "weight": 242,
       "atoms": [
        "AREA_LO_BEG",
        "L19"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_BEG",
        "L23"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "AREA_LO_BEG",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 79,
       "atoms": [
        "AREA_LO_BEG",
        "span_AH_hi"
       ]
      },
      {
       "weight": 90,
       "atoms": [
        "AREA_LO_BEG",
        "span_DE_hi"
       ]
      },
      {
       "weight": 108,
       "atoms": [
        "AREA_LO_BGO",
        "L4"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_BGO",
        "L9"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_BGO",
        "L15"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_BGO",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 139,
       "atoms": [
        "AREA_LO_AOP",
        "L5"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_AOP",
        "L13"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_AOP",
        "L15"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_AOP",
        "Gsum"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_HI_AOP",
        "overlap_fc"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_BGP",
        "L6"
       ]
      },
      {
       "weight": 87,
       "atoms": [
        "AREA_LO_BGP",
        "L8"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_BGP",
        "L18"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BGP",
        "L15"
       ]
      },
      {
       "weight": 75,
       "atoms": [
        "AREA_LO_BGP",
        "L21"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_BGP",
        "span_DE_hi"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_BGP",
        "overlap_ae"
       ]
      },
      {
       "weight": 238,
       "atoms": [
        "AREA_LO_BEO",
        "L2"
       ]
      },
      {
       "weight": 616,
       "atoms": [
        "AREA_LO_BEO",
        "L4"
       ]
      },
      {
       "weight": 115,
       "atoms": [
        "AREA_LO_BEO",
        "L10"
       ]
      },
      {
       "weight": 278,
       "atoms": [
        "AREA_LO_BEO",
        "L18"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_BEO",
        "L22"
       ]
      },
      {
       "weight": 82,
       "atoms": [
        "AREA_LO_BEO",
        "L25"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_BEO",
        "overlap_eh"
       ]
      },
      {
       "weight": 517,
       "atoms": [
        "AREA_LO_ADG"
       ]
      },
      {
       "weight": 476,
       "atoms": [
        "AREA_LO_ADG",
        "L4"
       ]
      },
      {
       "weight": 80,
       "atoms": [
        "AREA_LO_ADG",
        "L8"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_ADG",
        "L10"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ADG",
        "L20"
       ]
      },
      {
       "weight": 262,
       "atoms": [
        "AREA_LO_ADG",
        "L19"
       ]
      },
      {
       "weight": 84,
       "atoms": [
        "AREA_LO_ADG",
        "L23"
       ]
      },
      {
       "weight": 143,
       "atoms": [
        "AREA_LO_ADG",
        "span_BC"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_ADG",
        "overlap_ae"
       ]
      },
      {
       "weight": 65,
       "atoms": [
        "AREA_LO_DHO",
        "L12"
       ]
      },
      {
       "weight": 425,
       "atoms": [
        "AREA_LO_DHO",
        "L22"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_DHO",
        "L9"
       ]
      },
      {
       "weight": 433,
       "atoms": [
        "AREA_LO_DHO",
        "L11"
       ]
      },
      {
       "weight": 89,
       "atoms": [
        "AREA_LO_DHO",
        "L25"
       ]
      },
      {
       "weight": 403,
       "atoms": [
        "AREA_LO_DHO",
        "overlap_fc"
       ]
      },
      {
       "weight": 416,
       "atoms": [
        "AREA_LO_DOP"
       ]
      },
      {
       "weight": 73,
       "atoms": [
        "AREA_LO_DOP",
        "L4"
       ]
      },
      {
       "weight": 84,
       "atoms": [
        "AREA_LO_DOP",
        "L12"
       ]
      },
      {
       "weight": 84,
       "atoms": [
        "AREA_LO_DOP",
        "L14"
       ]
      },
      {
       "weight": 357,
       "atoms": [
        "AREA_LO_DOP",
        "L18"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_DOP",
        "span_BC_hi"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_DOP",
        "overlap_eh"
       ]
      },
      {
       "weight": 690,
       "atoms": [
        "AREA_LO_DFO"
       ]
      },
      {
       "weight": 458,
       "atoms": [
        "AREA_LO_DFO",
        "L12"
       ]
      },
      {
       "weight": 252,
       "atoms": [
        "AREA_LO_DFO",
        "L14"
       ]
      },
      {
       "weight": 461,
       "atoms": [
        "AREA_LO_DFO",
        "L18"
       ]
      },
      {
       "weight": 69,
       "atoms": [
        "AREA_LO_DFO",
        "L22"
       ]
      },
      {
       "weight": 114,
       "atoms": [
        "AREA_LO_DFO",
        "L17"
       ]
      },
      {
       "weight": 89,
       "atoms": [
        "AREA_LO_DFO",
        "L25"
       ]
      },
      {
       "weight": 124,
       "atoms": [
        "Central_z"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "Central_order",
        "overlap_fc"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "LINEAR_1049",
        "overlap_fc"
       ]
      },
      {
       "weight": 71,
       "atoms": [
        "LINEAR_1172",
        "L5"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "LINEAR_1172",
        "L15"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "LINEAR_1173",
        "L5"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "QUAD_1174",
        "L1"
       ]
      },
      {
       "weight": 287,
       "atoms": [
        "QUAD_1174",
        "L5"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "QUAD_1174",
        "L19"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "QUAD_1174",
        "Gsum"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "LINEAR_1304",
        "L6"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "LINEAR_1362",
        "L9"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "QUAD_1509",
        "L2"
       ]
      },
      {
       "weight": 75,
       "atoms": [
        "QUAD_1551",
        "L5"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "QUAD_1551",
        "L11"
       ]
      },
      {
       "weight": 96,
       "atoms": [
        "QUAD_1551",
        "L19"
       ]
      }
     ],
     "sum": {
      "": "-1100068577496460574288769/69757000000000000000000",
      "7": "-55067580686211059317/883000000000000000000",
      "7,7": "885255750009767/62500000000000000",
      "4": "732434986993322069629/17439250000000000000000",
      "2": "-98129827314567212469/3487850000000000000000",
      "2,7": "-2055508395199827963/44150000000000000000",
      "2,4": "1958729565287109/125000000000000000",
      "5": "-6961385071397453539/79000000000000000000",
      "5,7": "54391524488208703/500000000000000000",
      "4,5": "-274314062179625137/7900000000000000000",
      "0,1": "-3158724105129153/200000000000000000",
      "0,4": "-20491053732636971/1000000000000000000",
      "0,11": "8279578151787200643/220750000000000000000",
      "0": "108405073268338560527/435981250000000000000",
      "0,2": "3493610815138227181167/17439250000000000000000",
      "0,5": "-11079428268915149/500000000000000000",
      "0,9": "-5845934861153312211/220750000000000000000",
      "1,1": "611598765904589/20000000000000000",
      "1,3": "-1774029147473476251/44150000000000000000",
      "1,6": "-629591980493817/10000000000000000",
      "1,9": "-968358378418821/50000000000000000",
      "1,11": "21789950798331/25000000000000000",
      "1,12": "-595163383472277/49375000000000000",
      "1": "252290229569443825139/2790280000000000000000",
      "1,4": "175205822073701293/15800000000000000000",
      "1,1,4": "1124973688846307/40000000000000000",
      "1,2": "1333106716986639/50000000000000000",
      "1,2,4": "-1312945069886889/50000000000000000",
      "1,5": "-9429527832058143/200000000000000000",
      "1,8": "-31959699234827/15800000000000000",
      "1,4,9": "-2106831751428339/200000000000000000",
      "1,10": "-317960555290583/5000000000000000",
      "1,8,10": "2076067725827/40000000000000",
      "1,3,12": "-12821997924445419/200000000000000000",
      "2,10": "145930579558365981/1975000000000000000",
      "2,2": "256061957852007/62500000000000000",
      "2,5": "9416732249977947/250000000000000000",
      "3,9": "-62783896967297374401/883000000000000000000",
      "3": "-107903106553028002983/441500000000000000000",
      "2,3": "14379925021906131/250000000000000000",
      "0,3": "83808868573788039/1000000000000000000",
      "3,7": "22655915986941711/1000000000000000000",
      "3,8": "-206109821370429/2000000000000000",
      "2,3,8": "-26719969331331/500000000000000",
      "3,6": "3357460889721/312500000000000",
      "3,6,7": "-1323860787625941/50000000000000000",
      "6,7": "-1180790409468987/25000000000000000",
      "6,10": "168061564157463/5000000000000000",
      "5,6,10": "-376371590863131/5000000000000000",
      "6": "79283294883760437/3950000000000000000",
      "2,6": "21716034147081/625000000000000",
      "0,6": "-530967260999040129/3950000000000000000",
      "4,6": "-51096522919248783/3950000000000000000",
      "3,4,6": "-1554886422501579/25000000000000000",
      "5,6": "-4261408435430793/50000000000000000",
      "2,3,6": "-625126892003217/12500000000000000",
      "3,5,6": "4150563680592009/50000000000000000",
      "6,11": "666741905307/12500000000000",
      "4,4,6": "837311052380157/50000000000000000",
      "6,12": "214634394740547063/1975000000000000000",
      "2,4,6": "336632726506311/12500000000000000",
      "2,3,7": "6026105523902193/250000000000000000",
      "3,5,7": "-40010652305763561/1000000000000000000",
      "7,12": "-55181644873296243/1000000000000000000",
      "4,7": "-3987535652338747/500000000000000000",
      "4,5,7": "21545857564732463/1000000000000000000",
      "8": "-2131848368949559/15800000000000000",
      "2,8": "-8373157669162797/39500000000000000",
      "0,8": "-115740991528151/1000000000000000",
      "0,2,8": "36382019454429/500000000000000",
      "4,8": "170257897933067/2000000000000000",
      "7,8": "54841424734909/2000000000000000",
      "8,9": "44401527027/3906250000000",
      "7,8,9": "19658530628217/2000000000000000",
      "8,11": "-426020981291289/15800000000000000",
      "7,8,11": "59027423749731/2000000000000000",
      "9": "6091080057654173839881/69757000000000000000000",
      "4,9": "-704088146609019980613/69757000000000000000000",
      "0,4,9": "15464191869472203/1000000000000000000",
      "7,9": "4411457926293717/250000000000000000",
      "2,9": "-403939946855330847/19750000000000000000",
      "9,12": "14695751485180477179/883000000000000000000",
      "7,7,9": "4433552244822051/1000000000000000000",
      "3,7,9": "-9669856528200843/1000000000000000000",
      "9,9": "2628648691461/2500000000000000",
      "10,11": "-15995841441884808849/88300000000000000000",
      "10,12": "-3502435063827663/50000000000000000",
      "5,10,12": "9009662994953259/100000000000000000",
      "10": "470284462360082663977/1743925000000000000000",
      "5,10": "-2955744177515567/25000000000000000",
      "0,10": "-3757167379555821/25000000000000000",
      "0,5,10": "10774681258380413/100000000000000000",
      "7,10": "460286936207259/12500000000000000",
      "1,7,10": "468211734656881/20000000000000000",
      "8,10": "-1031413294981/40000000000000",
      "5,7,10": "-3628151262973499/100000000000000000",
      "0,2,10": "-1622801991660069/25000000000000000",
      "4,10": "-773666884778767/12500000000000000",
      "11": "-58712412457962994059/348785000000000000000",
      "2,11": "-1542210317319177/250000000000000000",
      "5,11": "10239588494404929/1000000000000000000",
      "3,11": "222332543193465729/1000000000000000000",
      "4,11": "-29317668944405144571/883000000000000000000",
      "9,11": "2966826028959/62500000000000000",
      "3,4,11": "-34101945692929431/1000000000000000000",
      "7,11": "-20626784753301160677/883000000000000000000",
      "12": "-8829097157874141061371/69757000000000000000000",
      "8,12": "185336035941879/2000000000000000",
      "2,12": "-5876201887328036511/110375000000000000000",
      "0,7": "4441682606603363/500000000000000000",
      "0,0": "39601766672353127/500000000000000000",
      "0,0,2": "-24367255955974569/250000000000000000",
      "1,7": "-3389073109633593/200000000000000000",
      "1,2,7": "1117867176133431/50000000000000000",
      "1,7,7": "-2367360193887763/200000000000000000",
      "1,7,12": "5878783983530883/200000000000000000",
      "3,4": "12698363887311483/500000000000000000",
      "3,5": "157332186559544553/1000000000000000000",
      "5,8": "-66663729165301/2000000000000000",
      "5,9": "-5324150019494007/987500000000000000",
      "1,4,6": "-288437779165293/10000000000000000",
      "1,4,7": "2780485876651597/200000000000000000",
      "6,9": "1315776376962567/50000000000000000",
      "4,4": "2023781664665269/125000000000000000",
      "0,1,4": "-8257331873146939/200000000000000000",
      "6,7,9": "-459921042594819/50000000000000000",
      "3,7,11": "29035065218451849/1000000000000000000",
      "5,12": "-32404096440138999/500000000000000000",
      "4,12": "28635022392243249/1000000000000000000",
      "4,5,12": "-53504085559103583/1000000000000000000",
      "3,12": "28830193832584827/500000000000000000",
      "1,7,8": "-10496960520521/200000000000000",
      "0,1,8": "31173287879327/400000000000000",
      "9,10": "847029764853207/100000000000000000",
      "3,4,9": "11357333613756117/1000000000000000000",
      "6,9,12": "1142106074891379/50000000000000000",
      "4,10,11": "3092351916437829/100000000000000000",
      "2,8,9": "9282755609829/500000000000000",
      "0,6,10": "356509509220953/5000000000000000",
      "8,9,11": "-44726301832797/2000000000000000",
      "3,6,12": "3287497869911781/50000000000000000",
      "3,8,11": "-128742526843083/2000000000000000",
      "0,8,9": "-58380807792879/2000000000000000",
      "1,1,8": "-97681669036673/40000000000000",
      "3,9,11": "22000470428820663/1000000000000000000"
     },
     "upper": "-210928343174721098620427/17439250000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CA6ppmmmm",
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "EGO+",
    "BGP+",
    "FGP-",
    "ADG-",
    "DHO-",
    "DFO-"
   ],
   "stages": [
    "other_CA_C_6:0",
    "other_CA_C_6:1",
    "other_CA_C_6:2",
    "other_CA_C_6:3",
    "other_CA_C_6:4",
    "other_CA_C_6:5",
    "Ccap_CA6:0",
    "Ccap_CA6p:0",
    "Ccap_CA6p:1",
    "Ccap_CA6p:2",
    "Ccap_CA6p:3",
    "Ccap_CA6pp:0",
    "Ccap_CA6pp:1",
    "Ccap_CA6pp:2",
    "Ccap_CA6pp:3",
    "Ccap_CA6ppm:0",
    "Ccap_CA6ppm:1",
    "Ccap_CA6ppm:2",
    "Ccap_CA6ppm:3",
    "Ccap_CA6ppmm:0",
    "Ccap_CA6ppmm:1",
    "Ccap_CA6ppmm:2",
    "Ccap_CA6ppmm:3",
    "Ccap_CA6ppmmm:0",
    "Ccap_CA6ppmmm:1",
    "Ccap_CA6ppmmm:2",
    "Ccap_CA6ppmmm:3",
    "Ccap_CA6ppmmmm:0",
    "Ccap_CA6ppmmmm:1",
    "Ccap_CA6ppmmmm:2",
    "Ccap_CA6ppmmmm:3"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 30,
    "sum": {
     "factors": [
      {
       "weight": 13,
       "atoms": [
        "L2",
        "L2",
        "L21"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L2",
        "L10",
        "L9"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L2",
        "L12",
        "L21"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L2",
        "L20",
        "L9"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L7",
        "overlap_eh"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "L2",
        "L9",
        "L13"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L2",
        "L9",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L9",
        "span_BC"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L2",
        "L9",
        "overlap_bf"
       ]
      },
      {
       "weight": 49,
       "atoms": [
        "L2",
        "L11",
        "L21"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L2",
        "L17",
        "overlap_eh"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L2",
        "L21",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "span_BC",
        "overlap_eh"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L2",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L4",
        "L12",
        "L7"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "L4",
        "L12",
        "overlap_eh"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L4",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "L4",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L4",
        "L21",
        "overlap_eh"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L6",
        "L10",
        "L5"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L6",
        "L12",
        "L5"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L6",
        "L5",
        "L17"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L6",
        "L5",
        "L19"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L6",
        "L5",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L6",
        "overlap_bf",
        "Gsum"
       ]
      },
      {
       "weight": 63,
       "atoms": [
        "L10",
        "L10",
        "L7"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L10",
        "L16",
        "L7"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L10",
        "L5",
        "L21"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L10",
        "L7",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 70,
       "atoms": [
        "L10",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L10",
        "L11",
        "L21"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L10",
        "L11",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L12",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 36,
       "atoms": [
        "L12",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 56,
       "atoms": [
        "L12",
        "L11",
        "L21"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L12",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L12",
        "L15",
        "overlap_eh"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "L12",
        "L19",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L12",
        "L21",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L12",
        "AREA_LO_BCF",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L12",
        "AREA_LO_DEH",
        "overlap_eh"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L12",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "L16",
        "L1",
        "L19"
       ]
      },
      {
       "weight": 43,
       "atoms": [
        "L16",
        "L5",
        "L11"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L16",
        "L5",
        "QUAD_1272"
       ]
      },
      {
       "weight": 36,
       "atoms": [
        "L16",
        "L9",
        "span_BC_hi"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L16",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L20",
        "overlap_bf",
        "overlap_bf"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L1",
        "L3",
        "L5"
       ]
      },
      {
       "weight": 36,
       "atoms": [
        "L1",
        "L5",
        "L11"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L1",
        "L5",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 54,
       "atoms": [
        "L1",
        "L5",
        "span_DE_hi"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L1",
        "L5",
        "overlap_ae"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L7",
        "L21"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L5",
        "L11",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L5",
        "L11",
        "QUAD_1272"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L5",
        "L17",
        "L19"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L5",
        "L19",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L5",
        "L19",
        "overlap_ae"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L5",
        "AREA_HI_ADE",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "AREA_LO_ADH",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L9",
        "L13",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 39,
       "atoms": [
        "L9",
        "L13",
        "overlap_fc"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L9",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L9",
        "L15",
        "overlap_fc"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "L9",
        "L17",
        "L19"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "L9",
        "L19",
        "span_DE"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "L9",
        "L19",
        "span_BC"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "L9",
        "L21",
        "overlap_bf"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L9",
        "span_DE",
        "overlap_fc"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L9",
        "span_BC",
        "overlap_ae"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L9",
        "span_BC",
        "QUAD_1272"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L11",
        "L15",
        "overlap_eh"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L11",
        "span_DE",
        "overlap_eh"
       ]
      },
      {
       "weight": 39,
       "atoms": [
        "L11",
        "span_BC",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L11",
        "overlap_bf",
        "overlap_eh"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L17",
        "L19",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 56,
       "atoms": [
        "L17",
        "L21",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L17",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "L19",
        "AREA_HI_ADE",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L19",
        "overlap_eh",
        "Gsum"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L21",
        "span_BC",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L21",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "overlap_fc",
        "overlap_eh",
        "overlap_ae"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "overlap_fc",
        "overlap_eh",
        "QUAD_1272"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABH",
        "L2"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ABH",
        "L17"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_ACD",
        "L13"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_ACD",
        "Gsum"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_CDE",
        "L1"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "AREA_LO_CDE",
        "L21"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EFH"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_EFH",
        "L8"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_EFH",
        "L10"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "AREA_LO_EFH",
        "L13"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_EFH",
        "span_DE"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "AREA_LO_EFH",
        "span_BC"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EFH",
        "overlap_ae"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_HI_EFG",
        "L9"
       ]
      },
      {
       "weight": 64,
       "atoms": [
        "AREA_LO_FGH",
        "L4"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_FGH",
        "L10"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_FGH",
        "L18"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_FGH",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_FGH",
        "span_DE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_FGH",
        "span_AH_hi"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CGH",
        "L20"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_CGH",
        "L3"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "AREA_LO_CGH",
        "L11"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_CGH",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 55,
       "atoms": [
        "AREA_LO_CDO",
        "L1"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CDO",
        "L11"
       ]
      },
      {
       "weight": 40,
       "atoms": [
        "AREA_HI_CDO",
        "L9"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_DEO"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "AREA_LO_DEO",
        "L4"
       ]
      },
      {
       "weight": 59,
       "atoms": [
        "AREA_LO_DEO",
        "L10"
       ]
      },
      {
       "weight": 84,
       "atoms": [
        "AREA_LO_DEO",
        "L12"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_DEO",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_DEO",
        "span_BC_hi"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "AREA_LO_DEO",
        "overlap_ae"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_AHO",
        "L5"
       ]
      },
      {
       "weight": 51,
       "atoms": [
        "AREA_LO_CEO",
        "L14"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_CEO",
        "L11"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "AREA_LO_CEO",
        "L17"
       ]
      },
      {
       "weight": 47,
       "atoms": [
        "AREA_LO_CEO",
        "span_DE"
       ]
      },
      {
       "weight": 92,
       "atoms": [
        "AREA_LO_CEO",
        "span_AH_hi"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "AREA_LO_CEO",
        "overlap_eh"
       ]
      },
      {
       "weight": 93,
       "atoms": [
        "AREA_LO_ACG"
       ]
      },
      {
       "weight": 58,
       "atoms": [
        "AREA_LO_ACG",
        "L8"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_ACG",
        "L3"
       ]
      },
      {
       "weight": 47,
       "atoms": [
        "AREA_LO_ACG",
        "L11"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_ACG",
        "L19"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "AREA_LO_ACG",
        "L21"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_ACG",
        "span_DE_hi"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_ACG",
        "overlap_ae"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CGO",
        "L9"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_HI_GHO",
        "L9"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_HI_BDO",
        "L9"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "AREA_LO_EGO"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "AREA_LO_EGO",
        "L8"
       ]
      },
      {
       "weight": 36,
       "atoms": [
        "AREA_LO_EGO",
        "L14"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_EGO",
        "L5"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_EGO",
        "span_BC_hi"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "AREA_LO_EGO",
        "span_AH_hi"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_EGO",
        "span_DE_hi"
       ]
      },
      {
       "weight": 43,
       "atoms": [
        "AREA_LO_BEG",
        "L20"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_BGO",
        "L5"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_BGO",
        "L15"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_BGO",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_BGO",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "AREA_LO_BEO",
        "L12"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_BEO",
        "L14"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_BEO",
        "L11"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_BEO",
        "L17"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_BEO",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_BEO",
        "span_DE"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_BEO",
        "overlap_fc"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_BEO",
        "overlap_ae"
       ]
      },
      {
       "weight": 70,
       "atoms": [
        "AREA_LO_ADG"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_ADG",
        "L8"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ADG",
        "L15"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_ADG",
        "span_BC"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "AREA_LO_ADG",
        "overlap_fc"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_ADG",
        "overlap_ae"
       ]
      },
      {
       "weight": 50,
       "atoms": [
        "AREA_LO_DFO"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "AREA_LO_DFO",
        "L4"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_DFO",
        "L8"
       ]
      },
      {
       "weight": 63,
       "atoms": [
        "AREA_LO_DFO",
        "L10"
       ]
      },
      {
       "weight": 56,
       "atoms": [
        "AREA_LO_DFO",
        "L12"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_DFO",
        "L14"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_DFO",
        "span_BC"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "Central_z"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "QUAD_1303",
        "L1"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "QUAD_1303",
        "L5"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "QUAD_1303",
        "L11"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "QUAD_1303",
        "L19"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "LINEAR_1352",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "LINEAR_1412",
        "overlap_eh"
       ]
      }
     ],
     "sum": {
      "1,1": "9886575069206343/500000000000000000",
      "1,5": "-1247641979793411/500000000000000000",
      "1,6": "2377899920788479/250000000000000000",
      "1,6,10": "29817795941378973/1000000000000000000",
      "1,10": "-102683153881956879/1000000000000000000",
      "1,4,10": "-2317692523846161/125000000000000000",
      "1": "-7486452623901711/200000000000000000",
      "1,7": "-18091747359411093/500000000000000000",
      "1,4": "71977342044153/625000000000000",
      "1,3": "158706214182014499/5518750000000000000",
      "1,4,6": "-3097089310179123/125000000000000000",
      "1,4,4": "240732103539711/15625000000000000",
      "1,2": "-941004701293761/40000000000000000",
      "1,2,4": "-125391476073591/5000000000000000",
      "1,1,4": "3247879676821731/125000000000000000",
      "1,8": "14238173946893577/200000000000000000",
      "1,4,8": "-2802546934672191/125000000000000000",
      "1,2,10": "1207229457046041/40000000000000000",
      "2,6": "-846470226750057/20000000000000000",
      "2,3,6": "-1412952634199457/40000000000000000",
      "2,6,7": "-821221035115923/40000000000000000",
      "2,4,6": "119569885210503/5000000000000000",
      "2": "478988866691251287033/2790280000000000000000",
      "2,7": "716108221139493/40000000000000000",
      "2,4": "625009025361357/19750000000000000",
      "2,9": "372175320231819/20000000000000000",
      "2,10": "8669738869132341/3160000000000000000",
      "3,5": "14713621197424519643/441500000000000000000",
      "3,6": "-20080619991304119/500000000000000000",
      "3": "21734908665110732221/441500000000000000000",
      "3,8": "-71820574668834719/1000000000000000000",
      "2,3": "-3632339131953093939/35320000000000000000",
      "3,9": "-9503610659452143/500000000000000000",
      "3,7": "-2975594681545967/500000000000000000",
      "0,3": "4341418105285131/500000000000000000",
      "0,2,3": "2054125971809223/40000000000000000",
      "5,5": "-14758164775147/6250000000000000",
      "5,8": "-292755385444387769/9875000000000000000",
      "5": "2530828382891779457/39500000000000000000",
      "5,10": "-474721532504659/12500000000000000",
      "2,5": "-222168815868597/2000000000000000",
      "5,9": "147783704927139/15625000000000000",
      "4,5": "-336710268335511/62500000000000000",
      "4,5,9": "297125182230597/31250000000000000",
      "5,5,10": "-63892666674314181/50000000000000000",
      "5,7": "1296609490201484769/39500000000000000000",
      "5,5,7": "-5064364417515119/250000000000000000",
      "4,5,5": "737372091279859/31250000000000000",
      "6": "1438578992307068541/39500000000000000000",
      "6,7": "-12085301373655479/79000000000000000000",
      "4,6": "-58144583634147129/9875000000000000000",
      "4,6,7": "1576616477012283/125000000000000000",
      "6,9": "5393146187619/3906250000000000",
      "4,6,9": "594634189994397/62500000000000000",
      "6,10": "825391718283050721/15800000000000000000",
      "5,6": "192742447598157/62500000000000000",
      "2,6,10": "-1151181022201353/40000000000000000",
      "1,6,7": "21271199555591343/1000000000000000000",
      "4,4,6": "-229555555832463/15625000000000000",
      "3,6,7": "-18630814944707277/1000000000000000000",
      "8": "1494183036941389193/19750000000000000000",
      "8,9": "142827653850099777/19750000000000000000",
      "0,8": "-60619917844348561/500000000000000000",
      "0,8,9": "-10063944440137323/500000000000000000",
      "2,8": "122656889882169981/1580000000000000000",
      "4,8": "3882607541279579/31250000000000000",
      "7,8": "7469368139192229/125000000000000000",
      "4,5,8": "1335353584948103/62500000000000000",
      "10": "19897536079002747/126400000000000000",
      "": "-356175335134837054419677/69757000000000000000000",
      "0": "-2013015599522906342133/17439250000000000000000",
      "0,2": "-683464655449742424297/2790280000000000000000",
      "0,1": "25443031586880681/1000000000000000000",
      "0,5": "-360663136320103/100000000000000000",
      "0,2,5": "1117456396187781/20000000000000000",
      "7": "-82892271617802877429/8719625000000000000000",
      "0,7": "9528296938017883/250000000000000000",
      "0,0": "50299711757632851/1000000000000000000",
      "0,0,2": "3251175932705259/40000000000000000",
      "4": "-300802710690746573547/4359812500000000000000",
      "0,4": "-876729185265003/31250000000000000",
      "0,2,4": "-173828620091217/2500000000000000",
      "3,10": "-9188556797531111/1000000000000000000",
      "2,5,7": "-410345475951723/20000000000000000",
      "2,4,5": "-59746352514303/2500000000000000",
      "9": "-1737795278093057825967/34878500000000000000000",
      "2,8,9": "280274151076569/20000000000000000",
      "7,9": "172765160483694993/22075000000000000000",
      "0,9": "325958116467429/31250000000000000",
      "4,9": "5332357242976113/3406103515625000000",
      "4,7": "-745403999327043/62500000000000000",
      "7,7": "-13210447082868217/1000000000000000000",
      "4,4": "-167837359286317/7812500000000000",
      "3,4": "-96448342936127/3906250000000000",
      "4,7,9": "-317444941333989/62500000000000000",
      "4,8,9": "538082715581649/62500000000000000",
      "3,4,9": "-546180196185351/62500000000000000",
      "1,9": "-8519075166402693/500000000000000000",
      "4,10": "1067476645774847/31250000000000000",
      "2,4,4": "-9293987710371/625000000000000",
      "2,3,4": "109826687501349/5000000000000000",
      "0,1,4": "-4502494588331397/125000000000000000",
      "5,7,7": "5410705526010703/500000000000000000",
      "8,10": "-12267511456053799/500000000000000000",
      "2,8,10": "1041700294021101/40000000000000000",
      "5,7,8": "-9171376650117523/500000000000000000",
      "7,8,9": "3695619878617509/500000000000000000",
      "7,10": "-47996037751013/7812500000000000",
      "1,7,10": "15918204238153701/1000000000000000000",
      "0,5,7": "-14734480705327841/500000000000000000",
      "0,4,5": "2145342229724701/62500000000000000",
      "0,1,1": "-60746200666289937/1000000000000000000",
      "0,6": "8006370699595918119/79000000000000000000",
      "0,2,6": "2236356319625181/40000000000000000",
      "6,7,10": "-15179164590074133/1000000000000000000",
      "0,10": "-22551655908704967/250000000000000000",
      "0,4,9": "864468846179883/62500000000000000",
      "0,4,6": "4293455806930101/62500000000000000",
      "0,1,6": "-57925917040641921/1000000000000000000",
      "0,6,10": "41336034034797051/1000000000000000000",
      "0,0,6": "-80301967422279927/1000000000000000000"
     },
     "upper": "-197175985910588537449759/69757000000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CA6pmppp",
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "EGO+",
    "BGP-",
    "FGP+",
    "CFP+",
    "AEP+"
   ],
   "stages": [
    "other_CA_C_6:0",
    "other_CA_C_6:1",
    "other_CA_C_6:2",
    "other_CA_C_6:3",
    "other_CA_C_6:4",
    "other_CA_C_6:5",
    "Ccap_CA6:0",
    "Ccap_CA6p:0",
    "Ccap_CA6p:1",
    "Ccap_CA6p:2",
    "Ccap_CA6p:3",
    "Ccap_CA6pm:0",
    "Ccap_CA6pm:1",
    "Ccap_CA6pm:2",
    "Ccap_CA6pm:3",
    "Ccap_CA6pmp:0",
    "Ccap_CA6pmp:1",
    "Ccap_CA6pmp:2",
    "Ccap_CA6pmpp:0",
    "Ccap_CA6pmpp:1",
    "Ccap_CA6pmpp:2",
    "Ccap_CA6pmpp:3",
    "Ccap_CA6pmppp:0",
    "Ccap_CA6pmppp:1",
    "Ccap_CA6pmppp:2",
    "Ccap_CA6pmppp:3"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 25,
    "sum": {
     "factors": [
      {
       "weight": 2,
       "atoms": [
        "L0",
        "L0",
        "L23"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L0",
        "L12",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L12",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L21",
        "L23"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L8",
        "L19"
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
       "weight": 15,
       "atoms": [
        "L2",
        "L24",
        "L5"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L2",
        "L3",
        "L9"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L2",
        "L9",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 49,
       "atoms": [
        "L2",
        "L9",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "L2",
        "L21",
        "span_BC_hi"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "L2",
        "L25",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L4",
        "L6",
        "L5"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L4",
        "L14",
        "L19"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L4",
        "L16",
        "L5"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L4",
        "L1",
        "L5"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L4",
        "L1",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L4",
        "L15",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L4",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L4",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L6",
        "L20",
        "L5"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L6",
        "L5",
        "L17"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L6",
        "L5",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L6",
        "L5",
        "span_DE_hi"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L6",
        "L5",
        "overlap_ae"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L6",
        "AREA_LO_AEH",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L8",
        "L22",
        "overlap_bf"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L8",
        "L5",
        "L17"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L8",
        "L5",
        "overlap_eh"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L8",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L8",
        "L17",
        "overlap_bf"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L8",
        "AREA_LO_BCF",
        "overlap_bf"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L12",
        "L7",
        "L21"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L12",
        "L9",
        "L21"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "L12",
        "L9",
        "span_BC_hi"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L12",
        "L9",
        "overlap_eh"
       ]
      },
      {
       "weight": 57,
       "atoms": [
        "L12",
        "L21",
        "span_BC"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L12",
        "L21",
        "QUAD_1331"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L12",
        "L23",
        "overlap_eh"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L12",
        "L25",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "L14",
        "L5",
        "L21"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L14",
        "L19",
        "overlap_fc"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L14",
        "L21",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L16",
        "L5",
        "L21"
       ]
      },
      {
       "weight": 36,
       "atoms": [
        "L18",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L18",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L20",
        "L22",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L20",
        "L22",
        "overlap_bf"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L20",
        "L5",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L20",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L20",
        "L17",
        "overlap_bf"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L22",
        "L15",
        "L15"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L22",
        "L17",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L22",
        "AREA_LO_AEH",
        "overlap_bf"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L24",
        "L19",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L24",
        "AREA_LO_BCF",
        "overlap_bf"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L1",
        "L5",
        "L23"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L1",
        "L5",
        "span_BC"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L1",
        "L5",
        "span_DE_hi"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L1",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L1",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L5",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "L5",
        "L15",
        "L17"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L5",
        "L15",
        "span_DE_hi"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L17",
        "L19"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L5",
        "L21",
        "L23"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L5",
        "L21",
        "QUAD_1331"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L5",
        "L23",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L7",
        "L19",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L7",
        "L19",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L9",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L9",
        "L11",
        "L23"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L9",
        "L11",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L9",
        "L11",
        "span_BC"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L9",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L9",
        "L15",
        "span_BC_hi"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L9",
        "L17",
        "L19"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L9",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L9",
        "L23",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L9",
        "L23",
        "span_AH_hi"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L13",
        "L15",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L13",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "L15",
        "L17",
        "overlap_bf"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L15",
        "L23",
        "overlap_bf"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L15",
        "L23",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L15",
        "L25",
        "overlap_bf"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L15",
        "AREA_LO_ADE",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L15",
        "span_BC",
        "overlap_bf"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L17",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L19",
        "L25",
        "overlap_fc"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L19",
        "AREA_HI_ADE",
        "span_DE"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L19",
        "AREA_LO_ADH",
        "span_BC_hi"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L19",
        "AREA_HI_BCF",
        "overlap_ae"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "L19",
        "span_BC",
        "overlap_eh"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L19",
        "span_BC_hi",
        "span_DE_hi"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L19",
        "span_DE_hi",
        "overlap_eh"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L21",
        "AREA_HI_BCF",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L21",
        "AREA_HI_BCF",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L21",
        "AREA_HI_BCF",
        "QUAD_1331"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L23",
        "AREA_LO_AEH",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_AEF",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CDE",
        "L2"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDE",
        "L6"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CEF",
        "L9"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_HI_CFH",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_DEF",
        "L25"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "AREA_LO_EFH"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EFH",
        "L8"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_EFH",
        "L20"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "AREA_LO_EFH",
        "L24"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EFH",
        "L23"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EFH",
        "span_AH"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_EFH",
        "span_DE"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_EFH",
        "span_BC"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EFH",
        "overlap_ae"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_ABG"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_ABG",
        "L4"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "AREA_LO_ABG",
        "L14"
       ]
      },
      {
       "weight": 57,
       "atoms": [
        "AREA_LO_ABG",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABG",
        "L21"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_ABG",
        "L23"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ABG",
        "span_DE"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_ABG",
        "span_BC"
       ]
      },
      {
       "weight": 57,
       "atoms": [
        "AREA_LO_ABO",
        "L23"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_HI_BCO",
        "L19"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_CDO"
       ]
      },
      {
       "weight": 36,
       "atoms": [
        "AREA_LO_CDO",
        "L8"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CDO",
        "span_BC"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_CDO",
        "span_DE_hi"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "AREA_LO_CDO",
        "overlap_ae"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_DEO",
        "L2"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_DEO",
        "L4"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_DEO",
        "L17"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_DEO",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 50,
       "atoms": [
        "AREA_LO_CEO"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_CEO",
        "L18"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "AREA_LO_CEO",
        "L22"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_CEO",
        "L17"
       ]
      },
      {
       "weight": 56,
       "atoms": [
        "AREA_LO_CEO",
        "span_DE"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_CEO",
        "span_AH_hi"
       ]
      },
      {
       "weight": 59,
       "atoms": [
        "AREA_LO_CEO",
        "overlap_eh"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_ABP",
        "L8"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_ABP",
        "L12"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_ABP",
        "L14"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ABP",
        "L21"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_ABP",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ABP",
        "span_AH_hi"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABP",
        "span_DE_hi"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "AREA_HI_BCP",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_FHP",
        "L15"
       ]
      },
      {
       "weight": 59,
       "atoms": [
        "AREA_LO_HOP"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_HOP",
        "L4"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_HOP",
        "L13"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "AREA_LO_HOP",
        "span_BC"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_HOP",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_HOP",
        "overlap_ae"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_ACG"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ACG",
        "L14"
       ]
      },
      {
       "weight": 94,
       "atoms": [
        "AREA_LO_ACG",
        "L18"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "AREA_LO_ACG",
        "L13"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ACG",
        "span_DE"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "AREA_LO_ACG",
        "span_BC"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "AREA_LO_BGH",
        "L24"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_EOP",
        "L12"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EOP",
        "L5"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EOP",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_AGO"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "AREA_LO_AGO",
        "L4"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_AGO",
        "L14"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "AREA_LO_AGO",
        "L13"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_AGO",
        "span_DE"
       ]
      },
      {
       "weight": 74,
       "atoms": [
        "AREA_LO_AGO",
        "span_BC"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_HI_CEG",
        "L21"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "AREA_LO_CFG",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_HI_CFG",
        "L21"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "AREA_HI_CGO",
        "L12"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_HI_CGO",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_BHP",
        "L8"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "AREA_LO_BHP",
        "L1"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "AREA_LO_BHP",
        "L17"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_BHP",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_GHP",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_HI_GHP",
        "L9"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_AEG",
        "L14"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "AREA_LO_AEG",
        "span_BC_hi"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_AEG",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_AOP",
        "L5"
       ]
      },
      {
       "weight": 85,
       "atoms": [
        "AREA_LO_BGP"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_BGP",
        "L4"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BGP",
        "L8"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "AREA_LO_BGP",
        "L14"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BGP",
        "span_DE"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_FGP",
        "span_DE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_AFP"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_AEP"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_AEP",
        "L14"
       ]
      },
      {
       "weight": 57,
       "atoms": [
        "AREA_LO_AEP",
        "L18"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_AEP",
        "L20"
       ]
      },
      {
       "weight": 49,
       "atoms": [
        "AREA_LO_AEP",
        "L5"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_AEP",
        "span_DE"
       ]
      },
      {
       "weight": 86,
       "atoms": [
        "AREA_LO_AEP",
        "span_BC"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_AEP",
        "span_AH_hi"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_AEP",
        "overlap_bf"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_AEP",
        "overlap_eh"
       ]
      },
      {
       "weight": 69,
       "atoms": [
        "AREA_LO_BEO"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_BEO",
        "L18"
       ]
      },
      {
       "weight": 86,
       "atoms": [
        "AREA_LO_BEO",
        "L22"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_BEO",
        "L24"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_BEO",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_BEO",
        "span_DE"
       ]
      },
      {
       "weight": 53,
       "atoms": [
        "AREA_LO_BEO",
        "span_BC_hi"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_BFP",
        "span_BC"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BFP",
        "span_DE_hi"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "AREA_LO_BFP",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_DFO",
        "L16"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_DFO",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_HI_DHO",
        "L5"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "QUAD_1675",
        "L9"
       ]
      }
     ],
     "sum": {
      "0,0": "145589766431931/5000000000000000",
      "0,6": "-11102464484520417/100000000000000000",
      "0,4,6": "-283036388677503/25000000000000000",
      "0,6,9": "857322037261521/100000000000000000",
      "0": "600196700807766397/7900000000000000000",
      "0,11": "291562617605188609/3950000000000000000",
      "0,10": "126459818487189/2500000000000000",
      "1,4": "-4853601082015569/62500000000000000",
      "1,8": "-37011718274427/1562500000000000",
      "1,12": "-24760737825113849/987500000000000000",
      "1": "-1104841527529347179/19750000000000000000",
      "1,1": "2525608132277321/62500000000000000",
      "1,1,4": "306500461119437/15625000000000000",
      "1,3": "4836050236835623/125000000000000000",
      "1,2": "-525626569697229/10000000000000000",
      "1,2,4": "-32906639448579/2500000000000000",
      "1,10": "81091031824257/1562500000000000",
      "1,1,10": "-206004047974257/7812500000000000",
      "1,2,10": "22117098639519/625000000000000",
      "1,7": "-6285299650929/1562500000000000",
      "0,1": "24732849324010087/493750000000000000",
      "0,1,12": "141035000810899/6250000000000000",
      "2,3": "1489930681532241/63200000000000000",
      "2,7": "33227432673478017/3160000000000000000",
      "2,8": "511154062497/50000000000000",
      "2": "1163298638508201/49375000000000000",
      "2,2": "-1068494677497/800000000000000",
      "0,2": "48814518251421/79000000000000000",
      "2,4": "30705870107800329/790000000000000000",
      "2,4,7": "-71910618716157/10000000000000000",
      "2,12": "27809236568841/10000000000000000",
      "2,9": "1068332854652037/632000000000000000",
      "2,4,9": "54488165557059/10000000000000000",
      "3,10": "-520604878614639/62500000000000000",
      "3": "-490546201831241517/7900000000000000000",
      "3,8": "1101578501623431/12500000000000000",
      "3,7": "11331781411885181/500000000000000000",
      "0,3": "-954236205861341/25000000000000000",
      "0,2,3": "57204934624149/2000000000000000",
      "3,3": "976474668747721/125000000000000000",
      "3,4": "629659514304457/25000000000000000",
      "2,3,4": "-85563488006529/5000000000000000",
      "0,1,3": "-532820705317147/12500000000000000",
      "4,11": "-9436074908424353/125000000000000000",
      "4": "2117916760918213991/19750000000000000000",
      "4,8": "-61459300347327/1562500000000000",
      "4,7": "-430886997744943/50000000000000000",
      "4,4": "-123401500904099/31250000000000000",
      "4,5": "-8392554701588801/125000000000000000",
      "4,5,8": "-75549103973781/3125000000000000",
      "1,4,8": "22536197331609/1562500000000000",
      "6": "37234884885932247/250000000000000000",
      "6,10": "11494678376439/390625000000000",
      "3,6": "-5751943396277403/125000000000000000",
      "4,6": "2738447732679177/50000000000000000",
      "1,6": "-1120639782272517/62500000000000000",
      "2,6": "120314628996939/10000000000000000",
      "6,7": "-21798547044426939/1000000000000000000",
      "4,6,7": "1692348545990643/250000000000000000",
      "2,6,10": "55882695039327/5000000000000000",
      "1,6,10": "-520505043516081/31250000000000000",
      "6,12": "-698143165812513/125000000000000000",
      "7": "-2201442251343807703/15800000000000000000",
      "7,10": "148840399440867/31250000000000000",
      "2,7,10": "-48332320590177/5000000000000000",
      "5,7": "5433048677483397/62500000000000000",
      "7,9": "293553456695709561/39500000000000000000",
      "1,7,10": "450179015423631/31250000000000000",
      "8": "-470362426423359/6250000000000000",
      "8,10": "-204111056269737/3125000000000000",
      "9": "-133923580333169211/9875000000000000000",
      "4,9": "-27468356388010317/2468750000000000000",
      "4,7,9": "1109070819935091/250000000000000000",
      "5,9": "142633110915711/500000000000000000",
      "1,9": "-29619957467714211/19750000000000000000",
      "10,11": "-81575317311051/12500000000000000",
      "10": "-60479069483634117/9875000000000000000",
      "4,10": "-29445811753509/3125000000000000",
      "2,10": "-3558519372695859/79000000000000000",
      "2,4,10": "12090523234257/1250000000000000",
      "4,10,11": "149886706820619/15625000000000000",
      "5,10": "465542792999109/15625000000000000",
      "5,8,10": "50777806932441/1562500000000000",
      "11": "-2019799446651641383/39500000000000000000",
      "7,11": "-5478173862319/200000000000000",
      "7,7,11": "3563720200246559/500000000000000000",
      "2,11": "416827383687/625000000000000",
      "1,11": "-413827416159443/125000000000000000",
      "8,11": "116595612664173/12500000000000000",
      "5,11": "-956059629974353/31250000000000000",
      "12": "1727143441450575963/19750000000000000000",
      "9,12": "-1091764058479497/250000000000000000",
      "5,12": "125117066216959627/2468750000000000000",
      "": "-695623590032564928077/79000000000000000000",
      "0,4": "200714881379201/12500000000000000",
      "0,7": "1782088416119273/100000000000000000",
      "0,12": "-456056897624523/25000000000000000",
      "0,9": "7830608729229/800000000000000",
      "7,8": "-95748623245629/12500000000000000",
      "8,9": "-724579150247433/25000000000000000",
      "3,9": "-670906946188751103/39500000000000000000",
      "3,4,9": "1319637759959727/125000000000000000",
      "3,7,9": "-5275301493698847/500000000000000000",
      "5": "234766343773802651/1580000000000000000",
      "2,5": "-38468222824317/10000000000000000",
      "1,5": "358302404368051/62500000000000000",
      "4,12": "-2712673809908141/62500000000000000",
      "4,9,12": "-349301576850759/62500000000000000",
      "3,11": "4275056759032007/62500000000000000",
      "3,4,11": "1060734030521243/62500000000000000",
      "4,7,11": "-891478856287919/125000000000000000",
      "6,9": "3954201253587/500000000000000",
      "5,8": "-91239826768167/1250000000000000",
      "7,7": "-2969826363629949/250000000000000000",
      "7,12": "859116095686387/50000000000000000",
      "5,7,12": "2826982530582971/125000000000000000",
      "0,2,9": "-36428995838079/4000000000000000",
      "2,2,10": "-2374545825873/200000000000000",
      "0,1,10": "-75290071354251/3125000000000000",
      "0,7,11": "596013450139739/50000000000000000",
      "4,4,5": "-561690080789399/31250000000000000",
      "0,5": "-2197690308601741/50000000000000000",
      "0,5,7": "-1501185356266259/50000000000000000",
      "0,4,5": "375527518795619/12500000000000000",
      "4,5,12": "707180982652811/31250000000000000",
      "3,12": "-54477720755029/7812500000000000",
      "3,5": "-2630904703750531/62500000000000000",
      "3,5,12": "-3363710258216087/62500000000000000",
      "1,8,9": "68262525178263/6250000000000000",
      "0,1,4": "112019359884991/6250000000000000",
      "0,3,6": "1346264149343451/50000000000000000",
      "1,1,8": "-41225287746903/195312500000000",
      "0,1,1": "-614748390315891/3125000000000000",
      "3,8,9": "177495479704413/12500000000000000",
      "1,4,12": "-210951147478279/15625000000000000",
      "0,0,1": "-74892460652971/1250000000000000",
      "1,3,12": "1003390300589443/31250000000000000"
     },
     "upper": "-106979374718619400971/15800000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CA6pmppm",
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "EGO+",
    "BGP-",
    "FGP+",
    "CFP+",
    "AEP-"
   ],
   "stages": [
    "other_CA_C_6:0",
    "other_CA_C_6:1",
    "other_CA_C_6:2",
    "other_CA_C_6:3",
    "other_CA_C_6:4",
    "other_CA_C_6:5",
    "Ccap_CA6:0",
    "Ccap_CA6p:0",
    "Ccap_CA6p:1",
    "Ccap_CA6p:2",
    "Ccap_CA6p:3",
    "Ccap_CA6pm:0",
    "Ccap_CA6pm:1",
    "Ccap_CA6pm:2",
    "Ccap_CA6pm:3",
    "Ccap_CA6pmp:0",
    "Ccap_CA6pmp:1",
    "Ccap_CA6pmp:2",
    "Ccap_CA6pmpp:0",
    "Ccap_CA6pmpp:1",
    "Ccap_CA6pmpp:2",
    "Ccap_CA6pmpp:3",
    "Ccap_CA6pmppm:0"
   ],
   "terminal": {
    "kind": "scalar",
    "stage": 22,
    "contradiction": {
     "triangle": "ACE",
     "lower": "T0287",
     "upper": "U_ACE"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CA6pmpm",
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "EGO+",
    "BGP-",
    "FGP+",
    "CFP-"
   ],
   "stages": [
    "other_CA_C_6:0",
    "other_CA_C_6:1",
    "other_CA_C_6:2",
    "other_CA_C_6:3",
    "other_CA_C_6:4",
    "other_CA_C_6:5",
    "Ccap_CA6:0",
    "Ccap_CA6p:0",
    "Ccap_CA6p:1",
    "Ccap_CA6p:2",
    "Ccap_CA6p:3",
    "Ccap_CA6pm:0",
    "Ccap_CA6pm:1",
    "Ccap_CA6pm:2",
    "Ccap_CA6pm:3",
    "Ccap_CA6pmp:0",
    "Ccap_CA6pmp:1",
    "Ccap_CA6pmp:2",
    "Ccap_CA6pmpm:0"
   ],
   "terminal": {
    "kind": "scalar",
    "stage": 18,
    "contradiction": {
     "triangle": "ABE",
     "lower": "T0868",
     "upper": "T0697"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CA6pmm",
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "EGO+",
    "BGP-",
    "FGP-"
   ],
   "stages": [
    "other_CA_C_6:0",
    "other_CA_C_6:1",
    "other_CA_C_6:2",
    "other_CA_C_6:3",
    "other_CA_C_6:4",
    "other_CA_C_6:5",
    "Ccap_CA6:0",
    "Ccap_CA6p:0",
    "Ccap_CA6p:1",
    "Ccap_CA6p:2",
    "Ccap_CA6p:3",
    "Ccap_CA6pm:0",
    "Ccap_CA6pm:1",
    "Ccap_CA6pm:2",
    "Ccap_CA6pm:3",
    "Ccap_CA6pmm:0",
    "Ccap_CA6pmm:1",
    "Ccap_CA6pmm:2",
    "Ccap_CA6pmm:3"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 18,
    "sum": {
     "factors": [
      {
       "weight": 4,
       "atoms": [
        "L3",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L13",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L0",
        "L2",
        "L21"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L0",
        "L12",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L12",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L18",
        "L9"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L0",
        "L18",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L0",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L0",
        "L5",
        "overlap_fc"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L0",
        "L19",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L23",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "span_BC_hi",
        "overlap_fc"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L2",
        "L2",
        "L25"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L2",
        "L8",
        "L19"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L2",
        "L10",
        "L25"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L2",
        "L16",
        "L21"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L2",
        "L18",
        "L9"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L2",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L24",
        "overlap_fc"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L2",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L2",
        "L21",
        "L25"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L2",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L4",
        "L12",
        "L21"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L4",
        "L16",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L4",
        "L21",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L6",
        "L8",
        "L19"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L6",
        "L10",
        "L19"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L6",
        "L10",
        "L25"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L6",
        "L12",
        "L19"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L6",
        "L18",
        "overlap_fc"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L6",
        "L22",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L6",
        "L1",
        "L19"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L6",
        "L7",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L6",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L6",
        "L19",
        "L19"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L6",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L8",
        "L22",
        "L19"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L10",
        "L10",
        "L21"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L10",
        "L12",
        "L1"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L10",
        "L12",
        "L21"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L10",
        "L16",
        "L25"
       ]
      },
      {
       "weight": 43,
       "atoms": [
        "L10",
        "L18",
        "L15"
       ]
      },
      {
       "weight": 67,
       "atoms": [
        "L10",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L10",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L10",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L10",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L10",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L10",
        "L25",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L12",
        "L14",
        "L21"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L12",
        "L18",
        "L9"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L12",
        "L24",
        "L21"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L12",
        "L7",
        "overlap_fc"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L12",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L12",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L12",
        "L21",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L12",
        "L21",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L12",
        "L21",
        "QUAD_984"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L14",
        "L20",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L16",
        "L24",
        "overlap_fc"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L16",
        "L11",
        "L15"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L16",
        "L15",
        "overlap_fc"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L16",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L18",
        "L18",
        "L9"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L18",
        "L20",
        "L15"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "L18",
        "L22",
        "L9"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L18",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "L18",
        "L1",
        "L11"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L18",
        "L9",
        "L9"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L18",
        "L9",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L18",
        "L9",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L18",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L18",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L18",
        "L15",
        "span_DE"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L18",
        "L15",
        "span_AH_hi"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L20",
        "L20",
        "L11"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L20",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L20",
        "L3",
        "overlap_fc"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L20",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L20",
        "L5",
        "L11"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L20",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L20",
        "L11",
        "Gsum"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L20",
        "L13",
        "overlap_fc"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L20",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L20",
        "overlap_fc",
        "Gsum"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L22",
        "L1",
        "L3"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L22",
        "L3",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L22",
        "L3",
        "L17"
       ]
      },
      {
       "weight": 43,
       "atoms": [
        "L22",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L22",
        "L17",
        "overlap_fc"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L22",
        "L19",
        "L21"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L22",
        "L21",
        "QUAD_984"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L24",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L24",
        "L11",
        "L11"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L24",
        "L11",
        "overlap_fc"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L24",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L24",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L1",
        "L3",
        "Gsum"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L1",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L3",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L3",
        "L15",
        "span_BC_hi"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L5",
        "L15",
        "span_AH_hi"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L15",
        "span_DE_hi"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L5",
        "L15",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L7",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L9",
        "L11",
        "L19"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L9",
        "L11",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L9",
        "L19",
        "L21"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L11",
        "L11",
        "Gsum"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L11",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L13",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L13",
        "L15",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L13",
        "L15",
        "span_AH_hi"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L15",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L15",
        "L17",
        "overlap_bf"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L15",
        "L23",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L15",
        "L23",
        "Gsum"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L15",
        "L25",
        "overlap_fc"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L15",
        "overlap_bf",
        "Gsum"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L17",
        "AREA_LO_ADE",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L17",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L19",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L19",
        "L21",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L19",
        "L25",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L25",
        "overlap_fc",
        "Gsum"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_CDE",
        "L20"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDE",
        "L1"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_DEF",
        "L20"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_DEF",
        "L9"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_EFH",
        "L18"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_CDO",
        "L6"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_DEO",
        "L22"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_EFO"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_EFO",
        "L4"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_EFO",
        "L10"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EFO",
        "L18"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_EFO",
        "L20"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "AREA_LO_EFO",
        "L22"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_EFO",
        "L24"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_EFO",
        "L9"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_EFO",
        "span_DE"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_EFO",
        "span_BC_hi"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EFO",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CHO",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CEO",
        "L2"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_HI_CEO",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ABP",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABP",
        "overlap_fc"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_BCP",
        "L15"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "AREA_LO_HOP"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_HOP",
        "L4"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_HOP",
        "L10"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_HOP",
        "L16"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_HOP",
        "L20"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_HOP",
        "L13"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_HOP",
        "L19"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_HOP",
        "span_DE"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_HOP",
        "span_BC_hi"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_ACG"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ACG",
        "L10"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_ACG",
        "L14"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ACG",
        "L18"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ACG",
        "L5"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ACG",
        "L17"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ACG",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ACG",
        "span_DE"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ACG",
        "overlap_bf"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BGH",
        "L2"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_BGH",
        "L10"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_BGH",
        "L18"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "AREA_LO_BGH",
        "L24"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BGH",
        "L17"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_BGH",
        "L21"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_DGO",
        "overlap_fc"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_COP",
        "overlap_fc"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_AGO"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_AGO",
        "L4"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_AGO",
        "L14"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_AGO",
        "L11"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_AGO",
        "span_DE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_AGO",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_AGP",
        "L3"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_BHO",
        "L24"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_BHO",
        "L11"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BHO",
        "Gsum"
       ]
      },
      {
       "weight": 82,
       "atoms": [
        "AREA_LO_BHP",
        "L17"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BHP",
        "Gsum"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_GHP",
        "L11"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_BOP",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EGO",
        "L2"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EGO",
        "L10"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_EGO",
        "L22"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_AEG",
        "L19"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "AREA_LO_AEO",
        "L10"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_AEO",
        "L12"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_AEO",
        "L9"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EGP",
        "L11"
       ]
      },
      {
       "weight": 48,
       "atoms": [
        "AREA_LO_BGP"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_BGP",
        "L4"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_BGP",
        "L10"
       ]
      },
      {
       "weight": 76,
       "atoms": [
        "AREA_LO_BGP",
        "L14"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_BGP",
        "L18"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_BGP",
        "L21"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_BGP",
        "span_BC_hi"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "AREA_LO_FGP"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_FGP",
        "L14"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_FGP",
        "L20"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_FGP",
        "L5"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_FGP",
        "L11"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_FGP",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_BFP",
        "L16"
       ]
      },
      {
       "weight": 40,
       "atoms": [
        "AREA_LO_DFO",
        "L8"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_DFO",
        "L12"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_DFO",
        "L17"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_DFO",
        "L19"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_DFO",
        "L21"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_DFO",
        "L25"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_DFO",
        "span_DE_hi"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "Central_order",
        "overlap_fc"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "LINEAR_965",
        "L16"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "LINEAR_965",
        "L9"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "LINEAR_965",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "QUAD_1112",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "QUAD_1186",
        "L15"
       ]
      }
     ],
     "sum": {
      "": "-99392593174309630927347/34878500000000000000000",
      "7": "128750541880852263361/2179906250000000000000",
      "1": "35261968803459332391/441500000000000000000",
      "1,7": "-773930563231259819/110375000000000000000",
      "6": "-621947012256247797/7900000000000000000",
      "6,7": "-78130706664570021/4937500000000000000",
      "0,1": "-5273097744235277829/88300000000000000000",
      "0,2,6": "1039339770808689/31250000000000000",
      "0,6": "4731836440781961/125000000000000000",
      "0,6,7": "1027634602129443/31250000000000000",
      "0,9": "-554505757291239/31250000000000000",
      "0": "2693852657583056337/110375000000000000000",
      "0,7": "-1640007703223307/62500000000000000",
      "0,2": "-744223272362829/31250000000000000",
      "0,5": "-2878454861408457/62500000000000000",
      "0,2,5": "-141846898184631/7812500000000000",
      "0,5,9": "213397935272217/15625000000000000",
      "1,1": "7270001572482629/250000000000000000",
      "1,4": "4211108156415789/125000000000000000",
      "1,4,9": "-3357189789816747/250000000000000000",
      "1,5": "111782594114079/3906250000000000",
      "1,5,12": "-3503525820568113/125000000000000000",
      "1,8": "-9005613363394151/1000000000000000000",
      "1,9": "1548882685893289/125000000000000000",
      "1,11": "-933978684038539/500000000000000000",
      "1,2,12": "3503525820568113/125000000000000000",
      "1,2": "568372075243581/31250000000000000",
      "1,12": "-21030347692182888071/220750000000000000000",
      "1,10": "3316267104816002421/220750000000000000000",
      "1,10,12": "12265974580998257/250000000000000000",
      "2,6": "210184764895539/12500000000000000",
      "2,6,10": "-338001757919469/15625000000000000",
      "2": "-80347062143380792311/4359812500000000000000",
      "2,7": "4649493445734951/617187500000000000",
      "2,10": "-51570248936202297/2759375000000000000",
      "3,4": "4105273713449547/500000000000000000",
      "3,5": "-148602791297861961/4937500000000000000",
      "3,6": "-5918694164440281/250000000000000000",
      "3,11": "8599913556664567/125000000000000000",
      "3,9,11": "-2416823356788349/125000000000000000",
      "3": "868844418585220467/39500000000000000000",
      "3,9": "-920647947190857641/19750000000000000000",
      "0,3": "1792281770731683/62500000000000000",
      "2,3": "1526569937551443/62500000000000000",
      "3,12": "-179850700642053/7812500000000000",
      "3,9,12": "4988786062384129/250000000000000000",
      "4,11": "-3736587965312493/125000000000000000",
      "5,5": "-3315712735692099/689843750000000000",
      "5,6": "-10067580870417/781250000000000",
      "5,6,10": "338001757919469/15625000000000000",
      "5,8": "2015497991490459/31250000000000000",
      "5,9": "2142615275631/31250000000000000",
      "5,11": "-1821597077431557/62500000000000000",
      "5": "-13519833043212235281/4359812500000000000000",
      "4,5": "2065825034480061/62500000000000000",
      "5,7": "-99444834503644113/6898437500000000000",
      "5,12": "-1870636072967087817/110375000000000000000",
      "6,9": "-647301819887919/125000000000000000",
      "6,12": "42888634667548551/500000000000000000",
      "6,10,12": "-4674996921075831/125000000000000000",
      "3,5,6": "-5270127202706121/62500000000000000",
      "4,6": "1807810717630491/62500000000000000",
      "6,11": "-6052926329541/125000000000000",
      "1,6": "-10227276193383963/125000000000000000",
      "6,10": "-1536398947118511/62500000000000000",
      "1,6,10": "6497965375893117/125000000000000000",
      "5,7,10": "45610247558337/3906250000000000",
      "8": "96557987816980907/1000000000000000000",
      "7,8": "-1991538207466577/125000000000000000",
      "2,8": "512795432594823/62500000000000000",
      "8,12": "-38796795943056907/1000000000000000000",
      "8,9": "4268070439993297/125000000000000000",
      "9,9": "9844446111933/15625000000000000",
      "9,10": "35173902116213/3906250000000000",
      "9,11": "450255822743571/31250000000000000",
      "9": "122295461453895463143/8719625000000000000000",
      "4,9": "3174493932803637/125000000000000000",
      "4,4,9": "-1538438115731157/125000000000000000",
      "7,9": "33133506212549095287/2179906250000000000000",
      "4,7,9": "172662741757473/31250000000000000",
      "6,7,9": "143606389708089/15625000000000000",
      "10,10": "86135785256157/7812500000000000",
      "10,11": "-121275008172717/31250000000000000",
      "5,10": "-5279272444680826641/217990625000000000000",
      "1,5,10": "-886828599240843/31250000000000000",
      "10": "944997408745043542539/17439250000000000000000",
      "4,10": "4536232146468687/125000000000000000",
      "2,4,10": "-406390762694133/31250000000000000",
      "7,10": "46286126581387/7812500000000000",
      "8,10": "6361636705103239/250000000000000000",
      "10,12": "-1617600098410051/62500000000000000",
      "11": "62828612622339310809/441500000000000000000",
      "7,11": "-440169657380190287/27593750000000000000",
      "8,11": "-130744978430728501/500000000000000000",
      "2,11": "-387107554816599/62500000000000000",
      "2,8,11": "1401673914193497/62500000000000000",
      "5,8,11": "1401673914193497/62500000000000000",
      "12": "-36711502424725723833/441500000000000000000",
      "4,12": "273326680599177/25000000000000000",
      "2,12": "129484301189734443/5518750000000000000",
      "2,4,12": "-1605496858759503/125000000000000000",
      "2,5,12": "182241335212641/15625000000000000",
      "7,12": "4461710590937941/125000000000000000",
      "1,7,12": "-3464068694175331/125000000000000000",
      "2,7,12": "180188911521267/15625000000000000",
      "0,8": "1612608925372809/500000000000000000",
      "0,1,8": "-43294063555682331/500000000000000000",
      "4": "-1212072295924557/250000000000000000",
      "2,4": "1382719370605713/125000000000000000",
      "0,4": "-9151011398063187/500000000000000000",
      "7,7": "57528665535583/3906250000000000",
      "3,7": "-6092148743483/1250000000000000",
      "4,7": "659100037408659/125000000000000000",
      "2,4,7": "-114769968693039/15625000000000000",
      "4,4": "-3347519764556493/500000000000000000",
      "4,4,5": "1022609119845051/125000000000000000",
      "5,5,6": "-96543318139821/488281250000000",
      "5,6,7": "95456035755927/7812500000000000",
      "1,6,7": "-5505326532146133/62500000000000000",
      "6,7,7": "-94380998476149/7812500000000000",
      "7,8,11": "-1385888095099739/62500000000000000",
      "9,12": "-1871283758539411/62500000000000000",
      "3,10": "-13499494488982551/250000000000000000",
      "2,6,12": "-1335317655837879/62500000000000000",
      "5,6,12": "-1335317655837879/62500000000000000",
      "4,5,10": "-406390762694133/15625000000000000",
      "3,5,10": "839380504598517/31250000000000000",
      "2,5": "318374102497149/15625000000000000",
      "2,9": "3534098286597/31250000000000000",
      "5,10,12": "638033712268449/31250000000000000",
      "0,10": "1028609191851381/125000000000000000",
      "7,8,9": "311161699238467/31250000000000000",
      "8,10,11": "4907312656699033/125000000000000000",
      "2,8,9": "-314705955308241/31250000000000000",
      "2,2": "-4875113729979/1953125000000000",
      "8,8": "-15187950990465757/1000000000000000000",
      "6,8": "4341276330425811/62500000000000000",
      "0,6,8": "-16500899499434973/125000000000000000",
      "1,2,8": "-4021545859030959/125000000000000000",
      "1,1,8": "-77312810177086687/1000000000000000000",
      "1,8,12": "-55623126414077341/1000000000000000000",
      "6,7,8": "1515491369484939/62500000000000000",
      "1,8,8": "-63847382651975363/1000000000000000000",
      "1,4,6": "-16350958889355699/250000000000000000"
     },
     "upper": "-2626697087345235608559/2790280000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CA6mpp",
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "EGO-",
    "BGO+",
    "FGP+"
   ],
   "stages": [
    "other_CA_C_6:0",
    "other_CA_C_6:1",
    "other_CA_C_6:2",
    "other_CA_C_6:3",
    "other_CA_C_6:4",
    "other_CA_C_6:5",
    "Ccap_CA6:0",
    "Ccap_CA6m:0",
    "Ccap_CA6m:1",
    "Ccap_CA6m:2",
    "Ccap_CA6m:3",
    "Ccap_CA6mp:0",
    "Ccap_CA6mp:1",
    "Ccap_CA6mp:2",
    "Ccap_CA6mp:3",
    "Ccap_CA6mpp:0",
    "Ccap_CA6mpp:1",
    "Ccap_CA6mpp:2"
   ],
   "terminal": {
    "kind": "scalar",
    "stage": 17,
    "contradiction": {
     "triangle": "EGH",
     "lower": "T2980",
     "upper": "U_EGH"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CA6mpmppp",
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "EGO-",
    "BGO+",
    "FGP-",
    "BFP+",
    "FGO+",
    "CFO+"
   ],
   "stages": [
    "other_CA_C_6:0",
    "other_CA_C_6:1",
    "other_CA_C_6:2",
    "other_CA_C_6:3",
    "other_CA_C_6:4",
    "other_CA_C_6:5",
    "Ccap_CA6:0",
    "Ccap_CA6m:0",
    "Ccap_CA6m:1",
    "Ccap_CA6m:2",
    "Ccap_CA6m:3",
    "Ccap_CA6mp:0",
    "Ccap_CA6mp:1",
    "Ccap_CA6mp:2",
    "Ccap_CA6mp:3",
    "Ccap_CA6mpm:0",
    "Ccap_CA6mpm:1",
    "Ccap_CA6mpmp:0",
    "Ccap_CA6mpmp:1",
    "Ccap_CA6mpmpp:0",
    "Ccap_CA6mpmppp:0",
    "Ccap_CA6mpmppp:1",
    "Ccap_CA6mpmppp:2",
    "Ccap_CA6mpmppp:3"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 23,
    "sum": {
     "factors": [
      {
       "weight": 23,
       "atoms": [
        "L0",
        "L2",
        "L5"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L0",
        "L2",
        "L9"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L0",
        "L12",
        "L15"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L0",
        "L16",
        "L5"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L5",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L0",
        "L9",
        "L13"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L2",
        "L2",
        "L1"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L2",
        "L8",
        "L9"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "L2",
        "L10",
        "L17"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L12",
        "L21"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L2",
        "L18",
        "L9"
       ]
      },
      {
       "weight": 47,
       "atoms": [
        "L2",
        "L20",
        "L9"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L2",
        "L24",
        "L15"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "L2",
        "L5",
        "L17"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L2",
        "L5",
        "L25"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "L2",
        "L9",
        "L17"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L2",
        "L9",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L13",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L2",
        "L17",
        "L21"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L17",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L2",
        "L17",
        "overlap_eh"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L4",
        "L24",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L6",
        "L10",
        "L21"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L6",
        "L12",
        "L5"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L6",
        "L16",
        "L19"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L8",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 65,
       "atoms": [
        "L10",
        "L12",
        "L17"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "L10",
        "L16",
        "L15"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "L10",
        "L16",
        "L17"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L10",
        "L20",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L10",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L10",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L10",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L10",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L10",
        "L15",
        "L25"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L10",
        "L15",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L10",
        "L21",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L10",
        "AREA_HI_ADH",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 71,
       "atoms": [
        "L12",
        "L12",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L12",
        "L14",
        "L15"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L12",
        "L16",
        "L5"
       ]
      },
      {
       "weight": 79,
       "atoms": [
        "L12",
        "L16",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "L12",
        "L1",
        "L5"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L12",
        "L1",
        "L9"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L12",
        "L9",
        "L21"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L12",
        "L9",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L12",
        "L9",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L12",
        "L21",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L12",
        "L21",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L12",
        "AREA_HI_ADE",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L14",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L16",
        "L5",
        "L5"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L16",
        "L5",
        "L9"
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
       "weight": 19,
       "atoms": [
        "L16",
        "L5",
        "L17"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L16",
        "L11",
        "L21"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "L16",
        "L21",
        "overlap_fc"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L18",
        "L3",
        "L15"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L18",
        "L9",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L18",
        "L15",
        "L17"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L18",
        "L15",
        "L25"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L18",
        "L15",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "L20",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L20",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L20",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L1",
        "L5",
        "L5"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L1",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L3",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L3",
        "L5",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L3",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L3",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L5",
        "L9",
        "L25"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L5",
        "L9",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L5",
        "L9",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L5",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L5",
        "L15",
        "L17"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L5",
        "L15",
        "L25"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L15",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "L5",
        "L21",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L5",
        "L21",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L5",
        "L21",
        "overlap_eh"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L5",
        "AREA_HI_ADE",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L5",
        "AREA_HI_ADE",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L5",
        "AREA_HI_ADH",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L9",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L15",
        "L23",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L15",
        "AREA_LO_BCF",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L21",
        "L25",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L21",
        "AREA_HI_BCF",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ABH",
        "L0"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ABH",
        "L10"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_ABH",
        "L12"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABH",
        "L22"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_ABH",
        "span_AH_hi"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ABH",
        "overlap_bf"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_ABH",
        "overlap_eh"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_HI_BEF",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CDE"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_CDE",
        "L2"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDE",
        "L16"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_CDE",
        "L9"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_CDE",
        "L21"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_CDE",
        "span_BC"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_CDE",
        "span_DE_hi"
       ]
      },
      {
       "weight": 53,
       "atoms": [
        "AREA_LO_ABG",
        "L4"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_ABG",
        "L7"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABG",
        "L11"
       ]
      },
      {
       "weight": 85,
       "atoms": [
        "AREA_LO_ABG",
        "L13"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_ABG",
        "L17"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_ABG",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_ABG",
        "span_DE"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ABG",
        "span_BC"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "AREA_LO_ABG",
        "span_DE_hi"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_CDG",
        "L5"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CDG",
        "L7"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDG",
        "L11"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_CDG",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDG",
        "span_AH_hi"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_CDG",
        "span_DE_hi"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDG",
        "overlap_bf"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDG",
        "overlap_eh"
       ]
      },
      {
       "weight": 65,
       "atoms": [
        "AREA_LO_EFG",
        "L12"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_EFG",
        "L16"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_EFG",
        "L19"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_HI_BCO",
        "L5"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_CHO",
        "L8"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CHO",
        "L24"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_CHO",
        "L23"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CHP",
        "L14"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_CHP",
        "L18"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_CHP",
        "L21"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_CHP",
        "span_DE"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CHP",
        "span_BC"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_CHP",
        "span_AH_hi"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_CHP",
        "span_DE_hi"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CHP",
        "overlap_bf"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_CHP",
        "overlap_ae"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_HOP",
        "L4"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "AREA_LO_HOP",
        "span_DE"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_HOP",
        "span_BC"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_HOP",
        "span_AH_hi"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "AREA_LO_HOP",
        "span_DE_hi"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_HOP",
        "overlap_ae"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_ACG"
       ]
      },
      {
       "weight": 85,
       "atoms": [
        "AREA_LO_ACG",
        "L12"
       ]
      },
      {
       "weight": 98,
       "atoms": [
        "AREA_LO_ACG",
        "L3"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ACG",
        "L11"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_ACG",
        "L17"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_ACG",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_ACG",
        "span_AH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ACG",
        "span_DE_hi"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_ACG",
        "overlap_eh"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_COP",
        "L15"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_COP",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_EOP",
        "L5"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EOP",
        "L9"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_EOP",
        "span_BC"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_EOP",
        "span_BC_hi"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EOP",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_FOP",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EGH",
        "L0"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_EGH",
        "L8"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_EGH",
        "L10"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_EGH",
        "L20"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EGH",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_EGO"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_EGO",
        "L4"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_EGO",
        "L14"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_EGO",
        "L17"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EGO",
        "span_BC"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_EGO",
        "overlap_bf"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_EGO",
        "overlap_eh"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_BEO",
        "L13"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_BEO",
        "L23"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_BGO",
        "L17"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_BGO",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_BFP",
        "L20"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_BFP",
        "L15"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_BFG",
        "L9"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "AREA_LO_FGO",
        "L14"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "AREA_LO_FGO",
        "L16"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_FGO",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "AREA_LO_FGO",
        "span_DE"
       ]
      },
      {
       "weight": 95,
       "atoms": [
        "AREA_LO_FGO",
        "span_DE_hi"
       ]
      },
      {
       "weight": 47,
       "atoms": [
        "AREA_LO_CFO"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_CFO",
        "L12"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_CFO",
        "L14"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "AREA_LO_CFO",
        "L17"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_CFO",
        "L25"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_CFO",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CFO",
        "span_DE"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CFO",
        "overlap_eh"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_BEG",
        "L2"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "AREA_LO_BEG",
        "L10"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_BEG",
        "L12"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_BEG",
        "L9"
       ]
      },
      {
       "weight": 47,
       "atoms": [
        "AREA_LO_BEG",
        "L21"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BEG",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_BEG",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_BEG",
        "overlap_eh"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "QUAD_1248",
        "L5"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "QUAD_1272",
        "L10"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "QUAD_1272",
        "L18"
       ]
      }
     ],
     "sum": {
      "0,1": "4383307408369349/493750000000000000",
      "0,6": "-41084083492399557/4937500000000000000",
      "0,8": "-620836570209873/62500000000000000",
      "0": "-1279182360272866421/19750000000000000000",
      "0,7": "-163881249119959/25000000000000000",
      "0,0": "129019877617051/7812500000000000",
      "0,2": "-2840544704461119/19750000000000000000",
      "0,4": "1224846445157621/62500000000000000",
      "0,4,6": "-551052014436131/31250000000000000",
      "1,1": "-127871344872199/125000000000000000",
      "1,4": "2531941816545791/250000000000000000",
      "1,4,4": "426974444049179/62500000000000000",
      "1,5": "2910080843151001/500000000000000000",
      "1,5,8": "584083016994891/250000000000000000",
      "1,6": "-1764440553096507/500000000000000000",
      "1,6,10": "165154951959093/31250000000000000",
      "1,9": "2147695835712979/250000000000000000",
      "1,4,9": "1400225274397183/250000000000000000",
      "1,10": "-282104900110467/31250000000000000",
      "1,12": "-107760506977347/62500000000000000",
      "1": "-286666067723416157/19750000000000000000",
      "1,8": "1879425688245033/1975000000000000000",
      "1,2": "1881986594643717/1000000000000000000",
      "1,2,8": "-385815211514853/500000000000000000",
      "1,2,12": "529795764698991/250000000000000000",
      "1,4,8": "-346213131216537/125000000000000000",
      "1,7": "-607820288289426149/79000000000000000000",
      "1,4,7": "1339910012374843/250000000000000000",
      "1,3": "-268457257634623/250000000000000000",
      "1,4,6": "-586886311254997/5000000000000000",
      "1,3,8": "762197043526773/250000000000000000",
      "2,12": "-198104505930655359/4937500000000000000",
      "2,7,12": "1491923044027563/250000000000000000",
      "3,5": "-56407971096793/31250000000000000",
      "3,6": "335528950370164369/19750000000000000000",
      "3,8": "-664750633187937/50000000000000000",
      "3,8,9": "2242990736313909/250000000000000000",
      "4": "2172252564887494219/19750000000000000000",
      "4,7": "1566939329634861/125000000000000000",
      "2,4": "47421510911186737/4937500000000000000",
      "2,4,7": "1339910012374843/250000000000000000",
      "5,6": "418570983252613/25000000000000000",
      "5,8": "-363476790402525183/19750000000000000000",
      "5,10": "48594189951355401/1234375000000000000",
      "5,11": "-4654193117473/100000000000000",
      "5": "-68957561881553903/39500000000000000000",
      "5,7": "275403718416351/250000000000000000",
      "4,5": "-17060714017191/1562500000000000",
      "5,12": "-1266744014941419/125000000000000000",
      "2,5": "5726409682504391/500000000000000000",
      "2,5,7": "2260511263046449/500000000000000000",
      "0,5": "1099307486478451/62500000000000000",
      "0,1,5": "-753715331916539/62500000000000000",
      "6,6": "33577569358041/62500000000000000",
      "4,6,6": "723886150205959/62500000000000000",
      "6,7": "-7786431712834481/500000000000000000",
      "6,8": "-889051521236097/50000000000000000",
      "2,6,8": "-475878007031991/250000000000000000",
      "1,6,8": "475878007031991/250000000000000000",
      "6": "962754495443203273/39500000000000000000",
      "2,6": "73620371216757/250000000000000000",
      "4,6": "-271918649333123/25000000000000000",
      "6,10": "-13763619351813681/617187500000000000",
      "4,6,10": "148202588563497/7812500000000000",
      "4,4,6": "-526645247319113/31250000000000000",
      "3,4,6": "1159422951647077/62500000000000000",
      "2,6,10": "-165154951959093/31250000000000000",
      "7": "5664338976724436491/79000000000000000000",
      "7,9": "-39669859528842837/79000000000000000000",
      "7,7": "-39458595889351331/1000000000000000000",
      "8": "-425659648616982051/39500000000000000000",
      "2,8": "-9627686147035101/1975000000000000000",
      "4,8": "2025970684790637/125000000000000000",
      "2,5,8": "-584083016994891/250000000000000000",
      "8,8": "-591300756501867/250000000000000000",
      "8,10": "-331766456407713/7812500000000000",
      "5,8,10": "147494690870391/15625000000000000",
      "9": "-745381698008737683/9875000000000000000",
      "2,9": "-2111220691227023/250000000000000000",
      "4,9": "-7672945251709413/250000000000000000",
      "2,4,9": "-1400225274397183/250000000000000000",
      "8,9": "172136672244615021/39500000000000000000",
      "9,12": "640161189238799991/19750000000000000000",
      "10": "-184561926577118631/4937500000000000000",
      "7,10": "-480157238555757/31250000000000000",
      "2,10": "129514449469869/12500000000000000",
      "10,11": "-241126905151938771/4937500000000000000",
      "": "-6580056882528789251/3950000000000000000",
      "2": "154091106035990147/9875000000000000000",
      "2,2": "654516020023389/1000000000000000000",
      "2,7": "1425793519588288123/79000000000000000000",
      "1,2,7": "-1493177520502367/1000000000000000000",
      "3": "-415264449434143453/39500000000000000000",
      "2,3": "23962479544829559/1580000000000000000",
      "11": "-285481786092777377/1580000000000000000",
      "7,11": "-547902826187179099/79000000000000000000",
      "1,11": "4029744853346361/200000000000000000",
      "1,7,11": "6548791506696299/1000000000000000000",
      "12": "-778914034241510643/4937500000000000000",
      "4,12": "-347132254877499/6250000000000000",
      "2,2,4": "475814521717951/250000000000000000",
      "7,8": "1329752844492093/50000000000000000",
      "7,12": "1933533297290049/25000000000000000",
      "2,2,7": "1493177520502367/1000000000000000000",
      "4,10": "-86634227820231/3906250000000000",
      "3,10": "471731743084401/15625000000000000",
      "2,4,10": "-120154350923451/15625000000000000",
      "4,4": "-62812546551027/3125000000000000",
      "3,4": "-261782704647529/125000000000000000",
      "3,3": "-336138423072547/31250000000000000",
      "2,3,4": "-939995134708591/125000000000000000",
      "2,3,3": "-2069423277178739/62500000000000000",
      "2,7,7": "-4204839109891931/1000000000000000000",
      "4,11": "-6546477417247157/125000000000000000",
      "2,11": "-22183177530303701/1000000000000000000",
      "2,7,11": "-6548791506696299/1000000000000000000",
      "10,12": "986366547399429/15625000000000000",
      "0,1,6": "-1842254643187317/31250000000000000",
      "0,11": "-2913936158867663/250000000000000000",
      "0,1,11": "-2183543450904889/250000000000000000",
      "2,3,8": "762197043526773/250000000000000000",
      "0,3": "3124688788540511/125000000000000000",
      "0,1,3": "-983558126040517/125000000000000000",
      "0,3,6": "1213155072301399/62500000000000000",
      "0,5,6": "-2788976737959099/62500000000000000",
      "1,8,8": "-11509833644121051/250000000000000000",
      "0,6,8": "-12064185674533611/62500000000000000",
      "0,0,6": "-4036129195353479/15625000000000000",
      "7,7,11": "18441621489600407/1000000000000000000",
      "4,7,11": "-5876589480014071/250000000000000000",
      "2,2,12": "-529795764698991/250000000000000000",
      "3,9": "-212176343402523/12500000000000000",
      "1,4,11": "-2086831643126347/31250000000000000",
      "1,5,12": "-802054194342177/125000000000000000",
      "2,8,9": "1135375625904549/500000000000000000",
      "1,8,9": "-1135375625904549/250000000000000000",
      "5,10,12": "-202537536640677/781250000000000",
      "4,5,10": "-1273305965874579/7812500000000000",
      "3,5,8": "-1153884905107131/25000000000000000",
      "1,1,4": "-475814521717951/15625000000000000",
      "1,4,5": "-15126979534995237/125000000000000000",
      "1,3,4": "-939995134708591/62500000000000000"
     },
     "upper": "-14556169988501806467/19750000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CA6mpmppmpp",
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "EGO-",
    "BGO+",
    "FGP-",
    "BFP+",
    "FGO+",
    "CFO-",
    "AFP+",
    "DHO+"
   ],
   "stages": [
    "other_CA_C_6:0",
    "other_CA_C_6:1",
    "other_CA_C_6:2",
    "other_CA_C_6:3",
    "other_CA_C_6:4",
    "other_CA_C_6:5",
    "Ccap_CA6:0",
    "Ccap_CA6m:0",
    "Ccap_CA6m:1",
    "Ccap_CA6m:2",
    "Ccap_CA6m:3",
    "Ccap_CA6mp:0",
    "Ccap_CA6mp:1",
    "Ccap_CA6mp:2",
    "Ccap_CA6mp:3",
    "Ccap_CA6mpm:0",
    "Ccap_CA6mpm:1",
    "Ccap_CA6mpmp:0",
    "Ccap_CA6mpmp:1",
    "Ccap_CA6mpmpp:0",
    "Ccap_CA6mpmppm:0",
    "Ccap_CA6mpmppm:1",
    "Ccap_CA6mpmppmp:0",
    "Ccap_CA6mpmppmp:1",
    "Ccap_CA6mpmppmp:2",
    "Ccap_CA6mpmppmp:3",
    "Ccap_CA6mpmppmpp:0",
    "Ccap_CA6mpmppmpp:1"
   ],
   "terminal": {
    "kind": "box",
    "stage": 27,
    "contradiction": {
     "factor": 160,
     "target": "d",
     "old": [
      "109601/200000",
      "672733/1000000"
     ],
     "lines": [
      [
       "208357/500000",
       "-10571259669/31250000000"
      ],
      [
       "24279/50000",
       "-314267017/781250000"
      ],
      [
       "208357/500000",
       "-296909/1000000"
      ],
      [
       "24279/50000",
       "-14631/40000"
      ],
      [
       "208357/500000",
       "-11092353419/31250000000"
      ],
      [
       "24279/50000",
       "-1309177443/3125000000"
      ],
      [
       "208357/500000",
       "-19599/62500"
      ],
      [
       "24279/50000",
       "-7649/20000"
      ]
     ]
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CA6mpmppmpmp",
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "EGO-",
    "BGO+",
    "FGP-",
    "BFP+",
    "FGO+",
    "CFO-",
    "AFP+",
    "DHO-",
    "ADG+"
   ],
   "stages": [
    "other_CA_C_6:0",
    "other_CA_C_6:1",
    "other_CA_C_6:2",
    "other_CA_C_6:3",
    "other_CA_C_6:4",
    "other_CA_C_6:5",
    "Ccap_CA6:0",
    "Ccap_CA6m:0",
    "Ccap_CA6m:1",
    "Ccap_CA6m:2",
    "Ccap_CA6m:3",
    "Ccap_CA6mp:0",
    "Ccap_CA6mp:1",
    "Ccap_CA6mp:2",
    "Ccap_CA6mp:3",
    "Ccap_CA6mpm:0",
    "Ccap_CA6mpm:1",
    "Ccap_CA6mpmp:0",
    "Ccap_CA6mpmp:1",
    "Ccap_CA6mpmpp:0",
    "Ccap_CA6mpmppm:0",
    "Ccap_CA6mpmppm:1",
    "Ccap_CA6mpmppmp:0",
    "Ccap_CA6mpmppmp:1",
    "Ccap_CA6mpmppmp:2",
    "Ccap_CA6mpmppmp:3",
    "Ccap_CA6mpmppmpm:0",
    "Ccap_CA6mpmppmpm:1",
    "Ccap_CA6mpmppmpmp:0",
    "Ccap_CA6mpmppmpmp:1",
    "Ccap_CA6mpmppmpmp:2",
    "Ccap_CA6mpmppmpmp:3"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 31,
    "sum": {
     "factors": [
      {
       "weight": 43,
       "atoms": [
        "L0",
        "L2",
        "L5"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L0",
        "L2",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L0",
        "L10",
        "L13"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L11",
        "L21"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "L0",
        "L15",
        "span_BC"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L2",
        "L2",
        "L17"
       ]
      },
      {
       "weight": 76,
       "atoms": [
        "L2",
        "L6",
        "L17"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L2",
        "L8",
        "L9"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L2",
        "L10",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L14",
        "L11"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "L2",
        "L16",
        "L15"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L2",
        "L9",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L2",
        "L13",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "L2",
        "L17",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L21",
        "L25"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L4",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "L4",
        "L9",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L6",
        "L8",
        "L5"
       ]
      },
      {
       "weight": 43,
       "atoms": [
        "L6",
        "L16",
        "L5"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "L6",
        "L3",
        "L15"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L6",
        "L5",
        "L5"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L6",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L6",
        "L5",
        "overlap_bf"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L6",
        "L11",
        "L13"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L8",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L10",
        "L12",
        "L15"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L10",
        "L20",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L10",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L10",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L10",
        "L15",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L10",
        "L15",
        "span_BC"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L10",
        "L21",
        "L25"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L12",
        "L14",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L12",
        "L16",
        "L5"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L12",
        "L16",
        "L21"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L12",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L16",
        "L18",
        "L15"
       ]
      },
      {
       "weight": 72,
       "atoms": [
        "L16",
        "L5",
        "L17"
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
       "weight": 21,
       "atoms": [
        "L16",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L16",
        "L13",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "L16",
        "L15",
        "span_BC"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L16",
        "L15",
        "overlap_fc"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "L16",
        "L17",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L18",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L20",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L20",
        "L13",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L20",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L22",
        "L15",
        "L21"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L1",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L3",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L3",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L5",
        "L15",
        "L17"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L5",
        "L15",
        "L21"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L5",
        "L15",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L5",
        "L15",
        "overlap_ae"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L21",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L9",
        "L11",
        "L19"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L9",
        "L13",
        "L21"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L9",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L9",
        "L17",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L9",
        "L19",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L13",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 50,
       "atoms": [
        "L13",
        "L15",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L13",
        "L15",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L13",
        "L15",
        "span_BC"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L15",
        "L19",
        "overlap_bf"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L15",
        "AREA_HI_ADH",
        "overlap_bf"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L17",
        "L17",
        "overlap_fc"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L17",
        "L21",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L17",
        "overlap_fc",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L21",
        "L25",
        "overlap_bf"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_HI_AEF",
        "L15"
       ]
      },
      {
       "weight": 50,
       "atoms": [
        "AREA_LO_BCD",
        "L12"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_BCD",
        "L1"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BCD",
        "L5"
       ]
      },
      {
       "weight": 56,
       "atoms": [
        "AREA_LO_BCD",
        "L17"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_BCD",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_BCD",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_BCD",
        "overlap_eh"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "AREA_LO_EFH",
        "L0"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EFH",
        "L2"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EFH",
        "L6"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_EFH",
        "L12"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_EFH",
        "L17"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_EFH",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EFH",
        "L23"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EFH",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EFH",
        "span_BC"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_EFH",
        "span_AH_hi"
       ]
      },
      {
       "weight": 36,
       "atoms": [
        "AREA_LO_EFH",
        "overlap_ae"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_ABG",
        "L6"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "AREA_LO_ABG",
        "L14"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "AREA_LO_ABG",
        "L16"
       ]
      },
      {
       "weight": 43,
       "atoms": [
        "AREA_LO_ABG",
        "L5"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_ABG",
        "L13"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ABG",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 52,
       "atoms": [
        "AREA_LO_ABG",
        "span_BC"
       ]
      },
      {
       "weight": 55,
       "atoms": [
        "AREA_LO_ABG",
        "span_BC_hi"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CDG",
        "L8"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "AREA_LO_CDG",
        "L16"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_CDG",
        "L3"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CDG",
        "L5"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CDG",
        "L13"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_CDG",
        "L15"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "AREA_LO_CDG",
        "span_AH_hi"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CDG",
        "overlap_bf"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_CDG",
        "overlap_ae"
       ]
      },
      {
       "weight": 60,
       "atoms": [
        "AREA_LO_CGH",
        "L0"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CGH",
        "L2"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CGH",
        "L21"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EFO",
        "L14"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EFO",
        "L17"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EFO",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EFO",
        "span_AH"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "AREA_LO_EFO",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_HOP",
        "L11"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_HOP",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EHP",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EOP",
        "L2"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EOP",
        "span_BC"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EOP",
        "overlap_bf"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_CGO",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CGP",
        "L21"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_EHO",
        "L16"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_EGH",
        "L0"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "AREA_LO_EGH",
        "L6"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_EGH",
        "L16"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EGH",
        "L13"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_EGH",
        "L21"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "AREA_LO_EGH",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "AREA_LO_EGH",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_EGH",
        "span_BC"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_EGH",
        "overlap_bf"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "AREA_LO_EGH",
        "overlap_ae"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_GHP",
        "L21"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_EGO",
        "L17"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EGO",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EGO",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EGO",
        "span_DE_hi"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_EGO",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_HI_AFG",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CFO",
        "L14"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CFO",
        "L24"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CFO",
        "L1"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_CFO",
        "L17"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "AREA_LO_CFO",
        "overlap_eh"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_ADG",
        "L12"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ADG",
        "L14"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_ADG",
        "L17"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_ADG",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_ADG",
        "span_DE"
       ]
      },
      {
       "weight": 52,
       "atoms": [
        "AREA_LO_ADG",
        "span_BC"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_ADG",
        "overlap_bf"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BEG",
        "L12"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BEG",
        "L1"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "AREA_LO_BEG",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "Central_order",
        "L16"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "Central_order",
        "L20"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "Central_order",
        "L13"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "Central_order",
        "L15"
       ]
      }
     ],
     "sum": {
      "0,1": "-272278169677/31250000000000",
      "0,1,2": "-10691557113339/2000000000000000",
      "0,1,1": "2237679700447/800000000000000",
      "0,5": "4045399003772559/500000000000000000",
      "0": "17406579488729243/500000000000000000",
      "0,10": "3123164294176583/125000000000000000",
      "0,2": "2980029542337/1000000000000000",
      "0,7": "-816761274316707/500000000000000000",
      "1,1": "-943472828901/1600000000000000",
      "1,1,8": "-909953199141/800000000000000",
      "1,3": "33839714381/32000000000000",
      "1,3,8": "-4219601897049/2000000000000000",
      "1,4": "-102658769233203/8000000000000000",
      "1,5": "-148710148946811/40000000000000000",
      "1,7": "-254353383812179/40000000000000000",
      "1,8": "6030884606187/500000000000000",
      "1": "-131970973731091/40000000000000000",
      "1,6": "178121261595739/10000000000000000",
      "1,3,6": "-19960088371993/4000000000000000",
      "1,4,8": "23248695959979/20000000000000000",
      "2": "288624253573466577/7900000000000000000",
      "2,5": "-146433682350657/100000000000000000",
      "2,4": "65653196434929/20000000000000000",
      "2,10": "-390488975519751/25000000000000000",
      "3,4": "69625746480301/200000000000000000",
      "3,8": "-97225083412611/25000000000000000",
      "2,3,8": "20161113616413/10000000000000000",
      "3": "271999659208865577/15800000000000000000",
      "3,7": "212107826766847/200000000000000000",
      "2,3": "6294752079594957/1580000000000000000",
      "2,3,7": "-61632928924677/20000000000000000",
      "3,5": "-73599666161373/200000000000000000",
      "3,6": "-80352171499485963/7900000000000000000",
      "3,5,6": "-1067052339806607/20000000000000000",
      "4": "210034117834281/200000000000000000",
      "4,9": "-29374376074489557/1975000000000000000",
      "4,4": "-8177241340794093/1000000000000000000",
      "5,6": "6300869881867407/500000000000000000",
      "5,10": "4012551824903883/125000000000000000",
      "5": "215524016881645167/15800000000000000000",
      "5,7": "-328805437670222031/39500000000000000000",
      "4,5": "-1721981498542051203/79000000000000000000",
      "5,9": "-1048615691381811/62500000000000000",
      "5,7,9": "1872680807798469/250000000000000000",
      "5,12": "-6018871508318403/125000000000000000",
      "6,7": "-1446479389143327/250000000000000000",
      "6,7,7": "-782457556431397/500000000000000000",
      "6,8": "731919089852643/125000000000000000",
      "6": "400052359279476057/7900000000000000000",
      "2,6": "81300521598219/12500000000000000",
      "4,6": "-100499774225445749/9875000000000000000",
      "8,9": "-3731338588888869/617187500000000000",
      "7,8,9": "-154496122181499/125000000000000000",
      "8": "149703265115349813/9875000000000000000",
      "8,8": "387644296990797/250000000000000000",
      "2,8": "-6308699478436719/987500000000000000",
      "5,8": "-7350387530187807/500000000000000000",
      "2,5,8": "232426347264783/50000000000000000",
      "4,8": "2464586035705941/500000000000000000",
      "4,8,9": "292766748193941/125000000000000000",
      "7,8": "164229600038091/62500000000000000",
      "0,8": "-7387167690861/7812500000000000",
      "0,6,8": "205893708213039/125000000000000000",
      "2,7,8": "-58618873789497/50000000000000000",
      "5,7,8": "-655869891978819/500000000000000000",
      "9": "-52488603759325431/19750000000000000000",
      "7,9": "378038571635471/31250000000000000",
      "2,9": "-8300441609613/1000000000000000",
      "10": "-322396210360609699/9875000000000000000",
      "7,10": "-983202450501431/125000000000000000",
      "6,10": "-43358049854457261/2468750000000000000",
      "6,7,10": "-781809346980739/125000000000000000",
      "11": "-29127909972189159/500000000000000000",
      "10,11": "2370358694519503/125000000000000000",
      "7,11": "-1345240733974607/500000000000000000",
      "": "-11290395582690884957/19750000000000000000",
      "7": "-946065656888162183/79000000000000000000",
      "2,7": "474873383727117/100000000000000000",
      "1,2": "-33110678169387/2000000000000000",
      "1,6,7": "58034388544517/20000000000000000",
      "2,7,10": "179050620093831/25000000000000000",
      "4,7": "-192647808630183/62500000000000000",
      "2,4,7": "339578296875567/100000000000000000",
      "4,10": "1727995430290731/125000000000000000",
      "4,7,9": "894993824560189/250000000000000000",
      "1,9": "1737233360649/400000000000000",
      "6,6": "-1258040963605349/250000000000000000",
      "3,6,7": "-269114956931513/100000000000000000",
      "7,7": "717754713806563/250000000000000000",
      "0,6": "-789089355075021/125000000000000000",
      "5,8,8": "-1501818483776877/250000000000000000",
      "8,10": "-953461950268149/62500000000000000",
      "2,2": "43184610711153/10000000000000000",
      "5,5": "2600552235462741/500000000000000000",
      "5,5,8": "-2600552235462741/500000000000000000",
      "12": "-28946827382526557/500000000000000000",
      "10,12": "256630625591593/25000000000000000",
      "0,3": "-209659825372591/50000000000000000",
      "0,1,3": "10376486964283/4000000000000000",
      "1,1,3": "-956741015681/80000000000000",
      "0,4": "-843384349561613/250000000000000000",
      "4,11": "-973150075525979/250000000000000000",
      "0,3,6": "-216480315365699/50000000000000000",
      "0,1,8": "-226987971820449/10000000000000000",
      "1,2,8": "-4347725278617/62500000000000",
      "1,6,8": "-56951921068119/2500000000000000",
      "0,1,6": "-1914034871841631/10000000000000000",
      "0,4,6": "1192739304809129/250000000000000000",
      "3,6,8": "-3785367086086971/25000000000000000",
      "3,6,6": "-3747770913539961/50000000000000000",
      "0,2,8": "-330077625573717/3125000000000000",
      "0,9": "-114493585167813/15625000000000000",
      "0,4,9": "-719947146752047/125000000000000000",
      "9,12": "8057555541725421/125000000000000000",
      "2,12": "-395254962049527/6250000000000000",
      "2,10,12": "320836578502743/12500000000000000",
      "8,8,9": "-151614433725993/31250000000000000",
      "0,8,9": "-124279117125177/31250000000000000"
     },
     "upper": "-3753494447006281629/79000000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CA6mpmppmpmmp",
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "EGO-",
    "BGO+",
    "FGP-",
    "BFP+",
    "FGO+",
    "CFO-",
    "AFP+",
    "DHO-",
    "ADG-",
    "AEO+"
   ],
   "stages": [
    "other_CA_C_6:0",
    "other_CA_C_6:1",
    "other_CA_C_6:2",
    "other_CA_C_6:3",
    "other_CA_C_6:4",
    "other_CA_C_6:5",
    "Ccap_CA6:0",
    "Ccap_CA6m:0",
    "Ccap_CA6m:1",
    "Ccap_CA6m:2",
    "Ccap_CA6m:3",
    "Ccap_CA6mp:0",
    "Ccap_CA6mp:1",
    "Ccap_CA6mp:2",
    "Ccap_CA6mp:3",
    "Ccap_CA6mpm:0",
    "Ccap_CA6mpm:1",
    "Ccap_CA6mpmp:0",
    "Ccap_CA6mpmp:1",
    "Ccap_CA6mpmpp:0",
    "Ccap_CA6mpmppm:0",
    "Ccap_CA6mpmppm:1",
    "Ccap_CA6mpmppmp:0",
    "Ccap_CA6mpmppmp:1",
    "Ccap_CA6mpmppmp:2",
    "Ccap_CA6mpmppmp:3",
    "Ccap_CA6mpmppmpm:0",
    "Ccap_CA6mpmppmpm:1",
    "Ccap_CA6mpmppmpmm:0",
    "Ccap_CA6mpmppmpmm:1",
    "Ccap_CA6mpmppmpmm:2",
    "Ccap_CA6mpmppmpmm:3",
    "Ccap_CA6mpmppmpmmp:0",
    "Ccap_CA6mpmppmpmmp:1",
    "Ccap_CA6mpmppmpmmp:2",
    "Ccap_CA6mpmppmpmmp:3"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 35,
    "sum": {
     "factors": [
      {
       "weight": 2,
       "atoms": [
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L0",
        "L2",
        "L5"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "L0",
        "L2",
        "L15"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L0",
        "L2",
        "L19"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L0",
        "L2",
        "L25"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L2",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L0",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L0",
        "L22",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L0",
        "L5",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L0",
        "L11",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L0",
        "L13",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L13",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "L0",
        "L15",
        "span_BC"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L0",
        "L15",
        "overlap_fc"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L0",
        "L19",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L19",
        "Gsum"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L2",
        "L1"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L10",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L20",
        "L1"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L2",
        "L22",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L3",
        "L17"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L5",
        "L25"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L2",
        "L17",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L17",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L17",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L17",
        "span_DE"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L2",
        "L19",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L4",
        "L4",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L4",
        "L16",
        "L19"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L4",
        "L20",
        "L25"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L4",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L4",
        "L22",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L4",
        "L1",
        "L25"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L4",
        "L1",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L4",
        "L3",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L4",
        "L11",
        "L25"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L4",
        "L17",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L4",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L4",
        "L19",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L4",
        "L21",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L4",
        "L21",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L4",
        "L21",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L4",
        "L25",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L4",
        "AREA_LO_AEH",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L8",
        "L22",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L10",
        "L10",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L10",
        "L16",
        "L15"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L10",
        "L24",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L10",
        "L5",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L10",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L10",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L10",
        "L15",
        "span_BC"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L10",
        "L15",
        "overlap_fc"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L10",
        "L21",
        "L25"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L10",
        "L21",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L12",
        "L1",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L12",
        "L7",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L18",
        "L19",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L18",
        "L21",
        "overlap_fc"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L20",
        "L15",
        "overlap_fc"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L22",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L22",
        "L7",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L22",
        "L15",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L22",
        "L21",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L22",
        "L21",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L22",
        "L21",
        "overlap_bf"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L22",
        "AREA_HI_ADH",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L24",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L3",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L5",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L5",
        "L15",
        "span_BC"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L5",
        "L15",
        "QUAD_1312"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L5",
        "AREA_HI_ADH",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L7",
        "L13",
        "L19"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L7",
        "L15",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L7",
        "L19",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L9",
        "L11",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L9",
        "L11",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L9",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L9",
        "AREA_LO_AEH",
        "overlap_fc"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L15",
        "L19",
        "L23"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L15",
        "L21",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L15",
        "span_DE_hi",
        "overlap_bf"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L15",
        "overlap_bf",
        "overlap_ae"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L19",
        "L25",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L19",
        "L25",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L19",
        "L25",
        "overlap_fc"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L19",
        "AREA_HI_ADH",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L19",
        "AREA_HI_ADH",
        "Gsum"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L21",
        "AREA_HI_ADE",
        "overlap_fc"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L21",
        "AREA_LO_AEH",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L21",
        "overlap_fc",
        "overlap_fc"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L23",
        "AREA_HI_ADH",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L25",
        "AREA_LO_DEH",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABH",
        "L17"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_HI_AEF",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_HI_DEF",
        "L15"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_EFH"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_EFH",
        "L24"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_EFH",
        "L1"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EFH",
        "L11"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EFH",
        "L23"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EFH",
        "span_BC"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_EFH",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABG",
        "L3"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ABG",
        "L5"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_ABG",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABG",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABG",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CGH",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABO",
        "L15"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_HI_CEO",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CHP",
        "L18"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CHP",
        "L3"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_CHP",
        "L21"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "AREA_LO_CHP",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "AREA_LO_CHP",
        "span_AH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CHP",
        "overlap_bf"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CHP",
        "overlap_ae"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_CHP",
        "QUAD_1312"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_HOP",
        "L2"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_HOP",
        "L19"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_HOP",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "AREA_LO_HOP",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_HOP",
        "span_BC"
       ]
      },
      {
       "weight": 95,
       "atoms": [
        "AREA_LO_HOP",
        "span_AH_hi"
       ]
      },
      {
       "weight": 71,
       "atoms": [
        "AREA_LO_EHP",
        "L19"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_EHP",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ACG",
        "L21"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ACG",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_EOP",
        "L0"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EOP",
        "L18"
       ]
      },
      {
       "weight": 85,
       "atoms": [
        "AREA_LO_EOP",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 85,
       "atoms": [
        "AREA_LO_EOP",
        "span_AH"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_EOP",
        "span_BC"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EOP",
        "overlap_bf"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_EOP",
        "QUAD_1312"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_FOP",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CGP",
        "L21"
       ]
      },
      {
       "weight": 59,
       "atoms": [
        "AREA_LO_EHO",
        "L22"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_GHP",
        "L21"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_BGO",
        "L4"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_HI_FGO",
        "L15"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CFO",
        "L18"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_CFO",
        "L24"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CFO",
        "L11"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_CFO",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_CFO",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_AFP",
        "L6"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_AFP",
        "L18"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_AFP",
        "L20"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_AFP",
        "L5"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_HI_AOP",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_DHO",
        "L5"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "AREA_LO_DHO",
        "L23"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_DHO",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ADG",
        "L4"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ADG",
        "L1"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_ADG",
        "L19"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ADG",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "AREA_LO_AEO"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_AEO",
        "L0"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_AEO",
        "L18"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_AEO",
        "L3"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_AEO",
        "L5"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_AEO",
        "L23"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_AEO",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_AEO",
        "overlap_bf"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_AEO",
        "QUAD_1312"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_DHP",
        "L19"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "Central_endpoint_tangent_2"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "QUAD_1124",
        "L5"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "QUAD_1124",
        "L13"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "QUAD_1124",
        "L25"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "LINEAR_1220",
        "L4"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "LINEAR_1220",
        "L19"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "LINEAR_1292",
        "L4"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "LINEAR_1292",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "NATURAL_SUPPORT_1707_ABH",
        "L15"
       ]
      }
     ],
     "sum": {
      "": "-707911482796337881164479/348785000000000000000000",
      "5": "-134854178511055107/4937500000000000000",
      "1": "-142169362725425139/24687500000000000000",
      "7": "-228119175010751880108799/6975700000000000000000000",
      "5,7": "30922776881867247/1234375000000000000",
      "1,7": "1157476852477293387/987500000000000000000",
      "0,1": "-1273319292836487/62500000000000000",
      "0,1,2": "9484287778407/976562500000000",
      "0,1,9": "535121664747579/62500000000000000",
      "0,11": "18244941464773973/500000000000000000",
      "0,7,11": "3210572824322911/500000000000000000",
      "0,4,11": "2920956029131561/250000000000000000",
      "0": "29213017333597842969/883000000000000000000",
      "0,7": "39092479528836243/1000000000000000000",
      "0,0": "-21590926770594751/1000000000000000000",
      "0,2": "6129631492389/7812500000000000",
      "0,2,7": "120947628659783/15625000000000000",
      "0,0,2": "-120947628659783/15625000000000000",
      "0,4": "1332405270237431/125000000000000000",
      "0,3": "-479573192786741/500000000000000000",
      "0,5": "784808604215259/125000000000000000",
      "0,4,5": "-924061677674889/62500000000000000",
      "0,3,5": "-924061677674889/12500000000000000",
      "0,9": "38395699366465477827/883000000000000000000",
      "0,6": "-15782341573651419/500000000000000000",
      "0,6,9": "-6772528640596887/500000000000000000",
      "0,3,6": "-4028133747258207/125000000000000000",
      "0,8": "3557944431670923/100000000000000000",
      "0,8,9": "2764898901309069/500000000000000000",
      "1,1": "2425811684517/1953125000000000",
      "1,5": "-44994926223/7812500000000",
      "1,10": "792408835578789/15625000000000000",
      "1,11": "-14316171763179/3906250000000000",
      "1,8": "-69173276175549/31250000000000000",
      "1,12": "-2750298065931/976562500000000",
      "1,2": "1267655912601/122070312500000",
      "1,9": "-1053570857462487/62500000000000000",
      "1,4": "-287849474931837/31250000000000000",
      "1,3": "-45077303563364163/6250000000000000000",
      "1,4,9": "-486849835992429/31250000000000000",
      "2,2,7": "-3278981823149/244140625000000",
      "0,2,2": "3278981823149/244140625000000",
      "2,8": "-16142760576873/3906250000000000",
      "2,10": "-454443792648651/3906250000000000",
      "2,10,12": "-5168944098279/244140625000000",
      "2,11": "164092711519477/3906250000000000",
      "2,3,11": "-79189330389283/3906250000000000",
      "2": "555692427605683/15625000000000000",
      "2,12": "19211015004317/244140625000000",
      "2,7": "-9717923498721/244140625000000",
      "2,5": "-92903922315009/1953125000000000",
      "2,9": "-342545267698893/15625000000000000",
      "2,4": "-145984000875227/3906250000000000",
      "2,3": "49434927599161/3906250000000000",
      "2,4,9": "168317516309103/7812500000000000",
      "2,4,10": "-46376201194713/1953125000000000",
      "2,3,10": "46376201194713/1953125000000000",
      "2,7,10": "-50974465129263/3906250000000000",
      "0,2,10": "50974465129263/1953125000000000",
      "2,2": "-165740748449/61035156250000",
      "4,11": "-12945477116152049/250000000000000000",
      "5,5": "7139965266603/3906250000000000",
      "5,5,10": "-97457786772021/3906250000000000",
      "5,12": "102384860739603/3906250000000000",
      "4,5": "85832470421919/6250000000000000",
      "5,11": "325904376125991/12500000000000000",
      "5,7,11": "730945984308189/62500000000000000",
      "5,10": "135094970414547/7812500000000000",
      "5,10,12": "43407317019807/1953125000000000",
      "3,5": "-21044139141441/15625000000000000",
      "4,5,10": "389454099165729/15625000000000000",
      "3,5,10": "-389454099165729/15625000000000000",
      "6,7": "9641986609729617/500000000000000000",
      "0,6,7": "-4427528731245657/500000000000000000",
      "0,0,6": "4427528731245657/250000000000000000",
      "3,6,7": "4028133747258207/250000000000000000",
      "9": "117157347487187878437/4359812500000000000000",
      "7,9": "-1988434695872574384183/34878500000000000000000",
      "9,9": "-6814604965395591/250000000000000000",
      "5,9": "362527468727697/6250000000000000",
      "10": "-5662245369383811/38574218750000000",
      "7,10": "607045002723549/15625000000000000",
      "11": "1201783626242195759/19750000000000000000",
      "7,11": "2345662007276043/395000000000000000",
      "3,11": "2421582398283257/125000000000000000",
      "10,11": "-316921834820087523/4937500000000000000",
      "7,10,11": "-1353124772200071/125000000000000000",
      "0,10,11": "1353124772200071/125000000000000000",
      "12": "45616108470787657/197500000000000000",
      "9,12": "-163504663493724189/4937500000000000000",
      "7,12": "41624233992891/3125000000000000",
      "1,2,7": "9484287778407/976562500000000",
      "4": "36606060555897723/500000000000000000",
      "3": "-2564211191278441303/50000000000000000000",
      "4,7": "-319115512530913/12500000000000000",
      "3,7": "-49458022662836897/50000000000000000000",
      "7,7": "-1581921622970615453/100000000000000000000",
      "2,4,7": "-110037281343233/7812500000000000",
      "6": "1389545258137371/100000000000000000",
      "6,9": "691195252675347/62500000000000000",
      "3,9": "26872006506403401/500000000000000000",
      "3,6": "3645876894246333/125000000000000000",
      "1,3,7": "-7320376224910437/6250000000000000000",
      "3,7,9": "6208513970943501/500000000000000000",
      "0,3,9": "-6208513970943501/500000000000000000",
      "4,9": "-4724468650136151/125000000000000000",
      "4,7,9": "-6208513970943501/250000000000000000",
      "0,2,4": "110037281343233/7812500000000000",
      "9,11": "-2649496147025553/250000000000000000",
      "0,12": "-248659936707911/3906250000000000",
      "7,7,9": "-6824096643613851/1000000000000000000",
      "0,7,9": "20472289930841553/1000000000000000000",
      "0,0,9": "-6824096643613851/1000000000000000000",
      "8": "-17510535572100111/500000000000000000",
      "7,8": "-10956240337364649/500000000000000000",
      "8,9": "-11349705000284973/500000000000000000",
      "7,8,9": "-2764898901309069/500000000000000000",
      "4,10": "-194493246193467/6250000000000000",
      "3,10": "194493246193467/6250000000000000",
      "0,10": "27628776864819/3125000000000000",
      "0,5,10": "-428069007075879/31250000000000000",
      "2,5,10": "11605275017037/488281250000000",
      "0,0,11": "-3210572824322911/500000000000000000",
      "1,2,8": "-3842720616033/488281250000000",
      "2,6": "-72985882800447/1953125000000000",
      "0,2,6": "-120033657477171/7812500000000000",
      "8,10": "-250952469546051/62500000000000000",
      "6,10": "3712558242089151/62500000000000000",
      "0,6,10": "-1866021776702577/125000000000000000",
      "4,8": "541724713053741/125000000000000000",
      "3,8": "-541724713053741/125000000000000000",
      "4,6": "3487561580010843/250000000000000000",
      "10,12": "-119497231733841/7812500000000000",
      "0,4,9": "6208513970943501/500000000000000000",
      "6,7,10": "1866021776702577/125000000000000000",
      "0,2,11": "-783369549659997/7812500000000000",
      "2,3,6": "-109205756944821/3906250000000000",
      "2,2,3": "-26848746391491/122070312500000",
      "1,7,7": "8046201564528387/12500000000000000000"
     },
     "upper": "-143383927985735667549/395000000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CA6mpmppmpmmm",
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "EGO-",
    "BGO+",
    "FGP-",
    "BFP+",
    "FGO+",
    "CFO-",
    "AFP+",
    "DHO-",
    "ADG-",
    "AEO-"
   ],
   "stages": [
    "other_CA_C_6:0",
    "other_CA_C_6:1",
    "other_CA_C_6:2",
    "other_CA_C_6:3",
    "other_CA_C_6:4",
    "other_CA_C_6:5",
    "Ccap_CA6:0",
    "Ccap_CA6m:0",
    "Ccap_CA6m:1",
    "Ccap_CA6m:2",
    "Ccap_CA6m:3",
    "Ccap_CA6mp:0",
    "Ccap_CA6mp:1",
    "Ccap_CA6mp:2",
    "Ccap_CA6mp:3",
    "Ccap_CA6mpm:0",
    "Ccap_CA6mpm:1",
    "Ccap_CA6mpmp:0",
    "Ccap_CA6mpmp:1",
    "Ccap_CA6mpmpp:0",
    "Ccap_CA6mpmppm:0",
    "Ccap_CA6mpmppm:1",
    "Ccap_CA6mpmppmp:0",
    "Ccap_CA6mpmppmp:1",
    "Ccap_CA6mpmppmp:2",
    "Ccap_CA6mpmppmp:3",
    "Ccap_CA6mpmppmpm:0",
    "Ccap_CA6mpmppmpm:1",
    "Ccap_CA6mpmppmpmm:0",
    "Ccap_CA6mpmppmpmm:1",
    "Ccap_CA6mpmppmpmm:2",
    "Ccap_CA6mpmppmpmm:3",
    "Ccap_CA6mpmppmpmmm:0",
    "Ccap_CA6mpmppmpmmm:1"
   ],
   "terminal": {
    "kind": "scalar",
    "stage": 33,
    "contradiction": {
     "triangle": "ABE",
     "lower": "T3306",
     "upper": "T3289"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CA6mpmppmm",
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "EGO-",
    "BGO+",
    "FGP-",
    "BFP+",
    "FGO+",
    "CFO-",
    "AFP-"
   ],
   "stages": [
    "other_CA_C_6:0",
    "other_CA_C_6:1",
    "other_CA_C_6:2",
    "other_CA_C_6:3",
    "other_CA_C_6:4",
    "other_CA_C_6:5",
    "Ccap_CA6:0",
    "Ccap_CA6m:0",
    "Ccap_CA6m:1",
    "Ccap_CA6m:2",
    "Ccap_CA6m:3",
    "Ccap_CA6mp:0",
    "Ccap_CA6mp:1",
    "Ccap_CA6mp:2",
    "Ccap_CA6mp:3",
    "Ccap_CA6mpm:0",
    "Ccap_CA6mpm:1",
    "Ccap_CA6mpmp:0",
    "Ccap_CA6mpmp:1",
    "Ccap_CA6mpmpp:0",
    "Ccap_CA6mpmppm:0",
    "Ccap_CA6mpmppm:1",
    "Ccap_CA6mpmppmm:0",
    "Ccap_CA6mpmppmm:1",
    "Ccap_CA6mpmppmm:2",
    "Ccap_CA6mpmppmm:3"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 25,
    "sum": {
     "factors": [
      {
       "weight": 30,
       "atoms": [
        "L0",
        "L22",
        "L11"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L0",
        "L5",
        "L25"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L0",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L0",
        "L11",
        "L21"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "L0",
        "L11",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L0",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L13",
        "L21"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L0",
        "L13",
        "L25"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L0",
        "L21",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L2",
        "overlap_eh"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L2",
        "L16",
        "L11"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L2",
        "L1",
        "L17"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L2",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L11",
        "L21"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L2",
        "L11",
        "overlap_eh"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L2",
        "L17",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L21",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L2",
        "L23",
        "overlap_eh"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L2",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L4",
        "L12",
        "L9"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L4",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L4",
        "L17",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L6",
        "L8",
        "L5"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L6",
        "L12",
        "L15"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L6",
        "L5",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L6",
        "L5",
        "overlap_ae"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L10",
        "L1",
        "L5"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L10",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L10",
        "L5",
        "L21"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L10",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L12",
        "L1",
        "L5"
       ]
      },
      {
       "weight": 57,
       "atoms": [
        "L12",
        "L1",
        "L9"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L12",
        "L1",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L12",
        "L9",
        "L21"
       ]
      },
      {
       "weight": 44,
       "atoms": [
        "L12",
        "L9",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L12",
        "L25",
        "overlap_eh"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L12",
        "AREA_HI_ADH",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L16",
        "L18",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L16",
        "L20",
        "L5"
       ]
      },
      {
       "weight": 44,
       "atoms": [
        "L16",
        "L22",
        "L11"
       ]
      },
      {
       "weight": 52,
       "atoms": [
        "L16",
        "L1",
        "L5"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L16",
        "L3",
        "L5"
       ]
      },
      {
       "weight": 40,
       "atoms": [
        "L16",
        "L5",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L16",
        "L5",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 47,
       "atoms": [
        "L16",
        "L5",
        "overlap_eh"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L16",
        "L11",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L16",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L16",
        "L21",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L16",
        "L21",
        "overlap_bf"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L18",
        "L1",
        "L9"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L18",
        "L1",
        "L15"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L18",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L18",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L18",
        "L9",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L22",
        "L1",
        "L15"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L22",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L22",
        "L5",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "L1",
        "L3",
        "L9"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L1",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L1",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 51,
       "atoms": [
        "L1",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 63,
       "atoms": [
        "L1",
        "L25",
        "overlap_bf"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L5",
        "L5",
        "L25"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L5",
        "L11",
        "L25"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L13",
        "L25"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L5",
        "L15",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L5",
        "L15",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L5",
        "L15",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L5",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L5",
        "L21",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L5",
        "L25",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L25",
        "Gsum"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "L5",
        "AREA_HI_ADE",
        "overlap_ae"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L9",
        "L11",
        "L13"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L9",
        "L13",
        "L23"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L9",
        "L23",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L9",
        "L23",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L9",
        "L23",
        "Gsum"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L9",
        "AREA_LO_AEH",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L11",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L11",
        "L21",
        "overlap_eh"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L13",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L13",
        "L15",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L13",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L13",
        "L25",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L15",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L15",
        "L23",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L15",
        "AREA_LO_BCF",
        "overlap_bf"
       ]
      },
      {
       "weight": 38,
       "atoms": [
        "L17",
        "L23",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L21",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_BCF",
        "overlap_eh",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CDE",
        "L0"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "AREA_LO_CDE",
        "L16"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_CDE",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "AREA_LO_CDE",
        "overlap_ae"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_EFH",
        "L8"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EFH",
        "L16"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_EFH",
        "L1"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "AREA_LO_EFH",
        "L23"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDG",
        "L0"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_CDG",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_CDG",
        "span_AH"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_CDG",
        "overlap_ae"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_CGH",
        "L8"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_CGH",
        "L25"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_CGH",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_CGH",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EFO",
        "L25"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "AREA_LO_CHP",
        "L0"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CHP",
        "L10"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_CHP",
        "L12"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_CHP",
        "L17"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CHP",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_HOP",
        "L1"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_HOP",
        "L11"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_HOP",
        "L13"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "AREA_LO_ACG"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_ACG",
        "L4"
       ]
      },
      {
       "weight": 55,
       "atoms": [
        "AREA_LO_ACG",
        "L10"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ACG",
        "L9"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "AREA_LO_ACG",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ACG",
        "L21"
       ]
      },
      {
       "weight": 55,
       "atoms": [
        "AREA_LO_ACG",
        "L23"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_ACG",
        "L25"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ACG",
        "span_DE_hi"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_EOP",
        "L0"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_EOP",
        "L4"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_EOP",
        "L10"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EOP",
        "L12"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_EOP",
        "L16"
       ]
      },
      {
       "weight": 58,
       "atoms": [
        "AREA_LO_EOP",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 57,
       "atoms": [
        "AREA_LO_EOP",
        "span_AH_hi"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EOP",
        "overlap_ae"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "AREA_LO_FOP",
        "L16"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_FOP",
        "L5"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_CGP",
        "L0"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_CGP",
        "L2"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_CGP",
        "L4"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_CGP",
        "L8"
       ]
      },
      {
       "weight": 61,
       "atoms": [
        "AREA_LO_CGP",
        "L10"
       ]
      },
      {
       "weight": 53,
       "atoms": [
        "AREA_LO_CGP",
        "L21"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CGP",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_CGP",
        "overlap_ae"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EGH",
        "L22"
       ]
      },
      {
       "weight": 39,
       "atoms": [
        "AREA_LO_EGH",
        "L1"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_EGH",
        "L5"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_EGH",
        "L11"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EGH",
        "L19"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_EGH",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_EGH",
        "overlap_eh"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_GHP",
        "L10"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_GHP",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_GHP",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_EGO",
        "L4"
       ]
      },
      {
       "weight": 54,
       "atoms": [
        "AREA_LO_EGO",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "AREA_LO_EGO",
        "span_AH_hi"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_EGP",
        "overlap_eh"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "AREA_LO_BEO",
        "L0"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_BEO",
        "L4"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_BEO",
        "L25"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_BEO",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BEO",
        "span_BC_hi"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_BEO",
        "overlap_ae"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_BGO",
        "L4"
       ]
      },
      {
       "weight": 53,
       "atoms": [
        "AREA_LO_BGO",
        "L25"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_BGO",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_FGP",
        "L9"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_BFP",
        "L4"
       ]
      },
      {
       "weight": 57,
       "atoms": [
        "AREA_LO_BFP",
        "L20"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_BFP",
        "L1"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BFP",
        "L9"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "AREA_LO_BFP",
        "L17"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "AREA_LO_BFP",
        "span_AH"
       ]
      },
      {
       "weight": 49,
       "atoms": [
        "AREA_LO_BFP",
        "span_AH_hi"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_BFP",
        "Gsum"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_CFO",
        "L0"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_CFO",
        "L4"
       ]
      },
      {
       "weight": 53,
       "atoms": [
        "AREA_LO_CFO",
        "L24"
       ]
      },
      {
       "weight": 47,
       "atoms": [
        "AREA_LO_CFO",
        "L17"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CFO",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CFO",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CFO",
        "span_BC_hi"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CFO",
        "overlap_eh"
       ]
      },
      {
       "weight": 99,
       "atoms": [
        "AREA_LO_AFP"
       ]
      },
      {
       "weight": 48,
       "atoms": [
        "AREA_LO_AFP",
        "L4"
       ]
      },
      {
       "weight": 51,
       "atoms": [
        "AREA_LO_AFP",
        "L14"
       ]
      },
      {
       "weight": 55,
       "atoms": [
        "AREA_LO_AFP",
        "L13"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_BEG",
        "L10"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "AREA_LO_BEG",
        "L22"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_BEG",
        "L24"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_BEG",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BEG",
        "overlap_eh"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "AREA_LO_AEP",
        "L10"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_AOP",
        "L17"
       ]
      },
      {
       "weight": 44,
       "atoms": [
        "Central_z"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "Central_order",
        "L16"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "Central_order",
        "L13"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "Central_order",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "Central_order",
        "L21"
       ]
      },
      {
       "weight": 52,
       "atoms": [
        "Central_order",
        "L25"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "Central_order",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "LINEAR_1084",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "LINEAR_1084",
        "L15"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "QUAD_1122",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "LINEAR_1231",
        "L9"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "LINEAR_1258",
        "L5"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "QUAD_1321",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "QUAD_1321",
        "overlap_eh"
       ]
      }
     ],
     "sum": {
      "0,11": "-2717024359440789/20000000000000000",
      "0": "73397436925718151/1234375000000000000",
      "0,12": "8247894719012301/250000000000000000",
      "0,2": "3350051507778848691/39500000000000000000",
      "0,4": "-62745324339621/1562500000000000",
      "0,4,11": "-4490885982631671/100000000000000000",
      "0,10": "-1812279751371/50000000000000",
      "0,5": "75131701296454569/500000000000000000",
      "0,7": "-41159615926539/5000000000000000",
      "0,6": "-1580650179599877741/9875000000000000000",
      "0,6,12": "5244049131617799/125000000000000000",
      "0,1": "63209041087059/2500000000000000",
      "0,2,10": "-1325387087129007/50000000000000000",
      "1,1": "38298997353399/2500000000000000",
      "1,1,7": "30479432665103/800000000000000",
      "1,8": "-20708174453577/25000000000000000",
      "1": "-107176357951347261577/13951400000000000000000",
      "1,7": "7655015591907/2000000000000000",
      "1,2": "14157240437787909/200000000000000000",
      "1,11": "-2324466622067739/200000000000000000",
      "1,4": "164622732685649/10000000000000000",
      "1,4,11": "-2065392942827991/40000000000000000",
      "1,10": "1144256402571441/10000000000000000",
      "1,5": "1092425168106453/200000000000000000",
      "1,5,7": "-198537552370579/4000000000000000",
      "1,4,8": "-686495519149713/40000000000000000",
      "1,2,10": "-609555697218447/20000000000000000",
      "2,6": "-13288462213133751/500000000000000000",
      "2": "347993175298977915721/17439250000000000000000",
      "2,11": "-368838597674631/15625000000000000",
      "2,4": "-210881468294077/8000000000000000",
      "2,7": "47393674229839/10000000000000000",
      "2,8": "-136447526101631199/19750000000000000000",
      "2,7,8": "169578630034359/20000000000000000",
      "3,4": "-604232938316343/20000000000000000",
      "2,3,4": "732301221989211/20000000000000000",
      "3,6": "1045520129638053/12500000000000000",
      "3": "-1982947758014751/20000000000000000",
      "3,7": "1551981593613/500000000000000",
      "0,3": "401648446529343/25000000000000000",
      "2,3": "-28148619233007/4000000000000000",
      "2,3,7": "-62447442379329/2000000000000000",
      "5": "-168817865891722095671/69757000000000000000000",
      "2,5": "6203009331479177/250000000000000000",
      "5,7": "-272953550009501/4000000000000000",
      "2,5,7": "575110347937223/20000000000000000",
      "5,10": "-8600957480538309/100000000000000000",
      "5,11": "-40157602073793777/1000000000000000000",
      "4,5": "11361704798344453/100000000000000000",
      "4,5,11": "-13453598827055163/200000000000000000",
      "6": "694003283837172729/39500000000000000000",
      "4,6": "-355785635375068437/7900000000000000000",
      "0,4,6": "1754364564430947/50000000000000000",
      "6,10": "-9606424149533403/246875000000000000",
      "6,7": "5844148253121/1250000000000000",
      "4,6,7": "-70365185978619/2000000000000000",
      "6,12": "1112672873485617/10000000000000000",
      "6,7,12": "-210331706367423/5000000000000000",
      "6,7,7": "6000435019041/200000000000000",
      "8,9": "1434143774275546269/39500000000000000000",
      "4,8,9": "2167569229085169/100000000000000000",
      "8,10": "235250890641/1000000000000000",
      "8,11": "3529391565379797/125000000000000000",
      "8": "-11065061384367589053/79000000000000000000",
      "0,8": "-17149121660675511/500000000000000000",
      "0,2,8": "-4227981995349567/500000000000000000",
      "4,8": "5655257675583789/200000000000000000",
      "3,8": "22923872230311/1250000000000000",
      "7,8": "328001503924419/10000000000000000",
      "5,8": "-6566248736473803/250000000000000000",
      "2,5,8": "-12666002618065251/1000000000000000000",
      "1,8,10": "404166767947839/20000000000000000",
      "5,8,10": "-2632669765857027/100000000000000000",
      "9": "7245816489316051/62500000000000000",
      "4,9": "55079419146953383/1975000000000000000",
      "0,9": "-24417119218181817/250000000000000000",
      "7,9": "-8392850412743/400000000000000",
      "2,9": "15304196058388741/250000000000000000",
      "1,9": "-6376113555911/50000000000000",
      "11": "4689843336520412284797/69757000000000000000000",
      "7,11": "-495892439955993/4000000000000000",
      "0,7,11": "382963096621269/10000000000000000",
      "": "-253825461777787409528071/69757000000000000000000",
      "4": "992007322614597112817/6975700000000000000000",
      "7": "2017435978739/9765625000000",
      "12": "-153015389728360487141/17439250000000000000000",
      "5,12": "-96371054535481802989/2179906250000000000000",
      "1,12": "-326807617566668627131/3487850000000000000000",
      "0,5,12": "15131919142393197/250000000000000000",
      "0,1,12": "-2323048234892529/50000000000000000",
      "2,12": "9486207723609327039/441500000000000000000",
      "2,2": "-4398042882850813/250000000000000000",
      "2,2,12": "8964909794119321/500000000000000000",
      "4,7": "-26585471753407/4000000000000000",
      "2,4,7": "90293779865513/4000000000000000",
      "7,7": "-179663233689/5000000000000",
      "2,7,7": "-7699858263307/400000000000000",
      "10": "14125823673612867/7900000000000000000",
      "2,10": "-2025711104569551/20000000000000000",
      "7,12": "91597580456609/2500000000000000",
      "4,12": "-18425628178834261/100000000000000000",
      "8,12": "16301173432590579/500000000000000000",
      "2,8,12": "5944196130012777/500000000000000000",
      "4,4": "-43522905417803/40000000000000000",
      "2,4,4": "-1058846332438867/40000000000000000",
      "5,6": "303430751740437/50000000000000000",
      "6,11": "716931645730641/10000000000000000",
      "4,11": "-1063652120050202970273/13951400000000000000000",
      "4,4,11": "2112249058369653/40000000000000000",
      "7,10": "75235295034621/2000000000000000",
      "4,10": "1056202836033177/20000000000000000",
      "6,7,11": "397590602123619/10000000000000000",
      "2,8,11": "11236330267506981/1000000000000000000",
      "2,4,10": "623384258159901/20000000000000000",
      "9,12": "-732460749217580999/19750000000000000000",
      "7,8,11": "338285443917681/20000000000000000",
      "1,2,12": "-3094834328979533/100000000000000000",
      "10,11": "264025444702265631/7900000000000000000",
      "5,6,12": "-15709891883028747/250000000000000000",
      "2,6,10": "1376011043016057/50000000000000000",
      "2,8,9": "-6139585604761791/500000000000000000",
      "1,4,12": "1092625478730947/20000000000000000"
     },
     "upper": "-13318812241494340264123/13951400000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CA6mpmpm",
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "EGO-",
    "BGO+",
    "FGP-",
    "BFP+",
    "FGO-"
   ],
   "stages": [
    "other_CA_C_6:0",
    "other_CA_C_6:1",
    "other_CA_C_6:2",
    "other_CA_C_6:3",
    "other_CA_C_6:4",
    "other_CA_C_6:5",
    "Ccap_CA6:0",
    "Ccap_CA6m:0",
    "Ccap_CA6m:1",
    "Ccap_CA6m:2",
    "Ccap_CA6m:3",
    "Ccap_CA6mp:0",
    "Ccap_CA6mp:1",
    "Ccap_CA6mp:2",
    "Ccap_CA6mp:3",
    "Ccap_CA6mpm:0",
    "Ccap_CA6mpm:1",
    "Ccap_CA6mpmp:0",
    "Ccap_CA6mpmp:1",
    "Ccap_CA6mpmpm:0",
    "Ccap_CA6mpmpm:1",
    "Ccap_CA6mpmpm:2",
    "Ccap_CA6mpmpm:3"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 22,
    "sum": {
     "factors": [
      {
       "weight": 3,
       "atoms": [
        "L0",
        "L2",
        "L9"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L0",
        "L2",
        "L21"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L0",
        "L4",
        "L5"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L0",
        "L4",
        "L9"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L0",
        "L4",
        "L25"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L0",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L19",
        "overlap_ae"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L12",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L4",
        "L4",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L4",
        "L16",
        "L25"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L4",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L4",
        "L24",
        "overlap_fc"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L4",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "L4",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L4",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L4",
        "L19",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L4",
        "L21",
        "L25"
       ]
      },
      {
       "weight": 47,
       "atoms": [
        "L6",
        "L20",
        "L11"
       ]
      },
      {
       "weight": 55,
       "atoms": [
        "L8",
        "L16",
        "L19"
       ]
      },
      {
       "weight": 40,
       "atoms": [
        "L8",
        "L13",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L10",
        "L12",
        "L15"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L10",
        "L16",
        "L19"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "L10",
        "L16",
        "L21"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "L10",
        "L16",
        "L25"
       ]
      },
      {
       "weight": 77,
       "atoms": [
        "L10",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L10",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L10",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L10",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L10",
        "L15",
        "L25"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L10",
        "L15",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L10",
        "L15",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 59,
       "atoms": [
        "L10",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 81,
       "atoms": [
        "L10",
        "L21",
        "L25"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L10",
        "L21",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L10",
        "L25",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L12",
        "L18",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L12",
        "L7",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L12",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L12",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L14",
        "L7",
        "overlap_fc"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L14",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L14",
        "L17",
        "overlap_fc"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L14",
        "L25",
        "overlap_fc"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "L16",
        "L16",
        "L19"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L16",
        "L18",
        "L15"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L16",
        "L18",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L16",
        "L18",
        "overlap_fc"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L16",
        "L22",
        "L19"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "L16",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L16",
        "L3",
        "L15"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L16",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L16",
        "L11",
        "L15"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L16",
        "L11",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L16",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "L16",
        "L13",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L16",
        "L13",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "L16",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L16",
        "L23",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L16",
        "L25",
        "span_AH_hi"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L16",
        "L25",
        "span_DE_hi"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L16",
        "L25",
        "QUAD_1011"
       ]
      },
      {
       "weight": 24,
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
        "L15",
        "L23"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L18",
        "L15",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L20",
        "L5",
        "L11"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L20",
        "L5",
        "overlap_fc"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L20",
        "L11",
        "L23"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L20",
        "L13",
        "overlap_fc"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L20",
        "AREA_LO_AEH",
        "overlap_fc"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L20",
        "overlap_fc",
        "QUAD_1011"
       ]
      },
      {
       "weight": 53,
       "atoms": [
        "L22",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 70,
       "atoms": [
        "L22",
        "L9",
        "L21"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L22",
        "L13",
        "L21"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L24",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L24",
        "L19",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L1",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "L5",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L15",
        "L21"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L5",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L5",
        "L17",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L25",
        "overlap_fc"
       ]
      },
      {
       "weight": 56,
       "atoms": [
        "L9",
        "L11",
        "L19"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L9",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 44,
       "atoms": [
        "L9",
        "L21",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L11",
        "L13",
        "L25"
       ]
      },
      {
       "weight": 75,
       "atoms": [
        "L11",
        "L15",
        "L21"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L11",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L13",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L13",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L13",
        "L19",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L13",
        "L21",
        "L25"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L13",
        "L21",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L13",
        "L25",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L15",
        "L19",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L15",
        "AREA_HI_ADH",
        "span_DE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L15",
        "AREA_HI_ADH",
        "span_DE_hi"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L19",
        "AREA_HI_ADH",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_ADH",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_AEH",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CDE",
        "L4"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_CDE",
        "L20"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CDE",
        "L13"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDE",
        "L17"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDE",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "AREA_LO_DEF",
        "L20"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_DEF",
        "L17"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_ABG"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_ABG",
        "L4"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ABG",
        "L9"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ABG",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDG"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CDG",
        "L5"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDG",
        "L19"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CDG",
        "span_AH"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CGH",
        "L16"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "AREA_LO_CGH",
        "L22"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_CGH",
        "L25"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "AREA_LO_EFO"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "AREA_LO_EFO",
        "L0"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_EFO",
        "L12"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_EFO",
        "L16"
       ]
      },
      {
       "weight": 36,
       "atoms": [
        "AREA_LO_EFO",
        "L25"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "AREA_LO_EFO",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "AREA_LO_CHO",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CHO",
        "L15"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_CHO",
        "L23"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CHP",
        "L6"
       ]
      },
      {
       "weight": 79,
       "atoms": [
        "AREA_LO_CHP",
        "L18"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CHP",
        "L5"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_CHP",
        "L17"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_CHP",
        "L23"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_CHP",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_CHP",
        "overlap_ae"
       ]
      },
      {
       "weight": 44,
       "atoms": [
        "AREA_LO_HOP",
        "L4"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_HOP",
        "L9"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_HOP",
        "L13"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_HOP",
        "L23"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "AREA_LO_HOP",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 87,
       "atoms": [
        "AREA_LO_HOP",
        "span_AH_hi"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_HOP",
        "span_DE_hi"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_HOP",
        "overlap_fc"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_ACG"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_ACG",
        "L0"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ACG",
        "L3"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ACG",
        "L5"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_ACG",
        "L21"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ACG",
        "L25"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_ACG",
        "span_AH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ACG",
        "span_DE"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_COP",
        "L9"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_COP",
        "L15"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "AREA_LO_EOP",
        "L0"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_EOP",
        "L4"
       ]
      },
      {
       "weight": 56,
       "atoms": [
        "AREA_LO_EOP",
        "L10"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EOP",
        "span_DE"
       ]
      },
      {
       "weight": 43,
       "atoms": [
        "AREA_LO_EOP",
        "span_DE_hi"
       ]
      },
      {
       "weight": 39,
       "atoms": [
        "AREA_LO_EOP",
        "QUAD_1011"
       ]
      },
      {
       "weight": 55,
       "atoms": [
        "AREA_LO_FOP",
        "L9"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_FOP",
        "L15"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_FOP",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "AREA_LO_CGP",
        "L0"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CGP",
        "L8"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CGP",
        "L10"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_CGP",
        "L22"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_CGP",
        "L21"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CGP",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EHO",
        "L16"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_EHO",
        "L13"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "AREA_LO_EHO",
        "L25"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_GHP",
        "L0"
       ]
      },
      {
       "weight": 49,
       "atoms": [
        "AREA_LO_GHP",
        "L21"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_GOP",
        "L9"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_GOP",
        "L11"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_GOP",
        "L23"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_GOP",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_HI_GOP",
        "L0"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "AREA_LO_FGO",
        "L0"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_FGO",
        "L6"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "AREA_LO_FGO",
        "L8"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_FGO",
        "L16"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_FGO",
        "L5"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "AREA_LO_FGO",
        "L25"
       ]
      },
      {
       "weight": 38,
       "atoms": [
        "AREA_LO_FGO",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_FGO",
        "overlap_ae"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_AOP",
        "L9"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "Central_order",
        "L16"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "Central_order",
        "L13"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "LINEAR_997",
        "L16"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "QUAD_1294",
        "L11"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "QUAD_1294",
        "L23"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "QUAD_1294",
        "overlap_fc"
       ]
      }
     ],
     "sum": {
      "0,1": "-5167668731269533/25000000000000000",
      "0,2": "61371837499131/25000000000000000",
      "0,2,4": "-27807113625489/6250000000000000",
      "0,2,12": "21221258881419/4000000000000000",
      "0,5": "-131058509406993/100000000000000000",
      "0,4,5": "27807113625489/6250000000000000",
      "0": "29002674411263523/15800000000000000000",
      "0,4": "267859878067881/12500000000000000",
      "0,9": "-180776816764053/12500000000000000",
      "0,4,9": "-50800773562341/3125000000000000",
      "1,6": "2858223188061/62500000000000",
      "0,1,6": "-3110287573537839/50000000000000000",
      "2,2": "-717983782536969/250000000000000000",
      "2,8": "-772397401753767/250000000000000000",
      "2,11": "585972690011337/62500000000000000",
      "2,5,12": "20190317759991/10000000000000000",
      "2": "-2008447199436393/100000000000000000",
      "2,4": "36098900282907/3125000000000000",
      "2,9": "1469359693349757/125000000000000000",
      "2,7": "-27627324854127/2000000000000000",
      "2,3": "-219297365686509/50000000000000000",
      "2,4,9": "-48332842382649/7812500000000000",
      "2,12": "29287477144371/5000000000000000",
      "2,10": "247149949835919/25000000000000000",
      "3,10": "425746592930197/25000000000000000",
      "4,8": "86817888694229/31250000000000000",
      "4,8,9": "-47164486415167/7812500000000000",
      "4": "143291474161982377/1234375000000000000",
      "4,10": "-1591738232254269/31250000000000000",
      "4,6": "-520815298645653/7812500000000000",
      "4,6,10": "398421281040519/15625000000000000",
      "5,6": "-318135078803727/250000000000000000",
      "5,8": "-401867857160781/250000000000000000",
      "5,8,9": "100212434472561/62500000000000000",
      "5,11": "-121262243518527/62500000000000000",
      "5": "105150796547133/125000000000000000",
      "5,7": "1118456001417969/50000000000000000",
      "4,5": "-53414548714923/15625000000000000",
      "4,5,7": "-21076166368851/3125000000000000",
      "4,5,11": "195252030757839/31250000000000000",
      "5,9": "-1064772866198799/125000000000000000",
      "5,12": "615086037171/400000000000000",
      "3,5": "1331129521623/2500000000000000",
      "5,10": "84559004227299/250000000000000000",
      "6,9": "1534952845494639/125000000000000000",
      "6,7,9": "-339590943589899/12500000000000000",
      "6": "-4859706192758469/250000000000000000",
      "6,7": "933126600194247/50000000000000000",
      "3,6": "201989606387811/6250000000000000",
      "3,6,7": "150150216016779/5000000000000000",
      "2,6": "-23310860759001/6250000000000000",
      "2,3,7": "-36172822450017/5000000000000000",
      "2,4,7": "21076166368851/3125000000000000",
      "8,8": "-1231149422564787/50000000000000000",
      "8,9": "-36135284866199/3125000000000000",
      "8,11": "1026299376036789/250000000000000000",
      "8": "-25353105627417987/987500000000000000",
      "7,8": "-407296654784057/25000000000000000",
      "1,8": "1448328314933063/125000000000000000",
      "0,8": "-1799684375773641/20000000000000000",
      "6,8": "1286031486133869/125000000000000000",
      "8,10": "1104945972325313/125000000000000000",
      "8,12": "5613636625982493/790000000000000000",
      "0,8,11": "425503195013739/100000000000000000",
      "3,8": "528602889331/195312500000000",
      "9": "2744112463569600597/19750000000000000000",
      "7,9": "13018075700512573/1975000000000000000",
      "9,11": "-1842646079562907/125000000000000000",
      "4,9": "1059990320636291/617187500000000000",
      "3,9": "-301896616570197/25000000000000000",
      "10": "200063292483975283/4937500000000000000",
      "10,11": "1144121190954184107/39500000000000000000",
      "2,7,10": "-162468496631901/25000000000000000",
      "0,5,10": "-214354919549439/50000000000000000",
      "2,4,10": "-95984026142037/15625000000000000",
      "11": "-1367584303532038807/39500000000000000000",
      "4,11": "-14652332798885683/2468750000000000000",
      "6,11": "665183027237349/125000000000000000",
      "6,10,11": "-6247649654823243/250000000000000000",
      "12": "27365094143682091/632000000000000000",
      "7,12": "1328091203689/500000000000000",
      "0,12": "23545753158351/8000000000000000",
      "9,12": "-3725967851873671/98750000000000000",
      "": "-33373181157702530273/19750000000000000000",
      "7": "119143245954862001/1580000000000000000",
      "7,11": "-169733561188112651/7900000000000000000",
      "0,11": "-422885134104369/50000000000000000",
      "0,7": "5402616468369087/197500000000000000",
      "0,7,11": "-347371151179323/20000000000000000",
      "7,10": "-1970942583295673/50000000000000000",
      "2,7,11": "330495658252647/50000000000000000",
      "2,5": "126317518940169/250000000000000000",
      "2,2,8": "-54853860613869/125000000000000000",
      "2,5,8": "-54853860613869/125000000000000000",
      "4,7": "-9534259717697/625000000000000",
      "6,12": "364092292170189/20000000000000000",
      "3": "-122328576722341/6250000000000000",
      "4,6,9": "200625393124563/7812500000000000",
      "10,12": "-13616862086381/1250000000000000",
      "6,10": "-332831710785471/15625000000000000",
      "0,10": "70746580203711/50000000000000000",
      "0,6": "-740008706493429/25000000000000000",
      "0,6,12": "-88087585910553/4000000000000000",
      "7,7": "-31176704573853/4937500000000000",
      "7,7,9": "-65174278346087/2500000000000000",
      "0,7,9": "85988529968493/5000000000000000",
      "3,7": "-303353313621281/10000000000000000",
      "0,3": "60677022612327/5000000000000000",
      "0,2,7": "47068039631097/10000000000000000",
      "0,2,3": "-47725082750763/10000000000000000",
      "4,5,8": "-180716886497301/3906250000000000",
      "3,5,8": "-44308951600881/1562500000000000",
      "1": "-410105139991627/31250000000000000",
      "1,2": "1606679893707/125000000000000000",
      "1,2,8": "231889193462013/125000000000000000",
      "0,1,2": "-249767384402799/50000000000000000",
      "1,4": "-2268527825487/15625000000000000",
      "1,4,8": "-327412504419033/15625000000000000",
      "1,10": "-17487255458337/125000000000000000",
      "1,8,10": "-2523903846672183/125000000000000000",
      "0,2,8": "-57654762573321/2500000000000000",
      "2,8,8": "-53527871240427/31250000000000000",
      "2,8,11": "-404832001872471/62500000000000000",
      "0,10,11": "-4745941136391303/20000000000000000",
      "0,4,11": "-205221826674051/3125000000000000",
      "5,8,11": "-404832001872471/250000000000000000",
      "5,8,8": "-53527871240427/6250000000000000",
      "1,7": "-785805378649167/25000000000000000"
     },
     "upper": "-59432307894085951727/79000000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CA6mpmm",
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "EGO-",
    "BGO+",
    "FGP-",
    "BFP-"
   ],
   "stages": [
    "other_CA_C_6:0",
    "other_CA_C_6:1",
    "other_CA_C_6:2",
    "other_CA_C_6:3",
    "other_CA_C_6:4",
    "other_CA_C_6:5",
    "Ccap_CA6:0",
    "Ccap_CA6m:0",
    "Ccap_CA6m:1",
    "Ccap_CA6m:2",
    "Ccap_CA6m:3",
    "Ccap_CA6mp:0",
    "Ccap_CA6mp:1",
    "Ccap_CA6mp:2",
    "Ccap_CA6mp:3",
    "Ccap_CA6mpm:0",
    "Ccap_CA6mpm:1",
    "Ccap_CA6mpmm:0",
    "Ccap_CA6mpmm:1",
    "Ccap_CA6mpmm:2",
    "Ccap_CA6mpmm:3"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 20,
    "sum": {
     "factors": [
      {
       "weight": 7,
       "atoms": [
        "L0",
        "L2",
        "L1"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L0",
        "L2",
        "L5"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "L0",
        "L2",
        "L19"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L0",
        "L2",
        "L25"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "L0",
        "L4",
        "L13"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L0",
        "L4",
        "L15"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L0",
        "L4",
        "L25"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "L0",
        "L4",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "L0",
        "L16",
        "L11"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L0",
        "L22",
        "L9"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L0",
        "L24",
        "L19"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L0",
        "L7",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L0",
        "L11",
        "L25"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L0",
        "L13",
        "L19"
       ]
      },
      {
       "weight": 50,
       "atoms": [
        "L0",
        "L13",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L2",
        "L2",
        "L15"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L2",
        "L2",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L4",
        "L21"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L2",
        "L14",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L2",
        "L24",
        "L9"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L2",
        "L5",
        "L25"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L2",
        "L9",
        "L21"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L2",
        "L9",
        "QUAD_1102"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L19",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "L2",
        "L21",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L4",
        "L12",
        "overlap_eh"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L4",
        "L16",
        "L11"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "L4",
        "L24",
        "overlap_eh"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L4",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "L4",
        "L5",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L6",
        "L6",
        "L5"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L6",
        "L12",
        "L5"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L6",
        "L22",
        "L9"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L6",
        "L5",
        "L25"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L6",
        "L5",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L6",
        "L25",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L8",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L8",
        "overlap_bf",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L10",
        "L9",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L12",
        "AREA_HI_ADE",
        "overlap_eh"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L12",
        "AREA_LO_BCF",
        "overlap_eh"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L14",
        "L18",
        "overlap_eh"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L14",
        "L5",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L14",
        "L9",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L14",
        "AREA_LO_BCF",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L16",
        "L22",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L16",
        "L3",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L16",
        "L5",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L16",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L16",
        "L11",
        "L25"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "L16",
        "L11",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L16",
        "L19",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L16",
        "AREA_HI_ADH",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "L18",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L18",
        "L9",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L18",
        "AREA_LO_AEH",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L20",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L20",
        "AREA_LO_BCF",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L22",
        "L3",
        "overlap_eh"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L22",
        "L5",
        "overlap_eh"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L24",
        "L9",
        "L13"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L1",
        "L13",
        "overlap_eh"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L3",
        "L9",
        "L9"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L3",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L3",
        "overlap_eh",
        "QUAD_1102"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "L5",
        "L5",
        "L17"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L5",
        "L21"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L5",
        "L13",
        "overlap_eh"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L5",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "L5",
        "L25",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L5",
        "overlap_eh",
        "Gsum"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L7",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L9",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L9",
        "L9",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L9",
        "L11",
        "L21"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L9",
        "L13",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L9",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L11",
        "L25",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L11",
        "AREA_HI_ADE",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L11",
        "AREA_HI_BCF",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L13",
        "L19",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L15",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L17",
        "L23",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L19",
        "span_AH_hi",
        "overlap_eh"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L23",
        "AREA_LO_AEH",
        "overlap_eh"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "L25",
        "AREA_HI_BCF",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_BCF",
        "AREA_LO_BCF",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_BCF",
        "AREA_LO_BCF",
        "QUAD_1102"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BCF",
        "overlap_eh",
        "overlap_ae"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ABH",
        "L4"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABH",
        "L10"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_ABH",
        "L22"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_ABH",
        "L13"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_ABH",
        "L17"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_ABH",
        "L19"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ABH",
        "L21"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_ABH",
        "L25"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_ABH",
        "span_AH"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_ABH",
        "span_DE"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_ABH",
        "span_DE_hi"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ABH",
        "overlap_bf"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BEF",
        "L9"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "AREA_LO_CDE",
        "L4"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_CDE",
        "L6"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "AREA_LO_CDE",
        "L13"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "AREA_LO_CDE",
        "L25"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CDE",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "AREA_LO_CDE",
        "span_BC"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CDE",
        "span_DE_hi"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_CDE",
        "overlap_ae"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CDE",
        "Gsum"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_CFH",
        "L16"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_EFH",
        "L9"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_ABG",
        "L4"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ABG",
        "L1"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ABG",
        "L7"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_ABG",
        "L9"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ABG",
        "L15"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_ABG",
        "L19"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_ABG",
        "L25"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABG",
        "span_BC"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ABG",
        "overlap_fc"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_CDG",
        "L24"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDG",
        "L1"
       ]
      },
      {
       "weight": 44,
       "atoms": [
        "AREA_LO_CDG",
        "L3"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_CDG",
        "L15"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_CDG",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 44,
       "atoms": [
        "AREA_LO_CDG",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CDG",
        "span_DE_hi"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDG",
        "overlap_ae"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_FGH",
        "L5"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_CGH",
        "L22"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CGH",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_FHP",
        "L6"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "AREA_LO_CHP",
        "L12"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_CHP",
        "L18"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "AREA_LO_CHP",
        "L5"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CHP",
        "L17"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_CHP",
        "span_BC"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_CHP",
        "span_BC_hi"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CHP",
        "span_AH_hi"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CHP",
        "span_DE_hi"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_CHP",
        "overlap_ae"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_HOP",
        "L9"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_HOP",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "AREA_LO_HOP",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_HOP",
        "span_BC"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_HOP",
        "overlap_ae"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_ACG",
        "L7"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_ACG",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 42,
       "atoms": [
        "AREA_LO_ACG",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_ACG",
        "span_BC"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ACG",
        "overlap_bf"
       ]
      },
      {
       "weight": 61,
       "atoms": [
        "AREA_LO_EOP",
        "L3"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "AREA_LO_EOP",
        "span_DE"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_EOP",
        "span_BC"
       ]
      },
      {
       "weight": 44,
       "atoms": [
        "AREA_LO_EOP",
        "span_DE_hi"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EOP",
        "overlap_ae"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_EOP",
        "QUAD_1102"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CFG",
        "L2"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "AREA_LO_CFG",
        "L25"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "AREA_LO_CGP",
        "L4"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CGP",
        "L7"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_CGP",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_CGP",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "AREA_LO_CGP",
        "span_BC"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_EGH",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_GHP",
        "L7"
       ]
      },
      {
       "weight": 74,
       "atoms": [
        "AREA_LO_BEP",
        "L18"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BOP",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_EGP",
        "overlap_eh"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_BEO",
        "L8"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_BEO",
        "L3"
       ]
      },
      {
       "weight": 74,
       "atoms": [
        "AREA_LO_BEO",
        "L23"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "AREA_LO_BEO",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_FGP",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 76,
       "atoms": [
        "AREA_LO_FGP",
        "span_DE"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "AREA_LO_FGP",
        "span_BC_hi"
       ]
      },
      {
       "weight": 83,
       "atoms": [
        "AREA_LO_FGP",
        "span_DE_hi"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_FGP",
        "overlap_ae"
       ]
      },
      {
       "weight": 91,
       "atoms": [
        "AREA_LO_CFP",
        "L16"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BFP",
        "L17"
       ]
      },
      {
       "weight": 58,
       "atoms": [
        "AREA_LO_BFP",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 79,
       "atoms": [
        "AREA_LO_BFP",
        "span_AH"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "AREA_LO_BFP",
        "span_BC_hi"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_BFP",
        "span_DE_hi"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_BFP",
        "overlap_ae"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CFO",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "QUAD_1038",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "QUAD_1058",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "QUAD_1390",
        "L25"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "QUAD_1404",
        "L23"
       ]
      }
     ],
     "sum": {
      "0,1": "313624359531764003/19750000000000000000",
      "0,1,2": "1802875248740921/500000000000000000",
      "0,2": "-868014746515091/200000000000000000",
      "0,2,2": "-37860380223559341/1000000000000000000",
      "0,8": "-6659336175418913/31250000000000000",
      "0,5,8": "-18132754740331/1953125000000000",
      "0,11": "-1360416310632059/50000000000000000",
      "0,12": "-1862594119476243/250000000000000000",
      "0,9,12": "-23528799443871531/1000000000000000000",
      "0": "-289964583234264867/7900000000000000000",
      "0,3": "-4782966412228407/250000000000000000",
      "0,2,3": "-3561669274372361/500000000000000000",
      "0,5": "15123949183211/15625000000000000",
      "0,9": "17445763040669553/1000000000000000000",
      "0,6": "988556137013673/50000000000000000",
      "0,1,6": "-1121899426152213/250000000000000000",
      "1,1": "501494918864271/1000000000000000000",
      "1,1,10": "442312085236757/200000000000000000",
      "1,2": "-8031157691330041/1000000000000000000",
      "1,2,10": "-442312085236757/200000000000000000",
      "1,7": "190586968337751677/15800000000000000000",
      "1,11": "-305416177113627/12500000000000000",
      "1,7,11": "-57943552883387/5000000000000000",
      "1,12": "-12624207555902169/79000000000000000000",
      "1": "-2223911659270553999/79000000000000000000",
      "1,2,12": "1932731583494583/1000000000000000000",
      "1,10": "-672017742470499/200000000000000000",
      "1,4": "-4739851469142643/250000000000000000",
      "1,3": "1140700681225379/500000000000000000",
      "0,1,4": "-67652070109597061/500000000000000000",
      "1,9": "21201276800826657/1000000000000000000",
      "2,6": "2461325065799493/250000000000000000",
      "2,4,6": "1125601028540817/250000000000000000",
      "2,8": "100923043956609/77148437500000000",
      "2,5,8": "-5333000374009/1953125000000000",
      "2,12": "1382792713252564677/79000000000000000000",
      "2,4,12": "6593169977231073/1000000000000000000",
      "2": "-729001824672634715961/69757000000000000000000",
      "2,4": "229737410064984587589/34878500000000000000000",
      "2,2": "-2084049393006241/1000000000000000000",
      "2,2,4": "1808823667263589/1000000000000000000",
      "2,7": "-151470327641846086329/6975700000000000000000",
      "2,2,7": "-390466507936763/200000000000000000",
      "3,3": "132619609072587/15625000000000000",
      "3,6": "-19144041182413377/2468750000000000000",
      "3,11": "10384397028823/2500000000000000",
      "3": "1619729492594305735027/34878500000000000000000",
      "3,12": "-7833176044633173/250000000000000000",
      "2,3": "16511772247303316821/34878500000000000000000",
      "2,3,12": "-3818206889993703/500000000000000000",
      "3,4": "-6211533058962763/500000000000000000",
      "4": "36737161075900358283/697570000000000000000",
      "4,7": "-1216183194250027/200000000000000000",
      "4,4": "6386990914250299/1000000000000000000",
      "4,9": "432315988422271827/79000000000000000000",
      "4,5": "-2149493428428511/31250000000000000",
      "4,5,7": "-281133645111341/12500000000000000",
      "4,4,5": "1302342660907123/62500000000000000",
      "5": "-9568899628278903/308593750000000000",
      "2,5": "61613645233657/12500000000000000",
      "1,5": "-9406378414411/6250000000000000",
      "6": "108087648870805257/19750000000000000000",
      "6,7": "1040468600459289/50000000000000000",
      "4,6": "-905373228741309/25000000000000000",
      "1,6": "958205436821811/125000000000000000",
      "1,6,7": "242980844898639/50000000000000000",
      "1,4,6": "-1125601028540817/250000000000000000",
      "7,9": "-240269714389087347/15800000000000000000",
      "7": "-63797865641888440991/1743925000000000000000",
      "7,7": "-12941821649587/625000000000000",
      "1,2,7": "-390466507936763/200000000000000000",
      "8,11": "264289347470099/12343750000000000",
      "8": "26463767563553943/2468750000000000000",
      "7,8": "32326269311707/6250000000000000",
      "1,8": "-10224263609973/6250000000000000",
      "1,7,8": "-55820901707907/3125000000000000",
      "2,2,8": "25267676477897/31250000000000000",
      "1,2,8": "-25267676477897/31250000000000000",
      "5,8": "951373162509/308593750000000",
      "4,8": "-6616549341969/390625000000000",
      "8,12": "132325684648479/15625000000000000",
      "1,8,9": "-1718917208824389/31250000000000000",
      "0,2,8": "-85912722351323/31250000000000000",
      "9": "-2319762444695069667/79000000000000000000",
      "0,4,9": "-22020362092609473/1000000000000000000",
      "0,7,9": "4753483739413791/200000000000000000",
      "10": "-108588304062168131/7900000000000000000",
      "4,10": "-4065626337524417/200000000000000000",
      "2,10": "-113563145619603/50000000000000000",
      "11": "256950033997244269/1975000000000000000",
      "7,11": "-227887635857991/19750000000000000",
      "4,11": "236157316367797487/3950000000000000000",
      "2,11": "136488112916613/10000000000000000",
      "2,7,11": "57943552883387/10000000000000000",
      "12": "2807282360899717791/79000000000000000000",
      "6,12": "-23965976518546527/3950000000000000000",
      "4,12": "15417569878804383/500000000000000000",
      "": "-161211176486051605983339/69757000000000000000000",
      "0,7": "2521619646662393/200000000000000000",
      "0,4": "547171390417709/62500000000000000",
      "1,4,9": "6476379400560747/1000000000000000000",
      "3,7": "164753063696839/12500000000000000",
      "2,9": "-2397495799374579/500000000000000000",
      "2,4,9": "-6476379400560747/1000000000000000000",
      "2,4,8": "-86196183355807/31250000000000000",
      "3,5": "-48121797687689/6250000000000000",
      "4,7,11": "197664122895997/10000000000000000",
      "7,12": "6052799802459573/200000000000000000",
      "5,7": "10354055960281/500000000000000",
      "5,12": "-109536721593839727/4937500000000000000",
      "5,7,12": "300391843010127/12500000000000000",
      "4,5,12": "-1391555649576081/62500000000000000",
      "6,9": "-423289959471/125000000000000",
      "1,1,12": "-1932731583494583/1000000000000000000",
      "1,2,4": "-1808823667263589/1000000000000000000",
      "1,2,3": "1047517812066179/500000000000000000",
      "1,1,3": "-7332624684463253/250000000000000000",
      "0,1,11": "-2407850498692161/50000000000000000",
      "7,10": "-112730355832763/1600000000000000",
      "0,10": "4593773555297661/100000000000000000",
      "1,7,12": "-1423252085780991/200000000000000000",
      "0,0": "-10499300632881031/1000000000000000000",
      "3,8": "14987166495343/976562500000000",
      "2,3,8": "-49917545325977/3125000000000000",
      "0,0,6": "-3814574481727167/125000000000000000",
      "1,3,8": "-49917545325977/7812500000000000",
      "1,4,8": "-86196183355807/6250000000000000",
      "8,9": "29400100103787/31250000000000000",
      "1,8,12": "-276302365393887/3906250000000000",
      "1,1,8": "-25267676477897/31250000000000000",
      "2,8,12": "92100788464629/31250000000000000",
      "3,6,12": "2376006948792459/125000000000000000",
      "3,3,6": "-1287767852353767/15625000000000000",
      "9,12": "2470003437207855627/39500000000000000000",
      "4,9,12": "23606430520412079/1000000000000000000",
      "10,11": "-23428263573523679/395000000000000000",
      "4,10,11": "-223909678800883/10000000000000000",
      "0,10,11": "-4240293444972653/10000000000000000",
      "1,9,12": "-6920023903210809/1000000000000000000",
      "1,10,11": "65637213899093/10000000000000000",
      "0,2,5": "-380515176543337/15625000000000000",
      "3,8,11": "-22222648052619/390625000000000",
      "0,8,11": "-140239869405097/781250000000000",
      "3,5,8": "-73749243104383/976562500000000"
     },
     "upper": "-22888655434130368759219/17439250000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CA6mm",
   "cell": "CA",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "EGO-",
    "BGO-"
   ],
   "stages": [
    "other_CA_C_6:0",
    "other_CA_C_6:1",
    "other_CA_C_6:2",
    "other_CA_C_6:3",
    "other_CA_C_6:4",
    "other_CA_C_6:5",
    "Ccap_CA6:0",
    "Ccap_CA6m:0",
    "Ccap_CA6m:1",
    "Ccap_CA6m:2",
    "Ccap_CA6m:3"
   ],
   "terminal": {
    "kind": "geometry",
    "stage": 10,
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
      "EOP": -1,
      "FOP": -1,
      "AGO": 1,
      "AGP": 1,
      "DGP": -1,
      "ACO": 1,
      "ACP": 1,
      "CEG": 1,
      "CFG": 1,
      "CGO": -1,
      "CGP": -1,
      "EHO": 1,
      "DFG": 1,
      "DGH": -1,
      "EGH": -1,
      "BHO": -1,
      "BHP": -1,
      "GHO": -1,
      "GHP": -1,
      "ADO": 1,
      "ADP": 1,
      "BEP": 1,
      "DFP": 1,
      "BDP": 1,
      "BDO": 1,
      "BOP": 1,
      "EGO": -1,
      "EGP": -1,
      "GOP": 1,
      "BEO": 1,
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
        "ECHOP"
       ],
       "target": "EHO",
       "sign": 1,
       "deps": [
        "CEH",
        "EOP",
        "CEO",
        "EHP",
        "CEP"
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
       "target": "BEP",
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
        "DEF",
        "OP",
        "FDE",
        [
         "fixed",
         "DEF"
        ]
       ],
       "target": "DFP",
       "sign": 1,
       "deps": [
        "DEO",
        "EFO",
        "DEP",
        "EFP",
        "FOP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "BADEP"
       ],
       "target": "BDP",
       "sign": 1,
       "deps": [
        "ABD",
        "BEP",
        "ABE",
        "ABP",
        "BDE"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "DABCO"
       ],
       "target": "BDO",
       "sign": 1,
       "deps": [
        "ABD",
        "CDO",
        "ACD",
        "ADO",
        "BCD"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "PBCEO"
       ],
       "target": "BOP",
       "sign": 1,
       "deps": [
        "BCP",
        "EOP",
        "BEP",
        "COP",
        "CEP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "ECGOP"
       ],
       "target": "EGP",
       "sign": -1,
       "deps": [
        "CEG",
        "EOP",
        "CEO",
        "CEP",
        "EGO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "OCEGP"
       ],
       "target": "GOP",
       "sign": 1,
       "deps": [
        "CEO",
        "CGO",
        "EOP",
        "COP",
        "EGO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "ray",
        "BCE",
        "GO",
        "EBC",
        [
         "fixed",
         "BCE"
        ]
       ],
       "target": "BEO",
       "sign": 1,
       "deps": [
        "BCG",
        "CEG",
        "BCO",
        "CEO",
        "EGO"
       ],
       "area_stage": null
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
     "contradiction": {
      "kind": "nomesh",
      "outer": "BEH",
      "points": "GOP"
     },
     "mesh_table": [
      {
       "order": "GOP",
       "opposite": "BPO"
      },
      {
       "order": "GPO",
       "opposite": "EGO"
      },
      {
       "order": "OGP",
       "opposite": "EOP"
      },
      {
       "order": "OPG",
       "opposite": "BGO"
      },
      {
       "order": "PGO",
       "opposite": "EGO"
      },
      {
       "order": "POG",
       "opposite": "BGO"
      }
     ]
    }
   },
   "word": "C"
  },
  {
   "id": "C_CB1",
   "cell": "CB",
   "given": [
    "AGO-",
    "AGP-",
    "DGP-"
   ],
   "stages": [
    "C_CB1:0",
    "C_CB1:1",
    "C_CB1:2",
    "C_CB1:3",
    "C_CB1:4",
    "C_CB1:5",
    "C_CB1:6",
    "C_CB1:7"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 7,
    "sum": {
     "factors": [
      {
       "weight": 266,
       "atoms": [
        "L0",
        "L0",
        "L3"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L2",
        "L5"
       ]
      },
      {
       "weight": 432,
       "atoms": [
        "L0",
        "L2",
        "L13"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L0",
        "L2",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L12",
        "L11"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L0",
        "L22",
        "L5"
       ]
      },
      {
       "weight": 168,
       "atoms": [
        "L0",
        "L22",
        "L13"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L22",
        "L23"
       ]
      },
      {
       "weight": 138,
       "atoms": [
        "L0",
        "L22",
        "Gsum"
       ]
      },
      {
       "weight": 125,
       "atoms": [
        "L0",
        "L24",
        "L19"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "L0",
        "L5",
        "L17"
       ]
      },
      {
       "weight": 61,
       "atoms": [
        "L0",
        "L5",
        "L19"
       ]
      },
      {
       "weight": 79,
       "atoms": [
        "L0",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L0",
        "AREA_HI_ADH",
        "span_BC"
       ]
      },
      {
       "weight": 44,
       "atoms": [
        "L0",
        "AREA_HI_BCF",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 39,
       "atoms": [
        "L0",
        "AREA_HI_BCF",
        "QUAD_745"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L2",
        "L12",
        "L9"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L2",
        "L18",
        "L9"
       ]
      },
      {
       "weight": 58,
       "atoms": [
        "L2",
        "L9",
        "L17"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L11",
        "L21"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L17",
        "overlap_bf"
       ]
      },
      {
       "weight": 89,
       "atoms": [
        "L2",
        "L17",
        "Gsum"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L4",
        "L14",
        "L15"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L6",
        "L10",
        "L19"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L6",
        "L12",
        "L9"
       ]
      },
      {
       "weight": 65,
       "atoms": [
        "L6",
        "L22",
        "L19"
       ]
      },
      {
       "weight": 54,
       "atoms": [
        "L6",
        "L5",
        "L17"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L6",
        "L5",
        "L19"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "L6",
        "L5",
        "overlap_ae"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L6",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L6",
        "L19",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L6",
        "L19",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L6",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L6",
        "L23",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 134,
       "atoms": [
        "L8",
        "L22",
        "L17"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L8",
        "L19",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L10",
        "L15",
        "span_BC"
       ]
      },
      {
       "weight": 335,
       "atoms": [
        "L12",
        "L12",
        "L9"
       ]
      },
      {
       "weight": 71,
       "atoms": [
        "L12",
        "L16",
        "L9"
       ]
      },
      {
       "weight": 314,
       "atoms": [
        "L12",
        "L18",
        "L9"
       ]
      },
      {
       "weight": 82,
       "atoms": [
        "L12",
        "L24",
        "L21"
       ]
      },
      {
       "weight": 206,
       "atoms": [
        "L12",
        "L9",
        "L25"
       ]
      },
      {
       "weight": 52,
       "atoms": [
        "L12",
        "L9",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L12",
        "L11",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 212,
       "atoms": [
        "L12",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 148,
       "atoms": [
        "L12",
        "L15",
        "L25"
       ]
      },
      {
       "weight": 48,
       "atoms": [
        "L12",
        "L15",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 128,
       "atoms": [
        "L12",
        "L15",
        "overlap_ae"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L12",
        "L15",
        "QUAD_745"
       ]
      },
      {
       "weight": 88,
       "atoms": [
        "L12",
        "L19",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 66,
       "atoms": [
        "L14",
        "L5",
        "L19"
       ]
      },
      {
       "weight": 262,
       "atoms": [
        "L16",
        "L16",
        "L23"
       ]
      },
      {
       "weight": 47,
       "atoms": [
        "L16",
        "L18",
        "L15"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L18",
        "L20",
        "L15"
       ]
      },
      {
       "weight": 55,
       "atoms": [
        "L18",
        "L1",
        "L15"
       ]
      },
      {
       "weight": 52,
       "atoms": [
        "L18",
        "L3",
        "L15"
       ]
      },
      {
       "weight": 528,
       "atoms": [
        "L18",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L18",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 170,
       "atoms": [
        "L18",
        "L15",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 338,
       "atoms": [
        "L18",
        "L15",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 78,
       "atoms": [
        "L18",
        "L15",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L18",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L18",
        "L15",
        "overlap_ae"
       ]
      },
      {
       "weight": 73,
       "atoms": [
        "L18",
        "L25",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L20",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 318,
       "atoms": [
        "L20",
        "L22",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L20",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L22",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L22",
        "L24",
        "L21"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L22",
        "L9",
        "L9"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L22",
        "L9",
        "L25"
       ]
      },
      {
       "weight": 305,
       "atoms": [
        "L22",
        "L9",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L22",
        "L15",
        "L25"
       ]
      },
      {
       "weight": 262,
       "atoms": [
        "L22",
        "L17",
        "L17"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L22",
        "L21",
        "overlap_bf"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "L22",
        "AREA_HI_ADH",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L22",
        "AREA_HI_ADH",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 106,
       "atoms": [
        "L24",
        "L3",
        "L15"
       ]
      },
      {
       "weight": 82,
       "atoms": [
        "L24",
        "L17",
        "L19"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L24",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 396,
       "atoms": [
        "L24",
        "L19",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 336,
       "atoms": [
        "L1",
        "L3",
        "L15"
       ]
      },
      {
       "weight": 4,
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
        "L5",
        "L15"
       ]
      },
      {
       "weight": 182,
       "atoms": [
        "L3",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 155,
       "atoms": [
        "L3",
        "L17",
        "L19"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "L3",
        "L17",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 82,
       "atoms": [
        "L3",
        "AREA_HI_ADE",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L5",
        "L9",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L5",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 38,
       "atoms": [
        "L5",
        "L19",
        "overlap_ae"
       ]
      },
      {
       "weight": 282,
       "atoms": [
        "L5",
        "L21",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L5",
        "L21",
        "span_DE"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "L5",
        "L21",
        "span_BC"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "L5",
        "L21",
        "overlap_ae"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L5",
        "AREA_HI_ADE",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 132,
       "atoms": [
        "L5",
        "AREA_HI_ADH",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L7",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L9",
        "L11",
        "L25"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L9",
        "L19",
        "L21"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L9",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L9",
        "L19",
        "overlap_fc"
       ]
      },
      {
       "weight": 67,
       "atoms": [
        "L9",
        "AREA_LO_AEH",
        "overlap_fc"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "L9",
        "span_BC",
        "overlap_fc"
       ]
      },
      {
       "weight": 53,
       "atoms": [
        "L11",
        "L21",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L11",
        "AREA_HI_ADH",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 64,
       "atoms": [
        "L13",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 419,
       "atoms": [
        "L13",
        "L17",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 370,
       "atoms": [
        "L13",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "L13",
        "L21",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 44,
       "atoms": [
        "L13",
        "AREA_HI_ADH",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L15",
        "L21",
        "L23"
       ]
      },
      {
       "weight": 177,
       "atoms": [
        "L15",
        "L23",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L15",
        "L23",
        "overlap_bf"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L15",
        "L23",
        "overlap_ae"
       ]
      },
      {
       "weight": 104,
       "atoms": [
        "L15",
        "L23",
        "QUAD_745"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "L15",
        "L25",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 121,
       "atoms": [
        "L15",
        "AREA_LO_AEH",
        "span_BC"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L15",
        "AREA_LO_AEH",
        "overlap_bf"
       ]
      },
      {
       "weight": 48,
       "atoms": [
        "L15",
        "span_DE",
        "span_BC"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L15",
        "span_BC",
        "overlap_bf"
       ]
      },
      {
       "weight": 348,
       "atoms": [
        "L17",
        "L19",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L17",
        "AREA_HI_ADE",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L19",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "L19",
        "L25",
        "overlap_bf"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "L19",
        "AREA_HI_ADE",
        "Gsum"
       ]
      },
      {
       "weight": 142,
       "atoms": [
        "L21",
        "L23",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_HI_ADH",
        "AREA_HI_BCF",
        "span_DE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABC",
        "L2"
       ]
      },
      {
       "weight": 38,
       "atoms": [
        "AREA_LO_ABC",
        "L14"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_ABC",
        "L22"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_ABC",
        "L11"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "AREA_LO_ABC",
        "L17"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "AREA_LO_ABC",
        "L19"
       ]
      },
      {
       "weight": 147,
       "atoms": [
        "AREA_LO_ABC",
        "span_DE"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ABC",
        "span_DE_hi"
       ]
      },
      {
       "weight": 59,
       "atoms": [
        "AREA_LO_ABC",
        "overlap_ae"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "AREA_LO_ACE",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_HI_ADF",
        "L5"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_HI_AEF",
        "L15"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_BCD",
        "L5"
       ]
      },
      {
       "weight": 54,
       "atoms": [
        "AREA_LO_BCD",
        "L17"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CDE",
        "L6"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_CDE",
        "L8"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_CDE",
        "L17"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "AREA_LO_CDE",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_HI_DEF",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EFH",
        "L14"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_EFH",
        "L18"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_EFH",
        "L21"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_EFH",
        "L23"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EFH",
        "L25"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "AREA_LO_EFH",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EFH",
        "span_DE"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_EFH",
        "overlap_ae"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ABG",
        "L10"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "AREA_LO_ABG",
        "L18"
       ]
      },
      {
       "weight": 67,
       "atoms": [
        "AREA_LO_ABG",
        "L24"
       ]
      },
      {
       "weight": 61,
       "atoms": [
        "AREA_LO_ABG",
        "L17"
       ]
      },
      {
       "weight": 250,
       "atoms": [
        "AREA_LO_ABG",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_ABG",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "AREA_LO_ABG",
        "span_DE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABG",
        "overlap_bf"
       ]
      },
      {
       "weight": 59,
       "atoms": [
        "AREA_LO_ABG",
        "overlap_eh"
       ]
      },
      {
       "weight": 447,
       "atoms": [
        "AREA_LO_ABG",
        "Gsum"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_CDO",
        "L0"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_CDO",
        "L8"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CDO",
        "L10"
       ]
      },
      {
       "weight": 51,
       "atoms": [
        "AREA_LO_CDO",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CDO",
        "span_DE"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_CDO",
        "span_BC"
       ]
      },
      {
       "weight": 43,
       "atoms": [
        "AREA_LO_CDO",
        "overlap_ae"
       ]
      },
      {
       "weight": 65,
       "atoms": [
        "AREA_LO_DEO",
        "L22"
       ]
      },
      {
       "weight": 348,
       "atoms": [
        "AREA_LO_DEO",
        "L17"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_DEO",
        "overlap_bf"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "AREA_LO_DEO",
        "Gsum"
       ]
      },
      {
       "weight": 125,
       "atoms": [
        "AREA_HI_DEO",
        "L15"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_EFO",
        "L23"
       ]
      },
      {
       "weight": 53,
       "atoms": [
        "AREA_LO_EFO",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EFO",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_EFO",
        "overlap_eh"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "AREA_LO_CEO",
        "L7"
       ]
      },
      {
       "weight": 328,
       "atoms": [
        "AREA_LO_CEO",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "AREA_LO_CEO",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_CEO",
        "span_DE"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_CEO",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_HI_EFP",
        "L15"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "AREA_LO_CEP",
        "L15"
       ]
      },
      {
       "weight": 82,
       "atoms": [
        "AREA_LO_HOP",
        "L16"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_HOP",
        "L20"
       ]
      },
      {
       "weight": 766,
       "atoms": [
        "AREA_LO_HOP",
        "L13"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_HOP",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_HOP",
        "L23"
       ]
      },
      {
       "weight": 680,
       "atoms": [
        "AREA_LO_HOP",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1000,
       "atoms": [
        "AREA_LO_HOP",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_HOP",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_HOP",
        "span_DE_hi"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_HOP",
        "overlap_eh"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_EHP",
        "L5"
       ]
      },
      {
       "weight": 419,
       "atoms": [
        "AREA_LO_BGH",
        "L16"
       ]
      },
      {
       "weight": 132,
       "atoms": [
        "AREA_LO_BGH",
        "L18"
       ]
      },
      {
       "weight": 152,
       "atoms": [
        "AREA_LO_BGH",
        "L24"
       ]
      },
      {
       "weight": 660,
       "atoms": [
        "AREA_LO_BGH",
        "L1"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BGH",
        "L3"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BGH",
        "L7"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BGH",
        "L11"
       ]
      },
      {
       "weight": 183,
       "atoms": [
        "AREA_LO_BGH",
        "L13"
       ]
      },
      {
       "weight": 73,
       "atoms": [
        "AREA_LO_BGH",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 51,
       "atoms": [
        "AREA_LO_BGH",
        "overlap_eh"
       ]
      },
      {
       "weight": 61,
       "atoms": [
        "AREA_LO_EOP"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "AREA_LO_EOP",
        "L10"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EOP",
        "L18"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_EOP",
        "L20"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EOP",
        "L22"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_EOP",
        "L24"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "AREA_LO_EOP",
        "L3"
       ]
      },
      {
       "weight": 365,
       "atoms": [
        "AREA_LO_EOP",
        "L13"
       ]
      },
      {
       "weight": 254,
       "atoms": [
        "AREA_LO_EOP",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EOP",
        "span_DE"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_EOP",
        "span_BC_hi"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "AREA_LO_EOP",
        "overlap_ae"
       ]
      },
      {
       "weight": 504,
       "atoms": [
        "AREA_LO_AGP",
        "L0"
       ]
      },
      {
       "weight": 64,
       "atoms": [
        "AREA_LO_AGP",
        "L14"
       ]
      },
      {
       "weight": 65,
       "atoms": [
        "AREA_LO_AGP",
        "L18"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_AGP",
        "L3"
       ]
      },
      {
       "weight": 235,
       "atoms": [
        "AREA_LO_AGP",
        "L13"
       ]
      },
      {
       "weight": 82,
       "atoms": [
        "AREA_LO_AGP",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_AGP",
        "L23"
       ]
      },
      {
       "weight": 506,
       "atoms": [
        "AREA_LO_AGP",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_AGP",
        "span_DE"
       ]
      },
      {
       "weight": 506,
       "atoms": [
        "AREA_LO_AGP",
        "span_BC_hi"
       ]
      },
      {
       "weight": 203,
       "atoms": [
        "AREA_LO_AGP",
        "overlap_ae"
       ]
      },
      {
       "weight": 71,
       "atoms": [
        "AREA_LO_AGP",
        "Gsum"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "AREA_LO_GHP",
        "L12"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_GHP",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_GHP",
        "L25"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "AREA_HI_GHP",
        "L15"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_EGP",
        "L2"
       ]
      },
      {
       "weight": 335,
       "atoms": [
        "AREA_LO_EGP",
        "L12"
       ]
      },
      {
       "weight": 71,
       "atoms": [
        "AREA_LO_EGP",
        "L16"
       ]
      },
      {
       "weight": 679,
       "atoms": [
        "AREA_LO_EGP",
        "L18"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EGP",
        "L25"
       ]
      },
      {
       "weight": 553,
       "atoms": [
        "AREA_LO_EGP",
        "span_AH"
       ]
      },
      {
       "weight": 320,
       "atoms": [
        "AREA_LO_EGP",
        "span_AH_hi"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EGP",
        "span_DE_hi"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EGP",
        "overlap_ae"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_AEP",
        "overlap_fc"
       ]
      },
      {
       "weight": 87,
       "atoms": [
        "AREA_HI_AOP",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_GOP",
        "L22"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "AREA_HI_GOP",
        "L15"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "AREA_LO_EGO",
        "L22"
       ]
      },
      {
       "weight": 218,
       "atoms": [
        "QUAD_691",
        "L17"
       ]
      },
      {
       "weight": 730,
       "atoms": [
        "QUAD_929",
        "L22"
       ]
      },
      {
       "weight": 51,
       "atoms": [
        "NATURAL_SUPPORT_958_ABH",
        "L15"
       ]
      }
     ],
     "sum": {
      "0,0": "207242584749/488281250000000",
      "0,1": "3477747682228787829/96578125000000000000",
      "0,1,6": "136571495307561/15625000000000000",
      "0,1,7": "2634490267767/976562500000000",
      "0,6": "-199000473441321609/6898437500000000000",
      "0,5,6": "100003535739/4882812500000",
      "0,11": "1091795690395179/43115234375000000",
      "0,2,11": "904018917681/97656250000000",
      "0,6,11": "-413094774213/48828125000000",
      "0,8,11": "-19303024257/2441406250000",
      "0,12": "-42727086654489/3125000000000000",
      "0,9,12": "4293710459199/1562500000000000",
      "0": "-183380116714716393/7726250000000000000",
      "0,8": "1704877015761/195312500000000",
      "0,2": "-1547859774177999/218750000000000000",
      "0,9": "925099078491/390625000000000",
      "0,7": "-6030693285363/976562500000000",
      "0,4": "259719799437/156250000000000",
      "0,3": "-742258406865591/312500000000000",
      "0,2,4": "-6315204676221/625000000000000",
      "0,2,3": "-18945614028663/125000000000000",
      "1,6": "-1099034336055483/500000000000000000",
      "1,9": "-344532318015683/25000000000000000",
      "1,4,9": "101505902852249/10000000000000000",
      "1": "-3372178063807727561131/55187500000000000000000",
      "1,8": "57134740307486303/4415000000000000000",
      "1,4": "145324967615821/10000000000000000",
      "1,10": "-5472894406526311/250000000000000000",
      "1,5": "7392899541387/39062500000000",
      "1,1": "-6809567215197707/250000000000000000",
      "1,6,8": "-178976681318671487/12500000000000000",
      "2,7": "597446618733/195312500000000",
      "3,5": "-558022207197/6250000000000",
      "3,6": "11513691193963/625000000000000",
      "3,11": "51949461179/15625000000000",
      "3": "456443344098860783/4415000000000000000",
      "3,8": "-25097358699/625000000000",
      "2,3": "-49656146688281/1250000000000000",
      "3,9": "83461691352921/5000000000000000",
      "3,4": "153458672801/400000000000000",
      "2,3,4": "-15138340266623/400000000000000",
      "3,3": "-27735749153/500000000000",
      "1,3": "-20056100603206017/625000000000000000",
      "3,7": "81812419731/6250000000000",
      "3,7,11": "-248324985909/244140625000",
      "4,11": "6130431446601/617187500000000",
      "4": "-22026346286583723651/279028000000000000000",
      "2,4": "-63836027920623/5000000000000000",
      "4,9": "-703440739589/156250000000000",
      "2,4,9": "-101505902852249/10000000000000000",
      "5": "1021164438033/62500000000000",
      "2,5": "-8129757847773/156250000000000",
      "5,7": "-65646443007/4882812500000",
      "1,5,7": "218848297743/9765625000000",
      "6,6": "-12448405272989693/250000000000000000",
      "6,8": "-112140947483157/12500000000000000",
      "6,9": "-2983335743773511/250000000000000000",
      "6,12": "291370779863988853/21799062500000000000",
      "6": "138209614590570421619961/1586971750000000000000000",
      "4,6": "27101939431981127/395000000000000000",
      "6,7": "-11021909945354541/710937500000000000",
      "4,6,7": "2885756037633/312500000000000",
      "5,6": "-11078590083843/78125000000000",
      "6,7,9": "-19349629275879/7812500000000000",
      "7": "98674237778980833/2160156250000000000",
      "7,9": "4153447462854879/617187500000000000",
      "8,8": "158044196589/15625000000000",
      "8,9": "-269943864586333/12500000000000000",
      "9,10": "-4017000966924883/125000000000000000",
      "9": "374972976375866150863/8719625000000000000000",
      "2,9": "1295769825516873/500000000000000000",
      "5,9": "983444315301/156250000000000",
      "9,12": "-5416632380297971/395000000000000000",
      "7,9,12": "-4293710459199/1562500000000000",
      "10,11": "12662222730906111/123437500000000000",
      "10,10,11": "-53818467503251/781250000000000",
      "7,10,11": "654875557281/24414062500000",
      "0,10,11": "-34708404535893/48828125000000",
      "10": "155758457195684291/39500000000000000000",
      "10,12": "3571876030076627/50000000000000000",
      "9,10,12": "352862332770829/25000000000000000",
      "11,11": "-840552757/1220703125000",
      "11,12": "1757146686889/39062500000000",
      "11": "-294649950328644253827/1525934375000000000000",
      "7,11": "-1806896694530367/27001953125000000",
      "4,7,11": "19101921993/1953125000000",
      "8,11": "9636081962083159/136244140625000000",
      "5,11": "311606889/39062500000",
      "1,11": "3302061388417/195312500000000",
      "5,10,11": "54400808649/488281250000",
      "1,10,11": "-1262987307198067/1562500000000000",
      "0,0,11": "-87655449321/122070312500",
      "2,11": "-16709298838441/781250000000000",
      "2,7,11": "-904018917681/97656250000000",
      "1,7,11": "904018917681/97656250000000",
      "0,1,11": "-904018917681/97656250000000",
      "12": "-340234690148947994717/3487850000000000000000",
      "7,12": "31869075016341/3125000000000000",
      "1,12": "3697823060179643/100000000000000000",
      "1,7,12": "-30305410479441/3125000000000000",
      "8,12": "-172150390731/12500000000000",
      "12,12": "362978238457/50000000000000",
      "": "-5214332964763811797121747/488299000000000000000000",
      "1,7": "-387695167867251423/15625000000000000000",
      "0,5": "106792192179/9765625000000",
      "0,5,7": "1929087333/305175781250",
      "2": "1259495029158781/31250000000000000",
      "1,2": "3195006238116931/1000000000000000000",
      "8": "-26886448827173535411/871962500000000000000",
      "7,8": "-800375550219/195312500000000",
      "0,1,8": "-1257192976300713/781250000000000",
      "4,7": "-1208338025643/625000000000000",
      "1,3,7": "-1092530408986233/625000000000000000",
      "2,4,7": "6315204676221/625000000000000",
      "7,10": "-254850943760793/15625000000000000",
      "0,10": "111662637284331/3906250000000000",
      "2,10": "51812682620312409/500000000000000000",
      "0,2,10": "-216505605205557/15625000000000000",
      "4,10": "-3003341371961/50000000000000",
      "3,10": "-129882889017/50000000000000",
      "2,2": "9651016089019263/1000000000000000000",
      "7,7": "-190133126631/488281250000000",
      "4,5": "675047071797/3125000000000",
      "3,4,5": "-11084945277/125000000000",
      "5,12": "-562582411887/7812500000000",
      "4,12": "55914994455061/1000000000000000",
      "4,5,7": "-4624265079/97656250000",
      "2,4,5": "524606907909/6250000000000",
      "1,4,5": "-524606907909/6250000000000",
      "5,10": "-3308002594161/15625000000000",
      "0,1,5": "-218848297743/9765625000000",
      "6,11": "51390988057167/781250000000000",
      "6,7,11": "413094774213/48828125000000",
      "0,6,8": "-2916136858617/2441406250000",
      "6,10": "-12225771882166431/250000000000000000",
      "0,6,10": "-4649852586492567/7812500000000000",
      "0,0,6": "-10834560283419/488281250000000",
      "1,7,7": "455766816323691/976562500000000000",
      "4,8": "12571413491749/500000000000000",
      "2,8": "-44774726054881/1000000000000000",
      "1,3,8": "15297714517127/500000000000000",
      "4,4": "-39709360929/400000000000000",
      "4,5,11": "-1586805297/19531250000",
      "5,8": "201462561/3906250000",
      "1,8,12": "73410687635267/2500000000000000",
      "0,1,12": "-2030462502122547/3125000000000000",
      "0,6,12": "13848168942693/1562500000000000",
      "0,3,6": "-112544485467687/312500000000000",
      "0,6,6": "-46992356405036109/7812500000000000",
      "0,3,9": "-9842211649809/156250000000000",
      "7,8,11": "19303024257/2441406250000",
      "10,10": "7188641001019023/250000000000000000",
      "6,10,11": "-1256099292573851/78125000000000",
      "4,11,11": "-6554777999/97656250000",
      "0,9,11": "-1665073677267/9765625000000",
      "1,6,12": "-1571026955660303/50000000000000000",
      "1,8,11": "2189861458147/78125000000000",
      "0,5,11": "-1985884857/30517578125"
     },
     "upper": "-6693516267010973701535064249/793485875000000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "C_CB2",
   "cell": "CB",
   "given": [
    "AGO-",
    "AGP-",
    "DGP+"
   ],
   "stages": [
    "C_CB2:0",
    "C_CB2:1",
    "C_CB2:2",
    "C_CB2:3",
    "C_CB2:4",
    "C_CB2:5",
    "C_CB2:6",
    "C_CB2:7"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 7,
    "sum": {
     "factors": [
      {
       "weight": 1,
       "atoms": [
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L2",
        "L6",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L6",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L8",
        "L21"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L2",
        "L18",
        "L7"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L2",
        "L22",
        "L9"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L2",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L2",
        "L22",
        "L25"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L24",
        "L5"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "L2",
        "L24",
        "L9"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L2",
        "L7",
        "L15"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "L2",
        "L7",
        "L25"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L2",
        "L7",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "L2",
        "L9",
        "L17"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L2",
        "L9",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L2",
        "L17",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L2",
        "L17",
        "overlap_eh"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L2",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L2",
        "L19",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L2",
        "L21",
        "L25"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L2",
        "AREA_HI_ADE",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L2",
        "AREA_HI_ADE",
        "Gsum"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L4",
        "L16",
        "L7"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "L4",
        "L22",
        "L7"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L4",
        "L22",
        "L25"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "L4",
        "L24",
        "L9"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "L4",
        "L7",
        "L19"
       ]
      },
      {
       "weight": 47,
       "atoms": [
        "L4",
        "L7",
        "L25"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L4",
        "L9",
        "L9"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "L6",
        "L12",
        "L19"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L8",
        "L18",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L8",
        "L22",
        "L9"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L8",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L8",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L12",
        "L12",
        "L9"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L12",
        "L18",
        "L15"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "L12",
        "L20",
        "L5"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L12",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 43,
       "atoms": [
        "L12",
        "L24",
        "L9"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L12",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L12",
        "L9",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L12",
        "L15",
        "L15"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L12",
        "L15",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "L12",
        "L15",
        "span_DE_hi"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L12",
        "L17",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L12",
        "L19",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 61,
       "atoms": [
        "L12",
        "L25",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "L14",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L16",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L18",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L18",
        "L7",
        "L15"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L18",
        "L15",
        "L25"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L20",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "L22",
        "L22",
        "L7"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L22",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L22",
        "L3",
        "L15"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L22",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L22",
        "L7",
        "L9"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L22",
        "L7",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L22",
        "L7",
        "L21"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L22",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L22",
        "L9",
        "L21"
       ]
      },
      {
       "weight": 76,
       "atoms": [
        "L22",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "L24",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L3",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L5",
        "L7",
        "L21"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L5",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L5",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "L5",
        "L15",
        "L15"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "L5",
        "L17",
        "L25"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L7",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L9",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L9",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 76,
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
        "L15",
        "L23"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L15",
        "L17",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 55,
       "atoms": [
        "L15",
        "L25",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L17",
        "L25",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_BCF",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "span_DE",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EFH"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "AREA_LO_EFH",
        "L14"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EFH",
        "L16"
       ]
      },
      {
       "weight": 76,
       "atoms": [
        "AREA_LO_EFH",
        "L22"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "AREA_LO_EFH",
        "L24"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EFH",
        "L3"
       ]
      },
      {
       "weight": 76,
       "atoms": [
        "AREA_LO_EFH",
        "L13"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_EFH",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_EFH",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ABG"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABG",
        "L2"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_ABG",
        "L14"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABG",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_ABG",
        "span_DE"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_ABG",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CDO",
        "L12"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "AREA_LO_CDO",
        "L15"
       ]
      },
      {
       "weight": 77,
       "atoms": [
        "AREA_LO_DEO",
        "L22"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_DEO",
        "L9"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_CEO"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "AREA_LO_CEO",
        "L14"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_CEO",
        "L3"
       ]
      },
      {
       "weight": 62,
       "atoms": [
        "AREA_LO_CEO",
        "L13"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_CEO",
        "L25"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CEO",
        "span_DE"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CEO",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_DEP",
        "L4"
       ]
      },
      {
       "weight": 50,
       "atoms": [
        "AREA_LO_DEP",
        "L22"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_DEP",
        "L9"
       ]
      },
      {
       "weight": 69,
       "atoms": [
        "AREA_LO_DEP",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_DEP",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_DEP",
        "Gsum"
       ]
      },
      {
       "weight": 94,
       "atoms": [
        "AREA_LO_CHP",
        "L16"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CHP",
        "L22"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_CHP",
        "L3"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "AREA_LO_CHP",
        "L7"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CHP",
        "L15"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_CHP",
        "L21"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_CHP",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_CHP",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_HOP",
        "L12"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_BGH"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "AREA_LO_BGH",
        "L8"
       ]
      },
      {
       "weight": 57,
       "atoms": [
        "AREA_LO_BGH",
        "L22"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BGH",
        "L5"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_BGH",
        "L13"
       ]
      },
      {
       "weight": 94,
       "atoms": [
        "AREA_LO_BGH",
        "L25"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "AREA_LO_BGH",
        "span_DE_hi"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_BGH",
        "overlap_ae"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_HI_COP",
        "L15"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "AREA_LO_EOP"
       ]
      },
      {
       "weight": 65,
       "atoms": [
        "AREA_LO_EOP",
        "L14"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "AREA_LO_EOP",
        "L3"
       ]
      },
      {
       "weight": 50,
       "atoms": [
        "AREA_LO_EOP",
        "L13"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_EOP",
        "span_BC_hi"
       ]
      },
      {
       "weight": 69,
       "atoms": [
        "AREA_LO_DGP"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_DGP",
        "L8"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_DGP",
        "L12"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_DGP",
        "L14"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_DGP",
        "L17"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_DGP",
        "L19"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_DGP",
        "L23"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_DGP",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_CEG",
        "L4"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_CEG",
        "L16"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "AREA_LO_CEG",
        "L18"
       ]
      },
      {
       "weight": 62,
       "atoms": [
        "AREA_LO_CEG",
        "L22"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "AREA_LO_CEG",
        "L24"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_CEG",
        "L7"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CEG",
        "L13"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CEG",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CGP",
        "L12"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_CGP",
        "L5"
       ]
      },
      {
       "weight": 80,
       "atoms": [
        "AREA_LO_CGP",
        "L15"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_CGP",
        "L17"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "AREA_LO_DOP"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_DOP",
        "L8"
       ]
      },
      {
       "weight": 52,
       "atoms": [
        "AREA_LO_DOP",
        "L14"
       ]
      },
      {
       "weight": 36,
       "atoms": [
        "AREA_LO_DOP",
        "L13"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "AREA_LO_DOP",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 72,
       "atoms": [
        "AREA_LO_GHP"
       ]
      },
      {
       "weight": 73,
       "atoms": [
        "AREA_LO_GHP",
        "L8"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_GHP",
        "L14"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_GHP",
        "L18"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_GHP",
        "L22"
       ]
      },
      {
       "weight": 40,
       "atoms": [
        "AREA_LO_GHP",
        "L3"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_GHP",
        "L13"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_GHP",
        "span_DE"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "AREA_LO_GHP",
        "span_BC_hi"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "AREA_LO_GOP",
        "L4"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_DHP",
        "L12"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_BEP",
        "L6"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_BEP",
        "L18"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_BEP",
        "L20"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_BEP",
        "L5"
       ]
      },
      {
       "weight": 86,
       "atoms": [
        "AREA_LO_BEP",
        "L17"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_BEP",
        "L23"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_BEP",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BEP",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_BEP",
        "Gsum"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "AREA_HI_BEP",
        "L15"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_HI_BDP",
        "L15"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_BOP",
        "L5"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_BOP",
        "L9"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "Central_order",
        "L8"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "Central_order",
        "L12"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "Central_order",
        "L17"
       ]
      }
     ],
     "sum": {
      "": "-217817382361772819265003/69757000000000000000000",
      "7": "-2513767768293806711/39500000000000000000",
      "4": "45696355593755393527/883000000000000000000",
      "2": "6310414649316141/100000000000000000",
      "2,7": "-738381600729339/50000000000000000",
      "2,4": "-30872437918413/6250000000000000",
      "5": "1318935752519/122070312500000",
      "5,7": "35618071178627/488281250000000",
      "4,5": "-22277783685703/488281250000000",
      "1,3": "2135675590525042677/110375000000000000000",
      "1,3,4": "-8759236435343121/1000000000000000000",
      "1,4": "4340998768789137/200000000000000000",
      "1,4,10": "-4148726997634947/500000000000000000",
      "1,9": "446690575490697/62500000000000000",
      "1,11": "38608251626881683/1000000000000000000",
      "1,10,11": "10403894799771147/500000000000000000",
      "1,12": "13549071062742119703/441500000000000000000",
      "1,2,12": "2033310778728831/100000000000000000",
      "1": "4022648897607783573603/69757000000000000000000",
      "1,7": "-78501183131090751/79000000000000000000",
      "1,3,7": "14004405071259189/1000000000000000000",
      "0,1": "-37038479911778103/125000000000000000",
      "1,8": "-6640877898871563/2468750000000000000",
      "1,4,4": "2826750624446931/1000000000000000000",
      "1,3,8": "-737537892190887/31250000000000000",
      "1,9,12": "-3953649880025421/500000000000000000",
      "1,4,9": "1679114203333203/500000000000000000",
      "1,10": "-13609985157283221/500000000000000000",
      "1,6": "-373568285790769677/1000000000000000000",
      "2,8": "9620903981913/3125000000000000",
      "2,11": "-7240017658041/4000000000000000",
      "2,12": "-6450644789986929/100000000000000000",
      "2,4,12": "991561861620057/100000000000000000",
      "2,9": "9343439026887/2000000000000000",
      "2,3": "3243052133114241/100000000000000000",
      "3,6": "201089781179103/31250000000000000",
      "4,9": "2039733185811321/500000000000000000",
      "4,11": "-2146933195483052067/220750000000000000000",
      "4,4,11": "-3456882696132957/1000000000000000000",
      "4,7": "517079854888051/100000000000000000",
      "4,6": "121785561918839/50000000000000000",
      "6,6": "2125128979932369/1000000000000000000",
      "6,9": "-620381660251133/250000000000000000",
      "6,7,9": "1094486872565719/500000000000000000",
      "6,10": "-1669364988273909/500000000000000000",
      "2,6,10": "-516707848805337/50000000000000000",
      "6,11": "-9629557681479171/1000000000000000000",
      "6,12": "-1018265933453259/62500000000000000",
      "6": "-543052863315422907/15800000000000000000",
      "6,7": "44915864485483/8000000000000000",
      "0,6": "1995406199463831/125000000000000000",
      "0,4,6": "1150330438568311/250000000000000000",
      "2,6": "1792943747555331/100000000000000000",
      "1,6,7": "-11335039082579187/100000000000000000",
      "6,8": "354104548974031/31250000000000000",
      "1,6,12": "-5564438212455267/1000000000000000000",
      "7,7": "317154006481473/100000000000000000",
      "2,7,7": "-1076461921370031/100000000000000000",
      "8": "-21423551683071307/493750000000000000",
      "7,8": "12027299733551/31250000000000000",
      "4,8": "-3323807402461/6250000000000000",
      "9,11": "-330246557993163/7812500000000000",
      "9": "24909663497884383/500000000000000000",
      "7,9": "-43441634732169/15625000000000000",
      "3,9": "-23250848462101213/500000000000000000",
      "3,7,9": "4056705247397779/500000000000000000",
      "9,12": "-2274233500716843/500000000000000000",
      "10": "10499860512072747/500000000000000000",
      "7,10": "-11557723228802703/500000000000000000",
      "2,10": "123780415958451/50000000000000000",
      "11,11": "-11435690716607637/250000000000000000",
      "11": "-2961115020728898267/17660000000000000000",
      "7,11": "3414638714684019/500000000000000000",
      "1,7,11": "11333577172827879/1000000000000000000",
      "3,11": "13833813513147678609/883000000000000000000",
      "3,9,11": "6362915175663231/500000000000000000",
      "10,11": "9566820251581041/500000000000000000",
      "4,9,11": "-2053418078034141/500000000000000000",
      "4,10,11": "5073550685748909/500000000000000000",
      "12": "-17437783090084542427/220750000000000000000",
      "7,12": "11591908829016987/500000000000000000",
      "4,12": "-4255879519416161/500000000000000000",
      "2,7,12": "1585324710189213/100000000000000000",
      "1,2": "-2372776556647581/100000000000000000",
      "1,2,7": "-1380651934297797/100000000000000000",
      "3": "-3852592491871436279/44150000000000000000",
      "3,10": "9042754137207273/500000000000000000",
      "8,12": "-292302036676551/7812500000000000",
      "3,4": "-2351094984728763/100000000000000000",
      "4,4": "6855835453608141/1000000000000000000",
      "2,4,6": "352060821331401/100000000000000000",
      "1,8,12": "560432815890699/31250000000000000",
      "3,7": "-5937140219962143/1000000000000000000",
      "0": "-479108390786619/31250000000000000",
      "0,2": "15496681879833/1250000000000000",
      "0,1,2": "-861963744073509/25000000000000000",
      "3,8": "230029969582967/7812500000000000",
      "0,4": "-756802522877401/62500000000000000",
      "0,3": "-14136569262783/31250000000000000",
      "0,1,4": "-25394122730743767/250000000000000000",
      "0,3,6": "-32080702778466309/125000000000000000",
      "10,12": "17164272628791/500000000000000",
      "4,9,12": "-1928032092409787/500000000000000000",
      "4,11,11": "-355426327395121437/1000000000000000000",
      "8,11": "1270245848838549/31250000000000000",
      "4,8,11": "291073542320379/31250000000000000",
      "7,8,11": "465372960562311/31250000000000000",
      "11,12": "6503233312547817/250000000000000000",
      "3,12": "-5570240103879281/500000000000000000",
      "3,7,11": "-17126231490598683/1000000000000000000",
      "7,10,11": "8111672687142081/500000000000000000",
      "6,9,12": "-1611870377958037/500000000000000000",
      "6,10,11": "4241581918486659/500000000000000000",
      "1,6,8": "-596956514063121/15625000000000000",
      "6,7,12": "-4338461925648841/1000000000000000000",
      "0,8": "1041015019/244140625000",
      "0,1,8": "-237579406621161/488281250000000",
      "6,6,12": "2268575467430299/1000000000000000000",
      "3,6,6": "-2985478938925687/125000000000000000",
      "6,8,11": "-243342848140629/31250000000000000",
      "8,9": "169355368106869/7812500000000000",
      "1,3,11": "-153760712903278047/250000000000000000",
      "3,6,12": "-8408453526051559/125000000000000000"
     },
     "upper": "-1168154660509789622879/558056000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CB3p",
   "cell": "CB",
   "given": [
    "AGO-",
    "AGP+",
    "DGP-",
    "FGP+"
   ],
   "stages": [
    "other_CB_C_3:0",
    "other_CB_C_3:1",
    "other_CB_C_3:2",
    "other_CB_C_3:3",
    "other_CB_C_3:4",
    "other_CB_C_3:5",
    "other_CB_C_3:6",
    "other_CB_C_3:7",
    "Ccap_CB3:0",
    "Ccap_CB3p:0",
    "Ccap_CB3p:1"
   ],
   "terminal": {
    "kind": "scalar",
    "stage": 10,
    "contradiction": {
     "triangle": "AFG",
     "lower": "T1975",
     "upper": "T1959"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CB3mp",
   "cell": "CB",
   "given": [
    "AGO-",
    "AGP+",
    "DGP-",
    "FGP-",
    "BGP+"
   ],
   "stages": [
    "other_CB_C_3:0",
    "other_CB_C_3:1",
    "other_CB_C_3:2",
    "other_CB_C_3:3",
    "other_CB_C_3:4",
    "other_CB_C_3:5",
    "other_CB_C_3:6",
    "other_CB_C_3:7",
    "Ccap_CB3:0",
    "Ccap_CB3m:0",
    "Ccap_CB3m:1",
    "Ccap_CB3mp:0",
    "Ccap_CB3mp:1",
    "Ccap_CB3mp:2",
    "Ccap_CB3mp:3"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 14,
    "sum": {
     "factors": [
      {
       "weight": 78,
       "atoms": [
        "L18",
        "L15"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "L0",
        "L2",
        "L15"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L0",
        "L2",
        "L25"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "L0",
        "L4",
        "L15"
       ]
      },
      {
       "weight": 44,
       "atoms": [
        "L0",
        "L6",
        "L13"
       ]
      },
      {
       "weight": 186,
       "atoms": [
        "L0",
        "L18",
        "L13"
       ]
      },
      {
       "weight": 72,
       "atoms": [
        "L0",
        "L18",
        "L19"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L0",
        "L18",
        "Gsum"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L0",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 63,
       "atoms": [
        "L0",
        "L5",
        "L13"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L0",
        "L5",
        "overlap_eh"
       ]
      },
      {
       "weight": 65,
       "atoms": [
        "L0",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 67,
       "atoms": [
        "L0",
        "L13",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "L0",
        "L15",
        "overlap_fc"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L0",
        "L25",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L2",
        "L1"
       ]
      },
      {
       "weight": 60,
       "atoms": [
        "L2",
        "L6",
        "L5"
       ]
      },
      {
       "weight": 49,
       "atoms": [
        "L2",
        "L6",
        "L17"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L6",
        "L21"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L6",
        "L25"
       ]
      },
      {
       "weight": 133,
       "atoms": [
        "L2",
        "L12",
        "L21"
       ]
      },
      {
       "weight": 231,
       "atoms": [
        "L2",
        "L14",
        "L5"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L2",
        "L18",
        "L21"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L2",
        "L20",
        "Gsum"
       ]
      },
      {
       "weight": 211,
       "atoms": [
        "L2",
        "L1",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 59,
       "atoms": [
        "L2",
        "L5",
        "L21"
       ]
      },
      {
       "weight": 162,
       "atoms": [
        "L2",
        "L5",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 133,
       "atoms": [
        "L2",
        "L21",
        "L23"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L2",
        "L21",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 111,
       "atoms": [
        "L2",
        "L25",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L2",
        "AREA_HI_ADH",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L4",
        "L10",
        "L15"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L4",
        "L18",
        "L15"
       ]
      },
      {
       "weight": 186,
       "atoms": [
        "L4",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 65,
       "atoms": [
        "L4",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L4",
        "L15",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 49,
       "atoms": [
        "L4",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L6",
        "L12",
        "L21"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L6",
        "L18",
        "L9"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "L6",
        "L18",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 54,
       "atoms": [
        "L6",
        "L5",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L6",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L6",
        "L13",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L6",
        "L17",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L8",
        "AREA_HI_BCF",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L10",
        "L5",
        "L25"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L10",
        "L5",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L10",
        "L13",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L10",
        "L25",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 470,
       "atoms": [
        "L12",
        "L18",
        "L15"
       ]
      },
      {
       "weight": 102,
       "atoms": [
        "L12",
        "L18",
        "L21"
       ]
      },
      {
       "weight": 96,
       "atoms": [
        "L12",
        "L22",
        "L19"
       ]
      },
      {
       "weight": 566,
       "atoms": [
        "L12",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 179,
       "atoms": [
        "L12",
        "L3",
        "L15"
       ]
      },
      {
       "weight": 238,
       "atoms": [
        "L12",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "L12",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 38,
       "atoms": [
        "L12",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L12",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L12",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 470,
       "atoms": [
        "L12",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 141,
       "atoms": [
        "L12",
        "L19",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 168,
       "atoms": [
        "L12",
        "L21",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L16",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L16",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 102,
       "atoms": [
        "L16",
        "L19",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L16",
        "L19",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L16",
        "AREA_HI_ADH",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 378,
       "atoms": [
        "L18",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L18",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 102,
       "atoms": [
        "L18",
        "L5",
        "L25"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "L18",
        "L5",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L18",
        "L9",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "L18",
        "L9",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L18",
        "L15",
        "span_AH"
       ]
      },
      {
       "weight": 240,
       "atoms": [
        "L18",
        "L15",
        "span_BC"
       ]
      },
      {
       "weight": 67,
       "atoms": [
        "L18",
        "L15",
        "overlap_fc"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L18",
        "L15",
        "overlap_ae"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "L18",
        "L19",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 96,
       "atoms": [
        "L18",
        "L23",
        "Gsum"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L18",
        "AREA_HI_ADH",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L18",
        "AREA_HI_ADH",
        "overlap_fc"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L22",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L22",
        "L5",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 128,
       "atoms": [
        "L22",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 99,
       "atoms": [
        "L22",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 421,
       "atoms": [
        "L22",
        "L13",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L22",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 36,
       "atoms": [
        "L22",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "L22",
        "L19",
        "L21"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L22",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 193,
       "atoms": [
        "L22",
        "L19",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L22",
        "AREA_HI_ADH",
        "Gsum"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "L1",
        "L5",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 68,
       "atoms": [
        "L1",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L3",
        "L15",
        "L17"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L3",
        "L25",
        "L25"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L5",
        "L9",
        "L13"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "L5",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L11",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 565,
       "atoms": [
        "L5",
        "L13",
        "L25"
       ]
      },
      {
       "weight": 74,
       "atoms": [
        "L5",
        "L13",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 133,
       "atoms": [
        "L5",
        "L17",
        "L19"
       ]
      },
      {
       "weight": 74,
       "atoms": [
        "L5",
        "L19",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L5",
        "L23",
        "L25"
       ]
      },
      {
       "weight": 193,
       "atoms": [
        "L5",
        "L23",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L5",
        "AREA_HI_ADE",
        "Gsum"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L9",
        "L19",
        "L19"
       ]
      },
      {
       "weight": 70,
       "atoms": [
        "L9",
        "L19",
        "overlap_fc"
       ]
      },
      {
       "weight": 107,
       "atoms": [
        "L9",
        "L23",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L9",
        "AREA_HI_ADH",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L9",
        "AREA_LO_BCF",
        "overlap_fc"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "L13",
        "L21",
        "overlap_fc"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L15",
        "L23",
        "L25"
       ]
      },
      {
       "weight": 231,
       "atoms": [
        "L15",
        "L23",
        "span_BC"
       ]
      },
      {
       "weight": 54,
       "atoms": [
        "L15",
        "L23",
        "overlap_fc"
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
       "weight": 1,
       "atoms": [
        "L15",
        "AREA_HI_ADE",
        "overlap_bf"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L15",
        "span_BC",
        "overlap_bf"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L17",
        "L19",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L17",
        "AREA_HI_BCF",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "L19",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "L19",
        "L23",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 240,
       "atoms": [
        "L19",
        "L25",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L19",
        "L25",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L19",
        "AREA_HI_ADE",
        "overlap_fc"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L21",
        "overlap_fc",
        "Gsum"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L25",
        "L25",
        "span_BC"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L25",
        "AREA_HI_ADH",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L25",
        "AREA_HI_BCF",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_HI_ADE",
        "AREA_HI_ADH",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABC",
        "L16"
       ]
      },
      {
       "weight": 73,
       "atoms": [
        "AREA_LO_ABC",
        "L18"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "AREA_LO_ABC",
        "L22"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "AREA_LO_ABC",
        "L1"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_ABC",
        "L7"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABC",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABC",
        "L11"
       ]
      },
      {
       "weight": 431,
       "atoms": [
        "AREA_LO_ABC",
        "L13"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "AREA_LO_ABC",
        "L25"
       ]
      },
      {
       "weight": 97,
       "atoms": [
        "AREA_LO_ACF",
        "L15"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_CDE",
        "L0"
       ]
      },
      {
       "weight": 222,
       "atoms": [
        "AREA_LO_CDE",
        "L2"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_CDE",
        "L6"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDE",
        "L10"
       ]
      },
      {
       "weight": 38,
       "atoms": [
        "AREA_LO_CDE",
        "L18"
       ]
      },
      {
       "weight": 138,
       "atoms": [
        "AREA_LO_CDE",
        "L21"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CDE",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_HI_CDF",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_HI_CEF",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EFH",
        "L6"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_EFH",
        "L12"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EFH",
        "L16"
       ]
      },
      {
       "weight": 95,
       "atoms": [
        "AREA_LO_EFH",
        "L22"
       ]
      },
      {
       "weight": 63,
       "atoms": [
        "AREA_LO_EFH",
        "L19"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_EFH",
        "span_BC"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_EFH",
        "span_BC_hi"
       ]
      },
      {
       "weight": 296,
       "atoms": [
        "AREA_LO_ABG",
        "L18"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_ABG",
        "L20"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_ABG",
        "L24"
       ]
      },
      {
       "weight": 90,
       "atoms": [
        "AREA_LO_ABG",
        "span_AH"
       ]
      },
      {
       "weight": 221,
       "atoms": [
        "AREA_LO_ABG",
        "span_BC"
       ]
      },
      {
       "weight": 202,
       "atoms": [
        "AREA_LO_ABG",
        "span_AH_hi"
       ]
      },
      {
       "weight": 52,
       "atoms": [
        "AREA_LO_ABG",
        "span_DE_hi"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABG",
        "overlap_bf"
       ]
      },
      {
       "weight": 53,
       "atoms": [
        "AREA_LO_ABG",
        "overlap_ae"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_HI_CDG",
        "L15"
       ]
      },
      {
       "weight": 235,
       "atoms": [
        "AREA_LO_CGH",
        "L2"
       ]
      },
      {
       "weight": 406,
       "atoms": [
        "AREA_LO_CGH",
        "L23"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CGH",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 80,
       "atoms": [
        "AREA_LO_CDO",
        "L0"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "AREA_LO_CDO",
        "L6"
       ]
      },
      {
       "weight": 65,
       "atoms": [
        "AREA_LO_CDO",
        "L8"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDO",
        "L10"
       ]
      },
      {
       "weight": 73,
       "atoms": [
        "AREA_LO_CDO",
        "L13"
       ]
      },
      {
       "weight": 193,
       "atoms": [
        "AREA_LO_CDO",
        "L23"
       ]
      },
      {
       "weight": 73,
       "atoms": [
        "AREA_LO_CDO",
        "overlap_ae"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_CDO",
        "Gsum"
       ]
      },
      {
       "weight": 63,
       "atoms": [
        "AREA_LO_DEO",
        "L12"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_DEO",
        "L16"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "AREA_LO_EFO",
        "L12"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EFO",
        "L16"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_EFO",
        "L22"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EFO",
        "L3"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_EFO",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 127,
       "atoms": [
        "AREA_LO_CEO",
        "L12"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_CEO",
        "L16"
       ]
      },
      {
       "weight": 433,
       "atoms": [
        "AREA_LO_CEO",
        "L22"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_CEO",
        "L1"
       ]
      },
      {
       "weight": 57,
       "atoms": [
        "AREA_LO_CEO",
        "L3"
       ]
      },
      {
       "weight": 169,
       "atoms": [
        "AREA_LO_CEO",
        "L7"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CEO",
        "overlap_bf"
       ]
      },
      {
       "weight": 159,
       "atoms": [
        "AREA_LO_CHP",
        "L12"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CHP",
        "L22"
       ]
      },
      {
       "weight": 155,
       "atoms": [
        "AREA_LO_CHP",
        "L19"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_CHP",
        "L25"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CHP",
        "overlap_fc"
       ]
      },
      {
       "weight": 1000,
       "atoms": [
        "AREA_LO_HOP",
        "L12"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_HOP",
        "L22"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_HOP",
        "L11"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "AREA_LO_HOP",
        "L19"
       ]
      },
      {
       "weight": 55,
       "atoms": [
        "AREA_LO_HOP",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 240,
       "atoms": [
        "AREA_LO_HOP",
        "span_BC"
       ]
      },
      {
       "weight": 56,
       "atoms": [
        "AREA_LO_HOP",
        "span_AH_hi"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_AGO",
        "L0"
       ]
      },
      {
       "weight": 434,
       "atoms": [
        "AREA_LO_AGO",
        "L22"
       ]
      },
      {
       "weight": 162,
       "atoms": [
        "AREA_LO_AGO",
        "L3"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_AGO",
        "L11"
       ]
      },
      {
       "weight": 102,
       "atoms": [
        "AREA_LO_AGO",
        "L19"
       ]
      },
      {
       "weight": 51,
       "atoms": [
        "AREA_LO_AGO",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 58,
       "atoms": [
        "AREA_LO_AGO",
        "span_DE"
       ]
      },
      {
       "weight": 147,
       "atoms": [
        "AREA_LO_AGO",
        "span_BC"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_AGO",
        "span_AH_hi"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_AGO",
        "overlap_eh"
       ]
      },
      {
       "weight": 107,
       "atoms": [
        "AREA_LO_AGP",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_HI_DGP",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CFG",
        "L15"
       ]
      },
      {
       "weight": 127,
       "atoms": [
        "AREA_LO_CGP",
        "L2"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_HI_CGP",
        "L15"
       ]
      },
      {
       "weight": 128,
       "atoms": [
        "AREA_LO_GHP",
        "L0"
       ]
      },
      {
       "weight": 220,
       "atoms": [
        "AREA_LO_GHP",
        "L4"
       ]
      },
      {
       "weight": 530,
       "atoms": [
        "AREA_LO_GHP",
        "L18"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_GHP",
        "L24"
       ]
      },
      {
       "weight": 356,
       "atoms": [
        "AREA_LO_GHP",
        "span_AH"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "AREA_LO_GHP",
        "span_BC"
       ]
      },
      {
       "weight": 356,
       "atoms": [
        "AREA_LO_GHP",
        "span_AH_hi"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_GHP",
        "span_DE_hi"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_GHP",
        "overlap_fc"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_GHP",
        "overlap_ae"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_FGP",
        "L2"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CFP",
        "L15"
       ]
      },
      {
       "weight": 180,
       "atoms": [
        "AREA_LO_BGP",
        "L2"
       ]
      },
      {
       "weight": 135,
       "atoms": [
        "AREA_LO_BGP",
        "L4"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_BGP",
        "L10"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_BGP",
        "L7"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_BGP",
        "L25"
       ]
      },
      {
       "weight": 243,
       "atoms": [
        "AREA_LO_BGP",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 122,
       "atoms": [
        "AREA_LO_BGP",
        "span_AH"
       ]
      },
      {
       "weight": 225,
       "atoms": [
        "AREA_LO_BGP",
        "span_DE"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_BGP",
        "overlap_ae"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BEO",
        "L16"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_BEO",
        "L18"
       ]
      },
      {
       "weight": 107,
       "atoms": [
        "AREA_LO_BEO",
        "L22"
       ]
      },
      {
       "weight": 108,
       "atoms": [
        "AREA_LO_BEO",
        "L5"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BEO",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_BEO",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_BEO",
        "overlap_bf"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BEO",
        "overlap_ae"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EGO",
        "L0"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "NATURAL_SUPPORT_1438_ABH",
        "L15"
       ]
      }
     ],
     "sum": {
      "9": "-45399204662710175397/8719625000000000000000",
      "7,9": "-1230865684441813/197500000000000000",
      "0,1": "-104827964161661279/30859375000000000",
      "0,1,7": "5507818215473/2500000000000000",
      "0,2": "-41968092826121/200000000000000000",
      "0,3": "-928754489131161/100000000000000000",
      "0,9": "56177974218391016257/13951400000000000000000",
      "0,9,9": "-119132317589453/200000000000000000",
      "0,11": "-9748849974767043/353200000000000000",
      "0,7,11": "-147828393951/40000000000000",
      "0": "263793807408626719/7900000000000000000",
      "0,6": "-14300445580145543/7900000000000000000",
      "0,7": "834845901099/10000000000000000",
      "0,4": "20527457312397/10000000000000000",
      "0,6,7": "53682784655759/40000000000000000",
      "0,0": "15491789053181/20000000000000000",
      "0,0,6": "53682784655759/40000000000000000",
      "0,5": "3222935190363/781250000000000",
      "0,12": "-1824539711962401/50000000000000000",
      "1,1": "-6031696567539/1250000000000",
      "1,3": "-164643443205657/15625000000000000",
      "1,3,8": "23572306400121/781250000000000",
      "1,3,12": "-526738337545521/15625000000000000",
      "1,6": "1622766719257563/31250000000000000",
      "1,6,10": "-1389229483631403/62500000000000000",
      "1,7": "-137682329241393671/12500000000000000000",
      "1,9": "258331861641561/31250000000000000",
      "1,10": "-93836311164688419/2207500000000000000",
      "1": "9367335071093155197/493750000000000000000",
      "1,2": "53120564393463/3906250000000000",
      "1,2,10": "-2279519849215329/62500000000000000",
      "1,4": "149191408929128277/6250000000000000000",
      "1,2,4": "1019695967429937/31250000000000000",
      "1,11": "-1393856459961/31250000000000",
      "1,1,10": "142534026587541/3906250000000000",
      "1,12": "777805299328509/31250000000000000",
      "2,5": "999597566097963/250000000000000000",
      "2,9": "-2792314292069169/250000000000000000",
      "2,7,9": "-438506809472977/200000000000000000",
      "2": "-24877958103785186393/441500000000000000000",
      "2,7": "1198650693987579/100000000000000000",
      "2,6": "-46970486840163299/1000000000000000000",
      "2,6,7": "-983679694444951/200000000000000000",
      "2,11": "103002516019557/2000000000000000",
      "2,7,11": "2708797435239/400000000000000",
      "2,2": "431037842966563/500000000000000000",
      "2,12": "4448677914747353/100000000000000000",
      "2,9,12": "4150679878325449/500000000000000000",
      "3,6": "5445925948527699/500000000000000000",
      "3,9": "3740274419091753/3449218750000000000",
      "3": "8797181957395304973/441500000000000000000",
      "3,4": "-1584441044919477/125000000000000000",
      "3,3": "-2327275901058849/62500000000000000",
      "2,3": "-4200479101848200367/220750000000000000000",
      "2,3,4": "-8991854852265117/250000000000000000",
      "2,3,3": "8991854852265117/250000000000000000",
      "3,5": "3316906250515251/250000000000000000",
      "3,7": "-200776547639703/25000000000000000",
      "3,6,7": "-542384747949639/100000000000000000",
      "3,8": "-394456100836239/12500000000000000",
      "4": "-15800417513751668583/441500000000000000000",
      "2,4": "3083422498059264669/110375000000000000000",
      "1,1,4": "-63759643147173/976562500000000",
      "5": "-159941202338861697/44150000000000000000",
      "5,12": "4250418121077993/250000000000000000",
      "4,5": "1036810117576017/250000000000000000",
      "5,7": "-354433463226591/20000000000000000",
      "5,6": "1250956856960427/20000000000000000",
      "5,6,7": "802417197176889/100000000000000000",
      "0,5,6": "-802417197176889/100000000000000000",
      "1,5": "-131479078344987/6250000000000000",
      "6,9": "-100091568572247/20000000000000000",
      "6,11": "1995553376049/125000000000000",
      "6": "-31164944626297591/395000000000000000",
      "6,7": "-25444192651424281/3160000000000000000",
      "4,6": "481066379810283/500000000000000000",
      "6,12": "18445789471865687/19750000000000000000",
      "6,10": "-136191402921905901/7900000000000000000",
      "2,6,10": "22217685551091807/1000000000000000000",
      "8": "69454555408150857/1975000000000000000",
      "8,9": "803161097014473/493750000000000000",
      "4,8": "172386128404629/6250000000000000",
      "2,8": "-841734594289113/12500000000000000",
      "5,8": "-92104341364593/1562500000000000",
      "1,8": "-498907961035509/30859375000000000",
      "7,8": "-746966889543/1000000000000000",
      "1,7,8": "-2333080074801/312500000000000",
      "0,8": "93704589252393/5000000000000000",
      "0,1,8": "-188979486058881/312500000000000",
      "9,11": "10009881874112619/1766000000000000000",
      "7,9,11": "735918597771/400000000000000",
      "4,9": "-394074270985023/125000000000000000",
      "9,12": "520151566333898027/39500000000000000000",
      "7,7,9": "-23930824999193/40000000000000000",
      "0,7,9": "23930824999193/40000000000000000",
      "5,9": "1549354973717439/500000000000000000",
      "9,9": "710466826631561/1000000000000000000",
      "0,0,9": "-71792474997579/40000000000000000",
      "0,2,9": "438506809472977/200000000000000000",
      "11,11": "327812337/16000000000",
      "11": "260071964865391959/13951400000000000000",
      "7,11": "987907822539106749/27902800000000000000",
      "4,11": "1907050362327/62500000000000",
      "5,11": "-16003547797509/500000000000000",
      "4,5,11": "-22325206448241/500000000000000",
      "1,7,11": "-169375934931/25000000000000",
      "10,11": "-169143392832633/9875000000000000",
      "11,12": "32667014382117/1000000000000000",
      "3,11": "4002159661029/250000000000000",
      "8,11": "11966993649927/3950000000000000",
      "0,8,11": "62619256287/10000000000000",
      "": "-9661901834053932894187/2790280000000000000000",
      "7": "10633148677205481/3950000000000000000",
      "12": "-1296132499842822341/39500000000000000000",
      "12,12": "405687354486897/31250000000000000",
      "2,6,12": "9311005955317087/500000000000000000",
      "4,7": "70670512998813/100000000000000000",
      "1,4,7": "-3839733842904477/6250000000000000000",
      "0,1,4": "-55648316563833/3125000000000000",
      "10": "-755476836748460191047/69757000000000000000000",
      "2,10": "877541110895240589/22075000000000000000",
      "5,10": "13484255486656647879/441500000000000000000",
      "7,12": "463691377065651/20000000000000000",
      "1,1,8": "-8019452996343/6103515625000",
      "0,9,11": "-147919638151971/200000000000000",
      "8,10": "291587857227/25000000000000",
      "1,1,12": "-1373865376248163/244140625000000",
      "0,1,3": "-1502504547223491/6250000000000000",
      "0,1,9": "-82256982225999/625000000000000",
      "0,1,11": "-3895646503413/25000000000000",
      "0,0,1": "-104648546093987/1250000000000000",
      "0,1,6": "-61507614320579/125000000000000",
      "3,10": "4884625234977237/500000000000000000",
      "0,10": "-127772302641333/100000000000000000",
      "0,1,10": "-124401239422761/1250000000000000",
      "0,6,12": "-508133623628183/100000000000000000",
      "2,8,11": "-1147430992743/50000000000000",
      "9,10": "-1174182297837219/125000000000000000",
      "7,9,12": "226516878757841/100000000000000000",
      "0,9,12": "-226516878757841/100000000000000000",
      "7,7": "-168313877421809/40000000000000000",
      "7,10": "-612060273953667/100000000000000000",
      "7,10,11": "-3338896584807/400000000000000",
      "0,10,11": "3338896584807/400000000000000",
      "7,7,11": "147828393951/80000000000000",
      "3,7,11": "1493586197271/200000000000000",
      "3,12": "10468492024983531/250000000000000000",
      "3,6,12": "5133935006233743/250000000000000000",
      "3,8,11": "-632674511127/25000000000000",
      "1,3,4": "-562243526427393/7812500000000000",
      "1,7,7": "380039456867637/2500000000000000000"
     },
     "upper": "-80148978724746503741731/34878500000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CB3mm",
   "cell": "CB",
   "given": [
    "AGO-",
    "AGP+",
    "DGP-",
    "FGP-",
    "BGP-"
   ],
   "stages": [
    "other_CB_C_3:0",
    "other_CB_C_3:1",
    "other_CB_C_3:2",
    "other_CB_C_3:3",
    "other_CB_C_3:4",
    "other_CB_C_3:5",
    "other_CB_C_3:6",
    "other_CB_C_3:7",
    "Ccap_CB3:0",
    "Ccap_CB3m:0",
    "Ccap_CB3m:1",
    "Ccap_CB3mm:0"
   ],
   "terminal": {
    "kind": "scalar",
    "stage": 11,
    "contradiction": {
     "triangle": "AHO",
     "lower": "T0352",
     "upper": "U_AHO"
    }
   },
   "word": "C"
  },
  {
   "id": "C_CB4",
   "cell": "CB",
   "given": [
    "AGO+",
    "AGP-",
    "DGP-"
   ],
   "stages": [],
   "terminal": {
    "kind": "geometry",
    "stage": -1,
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
      "EOP": -1,
      "FOP": -1,
      "AGO": 1,
      "AGP": -1,
      "DGP": -1,
      "ACO": 1,
      "AOP": -1,
      "ACP": 1,
      "CEG": 1,
      "CFG": 1,
      "CGO": -1,
      "CGP": -1,
      "EHO": 1,
      "DFG": 1,
      "BGP": -1,
      "ADG": 1,
      "GHP": -1,
      "GOP": -1,
      "BDG": 1,
      "DGH": -1,
      "EGH": -1,
      "BHO": -1,
      "BHP": -1,
      "GHO": -1,
      "AEO": -1,
      "AFO": -1,
      "EGO": 1,
      "FGO": 1,
      "DOP": 1,
      "ADP": 1,
      "AEP": -1,
      "EGP": 1,
      "AFP": -1,
      "FGP": 1,
      "BDP": 1,
      "ADO": 1,
      "AEG": -1,
      "AFG": -1,
      "BDO": 1,
      "BEG": 1,
      "BEP": 1,
      "DFP": 1
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
        "ABGOP"
       ],
       "target": "AOP",
       "sign": -1,
       "deps": [
        "ABG",
        "ABO",
        "AGP",
        "ABP",
        "AGO"
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
        "ECHOP"
       ],
       "target": "EHO",
       "sign": 1,
       "deps": [
        "CEH",
        "EOP",
        "CEO",
        "EHP",
        "CEP"
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
        "GACDP"
       ],
       "target": "ADG",
       "sign": 1,
       "deps": [
        "ACG",
        "DGP",
        "CGP",
        "AGP",
        "CDG"
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
        "GACOP"
       ],
       "target": "GOP",
       "sign": -1,
       "deps": [
        "ACG",
        "AGO",
        "CGP",
        "AGP",
        "CGO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "GBCDP"
       ],
       "target": "BDG",
       "sign": 1,
       "deps": [
        "BCG",
        "DGP",
        "CGP",
        "BGP",
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
        "OACEP"
       ],
       "target": "AEO",
       "sign": -1,
       "deps": [
        "ACO",
        "EOP",
        "COP",
        "AOP",
        "CEO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "OAEFH"
       ],
       "target": "AFO",
       "sign": -1,
       "deps": [
        "AEO",
        "FHO",
        "EHO",
        "AHO",
        "EFO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "OAEGP"
       ],
       "target": "EGO",
       "sign": 1,
       "deps": [
        "AEO",
        "GOP",
        "AGO",
        "EOP",
        "AOP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "OAFGP"
       ],
       "target": "FGO",
       "sign": 1,
       "deps": [
        "AFO",
        "GOP",
        "AGO",
        "FOP",
        "AOP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "OCDGP"
       ],
       "target": "DOP",
       "sign": 1,
       "deps": [
        "CDO",
        "GOP",
        "CGO",
        "COP",
        "DGO"
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
        "PACEO"
       ],
       "target": "AEP",
       "sign": -1,
       "deps": [
        "ACP",
        "EOP",
        "COP",
        "AOP",
        "CEP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "PADEG"
       ],
       "target": "EGP",
       "sign": 1,
       "deps": [
        "ADP",
        "AEP",
        "DGP",
        "AGP",
        "DEP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "PAEFH"
       ],
       "target": "AFP",
       "sign": -1,
       "deps": [
        "AEP",
        "FHP",
        "EHP",
        "AHP",
        "EFP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "PAFGH"
       ],
       "target": "FGP",
       "sign": 1,
       "deps": [
        "AFP",
        "GHP",
        "AGP",
        "FHP",
        "AHP"
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
        "ABDGO"
       ],
       "target": "ADO",
       "sign": 1,
       "deps": [
        "ABD",
        "AGO",
        "ABG",
        "ABO",
        "ADG"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "ABEGO"
       ],
       "target": "AEG",
       "sign": -1,
       "deps": [
        "ABE",
        "AGO",
        "ABG",
        "AEO",
        "ABO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "ABFGO"
       ],
       "target": "AFG",
       "sign": -1,
       "deps": [
        "ABF",
        "AGO",
        "ABG",
        "AFO",
        "ABO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "DABCO"
       ],
       "target": "BDO",
       "sign": 1,
       "deps": [
        "ABD",
        "CDO",
        "ACD",
        "ADO",
        "BCD"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "ray",
        "BCE",
        "GO",
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
        "BCO",
        "CEO",
        "EGO"
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
       "target": "BEP",
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
        "DEF",
        "OP",
        "FDE",
        [
         "fixed",
         "DEF"
        ]
       ],
       "target": "DFP",
       "sign": 1,
       "deps": [
        "DEO",
        "EFO",
        "DEP",
        "EFP",
        "FOP"
       ],
       "area_stage": null
      }
     ],
     "contradiction": {
      "kind": "nomesh",
      "outer": "ACE",
      "points": "GOP"
     },
     "mesh_table": [
      {
       "order": "GOP",
       "opposite": "CGP"
      },
      {
       "order": "GPO",
       "opposite": "AOP"
      },
      {
       "order": "OGP",
       "opposite": "AOG"
      },
      {
       "order": "OPG",
       "opposite": "AGP"
      },
      {
       "order": "PGO",
       "opposite": "AOG"
      },
      {
       "order": "POG",
       "opposite": "EOP"
      }
     ]
    }
   },
   "word": "C"
  },
  {
   "id": "C_CB5",
   "cell": "CB",
   "given": [
    "AGO+",
    "AGP-",
    "DGP+"
   ],
   "stages": [],
   "terminal": {
    "kind": "geometry",
    "stage": -1,
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
      "EOP": -1,
      "FOP": -1,
      "AGO": 1,
      "AGP": -1,
      "DGP": 1,
      "ACO": 1,
      "AOP": -1,
      "ACP": 1,
      "CEG": 1,
      "CFG": 1,
      "CGO": -1,
      "CGP": -1,
      "DOP": 1,
      "EHO": 1,
      "DFG": 1,
      "BGP": -1,
      "GHP": -1,
      "GOP": -1,
      "EGP": 1,
      "DGH": -1,
      "FGP": 1,
      "EGH": -1,
      "BHO": -1,
      "BHP": -1,
      "GHO": -1,
      "AEO": -1,
      "AFO": -1,
      "EGO": 1,
      "FGO": 1,
      "AEP": -1,
      "AFP": -1,
      "DHP": 1,
      "DFP": 1,
      "AEG": -1,
      "AFG": -1,
      "ADO": 1,
      "ADG": 1,
      "BEG": 1,
      "BEP": 1
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
        "ABGOP"
       ],
       "target": "AOP",
       "sign": -1,
       "deps": [
        "ABG",
        "ABO",
        "AGP",
        "ABP",
        "AGO"
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
        "ECHOP"
       ],
       "target": "EHO",
       "sign": 1,
       "deps": [
        "CEH",
        "EOP",
        "CEO",
        "EHP",
        "CEP"
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
        "GACOP"
       ],
       "target": "GOP",
       "sign": -1,
       "deps": [
        "ACG",
        "AGO",
        "CGP",
        "AGP",
        "CGO"
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
        "OACEP"
       ],
       "target": "AEO",
       "sign": -1,
       "deps": [
        "ACO",
        "EOP",
        "COP",
        "AOP",
        "CEO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "OAEFH"
       ],
       "target": "AFO",
       "sign": -1,
       "deps": [
        "AEO",
        "FHO",
        "EHO",
        "AHO",
        "EFO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "OAEGP"
       ],
       "target": "EGO",
       "sign": 1,
       "deps": [
        "AEO",
        "GOP",
        "AGO",
        "EOP",
        "AOP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "OAFGP"
       ],
       "target": "FGO",
       "sign": 1,
       "deps": [
        "AFO",
        "GOP",
        "AGO",
        "FOP",
        "AOP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "PACEO"
       ],
       "target": "AEP",
       "sign": -1,
       "deps": [
        "ACP",
        "EOP",
        "COP",
        "AOP",
        "CEP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "PAEFG"
       ],
       "target": "AFP",
       "sign": -1,
       "deps": [
        "AEP",
        "FGP",
        "EGP",
        "AGP",
        "EFP"
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
        "plu",
        "ABEGO"
       ],
       "target": "AEG",
       "sign": -1,
       "deps": [
        "ABE",
        "AGO",
        "ABG",
        "AEO",
        "ABO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "ABFGO"
       ],
       "target": "AFG",
       "sign": -1,
       "deps": [
        "ABF",
        "AGO",
        "ABG",
        "AFO",
        "ABO"
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
       "target": "ADG",
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
        "GO",
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
        "BCO",
        "CEO",
        "EGO"
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
       "target": "BEP",
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
     "contradiction": {
      "kind": "nomesh",
      "outer": "ACE",
      "points": "GOP"
     },
     "mesh_table": [
      {
       "order": "GOP",
       "opposite": "CGP"
      },
      {
       "order": "GPO",
       "opposite": "AOP"
      },
      {
       "order": "OGP",
       "opposite": "AOG"
      },
      {
       "order": "OPG",
       "opposite": "AGP"
      },
      {
       "order": "PGO",
       "opposite": "AOG"
      },
      {
       "order": "POG",
       "opposite": "EOP"
      }
     ]
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CB6ppp",
   "cell": "CB",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "BGP+",
    "FGP+",
    "EGO+"
   ],
   "stages": [
    "other_CB_C_6:0",
    "other_CB_C_6:1",
    "other_CB_C_6:2",
    "other_CB_C_6:3",
    "other_CB_C_6:4",
    "other_CB_C_6:5",
    "Ccap_CB6:0",
    "Ccap_CB6p:0",
    "Ccap_CB6p:1",
    "Ccap_CB6pp:0",
    "Ccap_CB6pp:1",
    "Ccap_CB6pp:2",
    "Ccap_CB6pp:3",
    "Ccap_CB6ppp:0",
    "Ccap_CB6ppp:1",
    "Ccap_CB6ppp:2",
    "Ccap_CB6ppp:3"
   ],
   "terminal": {
    "kind": "scalar",
    "stage": 16,
    "contradiction": {
     "triangle": "BOP",
     "lower": "T2296",
     "upper": "T2289"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CB6ppm",
   "cell": "CB",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "BGP+",
    "FGP+",
    "EGO-"
   ],
   "stages": [
    "other_CB_C_6:0",
    "other_CB_C_6:1",
    "other_CB_C_6:2",
    "other_CB_C_6:3",
    "other_CB_C_6:4",
    "other_CB_C_6:5",
    "Ccap_CB6:0",
    "Ccap_CB6p:0",
    "Ccap_CB6p:1",
    "Ccap_CB6pp:0",
    "Ccap_CB6pp:1",
    "Ccap_CB6pp:2",
    "Ccap_CB6pp:3",
    "Ccap_CB6ppm:0",
    "Ccap_CB6ppm:1",
    "Ccap_CB6ppm:2"
   ],
   "terminal": {
    "kind": "scalar",
    "stage": 15,
    "contradiction": {
     "triangle": "EGP",
     "lower": "T0974",
     "upper": "T0971"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CB6pmpp",
   "cell": "CB",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "BGP+",
    "FGP-",
    "BGO+",
    "EGO+"
   ],
   "stages": [
    "other_CB_C_6:0",
    "other_CB_C_6:1",
    "other_CB_C_6:2",
    "other_CB_C_6:3",
    "other_CB_C_6:4",
    "other_CB_C_6:5",
    "Ccap_CB6:0",
    "Ccap_CB6p:0",
    "Ccap_CB6p:1",
    "Ccap_CB6pm:0",
    "Ccap_CB6pm:1",
    "Ccap_CB6pmp:0",
    "Ccap_CB6pmp:1"
   ],
   "terminal": {
    "kind": "geometry",
    "stage": 12,
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
      "EOP": -1,
      "FOP": -1,
      "AGO": 1,
      "AGP": 1,
      "DGP": -1,
      "ACO": 1,
      "ACP": 1,
      "CEG": 1,
      "CFG": 1,
      "CGO": -1,
      "CGP": -1,
      "EHO": 1,
      "DFG": 1,
      "DGH": -1,
      "EGH": -1,
      "BHO": -1,
      "BHP": -1,
      "GHO": -1,
      "GHP": -1,
      "ADO": 1,
      "ADP": 1,
      "BEP": 1,
      "DFP": 1,
      "BDP": 1,
      "BDO": 1,
      "BOP": 1,
      "EGP": -1,
      "GOP": 1,
      "BGP": 1,
      "FGP": -1,
      "CFP": 1,
      "BGO": 1,
      "EGO": 1,
      "AEG": -1,
      "AFG": -1,
      "FGO": 1,
      "BEG": -1,
      "BFG": -1,
      "AEO": -1,
      "AFO": -1,
      "BEO": -1,
      "BFO": -1
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
        "ECHOP"
       ],
       "target": "EHO",
       "sign": 1,
       "deps": [
        "CEH",
        "EOP",
        "CEO",
        "EHP",
        "CEP"
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
       "target": "BEP",
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
        "DEF",
        "OP",
        "FDE",
        [
         "fixed",
         "DEF"
        ]
       ],
       "target": "DFP",
       "sign": 1,
       "deps": [
        "DEO",
        "EFO",
        "DEP",
        "EFP",
        "FOP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "BADEP"
       ],
       "target": "BDP",
       "sign": 1,
       "deps": [
        "ABD",
        "BEP",
        "ABE",
        "ABP",
        "BDE"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "DABCO"
       ],
       "target": "BDO",
       "sign": 1,
       "deps": [
        "ABD",
        "CDO",
        "ACD",
        "ADO",
        "BCD"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "PBCEO"
       ],
       "target": "BOP",
       "sign": 1,
       "deps": [
        "BCP",
        "EOP",
        "BEP",
        "COP",
        "CEP"
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
       "target": "EGP",
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
        "PCEGO"
       ],
       "target": "GOP",
       "sign": 1,
       "deps": [
        "CEP",
        "CGP",
        "EOP",
        "COP",
        "EGP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "FCDGP"
       ],
       "target": "CFP",
       "sign": 1,
       "deps": [
        "CDF",
        "FGP",
        "CFG",
        "DFP",
        "DFG"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "GACEO"
       ],
       "target": "AEG",
       "sign": -1,
       "deps": [
        "ACG",
        "EGO",
        "CGO",
        "AGO",
        "CEG"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "GAEFH"
       ],
       "target": "AFG",
       "sign": -1,
       "deps": [
        "AEG",
        "FGH",
        "EGH",
        "AGH",
        "EFG"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "GAEFO"
       ],
       "target": "FGO",
       "sign": 1,
       "deps": [
        "AEG",
        "AFG",
        "EGO",
        "AGO",
        "EFG"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "GBCEO"
       ],
       "target": "BEG",
       "sign": -1,
       "deps": [
        "BCG",
        "EGO",
        "CGO",
        "BGO",
        "CEG"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "GBCFO"
       ],
       "target": "BFG",
       "sign": -1,
       "deps": [
        "BCG",
        "FGO",
        "CGO",
        "BGO",
        "CFG"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "OACEG"
       ],
       "target": "AEO",
       "sign": -1,
       "deps": [
        "ACO",
        "EGO",
        "CGO",
        "AGO",
        "CEO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "OAEFH"
       ],
       "target": "AFO",
       "sign": -1,
       "deps": [
        "AEO",
        "FHO",
        "EHO",
        "AHO",
        "EFO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "OBCEG"
       ],
       "target": "BEO",
       "sign": -1,
       "deps": [
        "BCO",
        "EGO",
        "CGO",
        "BGO",
        "CEO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "OBEFH"
       ],
       "target": "BFO",
       "sign": -1,
       "deps": [
        "BEO",
        "FHO",
        "EHO",
        "BHO",
        "EFO"
       ],
       "area_stage": null
      }
     ],
     "contradiction": {
      "kind": "capacity",
      "poly": "BCE",
      "capacity": 1,
      "occupants": [
       "G",
       "O"
      ],
      "source": [
       "fixed",
       "BCE"
      ]
     }
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CB6pmpmpppp",
   "cell": "CB",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "BGP+",
    "FGP-",
    "BGO+",
    "EGO-",
    "BFP+",
    "AFP+",
    "FGO+",
    "CFO+"
   ],
   "stages": [
    "other_CB_C_6:0",
    "other_CB_C_6:1",
    "other_CB_C_6:2",
    "other_CB_C_6:3",
    "other_CB_C_6:4",
    "other_CB_C_6:5",
    "Ccap_CB6:0",
    "Ccap_CB6p:0",
    "Ccap_CB6p:1",
    "Ccap_CB6pm:0",
    "Ccap_CB6pm:1",
    "Ccap_CB6pmp:0",
    "Ccap_CB6pmp:1",
    "Ccap_CB6pmpm:0",
    "Ccap_CB6pmpm:1",
    "Ccap_CB6pmpm:2",
    "Ccap_CB6pmpm:3",
    "Ccap_CB6pmpmp:0",
    "Ccap_CB6pmpmp:1",
    "Ccap_CB6pmpmpp:0",
    "Ccap_CB6pmpmpp:1",
    "Ccap_CB6pmpmppp:0",
    "Ccap_CB6pmpmppp:1",
    "Ccap_CB6pmpmppp:2",
    "Ccap_CB6pmpmppp:3",
    "Ccap_CB6pmpmpppp:0",
    "Ccap_CB6pmpmpppp:1",
    "Ccap_CB6pmpmpppp:2",
    "Ccap_CB6pmpmpppp:3"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 28,
    "sum": {
     "factors": [
      {
       "weight": 7,
       "atoms": [
        "L0",
        "L4",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L6",
        "L5"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L10",
        "L15"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L0",
        "L22",
        "L19"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L0",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L2",
        "L6",
        "L1"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L2",
        "L8",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L10",
        "L15"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L2",
        "L12",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L16",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L20",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L2",
        "L1",
        "L15"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L2",
        "L3",
        "L15"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L2",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L2",
        "L15",
        "overlap_eh"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L4",
        "L24",
        "L15"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L4",
        "L1",
        "L25"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L4",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L4",
        "L15",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L4",
        "L17",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "L4",
        "AREA_LO_ADE",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L4",
        "AREA_HI_ADH",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L6",
        "L8",
        "L5"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L6",
        "L10",
        "L5"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L6",
        "L10",
        "L21"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L6",
        "L12",
        "L5"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L6",
        "L16",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L6",
        "L3",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L6",
        "L5",
        "L5"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L6",
        "L5",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L6",
        "L21",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L8",
        "L8",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L8",
        "L18",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "L8",
        "L20",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L8",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "L10",
        "L16",
        "L15"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L10",
        "L16",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L10",
        "L1",
        "L13"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L10",
        "L1",
        "L19"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L10",
        "L1",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L10",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L10",
        "L15",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L10",
        "L15",
        "L25"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L10",
        "AREA_LO_BCF",
        "overlap_eh"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L12",
        "L12",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L12",
        "L16",
        "L5"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L12",
        "L16",
        "L9"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L12",
        "L16",
        "L11"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L12",
        "L1",
        "L1"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "L12",
        "L1",
        "L3"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L12",
        "L1",
        "L21"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L12",
        "L1",
        "overlap_eh"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L12",
        "L3",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L12",
        "L5",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L12",
        "L9",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L16",
        "L16",
        "L11"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L16",
        "L16",
        "overlap_fc"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L16",
        "L1",
        "L13"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L16",
        "L1",
        "L19"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L16",
        "L1",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L16",
        "L3",
        "L5"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L16",
        "L3",
        "L21"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L16",
        "L3",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L16",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L16",
        "L5",
        "overlap_eh"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L16",
        "L11",
        "L21"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L16",
        "L13",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L16",
        "L17",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L18",
        "L1",
        "L15"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L18",
        "L15",
        "L17"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L20",
        "L15",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "L20",
        "L17",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L20",
        "AREA_LO_BCF",
        "QUAD_1132"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L22",
        "L1",
        "L5"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L24",
        "L1",
        "L5"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L24",
        "L5",
        "L5"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L24",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L1",
        "L1",
        "L3"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L1",
        "L1",
        "L5"
       ]
      },
      {
       "weight": 77,
       "atoms": [
        "L1",
        "L3",
        "L5"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L1",
        "L3",
        "L21"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "L1",
        "L3",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L1",
        "L5",
        "L11"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L1",
        "L5",
        "L21"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L1",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L1",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L1",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L3",
        "L9",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L5",
        "L9",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L5",
        "L9",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L5",
        "L15",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L5",
        "L21",
        "L23"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L21",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L5",
        "L21",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L5",
        "L25",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L9",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L11",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L13",
        "L15",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L13",
        "L15",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L15",
        "L19",
        "L23"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L15",
        "AREA_LO_ADE",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L15",
        "AREA_HI_BCF",
        "QUAD_1132"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L19",
        "AREA_LO_BCF",
        "overlap_eh"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L21",
        "AREA_LO_BCF",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_ADH",
        "AREA_LO_BCF",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_CDE",
        "L0"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_CDE",
        "L4"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_CDE",
        "L13"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CDE",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_CDE",
        "span_BC"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_CDE",
        "overlap_bf"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDE",
        "overlap_ae"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_ABG",
        "L0"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_ABG",
        "L4"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ABG",
        "L13"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_ABG",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_ABG",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "AREA_LO_ABG",
        "span_BC"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_ABG",
        "overlap_bf"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_ABG",
        "Gsum"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_ABG",
        "QUAD_1132"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDG",
        "L1"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_CDG",
        "L5"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_CDG",
        "L21"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CDG",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CDG",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CDG",
        "AREA_HI_BCF"
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
       "weight": 7,
       "atoms": [
        "AREA_LO_EFG",
        "L12"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_EFG",
        "L16"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EFG",
        "L5"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_EFO",
        "L16"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_HI_EFO",
        "L15"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_CHO",
        "L8"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CHO",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CHO",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CHP",
        "L0"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CHP",
        "L18"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_CHP",
        "L21"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_CHP",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CHP",
        "span_BC"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_HOP",
        "L4"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_HOP",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_HOP",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_HOP",
        "span_BC"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_HOP",
        "QUAD_1132"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_ACG",
        "L12"
       ]
      },
      {
       "weight": 69,
       "atoms": [
        "AREA_LO_ACG",
        "L3"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_ACG",
        "L11"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_ACG",
        "L21"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_ACG",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_COP",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EOP",
        "L5"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_EGH",
        "L8"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_EGH",
        "L20"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_GHO",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_BGO",
        "L10"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_BGO",
        "L9"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_BGO",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_BGO",
        "L17"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BGO",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_BGO",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_EGO",
        "L0"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_EGO",
        "L4"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EGO",
        "L17"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_EGO",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EGO",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_EGO",
        "span_BC"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EGO",
        "overlap_bf"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_EGO",
        "QUAD_1132"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BFG",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BFG",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_AFP",
        "L18"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_AFP",
        "L20"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_AFP",
        "L5"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_AFP",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_AFP",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_AFP",
        "span_DE"
       ]
      },
      {
       "weight": 60,
       "atoms": [
        "AREA_LO_FGO",
        "L0"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_FGO",
        "L3"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_FGO",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 38,
       "atoms": [
        "AREA_LO_FGO",
        "span_AH"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_FGO",
        "span_DE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_FGO",
        "span_BC"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_FGO",
        "overlap_ae"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "AREA_LO_CFO",
        "L0"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "AREA_LO_CFO",
        "L17"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_CFO",
        "L25"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_CFO",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_CFO",
        "overlap_ae"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_CFO",
        "QUAD_1132"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_BEG",
        "L10"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_BEG",
        "L1"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BEG",
        "L3"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_BEG",
        "L5"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "AREA_LO_BEG",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BEG",
        "overlap_bf"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_BEG",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "Central_order",
        "L0"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "Central_order",
        "L12"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "Central_order",
        "L3"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "Central_order",
        "span_BC"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "Central_order",
        "overlap_bf"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "Central_order",
        "QUAD_1132"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "LINEAR_1112",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "QUAD_1322",
        "L12"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "QUAD_1322",
        "L5"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "QUAD_1322",
        "L21"
       ]
      }
     ],
     "sum": {
      "0,3": "-6639626754552909/500000000000000000",
      "0,5": "1037386604035821/62500000000000000",
      "0,11": "-13489538242887/10000000000000000",
      "0": "-7538060811843252371/441500000000000000000",
      "0,7": "-321195640475073/62500000000000000",
      "0,2": "-2712830921642511/500000000000000000",
      "0,2,7": "-53091432853473/31250000000000000",
      "1,3": "3477287474795277/500000000000000000",
      "1,1,4": "-300415167834093/250000000000000000",
      "1,5": "72098738432019/7812500000000000",
      "1,6": "149413332095391/50000000000000000",
      "1,6,7": "-44648303749413/15625000000000000",
      "1,8": "-4526662228455960027/441500000000000000000",
      "1": "-1261244442215045109/220750000000000000000",
      "1,7": "-18278934254427/1250000000000000",
      "0,1": "5167991409452716587/441500000000000000000",
      "0,1,7": "53091432853473/31250000000000000",
      "1,1": "-614622095056611/125000000000000000",
      "1,1,7": "-16041456124533/15625000000000000",
      "1,2": "4121934794217/50000000000000000",
      "1,11": "-31308486829263/12500000000000000",
      "1,7,11": "16097221867167/3125000000000000",
      "1,4": "3683042503903737/500000000000000000",
      "1,7,7": "-7296996340977/1953125000000000",
      "1,4,7": "-136653952324617/31250000000000000",
      "2,12": "-588259811669823/125000000000000000",
      "2": "-257728057418379/500000000000000000",
      "0,2,12": "276995839960263/125000000000000000",
      "2,11": "-42444997499583/10000000000000000",
      "2,7": "211992492276789/15625000000000000",
      "2,4": "4412474313241761/500000000000000000",
      "2,3": "-913337962915599/500000000000000000",
      "2,4,7": "136653952324617/31250000000000000",
      "2,3,7": "-136653952324617/31250000000000000",
      "2,2": "-23306729140377/125000000000000000",
      "2,2,8": "131036231831499/250000000000000000",
      "2,2,4": "-300415167834093/250000000000000000",
      "2,2,3": "-300415167834093/250000000000000000",
      "3,4": "133995252531933/25000000000000000",
      "3,5": "-80350808874687/31250000000000000",
      "3,6": "-2281003347949599/50000000000000000",
      "2,3,6": "836147763660573/250000000000000000",
      "3,8": "2094238601516061/100000000000000000",
      "3,8,9": "-7595635897204173/500000000000000000",
      "3": "50458763269051293/1000000000000000000",
      "3,7": "29957773404741/31250000000000000",
      "1,3,7": "136653952324617/31250000000000000",
      "3,10": "-6429770533935567/100000000000000000",
      "1,3,10": "-565441569976023/100000000000000000",
      "2,4,4": "-2559176654793057/500000000000000000",
      "1,4,4": "2559176654793057/500000000000000000",
      "2,4,10": "-565441569976023/100000000000000000",
      "1,4,10": "565441569976023/100000000000000000",
      "4": "-22875175930704903/1000000000000000000",
      "4,7": "-231940424250171/6250000000000000",
      "5,8": "234033204424617/31250000000000000",
      "1,5,8": "-61867897949169/31250000000000000",
      "5": "45769418971809/31250000000000000",
      "5,6": "-170625922995801/15625000000000000",
      "0,5,6": "-153376649636847/31250000000000000",
      "5,9": "-3073247540390391/62500000000000000",
      "2,5": "2762580797379/244140625000000",
      "5,7": "-37273003316913/1953125000000000",
      "4,5": "-91691704652769/12500000000000000",
      "5,10": "-348366678053979/12500000000000000",
      "5,12": "-146434660976643/1953125000000000",
      "2,5,7": "7573868361423/1953125000000000",
      "1,4,5": "-425517157037349/31250000000000000",
      "6,6": "8330760529/976562500000",
      "6,8": "-1605562889907249/250000000000000000",
      "4,6,8": "-3106926513274311/500000000000000000",
      "6": "-23368314435505032357/441500000000000000000",
      "0,6": "-471984429467543629/88300000000000000000",
      "6,10": "556789876076707/25000000000000000",
      "0,6,10": "611436216853007/100000000000000000",
      "6,7": "459612168499393/31250000000000000",
      "4,6": "-790430295291/7812500000000000",
      "0,4,6": "-2767347459316713/500000000000000000",
      "1,4,6": "836147763660573/250000000000000000",
      "2,6": "-205234935965241/125000000000000000",
      "4,6,7": "380349958543737/15625000000000000",
      "8,8": "1972200653812629/500000000000000000",
      "8": "-9880936792420246389/883000000000000000000",
      "0,8": "82218920942511/15625000000000000",
      "8,9": "233532421672221/200000000000000000",
      "0,8,9": "-2950980826796037/1000000000000000000",
      "2,8": "-1292009334056091/500000000000000000",
      "8,10": "9920211231087/100000000000000000",
      "7,8": "-4727711205567/1250000000000000",
      "4,8": "5141084638681017/500000000000000000",
      "1,4,8": "-1116271418160951/500000000000000000",
      "2,4,8": "-1116271418160951/500000000000000000",
      "2,7,8": "59606241278031/31250000000000000",
      "9": "21043821672128843/250000000000000000",
      "7,9": "-602546724785649/15625000000000000",
      "0,9": "494942143743019/62500000000000000",
      "7,8,9": "405588908381013/62500000000000000",
      "10": "4664431961593213/200000000000000000",
      "2,10": "-91960132907787/25000000000000000",
      "1,10": "231670392274923/25000000000000000",
      "7,10": "-448201020164863/12500000000000000",
      "2,8,10": "246636457089489/100000000000000000",
      "11": "-1043538041169519/12500000000000000",
      "0,2,11": "-117120049668783/50000000000000000",
      "12": "-33841896682759929/250000000000000000",
      "0,12": "381803706950991/31250000000000000",
      "9,12": "-9349062641630691/250000000000000000",
      "7,12": "-180316872214521/7812500000000000",
      "": "-690377241869886304781/441500000000000000000",
      "0,0": "-4467306696516983/1000000000000000000",
      "0,0,2": "-386282260634577/500000000000000000",
      "0,10": "-432801153267913/25000000000000000",
      "7": "1339260322378461/12500000000000000",
      "4,9": "-64465381327816287/1000000000000000000",
      "0,4": "5606764259082363/250000000000000000",
      "0,4,9": "6765452485669059/1000000000000000000",
      "4,4": "-2035213856016471/100000000000000000",
      "4,10": "1060791352620831/20000000000000000",
      "2,9": "856655010762117/500000000000000000",
      "10,11": "451958453341437/10000000000000000",
      "7,7": "22447281245431/3906250000000000",
      "9,11": "135056765497689/5000000000000000",
      "7,11": "-2316433079961/156250000000000",
      "2,7,7": "7296996340977/1953125000000000",
      "1,9": "-856655010762117/500000000000000000",
      "0,2,6": "324851803367637/250000000000000000",
      "1,3,8": "-1116271418160951/125000000000000000",
      "1,1,8": "-6682847823406449/250000000000000000",
      "3,6,10": "1573797713427303/50000000000000000",
      "3,5,6": "-394781685870663/15625000000000000",
      "4,8,9": "7595635897204173/500000000000000000",
      "7,7,9": "-49652196094571/3906250000000000",
      "1,12": "41643934293087/2500000000000000",
      "1,2,12": "83693665335123/62500000000000000",
      "3,9": "6588793844109477/200000000000000000",
      "6,7,10": "-84037058284543/6250000000000000",
      "4,6,10": "-1573797713427303/50000000000000000",
      "1,5,10": "-31338866854737/3125000000000000",
      "3,4,6": "-7122975354890577/500000000000000000",
      "4,4,9": "-17413841965476411/1000000000000000000",
      "3,4,9": "17413841965476411/1000000000000000000",
      "4,5,9": "-965139642648909/15625000000000000",
      "0,5,10": "-103720343864397/1562500000000000",
      "2,5,12": "-39515415496713/7812500000000000",
      "4,5,10": "266969530934613/12500000000000000",
      "3,5,8": "-527040233201781/7812500000000000",
      "2,5,10": "-31338866854737/6250000000000000",
      "0,1,11": "117120049668783/50000000000000000"
     },
     "upper": "-305272610001723970073/441500000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CB6pmpmpppmpp",
   "cell": "CB",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "BGP+",
    "FGP-",
    "BGO+",
    "EGO-",
    "BFP+",
    "AFP+",
    "FGO+",
    "CFO-",
    "BDG+",
    "ADG+"
   ],
   "stages": [
    "other_CB_C_6:0",
    "other_CB_C_6:1",
    "other_CB_C_6:2",
    "other_CB_C_6:3",
    "other_CB_C_6:4",
    "other_CB_C_6:5",
    "Ccap_CB6:0",
    "Ccap_CB6p:0",
    "Ccap_CB6p:1",
    "Ccap_CB6pm:0",
    "Ccap_CB6pm:1",
    "Ccap_CB6pmp:0",
    "Ccap_CB6pmp:1",
    "Ccap_CB6pmpm:0",
    "Ccap_CB6pmpm:1",
    "Ccap_CB6pmpm:2",
    "Ccap_CB6pmpm:3",
    "Ccap_CB6pmpmp:0",
    "Ccap_CB6pmpmp:1",
    "Ccap_CB6pmpmpp:0",
    "Ccap_CB6pmpmpp:1",
    "Ccap_CB6pmpmppp:0",
    "Ccap_CB6pmpmppp:1",
    "Ccap_CB6pmpmppp:2",
    "Ccap_CB6pmpmppp:3",
    "Ccap_CB6pmpmpppm:0",
    "Ccap_CB6pmpmpppm:1",
    "Ccap_CB6pmpmpppm:2",
    "Ccap_CB6pmpmpppm:3",
    "Ccap_CB6pmpmpppmp:0",
    "Ccap_CB6pmpmpppmp:1",
    "Ccap_CB6pmpmpppmpp:0",
    "Ccap_CB6pmpmpppmpp:1",
    "Ccap_CB6pmpmpppmpp:2",
    "Ccap_CB6pmpmpppmpp:3"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 34,
    "sum": {
     "factors": [
      {
       "weight": 22,
       "atoms": [
        "L0",
        "L2",
        "L5"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L0",
        "L2",
        "L7"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L0",
        "L2",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L2",
        "L11"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L0",
        "L10",
        "L13"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "L0",
        "L16",
        "L19"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L2",
        "L17"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L2",
        "L6",
        "L9"
       ]
      },
      {
       "weight": 42,
       "atoms": [
        "L2",
        "L14",
        "L17"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L2",
        "L16",
        "L21"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L2",
        "L20",
        "L9"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L2",
        "L9",
        "L13"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L11",
        "L17"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L2",
        "L13",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 42,
       "atoms": [
        "L2",
        "L17",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L17",
        "overlap_fc"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L21",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L4",
        "L10",
        "L15"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L4",
        "L16",
        "L15"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L4",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L6",
        "L8",
        "L5"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L6",
        "L12",
        "L5"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L6",
        "L16",
        "L5"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "L6",
        "L3",
        "L15"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "L6",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L6",
        "L5",
        "span_AH_hi"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L6",
        "L5",
        "overlap_bf"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L6",
        "L9",
        "L13"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L6",
        "L11",
        "L13"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L8",
        "L18",
        "L15"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "L10",
        "L12",
        "L15"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L10",
        "L20",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L10",
        "L7",
        "L15"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L10",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L10",
        "L15",
        "L15"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L10",
        "L15",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L10",
        "L15",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L10",
        "L21",
        "L25"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L12",
        "L16",
        "L5"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L12",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "L12",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L14",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "L16",
        "L18",
        "L15"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L16",
        "L5",
        "L11"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "L16",
        "L5",
        "L17"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L16",
        "L5",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L16",
        "L15",
        "overlap_fc"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L16",
        "L17",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "L16",
        "L21",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "L20",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L22",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L1",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L1",
        "L11",
        "L21"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L5",
        "L11",
        "L15"
       ]
      },
      {
       "weight": 38,
       "atoms": [
        "L5",
        "L15",
        "L17"
       ]
      },
      {
       "weight": 42,
       "atoms": [
        "L5",
        "L15",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L15",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L5",
        "L15",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L15",
        "overlap_ae"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L5",
        "L21",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "L7",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L9",
        "L11",
        "overlap_fc"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L9",
        "L13",
        "L21"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L9",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L9",
        "L17",
        "overlap_fc"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L9",
        "L19",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L9",
        "L21",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L9",
        "L21",
        "overlap_fc"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L13",
        "L15",
        "L15"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "L13",
        "L15",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 42,
       "atoms": [
        "L13",
        "L15",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "L13",
        "L15",
        "span_BC"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L13",
        "L15",
        "overlap_fc"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L17",
        "L17",
        "overlap_fc"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L21",
        "AREA_HI_ADE",
        "overlap_fc"
       ]
      },
      {
       "weight": 57,
       "atoms": [
        "AREA_LO_ABC",
        "L13"
       ]
      },
      {
       "weight": 42,
       "atoms": [
        "AREA_LO_ABC",
        "L15"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "AREA_LO_BCD",
        "L12"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_BCD",
        "L17"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "AREA_LO_BCD",
        "L21"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_BCD",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_BCD",
        "overlap_eh"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_EFH"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_EFH",
        "L0"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_EFH",
        "L4"
       ]
      },
      {
       "weight": 52,
       "atoms": [
        "AREA_LO_EFH",
        "L12"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EFH",
        "L16"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EFH",
        "L18"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_EFH",
        "L21"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EFH",
        "span_DE"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "AREA_LO_EFH",
        "span_AH_hi"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_EFH",
        "overlap_fc"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_EFH",
        "overlap_ae"
       ]
      },
      {
       "weight": 52,
       "atoms": [
        "AREA_LO_ABG"
       ]
      },
      {
       "weight": 42,
       "atoms": [
        "AREA_LO_ABG",
        "L14"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_ABG",
        "L16"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "AREA_LO_ABG",
        "L20"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "AREA_LO_ABG",
        "L5"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABG",
        "L11"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_ABG",
        "L13"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ABG",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABG",
        "span_BC_hi"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_CDG",
        "L8"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "AREA_LO_CDG",
        "L16"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_CDG",
        "L20"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CDG",
        "L13"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_CDG",
        "L15"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "AREA_LO_CDG",
        "span_AH_hi"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "AREA_LO_CDG",
        "overlap_bf"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_CDG",
        "overlap_ae"
       ]
      },
      {
       "weight": 54,
       "atoms": [
        "AREA_LO_CGH",
        "L0"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CGH",
        "L25"
       ]
      },
      {
       "weight": 54,
       "atoms": [
        "AREA_LO_EFO",
        "L14"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EFO",
        "L17"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EFO",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_EFO",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CHP",
        "L17"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CHP",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_HOP",
        "L12"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_HOP",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_HOP",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_EHP",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EOP",
        "L14"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EOP",
        "L13"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_EOP",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_EOP",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CGP",
        "L0"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CGP",
        "L21"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CGP",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_EHO",
        "L16"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_EHO",
        "L22"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "AREA_LO_EGH"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_EGH",
        "L4"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_EGH",
        "L6"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_EGH",
        "L10"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EGH",
        "L18"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EGH",
        "L23"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_EGH",
        "span_BC"
       ]
      },
      {
       "weight": 43,
       "atoms": [
        "AREA_LO_EGH",
        "span_AH_hi"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "AREA_LO_EGH",
        "overlap_ae"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_GHP",
        "L21"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_GHP",
        "span_AH_hi"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "AREA_LO_BGO",
        "L1"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_BGO",
        "L9"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "AREA_LO_BGO",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_EGO",
        "L14"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EGO",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_EGO",
        "span_DE_hi"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_EGO",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_BEO",
        "L0"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_BEO",
        "L17"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_HI_AFG",
        "L15"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_CFO",
        "L14"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CFO",
        "L24"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CFO",
        "L1"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_CFO",
        "L17"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_CFO",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CFO",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "AREA_LO_CFO",
        "overlap_eh"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_ADG",
        "L12"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ADG",
        "L20"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ADG",
        "L3"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_ADG",
        "L17"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_ADG",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 79,
       "atoms": [
        "AREA_LO_ADG",
        "span_BC"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_ADG",
        "span_DE_hi"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_ADG",
        "overlap_bf"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ADG",
        "overlap_eh"
       ]
      }
     ],
     "sum": {
      "0,1": "-750361665724041/5000000000000000",
      "0,5": "-85880780090067/40000000000000000",
      "0,5,6": "98404526202303/8000000000000000",
      "0,8": "-111861582376563/20000000000000000",
      "1,1": "196835014252179/7812500000000000",
      "1,1,8": "-109906139393679/15625000000000000",
      "1,3": "-623799627243291/25000000000000000",
      "1,7": "-440880892013889/125000000000000000",
      "1,8": "10516032533979/3125000000000000",
      "1,10": "3411687858592797/62500000000000000",
      "1": "-2642111948039429/125000000000000000",
      "1,6": "-787361940162393/25000000000000000",
      "1,4": "38464124167233/25000000000000000",
      "1,5": "-1534495488099723/62500000000000000",
      "1,5,8": "856811353685223/125000000000000000",
      "1,2": "1050268321356543/62500000000000000",
      "2,5": "-980266431013173/62500000000000000",
      "2,5,7": "-4858071621435063/500000000000000000",
      "2,8": "20638355709052899/39500000000000000000",
      "2,7,8": "847336565201157/500000000000000000",
      "2": "-3743176774083381/246875000000000000",
      "2,4": "10479051037089657/500000000000000000",
      "2,4,5": "9135038842864353/500000000000000000",
      "3,4": "8159919391409841/1000000000000000000",
      "3,6": "-216866982097878453/15800000000000000000",
      "3,8": "469152498706011/250000000000000000",
      "2,3,8": "1585697197613877/500000000000000000",
      "3": "2840654130406203411/79000000000000000000",
      "3,7": "-7266527262065763/1000000000000000000",
      "2,3": "681459486522900273/39500000000000000000",
      "0,3": "96015296964249/40000000000000000",
      "3,5": "537371658997353/500000000000000000",
      "3,5,6": "-65174109580290339/200000000000000000",
      "4,9": "-181163968757434269/19750000000000000000",
      "5,6": "3103500205922043/100000000000000000",
      "5,6,7": "-1514199016463013/200000000000000000",
      "5,10": "10272174784186763/100000000000000000",
      "5,7,10": "-5170389019164999/500000000000000000",
      "5": "327812815445366363/9875000000000000000",
      "5,7": "2773942502818933593/79000000000000000000",
      "4,5": "-1166553233990222949/39500000000000000000",
      "5,5": "-17142421879130441/500000000000000000",
      "5,12": "-969585227422191/12500000000000000",
      "6,8": "376562941179357/100000000000000000",
      "6": "-916857673908832627/15800000000000000000",
      "4,6": "3870158487930207/3160000000000000000",
      "4,5,6": "2847275196640803/200000000000000000",
      "2,6": "-279269260060617/50000000000000000",
      "7": "-1301505491203065567/79000000000000000000",
      "7,12": "29058521366241/6250000000000000",
      "7,9": "-638650429150599/1000000000000000000",
      "8,9": "-243947418318547029/19750000000000000000",
      "8": "-1968570917432920821/79000000000000000000",
      "5,8": "2197485205298889/1000000000000000000",
      "2,5,8": "-3171234454723791/500000000000000000",
      "8,8": "165626353771839/250000000000000000",
      "4,8": "-609702040039851/125000000000000000",
      "2,4,8": "-1593317892214467/500000000000000000",
      "7,8": "3856816552638699/1000000000000000000",
      "8,10": "1178452546161177/62500000000000000",
      "2,8,10": "-1602387459615663/250000000000000000",
      "10": "187267829363151943/39500000000000000000",
      "7,10": "2076122819294937/125000000000000000",
      "6,10": "2070094997841311/987500000000000000",
      "11": "280131126807289593/4937500000000000000",
      "7,11": "-7658616236258493/987500000000000000",
      "4,11": "127322581762629/62500000000000000",
      "": "-31296032495857874347/39500000000000000000",
      "2,7": "95743511806761/15625000000000000",
      "0": "7224597451285497/3160000000000000000",
      "0,7": "44903259204237/20000000000000000",
      "0,2": "29055811491477/4000000000000000",
      "0,2,7": "84357485263431/20000000000000000",
      "0,10": "19671144957933/2500000000000000",
      "2,10": "-9337707072544221/250000000000000000",
      "4": "-329434676667118341/39500000000000000000",
      "4,7": "-467441505357633/500000000000000000",
      "7,7": "-1172811113133741/250000000000000000",
      "6,7": "-45318169913599521/15800000000000000000",
      "3,6,7": "757137692376711/200000000000000000",
      "4,5,5": "-19241127593907633/1000000000000000000",
      "4,10": "514773422898147/50000000000000000",
      "9": "-2381611391652824047/79000000000000000000",
      "4,5,8": "3356004652974387/1000000000000000000",
      "0,9": "-470852375302029/40000000000000000",
      "0,4": "94460588618373/10000000000000000",
      "4,5,10": "9722315396585169/500000000000000000",
      "6,7,7": "404585725829751/200000000000000000",
      "4,6,7": "-760776416802081/200000000000000000",
      "0,6": "-15200494195471329/632000000000000000",
      "0,6,7": "-26293153162581/8000000000000000",
      "1,6,7": "-194231516024349/5000000000000000",
      "5,8,8": "-8155273817830923/1000000000000000000",
      "3,10": "-3530805790113/250000000000000",
      "0,1,6": "-37868061133557/125000000000000",
      "5,9": "18980004601954631/1000000000000000000",
      "5,7,9": "9851689236344481/1000000000000000000",
      "4,5,9": "-18524956166712711/1000000000000000000",
      "0,1,8": "-14878012671351/125000000000000",
      "0,1,10": "-43101469343037/2500000000000000",
      "1,6,8": "-380369243482479/12500000000000000",
      "0,3,6": "-639661679882433/8000000000000000",
      "0,1,1": "-10941821603157/625000000000000",
      "3,6,8": "-3459691266198489/40000000000000000",
      "0,2,8": "-2037463263454779/10000000000000000",
      "12": "12088335059123013/493750000000000000",
      "6,12": "54182735743959/49375000000000000",
      "2,12": "346664872981809/12500000000000000",
      "4,8,9": "-3231091254304629/1000000000000000000",
      "3,9": "335998019372427/15625000000000000",
      "8,11": "-142614331049817/617187500000000000",
      "9,12": "993795087768093/25000000000000000",
      "10,11": "-454879003414759/15625000000000000",
      "10,12": "-230968102658769/6250000000000000",
      "3,8,9": "-41803284102232887/500000000000000000"
     },
     "upper": "-381383999934143673/79000000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CB6pmpmpppmpm",
   "cell": "CB",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "BGP+",
    "FGP-",
    "BGO+",
    "EGO-",
    "BFP+",
    "AFP+",
    "FGO+",
    "CFO-",
    "BDG+",
    "ADG-"
   ],
   "stages": [
    "other_CB_C_6:0",
    "other_CB_C_6:1",
    "other_CB_C_6:2",
    "other_CB_C_6:3",
    "other_CB_C_6:4",
    "other_CB_C_6:5",
    "Ccap_CB6:0",
    "Ccap_CB6p:0",
    "Ccap_CB6p:1",
    "Ccap_CB6pm:0",
    "Ccap_CB6pm:1",
    "Ccap_CB6pmp:0",
    "Ccap_CB6pmp:1",
    "Ccap_CB6pmpm:0",
    "Ccap_CB6pmpm:1",
    "Ccap_CB6pmpm:2",
    "Ccap_CB6pmpm:3",
    "Ccap_CB6pmpmp:0",
    "Ccap_CB6pmpmp:1",
    "Ccap_CB6pmpmpp:0",
    "Ccap_CB6pmpmpp:1",
    "Ccap_CB6pmpmppp:0",
    "Ccap_CB6pmpmppp:1",
    "Ccap_CB6pmpmppp:2",
    "Ccap_CB6pmpmppp:3",
    "Ccap_CB6pmpmpppm:0",
    "Ccap_CB6pmpmpppm:1",
    "Ccap_CB6pmpmpppm:2",
    "Ccap_CB6pmpmpppm:3",
    "Ccap_CB6pmpmpppmp:0",
    "Ccap_CB6pmpmpppmp:1",
    "Ccap_CB6pmpmpppmpm:0",
    "Ccap_CB6pmpmpppmpm:1",
    "Ccap_CB6pmpmpppmpm:2",
    "Ccap_CB6pmpmpppmpm:3"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 34,
    "sum": {
     "factors": [
      {
       "weight": 4,
       "atoms": [
        "L15",
        "L15"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L0",
        "L2",
        "L23"
       ]
      },
      {
       "weight": 584,
       "atoms": [
        "L0",
        "L10",
        "L15"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "L0",
        "L22",
        "L9"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "L0",
        "L5",
        "L25"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L0",
        "L7",
        "overlap_fc"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "L0",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 154,
       "atoms": [
        "L0",
        "L13",
        "L25"
       ]
      },
      {
       "weight": 230,
       "atoms": [
        "L0",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 109,
       "atoms": [
        "L0",
        "L21",
        "overlap_fc"
       ]
      },
      {
       "weight": 55,
       "atoms": [
        "L2",
        "L2",
        "L7"
       ]
      },
      {
       "weight": 107,
       "atoms": [
        "L2",
        "L12",
        "L15"
       ]
      },
      {
       "weight": 188,
       "atoms": [
        "L2",
        "L18",
        "L15"
       ]
      },
      {
       "weight": 195,
       "atoms": [
        "L2",
        "L22",
        "L9"
       ]
      },
      {
       "weight": 326,
       "atoms": [
        "L2",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 560,
       "atoms": [
        "L2",
        "L5",
        "L17"
       ]
      },
      {
       "weight": 131,
       "atoms": [
        "L2",
        "L7",
        "L15"
       ]
      },
      {
       "weight": 226,
       "atoms": [
        "L2",
        "L7",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 225,
       "atoms": [
        "L2",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 119,
       "atoms": [
        "L2",
        "L9",
        "L25"
       ]
      },
      {
       "weight": 353,
       "atoms": [
        "L2",
        "L13",
        "L17"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L2",
        "L15",
        "L25"
       ]
      },
      {
       "weight": 167,
       "atoms": [
        "L2",
        "L17",
        "L25"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L2",
        "AREA_HI_ADH",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 75,
       "atoms": [
        "L4",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 72,
       "atoms": [
        "L4",
        "L15",
        "L15"
       ]
      },
      {
       "weight": 117,
       "atoms": [
        "L4",
        "L15",
        "L25"
       ]
      },
      {
       "weight": 494,
       "atoms": [
        "L6",
        "L16",
        "L5"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "L6",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 233,
       "atoms": [
        "L6",
        "L5",
        "L13"
       ]
      },
      {
       "weight": 43,
       "atoms": [
        "L6",
        "L5",
        "overlap_bf"
       ]
      },
      {
       "weight": 116,
       "atoms": [
        "L6",
        "L13",
        "overlap_bf"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "L6",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 661,
       "atoms": [
        "L6",
        "L17",
        "L19"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "L6",
        "L25",
        "overlap_bf"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L10",
        "L12",
        "L15"
       ]
      },
      {
       "weight": 119,
       "atoms": [
        "L10",
        "L16",
        "L15"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L10",
        "L5",
        "L25"
       ]
      },
      {
       "weight": 43,
       "atoms": [
        "L10",
        "L13",
        "L25"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L10",
        "L15",
        "L21"
       ]
      },
      {
       "weight": 59,
       "atoms": [
        "L10",
        "L15",
        "L25"
       ]
      },
      {
       "weight": 149,
       "atoms": [
        "L10",
        "L15",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 40,
       "atoms": [
        "L10",
        "L15",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 587,
       "atoms": [
        "L10",
        "L21",
        "L25"
       ]
      },
      {
       "weight": 233,
       "atoms": [
        "L12",
        "L1",
        "L9"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "L12",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L12",
        "L5",
        "L25"
       ]
      },
      {
       "weight": 167,
       "atoms": [
        "L12",
        "L9",
        "L9"
       ]
      },
      {
       "weight": 122,
       "atoms": [
        "L12",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 40,
       "atoms": [
        "L12",
        "L9",
        "L17"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "L12",
        "L21",
        "L21"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L16",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 246,
       "atoms": [
        "L16",
        "L1",
        "L19"
       ]
      },
      {
       "weight": 325,
       "atoms": [
        "L16",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L16",
        "L5",
        "L17"
       ]
      },
      {
       "weight": 792,
       "atoms": [
        "L16",
        "L5",
        "L21"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L16",
        "L9",
        "L13"
       ]
      },
      {
       "weight": 94,
       "atoms": [
        "L16",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 48,
       "atoms": [
        "L16",
        "L17",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 102,
       "atoms": [
        "L18",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 159,
       "atoms": [
        "L18",
        "L9",
        "L21"
       ]
      },
      {
       "weight": 437,
       "atoms": [
        "L18",
        "L15",
        "L15"
       ]
      },
      {
       "weight": 121,
       "atoms": [
        "L18",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L18",
        "L15",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 103,
       "atoms": [
        "L22",
        "L1",
        "L15"
       ]
      },
      {
       "weight": 166,
       "atoms": [
        "L22",
        "L3",
        "L15"
       ]
      },
      {
       "weight": 62,
       "atoms": [
        "L22",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L22",
        "L5",
        "L21"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "L22",
        "L9",
        "L13"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L22",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 38,
       "atoms": [
        "L22",
        "L9",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L22",
        "L9",
        "Gsum"
       ]
      },
      {
       "weight": 831,
       "atoms": [
        "L22",
        "L15",
        "L21"
       ]
      },
      {
       "weight": 77,
       "atoms": [
        "L22",
        "L19",
        "L21"
       ]
      },
      {
       "weight": 99,
       "atoms": [
        "L22",
        "L21",
        "L21"
       ]
      },
      {
       "weight": 639,
       "atoms": [
        "L1",
        "L1",
        "L5"
       ]
      },
      {
       "weight": 744,
       "atoms": [
        "L1",
        "L3",
        "L5"
       ]
      },
      {
       "weight": 403,
       "atoms": [
        "L1",
        "L5",
        "L5"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "L1",
        "L5",
        "L17"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L1",
        "L5",
        "overlap_bf"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L1",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 38,
       "atoms": [
        "L1",
        "L11",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 460,
       "atoms": [
        "L1",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L3",
        "L9",
        "L9"
       ]
      },
      {
       "weight": 87,
       "atoms": [
        "L3",
        "L21",
        "L21"
       ]
      },
      {
       "weight": 94,
       "atoms": [
        "L5",
        "L11",
        "L17"
       ]
      },
      {
       "weight": 61,
       "atoms": [
        "L5",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 341,
       "atoms": [
        "L5",
        "L15",
        "L21"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "L5",
        "L15",
        "overlap_fc"
       ]
      },
      {
       "weight": 142,
       "atoms": [
        "L5",
        "L21",
        "L25"
       ]
      },
      {
       "weight": 148,
       "atoms": [
        "L5",
        "L21",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L5",
        "L21",
        "overlap_bf"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L25",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "L5",
        "L25",
        "overlap_bf"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "L9",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L9",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 129,
       "atoms": [
        "L9",
        "L11",
        "L21"
       ]
      },
      {
       "weight": 40,
       "atoms": [
        "L9",
        "L11",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "L9",
        "L13",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 230,
       "atoms": [
        "L9",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 44,
       "atoms": [
        "L9",
        "L19",
        "L19"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "L9",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 103,
       "atoms": [
        "L9",
        "L21",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 294,
       "atoms": [
        "L9",
        "L21",
        "overlap_fc"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L11",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L11",
        "L25",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L13",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 231,
       "atoms": [
        "L13",
        "L15",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 63,
       "atoms": [
        "L13",
        "L15",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "L13",
        "L15",
        "Gsum"
       ]
      },
      {
       "weight": 69,
       "atoms": [
        "L13",
        "L17",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L15",
        "L15",
        "span_BC"
       ]
      },
      {
       "weight": 156,
       "atoms": [
        "L15",
        "L17",
        "L19"
       ]
      },
      {
       "weight": 106,
       "atoms": [
        "L15",
        "L19",
        "L21"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L15",
        "L19",
        "overlap_bf"
       ]
      },
      {
       "weight": 423,
       "atoms": [
        "L15",
        "L23",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "L17",
        "L19",
        "L21"
       ]
      },
      {
       "weight": 81,
       "atoms": [
        "L17",
        "L19",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L17",
        "L19",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 77,
       "atoms": [
        "L19",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 99,
       "atoms": [
        "L19",
        "L21",
        "L25"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L19",
        "L21",
        "overlap_bf"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L19",
        "L25",
        "overlap_fc"
       ]
      },
      {
       "weight": 636,
       "atoms": [
        "L21",
        "L21",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 207,
       "atoms": [
        "L21",
        "AREA_HI_ADE",
        "overlap_fc"
       ]
      },
      {
       "weight": 244,
       "atoms": [
        "AREA_LO_ABC",
        "L2"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "AREA_LO_ABD",
        "L2"
       ]
      },
      {
       "weight": 307,
       "atoms": [
        "AREA_LO_ABD",
        "L12"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "AREA_LO_CDE",
        "L15"
       ]
      },
      {
       "weight": 208,
       "atoms": [
        "AREA_LO_CDE",
        "L17"
       ]
      },
      {
       "weight": 110,
       "atoms": [
        "AREA_LO_EFH"
       ]
      },
      {
       "weight": 230,
       "atoms": [
        "AREA_LO_EFH",
        "L0"
       ]
      },
      {
       "weight": 50,
       "atoms": [
        "AREA_LO_EFH",
        "L4"
       ]
      },
      {
       "weight": 95,
       "atoms": [
        "AREA_LO_EFH",
        "L14"
       ]
      },
      {
       "weight": 119,
       "atoms": [
        "AREA_LO_EFH",
        "L16"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_EFH",
        "L18"
       ]
      },
      {
       "weight": 323,
       "atoms": [
        "AREA_LO_EFH",
        "L24"
       ]
      },
      {
       "weight": 167,
       "atoms": [
        "AREA_LO_EFH",
        "L21"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_EFH",
        "L23"
       ]
      },
      {
       "weight": 40,
       "atoms": [
        "AREA_LO_EFH",
        "span_BC"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "AREA_LO_EFH",
        "span_DE_hi"
       ]
      },
      {
       "weight": 123,
       "atoms": [
        "AREA_LO_EFH",
        "overlap_ae"
       ]
      },
      {
       "weight": 88,
       "atoms": [
        "AREA_LO_ABG",
        "L0"
       ]
      },
      {
       "weight": 140,
       "atoms": [
        "AREA_LO_BCG",
        "L9"
       ]
      },
      {
       "weight": 345,
       "atoms": [
        "AREA_LO_BCG",
        "L21"
       ]
      },
      {
       "weight": 76,
       "atoms": [
        "AREA_LO_BCG",
        "L25"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "AREA_LO_CGH",
        "L0"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "AREA_LO_CGH",
        "L6"
       ]
      },
      {
       "weight": 111,
       "atoms": [
        "AREA_LO_CGH",
        "L20"
       ]
      },
      {
       "weight": 47,
       "atoms": [
        "AREA_LO_CGH",
        "L22"
       ]
      },
      {
       "weight": 107,
       "atoms": [
        "AREA_LO_CGH",
        "L3"
       ]
      },
      {
       "weight": 106,
       "atoms": [
        "AREA_LO_CGH",
        "L5"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_CGH",
        "L11"
       ]
      },
      {
       "weight": 667,
       "atoms": [
        "AREA_LO_CGH",
        "L17"
       ]
      },
      {
       "weight": 228,
       "atoms": [
        "AREA_LO_CGH",
        "L25"
       ]
      },
      {
       "weight": 83,
       "atoms": [
        "AREA_LO_CGH",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 50,
       "atoms": [
        "AREA_LO_CGH",
        "Gsum"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_EFO",
        "L22"
       ]
      },
      {
       "weight": 50,
       "atoms": [
        "AREA_LO_EFO",
        "L5"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "AREA_LO_EFO",
        "L7"
       ]
      },
      {
       "weight": 141,
       "atoms": [
        "AREA_LO_EFO",
        "L9"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "AREA_LO_EFO",
        "L17"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_EFO",
        "L19"
       ]
      },
      {
       "weight": 470,
       "atoms": [
        "AREA_LO_EFO",
        "L25"
       ]
      },
      {
       "weight": 244,
       "atoms": [
        "AREA_LO_FHP",
        "L15"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "AREA_LO_CHP",
        "L2"
       ]
      },
      {
       "weight": 47,
       "atoms": [
        "AREA_LO_CHP",
        "L16"
       ]
      },
      {
       "weight": 198,
       "atoms": [
        "AREA_LO_CHP",
        "L1"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CHP",
        "L19"
       ]
      },
      {
       "weight": 516,
       "atoms": [
        "AREA_LO_CHP",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CHP",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "AREA_LO_CHP",
        "overlap_ae"
       ]
      },
      {
       "weight": 195,
       "atoms": [
        "AREA_LO_HOP",
        "L2"
       ]
      },
      {
       "weight": 82,
       "atoms": [
        "AREA_LO_HOP",
        "L4"
       ]
      },
      {
       "weight": 267,
       "atoms": [
        "AREA_LO_HOP",
        "L16"
       ]
      },
      {
       "weight": 742,
       "atoms": [
        "AREA_LO_HOP",
        "L20"
       ]
      },
      {
       "weight": 427,
       "atoms": [
        "AREA_LO_HOP",
        "L24"
       ]
      },
      {
       "weight": 230,
       "atoms": [
        "AREA_LO_HOP",
        "L1"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "AREA_LO_HOP",
        "L7"
       ]
      },
      {
       "weight": 197,
       "atoms": [
        "AREA_LO_HOP",
        "L9"
       ]
      },
      {
       "weight": 47,
       "atoms": [
        "AREA_LO_HOP",
        "L13"
       ]
      },
      {
       "weight": 296,
       "atoms": [
        "AREA_LO_HOP",
        "L15"
       ]
      },
      {
       "weight": 121,
       "atoms": [
        "AREA_LO_HOP",
        "L19"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_HOP",
        "overlap_fc"
       ]
      },
      {
       "weight": 427,
       "atoms": [
        "AREA_LO_EHP",
        "L25"
       ]
      },
      {
       "weight": 751,
       "atoms": [
        "AREA_LO_ACG",
        "L6"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_ACG",
        "L12"
       ]
      },
      {
       "weight": 43,
       "atoms": [
        "AREA_LO_ACG",
        "L22"
       ]
      },
      {
       "weight": 204,
       "atoms": [
        "AREA_LO_ACG",
        "L1"
       ]
      },
      {
       "weight": 436,
       "atoms": [
        "AREA_LO_ACG",
        "L3"
       ]
      },
      {
       "weight": 106,
       "atoms": [
        "AREA_LO_ACG",
        "L5"
       ]
      },
      {
       "weight": 777,
       "atoms": [
        "AREA_LO_ACG",
        "L17"
       ]
      },
      {
       "weight": 199,
       "atoms": [
        "AREA_LO_ACG",
        "L25"
       ]
      },
      {
       "weight": 435,
       "atoms": [
        "AREA_LO_ACG",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 73,
       "atoms": [
        "AREA_LO_ACG",
        "overlap_bf"
       ]
      },
      {
       "weight": 144,
       "atoms": [
        "AREA_LO_EOP"
       ]
      },
      {
       "weight": 47,
       "atoms": [
        "AREA_LO_EOP",
        "L12"
       ]
      },
      {
       "weight": 597,
       "atoms": [
        "AREA_LO_EOP",
        "L14"
       ]
      },
      {
       "weight": 44,
       "atoms": [
        "AREA_LO_EOP",
        "L18"
       ]
      },
      {
       "weight": 195,
       "atoms": [
        "AREA_LO_EOP",
        "L3"
       ]
      },
      {
       "weight": 578,
       "atoms": [
        "AREA_LO_EOP",
        "L17"
       ]
      },
      {
       "weight": 204,
       "atoms": [
        "AREA_LO_EOP",
        "L21"
       ]
      },
      {
       "weight": 427,
       "atoms": [
        "AREA_LO_EOP",
        "L25"
       ]
      },
      {
       "weight": 230,
       "atoms": [
        "AREA_LO_EOP",
        "span_AH"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EOP",
        "overlap_eh"
       ]
      },
      {
       "weight": 61,
       "atoms": [
        "AREA_LO_CGP"
       ]
      },
      {
       "weight": 81,
       "atoms": [
        "AREA_LO_CGP",
        "L14"
       ]
      },
      {
       "weight": 311,
       "atoms": [
        "AREA_LO_CGP",
        "L20"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_CGP",
        "L19"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_CGP",
        "span_AH"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "AREA_LO_CGP",
        "overlap_eh"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EGH",
        "L0"
       ]
      },
      {
       "weight": 682,
       "atoms": [
        "AREA_LO_EGH",
        "L16"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "AREA_LO_EGH",
        "L19"
       ]
      },
      {
       "weight": 567,
       "atoms": [
        "AREA_LO_GHP",
        "L8"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_GHP",
        "L5"
       ]
      },
      {
       "weight": 117,
       "atoms": [
        "AREA_LO_GHP",
        "L15"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_GHP",
        "L19"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_GHP",
        "overlap_ae"
       ]
      },
      {
       "weight": 213,
       "atoms": [
        "AREA_LO_BGO"
       ]
      },
      {
       "weight": 656,
       "atoms": [
        "AREA_LO_BGO",
        "L8"
       ]
      },
      {
       "weight": 423,
       "atoms": [
        "AREA_LO_BGO",
        "L14"
       ]
      },
      {
       "weight": 128,
       "atoms": [
        "AREA_LO_BGO",
        "L5"
       ]
      },
      {
       "weight": 729,
       "atoms": [
        "AREA_LO_BGO",
        "L17"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_BGO",
        "L19"
       ]
      },
      {
       "weight": 723,
       "atoms": [
        "AREA_LO_BGO",
        "L21"
       ]
      },
      {
       "weight": 287,
       "atoms": [
        "AREA_LO_BGO",
        "L25"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "AREA_LO_BGO",
        "span_BC_hi"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "AREA_LO_BGO",
        "span_AH_hi"
       ]
      },
      {
       "weight": 777,
       "atoms": [
        "AREA_LO_BGO",
        "span_DE_hi"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "AREA_LO_EGO",
        "L5"
       ]
      },
      {
       "weight": 729,
       "atoms": [
        "AREA_LO_EGO",
        "L17"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_EGO",
        "L19"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "AREA_LO_EGO",
        "L21"
       ]
      },
      {
       "weight": 598,
       "atoms": [
        "AREA_LO_EGO",
        "L25"
       ]
      },
      {
       "weight": 202,
       "atoms": [
        "AREA_LO_EGO",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "AREA_LO_EGO",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 176,
       "atoms": [
        "AREA_LO_EGO",
        "overlap_eh"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_EGO",
        "QUAD_1171"
       ]
      },
      {
       "weight": 119,
       "atoms": [
        "AREA_LO_BEO",
        "L25"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_BEO",
        "QUAD_1171"
       ]
      },
      {
       "weight": 230,
       "atoms": [
        "AREA_LO_AFP",
        "L20"
       ]
      },
      {
       "weight": 52,
       "atoms": [
        "AREA_LO_AFP",
        "L5"
       ]
      },
      {
       "weight": 93,
       "atoms": [
        "AREA_LO_AFP",
        "L7"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_AFP",
        "L9"
       ]
      },
      {
       "weight": 43,
       "atoms": [
        "AREA_LO_AFP",
        "L13"
       ]
      },
      {
       "weight": 626,
       "atoms": [
        "AREA_LO_AFP",
        "L15"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_AFP",
        "span_BC_hi"
       ]
      },
      {
       "weight": 138,
       "atoms": [
        "AREA_LO_AFP",
        "span_DE_hi"
       ]
      },
      {
       "weight": 347,
       "atoms": [
        "AREA_LO_CFO",
        "L24"
       ]
      },
      {
       "weight": 121,
       "atoms": [
        "AREA_LO_CFO",
        "L1"
       ]
      },
      {
       "weight": 40,
       "atoms": [
        "AREA_LO_CFO",
        "L5"
       ]
      },
      {
       "weight": 425,
       "atoms": [
        "AREA_LO_CFO",
        "L9"
       ]
      },
      {
       "weight": 145,
       "atoms": [
        "AREA_LO_CFO",
        "L15"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "AREA_LO_CFO",
        "L17"
       ]
      },
      {
       "weight": 179,
       "atoms": [
        "AREA_LO_CFO",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 1000,
       "atoms": [
        "AREA_LO_BDG"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "AREA_LO_BDG",
        "L4"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_BDG",
        "L8"
       ]
      },
      {
       "weight": 422,
       "atoms": [
        "AREA_LO_BDG",
        "L12"
       ]
      },
      {
       "weight": 643,
       "atoms": [
        "AREA_LO_BDG",
        "L14"
       ]
      },
      {
       "weight": 758,
       "atoms": [
        "AREA_LO_BDG",
        "L20"
       ]
      },
      {
       "weight": 777,
       "atoms": [
        "AREA_LO_BDG",
        "L17"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "AREA_LO_BDG",
        "L25"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "AREA_LO_BDG",
        "span_BC_hi"
       ]
      },
      {
       "weight": 244,
       "atoms": [
        "AREA_LO_BDG",
        "span_AH_hi"
       ]
      },
      {
       "weight": 126,
       "atoms": [
        "AREA_LO_ADG"
       ]
      },
      {
       "weight": 422,
       "atoms": [
        "AREA_LO_ADG",
        "L12"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_ADG",
        "L20"
       ]
      },
      {
       "weight": 701,
       "atoms": [
        "AREA_LO_ADG",
        "L3"
       ]
      },
      {
       "weight": 233,
       "atoms": [
        "AREA_LO_ADG",
        "L5"
       ]
      },
      {
       "weight": 36,
       "atoms": [
        "AREA_LO_ADG",
        "L15"
       ]
      },
      {
       "weight": 777,
       "atoms": [
        "AREA_LO_ADG",
        "L17"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "AREA_LO_ADG",
        "L25"
       ]
      },
      {
       "weight": 523,
       "atoms": [
        "AREA_LO_ADG",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 116,
       "atoms": [
        "AREA_LO_ADG",
        "overlap_bf"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "AREA_LO_ADG",
        "overlap_ae"
       ]
      },
      {
       "weight": 190,
       "atoms": [
        "Central_order",
        "L5"
       ]
      },
      {
       "weight": 803,
       "atoms": [
        "Central_order",
        "L7"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "QUAD_974",
        "L17"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "QUAD_974",
        "L21"
       ]
      },
      {
       "weight": 43,
       "atoms": [
        "QUAD_974",
        "overlap_bf"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "LINEAR_1151",
        "L6"
       ]
      },
      {
       "weight": 107,
       "atoms": [
        "LINEAR_1151",
        "L5"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "LINEAR_1151",
        "L15"
       ]
      },
      {
       "weight": 230,
       "atoms": [
        "LINEAR_1151",
        "L21"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "LINEAR_1305",
        "L15"
       ]
      },
      {
       "weight": 406,
       "atoms": [
        "LINEAR_1305",
        "L21"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "QUAD_1455",
        "L15"
       ]
      }
     ],
     "sum": {
      "": "-133539409277734773688493/34878500000000000000000",
      "7": "-29376607697019634699/1395140000000000000000",
      "7,7": "4365616575463/100000000000000",
      "0,1": "351156651721281/12500000000000000",
      "0,5": "-15926408952086457/493750000000000000",
      "0,11": "15678608233391649/493750000000000000",
      "0": "-68741894211158433/493750000000000000",
      "0,12": "50365855936953/3125000000000000",
      "0,2": "-12310505900361/781250000000000",
      "0,2,12": "60588876899097/1562500000000000",
      "0,3": "166089461302821/2500000000000000",
      "0,7": "1877517199461/250000000000000",
      "0,6": "-26715792573777/781250000000000",
      "0,6,7": "-9293567800029/250000000000000",
      "0,9": "-730625428971/125000000000000",
      "0,10": "-18245435121/156250000000",
      "1,1": "-9113454577665207/250000000000000000",
      "1,6": "-9905520147767433/1000000000000000000",
      "1,9": "-1447135261989543/1000000000000000000",
      "1,11": "-41387724622604997/500000000000000000",
      "1": "4202786461604098599/79000000000000000000",
      "1,7": "1350623293096581/20000000000000000",
      "1,2": "-2179533459697209/62500000000000000",
      "1,8": "1787955633842293377/79000000000000000000",
      "1,2,8": "2451139137839889/125000000000000000",
      "1,3": "-6995509300030608441/79000000000000000000",
      "0,1,3": "-941961740524749/12500000000000000",
      "1,4": "2049912757243197/20000000000000000",
      "1,4,9": "40188805351087743/500000000000000000",
      "1,12": "-10686609989037423/1000000000000000000",
      "1,8,12": "20245761328883517/1000000000000000000",
      "2": "1733845968926683193/55187500000000000000",
      "2,7": "173665261254722367/2207500000000000000",
      "2,2": "-99736003362391/3906250000000000",
      "2,12": "-1888774393906671/125000000000000000",
      "2,7,12": "90757734891771/2500000000000000",
      "3,8": "-193130583175593/12500000000000000",
      "3": "-1267528645232013409/15800000000000000000",
      "3,6": "-8080742945818240789/79000000000000000000",
      "2,3": "24142070897/500000000000000",
      "3,5": "-175278488446173/6250000000000000",
      "1,3,6": "-84733604478127647/1000000000000000000",
      "3,7": "549242663539157/10000000000000000",
      "3,9": "4458108908027019/125000000000000000",
      "5,6": "-14615274286971111/200000000000000000",
      "5,8": "-3358859180972301/500000000000000000",
      "5": "49483218295931523/617187500000000000",
      "5,12": "5842350521417818359/79000000000000000000",
      "2,5": "-1329691123580517/62500000000000000",
      "2,5,12": "-6947243841839913/125000000000000000",
      "5,10": "-172710537782517/12500000000000000",
      "5,7": "-25442904532791783/1580000000000000000",
      "1,5": "47133081352171647/1000000000000000000",
      "6": "-430269325800795886419/6975700000000000000000",
      "4,6": "-4626098018067477/50000000000000000",
      "2,6": "-217538889274997/31250000000000000",
      "6,12": "-58216738747850511/1000000000000000000",
      "4,4,6": "20745225277632863/250000000000000000",
      "6,7": "49575922163793177/17660000000000000000",
      "4,6,7": "537397555359931/10000000000000000",
      "6,8": "10336781530343259/500000000000000000",
      "4,6,8": "12600192428969061/500000000000000000",
      "6,10": "-41131190963372133/987500000000000000",
      "6,10,10": "-9493840074087/156250000000000",
      "8,11": "4100727906787239/62500000000000000",
      "7,8,11": "169325819759187/10000000000000000",
      "8": "91028507167111189233/17439250000000000000000",
      "8,9": "173617945841686749/39500000000000000000",
      "0,8": "-465262162262109/12500000000000000",
      "0,8,9": "-248780549434941/12500000000000000",
      "7,8": "-490617786890781/20000000000000000",
      "2,8": "-18946049876536131/551875000000000000",
      "2,7,8": "-37420623050667/1250000000000000",
      "8,8": "-287511955028451/62500000000000000",
      "2,8,8": "877389646729077/125000000000000000",
      "8,10": "-282536921833893/12500000000000000",
      "4,8": "8460504428624661/500000000000000000",
      "9,11": "-22987744199095221/250000000000000000",
      "9": "-1389877658183283931/39500000000000000000",
      "9,10": "-213686595040131/12500000000000000",
      "4,9": "3442078027577189/100000000000000000",
      "7,9": "-108156496870733/2000000000000000",
      "7,7,9": "-15893724380473/400000000000000",
      "9,9": "1262839875077151/40000000000000000",
      "2,9": "3887491765863501/62500000000000000",
      "2,7,9": "109424269123123/2500000000000000",
      "11": "533325281754491800119/34878500000000000000000",
      "7,11": "-478505058498831/10000000000000000",
      "0,7,11": "4821153394239/125000000000000",
      "2,11": "177406649556591/12500000000000000",
      "10,11": "-39457656212247/1562500000000000",
      "2,10,11": "41059534340097/781250000000000",
      "6,11": "26191885386849/500000000000000",
      "4,11": "-4659342128936350401/110375000000000000000",
      "4,7,11": "-278781637346121/5000000000000000",
      "10,10,11": "4925047116717/78125000000000",
      "0,0": "608499330381/15625000000000",
      "0,2,5": "81558207292797/1562500000000000",
      "4": "-1555738350983984251/19750000000000000000",
      "4,5": "-2903272323605449677/39500000000000000000",
      "0,4": "-39348607304979/3125000000000000",
      "12": "-4031583662985724269/19750000000000000000",
      "9,12": "2837977843754337/500000000000000000",
      "4,4": "-4692971553753413/250000000000000000",
      "10": "-40070894387154021/493750000000000000",
      "10,10": "-2065543240869/156250000000000",
      "1,10": "31601953838240037/493750000000000000",
      "2,5,8": "-2864441178006201/125000000000000000",
      "2,6,7": "-95843175558797/2500000000000000",
      "7,10": "4989921016119/250000000000000",
      "2,10": "7721096822943/97656250000000",
      "2,7,10": "-1317995325627/31250000000000",
      "10,12": "755407366228539/6250000000000000",
      "2,2,10": "9074064187977/195312500000000",
      "1,2,10": "-86331804838209/1562500000000000",
      "4,10": "219802456124517/1250000000000000",
      "2,4": "-430147493771303/62500000000000000",
      "4,7": "-61761612550169/1000000000000000",
      "4,12": "8997449842673103/250000000000000000",
      "4,9,12": "-34890104613513387/500000000000000000",
      "1,4,10": "-484066816436007/6250000000000000",
      "5,9": "-494926049192967/125000000000000000",
      "6,6": "23052051341827101/1000000000000000000",
      "6,6,7": "835997328001487/20000000000000000",
      "3,6,7": "-1293596199395941/20000000000000000",
      "6,7,8": "326403426223257/20000000000000000",
      "8,9,10": "307745361444393/12500000000000000",
      "9,10,12": "-746387143002009/12500000000000000",
      "2,9,12": "-6222541186474269/125000000000000000",
      "3,10": "-2030461861870407/12500000000000000",
      "0,1,1": "-150726827324642247/12500000000000000",
      "0,1,6": "608750627534343/12500000000000000",
      "7,12": "25924956735807/312500000000000",
      "4,5,12": "38953549225878399/500000000000000000",
      "3,4": "2703661487527763/62500000000000000",
      "0,1,8": "-11646228893901777/6250000000000000",
      "0,0,1": "-74440569902391/19531250000000",
      "1,8,10": "-294011511272829/12500000000000000",
      "8,12": "-10515814906113/500000000000000",
      "6,7,12": "-791639294322441/20000000000000000",
      "3,4,9": "57012969225077887/500000000000000000",
      "4,4,9": "-23684848718382817/250000000000000000",
      "0,3,6": "863590755937287/12500000000000000",
      "0,2,6": "63983861788479/1562500000000000",
      "0,6,6": "-224915398336324527/12500000000000000",
      "0,2,11": "-33192420723189/781250000000000",
      "0,4,9": "409597597164903/6250000000000000",
      "1,7,10": "-12539575748259/250000000000000",
      "1,1,10": "-23819782491558837/12500000000000000",
      "0,1,10": "8371284412113/156250000000000",
      "3,6,10": "1068275031667851/12500000000000000",
      "3,4,6": "-49936856442870593/500000000000000000",
      "0,1,5": "-5431686356153043/1562500000000000"
     },
     "upper": "-45776425910815620745031/69757000000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CB6pmpmpppmm",
   "cell": "CB",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "BGP+",
    "FGP-",
    "BGO+",
    "EGO-",
    "BFP+",
    "AFP+",
    "FGO+",
    "CFO-",
    "BDG-"
   ],
   "stages": [
    "other_CB_C_6:0",
    "other_CB_C_6:1",
    "other_CB_C_6:2",
    "other_CB_C_6:3",
    "other_CB_C_6:4",
    "other_CB_C_6:5",
    "Ccap_CB6:0",
    "Ccap_CB6p:0",
    "Ccap_CB6p:1",
    "Ccap_CB6pm:0",
    "Ccap_CB6pm:1",
    "Ccap_CB6pmp:0",
    "Ccap_CB6pmp:1",
    "Ccap_CB6pmpm:0",
    "Ccap_CB6pmpm:1",
    "Ccap_CB6pmpm:2",
    "Ccap_CB6pmpm:3",
    "Ccap_CB6pmpmp:0",
    "Ccap_CB6pmpmp:1",
    "Ccap_CB6pmpmpp:0",
    "Ccap_CB6pmpmpp:1",
    "Ccap_CB6pmpmppp:0",
    "Ccap_CB6pmpmppp:1",
    "Ccap_CB6pmpmppp:2",
    "Ccap_CB6pmpmppp:3",
    "Ccap_CB6pmpmpppm:0",
    "Ccap_CB6pmpmpppm:1",
    "Ccap_CB6pmpmpppm:2",
    "Ccap_CB6pmpmpppm:3",
    "Ccap_CB6pmpmpppmm:0",
    "Ccap_CB6pmpmpppmm:1",
    "Ccap_CB6pmpmpppmm:2"
   ],
   "terminal": {
    "kind": "box",
    "stage": 31,
    "contradiction": {
     "factor": 3247,
     "target": "b",
     "old": [
      "131457/1000000",
      "3297/25000"
     ],
     "lines": [
      [
       "88766733/1000000000",
       "-9975580531511353/500000000000000000"
      ],
      [
       "88766733/1000000000",
       "-245527411473333/12500000000000000"
      ],
      [
       "88766733/1000000000",
       "-10035132972032157/500000000000000000"
      ],
      [
       "88766733/1000000000",
       "-2470162224863531/125000000000000000"
      ],
      [
       "93/1000",
       "-107203159039121/6250000000000000"
      ],
      [
       "93/1000",
       "-4206238119489573/250000000000000000"
      ],
      [
       "93/1000",
       "-107983065089121/6250000000000000"
      ],
      [
       "93/1000",
       "-4237434361489573/250000000000000000"
      ],
      [
       "88766733/1000000000",
       "-10007714010486313/500000000000000000"
      ],
      [
       "88766733/1000000000",
       "-4926631464444591/250000000000000000"
      ],
      [
       "88766733/1000000000",
       "-10067266451007117/500000000000000000"
      ],
      [
       "88766733/1000000000",
       "-4956407684704993/250000000000000000"
      ],
      [
       "93/1000",
       "-26901206881577/1562500000000000"
      ],
      [
       "93/1000",
       "-263895084654219/15625000000000000"
      ],
      [
       "93/1000",
       "-27096183394077/1562500000000000"
      ],
      [
       "93/1000",
       "-265844849779219/15625000000000000"
      ]
     ]
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CB6pmpmppm",
   "cell": "CB",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "BGP+",
    "FGP-",
    "BGO+",
    "EGO-",
    "BFP+",
    "AFP+",
    "FGO-"
   ],
   "stages": [
    "other_CB_C_6:0",
    "other_CB_C_6:1",
    "other_CB_C_6:2",
    "other_CB_C_6:3",
    "other_CB_C_6:4",
    "other_CB_C_6:5",
    "Ccap_CB6:0",
    "Ccap_CB6p:0",
    "Ccap_CB6p:1",
    "Ccap_CB6pm:0",
    "Ccap_CB6pm:1",
    "Ccap_CB6pmp:0",
    "Ccap_CB6pmp:1",
    "Ccap_CB6pmpm:0",
    "Ccap_CB6pmpm:1",
    "Ccap_CB6pmpm:2",
    "Ccap_CB6pmpm:3",
    "Ccap_CB6pmpmp:0",
    "Ccap_CB6pmpmp:1",
    "Ccap_CB6pmpmpp:0",
    "Ccap_CB6pmpmpp:1",
    "Ccap_CB6pmpmppm:0",
    "Ccap_CB6pmpmppm:1",
    "Ccap_CB6pmpmppm:2",
    "Ccap_CB6pmpmppm:3"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 24,
    "sum": {
     "factors": [
      {
       "weight": 3,
       "atoms": [
        "L15",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L0",
        "L5"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L0",
        "L2",
        "L5"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L0",
        "L2",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L2",
        "L21"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L0",
        "L4",
        "L21"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L0",
        "L4",
        "L25"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L0",
        "L10",
        "L13"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L10",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L5",
        "overlap_fc"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L0",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L0",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L0",
        "L19",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L0",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L2",
        "L16",
        "L3"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L24",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L9",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "L4",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L4",
        "L24",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L4",
        "L7",
        "L21"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L4",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L4",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L4",
        "L19",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L4",
        "L21",
        "L25"
       ]
      },
      {
       "weight": 53,
       "atoms": [
        "L6",
        "L20",
        "L11"
       ]
      },
      {
       "weight": 39,
       "atoms": [
        "L8",
        "L16",
        "L19"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "L8",
        "L13",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L10",
        "L10",
        "L15"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L10",
        "L16",
        "L5"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L10",
        "L16",
        "L19"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L10",
        "L16",
        "L21"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "L10",
        "L16",
        "L25"
       ]
      },
      {
       "weight": 58,
       "atoms": [
        "L10",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L10",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L10",
        "L15",
        "L15"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L10",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L10",
        "L15",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 50,
       "atoms": [
        "L10",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "L10",
        "L21",
        "L25"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L10",
        "L21",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L12",
        "L20",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L12",
        "L24",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L12",
        "L7",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L12",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L12",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L14",
        "L20",
        "overlap_fc"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L14",
        "L5",
        "overlap_fc"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "L14",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L14",
        "L17",
        "overlap_fc"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L14",
        "L25",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L14",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L16",
        "L16",
        "L19"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "L16",
        "L18",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L16",
        "L18",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "L16",
        "L22",
        "L19"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "L16",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L16",
        "L3",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L16",
        "L3",
        "L19"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L16",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L16",
        "L7",
        "L13"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L16",
        "L7",
        "overlap_fc"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L16",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L16",
        "L11",
        "L15"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L16",
        "L13",
        "L21"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L16",
        "L13",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L16",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "L16",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L16",
        "L23",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "L18",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L18",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L18",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L18",
        "L15",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L20",
        "L5",
        "L11"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L20",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L20",
        "L11",
        "L11"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L20",
        "L11",
        "L23"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L20",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L20",
        "overlap_fc",
        "QUAD_1011"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L22",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 50,
       "atoms": [
        "L22",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 64,
       "atoms": [
        "L22",
        "L9",
        "L21"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "L22",
        "L13",
        "L21"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L24",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "L5",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L5",
        "L11",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L5",
        "L13",
        "L21"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L5",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L25",
        "overlap_fc"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L5",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L7",
        "L21",
        "overlap_fc"
       ]
      },
      {
       "weight": 50,
       "atoms": [
        "L9",
        "L11",
        "L19"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L9",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "L9",
        "L21",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L9",
        "L23",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L11",
        "L13",
        "L25"
       ]
      },
      {
       "weight": 72,
       "atoms": [
        "L11",
        "L15",
        "L21"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L11",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L11",
        "L17",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L11",
        "AREA_LO_ADH",
        "overlap_fc"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L13",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L13",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L13",
        "L19",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L13",
        "L19",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L13",
        "L21",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L13",
        "L25",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L15",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L15",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L15",
        "L19",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L15",
        "L23",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L17",
        "L19",
        "overlap_fc"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L17",
        "L21",
        "overlap_fc"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L17",
        "L25",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L17",
        "AREA_HI_ADE",
        "overlap_fc"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L17",
        "AREA_LO_ADH",
        "overlap_fc"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_ADH",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CDE",
        "L4"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CDE",
        "L13"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CDE",
        "L17"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CDE",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CDE",
        "span_AH_hi"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_DEF",
        "L0"
       ]
      },
      {
       "weight": 38,
       "atoms": [
        "AREA_LO_DEF",
        "L20"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_DEF",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_ABG"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_ABG",
        "L4"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_ABG",
        "L16"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABG",
        "L9"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ABG",
        "L13"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_ABG",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ABG",
        "L21"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_ABG",
        "span_BC_hi"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BCG",
        "L2"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_BCG",
        "L16"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_BCG",
        "L13"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BCG",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BCG",
        "L21"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CDG",
        "L0"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CDG",
        "L16"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CDG",
        "L5"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDG",
        "L19"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CDG",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CDG",
        "span_AH_hi"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CGH",
        "L16"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_CGH",
        "L22"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_CGH",
        "L25"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "AREA_LO_EFO",
        "L0"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EFO",
        "L12"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EFO",
        "L5"
       ]
      },
      {
       "weight": 54,
       "atoms": [
        "AREA_LO_EFO",
        "L25"
       ]
      },
      {
       "weight": 63,
       "atoms": [
        "AREA_LO_EFO",
        "span_AH"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "AREA_LO_EFO",
        "span_AH_hi"
       ]
      },
      {
       "weight": 52,
       "atoms": [
        "AREA_LO_CHO",
        "L9"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_CHO",
        "L23"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CHP",
        "L6"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_CHP",
        "L8"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CHP",
        "L12"
       ]
      },
      {
       "weight": 75,
       "atoms": [
        "AREA_LO_CHP",
        "L18"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CHP",
        "L5"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "AREA_LO_CHP",
        "L17"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CHP",
        "L21"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "AREA_LO_CHP",
        "L23"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_CHP",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 40,
       "atoms": [
        "AREA_LO_HOP",
        "L4"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_HOP",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_HOP",
        "L13"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "AREA_LO_HOP",
        "L23"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_HOP",
        "span_AH"
       ]
      },
      {
       "weight": 82,
       "atoms": [
        "AREA_LO_HOP",
        "span_DE"
       ]
      },
      {
       "weight": 86,
       "atoms": [
        "AREA_LO_HOP",
        "span_DE_hi"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_HOP",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ACG",
        "L0"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ACG",
        "L12"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ACG",
        "L18"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ACG",
        "L5"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_ACG",
        "L17"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_ACG",
        "L21"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_ACG",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_ACG",
        "span_AH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ACG",
        "span_DE"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ACG",
        "span_BC"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_ACG",
        "overlap_bf"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_COP",
        "L15"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "AREA_LO_EOP",
        "L0"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "AREA_LO_EOP",
        "L4"
       ]
      },
      {
       "weight": 50,
       "atoms": [
        "AREA_LO_EOP",
        "L10"
       ]
      },
      {
       "weight": 52,
       "atoms": [
        "AREA_LO_EOP",
        "span_AH"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_EOP",
        "span_AH_hi"
       ]
      },
      {
       "weight": 72,
       "atoms": [
        "AREA_LO_FOP",
        "L9"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "AREA_LO_CGP",
        "L0"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CGP",
        "L4"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CGP",
        "L10"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "AREA_LO_CGP",
        "L22"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_CGP",
        "L21"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CGP",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_EHO",
        "L16"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EHO",
        "L13"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_EHO",
        "L25"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_GHP",
        "L0"
       ]
      },
      {
       "weight": 53,
       "atoms": [
        "AREA_LO_GHP",
        "L21"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_GOP",
        "L11"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "AREA_LO_GOP",
        "L23"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_GOP",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "AREA_LO_FGO",
        "L0"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_FGO",
        "L6"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_FGO",
        "L8"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_FGO",
        "L16"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_FGO",
        "L5"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_FGO",
        "L11"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "AREA_LO_FGO",
        "L25"
       ]
      },
      {
       "weight": 39,
       "atoms": [
        "AREA_LO_FGO",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_FGO",
        "overlap_ae"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "LINEAR_997",
        "L0"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "QUAD_1195",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "QUAD_1219",
        "L15"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "QUAD_1294",
        "L11"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "QUAD_1294",
        "L23"
       ]
      }
     ],
     "sum": {
      "": "-2103316277421168483/1580000000000000000",
      "7": "-134626110426419253/1580000000000000000",
      "0": "837119486206593/20000000000000000",
      "7,7": "1277114643507/400000000000000",
      "0,7": "-122069761881511/10000000000000000",
      "0,0": "-3965358867146423/250000000000000000",
      "0,0,2": "-945699234721133/250000000000000000",
      "0,1": "3661533587116797/125000000000000000",
      "0,1,9": "-1251839881641629/62500000000000000",
      "0,2": "319675806392743/100000000000000000",
      "0,2,12": "-633533616036217/100000000000000000",
      "0,5": "91264917522641/62500000000000000",
      "0,5,10": "3951353114571/800000000000000",
      "0,2,5": "-701762057674571/250000000000000000",
      "0,6": "-2540780128287567/100000000000000000",
      "0,9": "-816284171349051/31250000000000000",
      "1,8": "-895448122927533/125000000000000000",
      "1": "228046086709413/50000000000000000",
      "1,7": "-86322959162993/5000000000000000",
      "1,4": "-291085846043307/250000000000000000",
      "2,11": "2031449441897283/500000000000000000",
      "2,10,11": "-10640288103177/1600000000000000",
      "2,5,12": "-470117599414879/200000000000000000",
      "2": "392515022060760877/79000000000000000000",
      "2,10": "-32181119547/100000000000000",
      "2,3": "-60706829241120799/9875000000000000000",
      "2,5": "-50558144167499/125000000000000000",
      "2,4": "175381172174093533/39500000000000000000",
      "2,4,5": "-1880101454602603/1000000000000000000",
      "2,9": "-51955024987881/7812500000000000",
      "2,12": "-941842128836583/50000000000000000",
      "3,10": "-680166820983/80000000000000",
      "3,5,10": "2889048162639/400000000000000",
      "4,8": "-4796923097396619/1000000000000000000",
      "4": "-1368032412362028953/39500000000000000000",
      "4,10": "3214142546277/320000000000000",
      "4,6": "-3312451991546487/1000000000000000000",
      "5,5": "21275716281983/20000000000000000",
      "5,8": "2774829229936687/1000000000000000000",
      "5,8,9": "906119966394559/500000000000000000",
      "5,11": "273570497875723/1000000000000000000",
      "5": "-654316265726929863/39500000000000000000",
      "5,7": "8203603908621/2500000000000000",
      "4,5": "-233709255741376799/19750000000000000000",
      "4,5,7": "-143555407947793/20000000000000000",
      "5,9": "-940618929308977/50000000000000000",
      "5,12": "307005438649377/200000000000000000",
      "5,10": "208345633831329/63200000000000000",
      "3,5": "-554639848918821/250000000000000000",
      "6,10": "-2981098323/200000000000",
      "6,7,10": "-872042238009/32000000000000",
      "6,12": "2988924936392421/40000000000000000",
      "6": "-10705937073536581083/79000000000000000000",
      "6,7": "790310897392779/10000000000000000",
      "3,6": "8087833331931321/9875000000000000000",
      "3,6,7": "152599691499363/5000000000000000",
      "2,6": "8605412443802601/1000000000000000000",
      "5,6": "1484032592439369/100000000000000000",
      "2,7": "1210351585771/625000000000000",
      "2,4,7": "143555407947793/20000000000000000",
      "8,8": "-1411636967561513/1000000000000000000",
      "8,9": "2323961816039423/500000000000000000",
      "0,8,9": "1221093317048857/250000000000000000",
      "8,11": "-1488121439327831/125000000000000000",
      "8": "-606070185541228849/79000000000000000000",
      "7,8": "-333642530215169/20000000000000000",
      "2,8": "-8773828573664721/3160000000000000000",
      "6,8": "7377617683339281/1000000000000000000",
      "3,8": "-26054898423869/125000000000000000",
      "4,5,8": "-12915336295932721/1000000000000000000",
      "8,10": "266704892013/50000000000000",
      "0,8": "7475512554640249/500000000000000000",
      "8,12": "332270387079449/200000000000000000",
      "9": "630405017431722953/19750000000000000000",
      "7,9": "1569862892990501/98750000000000000",
      "4,9": "-867957726277879199/39500000000000000000",
      "4,7,9": "-254537711448431/10000000000000000",
      "9,11": "7706057738564493/500000000000000000",
      "3,9": "-1487477127445761/125000000000000000",
      "10": "-964037231467827/12640000000000000",
      "10,11": "9850727490447/202240000000000",
      "4,10,11": "-38415628559103/1600000000000000",
      "7,10": "1401093050373/32000000000000",
      "11": "-408343388446370071/79000000000000000000",
      "4,11": "536952200912992831/79000000000000000000",
      "6,11": "-3019156917579/31250000000000000",
      "7,11": "-109909055258957/39500000000000000",
      "2,2": "-1477759342011163/500000000000000000",
      "4,7": "367040271590481/10000000000000000",
      "0,11": "-11661786174701861/250000000000000000",
      "0,4": "-5019563953401143/500000000000000000",
      "0,4,11": "-9194225237857369/500000000000000000",
      "12": "-360813286175150991/7900000000000000000",
      "0,5,5": "-701762057674571/500000000000000000",
      "9,12": "-233056157048442507/7900000000000000000",
      "6,9": "-157040537748273/125000000000000000",
      "6,7,9": "-274608603298503/10000000000000000",
      "0,6,9": "4846620569920299/250000000000000000",
      "3": "215678422669619953/19750000000000000000",
      "4,6,9": "12984655245695307/500000000000000000",
      "0,10": "-5501090180649/160000000000000",
      "7,12": "-112066418279309/4000000000000000",
      "0,12": "263822066772667/50000000000000000",
      "0,2,8": "688678106964071/500000000000000000",
      "0,5,8": "-7575459176604781/500000000000000000",
      "3,7": "-174712624703093/5000000000000000",
      "0,3": "238986776240043/7812500000000000",
      "2,3,7": "-39177533914109/5000000000000000",
      "0,2,3": "691451904514697/125000000000000000",
      "3,5,7": "39177533914109/5000000000000000",
      "1,2": "234124004353169/250000000000000000",
      "1,2,8": "-3598963858645183/250000000000000000",
      "1,8,8": "-504551891932669/250000000000000000",
      "0,1,8": "-6235698505984983/62500000000000000",
      "1,4,8": "-1856239463908991/250000000000000000",
      "1,9": "105498676417967/15625000000000000",
      "1,10": "224800919763/20000000000000",
      "1,1": "-38607668219533/15625000000000000",
      "0,1,1": "-6392710508440851/31250000000000000",
      "2,8,8": "-501509906742677/500000000000000000",
      "0,3,6": "-2693261590862679/125000000000000000",
      "2,2,8": "511037915306177/1000000000000000000",
      "2,8,11": "-16690384104837093/1000000000000000000",
      "0,4,9": "4492385501795123/250000000000000000",
      "10,12": "4062028634937/80000000000000",
      "2,6,12": "1831146411522753/200000000000000000",
      "2,9,12": "833564263285793/100000000000000000",
      "7,9,12": "63646915209683/2000000000000000",
      "0,9,12": "-1123316767071239/50000000000000000",
      "0,10,11": "14338923295071/800000000000000",
      "5,8,11": "-5563461368279031/1000000000000000000",
      "5,8,8": "-8525668414625509/1000000000000000000",
      "0,0,11": "-3431813961872633/125000000000000000"
     },
     "upper": "-7582373932649479921/15800000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CB6pmpmpm",
   "cell": "CB",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "BGP+",
    "FGP-",
    "BGO+",
    "EGO-",
    "BFP+",
    "AFP-"
   ],
   "stages": [
    "other_CB_C_6:0",
    "other_CB_C_6:1",
    "other_CB_C_6:2",
    "other_CB_C_6:3",
    "other_CB_C_6:4",
    "other_CB_C_6:5",
    "Ccap_CB6:0",
    "Ccap_CB6p:0",
    "Ccap_CB6p:1",
    "Ccap_CB6pm:0",
    "Ccap_CB6pm:1",
    "Ccap_CB6pmp:0",
    "Ccap_CB6pmp:1",
    "Ccap_CB6pmpm:0",
    "Ccap_CB6pmpm:1",
    "Ccap_CB6pmpm:2",
    "Ccap_CB6pmpm:3",
    "Ccap_CB6pmpmp:0",
    "Ccap_CB6pmpmp:1",
    "Ccap_CB6pmpmpm:0",
    "Ccap_CB6pmpmpm:1",
    "Ccap_CB6pmpmpm:2",
    "Ccap_CB6pmpmpm:3"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 22,
    "sum": {
     "factors": [
      {
       "weight": 1406,
       "atoms": [
        "L0",
        "L2",
        "L9"
       ]
      },
      {
       "weight": 91,
       "atoms": [
        "L0",
        "L16",
        "L23"
       ]
      },
      {
       "weight": 7938,
       "atoms": [
        "L0",
        "L16",
        "overlap_fc"
       ]
      },
      {
       "weight": 569,
       "atoms": [
        "L0",
        "L22",
        "L11"
       ]
      },
      {
       "weight": 189,
       "atoms": [
        "L0",
        "L22",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 84,
       "atoms": [
        "L0",
        "L3",
        "L13"
       ]
      },
      {
       "weight": 1092,
       "atoms": [
        "L0",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 1184,
       "atoms": [
        "L0",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 1213,
       "atoms": [
        "L0",
        "L11",
        "L21"
       ]
      },
      {
       "weight": 699,
       "atoms": [
        "L0",
        "L13",
        "L13"
       ]
      },
      {
       "weight": 382,
       "atoms": [
        "L0",
        "L13",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 1597,
       "atoms": [
        "L0",
        "L25",
        "overlap_fc"
       ]
      },
      {
       "weight": 861,
       "atoms": [
        "L0",
        "AREA_LO_BCF",
        "Gsum"
       ]
      },
      {
       "weight": 293,
       "atoms": [
        "L0",
        "overlap_fc",
        "overlap_fc"
       ]
      },
      {
       "weight": 642,
       "atoms": [
        "L0",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 51,
       "atoms": [
        "L2",
        "L6",
        "L21"
       ]
      },
      {
       "weight": 538,
       "atoms": [
        "L2",
        "L12",
        "L9"
       ]
      },
      {
       "weight": 394,
       "atoms": [
        "L2",
        "L24",
        "overlap_eh"
       ]
      },
      {
       "weight": 996,
       "atoms": [
        "L2",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 2402,
       "atoms": [
        "L2",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 170,
       "atoms": [
        "L2",
        "L5",
        "L21"
       ]
      },
      {
       "weight": 36,
       "atoms": [
        "L2",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 70,
       "atoms": [
        "L2",
        "L9",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1524,
       "atoms": [
        "L2",
        "L17",
        "overlap_eh"
       ]
      },
      {
       "weight": 2716,
       "atoms": [
        "L2",
        "L23",
        "overlap_eh"
       ]
      },
      {
       "weight": 1585,
       "atoms": [
        "L4",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 1100,
       "atoms": [
        "L6",
        "L6",
        "L5"
       ]
      },
      {
       "weight": 1592,
       "atoms": [
        "L6",
        "L12",
        "L25"
       ]
      },
      {
       "weight": 147,
       "atoms": [
        "L6",
        "L12",
        "overlap_bf"
       ]
      },
      {
       "weight": 633,
       "atoms": [
        "L6",
        "L22",
        "L5"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "L6",
        "L22",
        "L9"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "L6",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 116,
       "atoms": [
        "L6",
        "L22",
        "L17"
       ]
      },
      {
       "weight": 305,
       "atoms": [
        "L6",
        "L5",
        "L5"
       ]
      },
      {
       "weight": 1038,
       "atoms": [
        "L6",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 170,
       "atoms": [
        "L6",
        "L5",
        "L19"
       ]
      },
      {
       "weight": 1803,
       "atoms": [
        "L6",
        "L5",
        "L25"
       ]
      },
      {
       "weight": 800,
       "atoms": [
        "L6",
        "L5",
        "overlap_bf"
       ]
      },
      {
       "weight": 322,
       "atoms": [
        "L6",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 2551,
       "atoms": [
        "L10",
        "L16",
        "L5"
       ]
      },
      {
       "weight": 94,
       "atoms": [
        "L10",
        "L16",
        "L11"
       ]
      },
      {
       "weight": 679,
       "atoms": [
        "L12",
        "L16",
        "L9"
       ]
      },
      {
       "weight": 1691,
       "atoms": [
        "L12",
        "L1",
        "L9"
       ]
      },
      {
       "weight": 845,
       "atoms": [
        "L12",
        "L9",
        "L9"
       ]
      },
      {
       "weight": 1436,
       "atoms": [
        "L12",
        "L9",
        "L21"
       ]
      },
      {
       "weight": 5215,
       "atoms": [
        "L12",
        "L9",
        "overlap_eh"
       ]
      },
      {
       "weight": 785,
       "atoms": [
        "L16",
        "L16",
        "L5"
       ]
      },
      {
       "weight": 1436,
       "atoms": [
        "L16",
        "L18",
        "L9"
       ]
      },
      {
       "weight": 6510,
       "atoms": [
        "L16",
        "L22",
        "L11"
       ]
      },
      {
       "weight": 3511,
       "atoms": [
        "L16",
        "L22",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 574,
       "atoms": [
        "L16",
        "L22",
        "overlap_fc"
       ]
      },
      {
       "weight": 1713,
       "atoms": [
        "L16",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 699,
       "atoms": [
        "L16",
        "L5",
        "L13"
       ]
      },
      {
       "weight": 5143,
       "atoms": [
        "L16",
        "L5",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 295,
       "atoms": [
        "L16",
        "L5",
        "overlap_bf"
       ]
      },
      {
       "weight": 5315,
       "atoms": [
        "L16",
        "L5",
        "overlap_eh"
       ]
      },
      {
       "weight": 1034,
       "atoms": [
        "L16",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 1187,
       "atoms": [
        "L16",
        "L23",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 248,
       "atoms": [
        "L16",
        "overlap_bf",
        "overlap_eh"
       ]
      },
      {
       "weight": 118,
       "atoms": [
        "L18",
        "L9",
        "L9"
       ]
      },
      {
       "weight": 2749,
       "atoms": [
        "L18",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 124,
       "atoms": [
        "L20",
        "L1",
        "L5"
       ]
      },
      {
       "weight": 146,
       "atoms": [
        "L20",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 5844,
       "atoms": [
        "L22",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 826,
       "atoms": [
        "L22",
        "L5",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 1101,
       "atoms": [
        "L22",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 450,
       "atoms": [
        "L1",
        "L3",
        "L25"
       ]
      },
      {
       "weight": 2081,
       "atoms": [
        "L1",
        "L5",
        "L5"
       ]
      },
      {
       "weight": 1114,
       "atoms": [
        "L1",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 863,
       "atoms": [
        "L1",
        "L5",
        "overlap_bf"
       ]
      },
      {
       "weight": 192,
       "atoms": [
        "L1",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 1024,
       "atoms": [
        "L1",
        "L25",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 5249,
       "atoms": [
        "L1",
        "L25",
        "overlap_bf"
       ]
      },
      {
       "weight": 1088,
       "atoms": [
        "L3",
        "L9",
        "L9"
       ]
      },
      {
       "weight": 703,
       "atoms": [
        "L5",
        "L5",
        "L25"
       ]
      },
      {
       "weight": 829,
       "atoms": [
        "L5",
        "L9",
        "L13"
       ]
      },
      {
       "weight": 1293,
       "atoms": [
        "L5",
        "L9",
        "overlap_eh"
       ]
      },
      {
       "weight": 660,
       "atoms": [
        "L5",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 192,
       "atoms": [
        "L5",
        "L15",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 2885,
       "atoms": [
        "L5",
        "L15",
        "overlap_eh"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "L5",
        "L19",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 74,
       "atoms": [
        "L5",
        "L21",
        "overlap_eh"
       ]
      },
      {
       "weight": 6000,
       "atoms": [
        "L5",
        "L25",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 2501,
       "atoms": [
        "L5",
        "L25",
        "overlap_eh"
       ]
      },
      {
       "weight": 765,
       "atoms": [
        "L5",
        "L25",
        "Gsum"
       ]
      },
      {
       "weight": 2549,
       "atoms": [
        "L5",
        "AREA_LO_BCF",
        "overlap_eh"
       ]
      },
      {
       "weight": 1185,
       "atoms": [
        "L9",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 2190,
       "atoms": [
        "L9",
        "L9",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 636,
       "atoms": [
        "L9",
        "L11",
        "L13"
       ]
      },
      {
       "weight": 189,
       "atoms": [
        "L9",
        "L11",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 582,
       "atoms": [
        "L9",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 2057,
       "atoms": [
        "L9",
        "L13",
        "L23"
       ]
      },
      {
       "weight": 126,
       "atoms": [
        "L9",
        "L21",
        "overlap_fc"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "L11",
        "L11",
        "L25"
       ]
      },
      {
       "weight": 2679,
       "atoms": [
        "L11",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 98,
       "atoms": [
        "L13",
        "L13",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1113,
       "atoms": [
        "L13",
        "L15",
        "L15"
       ]
      },
      {
       "weight": 5217,
       "atoms": [
        "L13",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 464,
       "atoms": [
        "L13",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 2528,
       "atoms": [
        "L13",
        "L25",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "L15",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 226,
       "atoms": [
        "L25",
        "overlap_bf",
        "overlap_eh"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_ABC",
        "overlap_fc"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_BCD",
        "L5"
       ]
      },
      {
       "weight": 49,
       "atoms": [
        "AREA_LO_BCD",
        "L9"
       ]
      },
      {
       "weight": 3457,
       "atoms": [
        "AREA_LO_CDE",
        "L4"
       ]
      },
      {
       "weight": 897,
       "atoms": [
        "AREA_LO_CDE",
        "L6"
       ]
      },
      {
       "weight": 621,
       "atoms": [
        "AREA_LO_CDE",
        "L8"
       ]
      },
      {
       "weight": 653,
       "atoms": [
        "AREA_LO_CDE",
        "L10"
       ]
      },
      {
       "weight": 4427,
       "atoms": [
        "AREA_LO_CDE",
        "L16"
       ]
      },
      {
       "weight": 328,
       "atoms": [
        "AREA_LO_CDE",
        "L20"
       ]
      },
      {
       "weight": 1459,
       "atoms": [
        "AREA_LO_CDE",
        "L22"
       ]
      },
      {
       "weight": 3782,
       "atoms": [
        "AREA_LO_CDE",
        "L13"
       ]
      },
      {
       "weight": 615,
       "atoms": [
        "AREA_LO_CDE",
        "L15"
       ]
      },
      {
       "weight": 830,
       "atoms": [
        "AREA_LO_CDE",
        "L19"
       ]
      },
      {
       "weight": 6356,
       "atoms": [
        "AREA_LO_CDE",
        "L25"
       ]
      },
      {
       "weight": 677,
       "atoms": [
        "AREA_LO_CDE",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 830,
       "atoms": [
        "AREA_LO_EFH",
        "L18"
       ]
      },
      {
       "weight": 464,
       "atoms": [
        "AREA_LO_EFH",
        "L5"
       ]
      },
      {
       "weight": 3509,
       "atoms": [
        "AREA_LO_EFH",
        "L23"
       ]
      },
      {
       "weight": 447,
       "atoms": [
        "AREA_LO_ABG",
        "overlap_fc"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_BCG",
        "L16"
       ]
      },
      {
       "weight": 1162,
       "atoms": [
        "AREA_LO_BCG",
        "L5"
       ]
      },
      {
       "weight": 1597,
       "atoms": [
        "AREA_LO_BCG",
        "L9"
       ]
      },
      {
       "weight": 1425,
       "atoms": [
        "AREA_LO_BCG",
        "L15"
       ]
      },
      {
       "weight": 156,
       "atoms": [
        "AREA_LO_BCG",
        "L21"
       ]
      },
      {
       "weight": 5783,
       "atoms": [
        "AREA_LO_BCG",
        "L25"
       ]
      },
      {
       "weight": 224,
       "atoms": [
        "AREA_LO_CDG",
        "L0"
       ]
      },
      {
       "weight": 1010,
       "atoms": [
        "AREA_LO_CDG",
        "L14"
       ]
      },
      {
       "weight": 633,
       "atoms": [
        "AREA_LO_CDG",
        "L18"
       ]
      },
      {
       "weight": 4414,
       "atoms": [
        "AREA_LO_CDG",
        "L5"
       ]
      },
      {
       "weight": 328,
       "atoms": [
        "AREA_LO_CDG",
        "L21"
       ]
      },
      {
       "weight": 1708,
       "atoms": [
        "AREA_LO_CDG",
        "L25"
       ]
      },
      {
       "weight": 304,
       "atoms": [
        "AREA_LO_CDG",
        "span_AH_hi"
       ]
      },
      {
       "weight": 203,
       "atoms": [
        "AREA_LO_CDG",
        "span_DE_hi"
       ]
      },
      {
       "weight": 147,
       "atoms": [
        "AREA_LO_CDG",
        "overlap_bf"
       ]
      },
      {
       "weight": 528,
       "atoms": [
        "AREA_LO_CDG",
        "overlap_ae"
       ]
      },
      {
       "weight": 1124,
       "atoms": [
        "AREA_LO_EFG",
        "L0"
       ]
      },
      {
       "weight": 271,
       "atoms": [
        "AREA_LO_CGH",
        "L8"
       ]
      },
      {
       "weight": 168,
       "atoms": [
        "AREA_LO_CGH",
        "L5"
       ]
      },
      {
       "weight": 98,
       "atoms": [
        "AREA_LO_CGH",
        "L13"
       ]
      },
      {
       "weight": 2643,
       "atoms": [
        "AREA_LO_CGH",
        "L15"
       ]
      },
      {
       "weight": 633,
       "atoms": [
        "AREA_LO_CGH",
        "L19"
       ]
      },
      {
       "weight": 219,
       "atoms": [
        "AREA_LO_CGH",
        "L21"
       ]
      },
      {
       "weight": 4318,
       "atoms": [
        "AREA_LO_CGH",
        "L25"
       ]
      },
      {
       "weight": 435,
       "atoms": [
        "AREA_LO_CGH",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 706,
       "atoms": [
        "AREA_LO_CGH",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 464,
       "atoms": [
        "AREA_LO_CGH",
        "overlap_bf"
       ]
      },
      {
       "weight": 264,
       "atoms": [
        "AREA_LO_EFO",
        "L0"
       ]
      },
      {
       "weight": 496,
       "atoms": [
        "AREA_LO_EFO",
        "L25"
       ]
      },
      {
       "weight": 423,
       "atoms": [
        "AREA_LO_CHP",
        "L0"
       ]
      },
      {
       "weight": 145,
       "atoms": [
        "AREA_LO_CHP",
        "L6"
       ]
      },
      {
       "weight": 4152,
       "atoms": [
        "AREA_LO_CHP",
        "L12"
       ]
      },
      {
       "weight": 5725,
       "atoms": [
        "AREA_LO_CHP",
        "L17"
       ]
      },
      {
       "weight": 2716,
       "atoms": [
        "AREA_LO_CHP",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 643,
       "atoms": [
        "AREA_LO_HOP"
       ]
      },
      {
       "weight": 2400,
       "atoms": [
        "AREA_LO_HOP",
        "L9"
       ]
      },
      {
       "weight": 2876,
       "atoms": [
        "AREA_LO_HOP",
        "L11"
       ]
      },
      {
       "weight": 1065,
       "atoms": [
        "AREA_LO_HOP",
        "L13"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "AREA_LO_HOP",
        "L15"
       ]
      },
      {
       "weight": 219,
       "atoms": [
        "AREA_LO_HOP",
        "L17"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "AREA_LO_HOP",
        "span_DE_hi"
       ]
      },
      {
       "weight": 633,
       "atoms": [
        "AREA_LO_HOP",
        "overlap_fc"
       ]
      },
      {
       "weight": 192,
       "atoms": [
        "AREA_LO_HOP",
        "overlap_ae"
       ]
      },
      {
       "weight": 9120,
       "atoms": [
        "AREA_LO_ACG",
        "L10"
       ]
      },
      {
       "weight": 6616,
       "atoms": [
        "AREA_LO_ACG",
        "L24"
       ]
      },
      {
       "weight": 2354,
       "atoms": [
        "AREA_LO_ACG",
        "L9"
       ]
      },
      {
       "weight": 796,
       "atoms": [
        "AREA_LO_ACG",
        "L13"
       ]
      },
      {
       "weight": 10000,
       "atoms": [
        "AREA_LO_ACG",
        "L23"
       ]
      },
      {
       "weight": 1328,
       "atoms": [
        "AREA_LO_ACG",
        "overlap_bf"
       ]
      },
      {
       "weight": 461,
       "atoms": [
        "AREA_LO_ACG",
        "overlap_eh"
       ]
      },
      {
       "weight": 3989,
       "atoms": [
        "AREA_LO_EOP"
       ]
      },
      {
       "weight": 2971,
       "atoms": [
        "AREA_LO_EOP",
        "L10"
       ]
      },
      {
       "weight": 1065,
       "atoms": [
        "AREA_LO_EOP",
        "L12"
       ]
      },
      {
       "weight": 1367,
       "atoms": [
        "AREA_LO_EOP",
        "L14"
       ]
      },
      {
       "weight": 407,
       "atoms": [
        "AREA_LO_EOP",
        "L24"
       ]
      },
      {
       "weight": 173,
       "atoms": [
        "AREA_LO_EOP",
        "L17"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "AREA_LO_EOP",
        "span_DE"
       ]
      },
      {
       "weight": 633,
       "atoms": [
        "AREA_LO_EOP",
        "span_BC_hi"
       ]
      },
      {
       "weight": 1341,
       "atoms": [
        "AREA_LO_EOP",
        "span_AH_hi"
       ]
      },
      {
       "weight": 727,
       "atoms": [
        "AREA_LO_EOP",
        "overlap_bf"
       ]
      },
      {
       "weight": 1272,
       "atoms": [
        "AREA_LO_EOP",
        "overlap_ae"
       ]
      },
      {
       "weight": 94,
       "atoms": [
        "AREA_LO_FOP",
        "L11"
       ]
      },
      {
       "weight": 8805,
       "atoms": [
        "AREA_LO_CGP",
        "L0"
       ]
      },
      {
       "weight": 483,
       "atoms": [
        "AREA_LO_CGP",
        "L2"
       ]
      },
      {
       "weight": 3420,
       "atoms": [
        "AREA_LO_CGP",
        "L4"
       ]
      },
      {
       "weight": 629,
       "atoms": [
        "AREA_LO_CGP",
        "L8"
       ]
      },
      {
       "weight": 6989,
       "atoms": [
        "AREA_LO_CGP",
        "L10"
       ]
      },
      {
       "weight": 1817,
       "atoms": [
        "AREA_LO_CGP",
        "L14"
       ]
      },
      {
       "weight": 38,
       "atoms": [
        "AREA_LO_CGP",
        "L16"
       ]
      },
      {
       "weight": 407,
       "atoms": [
        "AREA_LO_CGP",
        "L21"
       ]
      },
      {
       "weight": 116,
       "atoms": [
        "AREA_LO_CGP",
        "span_DE_hi"
       ]
      },
      {
       "weight": 2039,
       "atoms": [
        "AREA_LO_CGP",
        "overlap_ae"
       ]
      },
      {
       "weight": 2247,
       "atoms": [
        "AREA_LO_EGH",
        "L5"
       ]
      },
      {
       "weight": 432,
       "atoms": [
        "AREA_LO_EGH",
        "L19"
       ]
      },
      {
       "weight": 1990,
       "atoms": [
        "AREA_LO_EGH",
        "overlap_eh"
       ]
      },
      {
       "weight": 2495,
       "atoms": [
        "AREA_LO_GHP",
        "L5"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "AREA_LO_GHP",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 2227,
       "atoms": [
        "AREA_LO_EGP",
        "overlap_eh"
       ]
      },
      {
       "weight": 761,
       "atoms": [
        "AREA_LO_FGP",
        "L9"
       ]
      },
      {
       "weight": 248,
       "atoms": [
        "AREA_LO_FGP",
        "overlap_eh"
       ]
      },
      {
       "weight": 478,
       "atoms": [
        "AREA_LO_BGO",
        "L0"
       ]
      },
      {
       "weight": 3305,
       "atoms": [
        "AREA_LO_BGO",
        "L8"
       ]
      },
      {
       "weight": 94,
       "atoms": [
        "AREA_LO_BGO",
        "L11"
       ]
      },
      {
       "weight": 82,
       "atoms": [
        "AREA_LO_BGO",
        "L17"
       ]
      },
      {
       "weight": 94,
       "atoms": [
        "AREA_LO_BGO",
        "L23"
       ]
      },
      {
       "weight": 9001,
       "atoms": [
        "AREA_LO_BGO",
        "L25"
       ]
      },
      {
       "weight": 51,
       "atoms": [
        "AREA_LO_BGO",
        "span_DE"
       ]
      },
      {
       "weight": 219,
       "atoms": [
        "AREA_LO_BGO",
        "span_AH_hi"
       ]
      },
      {
       "weight": 2174,
       "atoms": [
        "AREA_LO_BGO",
        "overlap_ae"
       ]
      },
      {
       "weight": 82,
       "atoms": [
        "AREA_LO_EGO",
        "L17"
       ]
      },
      {
       "weight": 277,
       "atoms": [
        "AREA_LO_EGO",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 315,
       "atoms": [
        "AREA_LO_BEO"
       ]
      },
      {
       "weight": 170,
       "atoms": [
        "AREA_LO_BEO",
        "L4"
       ]
      },
      {
       "weight": 189,
       "atoms": [
        "AREA_LO_BEO",
        "L10"
       ]
      },
      {
       "weight": 538,
       "atoms": [
        "AREA_LO_BEO",
        "L12"
       ]
      },
      {
       "weight": 3685,
       "atoms": [
        "AREA_LO_BEO",
        "L14"
       ]
      },
      {
       "weight": 7334,
       "atoms": [
        "AREA_LO_BEO",
        "L17"
       ]
      },
      {
       "weight": 89,
       "atoms": [
        "AREA_LO_BEO",
        "L25"
       ]
      },
      {
       "weight": 3189,
       "atoms": [
        "AREA_LO_BEO",
        "span_AH_hi"
       ]
      },
      {
       "weight": 1712,
       "atoms": [
        "AREA_LO_BEO",
        "overlap_ae"
       ]
      },
      {
       "weight": 3570,
       "atoms": [
        "AREA_LO_BFP"
       ]
      },
      {
       "weight": 3028,
       "atoms": [
        "AREA_LO_BFP",
        "L4"
       ]
      },
      {
       "weight": 94,
       "atoms": [
        "AREA_LO_BFP",
        "L18"
       ]
      },
      {
       "weight": 9090,
       "atoms": [
        "AREA_LO_BFP",
        "L20"
       ]
      },
      {
       "weight": 407,
       "atoms": [
        "AREA_LO_BFP",
        "L24"
       ]
      },
      {
       "weight": 6226,
       "atoms": [
        "AREA_LO_BFP",
        "L1"
       ]
      },
      {
       "weight": 432,
       "atoms": [
        "AREA_LO_BFP",
        "L9"
       ]
      },
      {
       "weight": 1006,
       "atoms": [
        "AREA_LO_BFP",
        "L17"
       ]
      },
      {
       "weight": 620,
       "atoms": [
        "AREA_LO_BFP",
        "span_AH"
       ]
      },
      {
       "weight": 171,
       "atoms": [
        "AREA_LO_BFP",
        "overlap_fc"
       ]
      },
      {
       "weight": 3011,
       "atoms": [
        "AREA_LO_BFP",
        "Gsum"
       ]
      },
      {
       "weight": 7171,
       "atoms": [
        "AREA_LO_AFP"
       ]
      },
      {
       "weight": 9431,
       "atoms": [
        "AREA_LO_AFP",
        "L4"
       ]
      },
      {
       "weight": 330,
       "atoms": [
        "AREA_LO_AFP",
        "L14"
       ]
      },
      {
       "weight": 5337,
       "atoms": [
        "AREA_LO_AFP",
        "L16"
       ]
      },
      {
       "weight": 10000,
       "atoms": [
        "AREA_LO_AFP",
        "L13"
       ]
      },
      {
       "weight": 465,
       "atoms": [
        "AREA_LO_AFP",
        "span_BC"
       ]
      },
      {
       "weight": 293,
       "atoms": [
        "AREA_LO_AFP",
        "overlap_fc"
       ]
      },
      {
       "weight": 312,
       "atoms": [
        "AREA_LO_AFP",
        "overlap_eh"
       ]
      },
      {
       "weight": 126,
       "atoms": [
        "AREA_LO_AFO",
        "L9"
       ]
      },
      {
       "weight": 3122,
       "atoms": [
        "AREA_LO_BEG",
        "L22"
       ]
      },
      {
       "weight": 705,
       "atoms": [
        "AREA_LO_BEG",
        "L5"
       ]
      },
      {
       "weight": 951,
       "atoms": [
        "AREA_LO_BEG",
        "L9"
       ]
      },
      {
       "weight": 94,
       "atoms": [
        "AREA_LO_BEG",
        "L19"
       ]
      },
      {
       "weight": 7243,
       "atoms": [
        "AREA_LO_BEG",
        "L21"
       ]
      },
      {
       "weight": 49,
       "atoms": [
        "AREA_LO_BEG",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 566,
       "atoms": [
        "AREA_LO_BEG",
        "overlap_eh"
       ]
      },
      {
       "weight": 276,
       "atoms": [
        "AREA_LO_AEP",
        "overlap_bf"
       ]
      },
      {
       "weight": 1476,
       "atoms": [
        "AREA_LO_FGO",
        "L0"
       ]
      },
      {
       "weight": 94,
       "atoms": [
        "AREA_LO_FGO",
        "L22"
       ]
      },
      {
       "weight": 8594,
       "atoms": [
        "AREA_LO_FGO",
        "L24"
       ]
      },
      {
       "weight": 94,
       "atoms": [
        "AREA_LO_FGO",
        "overlap_bf"
       ]
      },
      {
       "weight": 1211,
       "atoms": [
        "AREA_LO_AOP",
        "L9"
       ]
      },
      {
       "weight": 1770,
       "atoms": [
        "Central_order",
        "L5"
       ]
      },
      {
       "weight": 328,
       "atoms": [
        "QUAD_1131",
        "L16"
       ]
      },
      {
       "weight": 633,
       "atoms": [
        "QUAD_1131",
        "L13"
       ]
      },
      {
       "weight": 277,
       "atoms": [
        "QUAD_1131",
        "L15"
       ]
      },
      {
       "weight": 124,
       "atoms": [
        "LINEAR_1172",
        "L0"
       ]
      },
      {
       "weight": 799,
       "atoms": [
        "LINEAR_1172",
        "L16"
       ]
      },
      {
       "weight": 276,
       "atoms": [
        "LINEAR_1172",
        "L9"
       ]
      },
      {
       "weight": 407,
       "atoms": [
        "LINEAR_1172",
        "L25"
       ]
      },
      {
       "weight": 636,
       "atoms": [
        "QUAD_1256",
        "L10"
       ]
      },
      {
       "weight": 761,
       "atoms": [
        "QUAD_1373",
        "L16"
       ]
      },
      {
       "weight": 407,
       "atoms": [
        "QUAD_1373",
        "L25"
       ]
      }
     ],
     "sum": {
      "0,1": "15327460105477801557/110375000000000000000",
      "0,1,4": "10912050076134873/250000000000000000",
      "0,8": "190313746578423/25000000000000000",
      "0,8,11": "2305218768547383/100000000000000000",
      "0,5,8": "-2742776387591409/100000000000000000",
      "0,11": "-5344025514326247/50000000000000000",
      "0": "27415524068906804829/220750000000000000000",
      "0,6": "-45938164634796123/500000000000000000",
      "0,1,6": "-9035568790698033/250000000000000000",
      "0,4": "-30409396067495661/500000000000000000",
      "0,2": "-1257211688481078309/22075000000000000000",
      "0,5": "-728033679174747/7812500000000000",
      "0,2,4": "-963409291205991/25000000000000000",
      "0,10": "-16409633397103209/250000000000000000",
      "0,5,10": "22099733087676411/250000000000000000",
      "0,6,6": "15781060552492341/500000000000000000",
      "0,12": "3310745895420873/250000000000000000",
      "0,1,8": "-61736436125060697/6250000000000000",
      "0,7": "405775994881449/10000000000000000",
      "0,2,7": "15638017275363/500000000000000",
      "1,3": "-761177670051041/62500000000000000",
      "1,6": "-669032756737767/10000000000000000",
      "1,12": "10400273198281846477/88300000000000000000",
      "1,4,12": "-31666409300224777/500000000000000000",
      "1": "-3605465813163835353031/34878500000000000000000",
      "1,4": "1316399053558098641/39500000000000000000",
      "1,2": "603779830845233/25000000000000000",
      "1,2,4": "-1075648472978093/25000000000000000",
      "1,7": "-168603946147819/5000000000000000",
      "1,2,7": "17459878741249/500000000000000",
      "1,10": "582207883850075691/4937500000000000000",
      "1,11": "-45197277288404383/500000000000000000",
      "1,8": "-37270451557388283/1580000000000000000",
      "1,4,8": "-1888173542585811/100000000000000000",
      "2": "305673897884091353701/3487850000000000000000",
      "2,4": "757119885972681/25000000000000000",
      "2,2": "-166625616768653/2500000000000000",
      "3,3": "1512799043227483/15625000000000000",
      "3,6": "1230186519533940633/9875000000000000000",
      "3,11": "-140487378057631/1250000000000000",
      "3": "-174350759440696353/2468750000000000000",
      "2,3": "-37087000171474813/493750000000000000",
      "2,2,3": "17903622187507/312500000000000",
      "3,7": "-4081744675373/125000000000000",
      "2,3,7": "6942866681261/125000000000000",
      "3,9": "-42280161352429/1250000000000000",
      "3,12": "165730831075043/31250000000000000",
      "3,5": "-8479724605690693/125000000000000000",
      "3,4": "-937513647559337/7812500000000000",
      "5,8": "767648325677493/200000000000000000",
      "2,5,8": "270367457301669/5000000000000000",
      "6,8": "640149779105811/50000000000000000",
      "6": "449410671682371711/79000000000000000000",
      "4,6": "-41827352395565169/200000000000000000",
      "6,10": "-4611410572105457613/19750000000000000000",
      "6,7": "167072127581817/2500000000000000",
      "4,6,7": "-728532576195903/20000000000000000",
      "8,8": "-4281370351713/2000000000000000",
      "8,9": "214261670413636677/3950000000000000000",
      "8,11": "64117346020688571/3950000000000000000",
      "5,8,11": "-8804632903904721/200000000000000000",
      "8": "145690616884433049/3950000000000000000",
      "4,8": "-1393859616041607/40000000000000000",
      "2,8": "-5405909181977577/158000000000000000",
      "2,4,8": "166704140985837/10000000000000000",
      "2,6,8": "138037007075877/10000000000000000",
      "3,8": "1136801074617/62500000000000",
      "2,3,8": "-31427689045389/1250000000000000",
      "1,2,8": "-79034160533601/5000000000000000",
      "7,8": "182387760481329/4000000000000000",
      "2,7,8": "2705934290241/200000000000000",
      "7,8,11": "-88119917705469/4000000000000000",
      "9": "-8721224726048003/493750000000000000",
      "4,9": "-40255140392849083/19750000000000000000",
      "7,9": "-62202705868708457/790000000000000000",
      "10": "-2216321755008623147/9875000000000000000",
      "2,10": "1852421414890879/25000000000000000",
      "7,10": "-60439990366627/1250000000000000",
      "2,7,10": "21802880408939/500000000000000",
      "11": "1028775928380652047979/3487850000000000000000",
      "7,11": "5346074771429/19750000000000000",
      "2,11": "1742759821235027/10000000000000000",
      "4,11": "-4889613267704501507/39500000000000000000",
      "5,11": "-3245811914191653/40000000000000000",
      "": "-2667706994790279464837453/69757000000000000000000",
      "12": "4629413902293494011763/34878500000000000000000",
      "0,1,12": "-13446453149695527/250000000000000000",
      "4": "1938883796454867281/79000000000000000000",
      "5": "3729054201589707837/883000000000000000000",
      "2,5": "-33281828544741/312500000000000",
      "7": "-14339885293751919/316000000000000000",
      "0,9": "-905913725351427/15625000000000000",
      "0,4,9": "15098601984981411/250000000000000000",
      "2,12": "-58645575230254055953/697570000000000000000",
      "5,12": "-61844939176356360401/441500000000000000000",
      "4,4": "-5835422669474943/1000000000000000000",
      "2,2,12": "117024350057069/2500000000000000",
      "2,6": "-543823215815061/25000000000000000",
      "2,4,6": "1878672397772961/50000000000000000",
      "4,7": "13816431961899/200000000000000",
      "2,7": "-33240846261959/1000000000000000",
      "7,7": "-8132468914643/400000000000000",
      "2,7,7": "-597783088609/20000000000000",
      "2,9": "65451967724143/1250000000000000",
      "4,10": "-2073445231774059/100000000000000000",
      "4,12": "29548173374945979/1000000000000000000",
      "7,12": "47672835714387/5000000000000000",
      "6,12": "-696368971300865967/7900000000000000000",
      "8,12": "-598890366873669/20000000000000000",
      "2,2,7": "-1541507717183/50000000000000",
      "4,4,11": "73885419755034469/1000000000000000000",
      "5,6": "4565646882356049/25000000000000000",
      "4,5": "25104093871383401/250000000000000000",
      "1,5": "20939533654371239/500000000000000000",
      "6,11": "-48659173704099/1000000000000000",
      "5,10": "57747879713941831/500000000000000000",
      "5,5": "22668490478454099/500000000000000000",
      "5,7": "86016269150833/1250000000000000",
      "5,9": "-28027290714053917/250000000000000000",
      "6,6": "484231022733771/12500000000000000",
      "6,7,7": "11825508759579/400000000000000",
      "3,10": "4364044063743/62500000000000",
      "2,3,6": "-354174356954817/6250000000000000",
      "1,5,8": "3062315528782107/100000000000000000",
      "0,5,6": "30909719831549877/500000000000000000",
      "1,8,8": "-7352960911796331/10000000000000000",
      "8,10": "-171960903121371/6250000000000000",
      "2,8,10": "-98693259894411/5000000000000000",
      "1,8,10": "1117848669278133/50000000000000000",
      "6,9": "41119948245777219/500000000000000000",
      "3,3,6": "-323821943227576017/15625000000000000",
      "3,4,6": "8461438012998387/125000000000000000",
      "9,12": "5537749257418699919/19750000000000000000",
      "4,9,12": "43815644813001139/500000000000000000",
      "0,7,11": "-509258779990167/10000000000000000",
      "10,11": "-5528456940353980847/19750000000000000000",
      "4,10,11": "-43742122368218707/500000000000000000",
      "5,9,12": "-71061968875330043/500000000000000000",
      "5,10,11": "70942727227624859/500000000000000000",
      "0,9,12": "-18605362218871389/250000000000000000",
      "0,10,11": "18574142509056957/250000000000000000",
      "4,6,9": "29442654386939781/500000000000000000",
      "4,6,12": "55306924690930029/1000000000000000000",
      "2,5,12": "-4534311264975583/50000000000000000",
      "0,6,10": "-11283092436656763/250000000000000000",
      "0,8,9": "1109382259252527/50000000000000000",
      "1,4,10": "15213829134281969/250000000000000000",
      "1,5,10": "-24674397855583753/250000000000000000",
      "1,3,8": "-355965548361267/6250000000000000",
      "1,6,10": "12597596121133449/250000000000000000",
      "5,8,12": "7959446584507041/200000000000000000"
     },
     "upper": "-2343803388512615161292977/69757000000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CB6pmpmm",
   "cell": "CB",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "BGP+",
    "FGP-",
    "BGO+",
    "EGO-",
    "BFP-"
   ],
   "stages": [
    "other_CB_C_6:0",
    "other_CB_C_6:1",
    "other_CB_C_6:2",
    "other_CB_C_6:3",
    "other_CB_C_6:4",
    "other_CB_C_6:5",
    "Ccap_CB6:0",
    "Ccap_CB6p:0",
    "Ccap_CB6p:1",
    "Ccap_CB6pm:0",
    "Ccap_CB6pm:1",
    "Ccap_CB6pmp:0",
    "Ccap_CB6pmp:1",
    "Ccap_CB6pmpm:0",
    "Ccap_CB6pmpm:1",
    "Ccap_CB6pmpm:2",
    "Ccap_CB6pmpm:3",
    "Ccap_CB6pmpmm:0",
    "Ccap_CB6pmpmm:1",
    "Ccap_CB6pmpmm:2",
    "Ccap_CB6pmpmm:3"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 20,
    "sum": {
     "factors": [
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L0",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L0",
        "L2",
        "L1"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L0",
        "L2",
        "L7"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L0",
        "L4",
        "L25"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "L0",
        "L4",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L0",
        "L10",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L0",
        "L16",
        "L5"
       ]
      },
      {
       "weight": 64,
       "atoms": [
        "L0",
        "L16",
        "L11"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L0",
        "L22",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L0",
        "L5",
        "L11"
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
       "weight": 59,
       "atoms": [
        "L0",
        "L13",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "L0",
        "AREA_LO_BCF",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L2",
        "L1"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L2",
        "L2",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L2",
        "L8",
        "L9"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L2",
        "L12",
        "L9"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "L2",
        "L24",
        "L9"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L2",
        "L1",
        "L9"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "L2",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L7",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L2",
        "L15",
        "L21"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L2",
        "L25",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L4",
        "L16",
        "L5"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L4",
        "L16",
        "L11"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L4",
        "L16",
        "L15"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L4",
        "L1",
        "overlap_eh"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L4",
        "L5",
        "overlap_eh"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L6",
        "L6",
        "L5"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L6",
        "L10",
        "L5"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L6",
        "L12",
        "L5"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L6",
        "L12",
        "overlap_eh"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L6",
        "L24",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 44,
       "atoms": [
        "L6",
        "L3",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "L6",
        "L5",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L6",
        "L9",
        "L13"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L6",
        "L23",
        "overlap_eh"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L8",
        "L9",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L8",
        "overlap_bf",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L10",
        "L16",
        "L3"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L10",
        "L22",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L10",
        "L5",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L12",
        "L14",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L12",
        "L14",
        "overlap_eh"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L12",
        "L23",
        "overlap_eh"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "L14",
        "L14",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L14",
        "L18",
        "overlap_eh"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "L14",
        "L24",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L14",
        "L3",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L14",
        "L5",
        "overlap_eh"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "L16",
        "L22",
        "L9"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "L16",
        "L22",
        "overlap_eh"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L16",
        "L1",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "L16",
        "L3",
        "L25"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "L16",
        "L5",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "L16",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L16",
        "L15",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L16",
        "L23",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L18",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L22",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L22",
        "L9",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L22",
        "AREA_HI_ADH",
        "overlap_eh"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L24",
        "L1",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 66,
       "atoms": [
        "L24",
        "L9",
        "L13"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L1",
        "L9",
        "L13"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L1",
        "L9",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "L1",
        "L13",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L3",
        "L17",
        "overlap_eh"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L3",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L3",
        "L21",
        "overlap_eh"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L3",
        "L23",
        "overlap_eh"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L3",
        "L25",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L3",
        "AREA_LO_ADE",
        "overlap_eh"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L3",
        "overlap_bf",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L9",
        "L13"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "L5",
        "L9",
        "L25"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L5",
        "L9",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L5",
        "L13",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L5",
        "L25",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L5",
        "AREA_LO_BCF",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L7",
        "L11",
        "L25"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L9",
        "L11",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L9",
        "L11",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L9",
        "L15",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L9",
        "AREA_HI_BCF",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L11",
        "L25",
        "overlap_eh"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L13",
        "L25",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L15",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "L15",
        "AREA_LO_BCF",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L17",
        "AREA_LO_BCF",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L17",
        "overlap_bf",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L23",
        "AREA_LO_BCF",
        "overlap_eh"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "L25",
        "AREA_HI_BCF",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_BCF",
        "AREA_LO_BCF",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "AREA_LO_BCF",
        "AREA_LO_BCF",
        "QUAD_1102"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BCF",
        "overlap_bf",
        "overlap_eh"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_BEF",
        "L9"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_CDE",
        "L0"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_CDE",
        "L4"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "AREA_LO_CDE",
        "L6"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_CDE",
        "L13"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CDE",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "AREA_LO_CDE",
        "span_BC"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_CDE",
        "span_DE_hi"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CDE",
        "overlap_bf"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_CDE",
        "overlap_ae"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_CFH",
        "L16"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EFH",
        "L2"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EFH",
        "L9"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EFH",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ABG",
        "L4"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_ABG",
        "L15"
       ]
      },
      {
       "weight": 38,
       "atoms": [
        "AREA_LO_ABG",
        "L25"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ABG",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_ABG",
        "overlap_fc"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_ABG",
        "overlap_ae"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_CDG",
        "L24"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_CDG",
        "L1"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_CDG",
        "L3"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_CDG",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_CDG",
        "span_BC_hi"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_CDG",
        "span_AH_hi"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_CDG",
        "span_DE_hi"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_CDG",
        "overlap_ae"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_CHP",
        "L12"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "AREA_LO_CHP",
        "L3"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "AREA_LO_CHP",
        "L17"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CHP",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_CHP",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CHP",
        "span_DE_hi"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CHP",
        "overlap_fc"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_CHP",
        "overlap_ae"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_HOP"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_HOP",
        "L1"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_HOP",
        "L3"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_HOP",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_HOP",
        "overlap_ae"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ACG",
        "L3"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_ACG",
        "L15"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_ACG",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_ACG",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "AREA_LO_ACG",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_ACG",
        "overlap_bf"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ACG",
        "overlap_ae"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_EOP",
        "L0"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "AREA_LO_EOP",
        "L3"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_EOP",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_EOP",
        "span_BC"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_EOP",
        "span_BC_hi"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EOP",
        "overlap_ae"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_CFG",
        "L2"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "AREA_LO_CFG",
        "L25"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_CGP",
        "L0"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_CGP",
        "span_AH"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "AREA_LO_CGP",
        "span_DE"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "AREA_LO_CGP",
        "span_BC"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_CGP",
        "span_AH_hi"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CGP",
        "overlap_ae"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EGH",
        "L14"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_EGH",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_BEP",
        "L12"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "AREA_LO_BEP",
        "L18"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_BEP",
        "L20"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "AREA_LO_BEP",
        "L3"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_BEP",
        "L11"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BEP",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_BEP",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_BOP",
        "L1"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_FGP",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 71,
       "atoms": [
        "AREA_LO_FGP",
        "span_BC"
       ]
      },
      {
       "weight": 71,
       "atoms": [
        "AREA_LO_FGP",
        "span_BC_hi"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_FGP",
        "span_DE_hi"
       ]
      },
      {
       "weight": 51,
       "atoms": [
        "AREA_LO_FGP",
        "overlap_ae"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "AREA_LO_CFP",
        "L16"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_BEO",
        "L0"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_BEO",
        "L8"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "AREA_LO_BEO",
        "L23"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_BEO",
        "L25"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_BEO",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BEO",
        "overlap_ae"
       ]
      },
      {
       "weight": 54,
       "atoms": [
        "AREA_LO_BFP",
        "L17"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "AREA_LO_BFP",
        "span_AH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_BFP",
        "span_BC_hi"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "AREA_LO_BFP",
        "span_AH_hi"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_BFP",
        "span_DE_hi"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "AREA_LO_BFP",
        "overlap_ae"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_BFG",
        "overlap_eh"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "Central_order",
        "L17"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "Central_order",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "Central_order",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "Central_order",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "Central_order",
        "overlap_bf"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "Central_order",
        "QUAD_1102"
       ]
      },
      {
       "weight": 44,
       "atoms": [
        "Central_endpoint_exact"
       ]
      }
     ],
     "sum": {
      "0,0,2": "29400307836867/40000000000000000",
      "0,1": "-235023232143513/100000000000000000",
      "0,2": "-4340747391057/40000000000000000",
      "0,2,12": "-64505103850143/40000000000000000",
      "0,2,2": "703556286807/800000000000000",
      "0,1,2": "-10632401738937/8000000000000000",
      "0,8": "1510623838201083/500000000000000000",
      "0,2,8": "33842896578843/40000000000000000",
      "0,5,8": "-270914829929037/100000000000000000",
      "0,11": "-1124389113344469/62500000000000000",
      "0,4,11": "315709550306163/62500000000000000",
      "0": "-4322205828192339/500000000000000000",
      "0,5": "148412376800289/10000000000000000",
      "0,12": "-5513990908085829/1000000000000000000",
      "0,5,12": "516368012365737/100000000000000000",
      "0,2,6": "-21659267147067/20000000000000000",
      "0,1,6": "109107607544199/100000000000000000",
      "0,1,1": "17853419020863/40000000000000000",
      "1,1": "4618588469147/2000000000000000",
      "1,1,7": "19704388319647/20000000000000000",
      "1,4": "263764690238517/200000000000000000",
      "1,6": "64243327026879/20000000000000000",
      "1,4,6": "260509273540659/100000000000000000",
      "1,12": "-49497681852928989/15800000000000000000",
      "1,4,12": "-775842397139511/200000000000000000",
      "1": "2642699985021359/3160000000000000000",
      "0,1,4": "353615511755259/200000000000000000",
      "1,2": "-12677154199193/4000000000000000",
      "1,2,4": "8462102430639/8000000000000000",
      "1,7": "379914220244341/100000000000000000",
      "1,3": "-6635419729913/6250000000000000",
      "1,3,7": "-51167920935079/12500000000000000",
      "1,10": "573401443340187/100000000000000000",
      "1,7,10": "209529484686907/50000000000000000",
      "1,2,12": "7775929673391/8000000000000000",
      "2,8": "-1559841136923707/632000000000000000",
      "2,2,8": "809868481103/1600000000000000",
      "2": "14122725984921367/3160000000000000000",
      "2,7": "2452492203068721/1580000000000000000",
      "2,4": "203816868944403/20000000000000000",
      "0,2,7": "-32448411234723/10000000000000000",
      "0,2,4": "70197239302047/40000000000000000",
      "2,2": "-773476392843/800000000000000",
      "2,2,7": "-776498118583/800000000000000",
      "3,3": "-4101693951121/195312500000000",
      "2,3,3": "2880965085427/625000000000000",
      "3,5": "-4775905425837/12500000000000000",
      "3,6": "-47998486440035703/4937500000000000000",
      "2,3,6": "6780111198003/2500000000000000",
      "3,6,7": "-312702537800367/31250000000000000",
      "3,4,6": "-676484735031963/62500000000000000",
      "2,3": "-3533457060413423/395000000000000000",
      "3": "15808931627496527/987500000000000000",
      "3,4": "5177192042555871/125000000000000000",
      "2,3,4": "-21974200928823/5000000000000000",
      "3,7": "1890411144453/250000000000000",
      "3,11": "10307427458159/781250000000000",
      "3,4,11": "98828175617067/7812500000000000",
      "4": "2580676859738913/500000000000000000",
      "4,4": "-6436821690368199/500000000000000000",
      "2,4,4": "167605469744427/40000000000000000",
      "4,7": "835418108244057/25000000000000000",
      "4,5": "299831381399277/50000000000000000",
      "1,4,7": "390276918462171/100000000000000000",
      "5,8": "98031878031117387/7900000000000000000",
      "1,5,8": "-32658108262269/20000000000000000",
      "5": "-285760536364579101/7900000000000000000",
      "2,5": "1395660369411/250000000000000",
      "6,7": "-6780730733549289/250000000000000000",
      "6": "-3097995880177475739/39500000000000000000",
      "4,6": "-801220877006121/100000000000000000",
      "2,7,7": "35812529497987/10000000000000000",
      "7,9": "386186547029537/62500000000000000",
      "4,7,9": "3771790183173597/250000000000000000",
      "1,7,12": "358630245377499/100000000000000000",
      "7": "-227004462906898211/39500000000000000000",
      "7,7": "5172192784410991/250000000000000000",
      "2,4,7": "-77475001318143/10000000000000000",
      "8,11": "-67012370578542439/4937500000000000000",
      "4,8,11": "363415434942027/62500000000000000",
      "1,8": "-139592441403529/200000000000000000",
      "8": "-1087074266954939813/79000000000000000000",
      "8,12": "16252642512909/8000000000000000",
      "1,8,12": "-25060850483848953/200000000000000000",
      "4,8": "-333590588802081/200000000000000000",
      "1,7,8": "188156991926599/100000000000000000",
      "2,8,11": "-3642354265187/2500000000000000",
      "1,8,11": "18348199733839/12500000000000000",
      "9": "-58903971134373/7812500000000000",
      "4,9": "53574117586509/2000000000000000",
      "11": "349124381200512559/4937500000000000000",
      "4,11": "-23001051520863/781250000000000",
      "2,11": "-20957681071679/2500000000000000",
      "4,4,11": "-753799551207183/62500000000000000",
      "7,11": "26722285546664761/617187500000000000",
      "4,7,11": "-348441022315347/31250000000000000",
      "2,12": "2621604911629341/790000000000000000",
      "12": "4899674752213493961/79000000000000000000",
      "6,12": "1639644707657487861/39500000000000000000",
      "4,12": "12061762332974523/500000000000000000",
      "4,6,12": "-4741405984160703/500000000000000000",
      "": "-207733611280145802363/79000000000000000000",
      "0,6": "2563728775734357/250000000000000000",
      "0,4": "-5690632462545537/200000000000000000",
      "0,7": "-6831675587827773/500000000000000000",
      "0,6,7": "998937569899863/125000000000000000",
      "7,8": "4004606277942701/250000000000000000",
      "1,4,8": "-407049247899411/200000000000000000",
      "10": "-21423031040037627/250000000000000000",
      "7,10": "-756438603573807/25000000000000000",
      "4,10": "1316953682867823/50000000000000000",
      "1,11": "8439424775579/1562500000000000",
      "1,4,11": "38058000280131/12500000000000000",
      "7,12": "326575462388913/250000000000000000",
      "5,7": "-1223639583459279/50000000000000000",
      "1,5": "-21411196904223/4000000000000000",
      "1,5,7": "-31312441728309/10000000000000000",
      "1,4,5": "67739740760601/20000000000000000",
      "1,1,4": "-127882408679649/40000000000000000",
      "2,6": "-3110070394431/2500000000000000",
      "2,4,6": "-51714450320247/20000000000000000",
      "3,12": "-807513302545053/62500000000000000",
      "5,12": "-122901396523121601/7900000000000000000",
      "5,7,12": "-569902931175753/50000000000000000",
      "3,6,12": "621630117083547/62500000000000000",
      "2,4,8": "-80804525007063/40000000000000000",
      "2,2,12": "-1543622318403/1600000000000000",
      "0,3": "127823212676757/125000000000000000",
      "0,2,3": "-9203328766203/5000000000000000",
      "2,3,7": "10157492166107/2500000000000000",
      "0,1,7": "-163457447308431/100000000000000000",
      "3,8": "208734750631251/31250000000000000",
      "1,3,8": "-160100657363517/25000000000000000",
      "0,3,6": "283328228497743/62500000000000000",
      "0,0": "4342401378294777/1000000000000000000",
      "0,0,6": "-905100464007927/500000000000000000",
      "2,3,8": "-31782045141561/5000000000000000",
      "3,3,6": "-88691684797287/781250000000000",
      "2,6,12": "47521042445943/20000000000000000",
      "9,12": "1822034576916759/250000000000000000",
      "10,11": "-98341448157337/15625000000000000",
      "0,9": "-8703659986696587/500000000000000000",
      "0,10": "12895651782321/500000000000000",
      "0,4,9": "-3417479878420413/500000000000000000",
      "0,8,11": "-2891936913157293/31250000000000000",
      "3,8,11": "-1000570206955683/7812500000000000",
      "1,6,12": "-239385165438771/100000000000000000",
      "0,1,10": "-189846932909403/100000000000000000",
      "3,5,8": "-84805855139733/1562500000000000"
     },
     "upper": "-75426040700286949659/39500000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CB6pmmppp",
   "cell": "CB",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "BGP+",
    "FGP-",
    "BGO-",
    "EGO+",
    "DHP+",
    "ADG+"
   ],
   "stages": [
    "other_CB_C_6:0",
    "other_CB_C_6:1",
    "other_CB_C_6:2",
    "other_CB_C_6:3",
    "other_CB_C_6:4",
    "other_CB_C_6:5",
    "Ccap_CB6:0",
    "Ccap_CB6p:0",
    "Ccap_CB6p:1",
    "Ccap_CB6pm:0",
    "Ccap_CB6pm:1",
    "Ccap_CB6pmm:0",
    "Ccap_CB6pmm:1",
    "Ccap_CB6pmm:2",
    "Ccap_CB6pmm:3",
    "Ccap_CB6pmmp:0",
    "Ccap_CB6pmmp:1",
    "Ccap_CB6pmmp:2",
    "Ccap_CB6pmmp:3",
    "Ccap_CB6pmmpp:0",
    "Ccap_CB6pmmpp:1",
    "Ccap_CB6pmmpp:2",
    "Ccap_CB6pmmpp:3",
    "Ccap_CB6pmmppp:0",
    "Ccap_CB6pmmppp:1",
    "Ccap_CB6pmmppp:2"
   ],
   "terminal": {
    "kind": "scalar",
    "stage": 25,
    "contradiction": {
     "triangle": "ACG",
     "lower": "T1208",
     "upper": "T1184"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CB6pmmppm",
   "cell": "CB",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "BGP+",
    "FGP-",
    "BGO-",
    "EGO+",
    "DHP+",
    "ADG-"
   ],
   "stages": [
    "other_CB_C_6:0",
    "other_CB_C_6:1",
    "other_CB_C_6:2",
    "other_CB_C_6:3",
    "other_CB_C_6:4",
    "other_CB_C_6:5",
    "Ccap_CB6:0",
    "Ccap_CB6p:0",
    "Ccap_CB6p:1",
    "Ccap_CB6pm:0",
    "Ccap_CB6pm:1",
    "Ccap_CB6pmm:0",
    "Ccap_CB6pmm:1",
    "Ccap_CB6pmm:2",
    "Ccap_CB6pmm:3",
    "Ccap_CB6pmmp:0",
    "Ccap_CB6pmmp:1",
    "Ccap_CB6pmmp:2",
    "Ccap_CB6pmmp:3",
    "Ccap_CB6pmmpp:0",
    "Ccap_CB6pmmpp:1",
    "Ccap_CB6pmmpp:2",
    "Ccap_CB6pmmpp:3",
    "Ccap_CB6pmmppm:0",
    "Ccap_CB6pmmppm:1",
    "Ccap_CB6pmmppm:2",
    "Ccap_CB6pmmppm:3"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 26,
    "sum": {
     "factors": [
      {
       "weight": 6,
       "atoms": [
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L0",
        "L12",
        "L21"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L0",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L0",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L2",
        "L2",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L2",
        "L12",
        "L25"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L2",
        "L12",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L2",
        "L1",
        "L9"
       ]
      },
      {
       "weight": 59,
       "atoms": [
        "L2",
        "L3",
        "L9"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L2",
        "L9",
        "L13"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L2",
        "L9",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L4",
        "L22",
        "L7"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L4",
        "L22",
        "L25"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L4",
        "L22",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L4",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L4",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L6",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L10",
        "L15",
        "L15"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L12",
        "L22",
        "L9"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L12",
        "L3",
        "L9"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L12",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L12",
        "L25",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L12",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L14",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L16",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L16",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L18",
        "L3",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L20",
        "L3",
        "Gsum"
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
       "weight": 34,
       "atoms": [
        "L20",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L22",
        "L22",
        "L7"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L22",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "L22",
        "L22",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L22",
        "L1",
        "L9"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L22",
        "L3",
        "L9"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L22",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L22",
        "L7",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L22",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L22",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L24",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L1",
        "L3",
        "Gsum"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "L1",
        "L5",
        "L5"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "L1",
        "L5",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L1",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L1",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "L3",
        "L3",
        "L15"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L3",
        "L15",
        "L17"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L3",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "L3",
        "L15",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L3",
        "L15",
        "span_DE_hi"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L3",
        "L15",
        "Gsum"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L3",
        "L25",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L5",
        "L5",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L5",
        "L9",
        "L17"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L5",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L5",
        "L15",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L5",
        "L15",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L5",
        "L15",
        "span_BC"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L5",
        "L17",
        "L19"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L5",
        "L19",
        "overlap_ae"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L7",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L9",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L9",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 73,
       "atoms": [
        "L9",
        "L19",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "L9",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L13",
        "L15",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L13",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L13",
        "L15",
        "L25"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L13",
        "L15",
        "span_AH_hi"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L15",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L15",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L15",
        "L15",
        "span_BC"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L15",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "L15",
        "L19",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L15",
        "L19",
        "QUAD_1166"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L15",
        "L23",
        "L23"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L19",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "span_BC_hi",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "span_AH_hi",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "overlap_fc",
        "overlap_eh",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_BDH",
        "L15"
       ]
      },
      {
       "weight": 81,
       "atoms": [
        "AREA_LO_CDE",
        "L19"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "AREA_LO_EFH"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_EFH",
        "L4"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_EFH",
        "L12"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_EFH",
        "L22"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_EFH",
        "span_BC_hi"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EFH",
        "span_AH_hi"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_ABG",
        "L2"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ABG",
        "L12"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ABG",
        "L9"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_CGH",
        "L15"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CDO",
        "L1"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "AREA_LO_CDO",
        "L13"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "AREA_LO_CDO",
        "L23"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "AREA_LO_DEO",
        "L4"
       ]
      },
      {
       "weight": 52,
       "atoms": [
        "AREA_LO_DEO",
        "L12"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_DEO",
        "L22"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_DEO",
        "L19"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_DEO",
        "span_BC"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_EFO",
        "L14"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "AREA_LO_EFO",
        "overlap_eh"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "AREA_LO_CEO"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_CEO",
        "L14"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CEO",
        "L16"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CEO",
        "L18"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_CEO",
        "L3"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_CEO",
        "L23"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_CEO",
        "span_BC"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CEO",
        "span_AH_hi"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "AREA_LO_CEO",
        "overlap_eh"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "AREA_LO_CHP"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_CHP",
        "L12"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_CHP",
        "L14"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_CHP",
        "L16"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_CHP",
        "L22"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "AREA_LO_CHP",
        "L19"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_CHP",
        "span_BC"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CHP",
        "span_AH_hi"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_HOP",
        "L4"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_HOP",
        "L12"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_HOP",
        "L16"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_HOP",
        "L22"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_ACG"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_ACG",
        "L4"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ACG",
        "L8"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "AREA_LO_ACG",
        "L19"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ACG",
        "L21"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_ACG",
        "L25"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_CGP",
        "L5"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_CGP",
        "L15"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_CGP",
        "Gsum"
       ]
      },
      {
       "weight": 61,
       "atoms": [
        "AREA_LO_BHO",
        "L3"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "AREA_LO_BHO",
        "L13"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BHO",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BHO",
        "overlap_fc"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_BHO",
        "Gsum"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_BGP"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_BGP",
        "L8"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_BGP",
        "L14"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BGP",
        "L13"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_BGP",
        "L19"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "AREA_LO_BGP",
        "L23"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_BGP",
        "span_BC"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BGP",
        "overlap_ae"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_BGO"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_BGO",
        "L4"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BGO",
        "L8"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "AREA_LO_BGO",
        "L23"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_BGO",
        "span_BC"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_BGO",
        "overlap_ae"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_AOP",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_AOP",
        "Gsum"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_EGO",
        "L2"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_LO_EGO",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_BEG",
        "L24"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "AREA_LO_BEG",
        "L19"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_BEG",
        "L21"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_LO_BEO"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "AREA_LO_BEO",
        "L4"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BEO",
        "L10"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_BEO",
        "L12"
       ]
      },
      {
       "weight": 67,
       "atoms": [
        "AREA_LO_BEO",
        "span_BC_hi"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_BEO",
        "span_AH_hi"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_DHP"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "AREA_LO_DHP",
        "L19"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_DHP",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "AREA_LO_DHP",
        "span_BC"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_DOP"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_DOP",
        "L4"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "AREA_LO_DOP",
        "L12"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "AREA_LO_DOP",
        "L22"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_DOP",
        "L19"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_DOP",
        "span_BC"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_DOP",
        "span_AH_hi"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_DHO",
        "L4"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "AREA_LO_DHO",
        "L12"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_DHO",
        "L22"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "AREA_LO_ADG"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "AREA_LO_ADG",
        "L4"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ADG",
        "L12"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ADG",
        "L14"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_ADG",
        "L19"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ADG",
        "L23"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ADG",
        "span_BC_hi"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "Central_order"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "Central_order",
        "L16"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "Central_order",
        "L24"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "Central_order",
        "L5"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "Central_order",
        "L13"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "Central_order",
        "L19"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "Central_order",
        "L21"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "Central_order",
        "span_DE"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "QUAD_1245",
        "L15"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "LINEAR_1266",
        "L5"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "LINEAR_1266",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "LINEAR_1266",
        "L19"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "LINEAR_1266",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "LINEAR_1266",
        "span_AH_hi"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "LINEAR_1266",
        "Gsum"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "LINEAR_1320",
        "L2"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "LINEAR_1320",
        "L12"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "LINEAR_1320",
        "L22"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "LINEAR_1320",
        "L19"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "QUAD_1363",
        "L15"
       ]
      }
     ],
     "sum": {
      "": "-178159364763762581004403/69757000000000000000000",
      "2": "1351815772151815186923/6975700000000000000000",
      "5": "5725032910640921/500000000000000000",
      "4": "187609152403694145201/8719625000000000000000",
      "2,4": "155065019338792652859/3487850000000000000000",
      "4,5": "-5708490576172461/500000000000000000",
      "7": "-495518447387709924003/8719625000000000000000",
      "2,7": "-60504919557201/2500000000000000",
      "5,7": "59341158859680711/1000000000000000000",
      "0,6": "-99922313409467653/1000000000000000000",
      "0,11": "-51821371497707937/22075000000000000000",
      "0,10,11": "-6919401874376409/100000000000000000",
      "0": "6208125745623997511/35320000000000000000",
      "0,12": "24533279104399/1953125000000000",
      "0,9": "3061194768783645673/441500000000000000000",
      "0,9,12": "28217989985749/976562500000000",
      "1,1": "430081378746971/15625000000000000",
      "1,6": "-83326164905353/15625000000000000",
      "1,4,6": "1601956668389847/62500000000000000",
      "1": "90280916585307736793/8719625000000000000000",
      "1,4": "-55043059473684051/2468750000000000000",
      "0,1": "-12744598622769542361/110375000000000000000",
      "1,2": "-8031290256633/312500000000000",
      "2,11": "-691267235090733/10000000000000000",
      "2,4,11": "-137895541503489/5000000000000000",
      "2,2": "101050419595419/10000000000000000",
      "2,2,7": "203896001588391/10000000000000000",
      "3": "7080698567244805173/79000000000000000000",
      "3,7": "570030081671457/1000000000000000000",
      "2,3": "709653036291969/20000000000000000",
      "2,3,7": "2253279007876743/100000000000000000",
      "5,7,7": "19529282697611913/1000000000000000000",
      "6,11": "3064062447381/50000000000000",
      "6": "-43292313931515821/308593750000000000",
      "4,6": "-5550879846086421/100000000000000000",
      "6,9": "2392676626871583/500000000000000000",
      "6,7": "421133213792248569/19750000000000000000",
      "6,12": "-16203021247579351/77148437500000000",
      "6,7,12": "53584012647513/1953125000000000",
      "2,6": "-234570180016137/6250000000000000",
      "7,7": "-6396340782051099/500000000000000000",
      "2,7,7": "-1057837572169119/100000000000000000",
      "8": "-8312172014490859413/79000000000000000000",
      "8,9": "-1071337709448243/31250000000000000",
      "4,8": "584292356004357/500000000000000000",
      "7,8": "32215610915538903/1000000000000000000",
      "9": "-1803540816306404859741/34878500000000000000000",
      "7,9": "-245353251763899189/13796875000000000000",
      "1,9": "1112489462715361/31250000000000000",
      "10": "-1420809488995494479717/17439250000000000000000",
      "6,10": "11982507065634303/100000000000000000",
      "8,10": "121489048654281/15625000000000000",
      "1,10": "437937879322296417229/4359812500000000000000",
      "5,10": "6441681738182339/500000000000000000",
      "7,10": "1145059696183293/250000000000000000",
      "1,7,10": "-2679252289714737/125000000000000000",
      "2,10": "-1153940411795325071379/6975700000000000000000",
      "11,11": "595247198777901/10000000000000000",
      "3,11,11": "569460393122247/10000000000000000",
      "7,11,11": "267342214435551/10000000000000000",
      "11": "-16617547675868874111/174392500000000000000",
      "4,11": "-918243693438490881/34878500000000000000",
      "1,11": "12675846277767/500000000000000",
      "7,11": "-34729814465292177/987500000000000000",
      "2,7,11": "-233473785635979/10000000000000000",
      "3,11": "-111847910211656487/3950000000000000000",
      "12": "-10720253299795687487/136244140625000000000",
      "7,12": "841531298139/244140625000000",
      "2,12": "-349300369638458679/2724882812500000000",
      "2,7,12": "5115541320477/195312500000000",
      "1,8": "-20553054220758609/125000000000000000",
      "0,8": "-267462224921961/12500000000000000",
      "0,1,8": "7632661259388969/125000000000000000",
      "0,2": "6068029027882689/100000000000000000",
      "2,9": "-334063126058949/10000000000000000",
      "4,9": "-120175675113352089/9875000000000000000",
      "0,4": "7999033469636979/500000000000000000",
      "0,7": "-55163948245641/50000000000000000",
      "1,7": "551526184789358920263/8719625000000000000000",
      "1,2,7": "-258937547003793/12500000000000000",
      "4,7": "1409172110092593/500000000000000000",
      "1,3": "-1174414603406847/31250000000000000",
      "1,3,7": "-2861549684493489/125000000000000000",
      "1,4,7": "793446059719467/62500000000000000",
      "1,12": "414196485490446867/2128814697265625000",
      "1,7,12": "-6496477178571/244140625000000",
      "2,8": "349348557792610341/7900000000000000000",
      "2,8,9": "778915184730039/50000000000000000",
      "2,4,9": "-231922795998663/25000000000000000",
      "3,6": "2723127264055187/125000000000000000",
      "4,7,11": "-715419055305801/50000000000000000",
      "1,4,9": "294530149793649/31250000000000000",
      "6,7,9": "4113154040001417/500000000000000000",
      "3,9": "271218759336794489/19750000000000000000",
      "2,3,9": "836425609009221/50000000000000000",
      "0,1,1": "-6593123916101387/15625000000000000",
      "2,7,8": "2098349471565837/100000000000000000",
      "0,10": "-6626139099397059/125000000000000000",
      "2,6,10": "-4259519857433379/100000000000000000",
      "10,11": "10394750677566301629/871962500000000000000",
      "2,10,11": "465635868738579/10000000000000000",
      "9,11": "944010327523971/50000000000000000",
      "1,3,9": "-1062217962886883/62500000000000000",
      "1,2,10": "516420330957993/12500000000000000",
      "8,12": "-80799642491067/976562500000000",
      "2,8,12": "-10147298327271/195312500000000",
      "8,11": "215870583155814927/1975000000000000000",
      "7,8,11": "-2402742530001753/100000000000000000",
      "11,12": "13203192367227/195312500000000",
      "9,12": "501794118977236013/34061035156250000000",
      "9,11,12": "2174369579211/97656250000000",
      "10,11,11": "-533182446714951/10000000000000000",
      "1,8,11": "-4117004266233537/12500000000000000",
      "1,2,8": "-513634114743939/12500000000000000",
      "0,8,11": "-20646209937416121/50000000000000000",
      "7,9,12": "-9851769141471/976562500000000",
      "7,10,11": "2415776244085611/100000000000000000"
     },
     "upper": "-13360855685490785524683/69757000000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CB6pmmpm",
   "cell": "CB",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "BGP+",
    "FGP-",
    "BGO-",
    "EGO+",
    "DHP-"
   ],
   "stages": [
    "other_CB_C_6:0",
    "other_CB_C_6:1",
    "other_CB_C_6:2",
    "other_CB_C_6:3",
    "other_CB_C_6:4",
    "other_CB_C_6:5",
    "Ccap_CB6:0",
    "Ccap_CB6p:0",
    "Ccap_CB6p:1",
    "Ccap_CB6pm:0",
    "Ccap_CB6pm:1",
    "Ccap_CB6pmm:0",
    "Ccap_CB6pmm:1",
    "Ccap_CB6pmm:2",
    "Ccap_CB6pmm:3",
    "Ccap_CB6pmmp:0",
    "Ccap_CB6pmmp:1",
    "Ccap_CB6pmmp:2",
    "Ccap_CB6pmmp:3",
    "Ccap_CB6pmmpm:0",
    "Ccap_CB6pmmpm:1",
    "Ccap_CB6pmmpm:2"
   ],
   "terminal": {
    "kind": "scalar",
    "stage": 21,
    "contradiction": {
     "triangle": "BCE",
     "lower": "T1751",
     "upper": "U_BCE"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CB6pmmm",
   "cell": "CB",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "BGP+",
    "FGP-",
    "BGO-",
    "EGO-"
   ],
   "stages": [
    "other_CB_C_6:0",
    "other_CB_C_6:1",
    "other_CB_C_6:2",
    "other_CB_C_6:3",
    "other_CB_C_6:4",
    "other_CB_C_6:5",
    "Ccap_CB6:0",
    "Ccap_CB6p:0",
    "Ccap_CB6p:1",
    "Ccap_CB6pm:0",
    "Ccap_CB6pm:1",
    "Ccap_CB6pmm:0",
    "Ccap_CB6pmm:1",
    "Ccap_CB6pmm:2",
    "Ccap_CB6pmm:3"
   ],
   "terminal": {
    "kind": "geometry",
    "stage": 14,
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
      "EOP": -1,
      "FOP": -1,
      "AGO": 1,
      "AGP": 1,
      "DGP": -1,
      "ACO": 1,
      "ACP": 1,
      "CEG": 1,
      "CFG": 1,
      "CGO": -1,
      "CGP": -1,
      "EHO": 1,
      "DFG": 1,
      "DGH": -1,
      "EGH": -1,
      "BHO": -1,
      "BHP": -1,
      "GHO": -1,
      "GHP": -1,
      "ADO": 1,
      "ADP": 1,
      "BEP": 1,
      "DFP": 1,
      "BDP": 1,
      "BDO": 1,
      "BOP": 1,
      "EGP": -1,
      "GOP": 1,
      "BGP": 1,
      "FGP": -1,
      "CFP": 1,
      "BGO": -1,
      "BDG": 1,
      "AOP": 1,
      "EGO": -1,
      "BEG": 1,
      "BEO": 1
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
        "ECHOP"
       ],
       "target": "EHO",
       "sign": 1,
       "deps": [
        "CEH",
        "EOP",
        "CEO",
        "EHP",
        "CEP"
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
       "target": "BEP",
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
        "DEF",
        "OP",
        "FDE",
        [
         "fixed",
         "DEF"
        ]
       ],
       "target": "DFP",
       "sign": 1,
       "deps": [
        "DEO",
        "EFO",
        "DEP",
        "EFP",
        "FOP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "BADEP"
       ],
       "target": "BDP",
       "sign": 1,
       "deps": [
        "ABD",
        "BEP",
        "ABE",
        "ABP",
        "BDE"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "DABCO"
       ],
       "target": "BDO",
       "sign": 1,
       "deps": [
        "ABD",
        "CDO",
        "ACD",
        "ADO",
        "BCD"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "PBCEO"
       ],
       "target": "BOP",
       "sign": 1,
       "deps": [
        "BCP",
        "EOP",
        "BEP",
        "COP",
        "CEP"
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
       "target": "EGP",
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
        "PCEGO"
       ],
       "target": "GOP",
       "sign": 1,
       "deps": [
        "CEP",
        "CGP",
        "EOP",
        "COP",
        "EGP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "FCDGP"
       ],
       "target": "CFP",
       "sign": 1,
       "deps": [
        "CDF",
        "FGP",
        "CFG",
        "DFP",
        "DFG"
       ],
       "area_stage": null
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
         "342192475913/500000000000"
        ]
       ],
       "target": "AOP",
       "sign": 1,
       "deps": [
        "ABP",
        "BOP"
       ],
       "area_stage": 11
      },
      {
       "rule": [
        "plu",
        "GBCEO"
       ],
       "target": "BEG",
       "sign": 1,
       "deps": [
        "BCG",
        "EGO",
        "CGO",
        "BGO",
        "CEG"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "OBCEG"
       ],
       "target": "BEO",
       "sign": 1,
       "deps": [
        "BCO",
        "EGO",
        "CGO",
        "BGO",
        "CEO"
       ],
       "area_stage": null
      }
     ],
     "contradiction": {
      "kind": "nomesh",
      "outer": "BEH",
      "points": "GOP"
     },
     "mesh_table": [
      {
       "order": "GOP",
       "opposite": "BPO"
      },
      {
       "order": "GPO",
       "opposite": "EGO"
      },
      {
       "order": "OGP",
       "opposite": "BPG"
      },
      {
       "order": "OPG",
       "opposite": "BGO"
      },
      {
       "order": "PGO",
       "opposite": "BPG"
      },
      {
       "order": "POG",
       "opposite": "BGO"
      }
     ]
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CB6mppp",
   "cell": "CB",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "BGP-",
    "FGP+",
    "EGO+",
    "ADG+"
   ],
   "stages": [
    "other_CB_C_6:0",
    "other_CB_C_6:1",
    "other_CB_C_6:2",
    "other_CB_C_6:3",
    "other_CB_C_6:4",
    "other_CB_C_6:5",
    "Ccap_CB6:0",
    "Ccap_CB6m:0",
    "Ccap_CB6m:1",
    "Ccap_CB6m:2",
    "Ccap_CB6m:3",
    "Ccap_CB6mp:0",
    "Ccap_CB6mp:1",
    "Ccap_CB6mp:2",
    "Ccap_CB6mpp:0",
    "Ccap_CB6mpp:1",
    "Ccap_CB6mpp:2",
    "Ccap_CB6mpp:3",
    "Ccap_CB6mppp:0",
    "Ccap_CB6mppp:1",
    "Ccap_CB6mppp:2",
    "Ccap_CB6mppp:3"
   ],
   "terminal": {
    "kind": "scalar",
    "stage": 21,
    "contradiction": {
     "triangle": "ADO",
     "lower": "T2968",
     "upper": "T3117"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CB6mppm",
   "cell": "CB",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "BGP-",
    "FGP+",
    "EGO+",
    "ADG-"
   ],
   "stages": [
    "other_CB_C_6:0",
    "other_CB_C_6:1",
    "other_CB_C_6:2",
    "other_CB_C_6:3",
    "other_CB_C_6:4",
    "other_CB_C_6:5",
    "Ccap_CB6:0",
    "Ccap_CB6m:0",
    "Ccap_CB6m:1",
    "Ccap_CB6m:2",
    "Ccap_CB6m:3",
    "Ccap_CB6mp:0",
    "Ccap_CB6mp:1",
    "Ccap_CB6mp:2",
    "Ccap_CB6mpp:0",
    "Ccap_CB6mpp:1",
    "Ccap_CB6mpp:2",
    "Ccap_CB6mpp:3",
    "Ccap_CB6mppm:0",
    "Ccap_CB6mppm:1",
    "Ccap_CB6mppm:2",
    "Ccap_CB6mppm:3"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 21,
    "sum": {
     "factors": [
      {
       "weight": 1,
       "atoms": [
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L0",
        "L12",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L0",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L2",
        "L12",
        "L21"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L2",
        "L16",
        "L9"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L2",
        "L16",
        "L23"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "L2",
        "L20",
        "L9"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L2",
        "L9",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 66,
       "atoms": [
        "L4",
        "L12",
        "L7"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L4",
        "L12",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L4",
        "L18",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L4",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L4",
        "L9",
        "L9"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L4",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L4",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L4",
        "L9",
        "L19"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L4",
        "L9",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L4",
        "L15",
        "L21"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L4",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L6",
        "L6",
        "L19"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L6",
        "L1",
        "L19"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L6",
        "L5",
        "L19"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L6",
        "L5",
        "Gsum"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L6",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L6",
        "L19",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L6",
        "overlap_bf",
        "Gsum"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L8",
        "L20",
        "overlap_bf"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L8",
        "L22",
        "overlap_bf"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L8",
        "L1",
        "overlap_bf"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "L8",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L10",
        "L15",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L12",
        "L14",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "L12",
        "L18",
        "L7"
       ]
      },
      {
       "weight": 53,
       "atoms": [
        "L12",
        "L18",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L12",
        "L22",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "L12",
        "L1",
        "L5"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "L12",
        "L3",
        "L9"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L12",
        "L3",
        "overlap_eh"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L12",
        "L5",
        "L25"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L12",
        "L7",
        "span_BC"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L12",
        "L7",
        "overlap_bf"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L12",
        "L7",
        "overlap_eh"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L12",
        "L9",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L12",
        "L15",
        "overlap_eh"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L12",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L12",
        "L23",
        "overlap_eh"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L12",
        "L25",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L12",
        "AREA_LO_ADE",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L12",
        "span_BC",
        "overlap_eh"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L14",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L16",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L16",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "L18",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "L18",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L18",
        "L17",
        "overlap_bf"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "L18",
        "AREA_LO_ADE",
        "AREA_LO_ADE"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L20",
        "L22",
        "overlap_bf"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L20",
        "L1",
        "L19"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L20",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L20",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L20",
        "L17",
        "overlap_bf"
       ]
      },
      {
       "weight": 36,
       "atoms": [
        "L22",
        "L1",
        "L5"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L22",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L22",
        "L17",
        "overlap_bf"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L24",
        "L1",
        "L19"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L24",
        "L1",
        "overlap_bf"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L24",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L24",
        "L19",
        "overlap_bf"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L1",
        "L1",
        "L5"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "L1",
        "L5",
        "L19"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L1",
        "L19",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L1",
        "L19",
        "AREA_HI_BCF"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L1",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L3",
        "L9",
        "L21"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L5",
        "L5",
        "L25"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "L5",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L5",
        "L15",
        "L25"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L5",
        "L15",
        "Gsum"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "L5",
        "L17",
        "L19"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "L5",
        "L19",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L9",
        "L11",
        "overlap_fc"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "L9",
        "L15",
        "L19"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L9",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L9",
        "L19",
        "L23"
       ]
      },
      {
       "weight": 51,
       "atoms": [
        "L9",
        "L19",
        "span_BC"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L9",
        "L23",
        "overlap_fc"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L9",
        "span_BC_hi",
        "overlap_fc"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L9",
        "span_AH_hi",
        "overlap_fc"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L9",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L13",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L13",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L15",
        "L19",
        "L21"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L15",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L15",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L15",
        "L23",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L15",
        "L25",
        "overlap_bf"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L15",
        "overlap_bf",
        "overlap_fc"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "L15",
        "overlap_bf",
        "overlap_ae"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L19",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L19",
        "L23",
        "overlap_eh"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L19",
        "AREA_HI_ADE",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L23",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "overlap_bf",
        "overlap_ae",
        "Gsum"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_CDE",
        "L1"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "AREA_LO_EFH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EFH",
        "L4"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_EFH",
        "L8"
       ]
      },
      {
       "weight": 40,
       "atoms": [
        "AREA_LO_EFH",
        "L18"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_EFH",
        "L20"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EFH",
        "L24"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_EFH",
        "L17"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_EFH",
        "L23"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EFH",
        "span_BC_hi"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EFH",
        "span_AH_hi"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EFH",
        "overlap_fc"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EFH",
        "Gsum"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_ABG",
        "L23"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "AREA_LO_DEO"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_DEO",
        "L8"
       ]
      },
      {
       "weight": 100,
       "atoms": [
        "AREA_LO_DEO",
        "L12"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_DEO",
        "L5"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_DEO",
        "L17"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_DEO",
        "overlap_ae"
       ]
      },
      {
       "weight": 23,
       "atoms": [
        "AREA_LO_CEO"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_CEO",
        "L14"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CEO",
        "L16"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CEO",
        "L20"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_CEO",
        "L13"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_CEO",
        "L19"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_CEO",
        "L25"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_CEO",
        "span_BC_hi"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_CEO",
        "span_AH_hi"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "AREA_LO_CEO",
        "overlap_eh"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ABP",
        "L12"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_ABP",
        "L21"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_HOP"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_HOP",
        "L8"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_HOP",
        "L5"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_HOP",
        "L11"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_HOP",
        "L13"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_HOP",
        "span_BC_hi"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_HOP",
        "span_AH_hi"
       ]
      },
      {
       "weight": 59,
       "atoms": [
        "AREA_LO_ACG"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ACG",
        "L4"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ACG",
        "L8"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_ACG",
        "L14"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_ACG",
        "L19"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "AREA_LO_ACG",
        "L23"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ACG",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ACG",
        "overlap_ae"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_BGH",
        "L2"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "AREA_LO_BGH",
        "L18"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BGH",
        "overlap_eh"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_BGH",
        "QUAD_1012"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_EOP",
        "L0"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_EOP",
        "L14"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_EOP",
        "L20"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "AREA_LO_EOP",
        "L5"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_AGP",
        "L12"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_BHO"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "AREA_LO_BHO",
        "L8"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_BHO",
        "L24"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_BHO",
        "L3"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_BHO",
        "L13"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BHO",
        "L15"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_BHO",
        "L23"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BHO",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_BHO",
        "overlap_ae"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_BHO",
        "Gsum"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_EGP",
        "L19"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_EGP",
        "overlap_bf"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_GOP",
        "L3"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_GOP",
        "overlap_bf"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "AREA_LO_BGP"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_BGP",
        "L14"
       ]
      },
      {
       "weight": 27,
       "atoms": [
        "AREA_LO_BGP",
        "L18"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_BGP",
        "L11"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_BGP",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_BGP",
        "overlap_ae"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_BGO",
        "L2"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "AREA_LO_BGO",
        "L23"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_AOP"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_AOP",
        "L8"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_AOP",
        "L12"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_AOP",
        "L20"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_AOP",
        "L3"
       ]
      },
      {
       "weight": 42,
       "atoms": [
        "AREA_LO_AOP",
        "L5"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_FGP"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_FGP",
        "L3"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_FGP",
        "L19"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_FGP",
        "AREA_LO_AEH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_FGP",
        "overlap_ae"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_EGO"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_EGO",
        "L4"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "AREA_LO_EGO",
        "L8"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_EGO",
        "L15"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_EGO",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 41,
       "atoms": [
        "AREA_LO_EGO",
        "span_BC_hi"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_EGO",
        "overlap_fc"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_AEO",
        "L2"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_ADG"
       ]
      },
      {
       "weight": 49,
       "atoms": [
        "AREA_LO_ADG",
        "L4"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "AREA_LO_ADG",
        "L8"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_ADG",
        "L10"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_ADG",
        "L14"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "AREA_LO_ADG",
        "L22"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_ADG",
        "L13"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_ADG",
        "L19"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_ADG",
        "AREA_LO_BCF"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_ADG",
        "AREA_LO_DEH"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_ADG",
        "overlap_ae"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "Central_order",
        "L22"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "Central_order",
        "L1"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "Central_order",
        "L19"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "Central_order",
        "L21"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "Central_order",
        "L25"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "Central_order",
        "QUAD_1012"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "QUAD_901",
        "L9"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "LINEAR_987",
        "L20"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "LINEAR_987",
        "L5"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "LINEAR_987",
        "L9"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "LINEAR_987",
        "L19"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "LINEAR_987",
        "span_AH_hi"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "QUAD_1245"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "QUAD_1245",
        "L18"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "QUAD_1245",
        "L20"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "QUAD_1245",
        "L22"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "QUAD_1245",
        "span_AH_hi"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "QUAD_1245",
        "span_DE_hi"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "QUAD_1245",
        "overlap_eh"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "QUAD_1257",
        "L4"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "QUAD_1257",
        "L12"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "QUAD_1257",
        "L15"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "QUAD_1257",
        "span_BC"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "QUAD_1257",
        "overlap_bf"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "QUAD_1275",
        "L9"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "QUAD_1275",
        "overlap_eh"
       ]
      }
     ],
     "sum": {
      "": "-133435574571827123066551/34878500000000000000000",
      "2": "-55399269576747219837/3487850000000000000000",
      "5": "-76990303423648889617/871962500000000000000",
      "4": "-203215166569118802197/6975700000000000000000",
      "2,4": "-45005113320869541/1580000000000000000",
      "4,5": "-9372972877346388877/139514000000000000000",
      "1": "-66941897894547771/2207500000000000000",
      "5,7": "34184926011862118577/435981250000000000000",
      "1,7": "-276470843619951999/2207500000000000000",
      "0,6": "596270382370597/3906250000000000",
      "0": "133511824311518433/2468750000000000000",
      "0,7": "-279267484308813/3906250000000000",
      "0,4": "-81836496969469/3125000000000000",
      "0,2": "17486559538184121/123437500000000000",
      "0,5": "932974515383148161/5518750000000000000",
      "1,6": "228272784950991/5000000000000000",
      "1,6,10": "-29144925135843/400000000000000",
      "1,8": "-4424425185864429/20000000000000000",
      "1,4,8": "-296412942463551/8000000000000000",
      "1,10": "14609673763315521/176600000000000000",
      "1,4,10": "3156462392127/80000000000000",
      "0,1": "-111208261872336453/551875000000000000",
      "1,4": "113810046268577781/3532000000000000000",
      "0,1,4": "-24743666931423/500000000000000",
      "2,6": "-159929176740333/12500000000000000",
      "2,4,6": "-542146732832859/20000000000000000",
      "2,9": "70447020829857/5000000000000000",
      "2,4,9": "9835172139723/1000000000000000",
      "2,11": "2354896476495759/50000000000000000",
      "2,5": "202143876417/5000000000000",
      "2,7": "-76998343785034329/2759375000000000000",
      "2,10": "-3176193896822793/79000000000000000",
      "1,2": "-57606783633/2000000000000",
      "3,3": "5057557118757/976562500000000",
      "3": "316438977782064081703/4359812500000000000000",
      "3,9": "-85867885652901/12500000000000000",
      "0,3": "20384218173/1250000000000",
      "2,3": "331434288861090261/4415000000000000000",
      "3,6": "386394876191099281/19750000000000000000",
      "3,8": "7238023883239941/125000000000000000",
      "3,5": "-95338443932420381/5518750000000000000",
      "3,4": "-315633590965737/6250000000000000",
      "3,5,6": "5100297134157533/50000000000000000",
      "1,3": "-9531823331140803/441500000000000000",
      "4,5,10": "-11076118183823/200000000000000",
      "4,5,11": "890608638450307/20000000000000000",
      "6,7": "-845068020429070383/9875000000000000000",
      "4,6,7": "-371652516313287/25000000000000000",
      "6,9": "-161626465964623/3125000000000000",
      "3,6,9": "555335726812823/25000000000000000",
      "6,11": "663595234101107/100000000000000000",
      "6": "-3848029824719986301/79000000000000000000",
      "0,2,6": "-426351694677447/312500000000000",
      "4,6": "-21359917921631179/200000000000000000",
      "1,6,7": "162936140595129/5000000000000000",
      "6,12": "-2478120305862201/250000000000000000",
      "2,6,12": "1362026742737661/25000000000000000",
      "5,6": "-206233426835821/50000000000000000",
      "3,4,6": "3315340726786451/50000000000000000",
      "6,7,9": "-62253607480251/6250000000000000",
      "1,6,12": "-729867502748241/10000000000000000",
      "3,3,6": "-16586755681278673/250000000000000000",
      "7": "389794029072552091821/4359812500000000000000",
      "4,7": "1458569024163099/25000000000000000",
      "8": "1330903182409195311/39500000000000000000",
      "5,8": "527833277756505987/7900000000000000000",
      "4,8": "-1093517926439577/20000000000000000",
      "4,5,8": "1040121621638799/20000000000000000",
      "5,7,8": "583346118236049/12500000000000000",
      "9": "240440672836849747323/3487850000000000000000",
      "5,9": "5937061061631/2500000000000000",
      "4,9": "26513372635863317/790000000000000000",
      "1,9": "-19708336951059/400000000000000",
      "5,7,9": "10372167166137/625000000000000",
      "1,7,9": "-2955851051913/250000000000000",
      "1,8,9": "-148951836693369/500000000000000",
      "10": "-1505330975273400671/17439250000000000000",
      "9,10": "460350747967/125000000000000",
      "0,10": "26636442146589/312500000000000",
      "5,10": "74506131469077/500000000000000",
      "4,10": "1454096759269/40000000000000",
      "11": "18535270151814780047/79000000000000000000",
      "0,11": "-1033166899846807/31250000000000000",
      "5,11": "-1744505950345151/20000000000000000",
      "1,11": "483772580106189/5000000000000000",
      "5,7,11": "-499492637494557/6250000000000000",
      "1,7,11": "142344971336493/5000000000000000",
      "12": "538107348685988757/4937500000000000000",
      "9,12": "11373468574355589/987500000000000000",
      "0,12": "-185950285149057/3906250000000000",
      "5,12": "-5177030863901169/25000000000000000",
      "1,12": "435585080853/2441406250000",
      "2,12": "-140888963058851007/1975000000000000000",
      "4,5,12": "-277375861536501/5000000000000000",
      "0,0": "35094981378699/244140625000000",
      "0,9": "-53095143282313/1562500000000000",
      "0,4,9": "-9453903370637/625000000000000",
      "7,9": "9836098460358317391/435981250000000000000",
      "2,2": "-147065760691227/5000000000000000",
      "7,11": "47575589668182783/987500000000000000",
      "2,7,11": "265634045802153/12500000000000000",
      "7,12": "-10470579062463/976562500000000",
      "7,8": "-913675632437007/62500000000000000",
      "2,8": "31058456353463637/7900000000000000000",
      "8,9": "-1077785371285479/50000000000000000",
      "5,5": "-380107066773/10000000000000",
      "4,7,9": "6742208802039/625000000000000",
      "4,11": "572178889851081/200000000000000000",
      "4,7,11": "-324684668413779/25000000000000000",
      "9,11": "-217013024433/50000000000000",
      "1,4,9": "-5270360928663/400000000000000",
      "1,5": "-26739369814773/800000000000000",
      "1,4,5": "48403885150173/800000000000000",
      "4,4": "440196196180357/20000000000000000",
      "7,10": "-51489605803647/625000000000000",
      "7,7": "75945434123943/7812500000000000",
      "0,5,6": "-801702702797843/6250000000000000",
      "0,5,8": "-817966039819467/6250000000000000",
      "0,1,6": "228468529231107/2500000000000000",
      "0,1,8": "233103240673083/2500000000000000",
      "8,11": "-81275309493806589/1000000000000000000",
      "0,6,11": "-4203713092781213/62500000000000000",
      "6,10": "-237432198443231/10000000000000000",
      "2,6,10": "54388183198503/1000000000000000",
      "10,11": "-58487082077984417/790000000000000000",
      "2,8,11": "-4461961300442163/100000000000000000",
      "1,1": "177971627597409/1600000000000000",
      "1,1,7": "7736338215027/200000000000000",
      "3,7": "-362256100827489/15625000000000000",
      "0,4,11": "455271791669057/12500000000000000",
      "1,1,10": "-1383824345409/16000000000000",
      "7,8,9": "-63516483850419/6250000000000000",
      "1,4,12": "79046328406149/2000000000000000",
      "6,7,10": "37284196176579/1250000000000000",
      "3,11": "749163737174919/25000000000000000"
     },
     "upper": "-4975276905885376630533/69757000000000000000000"
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CB6mpm",
   "cell": "CB",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "BGP-",
    "FGP+",
    "EGO-"
   ],
   "stages": [
    "other_CB_C_6:0",
    "other_CB_C_6:1",
    "other_CB_C_6:2",
    "other_CB_C_6:3",
    "other_CB_C_6:4",
    "other_CB_C_6:5",
    "Ccap_CB6:0",
    "Ccap_CB6m:0",
    "Ccap_CB6m:1",
    "Ccap_CB6m:2",
    "Ccap_CB6m:3",
    "Ccap_CB6mp:0",
    "Ccap_CB6mp:1",
    "Ccap_CB6mp:2"
   ],
   "terminal": {
    "kind": "geometry",
    "stage": 13,
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
      "EOP": -1,
      "FOP": -1,
      "AGO": 1,
      "AGP": 1,
      "DGP": -1,
      "ACO": 1,
      "ACP": 1,
      "CEG": 1,
      "CFG": 1,
      "CGO": -1,
      "CGP": -1,
      "EHO": 1,
      "DFG": 1,
      "DGH": -1,
      "EGH": -1,
      "BHO": -1,
      "BHP": -1,
      "GHO": -1,
      "GHP": -1,
      "ADO": 1,
      "ADP": 1,
      "BEP": 1,
      "DFP": 1,
      "BDP": 1,
      "BDO": 1,
      "BOP": 1,
      "EGP": -1,
      "GOP": 1,
      "BGP": -1,
      "BDG": 1,
      "BEG": 1,
      "BGO": -1,
      "AOP": 1,
      "FGP": 1,
      "FGO": 1,
      "AFG": -1,
      "AFO": -1,
      "AFP": -1,
      "EGO": -1,
      "BEO": 1
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
        "ECHOP"
       ],
       "target": "EHO",
       "sign": 1,
       "deps": [
        "CEH",
        "EOP",
        "CEO",
        "EHP",
        "CEP"
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
       "target": "BEP",
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
        "DEF",
        "OP",
        "FDE",
        [
         "fixed",
         "DEF"
        ]
       ],
       "target": "DFP",
       "sign": 1,
       "deps": [
        "DEO",
        "EFO",
        "DEP",
        "EFP",
        "FOP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "BADEP"
       ],
       "target": "BDP",
       "sign": 1,
       "deps": [
        "ABD",
        "BEP",
        "ABE",
        "ABP",
        "BDE"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "DABCO"
       ],
       "target": "BDO",
       "sign": 1,
       "deps": [
        "ABD",
        "CDO",
        "ACD",
        "ADO",
        "BCD"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "PBCEO"
       ],
       "target": "BOP",
       "sign": 1,
       "deps": [
        "BCP",
        "EOP",
        "BEP",
        "COP",
        "CEP"
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
       "target": "EGP",
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
        "PCEGO"
       ],
       "target": "GOP",
       "sign": 1,
       "deps": [
        "CEP",
        "CGP",
        "EOP",
        "COP",
        "EGP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "BADGP"
       ],
       "target": "BDG",
       "sign": 1,
       "deps": [
        "ABD",
        "BGP",
        "ABG",
        "BDP",
        "ABP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "BAEGP"
       ],
       "target": "BEG",
       "sign": 1,
       "deps": [
        "ABE",
        "BGP",
        "ABG",
        "BEP",
        "ABP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "BAGOP"
       ],
       "target": "BGO",
       "sign": -1,
       "deps": [
        "ABG",
        "BOP",
        "ABO",
        "BGP",
        "ABP"
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
         "9777705796771/14171875000000"
        ]
       ],
       "target": "AOP",
       "sign": 1,
       "deps": [
        "ABP",
        "BOP"
       ],
       "area_stage": 7
      },
      {
       "rule": [
        "plu",
        "FEGOP"
       ],
       "target": "FGO",
       "sign": 1,
       "deps": [
        "EFG",
        "FOP",
        "EFO",
        "FGP",
        "EFP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "GACFO"
       ],
       "target": "AFG",
       "sign": -1,
       "deps": [
        "ACG",
        "FGO",
        "CGO",
        "AGO",
        "CFG"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "OAFGH"
       ],
       "target": "AFO",
       "sign": -1,
       "deps": [
        "GHO",
        "AGO",
        "FHO",
        "AHO",
        "FGO"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "PADFG"
       ],
       "target": "AFP",
       "sign": -1,
       "deps": [
        "ADP",
        "FGP",
        "DGP",
        "AGP",
        "DFP"
       ],
       "area_stage": null
      },
      {
       "rule": [
        "plu",
        "EBCGO"
       ],
       "target": "BEO",
       "sign": 1,
       "deps": [
        "BCE",
        "EGO",
        "BEG",
        "CEO",
        "CEG"
       ],
       "area_stage": null
      }
     ],
     "contradiction": {
      "kind": "nomesh",
      "outer": "BEH",
      "points": "GOP"
     },
     "mesh_table": [
      {
       "order": "GOP",
       "opposite": "BPO"
      },
      {
       "order": "GPO",
       "opposite": "EGO"
      },
      {
       "order": "OGP",
       "opposite": "EOP"
      },
      {
       "order": "OPG",
       "opposite": "BGP"
      },
      {
       "order": "PGO",
       "opposite": "EGO"
      },
      {
       "order": "POG",
       "opposite": "BGO"
      }
     ]
    }
   },
   "word": "C"
  },
  {
   "id": "Ccap_CB6mm",
   "cell": "CB",
   "given": [
    "AGO+",
    "AGP+",
    "DGP-",
    "BGP-",
    "FGP-"
   ],
   "stages": [
    "other_CB_C_6:0",
    "other_CB_C_6:1",
    "other_CB_C_6:2",
    "other_CB_C_6:3",
    "other_CB_C_6:4",
    "other_CB_C_6:5",
    "Ccap_CB6:0",
    "Ccap_CB6m:0",
    "Ccap_CB6m:1",
    "Ccap_CB6m:2",
    "Ccap_CB6m:3",
    "Ccap_CB6mm:0",
    "Ccap_CB6mm:1",
    "Ccap_CB6mm:2",
    "Ccap_CB6mm:3"
   ],
   "terminal": {
    "kind": "polynomial",
    "stage": 14,
    "sum": {
     "factors": [
      {
       "weight": 35,
       "atoms": [
        "L18",
        "L15"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "L3",
        "L15"
       ]
      },
      {
       "weight": 55,
       "atoms": [
        "L5",
        "L15"
       ]
      },
      {
       "weight": 87,
       "atoms": [
        "L0",
        "L4",
        "L21"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "L0",
        "L10",
        "L25"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L0",
        "L14",
        "overlap_fc"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "L0",
        "span_BC_hi",
        "overlap_fc"
       ]
      },
      {
       "weight": 38,
       "atoms": [
        "L0",
        "overlap_fc",
        "Gsum"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L2",
        "L4",
        "L25"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "L2",
        "L10",
        "L25"
       ]
      },
      {
       "weight": 37,
       "atoms": [
        "L2",
        "L16",
        "L21"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "L2",
        "L16",
        "overlap_fc"
       ]
      },
      {
       "weight": 312,
       "atoms": [
        "L2",
        "L18",
        "L9"
       ]
      },
      {
       "weight": 98,
       "atoms": [
        "L2",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "L2",
        "L7",
        "overlap_fc"
       ]
      },
      {
       "weight": 168,
       "atoms": [
        "L2",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "L2",
        "L9",
        "L21"
       ]
      },
      {
       "weight": 144,
       "atoms": [
        "L2",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 138,
       "atoms": [
        "L2",
        "L21",
        "L25"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L4",
        "L12",
        "L21"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "L4",
        "L16",
        "overlap_fc"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L4",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 309,
       "atoms": [
        "L6",
        "L6",
        "L19"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "L6",
        "L10",
        "L21"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L6",
        "L10",
        "L25"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "L6",
        "L7",
        "overlap_fc"
       ]
      },
      {
       "weight": 137,
       "atoms": [
        "L6",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L8",
        "L20",
        "overlap_fc"
       ]
      },
      {
       "weight": 94,
       "atoms": [
        "L8",
        "L7",
        "overlap_fc"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "L8",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 892,
       "atoms": [
        "L10",
        "L10",
        "L21"
       ]
      },
      {
       "weight": 49,
       "atoms": [
        "L10",
        "L12",
        "L21"
       ]
      },
      {
       "weight": 404,
       "atoms": [
        "L10",
        "L16",
        "L25"
       ]
      },
      {
       "weight": 51,
       "atoms": [
        "L10",
        "L16",
        "overlap_fc"
       ]
      },
      {
       "weight": 211,
       "atoms": [
        "L10",
        "L18",
        "L21"
       ]
      },
      {
       "weight": 457,
       "atoms": [
        "L10",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 52,
       "atoms": [
        "L10",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 639,
       "atoms": [
        "L10",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 60,
       "atoms": [
        "L10",
        "L15",
        "L17"
       ]
      },
      {
       "weight": 55,
       "atoms": [
        "L10",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 98,
       "atoms": [
        "L12",
        "L18",
        "L9"
       ]
      },
      {
       "weight": 364,
       "atoms": [
        "L12",
        "L24",
        "L21"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L12",
        "L7",
        "overlap_fc"
       ]
      },
      {
       "weight": 94,
       "atoms": [
        "L12",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 246,
       "atoms": [
        "L14",
        "L20",
        "overlap_fc"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L14",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 148,
       "atoms": [
        "L14",
        "L24",
        "overlap_fc"
       ]
      },
      {
       "weight": 182,
       "atoms": [
        "L14",
        "L9",
        "overlap_fc"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L16",
        "L18",
        "L9"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "L16",
        "L18",
        "L15"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "L16",
        "L18",
        "overlap_fc"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L16",
        "L1",
        "L11"
       ]
      },
      {
       "weight": 4,
       "atoms": [
        "L16",
        "L5",
        "L9"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L16",
        "L5",
        "L23"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "L16",
        "L11",
        "L15"
       ]
      },
      {
       "weight": 105,
       "atoms": [
        "L16",
        "L19",
        "L25"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L16",
        "overlap_fc",
        "overlap_ae"
       ]
      },
      {
       "weight": 211,
       "atoms": [
        "L18",
        "L18",
        "L9"
       ]
      },
      {
       "weight": 82,
       "atoms": [
        "L18",
        "L20",
        "L15"
       ]
      },
      {
       "weight": 351,
       "atoms": [
        "L18",
        "L24",
        "L15"
       ]
      },
      {
       "weight": 39,
       "atoms": [
        "L18",
        "L1",
        "L25"
       ]
      },
      {
       "weight": 103,
       "atoms": [
        "L18",
        "L9",
        "L9"
       ]
      },
      {
       "weight": 193,
       "atoms": [
        "L18",
        "L9",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 127,
       "atoms": [
        "L18",
        "L11",
        "L15"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "L18",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L18",
        "L15",
        "span_BC"
       ]
      },
      {
       "weight": 36,
       "atoms": [
        "L18",
        "L15",
        "span_AH_hi"
       ]
      },
      {
       "weight": 85,
       "atoms": [
        "L18",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 56,
       "atoms": [
        "L18",
        "L15",
        "overlap_ae"
       ]
      },
      {
       "weight": 82,
       "atoms": [
        "L18",
        "L21",
        "L25"
       ]
      },
      {
       "weight": 112,
       "atoms": [
        "L18",
        "L23",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L18",
        "L25",
        "QUAD_907"
       ]
      },
      {
       "weight": 213,
       "atoms": [
        "L20",
        "L20",
        "L11"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "L20",
        "L22",
        "L15"
       ]
      },
      {
       "weight": 82,
       "atoms": [
        "L20",
        "L22",
        "L21"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "L20",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 201,
       "atoms": [
        "L20",
        "L11",
        "L11"
       ]
      },
      {
       "weight": 52,
       "atoms": [
        "L20",
        "L11",
        "overlap_fc"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "L20",
        "L19",
        "overlap_fc"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L20",
        "L23",
        "overlap_fc"
       ]
      },
      {
       "weight": 196,
       "atoms": [
        "L22",
        "L1",
        "L21"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L22",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 136,
       "atoms": [
        "L22",
        "L9",
        "L11"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "L22",
        "L9",
        "L21"
       ]
      },
      {
       "weight": 234,
       "atoms": [
        "L22",
        "L11",
        "L15"
       ]
      },
      {
       "weight": 140,
       "atoms": [
        "L24",
        "L3",
        "L15"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L24",
        "L5",
        "L11"
       ]
      },
      {
       "weight": 204,
       "atoms": [
        "L24",
        "L5",
        "L15"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L24",
        "L5",
        "L19"
       ]
      },
      {
       "weight": 80,
       "atoms": [
        "L24",
        "L11",
        "L11"
       ]
      },
      {
       "weight": 560,
       "atoms": [
        "L24",
        "L11",
        "L19"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L24",
        "overlap_fc",
        "overlap_eh"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "L1",
        "L5",
        "L11"
       ]
      },
      {
       "weight": 66,
       "atoms": [
        "L1",
        "L5",
        "L19"
       ]
      },
      {
       "weight": 47,
       "atoms": [
        "L1",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L1",
        "L19",
        "Gsum"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L3",
        "L9",
        "L25"
       ]
      },
      {
       "weight": 121,
       "atoms": [
        "L3",
        "L11",
        "L15"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L3",
        "L15",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L5",
        "L9",
        "L15"
       ]
      },
      {
       "weight": 42,
       "atoms": [
        "L5",
        "L9",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "L5",
        "L11",
        "L17"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "L5",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 24,
       "atoms": [
        "L5",
        "L15",
        "span_BC_hi"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L5",
        "L17",
        "overlap_fc"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "L5",
        "span_AH_hi",
        "overlap_fc"
       ]
      },
      {
       "weight": 14,
       "atoms": [
        "L7",
        "L19",
        "overlap_fc"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "L9",
        "L9",
        "L23"
       ]
      },
      {
       "weight": 794,
       "atoms": [
        "L9",
        "L11",
        "L19"
       ]
      },
      {
       "weight": 271,
       "atoms": [
        "L9",
        "L11",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "L9",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "L9",
        "L15",
        "overlap_bf"
       ]
      },
      {
       "weight": 213,
       "atoms": [
        "L9",
        "L19",
        "L21"
       ]
      },
      {
       "weight": 156,
       "atoms": [
        "L9",
        "L21",
        "overlap_fc"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "L11",
        "L11",
        "L17"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "L11",
        "L11",
        "Gsum"
       ]
      },
      {
       "weight": 104,
       "atoms": [
        "L11",
        "L13",
        "L15"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "L11",
        "L15",
        "span_BC"
       ]
      },
      {
       "weight": 31,
       "atoms": [
        "L11",
        "L15",
        "overlap_ae"
       ]
      },
      {
       "weight": 65,
       "atoms": [
        "L11",
        "L19",
        "Gsum"
       ]
      },
      {
       "weight": 48,
       "atoms": [
        "L13",
        "L15",
        "L23"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "L13",
        "L15",
        "span_AH_hi"
       ]
      },
      {
       "weight": 32,
       "atoms": [
        "L15",
        "L17",
        "overlap_bf"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "L15",
        "L19",
        "overlap_eh"
       ]
      },
      {
       "weight": 13,
       "atoms": [
        "L15",
        "L19",
        "Gsum"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "L15",
        "L23",
        "overlap_bf"
       ]
      },
      {
       "weight": 40,
       "atoms": [
        "L15",
        "L23",
        "Gsum"
       ]
      },
      {
       "weight": 61,
       "atoms": [
        "L15",
        "overlap_bf",
        "Gsum"
       ]
      },
      {
       "weight": 88,
       "atoms": [
        "L19",
        "L21",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 154,
       "atoms": [
        "AREA_LO_CDE",
        "L20"
       ]
      },
      {
       "weight": 33,
       "atoms": [
        "AREA_LO_CDE",
        "L9"
       ]
      },
      {
       "weight": 34,
       "atoms": [
        "AREA_LO_CDE",
        "AREA_HI_ADE"
       ]
      },
      {
       "weight": 290,
       "atoms": [
        "AREA_LO_DEF",
        "L20"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_EFH",
        "L18"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "AREA_LO_EFH",
        "L5"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "AREA_LO_ABG",
        "L25"
       ]
      },
      {
       "weight": 155,
       "atoms": [
        "AREA_HI_ABG",
        "L15"
       ]
      },
      {
       "weight": 156,
       "atoms": [
        "AREA_LO_DEO",
        "L6"
       ]
      },
      {
       "weight": 35,
       "atoms": [
        "AREA_LO_DEO",
        "overlap_fc"
       ]
      },
      {
       "weight": 334,
       "atoms": [
        "AREA_LO_EFO"
       ]
      },
      {
       "weight": 223,
       "atoms": [
        "AREA_LO_EFO",
        "L4"
       ]
      },
      {
       "weight": 639,
       "atoms": [
        "AREA_LO_EFO",
        "L10"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_EFO",
        "L16"
       ]
      },
      {
       "weight": 191,
       "atoms": [
        "AREA_LO_EFO",
        "L18"
       ]
      },
      {
       "weight": 301,
       "atoms": [
        "AREA_LO_EFO",
        "L20"
       ]
      },
      {
       "weight": 497,
       "atoms": [
        "AREA_LO_EFO",
        "L7"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EFO",
        "L23"
       ]
      },
      {
       "weight": 168,
       "atoms": [
        "AREA_LO_EFO",
        "span_BC_hi"
       ]
      },
      {
       "weight": 246,
       "atoms": [
        "AREA_LO_EFO",
        "overlap_eh"
       ]
      },
      {
       "weight": 154,
       "atoms": [
        "AREA_LO_CEO",
        "L6"
       ]
      },
      {
       "weight": 20,
       "atoms": [
        "AREA_LO_CEO",
        "L19"
       ]
      },
      {
       "weight": 204,
       "atoms": [
        "AREA_HI_CEO",
        "L15"
       ]
      },
      {
       "weight": 143,
       "atoms": [
        "AREA_LO_ABP",
        "L12"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_ABP",
        "L19"
       ]
      },
      {
       "weight": 194,
       "atoms": [
        "AREA_LO_ABP",
        "L21"
       ]
      },
      {
       "weight": 12,
       "atoms": [
        "AREA_HI_ABP",
        "L15"
       ]
      },
      {
       "weight": 387,
       "atoms": [
        "AREA_LO_BCP",
        "L15"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_EFP",
        "L15"
       ]
      },
      {
       "weight": 6,
       "atoms": [
        "AREA_LO_AHP",
        "L15"
       ]
      },
      {
       "weight": 106,
       "atoms": [
        "AREA_LO_HOP"
       ]
      },
      {
       "weight": 112,
       "atoms": [
        "AREA_LO_HOP",
        "L4"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_HOP",
        "L8"
       ]
      },
      {
       "weight": 121,
       "atoms": [
        "AREA_LO_HOP",
        "L10"
       ]
      },
      {
       "weight": 410,
       "atoms": [
        "AREA_LO_HOP",
        "L16"
       ]
      },
      {
       "weight": 82,
       "atoms": [
        "AREA_LO_HOP",
        "L20"
       ]
      },
      {
       "weight": 230,
       "atoms": [
        "AREA_LO_HOP",
        "L13"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_HOP",
        "L23"
       ]
      },
      {
       "weight": 88,
       "atoms": [
        "AREA_LO_HOP",
        "span_BC_hi"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_HOP",
        "overlap_ae"
       ]
      },
      {
       "weight": 176,
       "atoms": [
        "AREA_LO_EHP",
        "L10"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EHP",
        "L22"
       ]
      },
      {
       "weight": 21,
       "atoms": [
        "AREA_LO_ACG",
        "L5"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_ACG",
        "L23"
       ]
      },
      {
       "weight": 78,
       "atoms": [
        "AREA_LO_BGH"
       ]
      },
      {
       "weight": 2,
       "atoms": [
        "AREA_LO_BGH",
        "L4"
       ]
      },
      {
       "weight": 45,
       "atoms": [
        "AREA_LO_BGH",
        "L10"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_BGH",
        "L14"
       ]
      },
      {
       "weight": 188,
       "atoms": [
        "AREA_LO_BGH",
        "L18"
       ]
      },
      {
       "weight": 51,
       "atoms": [
        "AREA_LO_BGH",
        "L22"
       ]
      },
      {
       "weight": 950,
       "atoms": [
        "AREA_LO_BGH",
        "L24"
       ]
      },
      {
       "weight": 181,
       "atoms": [
        "AREA_LO_BGH",
        "L21"
       ]
      },
      {
       "weight": 36,
       "atoms": [
        "AREA_LO_BGH",
        "AREA_LO_ADH"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_BGH",
        "overlap_ae"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_DGO",
        "overlap_fc"
       ]
      },
      {
       "weight": 144,
       "atoms": [
        "AREA_LO_EOP",
        "L2"
       ]
      },
      {
       "weight": 318,
       "atoms": [
        "AREA_LO_EOP",
        "L10"
       ]
      },
      {
       "weight": 98,
       "atoms": [
        "AREA_LO_EOP",
        "L12"
       ]
      },
      {
       "weight": 7,
       "atoms": [
        "AREA_LO_EOP",
        "L22"
       ]
      },
      {
       "weight": 8,
       "atoms": [
        "AREA_LO_EOP",
        "L9"
       ]
      },
      {
       "weight": 50,
       "atoms": [
        "AREA_LO_AGO"
       ]
      },
      {
       "weight": 151,
       "atoms": [
        "AREA_LO_AGO",
        "L14"
       ]
      },
      {
       "weight": 132,
       "atoms": [
        "AREA_LO_AGO",
        "L22"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "AREA_LO_AGO",
        "L25"
       ]
      },
      {
       "weight": 17,
       "atoms": [
        "AREA_LO_AGO",
        "span_BC"
       ]
      },
      {
       "weight": 38,
       "atoms": [
        "AREA_LO_AGO",
        "overlap_bf"
       ]
      },
      {
       "weight": 9,
       "atoms": [
        "AREA_LO_AGP",
        "L19"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "AREA_LO_CGO",
        "L15"
       ]
      },
      {
       "weight": 42,
       "atoms": [
        "AREA_LO_EHO",
        "L9"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "AREA_HI_EHO",
        "L15"
       ]
      },
      {
       "weight": 56,
       "atoms": [
        "AREA_LO_BHO",
        "L12"
       ]
      },
      {
       "weight": 470,
       "atoms": [
        "AREA_LO_BHO",
        "L24"
       ]
      },
      {
       "weight": 194,
       "atoms": [
        "AREA_LO_BHO",
        "L1"
       ]
      },
      {
       "weight": 29,
       "atoms": [
        "AREA_LO_BHO",
        "L9"
       ]
      },
      {
       "weight": 168,
       "atoms": [
        "AREA_LO_BHO",
        "L11"
       ]
      },
      {
       "weight": 196,
       "atoms": [
        "AREA_LO_BHO",
        "L17"
       ]
      },
      {
       "weight": 134,
       "atoms": [
        "AREA_LO_BHO",
        "L23"
       ]
      },
      {
       "weight": 308,
       "atoms": [
        "AREA_LO_BHP",
        "L17"
       ]
      },
      {
       "weight": 193,
       "atoms": [
        "AREA_LO_BHP",
        "Gsum"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "AREA_LO_ADO",
        "overlap_fc"
       ]
      },
      {
       "weight": 119,
       "atoms": [
        "AREA_LO_BOP",
        "L15"
       ]
      },
      {
       "weight": 536,
       "atoms": [
        "AREA_LO_BGP"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_BGP",
        "L4"
       ]
      },
      {
       "weight": 80,
       "atoms": [
        "AREA_LO_BGP",
        "L10"
       ]
      },
      {
       "weight": 751,
       "atoms": [
        "AREA_LO_BGP",
        "L14"
       ]
      },
      {
       "weight": 243,
       "atoms": [
        "AREA_LO_BGP",
        "L18"
       ]
      },
      {
       "weight": 414,
       "atoms": [
        "AREA_LO_BGP",
        "L21"
       ]
      },
      {
       "weight": 36,
       "atoms": [
        "AREA_LO_BGP",
        "span_AH"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_BGP",
        "overlap_ae"
       ]
      },
      {
       "weight": 270,
       "atoms": [
        "AREA_LO_FGP"
       ]
      },
      {
       "weight": 199,
       "atoms": [
        "AREA_LO_FGP",
        "L14"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_FGP",
        "L20"
       ]
      },
      {
       "weight": 51,
       "atoms": [
        "AREA_LO_FGP",
        "L3"
       ]
      },
      {
       "weight": 18,
       "atoms": [
        "AREA_LO_FGP",
        "L5"
       ]
      },
      {
       "weight": 80,
       "atoms": [
        "AREA_LO_FGP",
        "L11"
       ]
      },
      {
       "weight": 120,
       "atoms": [
        "AREA_LO_FGP",
        "L19"
       ]
      },
      {
       "weight": 46,
       "atoms": [
        "AREA_LO_FGP",
        "span_AH_hi"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "AREA_LO_FGP",
        "overlap_eh"
       ]
      },
      {
       "weight": 404,
       "atoms": [
        "AREA_LO_BFP",
        "L16"
       ]
      },
      {
       "weight": 153,
       "atoms": [
        "AREA_LO_DFO",
        "L6"
       ]
      },
      {
       "weight": 1000,
       "atoms": [
        "AREA_LO_DFO",
        "L8"
       ]
      },
      {
       "weight": 88,
       "atoms": [
        "AREA_LO_DFO",
        "L21"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "AREA_LO_DFO",
        "L25"
       ]
      },
      {
       "weight": 26,
       "atoms": [
        "Central_order"
       ]
      },
      {
       "weight": 15,
       "atoms": [
        "Central_order",
        "L10"
       ]
      },
      {
       "weight": 30,
       "atoms": [
        "Central_order",
        "L14"
       ]
      },
      {
       "weight": 11,
       "atoms": [
        "Central_order",
        "L22"
       ]
      },
      {
       "weight": 22,
       "atoms": [
        "Central_order",
        "L5"
       ]
      },
      {
       "weight": 57,
       "atoms": [
        "Central_order",
        "L13"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "Central_order",
        "L19"
       ]
      },
      {
       "weight": 62,
       "atoms": [
        "Central_order",
        "L21"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "Central_order",
        "L25"
       ]
      },
      {
       "weight": 16,
       "atoms": [
        "Central_order",
        "span_AH"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "Central_order",
        "overlap_ae"
       ]
      },
      {
       "weight": 19,
       "atoms": [
        "Central_order",
        "Gsum"
       ]
      },
      {
       "weight": 28,
       "atoms": [
        "QUAD_783",
        "overlap_fc"
       ]
      },
      {
       "weight": 5,
       "atoms": [
        "LINEAR_887",
        "L15"
       ]
      },
      {
       "weight": 10,
       "atoms": [
        "LINEAR_888",
        "L9"
       ]
      },
      {
       "weight": 3,
       "atoms": [
        "LINEAR_888",
        "L11"
       ]
      },
      {
       "weight": 25,
       "atoms": [
        "LINEAR_888",
        "AREA_HI_ADH"
       ]
      },
      {
       "weight": 1,
       "atoms": [
        "QUAD_1023",
        "L9"
       ]
      }
     ],
     "sum": {
      "9": "-70160906258206105189/871962500000000000000",
      "7,9": "58206293193681836473/8719625000000000000000",
      "": "-13046299469480296677811223/506156792000000000000000",
      "7": "158263209112016680785927/1977174968750000000000000",
      "1": "63321054117349098297/800881000000000000000",
      "1,7": "-3038759195007259119/100110125000000000000",
      "2": "-269057646881722424943/8719625000000000000000",
      "2,7": "3068506339929819/125000000000000000",
      "0,2": "-18357560972496879183/220750000000000000000",
      "0,5": "10144598321193845643/220750000000000000000",
      "0,2,5": "2405959452309249/125000000000000000",
      "1,2": "564452715484899/56687500000000000",
      "1,5": "-3016789546855239/453500000000000000",
      "1,5,12": "-14797509042836097/453500000000000000",
      "1,8": "1435735976244903/28343750000000000",
      "1,9": "-6788515258999557/453500000000000000",
      "1,11": "2122626832724661/28343750000000000",
      "1,4": "26107020827981231/453500000000000000",
      "1,10": "-3058680167262031/907000000000000000",
      "1,12": "70476485805739714437/800881000000000000000",
      "2,6": "-4375885272099633/500000000000000000",
      "2,6,10": "-16367789790347931/500000000000000000",
      "2,2": "-25194899109941451/9875000000000000000",
      "3,3": "-2150962680933737/125000000000000000",
      "3,5": "1369708558826481/50000000000000000",
      "3,5,10": "8656496304556347/250000000000000000",
      "2,3": "-1413975298179573/31250000000000000",
      "3,3,5": "-565066049322709683/125000000000000000",
      "3": "-5547888026003511/500000000000000000",
      "3,4": "6774507152999549/250000000000000000",
      "3,4,5": "-3706323740377407/125000000000000000",
      "2,4,10": "-6756678371072097/250000000000000000",
      "2,4": "189092588482449/50000000000000000",
      "4,5": "-3952611510440319/125000000000000000",
      "5,5": "-1094096264064817797/220750000000000000000",
      "5,6": "-251540085632301/12500000000000000",
      "5,8": "-220904649912438872001/4478312500000000000000",
      "5,9": "4420754790331262499/441500000000000000000",
      "5,11": "-333977045520249/31250000000000000",
      "5,10,11": "-800315181035487/31250000000000000",
      "5": "154055023435664348873733/7908699875000000000000000",
      "2,5": "14676147273062907/19750000000000000000",
      "5,7": "-4313299701664210468329/200220250000000000000000",
      "5,7,8": "1070217995339133/62500000000000000",
      "5,7,11": "204517143784953/15625000000000000",
      "6,9": "30595381643988369/500000000000000000",
      "6,12": "-10238765960253638964627/71653000000000000000000",
      "6,10,12": "-64332272194019037/1000000000000000000",
      "6": "10379976548416482188067/71653000000000000000000",
      "6,11": "566986434677019/7812500000000000",
      "4,6": "-5089727907438441/125000000000000000",
      "4,6,11": "-1541938654784769/7812500000000000",
      "2,7,10": "-4032744491781603/250000000000000000",
      "7,11": "-193849099852038459/27593750000000000000",
      "8,9": "10340869084981227/250000000000000000",
      "7,8,9": "1799858944809099/125000000000000000",
      "2,8,9": "1623390370305849/125000000000000000",
      "5,8,9": "-1623390370305849/125000000000000000",
      "8": "6448044440392227044667/17913250000000000000000",
      "0,8": "-9861162568869987/125000000000000000",
      "4,8": "-11491703118911871/125000000000000000",
      "2,8": "253481034431691/31250000000000000",
      "8,11": "-41804075017243955943/1119578125000000000000",
      "7,8": "172030735636317/3125000000000000",
      "8,12": "710449249184109/250000000000000000",
      "8,9,12": "-1652576533667610957/250000000000000000",
      "4,5,8": "-1793101148901567/62500000000000000",
      "9,9": "9480531813857/1000000000000000",
      "9,10": "1136011996477293/500000000000000000",
      "9,12": "1247064432816411/125000000000000000",
      "0,9": "-6535868572528423323/220750000000000000000",
      "4,9": "19593152496822879/500000000000000000",
      "3,9": "452977219085037/25000000000000000",
      "9,11": "-2740602081329/195312500000000",
      "2,9": "-69127208838081/62500000000000000",
      "1,7,9": "-7019909104341283/453500000000000000",
      "4,7,9": "-2903809566405329/250000000000000000",
      "4,9,12": "-10294173375692733/500000000000000000",
      "10,10": "-1089683274067999/125000000000000000",
      "10,11": "-840681899678491/31250000000000000",
      "10": "-88608111402546697/1000000000000000000",
      "7,10": "-214995880502117/15625000000000000",
      "2,10": "6085859409380907/62500000000000000",
      "5,10": "-6792784555554153/500000000000000000",
      "11": "-318531629933916024812829/1977174968750000000000000",
      "0,11": "-197635237411241/6250000000000000",
      "2,11": "242508429019773/15625000000000000",
      "4,11": "-1006834764202019/31250000000000000",
      "4,5,11": "342659091033747/15625000000000000",
      "4,10,11": "1486651248392063/31250000000000000",
      "12": "-8217304778624019381643347/63269599000000000000000000",
      "7,12": "-490099881693202893/113375000000000000000",
      "5,12": "1094921855278063082649/35826500000000000000000",
      "2,12": "-3781124745065577/250000000000000000",
      "5,9,12": "5541705384964317/500000000000000000",
      "2,4,12": "6121040554639611/250000000000000000",
      "0": "-50293621224303186544457/100110125000000000000000",
      "0,1": "-37803114332506041/453500000000000000",
      "0,7": "-2226975833895896957/56687500000000000000",
      "0,1,7": "-11978852329399577/226750000000000000",
      "0,6": "20223870840720807/125000000000000000",
      "0,8,9": "-41929088249988837/125000000000000000",
      "4": "34445802886815299179/453500000000000000000",
      "4,12": "14214466578488287671/226750000000000000000",
      "7,7": "93015287275123867/22675000000000000000",
      "4,7": "-1159974678886097/31250000000000000",
      "4,4": "-4948035631416071/125000000000000000",
      "6,7": "2084460050336092953/19750000000000000000",
      "2,5,7": "-929509569524007/125000000000000000",
      "2,3,9": "-3355533107014329/250000000000000000",
      "3,5,9": "3355533107014329/250000000000000000",
      "4,5,9": "-2619103291899579/250000000000000000",
      "4,6,7": "-7769744675720061/250000000000000000",
      "1,4,7": "7753777101565189/226750000000000000",
      "4,10": "-6340929079937439/250000000000000000",
      "5,5,6": "-11317863509397117/250000000000000000",
      "5,6,7": "-4182719130309789/250000000000000000",
      "5,6,9": "-82480782267106821/100000000000000000",
      "6,7,9": "7034365403215467/500000000000000000",
      "7,8,11": "-235476787771107/7812500000000000",
      "1,6": "-864391530620019/907000000000000000",
      "3,10": "-217300613543793/125000000000000000",
      "1,8,12": "-17037544295478843/226750000000000000",
      "0,12": "409875859371357/31250000000000000",
      "8,10": "-3145829945715171/125000000000000000",
      "1,6,12": "66587613709128219/907000000000000000",
      "0,1,6": "-534807179037702219/56687500000000000",
      "0,1,9": "-199875062500429591/113375000000000000",
      "10,12": "71259297069641733/1000000000000000000",
      "0,10": "2154151332942323/250000000000000000",
      "4,7,11": "379907409393497/15625000000000000",
      "8,10,11": "921466262177253/15625000000000000",
      "6,10": "-8116283788057419/200000000000000000",
      "1,6,10": "73502386614437313/907000000000000000",
      "0,5,9": "-4046266891367847/250000000000000000",
      "3,12": "-2495613254228739/100000000000000000",
      "0,0": "1014677455942257/5000000000000000",
      "0,0,2": "6904595608945893/125000000000000000"
     },
     "upper": "-1450372638900622841770666911/63269599000000000000000000"
    }
   },
   "word": "C"
  }
 ],
 "stage_files": [
  "CA_STAGES.md",
  "CB_STAGES.md"
 ],
 "unique_stage_count": 300
}
```

Literal source files: [CA_STAGES.md](CA_STAGES.md), [CB_STAGES.md](CB_STAGES.md).
