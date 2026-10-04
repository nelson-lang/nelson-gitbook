# extractBits

<p align="center">
<img src="extractBits.svg"/>
</p>
Extrait NumBitsToExtract bits a partir de StartBit, alignes a droite.

## 📝 Syntaxe

- Type de bloc : extractBits

## 📥 Argument d'entrée

- ports d entree - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie declare(s).

## 📄 Description

Extrait NumBitsToExtract bits a partir de StartBit, alignes a droite.

| Champ        | Valeur                            |
| ------------ | --------------------------------- |
| Module       | <code>nflow_blocks</code>         |
| Bibliotheque | Logique / Operations sur les bits |
| Type         | <code>extractBits</code>          |
| Libelle      | Extract Bits                      |

<b>Description</b>

Extrait un champ contigu de <code>NumBitsToExtract</code> bits a partir du bit <code>StartBit</code> (base 0, LSB) de l'entree entiere et l'aligne a droite dans la sortie. Les valeurs sont reinterpretees comme entiers non signes sur <code>NumBits</code> bits. Element par element.

<b>Ports</b>

<b>Entree(s)</b>

| Port   | Role                             | Cote   | Position  |
| ------ | -------------------------------- | ------ | --------- |
| Port_1 | Signal numerique lu par le bloc. | gauche | x=0, y=40 |

<b>Sortie(s)</b>

| Port   | Role                                  | Cote   | Position   |
| ------ | ------------------------------------- | ------ | ---------- |
| Port_1 | Signal numerique produit par le bloc. | droite | x=90, y=40 |

<b>Parametres</b>

| Parametre                     | Valeur par defaut |
| ----------------------------- | ----------------- |
| <code>StartBit</code>         | 0                 |
| <code>NumBitsToExtract</code> | 8                 |
| <code>NumBits</code>          | 32                |

<b>Caracteristiques du bloc</b>

| Champ                      | Valeur                            |
| -------------------------- | --------------------------------- |
| Type de bloc               | extractBits                       |
| Famille                    | Logique / Operations sur les bits |
| Taille rendue              | 90 x 80                           |
| Phases                     | ALGEBRAIC                         |
| Etat interne ou historique | non                               |
| Type de donnees du signal  | valeurs numeriques double         |

<b>Algorithmes</b>

- ALGEBRAIC : out = (x >> StartBit) & ((1 << NumBitsToExtract) - 1).

<b>Equation ou regle</b>
$$y = (u \gg \text{StartBit}) \,\&\, (2^{\text{NumBitsToExtract}}-1)$$

<b>Capacites etendues</b>

<b>Sources d implementation</b>

Generation de code : prise en charge pour C et Rust.

<details>
<summary>Manifest: <code>modules/nflow_blocks/libraries/logic/library.json</code></summary>

```json
{
  "id": "builtin.logic",
  "title": "Logic / Bit Operations",
  "version": "0.1.0",
  "format": "nflow-2",
  "builtin": true,
  "blocks": [
    {
      "type": "and",
      "label": "AND",
      "icon": "and.svg",
      "phases": ["ALGEBRAIC"],
      "width": 80,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 20,
          "side": "left"
        },
        {
          "x": 0,
          "y": 60,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 80,
          "y": 40,
          "side": "right"
        }
      ],
      "render": {
        "type": "math",
        "bodyClass": "block-body",
        "mathGroupClass": "and-math",
        "formula": "\\text{AND}",
        "textSize": "16px"
      }
    },
    {
      "type": "or",
      "label": "OR",
      "icon": "or.svg",
      "phases": ["ALGEBRAIC"],
      "width": 80,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 20,
          "side": "left"
        },
        {
          "x": 0,
          "y": 60,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 80,
          "y": 40,
          "side": "right"
        }
      ],
      "render": {
        "type": "math",
        "bodyClass": "block-body",
        "mathGroupClass": "or-math",
        "formula": "\\text{OR}",
        "textSize": "16px"
      }
    },
    {
      "type": "xor",
      "label": "XOR",
      "icon": "xor.svg",
      "phases": ["ALGEBRAIC"],
      "width": 80,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 20,
          "side": "left"
        },
        {
          "x": 0,
          "y": 60,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 80,
          "y": 40,
          "side": "right"
        }
      ],
      "render": {
        "type": "math",
        "bodyClass": "block-body",
        "mathGroupClass": "xor-math",
        "formula": "\\text{XOR}",
        "textSize": "16px"
      }
    },
    {
      "type": "not",
      "label": "NOT",
      "icon": "not.svg",
      "phases": ["ALGEBRAIC"],
      "width": 80,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 40,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 80,
          "y": 40,
          "side": "right"
        }
      ],
      "render": {
        "type": "math",
        "bodyClass": "block-body",
        "mathGroupClass": "not-math",
        "formula": "\\text{NOT}",
        "textSize": "16px"
      }
    },
    {
      "type": "compareToConstant",
      "label": "Compare Const",
      "icon": "compareToConstant.svg",
      "phases": ["ALGEBRAIC"],
      "width": 100,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 40,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 100,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "relop": "ge",
        "const": 0
      },
      "render": {
        "type": "image",
        "src": "exports/compareToConstant.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 100,
        "height": 80
      }
    },
    {
      "type": "intervalTest",
      "label": "Interval Test",
      "icon": "intervalTest.svg",
      "phases": ["ALGEBRAIC"],
      "width": 100,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 40,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 100,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "LowerLimit": 0,
        "UpperLimit": 1,
        "IntervalClosedLeft": 1,
        "IntervalClosedRight": 1
      },
      "render": {
        "type": "image",
        "src": "exports/intervalTest.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 100,
        "height": 80
      }
    },
    {
      "type": "intervalTestDynamic",
      "label": "Interval Test Dynamic",
      "icon": "intervalTestDynamic.svg",
      "phases": ["ALGEBRAIC"],
      "width": 100,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 20,
          "side": "left"
        },
        {
          "x": 0,
          "y": 40,
          "side": "left"
        },
        {
          "x": 0,
          "y": 60,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 100,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "IntervalClosedLeft": 1,
        "IntervalClosedRight": 1
      },
      "render": {
        "type": "image",
        "src": "exports/intervalTestDynamic.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 100,
        "height": 80
      }
    },
    {
      "type": "bitwiseOperator",
      "label": "Bitwise Operator",
      "icon": "bitwiseOperator.svg",
      "phases": ["ALGEBRAIC"],
      "width": 90,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 40,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 90,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "Operation": "AND",
        "BitMask": 0,
        "NumBits": 32
      },
      "render": {
        "type": "image",
        "src": "exports/bitwiseOperator.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 90,
        "height": 80
      }
    },
    {
      "type": "bitSet",
      "label": "Bit Set",
      "icon": "bitSet.svg",
      "phases": ["ALGEBRAIC"],
      "width": 80,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 40,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 80,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "BitIndex": 0,
        "NumBits": 32
      },
      "render": {
        "type": "image",
        "src": "exports/bitSet.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "bitClear",
      "label": "Bit Clear",
      "icon": "bitClear.svg",
      "phases": ["ALGEBRAIC"],
      "width": 80,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 40,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 80,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "BitIndex": 0,
        "NumBits": 32
      },
      "render": {
        "type": "image",
        "src": "exports/bitClear.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "extractBits",
      "label": "Extract Bits",
      "icon": "extractBits.svg",
      "phases": ["ALGEBRAIC"],
      "width": 90,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 40,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 90,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "StartBit": 0,
        "NumBitsToExtract": 8,
        "NumBits": 32,
        "OutputScaling": "keepWeight"
      },
      "render": {
        "type": "image",
        "src": "exports/extractBits.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 90,
        "height": 80
      }
    },
    {
      "type": "shiftArithmetic",
      "label": "Shift Arithmetic",
      "icon": "shiftArithmetic.svg",
      "phases": ["ALGEBRAIC"],
      "width": 90,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 40,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 90,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "ShiftDirection": "Left",
        "ShiftNumber": 1
      },
      "render": {
        "type": "image",
        "src": "exports/shiftArithmetic.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 90,
        "height": 80
      }
    },
    {
      "type": "combinatorialLogic",
      "label": "Combinatorial Logic",
      "icon": "combinatorialLogic.svg",
      "phases": ["ALGEBRAIC"],
      "width": 90,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 40,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 90,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "TruthTable": [0, 1, 1, 0]
      },
      "render": {
        "type": "image",
        "src": "exports/combinatorialLogic.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 90,
        "height": 80
      }
    },
    {
      "type": "compareToZero",
      "label": "Compare Zero",
      "icon": "compareToZero.svg",
      "phases": ["ALGEBRAIC"],
      "width": 100,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 40,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 100,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "relop": "ne"
      },
      "render": {
        "type": "image",
        "src": "exports/compareToZero.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 100,
        "height": 80
      }
    },
    {
      "type": "relationalOperator",
      "label": "Relational",
      "icon": "relationalOperator.svg",
      "phases": ["ALGEBRAIC"],
      "width": 100,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 30,
          "side": "left"
        },
        {
          "x": 0,
          "y": 50,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 100,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "Operator": "ge"
      },
      "render": {
        "type": "image",
        "src": "exports/relationalOperator.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 100,
        "height": 80
      }
    },
    {
      "type": "switchCase",
      "label": "Switch Case",
      "icon": "switchCase.svg",
      "phases": ["ALGEBRAIC"],
      "width": 100,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 40,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 100,
          "y": 30,
          "side": "right"
        },
        {
          "x": 100,
          "y": 50,
          "side": "right"
        }
      ],
      "defaultParams": {
        "CaseConditions": "{1}",
        "ShowDefaultCase": "on"
      },
      "render": {
        "type": "image",
        "src": "exports/switchCase.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 100,
        "height": 80
      }
    },
    {
      "type": "if",
      "label": "If",
      "icon": "if.svg",
      "phases": ["ALGEBRAIC"],
      "width": 100,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 30,
          "side": "left"
        },
        {
          "x": 0,
          "y": 50,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 100,
          "y": 30,
          "side": "right"
        },
        {
          "x": 100,
          "y": 50,
          "side": "right"
        }
      ],
      "defaultParams": {
        "IfExpression": "u1 > 0",
        "ElseIfExpressions": "",
        "ShowElse": "on"
      },
      "render": {
        "type": "image",
        "src": "exports/if.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 100,
        "height": 80
      }
    },
    {
      "type": "logicalOperator",
      "label": "Logical Operator",
      "icon": "logicalOperator.svg",
      "phases": ["ALGEBRAIC"],
      "width": 80,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 30,
          "side": "left"
        },
        {
          "x": 0,
          "y": 50,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 80,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "Operator": "AND"
      },
      "render": {
        "type": "image",
        "src": "exports/logicalOperator.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    }
  ]
}
```

</details>


<details>
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/logic/extractBits.cpp</code></summary>

```cpp
//=============================================================================
// Copyright (c) 2016-present Allan CORNET (Nelson)
//=============================================================================
// This file is part of Nelson.
//=============================================================================
// LICENCE_BLOCK_BEGIN
// SPDX-License-Identifier: LGPL-3.0-or-later
// LICENCE_BLOCK_END
//=============================================================================
// extractBits: extracts a contiguous range of NumBitsToExtract bits starting at
// bit StartBit (0-based, LSB) from the (integer-valued) input, right-aligned in
// the output (Extract Bits, range form): out = (x >> StartBit) & ((1 <<
// NumBitsToExtract) - 1). Input values are reinterpreted as NumBits-wide
// unsigned integers (default 32). Pure algebraic feedthrough, element-wise over
// the input width. C / Rust code generation.
//=============================================================================
#include "SimEngineTypes.hpp"
#include "BlockRegistry.hpp"
#include "FieldNames.hpp"
#include "NFlowBlockDescriptor.hpp"
#include "NFlowCodegenHelpers.hpp"
#include <cmath>
#include <cstdint>
#include <string>
#include "logic_blocks.hpp"
//=============================================================================
namespace Nelson {
namespace NFlow {
    //=============================================================================
    static uint64_t
    ebFullMask(const nflow::BlockDescriptor& bd)
    {
        double nb = std::floor(bd.paramDouble("NumBits", 32.0));
        if (nb < 1.0) {
            nb = 1.0;
        }
        if (nb >= 64.0) {
            return ~0ULL;
        }
        return (1ULL << static_cast<unsigned>(nb)) - 1ULL;
    }
    //=============================================================================
    static void
    ebParams(const nflow::BlockDescriptor& bd, unsigned& start, uint64_t& extractMask)
    {
        long long s = std::llround(bd.paramDouble("StartBit", 0.0));
        if (s < 0) {
            s = 0;
        }
        if (s > 63) {
            s = 63;
        }
        long long n = std::llround(bd.paramDouble("NumBitsToExtract", 8.0));
        if (n < 1) {
            n = 1;
        }
        if (n > 64) {
            n = 64;
        }
        start = static_cast<unsigned>(s);
        extractMask = (n >= 64) ? ~0ULL : ((1ULL << static_cast<unsigned>(n)) - 1ULL);
    }
    //=============================================================================
    // Where the extracted bits land. 'rightAligned' (the default) returns them
    // as a number in their own right - bits 2..5 of 214 read 5 - which is the
    // only reading that means anything in a double. 'keepWeight' leaves them at
    // the weight they had, so the same extraction reads 5 * 2^2 = 20: the value
    // a fixed-point type would carry.
    static bool
    ebKeepsWeight(const nflow::BlockDescriptor& bd)
    {
        // Extracting a range yields those bits AT THEIR WEIGHT: bits 2..5 of
        // 214 read 20, not 5. Right-aligning them is the other reading, and
        // stays available under 'rightAligned'.
        return bd.paramStr("OutputScaling", "keepWeight") != "rightAligned";
    }
    //=============================================================================
    bool
    handleExtractBits(SimCtx& ctx, const Block& b, Phase phase)
    {
        if (phase != Phase::ALGEBRAIC) {
            return false;
        }
        if (!hasInput(ctx, b.nid, 0)) {
            return false;
        }
        nflow::BlockDescriptor bd(b, ctx.variables);
        const uint64_t fm = ebFullMask(bd);
        unsigned start = 0;
        uint64_t em = 0;
        ebParams(bd, start, em);
        const bool keepWeight = ebKeepsWeight(bd);
        SigView u = getInputSig(ctx, b.nid, 0);
        return emitElementwise(ctx, b.nid, [&](int i) -> double {
            const uint64_t x = static_cast<uint64_t>(std::llround(sigAt(u, i))) & fm;
            const uint64_t bits = (x >> start) & em;
            return static_cast<double>(keepWeight ? (bits << start) : bits);
        });
    }
    //=============================================================================
    BlockCodegenTemplate
    getCodeGenCExtractBits()
    {
        BlockCodegenTemplate t;
        t.emitStep = [](const BlockCodegenArgs& a) {
            nflow::BlockDescriptor bd(*a.block, *a.variables);
            const uint64_t fm = ebFullMask(bd);
            unsigned start = 0;
            uint64_t em = 0;
            ebParams(bd, start, em);
            const std::string xu = "(((unsigned long long)llround(" + a.in[0] + ")) & "
                + std::to_string(fm) + "ULL)";
            const std::string bits
                = "((" + xu + " >> " + std::to_string(start) + ") & " + std::to_string(em) + "ULL)";
            a.line("out_" + a.id + " = (double)("
                + (ebKeepsWeight(bd) ? (bits + " << " + std::to_string(start)) : bits) + ");");
        };
        return t;
    }
    //=============================================================================
    BlockCodegenTemplate
    getCodeGenRustExtractBits()
    {
        BlockCodegenTemplate t;
        t.emitStep = [](const BlockCodegenArgs& a) {
            nflow::BlockDescriptor bd(*a.block, *a.variables);
            const uint64_t fm = ebFullMask(bd);
            unsigned start = 0;
            uint64_t em = 0;
            ebParams(bd, start, em);
            const std::string xu = "(((libm::round(" + a.in[0] + ") as i64) as u64) & "
                + std::to_string(fm) + "u64)";
            const std::string bits = "((" + xu + " >> " + std::to_string(start) + "u32) & "
                + std::to_string(em) + "u64)";
            a.line("out_" + a.id + " = ("
                + (ebKeepsWeight(bd) ? ("(" + bits + " << " + std::to_string(start) + "u32)")
                                     : bits)
                + ") as f64;");
        };
        return t;
    }
    //=============================================================================
} // namespace NFlow
} // namespace Nelson
//=============================================================================

```

</details>

## 💡 Exemple

Extraire le quartet haut de 180 (10110100) a partir du bit 4 : 1011 = 11.

```matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',180)), struct('id','e','type','extractBits','inputs',1,'outputs',1,'params',struct('StartBit',4,'NumBitsToExtract',4,'NumBits',8)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','e','fromIndex',0,'toIndex',0), struct('from','e','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```

## 🔗 Voir aussi

[bitwiseOperator](../../nflow_blocks/logic/bitwiseOperator.md), [shiftArithmetic](../../nflow_blocks/logic/shiftArithmetic.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
