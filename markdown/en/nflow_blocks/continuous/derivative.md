# derivative

<p align="center">
<img src="derivative.svg"/>
</p>
Estimates the time derivative of an input.

## 📝 Syntax

- Block type: derivative

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description

Estimates the time derivative of an input.

| Field   | Value                     |
| ------- | ------------------------- |
| Module  | <code>nflow_blocks</code> |
| Library | Continuous blocks         |
| Type    | <code>derivative</code>   |
| Label   | Derivative                |

<b>Description</b>

Estimates the derivative (time-rate-of-change) of the input signal.

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

No block parameters are declared in the manifest.

<b>Block Characteristics</b>

| Field                     | Value                 |
| ------------------------- | --------------------- |
| Block type                | derivative            |
| Family                    | Continuous blocks     |
| Rendered size             | 80 x 80               |
| Phases                    | INIT, OUTPUT, UPDATE  |
| Direct feedthrough        | see Algorithms        |
| Internal state or history | yes                   |
| Signal data type          | double numeric values |

<b>Algorithms</b>

- INIT clears the previous input and derivative output.
- OUTPUT emits the stored derivative. UPDATE computes (u - previous) / dt and stores u.
- If dt is not positive, the update uses 0.

<b>Equation or Rule</b>
$$y_k = \frac{u_k - u_{k-1}}{dt}$$

<b>Extended Capabilities</b>

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

Code generation: supported for C and Rust.

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
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/continuous/derivative.cpp</code></summary>

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
#include "continuous_blocks.hpp"
//=============================================================================
bool
Nelson::NFlow::handleDerivative(SimCtx& ctx, const Block& b, Phase phase)
{
    auto& st = getState(ctx, b.nid);
    const int w = outputWidth(ctx, b.nid, 0);
    // st.scalar / st.vec = previous SAMPLE's input; st.output / st.outLatch =
    // the held backward difference replayed between sample points.
    if (phase == Phase::INIT) {
        st.scalar = 0.0;
        st.output = 0.0;
        st.derivPrimed = false;
        if (w > 1) {
            st.vec.assign(w, 0.0);
            st.outLatch.assign(w, 0.0);
        }
        return false;
    }
    if (phase == Phase::ALGEBRAIC) {
        // The output is feedthrough (it reads the CURRENT input), so it is
        // produced in the topologically-ordered ALGEBRAIC phase rather than the
        // declaration-ordered OUTPUT phase: the source feeding this block is
        // then guaranteed to have run first (an OUTPUT-phase derivative could be
        // scheduled ahead of its source and read a not-yet-computed input).
        // Recompute the backward difference (u_k - u_{k-1}) / dt at every
        // committed sample point, so the sample the sink records is the current
        // step's derivative (no one-sample lag). A committed pass is the
        // fixed-step loop (always) and the solver loop's recordAt /
        // located-event passes (ctx.sideEffectFree == false). A pure rhs /
        // zero-crossing sub-step evaluation (sideEffectFree == true) instead
        // replays the value held at the last sample: a continuous consumer
        // integrating this signal then sees the current step's derivative held
        // across the interval (zero-order hold), not a spurious intra-step slope
        // that would collapse to zero at the step boundary.
        if (!ctx.sideEffectFree) {
            const double invDt = 1.0 / std::max(ctx.dt, 1e-6);
            // The first committed sample has nothing behind it to difference
            // against, so the derivative is zero there and the stored previous
            // input is seeded with what the block actually sees. Assuming a
            // previous input of 0 fired a u(0)/dt spike for any input that does
            // not start at 0 - the derivative of a constant 5 came out as 500 at
            // t = 0 - which then rang through everything downstream.
            const bool prime = !st.derivPrimed;
            st.derivPrimed = true;
            if (w <= 1) {
                double inp = getInput(ctx, b.nid, 0, 0.0);
                if (prime) {
                    st.scalar = inp;
                }
                st.output = (inp - st.scalar) * invDt;
            } else {
                SigView u = getInputSig(ctx, b.nid, 0);
                if ((int)st.vec.size() != w) {
                    st.vec.assign(w, 0.0);
                }
                if ((int)st.outLatch.size() != w) {
                    st.outLatch.assign(w, 0.0);
                }
                for (int i = 0; i < w; ++i) {
                    if (prime) {
                        st.vec[i] = sigAt(u, i);
                    }
                    st.outLatch[i] = (sigAt(u, i) - st.vec[i]) * invDt;
                }
            }
        }
        if (w <= 1) {
            setOutput(ctx, b.nid, st.output);
        } else {
            double* y = outputSlice(ctx, b.nid, 0);
            for (int i = 0; i < w; ++i) {
                y[i] = (i < (int)st.outLatch.size()) ? st.outLatch[i] : 0.0;
            }
        }
        return false;
    }
    if (phase == Phase::UPDATE) {
        // Advance the stored previous-sample input for the next step's backward
        // difference. Latched here, at the sample point, so the solver loop's
        // sub-step OUTPUT replays a stable held derivative.
        if (w <= 1) {
            st.scalar = getInput(ctx, b.nid, 0, 0.0);
        } else {
            SigView u = getInputSig(ctx, b.nid, 0);
            if ((int)st.vec.size() != w) {
                st.vec.assign(w, 0.0);
            }
            for (int i = 0; i < w; ++i) {
                st.vec[i] = sigAt(u, i);
            }
        }
        return false;
    }
    return false;
}
//=============================================================================
// Runtime parity: the ALGEBRAIC phase recomputes (u_k - u_{k-1}) / dt from the
// current input at each sample, so the emitted step mirrors the simulator's
// committed pass: compute the backward difference from the current input, then
// advance the stored previous input (the discrete-`difference` shape, plus the
// / dt). Codegen already emits blocks in topological order, so the source is
// available; and the generated code only ever runs the committed step, so the
// solver loop's zero-order-hold branch needs no separate generated state.
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenCDerivative()
{
    BlockCodegenTemplate t;
    t.emitState = [](const BlockCodegenStateArgs& a) {
        a.addState("der_prev_" + a.id, "", "");
        a.addState("der_primed_" + a.id, "0.0", "");
    };
    t.emitStep = [](const BlockCodegenArgs& a) {
        // Seed the previous input on the first step: there is nothing behind it
        // to difference against, so the derivative is zero there (a previous
        // input of 0 fired a u(0)/dt spike for any input not starting at 0).
        a.line("if (s->der_primed_" + a.id + " == 0.0) {");
        a.line("  s->der_prev_" + a.id + " = " + a.in[0] + ";");
        a.line("  s->der_primed_" + a.id + " = 1.0;");
        a.line("}");
        a.line("out_" + a.id + " = (" + a.in[0] + " - s->der_prev_" + a.id + ") / fmax(dt, 1e-6);");
        a.line("s->der_prev_" + a.id + " = " + a.in[0] + ";");
    };
    return t;
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenRustDerivative()
{
    BlockCodegenTemplate t;
    t.emitState = [](const BlockCodegenStateArgs& a) {
        a.addState("der_prev_" + a.id, "", "");
        a.addState("der_primed_" + a.id, "0.0", "");
    };
    t.emitStep = [](const BlockCodegenArgs& a) {
        // Same first-step seeding as the C template and the simulator.
        a.line("if s.der_primed_" + a.id + " == 0.0 {");
        a.line("    s.der_prev_" + a.id + " = " + a.in[0] + ";");
        a.line("    s.der_primed_" + a.id + " = 1.0;");
        a.line("}");
        a.line("out_" + a.id + " = (" + a.in[0] + " - s.der_prev_" + a.id
            + ") / libm::fmax(dt, 1e-6_f64);");
        a.line("s.der_prev_" + a.id + " = " + a.in[0] + ";");
    };
    return t;
}
//=============================================================================

```

</details>

## 🔗 See also

[integrator](../../nflow_blocks/continuous/integrator.md), [hpf](../../nflow_blocks/continuous/hpf.md), [lpf](../../nflow_blocks/continuous/lpf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
