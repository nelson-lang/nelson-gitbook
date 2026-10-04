# mathFunction

Fonction mathématique de l’entrée.

## 📝 Syntaxe

- Block type: mathFunction

## 📥 Argument d'entrée

- input ports - 1 input port(s) declared.

## 📤 Argument de sortie

- output ports - 1 output port(s) declared.

## 📄 Description

Fonction mathématique de l’entrée.

| Champ   | Valeur                    |
| ------- | ------------------------- |
| Module  | <code>nflow_blocks</code> |
| Library | Blocs math                |
| Type    | <code>mathFunction</code> |
| Label   | Math Function             |

<b>Description</b>

Applique la fonction mathématique sélectionnée par le paramètre <code>Function</code>, élément par élément, avec expansion scalaire pour les signaux vectoriels.

<b>Function</b>

Valeurs à une entrée : <code>exp</code>, <code>log</code>, <code>10^u</code> (10 puissance l’entrée), <code>log10</code>, <code>square</code> (u\*u), <code>sqrt</code>, <code>reciprocal</code> (1/u).

Valeurs à deux entrées (u1 sur le port 1, u2 sur le port 2) : <code>pow</code> (u1^u2), <code>hypot</code> (sqrt(u1^2+u2^2)), <code>rem</code> (reste du signe de u1), <code>mod</code> (modulo du signe de u2, mod(u1,0)=u1).

La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc.

<b>Sources d’implémentation</b>

Generation de code : prise en charge pour C et Rust.

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
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/math/mathFunction.cpp</code></summary>

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
// mathFunction: a single elementwise math block whose params.Function selects
// the applied function (sin/cos/tan/asin/acos/atan/sinh/cosh/tanh/exp/log/
// log10/sqrt/sign). Covers the whole Coselica Blocks.Math scalar-function set
// in one palette entry. Feedthrough (ALGEBRAIC phase); real double signals; has
// C / Rust code generation.
//=============================================================================
#include "SimEngineTypes.hpp"
#include "BlockRegistry.hpp"
#include "FieldNames.hpp"
#include "NFlowBlockDescriptor.hpp"
#include "math_blocks.hpp"
#include <cmath>
#include <string>
//=============================================================================
namespace Nelson {
namespace NFlow {
    //=============================================================================
    namespace {
        double
        applyMathFn(const std::string& fn, double x)
        {
            if (fn == "sin") {
                return std::sin(x);
            }
            if (fn == "cos") {
                return std::cos(x);
            }
            if (fn == "tan") {
                return std::tan(x);
            }
            if (fn == "asin") {
                return std::asin(x);
            }
            if (fn == "acos") {
                return std::acos(x);
            }
            if (fn == "atan") {
                return std::atan(x);
            }
            if (fn == "sinh") {
                return std::sinh(x);
            }
            if (fn == "cosh") {
                return std::cosh(x);
            }
            if (fn == "tanh") {
                return std::tanh(x);
            }
            if (fn == "exp") {
                return std::exp(x);
            }
            if (fn == "log") {
                return std::log(x);
            }
            if (fn == "log10") {
                return std::log10(x);
            }
            if (fn == "10^u") {
                return std::pow(10.0, x);
            }
            if (fn == "square" || fn == "magnitude^2") {
                // 'magnitude^2' is what diagrams from other tools carry for the
                // same thing on a real signal; without it the block fell through
                // to the identity below and quietly passed its input on.
                return x * x;
            }
            if (fn == "sqrt") {
                return std::sqrt(x);
            }
            if (fn == "reciprocal") {
                return 1.0 / x;
            }
            if (fn == "sign") {
                return (x > 0.0) ? 1.0 : ((x < 0.0) ? -1.0 : 0.0);
            }
            return x; // unknown -> identity
        }

        bool
        isBinaryFn(const std::string& fn)
        {
            return fn == "pow" || fn == "hypot" || fn == "rem" || fn == "mod";
        }

        // Every name applyMathFn / applyBinaryFn actually implement. Anything
        // else used to fall through to the identity below, which turned the
        // block into a plain wire and answered with its own input - a wrong
        // result with nothing to see. Unlike its siblings (trigFunction,
        // roundingFunction, sqrt), 'Math Function' has no natural default
        // operation to fall back on, so an unknown name is reported instead.
        bool
        isKnownMathFn(const std::string& fn)
        {
            static const char* kNames[] = { "sin", "cos", "tan", "asin", "acos", "atan", "sinh",
                "cosh", "tanh", "exp", "log", "log10", "10^u", "square", "magnitude^2", "sqrt",
                "reciprocal", "sign" };
            for (const char* n : kNames) {
                if (fn == n) {
                    return true;
                }
            }
            return isBinaryFn(fn);
        }

        // Two-input functions. rem keeps the sign of the dividend (fmod); mod
        // keeps the sign of the divisor (floor modulo), with mod(a,0)=a.
        double
        applyBinaryFn(const std::string& fn, double a, double b)
        {
            if (fn == "pow") {
                return std::pow(a, b);
            }
            if (fn == "hypot") {
                return std::hypot(a, b);
            }
            if (fn == "rem") {
                return std::fmod(a, b);
            }
            // "mod"
            if (b == 0.0) {
                return a;
            }
            double r = std::fmod(a, b);
            if (r != 0.0 && ((r < 0.0) != (b < 0.0))) {
                r += b;
            }
            return r;
        }

        // C / Rust expression for the selected function applied to `arg`.
        std::string
        codegenExpr(const std::string& fn, const std::string& arg, bool rust)
        {
            const std::string p = rust ? "libm::" : "";
            if (fn == "sin" || fn == "cos" || fn == "tan" || fn == "asin" || fn == "acos"
                || fn == "atan" || fn == "sinh" || fn == "cosh" || fn == "tanh" || fn == "exp"
                || fn == "log" || fn == "log10" || fn == "sqrt") {
                return p + fn + "(" + arg + ")";
            }
            if (fn == "10^u") {
                return p + "pow(10.0, " + arg + ")";
            }
            if (fn == "square" || fn == "magnitude^2") {
                return "((" + arg + ") * (" + arg + "))";
            }
            if (fn == "reciprocal") {
                return "(1.0 / (" + arg + "))";
            }
            if (fn == "sign") {
                // branchless sign as (x>0) - (x<0)
                if (rust) {
                    return "(((" + arg + " > 0.0) as i32 - (" + arg + " < 0.0) as i32) as f64)";
                }
                return "((double)((" + arg + " > 0.0) - (" + arg + " < 0.0)))";
            }
            return arg;
        }

        BlockCodegenTemplate
        makeCodegen(bool rust)
        {
            BlockCodegenTemplate t;
            t.emitStep = [rust](const BlockCodegenArgs& a) {
                nflow::BlockDescriptor bd(*a.block, *a.variables);
                const std::string fn = bd.paramStr("Function", "sin");
                const std::string p = rust ? "libm::" : "";
                if (fn == "pow" || fn == "hypot") {
                    a.line("out_" + a.id + " = " + p + fn + "(" + a.in[0] + ", " + a.in[1] + ");");
                    return;
                }
                if (fn == "rem") {
                    a.line("out_" + a.id + " = " + p + "fmod(" + a.in[0] + ", " + a.in[1] + ");");
                    return;
                }
                if (fn == "mod") {
                    // floor modulo: sign of the divisor, mod(a,0)=a.
                    if (rust) {
                        a.line("let a_" + a.id + " = " + a.in[0] + ";");
                        a.line("let b_" + a.id + " = " + a.in[1] + ";");
                        a.line(
                            "let mut r_" + a.id + " = libm::fmod(a_" + a.id + ", b_" + a.id + ");");
                        a.line("if r_" + a.id + " != 0.0 && (r_" + a.id + " < 0.0) != (b_" + a.id
                            + " < 0.0) { r_" + a.id + " += b_" + a.id + "; }");
                        a.line("out_" + a.id + " = if b_" + a.id + " == 0.0 { a_" + a.id
                            + " } else { r_" + a.id + " };");
                    } else {
                        a.line("double a_" + a.id + " = " + a.in[0] + ";");
                        a.line("double b_" + a.id + " = " + a.in[1] + ";");
                        a.line("double r_" + a.id + " = fmod(a_" + a.id + ", b_" + a.id + ");");
                        a.line("if (r_" + a.id + " != 0.0 && ((r_" + a.id + " < 0.0) != (b_" + a.id
                            + " < 0.0))) r_" + a.id + " += b_" + a.id + ";");
                        a.line("out_" + a.id + " = (b_" + a.id + " == 0.0) ? a_" + a.id + " : r_"
                            + a.id + ";");
                    }
                    return;
                }
                a.line("out_" + a.id + " = " + codegenExpr(fn, a.in[0], rust) + ";");
            };
            return t;
        }
    } // namespace
    //=============================================================================
    bool
    handleMathFunction(SimCtx& ctx, const Block& b, Phase phase)
    {
        if (phase == Phase::INIT) {
            nflow::BlockDescriptor bdInit(b, ctx.variables);
            const std::string fnInit = bdInit.paramStr("Function", "sin");
            if (!isKnownMathFn(fnInit) && ctx.diag) {
                SimDiagnostic d;
                d.code = "math_function_unknown";
                d.blockId = b.id;
                d.message = std::string("block '") + b.id + "' (mathFunction) has no function '"
                    + fnInit
                    + "'. Supported: sin cos tan asin acos atan sinh cosh tanh exp log log10 "
                      "10^u square magnitude^2 sqrt reciprocal sign, and the two-input pow "
                      "hypot rem mod.";
                d.time = ctx.t;
                ctx.diag->fail(d);
            }
            return false;
        }
        if (phase != Phase::ALGEBRAIC) {
            return false;
        }
        if (!hasInput(ctx, b.nid, 0)) {
            return false;
        }
        nflow::BlockDescriptor bd(b, ctx.variables);
        const std::string fn = bd.paramStr("Function", "sin");
        if (isBinaryFn(fn)) {
            if (!hasInput(ctx, b.nid, 1)) {
                return false;
            }
            SigView a = getInputSig(ctx, b.nid, 0);
            SigView bb = getInputSig(ctx, b.nid, 1);
            return emitElementwise(
                ctx, b.nid, [&](int i) { return applyBinaryFn(fn, sigAt(a, i), sigAt(bb, i)); });
        }
        SigView u = getInputSig(ctx, b.nid, 0);
        return emitElementwise(ctx, b.nid, [&](int i) { return applyMathFn(fn, sigAt(u, i)); });
    }
    //=============================================================================
    BlockCodegenTemplate
    getCodeGenCMathFunction()
    {
        return makeCodegen(false);
    }
    //=============================================================================
    BlockCodegenTemplate
    getCodeGenRustMathFunction()
    {
        return makeCodegen(true);
    }
    //=============================================================================
} // namespace NFlow
} // namespace Nelson
//=============================================================================

```

</details>

## 🔗 Voir aussi

[trigFunction](../../nflow_blocks/math/trigFunction.md), [sqrt](../../nflow_blocks/math/sqrt.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
