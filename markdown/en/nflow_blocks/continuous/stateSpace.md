# stateSpace

<p align="center">
<img src="stateSpace.svg"/>
</p>
Implements a scalar continuous state-space model.

## 📝 Syntax

- Block type: stateSpace

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description

Implements a scalar continuous state-space model.

| Field   | Value                     |
| ------- | ------------------------- |
| Module  | <code>nflow_blocks</code> |
| Library | Continuous blocks         |
| Type    | <code>stateSpace</code>   |
| Label   | State-Space               |

<b>Description</b>

Continuous-time state-space block defined by matrices A, B, C, D. Represents linear state-space dynamics.

<b>Ports</b>

<b>Input(s)</b>

| Port   | Role                              | Side | Position  |
| ------ | --------------------------------- | ---- | --------- |
| Port_1 | Numeric signal read by the block. | left | x=0, y=40 |

<b>Output(s)</b>

| Port   | Role                                  | Side  | Position    |
| ------ | ------------------------------------- | ----- | ----------- |
| Port_1 | Numeric signal produced by the block. | right | x=160, y=40 |

<b>Parameters</b>

| Parameter      | Default value |
| -------------- | ------------- |
| <code>A</code> | 1             |
| <code>B</code> | 1             |
| <code>C</code> | 1             |
| <code>D</code> | 0             |

<b>Inspector Keys</b>

These serialized keys are exposed by the block inspector.

- <code>A</code>
- <code>B</code>
- <code>C</code>
- <code>D</code>

<b>Block Characteristics</b>

| Field                     | Value                 |
| ------------------------- | --------------------- |
| Block type                | stateSpace            |
| Family                    | Continuous blocks     |
| Rendered size             | 160 x 80              |
| Phases                    | INIT, OUTPUT, UPDATE  |
| Direct feedthrough        | see Algorithms        |
| Internal state or history | yes                   |
| Signal data type          | double numeric values |

<b>Algorithms</b>

- INIT clears state and output.
- OUTPUT emits C\*x + D\*u. UPDATE advances x with Euler integration x += dt\*(A\*x + B\*u).

<b>Equation or Rule</b>
$$\frac{dx}{dt} = A x + B u,\quad y = C x + D u$$

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
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/continuous/stateSpace.cpp</code></summary>

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
#include <string>
#include <vector>
#include "continuous_blocks.hpp"
//=============================================================================
namespace Nelson {
namespace NFlow {
    //=============================================================================
    // Resolved MIMO state-space matrices (row-major) with their dimensions.
    // A is nx x nx, B is nx x nu, C is ny x nx, D is ny x nu. A scalar param
    // (SISO) yields nx = nu = ny = 1, identical to the historical behavior.
    struct SsMatrices
    {
        int nx = 1, nu = 1, ny = 1;
        std::vector<double> A, B, C, D; // row-major
    };
    //=============================================================================
    int
    stateSpaceStateCount(const Block& b, const ValMap& vars)
    {
        nflow::BlockDescriptor bd(b, vars);
        std::vector<double> a = bd.paramList(nflow::kA);
        if (a.empty()) {
            return 1;
        }
        // A is square nx x nx (row-major flat list).
        const int nx = (int)std::llround(std::sqrt((double)a.size()));
        return std::max(1, nx);
    }
    //=============================================================================
    // Output width (ny) for the dimension-propagation pass: ny = rows(C) =
    // len(C) / nx.
    int
    stateSpaceOutputWidth(const Block& b, const ValMap& vars)
    {
        nflow::BlockDescriptor bd(b, vars);
        const int nx = stateSpaceStateCount(b, vars);
        std::vector<double> c = bd.paramList(nflow::kC);
        if (c.empty() || nx <= 0) {
            return 1;
        }
        return std::max(1, (int)c.size() / nx);
    }
    //=============================================================================
    // Initial continuous state. A scalar broadcasts over the nx states, a list
    // gives them one by one, and an absent parameter keeps the historical all
    // zeros. Without it a state space could only ever start at the origin, so a
    // diagram that starts one away from it - an observer seeded off the plant,
    // say - had no way to say so.
    static std::vector<double>
    ssInitialState(const nflow::BlockDescriptor& bd, int nx)
    {
        std::vector<double> out((size_t)std::max(0, nx), 0.0);
        const std::vector<double> x0 = bd.paramList(nflow::kInitial);
        if (x0.empty()) {
            return out;
        }
        for (int i = 0; i < nx; ++i) {
            out[(size_t)i] = (i < (int)x0.size()) ? x0[(size_t)i] : x0.back();
        }
        return out;
    }
    //=============================================================================
    static SsMatrices
    buildSs(const Block& b, const ValMap& vars, int nu)
    {
        nflow::BlockDescriptor bd(b, vars);
        SsMatrices m;
        m.A = bd.paramList(nflow::kA);
        m.B = bd.paramList(nflow::kB);
        m.C = bd.paramList(nflow::kC);
        m.D = bd.paramList(nflow::kD);
        if (m.A.empty()) {
            m.A = { 0.0 };
        }
        m.nx = std::max(1, (int)std::llround(std::sqrt((double)m.A.size())));
        m.nu = std::max(1, nu);
        m.ny = m.C.empty() ? 1 : std::max(1, (int)m.C.size() / m.nx);
        // Pad missing matrices with zeros so index math never overruns.
        m.A.resize((size_t)m.nx * m.nx, 0.0);
        m.B.resize((size_t)m.nx * m.nu, 0.0);
        m.C.resize((size_t)m.ny * m.nx, 0.0);
        m.D.resize((size_t)m.ny * m.nu, 0.0);
        return m;
    }
    //=============================================================================
    // y = C*x + D*u  (row-major matrices, x length nx, u length nu).
    static void
    ssOutput(const SsMatrices& m, const double* x, const SigView& u, double* y)
    {
        for (int i = 0; i < m.ny; ++i) {
            double acc = 0.0;
            for (int j = 0; j < m.nx; ++j) {
                acc += m.C[(size_t)i * m.nx + j] * x[j];
            }
            for (int j = 0; j < m.nu; ++j) {
                acc += m.D[(size_t)i * m.nu + j] * sigAt(u, j);
            }
            y[i] = acc;
        }
    }
    //=============================================================================
    // y = C*x + D*u with u from a raw latch (nullptr = zeros). Fixed-step
    // OUTPUT runs before the algebraic wave recomputes this step's sources,
    // so the D feedthrough reads the PREVIOUS step's inputs latched by UPDATE.
    static void
    ssOutputU(const SsMatrices& m, const double* x, const double* u, double* y)
    {
        for (int i = 0; i < m.ny; ++i) {
            double acc = 0.0;
            for (int j = 0; j < m.nx; ++j) {
                acc += m.C[(size_t)i * m.nx + j] * x[j];
            }
            for (int j = 0; j < m.nu; ++j) {
                acc += m.D[(size_t)i * m.nu + j] * (u ? u[j] : 0.0);
            }
            y[i] = acc;
        }
    }
    //=============================================================================
    // xdot = A*x + B*u.
    static void
    ssDeriv(const SsMatrices& m, const double* x, const SigView& u, double* xdot)
    {
        for (int i = 0; i < m.nx; ++i) {
            double acc = 0.0;
            for (int j = 0; j < m.nx; ++j) {
                acc += m.A[(size_t)i * m.nx + j] * x[j];
            }
            for (int j = 0; j < m.nu; ++j) {
                acc += m.B[(size_t)i * m.nu + j] * sigAt(u, j);
            }
            xdot[i] = acc;
        }
    }
    //=============================================================================
} // namespace NFlow
} // namespace Nelson
//=============================================================================
bool
Nelson::NFlow::handleStateSpace(SimCtx& ctx, const Block& b, Phase phase)
{
    auto& st = getState(ctx, b.nid);
    const int nu = numInputs(ctx, b.nid) > 0 ? b.inWidth(0) : 1;
    SsMatrices m = buildSs(b, ctx.variables, nu);

    if (phase == Phase::INIT) {
        // x in [0, nx), then the input latch in [nx, nx+nu); the continuous
        // seeding only reads the first xLength (= nx) entries.
        st.vec.assign((size_t)m.nx + m.nu, 0.0);
        const std::vector<double> x0
            = ssInitialState(nflow::BlockDescriptor(b, ctx.variables), m.nx);
        for (int i = 0; i < m.nx && i < (int)x0.size(); ++i) {
            st.vec[(size_t)i] = x0[(size_t)i];
        }
        st.scalar = 0.0;
        st.output = 0.0;
        return false;
    }
    if (phase == Phase::OUTPUT) {
        SigView u = getInputSig(ctx, b.nid, 0);
        double* xs = blockX(ctx, b.nid);
        std::vector<double> y(m.ny, 0.0);
        if (xs) {
            // Variable-step minor step: y = C*x + D*u from the scattered state.
            ssOutput(m, xs, u, y.data());
        } else if ((int)st.vec.size() >= m.nx) {
            // Fixed-step path: latched state, and D reads the previous step's
            // latched inputs (this phase runs before the algebraic wave, so
            // the live input slots still hold this step's reset values).
            const double* ulat
                = ((int)st.vec.size() >= m.nx + m.nu) ? (st.vec.data() + m.nx) : nullptr;
            ssOutputU(m, st.vec.data(), ulat, y.data());
        }
        double* out = outputSlice(ctx, b.nid, 0);
        // Clamp to the resolved port width (defensive: a hand-written diagram
        // declaring extra output ports must not overrun the port-0 buffer).
        const int wlim = std::min(m.ny, std::max(1, b.outWidth(0)));
        for (int i = 0; i < wlim; ++i) {
            out[i] = y[i];
        }
        return false;
    }
    if (phase == Phase::ALGEBRAIC) {
        // Direct feedthrough (D != 0): re-emit y = C*x + D*u with the CURRENT
        // inputs so downstream algebraic consumers see the live D term (the
        // OUTPUT phase ran before this step's sources settled; a D != 0 loop
        // becomes a real algebraic cycle the Gauss-Seidel pass relaxes).
        // No-op when D is all zero; the historical scheduling stays intact.
        bool anyD = false;
        for (double v : m.D) {
            if (v != 0.0) {
                anyD = true;
                break;
            }
        }
        if (!anyD) {
            return false;
        }
        SigView u = getInputSig(ctx, b.nid, 0);
        double* xs = blockX(ctx, b.nid);
        const double* x
            = xs != nullptr ? xs : (((int)st.vec.size() >= m.nx) ? st.vec.data() : nullptr);
        if (x == nullptr) {
            return false;
        }
        std::vector<double> y(m.ny, 0.0);
        ssOutput(m, x, u, y.data());
        double* out = outputSlice(ctx, b.nid, 0);
        const int wlim = std::min(m.ny, std::max(1, b.outWidth(0)));
        bool changed = false;
        for (int i = 0; i < wlim; ++i) {
            if (out[i] != y[i]) {
                out[i] = y[i];
                changed = true;
            }
        }
        return changed;
    }
    if (phase == Phase::UPDATE) {
        // Fixed-step Euler on the state (current inputs), then latch u for
        // the next step's OUTPUT feedthrough.
        if ((int)st.vec.size() < m.nx + m.nu) {
            st.vec.resize((size_t)m.nx + m.nu, 0.0);
        }
        SigView u = getInputSig(ctx, b.nid, 0);
        std::vector<double> xdot(m.nx, 0.0);
        ssDeriv(m, st.vec.data(), u, xdot.data());
        for (int i = 0; i < m.nx; ++i) {
            st.vec[i] += ctx.dt * xdot[i];
        }
        for (int j = 0; j < m.nu; ++j) {
            st.vec[(size_t)m.nx + j] = sigAt(u, j);
        }
        return false;
    }
    if (phase == Phase::DERIVATIVE) {
        double* xdot = blockXdot(ctx, b.nid);
        if (xdot) {
            double* xs = blockX(ctx, b.nid);
            const double* x = xs ? xs : st.vec.data();
            SigView u = getInputSig(ctx, b.nid, 0);
            ssDeriv(m, x, u, xdot);
        }
        return false;
    }
    return false;
}
//=============================================================================
namespace Nelson {
namespace NFlow {
    namespace {
        // Resolved matrices for the code generator (row-major, zero-padded):
        // nu = wired scalar input ports (the vector expansion turns the nu-wide
        // input wire into nu scalar ports, mirroring the runtime's wired-width
        // rule), ny = rows of C. A multi-STATE scalar-I/O system (nx>1,
        // nu=ny=1, what a reduced linear island yields) and a true MIMO both
        // join the RK4 seam; a MIMO emits one output variable per row
        // (out_<id>, out_<id>_p1, ...).
        struct SsCg
        {
            int nx = 1, nu = 1, ny = 1;
            std::vector<double> A, B, C, D;
        };
        static SsCg
        buildSsCg(const BlockCodegenArgs& a)
        {
            nflow::BlockDescriptor bd(*a.block, *a.variables);
            SsCg s;
            s.A = bd.paramList(nflow::kA);
            s.B = bd.paramList(nflow::kB);
            s.C = bd.paramList(nflow::kC);
            s.D = bd.paramList(nflow::kD);
            s.nx = s.A.empty() ? 1 : (int)std::llround(std::sqrt((double)s.A.size()));
            if (s.nx < 1) {
                s.nx = 1;
            }
            // Declared port count (the expansion declares one scalar port per
            // input element); a declared-but-unwired trailing port still
            // counts, its expression falls back to 0.0.
            int declIn = 0;
            if (a.block && a.block->contains(nflow::kInputs)
                && (*a.block)[nflow::kInputs].is_number()) {
                declIn = (*a.block)[nflow::kInputs].get<int>();
            }
            s.nu = std::max(1, std::max(declIn, (int)a.inputIds.size()));
            s.ny = s.C.empty() ? 1 : std::max(1, (int)s.C.size() / s.nx);
            s.A.resize((size_t)s.nx * s.nx, 0.0);
            s.B.resize((size_t)s.nx * s.nu, 0.0);
            s.C.resize((size_t)s.ny * s.nx, 0.0);
            s.D.resize((size_t)s.ny * s.nu, 0.0);
            return s;
        }
        // State field name: SISO keeps the historical single field so its
        // generated code stays byte-identical; nx>1 uses per-state fields.
        static std::string
        ssName(const std::string& id, int i, int nx, const std::string& pfx)
        {
            return nx == 1 ? (pfx + "ss_x_" + id) : (pfx + "ss_x_" + id + "_" + std::to_string(i));
        }
        // Output variable of row r (port r): out_<id>, then out_<id>_p<r>.
        static std::string
        ssOutName(const std::string& id, int r)
        {
            return r > 0 ? ("out_" + id + "_p" + std::to_string(r)) : ("out_" + id);
        }
        // Current input expression of column k ("0.0" for a declared but
        // unwired trailing port beyond the generator's expression list).
        static std::string
        ssUin(const BlockCodegenArgs& a, int k)
        {
            return ((size_t)k < a.in.size()) ? a.in[(size_t)k] : std::string("0.0");
        }
        // Latched-input state field of column k (MIMO fixed-step outputs).
        static std::string
        ssUlatch(const std::string& id, int k, const std::string& pfx)
        {
            return pfx + "ss_u_" + id + "_" + std::to_string(k);
        }
        // True when any D entry is nonzero: the runtime then re-emits the
        // output during ALGEBRAIC with the CURRENT inputs (real feedthrough),
        // so the generated output must read the current expressions too.
        static bool
        ssAnyD(const SsCg& s)
        {
            for (double v : s.D) {
                if (v != 0.0) {
                    return true;
                }
            }
            return false;
        }
        // Row r of y = C*x + D*u (all terms, so nx>1 is never empty); `u`
        // supplies the per-column input expression (current or latched).
        static std::string
        ssOutputExpr(const BlockCodegenArgs& a, const SsCg& s, int r, const std::string& pfx,
            const std::function<std::string(int)>& u)
        {
            std::string e;
            for (int j = 0; j < s.nx; ++j) {
                e += (j ? " + " : "") + a.fmt(s.C[(size_t)r * s.nx + j]) + " * "
                    + ssName(a.id, j, s.nx, pfx);
            }
            for (int k = 0; k < s.nu; ++k) {
                e += " + " + a.fmt(s.D[(size_t)r * s.nu + k]) + " * " + u(k);
            }
            return e;
        }
        // xdot_i = A row i * x + B row i * u (current inputs).
        static std::string
        ssDerivExpr(const BlockCodegenArgs& a, const SsCg& s, int i, const std::string& pfx)
        {
            std::string e;
            for (int j = 0; j < s.nx; ++j) {
                e += (j ? " + " : "") + a.fmt(s.A[(size_t)i * s.nx + j]) + " * "
                    + ssName(a.id, j, s.nx, pfx);
            }
            for (int k = 0; k < s.nu; ++k) {
                e += " + " + a.fmt(s.B[(size_t)i * s.nu + k]) + " * " + ssUin(a, k);
            }
            return e;
        }
    } // namespace
} // namespace NFlow
} // namespace Nelson
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenCStateSpace()
{
    BlockCodegenTemplate t;
    t.emitState = [](const BlockCodegenStateArgs& a) {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        std::vector<double> A = bd.paramList(nflow::kA);
        int nx = A.empty() ? 1 : (int)std::llround(std::sqrt((double)A.size()));
        // Seed the emitted state from InitialCondition, as INIT does, so the
        // generated program starts where the simulation starts.
        const std::vector<double> x0 = ssInitialState(bd, nx);
        if (nx <= 1) {
            a.addState("ss_x_" + a.id, x0.empty() ? "" : a.fmt(x0[0]), "");
        } else {
            for (int i = 0; i < nx; ++i) {
                a.addState("ss_x_" + a.id + "_" + std::to_string(i),
                    (i < (int)x0.size()) ? a.fmt(x0[(size_t)i]) : "", "");
            }
        }
        // Fixed-step outputs read the LATCHED previous-step inputs (the
        // runtime emits OUTPUT before the algebraic wave recomputes sources),
        // for every form, SISO included.
        const int nu = std::max(1,
            (a.block->contains(nflow::kInputs) && (*a.block)[nflow::kInputs].is_number())
                ? (*a.block)[nflow::kInputs].get<int>()
                : 1);
        // Latch fields only when D is all zero: a live D reads the current
        // input expressions instead (runtime ALGEBRAIC re-run), so the
        // latches would be dead weight.
        std::vector<double> Dv = bd.paramList(nflow::kD);
        bool anyDv = false;
        for (double v : Dv) {
            if (v != 0.0) {
                anyDv = true;
                break;
            }
        }
        for (int k = 0; !anyDv && k < nu; ++k) {
            a.addState("ss_u_" + a.id + "_" + std::to_string(k), "", "");
        }
    };
    t.emitStep = [](const BlockCodegenArgs& a) {
        SsCg s = buildSsCg(a);
        // Forward Euler, runtime parity for every form: report every output
        // row at the PRE-step state, then advance with the current inputs.
        // The D term reads the CURRENT inputs when D != 0 (the runtime
        // re-emits during ALGEBRAIC, real feedthrough) and the latched
        // previous-step inputs otherwise (OUTPUT-before-ALGEBRAIC parity).
        const bool liveD = ssAnyD(s);
        auto uOut = [&](int k) { return liveD ? ssUin(a, k) : ssUlatch(a.id, k, "s->"); };
        for (int r = 0; r < s.ny; ++r) {
            a.line(ssOutName(a.id, r) + " = " + ssOutputExpr(a, s, r, "s->", uOut) + ";");
        }
        for (int i = 0; i < s.nx; ++i) {
            a.line("double __ssd_" + a.id + "_" + std::to_string(i) + " = "
                + ssDerivExpr(a, s, i, "s->") + ";");
        }
        for (int i = 0; i < s.nx; ++i) {
            a.line(ssName(a.id, i, s.nx, "s->") + " += dt * __ssd_" + a.id + "_" + std::to_string(i)
                + ";");
        }
        if (!liveD) {
            for (int k = 0; k < s.nu; ++k) {
                a.line(ssUlatch(a.id, k, "s->") + " = " + ssUin(a, k) + ";");
            }
        }
    };
    // Unified variable-step codegen: nx scalar continuous states (MIMO included).
    t.continuousWidth = [](const BlockCodegenArgs& a) -> int { return buildSsCg(a).nx; };
    // x' = A*x + B*u, y = C*x + D*u over the scattered state(s).
    t.emitRk4 = [](const BlockCodegenArgs& a) {
        SsCg s = buildSsCg(a);
        switch (a.rk4Op) {
        case Rk4Gather:
            for (int i = 0; i < s.nx; ++i) {
                a.line(a.rk4Arr + "[" + std::to_string(a.stateOffset + i)
                    + "] = " + ssName(a.id, i, s.nx, "s->") + ";");
            }
            break;
        case Rk4Scatter:
            for (int i = 0; i < s.nx; ++i) {
                a.line(ssName(a.id, i, s.nx, "s->") + " = " + a.rk4Arr + "["
                    + std::to_string(a.stateOffset + i) + "];");
            }
            break;
        case Rk4Output:
            // D != 0: the runtime's per-stage ALGEBRAIC re-run delivers the
            // CURRENT stage inputs to the D term; read the live expressions.
            // D == 0: the latch fields (never written on the RK4 path) stay
            // 0.0, reproducing the zeroed-slot OUTPUT exactly (and the D term
            // is zero anyway).
            {
                const bool liveD = ssAnyD(s);
                for (int r = 0; r < s.ny; ++r) {
                    a.line(ssOutName(a.id, r) + " = " + ssOutputExpr(a, s, r, "s->", [&](int k) {
                        return liveD ? ssUin(a, k) : ssUlatch(a.id, k, "s->");
                    }) + ";");
                }
            }
            break;
        case Rk4Deriv:
            for (int i = 0; i < s.nx; ++i) {
                a.line(a.rk4Arr + "[" + std::to_string(a.stateOffset + i)
                    + "] = " + ssDerivExpr(a, s, i, "s->") + ";");
            }
            break;
        default:
            break;
        }
    };
    return t;
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenRustStateSpace()
{
    BlockCodegenTemplate t;
    t.emitState = [](const BlockCodegenStateArgs& a) {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        std::vector<double> A = bd.paramList(nflow::kA);
        int nx = A.empty() ? 1 : (int)std::llround(std::sqrt((double)A.size()));
        // Seed the emitted state from InitialCondition, as INIT does, so the
        // generated program starts where the simulation starts.
        const std::vector<double> x0 = ssInitialState(bd, nx);
        if (nx <= 1) {
            a.addState("ss_x_" + a.id, x0.empty() ? "" : a.fmt(x0[0]), "");
        } else {
            for (int i = 0; i < nx; ++i) {
                a.addState("ss_x_" + a.id + "_" + std::to_string(i),
                    (i < (int)x0.size()) ? a.fmt(x0[(size_t)i]) : "", "");
            }
        }
        const int nu = std::max(1,
            (a.block->contains(nflow::kInputs) && (*a.block)[nflow::kInputs].is_number())
                ? (*a.block)[nflow::kInputs].get<int>()
                : 1);
        // Latch fields only when D is all zero: a live D reads the current
        // input expressions instead (runtime ALGEBRAIC re-run), so the
        // latches would be dead weight.
        std::vector<double> Dv = bd.paramList(nflow::kD);
        bool anyDv = false;
        for (double v : Dv) {
            if (v != 0.0) {
                anyDv = true;
                break;
            }
        }
        for (int k = 0; !anyDv && k < nu; ++k) {
            a.addState("ss_u_" + a.id + "_" + std::to_string(k), "", "");
        }
    };
    t.emitStep = [](const BlockCodegenArgs& a) {
        SsCg s = buildSsCg(a);
        const bool liveD = ssAnyD(s);
        auto uOut = [&](int k) { return liveD ? ssUin(a, k) : ssUlatch(a.id, k, "s."); };
        for (int r = 0; r < s.ny; ++r) {
            a.line(ssOutName(a.id, r) + " = " + ssOutputExpr(a, s, r, "s.", uOut) + ";");
        }
        for (int i = 0; i < s.nx; ++i) {
            a.line("let __ssd_" + a.id + "_" + std::to_string(i) + " = "
                + ssDerivExpr(a, s, i, "s.") + ";");
        }
        for (int i = 0; i < s.nx; ++i) {
            a.line(ssName(a.id, i, s.nx, "s.") + " += dt * __ssd_" + a.id + "_" + std::to_string(i)
                + ";");
        }
        if (!liveD) {
            for (int k = 0; k < s.nu; ++k) {
                a.line(ssUlatch(a.id, k, "s.") + " = " + ssUin(a, k) + ";");
            }
        }
    };
    t.continuousWidth = [](const BlockCodegenArgs& a) -> int { return buildSsCg(a).nx; };
    t.emitRk4 = [](const BlockCodegenArgs& a) {
        SsCg s = buildSsCg(a);
        switch (a.rk4Op) {
        case Rk4Gather:
            for (int i = 0; i < s.nx; ++i) {
                a.line(a.rk4Arr + "[" + std::to_string(a.stateOffset + i)
                    + "] = " + ssName(a.id, i, s.nx, "s.") + ";");
            }
            break;
        case Rk4Scatter:
            for (int i = 0; i < s.nx; ++i) {
                a.line(ssName(a.id, i, s.nx, "s.") + " = " + a.rk4Arr + "["
                    + std::to_string(a.stateOffset + i) + "];");
            }
            break;
        case Rk4Output:
            // See the C emitter: live inputs when D != 0 (per-stage ALGEBRAIC
            // re-run), never-written latch fields (0.0) otherwise.
            {
                const bool liveD = ssAnyD(s);
                for (int r = 0; r < s.ny; ++r) {
                    a.line(ssOutName(a.id, r) + " = " + ssOutputExpr(a, s, r, "s.", [&](int k) {
                        return liveD ? ssUin(a, k) : ssUlatch(a.id, k, "s.");
                    }) + ";");
                }
            }
            break;
        case Rk4Deriv:
            for (int i = 0; i < s.nx; ++i) {
                a.line(a.rk4Arr + "[" + std::to_string(a.stateOffset + i)
                    + "] = " + ssDerivExpr(a, s, i, "s.") + ";");
            }
            break;
        default:
            break;
        }
    };
    return t;
}
//=============================================================================

```

</details>

## 🔗 See also

[tf](../../nflow_blocks/continuous/tf.md), [dstateSpace](../../nflow_blocks/discrete/dstateSpace.md), [integrator](../../nflow_blocks/continuous/integrator.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
