# tf

<p align="center">
<img src="tf.svg"/>
</p>
Implemente une approximation de fonction de transfert continue.

## 📝 Syntaxe

- Block type: tf

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description

Implemente une approximation de fonction de transfert continue.

| Champ        | Valeur                    |
| ------------ | ------------------------- |
| Module       | <code>nflow_blocks</code> |
| Bibliotheque | Blocs continus            |
| Type         | <code>tf</code>           |
| Libelle      | Transfer Fn               |

<b>Description</b>

Implemente une approximation de fonction de transfert continue.

<b>Ports</b>

<b>Entree(s)</b>

| Port   | Role                             | Cote | Position  |
| ------ | -------------------------------- | ---- | --------- |
| Port_1 | Signal numerique lu par le bloc. | left | x=0, y=40 |

<b>Sortie(s)</b>

| Port   | Role                                  | Cote  | Position   |
| ------ | ------------------------------------- | ----- | ---------- |
| Port_1 | Signal numerique produit par le bloc. | right | x=85, y=40 |

<b>Parametres</b>

| Parametre        | Valeur par defaut |
| ---------------- | ----------------- |
| <code>num</code> | [3]               |
| <code>den</code> | [1, 3]            |

<b>Cles de l inspecteur</b>

Ces cles serialisees sont exposees par l inspecteur du bloc.

- <code>num</code>
- <code>den</code>

<b>Caracteristiques du bloc</b>

| Champ                      | Valeur                          |
| -------------------------- | ------------------------------- |
| Type de bloc               | tf                              |
| Famille                    | Blocs continus                  |
| Taille graphique           | 85 x 80                         |
| Phases                     | INIT, OUTPUT, ALGEBRAIC, UPDATE |
| Traversee directe          | oui                             |
| Etat ou historique interne | oui                             |
| Type de donnees signaux    | valeurs numeriques double       |

<b>Algorithmes</b>

- INIT normalise les coefficients et efface les historiques.
- OUTPUT emet la sortie directe/memorisee; ALGEBRAIC est present pour la resolution avec transmission directe.
- UPDATE avance les historiques internes avec l entree et dt.

<b>Equation ou regle</b>
$$y \approx \frac{num(s)}{den(s)}\,u$$

<b>Capacites et limites</b>

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

Generation de code : prise en charge pour C et Rust.

<b>Sources d implementation</b>

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
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/continuous/tf.cpp</code></summary>

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
#include "NFlowCodegenPolynomial.hpp"
#include "NFlowCodegenHelpers.hpp"
#include <cmath>
#include <algorithm>
#include "continuous_blocks.hpp"
//=============================================================================
bool
Nelson::NFlow::handleTf(SimCtx& ctx, const Block& b, Phase phase)
{
    auto& st = getState(ctx, b.nid);
    const int w = std::max(1, outputWidth(ctx, b.nid, 0));
    // Vector tf: each element is an independent SISO transfer function with the
    // SAME numerator/denominator. st.xHist (A_last row) and st.yHist (C vector)
    // have length n and are shared; st.tfState is a flat [w * n] state array,
    // element e occupying [e*n, e*n+n).
    if (phase == Phase::INIT) {
        int n = 0;
        std::vector<double> state1;
        bool ok = buildTfState(b.params.value(nflow::kNum, json::array()),
            b.params.value(nflow::kDen, json::array()), st.xHist, st.yHist, st.tfD, state1, n,
            ctx.variables);
        if (!ok) {
            st.tfState.clear();
            st.xHist.clear();
            st.yHist.clear();
            st.tfD = 0.0;
        } else {
            st.tfState.assign((size_t)n * w, 0.0); // n==0 -> empty (pure gain)
        }
        st.output = 0.0;
        return false;
    }
    const int n = (int)st.xHist.size(); // per-element state order

    if (phase == Phase::OUTPUT) {
        SigView u = getInputSig(ctx, b.nid, 0);
        double* xs = blockX(ctx, b.nid);
        double* y = outputSlice(ctx, b.nid, 0);
        std::vector<double> x(std::max(1, n));
        for (int e = 0; e < w; ++e) {
            const double inp = sigAt(u, e);
            if (n == 0) {
                y[e] = st.tfD * inp;
                continue;
            }
            const double* src = xs ? (xs + (size_t)e * n) : (st.tfState.data() + (size_t)e * n);
            for (int i = 0; i < n; ++i) {
                x[i] = src[i];
            }
            x.resize(n);
            y[e] = tfOutput(st.yHist, x, st.tfD, inp);
        }
        return false;
    }
    if (phase == Phase::ALGEBRAIC) {
        if (n != 0) {
            return false; // has state: handled in OUTPUT/UPDATE
        }
        // Pure gain (n == 0): element-wise D*u.
        SigView u = getInputSig(ctx, b.nid, 0);
        return emitElementwise(ctx, b.nid, [&](int e) { return st.tfD * sigAt(u, e); });
    }
    if (phase == Phase::UPDATE) {
        if (n == 0) {
            return false;
        }
        SigView u = getInputSig(ctx, b.nid, 0);
        std::vector<double> slice(n);
        for (int e = 0; e < w; ++e) {
            double* base = st.tfState.data() + (size_t)e * n;
            for (int i = 0; i < n; ++i) {
                slice[i] = base[i];
            }
            std::vector<double> next = tfRK4(st.xHist, slice, sigAt(u, e), ctx.dt);
            for (int i = 0; i < n && i < (int)next.size(); ++i) {
                base[i] = next[i];
            }
        }
        return false;
    }
    if (phase == Phase::DERIVATIVE) {
        // Controller-canonical-form derivative; st.xHist holds the companion
        // last row. Shares tfDerivative() with tfRK4 so the two cannot drift.
        double* xdot = blockXdot(ctx, b.nid);
        if (xdot && n != 0) {
            double* xs = blockX(ctx, b.nid);
            SigView u = getInputSig(ctx, b.nid, 0);
            std::vector<double> x(n), dx;
            for (int e = 0; e < w; ++e) {
                const double* src = xs ? (xs + (size_t)e * n) : (st.tfState.data() + (size_t)e * n);
                for (int i = 0; i < n; ++i) {
                    x[i] = src[i];
                }
                tfDerivative(st.xHist, x, sigAt(u, e), dx);
                for (int i = 0; i < n && i < (int)dx.size(); ++i) {
                    xdot[(size_t)e * n + i] = dx[i];
                }
            }
        }
        return false;
    }
    return false;
}
//=============================================================================
// Continuous state order n of a transfer function: (trimmed denominator degree).
// n == 0 is a pure algebraic gain (y = D*u, no state). Shared by the RK4 codegen
// layout (roadmap 5.3) so it agrees with the companion form built in emitShared.
static int
tfStateOrder(const std::vector<double>& denIn)
{
    std::vector<double> den = denIn.empty() ? std::vector<double> { 1.0 } : denIn;
    size_t i = 0;
    while (i + 1 < den.size() && std::abs(den[i]) < 1e-12) {
        ++i;
    }
    int n = static_cast<int>(den.size() - i) - 1;
    return n <= 0 ? 0 : n;
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenCTf()
{
    BlockCodegenTemplate t;
    t.sharedPriority = 1;
    t.emitState = [](const BlockCodegenStateArgs& a) {
        a.declState("double tf_" + a.id + "[MAX_DIM];");
        a.addInit("  for (int i = 0; i < MAX_DIM; i++) s->tf_" + a.id + "[i] = 0.0;");
    };
    t.emitStep = [](const BlockCodegenArgs& a) {
        a.line("out_" + a.id + " = tf_step(&tf_params_" + a.id + ", s->tf_" + a.id + ", " + a.in[0]
            + ", dt);");
    };
    // Unified variable-step codegen (roadmap 5.3): a tf contributes n continuous
    // states (companion form). n == 0 is a pure gain (algebraic, no state): safe
    // to keep its emitStep in the rhs() body, so report 0, not a fallback.
    t.continuousWidth = [](const BlockCodegenArgs& a) -> int {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        return tfStateOrder(bd.paramList(nflow::kDen));
    };
    // Output y = D*u + C.x and derivative x' = A_companion.x + B.u, reusing the
    // shared tf_out / tf_deriv helpers over the scattered state s->tf_<id>.
    t.emitRk4 = [](const BlockCodegenArgs& a) {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        const int n = tfStateOrder(bd.paramList(nflow::kDen));
        const std::string off = std::to_string(a.stateOffset);
        const std::string nStr = std::to_string(n);
        switch (a.rk4Op) {
        case Rk4Gather:
            a.line("for (int __i = 0; __i < " + nStr + "; ++__i) " + a.rk4Arr + "[" + off
                + " + __i] = s->tf_" + a.id + "[__i];");
            break;
        case Rk4Scatter:
            a.line("for (int __i = 0; __i < " + nStr + "; ++__i) s->tf_" + a.id
                + "[__i] = " + a.rk4Arr + "[" + off + " + __i];");
            break;
        case Rk4Output:
            a.line("out_" + a.id + " = tf_out(&tf_params_" + a.id + ", s->tf_" + a.id + ", "
                + a.in[0] + ");");
            break;
        case Rk4Deriv:
            a.line("tf_deriv(tf_params_" + a.id + ".n, tf_params_" + a.id + ".A, s->tf_" + a.id
                + ", " + a.in[0] + ", &" + a.rk4Arr + "[" + off + "]);");
            break;
        default:
            break;
        }
    };
    t.emitShared = [](const BlockCodegenStateArgs& a) {
        // Companion-form RK4 stepper matching the interpreter (y = D*u + C.x,
        // then classical RK4 on x' = A_companion.x + B.u). Replaces the former
        // Tustin direct-form discretization so generated code and interactive
        // simulation agree numerically.
        auto companion = [](const std::vector<double>& numIn, const std::vector<double>& denIn,
                             int& n, double& D, std::vector<double>& C, std::vector<double>& A) {
            auto trim = [](std::vector<double> v) {
                size_t i = 0;
                while (i + 1 < v.size() && std::abs(v[i]) < 1e-12) {
                    ++i;
                }
                return std::vector<double>(v.begin() + i, v.end());
            };
            std::vector<double> num = trim(numIn.empty() ? std::vector<double> { 0.0 } : numIn);
            std::vector<double> den = trim(denIn.empty() ? std::vector<double> { 1.0 } : denIn);
            double a0 = den[0];
            for (double& v : den) {
                v /= a0;
            }
            for (double& v : num) {
                v /= a0;
            }
            n = static_cast<int>(den.size()) - 1;
            if (n <= 0) {
                n = 0;
                D = num.empty() ? 0.0 : num[0];
                C.clear();
                A.clear();
                return;
            }
            while (static_cast<int>(num.size()) < n + 1) {
                num.insert(num.begin(), 0.0);
            }
            std::vector<double> aTail(den.begin() + 1, den.end());
            D = num[0];
            C.assign(n, 0.0);
            for (int i = 0; i < n; ++i) {
                C[n - 1 - i] = num[i + 1] - aTail[i] * D;
            }
            A.assign(n, 0.0);
            for (int j = 0; j < n; ++j) {
                A[j] = -aTail[n - 1 - j];
            }
        };

        int maxTfOrder = 1;
        for (const auto& b : *a.allBlocks) {
            if (nflow::jstr(b, nflow::kType) != "tf") {
                continue;
            }
            nflow::BlockDescriptor tbd(b, *a.variables);
            int tn = 0;
            double tD = 0.0;
            std::vector<double> tC, tA;
            companion(tbd.paramList(nflow::kNum), tbd.paramList(nflow::kDen), tn, tD, tC, tA);
            maxTfOrder = std::max(maxTfOrder, tn);
        }
        if (a.once("tf:typedefs")) {
            a.addConst("#define MAX_DIM " + std::to_string(maxTfOrder));
            a.addConst("typedef struct { int n; double D; double C[MAX_DIM]; double A[MAX_DIM]; } "
                       "TfParams;");
            a.addHelper("static void tf_deriv(int n, const double* A, const double* x, double u, "
                        "double* dx) {");
            a.addHelper("  for (int i = 0; i < n - 1; i++) dx[i] = x[i + 1];");
            a.addHelper("  double last = u;");
            a.addHelper("  for (int j = 0; j < n; j++) last += A[j] * x[j];");
            a.addHelper("  dx[n - 1] = last;");
            a.addHelper("}");
            // Output-only y = D*u + C.x (no state advance): used by the unified
            // RK4 rhs() so the global stepper owns the integration.
            a.addHelper("static double tf_out(const TfParams* p, const double* x, double u) {");
            a.addHelper("  double y = p->D * u;");
            a.addHelper("  for (int i = 0; i < p->n; i++) y += p->C[i] * x[i];");
            a.addHelper("  return y;");
            a.addHelper("}");
            a.addHelper(
                "static double tf_step(const TfParams* p, double* x, double u, double dt) {");
            a.addHelper("  const int n = p->n;");
            a.addHelper("  double y = p->D * u;");
            a.addHelper("  for (int i = 0; i < n; i++) y += p->C[i] * x[i];");
            a.addHelper("  if (n > 0) {");
            a.addHelper(
                "    double k1[MAX_DIM], k2[MAX_DIM], k3[MAX_DIM], k4[MAX_DIM], tmp[MAX_DIM];");
            a.addHelper("    tf_deriv(n, p->A, x, u, k1);");
            a.addHelper("    for (int i = 0; i < n; i++) tmp[i] = x[i] + 0.5 * dt * k1[i];");
            a.addHelper("    tf_deriv(n, p->A, tmp, u, k2);");
            a.addHelper("    for (int i = 0; i < n; i++) tmp[i] = x[i] + 0.5 * dt * k2[i];");
            a.addHelper("    tf_deriv(n, p->A, tmp, u, k3);");
            a.addHelper("    for (int i = 0; i < n; i++) tmp[i] = x[i] + dt * k3[i];");
            a.addHelper("    tf_deriv(n, p->A, tmp, u, k4);");
            a.addHelper("    for (int i = 0; i < n; i++)");
            a.addHelper("      x[i] += (dt / 6.0) * (k1[i] + 2.0 * k2[i] + 2.0 * k3[i] + k4[i]);");
            a.addHelper("  }");
            a.addHelper("  return y;");
            a.addHelper("}");
            a.addHelper("");
        }
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        int n = 0;
        double D = 0.0;
        std::vector<double> C, A;
        companion(bd.paramList(nflow::kNum), bd.paramList(nflow::kDen), n, D, C, A);
        std::vector<double> cPad(maxTfOrder, 0.0), aPad(maxTfOrder, 0.0);
        for (int i = 0; i < n; ++i) {
            cPad[i] = C[i];
            aPad[i] = A[i];
        }
        std::string cStr, aStr;
        for (int i = 0; i < maxTfOrder; ++i) {
            if (i > 0) {
                cStr += ", ";
                aStr += ", ";
            }
            cStr += a.fmt(cPad[i]);
            aStr += a.fmt(aPad[i]);
        }
        a.addConst("static const TfParams tf_params_" + a.id + " = { " + std::to_string(n) + ", "
            + a.fmt(D) + ", {" + cStr + "}, {" + aStr + "} };");
    };
    return t;
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenRustTf()
{
    BlockCodegenTemplate t;
    t.sharedPriority = 1;
    t.emitStep = [](const BlockCodegenArgs& a) {
        std::string cu = a.id;
        for (auto& c : cu) {
            c = static_cast<char>(std::toupper(static_cast<unsigned char>(c)));
        }
        a.line("out_" + a.id + " = tf_step(TF_N_" + cu + ", TF_D_" + cu + ", &TF_C_" + cu
            + ", &TF_A_" + cu + ", &mut s.tf_x_" + a.id + ", " + a.in[0] + ", dt);");
    };
    // Unified variable-step codegen (roadmap 5.3), Rust backend: n companion
    // states integrated through the shared rhs (tf_out / tf_deriv). n == 0 is a
    // pure algebraic gain (no state).
    t.continuousWidth = [](const BlockCodegenArgs& a) -> int {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        return tfStateOrder(bd.paramList(nflow::kDen));
    };
    t.emitRk4 = [](const BlockCodegenArgs& a) {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        const int n = tfStateOrder(bd.paramList(nflow::kDen));
        std::string cu = a.id;
        for (auto& c : cu) {
            c = static_cast<char>(std::toupper(static_cast<unsigned char>(c)));
        }
        const std::string off = std::to_string(a.stateOffset);
        const std::string nc = "TF_N_" + cu;
        switch (a.rk4Op) {
        case Rk4Gather:
            a.line("for __i in 0.." + nc + " { " + a.rk4Arr + "[" + off + " + __i] = s.tf_x_" + a.id
                + "[__i]; }");
            break;
        case Rk4Scatter:
            a.line("for __i in 0.." + nc + " { s.tf_x_" + a.id + "[__i] = " + a.rk4Arr + "[" + off
                + " + __i]; }");
            break;
        case Rk4Output:
            a.line("out_" + a.id + " = tf_out(" + nc + ", TF_D_" + cu + ", &TF_C_" + cu
                + ", &s.tf_x_" + a.id + ", " + a.in[0] + ");");
            break;
        case Rk4Deriv:
            a.line("tf_deriv(" + nc + ", &TF_A_" + cu + ", &s.tf_x_" + a.id + ", " + a.in[0]
                + ", &mut " + a.rk4Arr + "[" + off + "..(" + off + " + " + nc + ")]);");
            break;
        default:
            break;
        }
        (void)n;
    };
    t.emitShared = [](const BlockCodegenStateArgs& a) {
        // Companion-form RK4, matching the interpreter (see the C generator).
        auto companion = [](const std::vector<double>& numIn, const std::vector<double>& denIn,
                             int& n, double& D, std::vector<double>& C, std::vector<double>& A) {
            auto trim = [](std::vector<double> v) {
                size_t i = 0;
                while (i + 1 < v.size() && std::abs(v[i]) < 1e-12) {
                    ++i;
                }
                return std::vector<double>(v.begin() + i, v.end());
            };
            std::vector<double> num = trim(numIn.empty() ? std::vector<double> { 0.0 } : numIn);
            std::vector<double> den = trim(denIn.empty() ? std::vector<double> { 1.0 } : denIn);
            double a0 = den[0];
            for (double& v : den) {
                v /= a0;
            }
            for (double& v : num) {
                v /= a0;
            }
            n = static_cast<int>(den.size()) - 1;
            if (n <= 0) {
                n = 0;
                D = num.empty() ? 0.0 : num[0];
                C.clear();
                A.clear();
                return;
            }
            while (static_cast<int>(num.size()) < n + 1) {
                num.insert(num.begin(), 0.0);
            }
            std::vector<double> aTail(den.begin() + 1, den.end());
            D = num[0];
            C.assign(n, 0.0);
            for (int i = 0; i < n; ++i) {
                C[n - 1 - i] = num[i + 1] - aTail[i] * D;
            }
            A.assign(n, 0.0);
            for (int j = 0; j < n; ++j) {
                A[j] = -aTail[n - 1 - j];
            }
        };

        int maxTfOrder = 1;
        for (const auto& b : *a.allBlocks) {
            if (nflow::jstr(b, nflow::kType) != "tf") {
                continue;
            }
            nflow::BlockDescriptor tbd(b, *a.variables);
            int tn = 0;
            double tD = 0.0;
            std::vector<double> tC, tA;
            companion(tbd.paramList(nflow::kNum), tbd.paramList(nflow::kDen), tn, tD, tC, tA);
            maxTfOrder = std::max(maxTfOrder, tn);
        }
        a.declState("    pub tf_x_" + a.id + ": [f64; " + std::to_string(maxTfOrder) + "],");
        a.addInit(
            "    s.tf_x_" + a.id + " = [" + a.fmt(0.0) + "; " + std::to_string(maxTfOrder) + "];");

        nflow::BlockDescriptor bd(*a.block, *a.variables);
        int n = 0;
        double D = 0.0;
        std::vector<double> C, A;
        companion(bd.paramList(nflow::kNum), bd.paramList(nflow::kDen), n, D, C, A);
        std::vector<double> cPad(maxTfOrder, 0.0), aPad(maxTfOrder, 0.0);
        for (int i = 0; i < n; ++i) {
            cPad[i] = C[i];
            aPad[i] = A[i];
        }
        std::string cStr, aStr;
        for (int i = 0; i < maxTfOrder; ++i) {
            if (i > 0) {
                cStr += ", ";
                aStr += ", ";
            }
            cStr += a.fmt(cPad[i]);
            aStr += a.fmt(aPad[i]);
        }
        std::string cu = a.id;
        for (auto& c : cu) {
            c = static_cast<char>(std::toupper(static_cast<unsigned char>(c)));
        }
        a.addConst("const TF_N_" + cu + ": usize = " + std::to_string(n) + ";");
        a.addConst("const TF_D_" + cu + ": f64 = " + a.fmt(D) + ";");
        a.addConst(
            "const TF_C_" + cu + ": [f64; " + std::to_string(maxTfOrder) + "] = [" + cStr + "];");
        a.addConst(
            "const TF_A_" + cu + ": [f64; " + std::to_string(maxTfOrder) + "] = [" + aStr + "];");
        if (a.once("tf:helper")) {
            a.addHelper("fn tf_deriv(n: usize, a: &[f64], x: &[f64], u: f64, dx: &mut [f64]) {");
            a.addHelper("    if n > 0 { for i in 0..n - 1 { dx[i] = x[i + 1]; } }");
            a.addHelper("    let mut last = u;");
            a.addHelper("    for j in 0..n { last += a[j] * x[j]; }");
            a.addHelper("    if n > 0 { dx[n - 1] = last; }");
            a.addHelper("}");
            // Output-only y = D*u + C.x for the unified RK4 rhs (no state advance).
            a.addHelper("#[allow(dead_code)]");
            a.addHelper("fn tf_out(n: usize, d: f64, c: &[f64], x: &[f64], u: f64) -> f64 {");
            a.addHelper("    let mut y = d * u;");
            a.addHelper("    for i in 0..n { y += c[i] * x[i]; }");
            a.addHelper("    y");
            a.addHelper("}");
            a.addHelper("#[allow(clippy::too_many_arguments)]");
            a.addHelper("fn tf_step(n: usize, d: f64, c: &[f64], a: &[f64],");
            a.addHelper("           x: &mut [f64], u: f64, dt: f64) -> f64 {");
            a.addHelper("    let mut y = d * u;");
            a.addHelper("    for i in 0..n { y += c[i] * x[i]; }");
            a.addHelper("    if n > 0 {");
            a.addHelper("        let (mut k1, mut k2) = ([0.0_f64; " + std::to_string(maxTfOrder)
                + "], [0.0_f64; " + std::to_string(maxTfOrder) + "]);");
            a.addHelper("        let (mut k3, mut k4) = ([0.0_f64; " + std::to_string(maxTfOrder)
                + "], [0.0_f64; " + std::to_string(maxTfOrder) + "]);");
            a.addHelper("        let mut tmp = [0.0_f64; " + std::to_string(maxTfOrder) + "];");
            a.addHelper("        tf_deriv(n, a, x, u, &mut k1);");
            a.addHelper("        for i in 0..n { tmp[i] = x[i] + 0.5 * dt * k1[i]; }");
            a.addHelper("        tf_deriv(n, a, &tmp, u, &mut k2);");
            a.addHelper("        for i in 0..n { tmp[i] = x[i] + 0.5 * dt * k2[i]; }");
            a.addHelper("        tf_deriv(n, a, &tmp, u, &mut k3);");
            a.addHelper("        for i in 0..n { tmp[i] = x[i] + dt * k3[i]; }");
            a.addHelper("        tf_deriv(n, a, &tmp, u, &mut k4);");
            a.addHelper("        for i in 0..n { x[i] += (dt / 6.0) * (k1[i] + 2.0 * k2[i] + 2.0 * "
                        "k3[i] + k4[i]); }");
            a.addHelper("    }");
            a.addHelper("    y");
            a.addHelper("}");
            a.addHelper("");
        }
    };
    return t;
}
//=============================================================================

```

</details>

## 🔗 Voir aussi

[stateSpace](../../nflow_blocks/continuous/stateSpace.md), [integrator](../../nflow_blocks/continuous/integrator.md), [dtf](../../nflow_blocks/discrete/dtf.md), [lpf](../../nflow_blocks/continuous/lpf.md), [hpf](../../nflow_blocks/continuous/hpf.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
