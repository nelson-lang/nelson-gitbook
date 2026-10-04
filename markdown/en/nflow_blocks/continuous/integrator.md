# integrator

<p align="center">
<img src="integrator.svg"/>
</p>
Integrates the input over time with optional clamps.

## 📝 Syntax

- Block type: integrator

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description

Integrates the input over time with optional clamps.

| Field   | Value                     |
| ------- | ------------------------- |
| Module  | <code>nflow_blocks</code> |
| Library | Continuous blocks         |
| Type    | <code>integrator</code>   |
| Label   | Integrator                |

<b>Description</b>

The Integrator block integrates its input over time. It maintains internal state and produces the integrated output.

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

| Parameter            | Default value |
| -------------------- | ------------- |
| <code>initial</code> | 0             |
| <code>min</code>     | -inf          |
| <code>max</code>     | inf           |

<b>Inspector Keys</b>

These serialized keys are exposed by the block inspector.

- <code>initial</code>
- <code>min</code>
- <code>max</code>

<b>Block Characteristics</b>

| Field                     | Value                 |
| ------------------------- | --------------------- |
| Block type                | integrator            |
| Family                    | Continuous blocks     |
| Rendered size             | 80 x 80               |
| Phases                    | INIT, OUTPUT, UPDATE  |
| Direct feedthrough        | see Algorithms        |
| Internal state or history | yes                   |
| Signal data type          | double numeric values |

<b>Algorithms</b>

- INIT clamps initial between min and max.
- OUTPUT emits the current state. UPDATE adds dt \* input and clamps the result.
- Native defaults for min and max are negative and positive infinity.

<b>Equation or Rule</b>
$$x_{k+1} = \operatorname{clamp}(x_k + dt\,u_k,\,min,\,max),\quad y = x$$

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
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/continuous/integrator.cpp</code></summary>

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
#include "EdgeDetect.hpp"
#include <string>
#include <cmath>
#include <algorithm>
#include "continuous_blocks.hpp"
//=============================================================================
static inline double
holdAtLimit(double x, double u, double mn, double mx);
//=============================================================================
bool
Nelson::NFlow::handleIntegrator(SimCtx& ctx, const Block& b, Phase phase)
{
    auto& st = getState(ctx, b.nid);
    nflow::BlockDescriptor bd(b, ctx.variables);
    const int w = outputWidth(ctx, b.nid, 0);
    const double mn = bd.paramDouble(nflow::kMin, -std::numeric_limits<double>::infinity());
    const double mx = bd.paramDouble(nflow::kMax, std::numeric_limits<double>::infinity());
    // External reset and external initial condition. The extra ports follow the
    // signal in that order, so port 1 is the reset when there is one and the
    // initial condition otherwise. 'level' holds the state at the initial
    // condition while the line is non-zero; the edge kinds reset once, on the
    // edge, under the shared rule in EdgeDetect.hpp.
    const std::string extReset = bd.paramStr("ExternalReset", "none");
    const int resetEdge = edgeTypeOf(extReset);
    const bool levelReset = (extReset == "level");
    const bool hasReset = (resetEdge >= 0) || levelReset;
    const bool externalIC = (bd.paramStr("InitialConditionSource", "internal") == "external");
    const int resetPort = hasReset ? 1 : -1;
    const int icPort = externalIC ? (hasReset ? 2 : 1) : -1;
    // The initial condition an element resets to: the wired signal when it is
    // external, the parameter otherwise (scalar broadcast or per element).
    auto initialOf = [&](int i) -> double {
        if (icPort >= 0 && hasInput(ctx, b.nid, icPort)) {
            SigView v = getInputSig(ctx, b.nid, icPort);
            return sigAt(v, i);
        }
        if (w <= 1) {
            return bd.paramDouble(nflow::kInitial, 0.0);
        }
        const std::vector<double> list = bd.paramList(nflow::kInitial);
        if (list.empty()) {
            return 0.0;
        }
        return (i < (int)list.size()) ? list[i] : list.back();
    };
    const double resetLine = (hasReset && hasInput(ctx, b.nid, resetPort))
        ? getInput(ctx, b.nid, resetPort, 0.0)
        : 0.0;
    const bool holding = levelReset && (resetLine != 0.0);
    const bool resetNow = holding
        || (resetEdge >= 0 && st.resetPrimed && edgeFired(st.resetPrev, resetLine, resetEdge));
    if (phase == Phase::INIT) {
        st.resetPrev = 0.0;
        st.resetPrimed = false;
        if (w <= 1) {
            double ini = bd.paramDouble(nflow::kInitial, 0.0);
            st.scalar = clampVal(ini, mn, mx);
        } else {
            // Vector integrator: Initial may be a scalar (broadcast) or a
            // list matching the signal width.
            std::vector<double> iniList = bd.paramList(nflow::kInitial);
            st.vec.assign(w, 0.0);
            for (int i = 0; i < w; ++i) {
                double ini = iniList.empty()
                    ? 0.0
                    : (i < (int)iniList.size() ? iniList[i] : iniList.back());
                st.vec[i] = clampVal(ini, mn, mx);
            }
        }
        return false;
    }
    if (phase == Phase::OUTPUT) {
        // Under a variable-step solver the output is read from the scattered
        // global state (a true function of x for the minor step); otherwise the
        // block's own latched state (fixed-step path, unchanged). The output is
        // clamped to [min, max] so a limited integrator never reports a value
        // outside its bounds even if the solver's raw state drifts slightly.
        // A reset in effect this step reports the initial condition rather than
        // the state. The decision is the one ALGEBRAIC stamped for this step,
        // never a fresh one: the first OUTPUT pass can see a stale reset line.
        // The solver re-runs OUTPUT after the algebraic solve, which is why this
        // has to be applied here and not in ALGEBRAIC alone.
        if (hasReset && !ctx.sideEffectFree && st.resetStamp == ctx.stepIndex && st.resetActive) {
            if (w <= 1) {
                setOutput(ctx, b.nid, clampVal(initialOf(0), mn, mx));
            } else {
                double* yr = outputSlice(ctx, b.nid, 0);
                for (int i = 0; i < w; ++i) {
                    yr[i] = clampVal(initialOf(i), mn, mx);
                }
            }
            return false;
        }
        double* xs = blockX(ctx, b.nid);
        if (w <= 1) {
            setOutput(ctx, b.nid, clampVal(xs ? xs[0] : st.scalar, mn, mx));
        } else {
            double* y = outputSlice(ctx, b.nid, 0);
            for (int i = 0; i < w; ++i) {
                y[i] = clampVal(xs ? xs[i] : (i < (int)st.vec.size() ? st.vec[i] : 0.0), mn, mx);
            }
        }
        return false;
    }
    if (phase == Phase::ALGEBRAIC) {
        // The one phase where the reset line is settled: decide here, stamp the
        // decision for this step, and let OUTPUT and UPDATE follow it.
        if (!hasReset || ctx.sideEffectFree) {
            return false;
        }
        st.resetActive = resetNow;
        st.resetStamp = ctx.stepIndex;
        if (!resetNow) {
            return false;
        }
        if (w <= 1) {
            setOutput(ctx, b.nid, clampVal(initialOf(0), mn, mx));
        } else {
            double* y = outputSlice(ctx, b.nid, 0);
            for (int i = 0; i < w; ++i) {
                y[i] = clampVal(initialOf(i), mn, mx);
            }
        }
        return false;
    }
    if (phase == Phase::UPDATE) {
        // Under a solver the state lives in the global vector and the solver
        // advances it; this pass runs only for a reset integrator, and then only
        // to put the initial condition back. Writing the global slice too is
        // what makes the reset visible: re-seeding the block's own copy alone
        // would be discarded on the next step.
        double* xs = blockX(ctx, b.nid);
        const bool solverOwnsState = (xs != nullptr);
        // Follow the decision ALGEBRAIC stamped for this step so the state and
        // the reported output cannot disagree.
        const bool doReset = (st.resetStamp == ctx.stepIndex) ? st.resetActive : resetNow;
        // An edge puts the state back and integration carries on from there, so
        // on the fixed-step path - where this pass produces the state of the NEXT
        // sample - the step is integrated from the initial condition rather than
        // skipped. A held level stays put. Under a solver the initial condition
        // is written into the global vector and the solver integrates the step
        // itself, so nothing is added here.
        SigView u = getInputSig(ctx, b.nid, 0);
        for (int i = 0; i < w; ++i) {
            const double inp = sigAt(u, i);
            double next;
            if (doReset) {
                const double base = clampVal(initialOf(i), mn, mx);
                next = (solverOwnsState || holding) ? base : clampVal(base + ctx.dt * inp, mn, mx);
                if (xs) {
                    xs[i] = base;
                }
            } else if (!solverOwnsState) {
                const double cur
                    = (w <= 1) ? st.scalar : ((i < (int)st.vec.size()) ? st.vec[i] : 0.0);
                next = clampVal(cur + ctx.dt * inp, mn, mx);
            } else {
                continue; // the solver owns the state and nothing resets it
            }
            if (w <= 1) {
                st.scalar = next;
            } else {
                if ((int)st.vec.size() != w) {
                    st.vec.assign(w, 0.0);
                }
                st.vec[i] = next;
            }
        }
        if (hasReset) {
            st.resetPrev = edgeZeroSideLatch(st.resetPrev, resetLine, st.resetPrimed);
            st.resetPrimed = true;
            st.resetHeld = holding;
        }
        return false;
    }
    if (phase == Phase::DERIVATIVE) {
        // Continuous state derivative: x' = u, except a limited integrator holds
        // its state at an engaged saturation limit. When x has reached the upper
        // (resp. lower) limit and the input still pushes further out, the
        // derivative is forced to 0 so the state stays on the limit; it resumes
        // as soon as the input reverses. The exact engage/leave instants are
        // caught by the ZERO_CROSSING surfaces below, so the solver never
        // integrates across a saturation kink.
        double* xdot = blockXdot(ctx, b.nid);
        const double* xs = blockX(ctx, b.nid);
        if (xdot) {
            if (levelReset && st.resetHeld) {
                // Held at its initial condition while the reset line is up. The
                // level is the one latched at the major step this integration
                // covers, so every stage of the step agrees.
                for (int i = 0; i < w; ++i) {
                    xdot[i] = 0.0;
                }
                return false;
            }
            if (w <= 1) {
                const double u = getInput(ctx, b.nid, 0, 0.0);
                const double x = xs ? xs[0] : st.scalar;
                xdot[0] = holdAtLimit(x, u, mn, mx);
            } else {
                SigView u = getInputSig(ctx, b.nid, 0);
                for (int i = 0; i < w; ++i) {
                    const double xi = xs ? xs[i] : (i < (int)st.vec.size() ? st.vec[i] : 0.0);
                    xdot[i] = holdAtLimit(xi, sigAt(u, i), mn, mx);
                }
            }
        }
        return false;
    }
    if (phase == Phase::ZERO_CROSSING) {
        // Two surfaces per element: x - min and x - max. A variable-step solver
        // stops exactly where the state engages/leaves a limit. An unbounded
        // integrator allocates no surfaces (see zeroCrossingCount); write
        // nothing so we never touch a zero-length g slice.
        if (!std::isfinite(mn) && !std::isfinite(mx)) {
            return false;
        }
        double* g = blockG(ctx, b.nid);
        const double* xs = blockX(ctx, b.nid);
        if (g) {
            for (int i = 0; i < w; ++i) {
                const double xi = xs
                    ? xs[i]
                    : (w <= 1 ? st.scalar : (i < (int)st.vec.size() ? st.vec[i] : 0.0));
                g[2 * i] = std::isfinite(mn) ? (xi - mn) : 1.0;
                g[2 * i + 1] = std::isfinite(mx) ? (xi - mx) : 1.0;
            }
        }
        return false;
    }
    return false;
}
//=============================================================================
// Derivative of a limited integrator element: hold at an engaged limit.
static inline double
holdAtLimit(double x, double u, double mn, double mx)
{
    if (x >= mx && u > 0.0) {
        return 0.0;
    }
    if (x <= mn && u < 0.0) {
        return 0.0;
    }
    return u;
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenCIntegrator()
{
    BlockCodegenTemplate t;
    t.emitState = [](const BlockCodegenStateArgs& a) {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        double initVal = bd.paramDouble(nflow::kInitial, 0.0);
        // Unbounded by default (matches the interpreter and the Rust generator).
        // A [0, 0] default would clamp the state to zero, so the integrator would
        // never respond to its input.
        double minVal = bd.paramDouble(nflow::kMin, -std::numeric_limits<double>::infinity());
        double maxVal = bd.paramDouble(nflow::kMax, std::numeric_limits<double>::infinity());
        a.addState("int_" + a.id,
            "fmin(fmax(" + nflow::formatNumber(initVal) + ", " + nflow::formatNumber(minVal) + "), "
                + nflow::formatNumber(maxVal) + ")",
            "");
    };
    t.emitStep = [](const BlockCodegenArgs& a) {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        // Unbounded by default (matches the interpreter and the Rust generator);
        // a [0, 0] default would clamp the state to zero every step, so the
        // integrator would ignore its input and always output zero.
        std::string minVal = nflow::formatNumber(
            bd.paramDouble(nflow::kMin, -std::numeric_limits<double>::infinity()));
        std::string maxVal = nflow::formatNumber(
            bd.paramDouble(nflow::kMax, std::numeric_limits<double>::infinity()));
        // Output-then-update (output is the pre-step state), matching the Rust
        // generator and the interpreter. The former update-then-output emission
        // was one sample ahead.
        a.line("out_" + a.id + " = s->int_" + a.id + ";");
        a.line("s->int_" + a.id + " = fmin(fmax(s->int_" + a.id + " + " + a.in[0] + " * dt, "
            + minVal + "), " + maxVal + ");");
    };
    // Unified variable-step codegen (roadmap 5.3). One scalar continuous state.
    // A bounded integrator joins too (width 1): the derivative holds at an
    // engaged limit and the state is clamped after the step. This is exact while
    // the state stays within its limits; only the crossing instant differs from
    // the simulator's zero-crossing localization by O(dt).
    t.continuousWidth = [](const BlockCodegenArgs&) -> int { return 1; };
    t.emitRk4 = [](const BlockCodegenArgs& a) {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        const double mn = bd.paramDouble(nflow::kMin, -std::numeric_limits<double>::infinity());
        const double mx = bd.paramDouble(nflow::kMax, std::numeric_limits<double>::infinity());
        const bool bounded = std::isfinite(mn) || std::isfinite(mx);
        const std::string off = std::to_string(a.stateOffset);
        const std::string x = "s->int_" + a.id;
        const std::string mnS = nflow::formatNumber(mn);
        const std::string mxS = nflow::formatNumber(mx);
        switch (a.rk4Op) {
        case Rk4Gather:
            a.line(a.rk4Arr + "[" + off + "] = " + x + ";");
            break;
        case Rk4Scatter:
            a.line(x + " = " + a.rk4Arr + "[" + off + "];");
            break;
        case Rk4Output:
            if (bounded) {
                a.line("out_" + a.id + " = fmin(fmax(" + x + ", " + mnS + "), " + mxS + ");");
            } else {
                a.line("out_" + a.id + " = " + x + ";");
            }
            break;
        case Rk4Deriv: {
            const std::string u = a.in[0];
            if (bounded) {
                a.line(a.rk4Arr + "[" + off + "] = (" + x + " >= " + mxS + " && " + u + " > 0.0) "
                    + "? 0.0 : ((" + x + " <= " + mnS + " && " + u + " < 0.0) ? 0.0 : " + u + ");");
            } else {
                a.line(a.rk4Arr + "[" + off + "] = " + u + ";");
            }
            break;
        }
        case Rk4Clamp:
            if (bounded) {
                a.line(x + " = fmin(fmax(" + x + ", " + mnS + "), " + mxS + ");");
            }
            break;
        case Rk4Crossing: {
            // Sim parity (integrator ZERO_CROSSING): x - min and x - max; an
            // infinite limit never crosses (constant surface 1.0).
            const std::string co = std::to_string(a.crossingOffset);
            const std::string co1 = std::to_string(a.crossingOffset + 1);
            a.line(a.rk4Arr + "[" + co + "] = "
                + (std::isfinite(mn) ? ("(" + x + ") - " + mnS) : std::string("1.0")) + ";");
            a.line(a.rk4Arr + "[" + co1 + "] = "
                + (std::isfinite(mx) ? ("(" + x + ") - " + mxS) : std::string("1.0")) + ";");
            break;
        }
        default:
            break;
        }
    };
    t.crossingCount = [](const BlockCodegenArgs& a) -> int {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        const double mn = bd.paramDouble(nflow::kMin, -std::numeric_limits<double>::infinity());
        const double mx = bd.paramDouble(nflow::kMax, std::numeric_limits<double>::infinity());
        return (std::isfinite(mn) || std::isfinite(mx)) ? 2 : 0;
    };
    return t;
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenRustIntegrator()
{
    BlockCodegenTemplate t;
    t.emitState = [](const BlockCodegenStateArgs& a) {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        double iv = bd.paramDouble(nflow::kInitial, 0.0);
        double mn = bd.paramDouble(nflow::kMin, -1e308);
        double mx = bd.paramDouble(nflow::kMax, 1e308);
        a.addState("int_" + a.id,
            "libm::fmin(libm::fmax(" + a.fmt(iv) + ", " + a.fmt(mn) + "), " + a.fmt(mx) + ")", "");
    };
    t.emitStep = [](const BlockCodegenArgs& a) {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        double mn = bd.paramDouble(nflow::kMin, -1e308);
        double mx = bd.paramDouble(nflow::kMax, 1e308);
        a.line("out_" + a.id + " = s.int_" + a.id + ";");
        a.line("s.int_" + a.id + " = libm::fmin(libm::fmax(s.int_" + a.id + " + dt * " + a.in[0]
            + ", " + a.fmt(mn) + "), " + a.fmt(mx) + ");");
    };
    // Unified variable-step codegen (roadmap 5.3), Rust backend: one scalar
    // continuous state x' = u; a bounded integrator joins too (hold-at-limit
    // derivative + post-step clamp).
    t.continuousWidth = [](const BlockCodegenArgs&) -> int { return 1; };
    t.emitRk4 = [](const BlockCodegenArgs& a) {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        const double mn = bd.paramDouble(nflow::kMin, -std::numeric_limits<double>::infinity());
        const double mx = bd.paramDouble(nflow::kMax, std::numeric_limits<double>::infinity());
        const bool bounded = std::isfinite(mn) || std::isfinite(mx);
        const std::string off = std::to_string(a.stateOffset);
        const std::string x = "s.int_" + a.id;
        // The Rust backend has no INFINITY literal, so an open bound uses the
        // 1e308 sentinel the rest of the Rust integrator emission already uses.
        const std::string mnS = a.fmt(std::isfinite(mn) ? mn : -1e308);
        const std::string mxS = a.fmt(std::isfinite(mx) ? mx : 1e308);
        switch (a.rk4Op) {
        case Rk4Gather:
            a.line(a.rk4Arr + "[" + off + "] = " + x + ";");
            break;
        case Rk4Scatter:
            a.line(x + " = " + a.rk4Arr + "[" + off + "];");
            break;
        case Rk4Output:
            if (bounded) {
                a.line("out_" + a.id + " = libm::fmin(libm::fmax(" + x + ", " + mnS + "), " + mxS
                    + ");");
            } else {
                a.line("out_" + a.id + " = " + x + ";");
            }
            break;
        case Rk4Deriv: {
            const std::string u = a.in[0];
            if (bounded) {
                a.line(a.rk4Arr + "[" + off + "] = if " + x + " >= " + mxS + " && " + u
                    + " > 0.0 { 0.0 } else if " + x + " <= " + mnS + " && " + u
                    + " < 0.0 { 0.0 } else { " + u + " };");
            } else {
                a.line(a.rk4Arr + "[" + off + "] = " + u + ";");
            }
            break;
        }
        case Rk4Clamp:
            if (bounded) {
                a.line(x + " = libm::fmin(libm::fmax(" + x + ", " + mnS + "), " + mxS + ");");
            }
            break;
        case Rk4Crossing: {
            // Sim parity: x - min and x - max; infinite limit = constant 1.0.
            const std::string co = std::to_string(a.crossingOffset);
            const std::string co1 = std::to_string(a.crossingOffset + 1);
            a.line(a.rk4Arr + "[" + co + "] = "
                + (std::isfinite(mn) ? ("(" + x + ") - " + mnS) : std::string("1.0")) + ";");
            a.line(a.rk4Arr + "[" + co1 + "] = "
                + (std::isfinite(mx) ? ("(" + x + ") - " + mxS) : std::string("1.0")) + ";");
            break;
        }
        default:
            break;
        }
    };
    t.crossingCount = [](const BlockCodegenArgs& a) -> int {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        const double mn = bd.paramDouble(nflow::kMin, -std::numeric_limits<double>::infinity());
        const double mx = bd.paramDouble(nflow::kMax, std::numeric_limits<double>::infinity());
        return (std::isfinite(mn) || std::isfinite(mx)) ? 2 : 0;
    };
    return t;
}
//=============================================================================

```

</details>

## 🔗 See also

[derivative](../../nflow_blocks/continuous/derivative.md), [stateSpace](../../nflow_blocks/continuous/stateSpace.md), [tf](../../nflow_blocks/continuous/tf.md), [pid](../../nflow_blocks/continuous/pid.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
