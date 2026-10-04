# constraint

<p align="center">
<img src="constraint.svg"/>
</p>
Algebraic (differential-algebraic) constraint state solved by the DAE solver.

## 📝 Syntax

- Block type: constraint

## 📥 Input argument

- input ports - 1 input port(s) declared: the constraint residual g.

## 📤 Output argument

- output ports - 1 output port(s) declared: the algebraic state z.

## 📄 Description

Algebraic (differential-algebraic) constraint state solved by the DAE solver.

| Field   | Value                     |
| ------- | ------------------------- |
| Module  | <code>nflow_blocks</code> |
| Library | Continuous blocks         |
| Type    | <code>constraint</code>   |
| Label   | Constraint                |

<b>Description</b>

The Constraint block introduces one <b>algebraic</b> state <b>z</b> (its output). It has no derivative of its own; instead the DAE solver adjusts <b>z</b> so that the block's input signal <b>g</b> is driven to zero. Wire the surrounding diagram so the input computes the constraint residual <b>g(z, x) = 0</b> (typically using the block's own output z), and the solver holds the system on that manifold.

This block is only meaningful under the differential-algebraic solver: set the model's <code>solver</code> to <code>dae</code>. Under any other solver, or in generated C / Rust code, it is rejected with a clear message (there is no explicit lowering for a differential-algebraic system).

<b>Ports</b>

<b>Input(s)</b>

| Port   | Role                                       | Side | Position  |
| ------ | ------------------------------------------ | ---- | --------- |
| Port_1 | The constraint residual g, driven to zero. | left | x=0, y=40 |

<b>Output(s)</b>

| Port   | Role                                         | Side  | Position   |
| ------ | -------------------------------------------- | ----- | ---------- |
| Port_1 | The algebraic state z the solver determines. | right | x=80, y=40 |

<b>Parameters</b>

| Parameter                     | Default value |
| ----------------------------- | ------------- |
| <code>InitialCondition</code> | 0             |

The initial condition is only an initial guess for z; the solver refines it to a consistent value with IDACalcIC.

<b>Block Characteristics</b>

| Field                     | Value                        |
| ------------------------- | ---------------------------- |
| Block type                | constraint                   |
| Family                    | Continuous blocks            |
| Rendered size             | 80 x 80                      |
| Phases                    | INIT, OUTPUT, DERIVATIVE     |
| Internal state or history | one algebraic (mass-0) state |
| Signal data type          | double numeric values        |

<b>Equation or Rule</b>
$$0 = g(z, x),\qquad y = z$$

<b>Implementation Sources</b>

<details>
<summary>Manifest: <code>modules/nflow_blocks/libraries/continuous/library.json</code></summary>

```json
{
  "id": "builtin.continuous",
  "title": "Continuous",
  "version": "1.0.0",
  "format": "nflow-2",
  "metadata": {
    "author": "Allan CORNET",
    "created": "2026-03-21",
    "tool": "Nelson nflow"
  },
  "comment": "Blocks for continuous-time systems",
  "license": "LGPL-3.0",
  "builtin": true,
  "blocks": [
    {
      "type": "integrator",
      "label": "Integrator",
      "icon": "integrator.svg",
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
        "InitialCondition": 0,
        "ExternalReset": "none",
        "InitialConditionSource": "internal",
        "LowerSaturationLimit": "-inf",
        "UpperSaturationLimit": "inf"
      },
      "render": {
        "type": "math",
        "useRectElement": true,
        "bodyClass": "block-body integrator-body",
        "mathGroupClass": "integrator-math",
        "formula": "\\frac{1}{s}"
      }
    },
    {
      "type": "tf",
      "label": "Transfer Fn",
      "icon": "tf.svg",
      "phases": ["INIT", "OUTPUT", "ALGEBRAIC", "UPDATE"],
      "width": 85,
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
          "x": 85,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "Numerator": [3],
        "Denominator": [1, 3]
      },
      "render": {
        "type": "math",
        "bodyClass": "block-body",
        "mathGroupClass": "tf-math",
        "formula": "\\frac{N(s)}{D(s)}"
      }
    },
    {
      "type": "delay",
      "label": "Delay",
      "icon": "delay.svg",
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
        "DelayTime": 0.1
      },
      "render": {
        "type": "math",
        "bodyClass": "block-body",
        "mathGroupClass": "delay-math",
        "formula": "e^{-sT}"
      }
    },
    {
      "type": "stateSpace",
      "label": "State-Space",
      "icon": "stateSpace.svg",
      "phases": ["INIT", "OUTPUT", "UPDATE"],
      "width": 160,
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
          "x": 160,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "A": 1,
        "B": 1,
        "C": 1,
        "D": 0,
        "InitialCondition": 0
      },
      "render": {
        "type": "math",
        "bodyClass": "block-body",
        "mathGroupClass": "state-space-math",
        "formula": "\\dot{x}=Ax+Bu",
        "textSize": "16px"
      }
    },
    {
      "type": "lpf",
      "label": "LPF",
      "icon": "lpf.svg",
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
        "Cutoff": 1
      },
      "render": {
        "src": "lpf.svg",
        "type": "image"
      }
    },
    {
      "type": "hpf",
      "label": "HPF",
      "icon": "hpf.svg",
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
        "Cutoff": 1
      },
      "render": {
        "src": "hpf.svg",
        "type": "image"
      }
    },
    {
      "type": "derivative",
      "label": "Derivative",
      "icon": "derivative.svg",
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
      "defaultParams": {},
      "render": {
        "type": "math",
        "useRectElement": true,
        "bodyClass": "block-body",
        "mathGroupClass": "derivative-math",
        "formula": "\\frac{d}{dt}"
      }
    },
    {
      "type": "pid",
      "label": "PID",
      "icon": "pid.svg",
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
        "P": 1,
        "I": 0,
        "D": 0,
        "N": 0,
        "LowerSaturationLimit": "-inf",
        "UpperSaturationLimit": "inf"
      },
      "render": {
        "type": "math",
        "bodyClass": "block-body",
        "mathGroupClass": "pid-math",
        "formula": "\\mathsf{PID}"
      }
    },
    {
      "type": "constraint",
      "label": "Constraint",
      "icon": "constraint.svg",
      "phases": ["INIT", "OUTPUT", "DERIVATIVE"],
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
        "InitialCondition": 0
      },
      "render": {
        "type": "math",
        "bodyClass": "block-body",
        "mathGroupClass": "constraint-math",
        "formula": "g=0"
      }
    }
  ]
}
```

</details>


<details>
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/continuous/constraint.cpp</code></summary>

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
// Algebraic constraint block (§5.6, Lot D3.2). Declares one ALGEBRAIC state z
// (its output); the DAE solver drives the block's input g -> 0, so z is defined
// implicitly by the equation g(z, x) = 0 the surrounding diagram builds. OUTPUT
// emits z = x[xOffset]; DERIVATIVE writes the residual g (the block input) into
// the xdot slot, which the solver-loop residual assembly reads as the algebraic
// residual because this state's id = 0 (BlockMetadata::algebraicState). There is
// no fixed-step / discrete meaning; the block only works under the `dae` solver.
//=============================================================================
#include "SimEngineTypes.hpp"
#include "BlockRegistry.hpp"
#include "FieldNames.hpp"
#include "NFlowBlockDescriptor.hpp"
#include "continuous_blocks.hpp"
//=============================================================================
namespace Nelson {
namespace NFlow {
    //=============================================================================
    bool
    handleConstraint(SimCtx& ctx, const Block& b, Phase phase)
    {
        auto& st = getState(ctx, b.nid);
        if (phase == Phase::INIT) {
            nflow::BlockDescriptor bd(b, ctx.variables);
            st.scalar = bd.paramDouble(nflow::kInitial, 0.0); // initial guess for z
            st.output = st.scalar;
            return false;
        }
        if (phase == Phase::OUTPUT) {
            const double* xs = blockX(ctx, b.nid);
            setOutput(ctx, b.nid, xs ? xs[0] : st.scalar);
            return false;
        }
        if (phase == Phase::DERIVATIVE) {
            // The algebraic residual IS the block's input g; store it in the xdot
            // slot so the DAE residual assembly picks it up (id = 0 -> r = g).
            double* xdot = blockXdot(ctx, b.nid);
            if (xdot) {
                xdot[0] = getInput(ctx, b.nid, 0, 0.0);
            }
            return false;
        }
        return false;
    }
    //=============================================================================
} // namespace NFlow
} // namespace Nelson
//=============================================================================

```

</details>

## 🔗 See also

[integrator](../../nflow_blocks/continuous/integrator.md), [stateSpace](../../nflow_blocks/continuous/stateSpace.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
