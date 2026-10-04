# saturation

<p align="center">
<img src="saturation.svg"/>
</p>
Clamps the input between min and max.

## 📝 Syntax

- Block type: saturation

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description

Clamps the input between min and max.

| Field   | Value                     |
| ------- | ------------------------- |
| Module  | <code>nflow_blocks</code> |
| Library | Nonlinear blocks          |
| Type    | <code>saturation</code>   |
| Label   | Saturation                |

<b>Description</b>

Clamps the input between min and max values.

<b>Ports</b>

<b>Input(s)</b>

| Port   | Role                              | Side | Position  |
| ------ | --------------------------------- | ---- | --------- |
| Port_1 | Numeric signal read by the block. | left | x=0, y=40 |

<b>Output(s)</b>

| Port   | Role                                  | Side  | Position   |
| ------ | ------------------------------------- | ----- | ---------- |
| Port_1 | Numeric signal produced by the block. | right | x=80, y=40 |

<b>Parameters</b>

| Parameter        | Default value |
| ---------------- | ------------- |
| <code>min</code> | -1            |
| <code>max</code> | 1             |

<b>Inspector Keys</b>

These serialized keys are exposed by the block inspector.

- <code>min</code>
- <code>max</code>

<b>Block Characteristics</b>

| Field                     | Value                                  |
| ------------------------- | -------------------------------------- |
| Block type                | saturation                             |
| Family                    | Nonlinear blocks                       |
| Rendered size             | 80 x 80                                |
| Phases                    | ALGEBRAIC                              |
| Direct feedthrough        | yes                                    |
| Internal state or history | not observed in the documented runtime |
| Signal data type          | double numeric values                  |

<b>Algorithms</b>

- Algebraic block. Requires input 1.
- min and max are resolved numerically; native defaults are negative and positive infinity.

<b>Equation or Rule</b>
$$y = \operatorname{clamp}(u,\,min,\,max)$$

<b>Extended Capabilities</b>

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

Code generation: supported for C and Rust.

<b>Implementation Sources</b>

<details>
<summary>Manifest: <code>modules/nflow_blocks/libraries/nonlinear/library.json</code></summary>

```json
{
  "id": "builtin.nonlinear",
  "title": "Non-Linear",
  "version": "1.0.0",
  "format": "nflow-2",
  "metadata": {
    "author": "Allan CORNET",
    "created": "2026-03-21",
    "tool": "Nelson nflow"
  },
  "comment": "Blocks for non-linearities",
  "license": "LGPL-3.0",
  "builtin": true,
  "blocks": [
    {
      "type": "saturation",
      "icon": "saturation.svg",
      "label": "Saturation",
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
        "LowerLimit": -1,
        "UpperLimit": 1
      },
      "render": {
        "type": "image",
        "src": "saturation.svg"
      }
    },
    {
      "type": "hysteresis",
      "label": "Relay",
      "icon": "hysteresis.svg",
      "phases": ["INIT", "OUTPUT", "UPDATE"],
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
        "uHigh": 1,
        "uLow": -1,
        "yHigh": 1,
        "yLow": 0
      },
      "render": {
        "type": "image",
        "src": "hysteresis.svg"
      }
    },
    {
      "type": "rate",
      "label": "Rate Lim.",
      "icon": "rate.svg",
      "phases": ["INIT", "OUTPUT", "UPDATE"],
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
        "RisingSlewLimit": 1,
        "FallingSlewLimit": 1
      },
      "render": {
        "type": "image",
        "src": "rate.svg"
      }
    },
    {
      "type": "backlash",
      "label": "Backlash",
      "icon": "backlash.svg",
      "phases": ["INIT", "OUTPUT", "UPDATE"],
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
        "BacklashWidth": 1
      },
      "render": {
        "type": "image",
        "src": "backlash.svg"
      }
    },
    {
      "type": "deadZone",
      "label": "Dead Zone",
      "icon": "deadZone.svg",
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
        "LowerValue": -1,
        "UpperValue": 1
      },
      "render": {
        "type": "image",
        "src": "deadZone.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "quantizer",
      "label": "Quantizer",
      "icon": "quantizer.svg",
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
        "QuantizationInterval": 1
      },
      "render": {
        "type": "image",
        "src": "quantizer.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "hitCrossing",
      "icon": "hitCrossing.svg",
      "label": "Hit Crossing",
      "phases": ["INIT", "OUTPUT", "UPDATE"],
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
        "HitCrossingOffset": 0,
        "HitCrossingDirection": "either"
      },
      "render": {
        "type": "image",
        "src": "hitCrossing.svg"
      }
    },
    {
      "type": "coulombViscousFriction",
      "label": "Coulomb & Viscous Friction",
      "icon": "coulombViscousFriction.svg",
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
        "Gain": 1,
        "Offset": 1
      },
      "render": {
        "type": "image",
        "src": "coulombViscousFriction.svg",
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
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/nonlinear/saturation.cpp</code></summary>

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
#include <cmath>
#include <algorithm>
#include "nonlinear_blocks.hpp"
//=============================================================================
bool
Nelson::NFlow::handleSaturation(SimCtx& ctx, const Block& b, Phase phase)
{
    nflow::BlockDescriptor bd(b, ctx.variables);
    double mn = bd.paramDouble(nflow::kLowerLimit, -std::numeric_limits<double>::infinity());
    double mx = bd.paramDouble(nflow::kUpperLimit, std::numeric_limits<double>::infinity());
    if (phase == Phase::ZERO_CROSSING) {
        // Surfaces where the clamp engages/disengages: u - lower, u - upper,
        // two per signal element. A variable-step solver stops at these kinks.
        // Infinite limits never cross (constant, non-zero surface).
        double* g = blockG(ctx, b.nid);
        if (g) {
            SigView u = getInputSig(ctx, b.nid, 0);
            const int w = std::max(1, outputWidth(ctx, b.nid, 0));
            for (int i = 0; i < w; ++i) {
                const double ui = sigAt(u, i);
                g[2 * i] = std::isfinite(mn) ? (ui - mn) : 1.0;
                g[2 * i + 1] = std::isfinite(mx) ? (ui - mx) : 1.0;
            }
        }
        return false;
    }
    if (phase != Phase::ALGEBRAIC) {
        return false;
    }
    if (!hasInput(ctx, b.nid, 0)) {
        return false;
    }
    SigView u = getInputSig(ctx, b.nid, 0);
    return emitElementwise(ctx, b.nid, [&](int i) { return clampVal(sigAt(u, i), mn, mx); });
}
//=============================================================================
namespace {
// Zero-crossing seam (plan V4): the clamp kinks u - lower and u - upper (sim
// ZERO_CROSSING parity; an infinite limit never crosses, constant 1.0).
void
saturationCrossing(const Nelson::NFlow::BlockCodegenArgs& a)
{
    if (a.rk4Op != Nelson::NFlow::Rk4Crossing) {
        return;
    }
    nflow::BlockDescriptor bd(*a.block, *a.variables);
    const double mn = bd.paramDouble(nflow::kLowerLimit, -std::numeric_limits<double>::infinity());
    const double mx = bd.paramDouble(nflow::kUpperLimit, std::numeric_limits<double>::infinity());
    const std::string co = std::to_string(a.crossingOffset);
    const std::string co1 = std::to_string(a.crossingOffset + 1);
    a.line(a.rk4Arr + "[" + co + "] = "
        + (std::isfinite(mn) ? ("(" + a.in[0] + ") - " + a.fmt(mn)) : std::string("1.0")) + ";");
    a.line(a.rk4Arr + "[" + co1 + "] = "
        + (std::isfinite(mx) ? ("(" + a.in[0] + ") - " + a.fmt(mx)) : std::string("1.0")) + ";");
}
int
saturationCrossingCount(const Nelson::NFlow::BlockCodegenArgs& a)
{
    nflow::BlockDescriptor bd(*a.block, *a.variables);
    const double mn = bd.paramDouble(nflow::kLowerLimit, -std::numeric_limits<double>::infinity());
    const double mx = bd.paramDouble(nflow::kUpperLimit, std::numeric_limits<double>::infinity());
    return (std::isfinite(mn) || std::isfinite(mx)) ? 2 : 0;
}
} // namespace
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenCSaturation()
{
    BlockCodegenTemplate t;
    // Absent limits default to a wide-open clamp (matching the interpreter's
    // -inf/+inf and the Rust backend's +/-1e308). A 0.0/0.0 default clamped
    // every unset-limit saturation output to exactly zero.
    t.step = "out_{id} = fmin(fmax({in0}, {param:LowerLimit:-1e308}), {param:UpperLimit:1e308});";
    t.emitRk4 = saturationCrossing;
    t.crossingCount = saturationCrossingCount;
    return t;
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenRustSaturation()
{
    BlockCodegenTemplate t;
    t.step = "out_{id} = libm::fmin(libm::fmax({in0}, {param:LowerLimit:-1e308}), "
             "{param:UpperLimit:1e308});";
    t.emitRk4 = saturationCrossing;
    t.crossingCount = saturationCrossingCount;
    return t;
}
//=============================================================================

```

</details>

## 🔗 See also

[deadZone](../../nflow_blocks/nonlinear/deadZone.md), [rate](../../nflow_blocks/nonlinear/rate.md), [min](../../nflow_blocks/math/min.md), [max](../../nflow_blocks/math/max.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
