# hysteresis

<p align="center">
<img src="hysteresis.svg"/>
</p>
Relay: latching two-threshold switch (uHigh, uLow, yHigh, yLow).

## 📝 Syntax

- Block type: hysteresis

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description

Relay: a latching switch with two thresholds (hysteresis).

| Field   | Value                     |
| ------- | ------------------------- |
| Module  | <code>nflow_blocks</code> |
| Library | Nonlinear                 |
| Type    | <code>hysteresis</code>   |
| Label   | Relay                     |

<b>Description</b>

The output latches: it switches to <code>yHigh</code> when the input rises to or above <code>uHigh</code>, to <code>yLow</code> when it falls to or below <code>uLow</code>, and holds its previous value in between. This two-threshold behaviour is the classic relay with hysteresis. Stateful (latched output).

<b>Ports</b>

| Port   | Role                                           | Side | Position  |
| ------ | ---------------------------------------------- | ---- | --------- |
| Port_1 | Control input compared against the thresholds. | left | x=0, y=40 |

<b>Output(s)</b>

| Port   | Role                                  | Side  | Position   |
| ------ | ------------------------------------- | ----- | ---------- |
| Port_1 | Latched relay output (yHigh or yLow). | right | x=80, y=40 |

<b>Parameters</b>

| Parameter          | Default value |
| ------------------ | ------------- |
| <code>uHigh</code> | 1             |
| <code>uLow</code>  | -1            |
| <code>yHigh</code> | 1             |
| <code>yLow</code>  | 0             |

<b>Block Characteristics</b>

| Field                     | Value                 |
| ------------------------- | --------------------- |
| Block type                | hysteresis            |
| Family                    | Nonlinear             |
| Rendered size             | 80 x 80               |
| Phases                    | INIT, OUTPUT, UPDATE  |
| Internal state or history | yes (latched output)  |
| Signal data type          | double numeric values |

<b>Algorithms</b>

- INIT: start at yLow.
- OUTPUT: emit the latched value.
- UPDATE: switch to yHigh above uHigh, to yLow below uLow, otherwise hold.

<b>Equation or Rule</b>
$$y \leftarrow \begin{cases} y_{High} & u \ge u_{High} \\ y_{Low} & u \le u_{Low} \\ y & \text{otherwise} \end{cases}$$

<b>Extended Capabilities</b>

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
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/nonlinear/hysteresis.cpp</code></summary>

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
// hysteresis (relay with two thresholds, Coselica Blocks.Nonlinear.Hysteresis).
// The output latches: it switches to yHigh when the input rises past uHigh, to
// yLow when it falls past uLow, and holds otherwise. Stateful (INIT/OUTPUT/
// UPDATE, latched output), with C / Rust code generation.
//=============================================================================
#include "SimEngineTypes.hpp"
#include "BlockRegistry.hpp"
#include "FieldNames.hpp"
#include "NFlowBlockDescriptor.hpp"
#include <cmath>
#include "nonlinear_blocks.hpp"
//=============================================================================
namespace Nelson {
namespace NFlow {
    //=============================================================================
    bool
    handleHysteresis(SimCtx& ctx, const Block& b, Phase phase)
    {
        auto& st = getState(ctx, b.nid);
        if (phase == Phase::INIT) {
            nflow::BlockDescriptor bd(b, ctx.variables);
            // Initial branch: start low unless the initial input is already high.
            st.output = bd.paramDouble("yLow", 0.0);
            return false;
        }
        if (phase == Phase::ALGEBRAIC) {
            // Direct feedthrough, as the emitted C/Rust step is: the relay
            // answers the current input and only holds the latched branch
            // inside the dead band. Emitting the latch alone delayed every
            // switch by one step. Pure: UPDATE owns the latch, so an RK stage
            // or an algebraic sweep may re-enter this freely.
            nflow::BlockDescriptor bd(b, ctx.variables);
            const double uHigh = bd.paramDouble("uHigh", 1.0);
            const double uLow = bd.paramDouble("uLow", -1.0);
            const double yHigh = bd.paramDouble("yHigh", 1.0);
            const double yLow = bd.paramDouble("yLow", 0.0);
            const double u = getInput(ctx, b.nid, 0, 0.0);
            double y = st.output;
            if (u >= uHigh) {
                y = yHigh;
            } else if (u <= uLow) {
                y = yLow;
            }
            setOutput(ctx, b.nid, y);
            return false;
        }
        if (phase == Phase::UPDATE) {
            nflow::BlockDescriptor bd(b, ctx.variables);
            const double uHigh = bd.paramDouble("uHigh", 1.0);
            const double uLow = bd.paramDouble("uLow", -1.0);
            const double yHigh = bd.paramDouble("yHigh", 1.0);
            const double yLow = bd.paramDouble("yLow", 0.0);
            const double u = getInput(ctx, b.nid, 0, 0.0);
            if (u >= uHigh) {
                st.output = yHigh;
            } else if (u <= uLow) {
                st.output = yLow;
            } // else: hold the latched output
            return false;
        }
        return false;
    }
    //=============================================================================
    BlockCodegenTemplate
    getCodeGenCHysteresis()
    {
        BlockCodegenTemplate t;
        t.emitState = [](const BlockCodegenStateArgs& a) {
            nflow::BlockDescriptor bd(*a.block, *a.variables);
            a.addState("hyst_" + a.id, a.fmt(bd.paramDouble("yLow", 0.0)), "");
        };
        t.emitStep = [](const BlockCodegenArgs& a) {
            nflow::BlockDescriptor bd(*a.block, *a.variables);
            const std::string uHigh = a.fmt(bd.paramDouble("uHigh", 1.0));
            const std::string uLow = a.fmt(bd.paramDouble("uLow", -1.0));
            const std::string yHigh = a.fmt(bd.paramDouble("yHigh", 1.0));
            const std::string yLow = a.fmt(bd.paramDouble("yLow", 0.0));
            a.line("if (" + a.in[0] + " >= " + uHigh + ") s->hyst_" + a.id + " = " + yHigh + ";");
            a.line(
                "else if (" + a.in[0] + " <= " + uLow + ") s->hyst_" + a.id + " = " + yLow + ";");
            a.line("out_" + a.id + " = s->hyst_" + a.id + ";");
        };
        return t;
    }
    //=============================================================================
    BlockCodegenTemplate
    getCodeGenRustHysteresis()
    {
        BlockCodegenTemplate t;
        t.emitState = [](const BlockCodegenStateArgs& a) {
            nflow::BlockDescriptor bd(*a.block, *a.variables);
            a.addState("hyst_" + a.id, a.fmt(bd.paramDouble("yLow", 0.0)), "");
        };
        t.emitStep = [](const BlockCodegenArgs& a) {
            nflow::BlockDescriptor bd(*a.block, *a.variables);
            const std::string uHigh = a.fmt(bd.paramDouble("uHigh", 1.0));
            const std::string uLow = a.fmt(bd.paramDouble("uLow", -1.0));
            const std::string yHigh = a.fmt(bd.paramDouble("yHigh", 1.0));
            const std::string yLow = a.fmt(bd.paramDouble("yLow", 0.0));
            a.line("if " + a.in[0] + " >= " + uHigh + " { s.hyst_" + a.id + " = " + yHigh + "; }");
            a.line(
                "else if " + a.in[0] + " <= " + uLow + " { s.hyst_" + a.id + " = " + yLow + "; }");
            a.line("out_" + a.id + " = s.hyst_" + a.id + ";");
        };
        return t;
    }
    //=============================================================================
} // namespace NFlow
} // namespace Nelson
//=============================================================================

```

</details>

## 💡 Example

Relay driven by a sine crossing both thresholds.

```matlab
d.blocks={ struct('id','s','type','sine','inputs',0,'outputs',1,'params',struct('Amplitude',2,'Frequency',1)), struct('id','r','type','hysteresis','inputs',1,'outputs',1,'params',struct('uHigh',1,'uLow',-1,'yHigh',1,'yLow',0)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','s','to','r','fromIndex',0,'toIndex',0), struct('from','r','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.02; d.duration=2.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```

## 🔗 See also

[saturation](../../nflow_blocks/nonlinear/saturation.md), [deadZone](../../nflow_blocks/nonlinear/deadZone.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
