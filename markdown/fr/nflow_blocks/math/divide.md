# divide

<p align="center">
<img src="divide.svg"/>
</p>
Divise l entree 1 par l entree 2.

## 📝 Syntaxe

- Block type: divide

## 📥 Argument d'entrée

- input ports - 2 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description

Divise l entree 1 par l entree 2.

| Champ        | Valeur                    |
| ------------ | ------------------------- |
| Module       | <code>nflow_blocks</code> |
| Bibliotheque | Blocs mathematiques       |
| Type         | <code>divide</code>       |
| Libelle      | Divide                    |

<b>Description</b>

Divise l entree 1 par l entree 2.

<b>Ports</b>

<b>Entree(s)</b>

| Port   | Role                             | Cote | Position  |
| ------ | -------------------------------- | ---- | --------- |
| Port_1 | Signal numerique lu par le bloc. | left | x=0, y=30 |
| Port_2 | Signal numerique lu par le bloc. | left | x=0, y=50 |

<b>Sortie(s)</b>

| Port   | Role                                  | Cote  | Position   |
| ------ | ------------------------------------- | ----- | ---------- |
| Port_1 | Signal numerique produit par le bloc. | right | x=80, y=40 |

<b>Parametres</b>

Aucun parametre de bloc n est declare dans le manifest.

<b>Caracteristiques du bloc</b>

| Champ                      | Valeur                    |
| -------------------------- | ------------------------- |
| Type de bloc               | divide                    |
| Famille                    | Blocs mathematiques       |
| Taille graphique           | 80 x 80                   |
| Phases                     | ALGEBRAIC                 |
| Traversee directe          | oui                       |
| Etat ou historique interne | oui                       |
| Type de donnees signaux    | valeurs numeriques double |

<b>Algorithmes</b>

- Bloc algebrique. Le premier port d entree est requis.
- Si abs(denominateur) est sous 1e-12, la sortie precedente reste inchangee.

<b>Equation ou regle</b>
$$y = \frac{u_1}{u_2}$$

<b>Capacites et limites</b>

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

Generation de code : prise en charge pour C et Rust.

<b>Sources d implementation</b>

<details>
<summary>Manifest: <code>modules/nflow_blocks/libraries/math/library.json</code></summary>

```json
{
  "id": "builtin.math",
  "title": "Math",
  "version": "1.0.0",
  "format": "nflow-2",
  "metadata": {
    "author": "Allan CORNET",
    "created": "2026-03-21",
    "tool": "Nelson nflow"
  },
  "builtin": true,
  "comment": "Basic math blocks",
  "license": "LGPL-3.0",
  "blocks": [
    {
      "type": "matmul",
      "label": "MatMul",
      "icon": "matmul.svg",
      "phases": ["ALGEBRAIC"],
      "width": 60,
      "height": 60,
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
        }
      ],
      "outputs": [
        {
          "x": 60,
          "y": 30,
          "side": "right"
        }
      ],
      "defaultParams": {
        "MultiplicationRule": "matrix"
      }
    },
    {
      "type": "sumElements",
      "label": "Sum of Elements",
      "icon": "sumElements.svg",
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
      "defaultParams": {},
      "render": {
        "type": "image",
        "src": "exports/sumElements.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "productOfElements",
      "label": "Product of Elements",
      "icon": "productOfElements.svg",
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
      "defaultParams": {},
      "render": {
        "type": "image",
        "src": "exports/productOfElements.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "dotProduct",
      "label": "Dot Product",
      "icon": "dotProduct.svg",
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
      "defaultParams": {},
      "render": {
        "type": "image",
        "src": "exports/dotProduct.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "crossProduct",
      "label": "Cross Product",
      "icon": "crossProduct.svg",
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
      "defaultParams": {},
      "render": {
        "type": "image",
        "src": "exports/crossProduct.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "gain",
      "label": "Gain",
      "icon": "gain.svg",
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
        "Gain": 2
      },
      "render": {
        "type": "math",
        "formula": "{params.Gain}",
        "mathGroupClass": "gain-math",
        "textSize": "16px",
        "width": 100,
        "height": 80
      }
    },
    {
      "type": "sum",
      "label": "Sum",
      "icon": "sum.svg",
      "phases": ["ALGEBRAIC"],
      "width": 20,
      "height": 20,
      "inputs": [
        {
          "x": -30,
          "y": 10,
          "side": "left",
          "wireX": -10,
          "wireY": 10
        },
        {
          "x": 10,
          "y": -30,
          "side": "top",
          "wireX": 10,
          "wireY": -10
        },
        {
          "x": 10,
          "y": 50,
          "side": "bottom",
          "wireX": 10,
          "wireY": 30
        }
      ],
      "outputs": [
        {
          "x": 50,
          "y": 10,
          "side": "right",
          "wireX": 30,
          "wireY": 10
        }
      ],
      "defaultParams": {
        "Inputs": "+++"
      },
      "render": {
        "type": "math",
        "formula": "\\oplus",
        "mathGroupClass": "sum-math",
        "textSize": "16px",
        "width": 20,
        "height": 20
      }
    },
    {
      "type": "mult",
      "label": "Mult",
      "icon": "mult.svg",
      "phases": ["ALGEBRAIC"],
      "width": 20,
      "height": 20,
      "inputs": [
        {
          "x": -30,
          "y": 10,
          "side": "left",
          "wireX": -10,
          "wireY": 10
        },
        {
          "x": 10,
          "y": -30,
          "side": "top",
          "wireX": 10,
          "wireY": -10
        },
        {
          "x": 10,
          "y": 50,
          "side": "bottom",
          "wireX": 10,
          "wireY": 30
        }
      ],
      "outputs": [
        {
          "x": 50,
          "y": 10,
          "side": "right",
          "wireX": 30,
          "wireY": 10
        }
      ],
      "defaultParams": {},
      "render": {
        "type": "math",
        "formula": "\\otimes",
        "mathGroupClass": "mult-math",
        "textSize": "16px",
        "width": 20,
        "height": 20
      }
    },
    {
      "type": "abs",
      "label": "Abs",
      "icon": "abs.svg",
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
      "defaultParams": {},
      "render": {
        "type": "math",
        "formula": "|x|",
        "mathGroupClass": "abs-math",
        "textSize": "16px",
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "mathFunction",
      "label": "Math Function",
      "icon": "mathFunction.svg",
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
        "Function": "exp"
      },
      "render": {
        "type": "image",
        "src": "exports/mathFunction.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "trigFunction",
      "label": "Trigonometric Function",
      "icon": "trigFunction.svg",
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
        "Function": "sin"
      },
      "render": {
        "type": "image",
        "src": "exports/trigFunction.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "roundingFunction",
      "label": "Rounding Function",
      "icon": "roundingFunction.svg",
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
        "Operator": "floor"
      },
      "render": {
        "type": "image",
        "src": "exports/roundingFunction.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "sign",
      "label": "Sign",
      "icon": "sign.svg",
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
      "defaultParams": {},
      "render": {
        "type": "image",
        "src": "exports/sign.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "sqrt",
      "label": "Sqrt",
      "icon": "sqrt.svg",
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
        "Function": "sqrt"
      },
      "render": {
        "type": "image",
        "src": "exports/sqrt.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "divide",
      "label": "Divide",
      "icon": "divide.svg",
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
      "defaultParams": {},
      "render": {
        "type": "image",
        "src": "exports/divide.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "negate",
      "label": "Negate",
      "icon": "negate.svg",
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
      "defaultParams": {},
      "render": {
        "type": "image",
        "src": "exports/negate.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "bias",
      "label": "Bias",
      "icon": "bias.svg",
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
        "Bias": 1
      },
      "render": {
        "type": "image",
        "src": "exports/bias.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "min",
      "label": "Min",
      "icon": "min.svg",
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
      "defaultParams": {},
      "render": {
        "type": "math",
        "formula": "min(x,y)",
        "mathGroupClass": "min-math",
        "textSize": "16px",
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "max",
      "label": "Max",
      "icon": "max.svg",
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
      "defaultParams": {},
      "render": {
        "type": "math",
        "formula": "max(x,y)",
        "mathGroupClass": "max-math",
        "textSize": "16px",
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "realImagToComplex",
      "label": "Re-Im to Complex",
      "icon": "realImagToComplex.svg",
      "phases": ["ALGEBRAIC"],
      "width": 60,
      "height": 60,
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
        }
      ],
      "outputs": [
        {
          "x": 60,
          "y": 30,
          "side": "right"
        }
      ],
      "defaultParams": {}
    },
    {
      "type": "complexToRealImag",
      "label": "Complex to Re-Im",
      "icon": "complexToRealImag.svg",
      "phases": ["ALGEBRAIC"],
      "width": 60,
      "height": 60,
      "inputs": [
        {
          "x": 0,
          "y": 30,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 60,
          "y": 20,
          "side": "right"
        },
        {
          "x": 60,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {}
    },
    {
      "type": "magnitudeAngleToComplex",
      "label": "Mag-Angle to Complex",
      "icon": "magnitudeAngleToComplex.svg",
      "phases": ["ALGEBRAIC"],
      "width": 60,
      "height": 60,
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
        }
      ],
      "outputs": [
        {
          "x": 60,
          "y": 30,
          "side": "right"
        }
      ],
      "defaultParams": {}
    },
    {
      "type": "complexToMagnitudeAngle",
      "label": "Complex to Mag-Angle",
      "icon": "complexToMagnitudeAngle.svg",
      "phases": ["ALGEBRAIC"],
      "width": 60,
      "height": 60,
      "inputs": [
        {
          "x": 0,
          "y": 30,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 60,
          "y": 20,
          "side": "right"
        },
        {
          "x": 60,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {}
    },
    {
      "type": "conjugate",
      "label": "Conjugate",
      "icon": "conjugate.svg",
      "phases": ["ALGEBRAIC"],
      "width": 60,
      "height": 60,
      "inputs": [
        {
          "x": 0,
          "y": 30,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 60,
          "y": 30,
          "side": "right"
        }
      ],
      "defaultParams": {}
    },
    {
      "type": "atan2",
      "label": "Atan2",
      "icon": "atan2.svg",
      "phases": ["ALGEBRAIC"],
      "width": 60,
      "height": 60,
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
        }
      ],
      "outputs": [
        {
          "x": 60,
          "y": 30,
          "side": "right"
        }
      ],
      "defaultParams": {}
    },
    {
      "type": "wrapToZero",
      "label": "Wrap To Zero",
      "icon": "wrapToZero.svg",
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
        "Threshold": 255
      },
      "render": {
        "type": "image",
        "src": "exports/wrapToZero.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "polynomial",
      "label": "Polynomial",
      "icon": "polynomial.svg",
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
        "Coefficients": [1, 0, 0]
      },
      "render": {
        "type": "image",
        "src": "exports/polynomial.svg",
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
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/math/divide.cpp</code></summary>

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
#include "SimEngineTypes.hpp"
#include "BlockRegistry.hpp"
#include "FieldNames.hpp"
#include "NFlowBlockDescriptor.hpp"
#include "NFlowCodegenTyped.hpp"
#include "math_blocks.hpp"
#include <cmath>
#include <algorithm>
//=============================================================================
bool
Nelson::NFlow::handleDivide(SimCtx& ctx, const Block& b, Phase phase)
{
    if (phase != Phase::ALGEBRAIC) {
        return false;
    }
    if (!hasInput(ctx, b.nid, 0) || !hasInput(ctx, b.nid, 1)) {
        return false;
    }
    SigView num = getInputSig(ctx, b.nid, 0);
    SigView den = getInputSig(ctx, b.nid, 1);
    if (const PortSig* ps = exact64OutPort(ctx, b.nid)) {
        const SigType ty = ps->type;
        const bool sat = blockSaturates(ctx, b.nid);
        // Integer division rounding follows the block's Rounding parameter;
        // the floor default matches the reference behavior of an integer
        // divide block.
        nflow::BlockDescriptor dbd(b, ctx.variables);
        const std::string rname = dbd.paramStr(nflow::kRounding, "floor");
        SigRounding rounding = SigRounding::Floor;
        if (rname == "nearest") {
            rounding = SigRounding::Nearest;
        } else if (rname == "ceiling" || rname == "ceil") {
            rounding = SigRounding::Ceiling;
        } else if (rname == "zero" || rname == "fix") {
            rounding = SigRounding::Zero;
        }
        return emitElementwiseI64(ctx, b.nid, [&](int i) {
            return i64ApplyDiv(sigAtI64(num, i, ty), sigAtI64(den, i, ty, 1), ty, sat, rounding);
        });
    }
    if (complexOutPort(ctx, b.nid)) {
        return emitElementwiseComplex(ctx, b.nid, [&](int i) {
            std::complex<double> denom = sigAtC(den, i, 1.0);
            if (std::abs(denom) < 1e-300) {
                denom = { 1e-300, 0.0 };
            }
            return sigAtC(num, i) / denom;
        });
    }
    return emitElementwise(ctx, b.nid, [&](int i) {
        double denom = sigAt(den, i, 1.0);
        if (std::abs(denom) < 1e-300) {
            denom = denom < 0.0 ? -1e-300 : 1e-300;
        }
        return sigAt(num, i) / denom;
    });
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenCDivide()
{
    BlockCodegenTemplate t;
    t.step = "{ double denom = {in1};\n"
             "  if (fabs(denom) < 1e-300) denom = denom < 0.0 ? -1e-300 : 1e-300;\n"
             "  out_{id} = {in0} / denom; }";
    t.emitStepTyped = [](const BlockCodegenArgs& a) {
        // Integer division rounds per the block's Rounding parameter
        // (floor by default, matching the runtime).
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        const std::string rname = bd.paramStr(nflow::kRounding, "floor");
        const bool uns = codegenIsU64(a.outType);
        std::string mode = "floor";
        if (rname == "zero" || rname == "fix") {
            mode = uns ? "floor" : "trunc"; // unsigned trunc == floor
        } else if (rname == "ceiling" || rname == "ceil") {
            mode = "ceil";
        } else if (rname == "nearest") {
            mode = "round";
        }
        const std::string fn = std::string(uns ? "nflow_u64_div_" : "nflow_i64_div_") + mode;
        a.line("out_" + a.id + " = " + fn + "(" + a.in[0] + ", " + a.in[1] + ");");
    };
    return t;
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenRustDivide()
{
    BlockCodegenTemplate t;
    // Preserve the divisor's sign, matching the interpreter (handleDivide) and
    // the C backend. The former fabs() guard forced a positive divisor, so
    // every negative denominator produced a result of the WRONG SIGN.
    t.step = "{ let denom = {in1};\n"
             "  let denom = if libm::fabs(denom) < 1e-300_f64 { if denom < 0.0_f64 { -1e-300_f64 } "
             "else { 1e-300_f64 } } else { denom };\n"
             "  out_{id} = {in0} / denom; }";
    t.emitStepTyped = [](const BlockCodegenArgs& a) {
        // Integer division rounds per the block's Rounding parameter
        // (floor by default, matching the runtime).
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        const std::string rname = bd.paramStr(nflow::kRounding, "floor");
        const bool uns = codegenIsU64(a.outType);
        if (uns) {
            std::string adjust = "na / nb"; // floor == trunc for unsigned
            if (rname == "ceiling" || rname == "ceil") {
                adjust = "na / nb + if na % nb != 0 { 1 } else { 0 }";
            } else if (rname == "nearest") {
                adjust = "na / nb + if 2 * (na % nb) >= nb { 1 } else { 0 }";
            }
            a.line("out_" + a.id + " = { let na: u64 = " + a.in[0] + "; let nb: u64 = " + a.in[1]
                + "; if nb == 0 { if na == 0 { 0 } else { u64::MAX } } else { " + adjust + " } };");
            return;
        }
        std::string adjust;
        if (rname == "zero" || rname == "fix") {
            adjust = "q";
        } else if (rname == "ceiling" || rname == "ceil") {
            adjust = "if r != 0 && ((na < 0) == (nb < 0)) { q + 1 } else { q }";
        } else if (rname == "nearest") {
            adjust = "if r != 0 && 2 * r.unsigned_abs() >= nb.unsigned_abs() { if (na < 0) != "
                     "(nb < 0) { q - 1 } else { q + 1 } } else { q }";
        } else { // floor
            adjust = "if r != 0 && ((na < 0) != (nb < 0)) { q - 1 } else { q }";
        }
        a.line("out_" + a.id + " = { let na: i64 = " + a.in[0] + "; let nb: i64 = " + a.in[1]
            + "; if nb == 0 { if na == 0 { 0 } else if na > 0 { i64::MAX } else { i64::MIN } }"
            + " else if na == i64::MIN && nb == -1 { i64::MAX }"
            + " else { let q = na / nb; let r = na % nb; " + adjust + " } };");
    };
    return t;
}
//=============================================================================

```

</details>

## 🔗 Voir aussi

[mult](../../nflow_blocks/math/mult.md), [gain](../../nflow_blocks/math/gain.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
