# rateTransition

Rééchantillonne un signal à son propre pas d'échantillonnage (bloqueur d'ordre zéro).

## 📝 Syntaxe

- Type de bloc : rateTransition

## 📥 Argument d'entrée

- ports d'entrée - 1 entrée : le signal rapide à rééchantillonner.

## 📤 Argument de sortie

- ports de sortie - 1 sortie : l'entrée tenue au pas d'échantillonnage propre du bloc.

## 📄 Description

Rééchantillonne un signal à son propre pas d'échantillonnage (bloqueur d'ordre zéro).

Le bloc échantillonne son entrée aux multiples de <code>OutPortSampleTime</code> et tient cette valeur entre les tops, ce qui lui permet de tourner plus lentement que le pas de base du diagramme. C'est la primitive multi-rate minimale : une valeur <code><=</code> au pas de base (ou le défaut <code>-1</code>, hérité) échantillonne à chaque pas, se ramenant à un simple retard unitaire ; une valeur plus grande <code>Ts</code> tient la sortie pendant <code>Ts / pas-de-base</code> pas. La valeur échantillonnée apparaît un pas de base après le top (bloqueur d'ordre zéro avec intégrité des données).

<b>Paramètres</b>

| Paramètre                      | Valeur par défaut |
| ------------------------------ | ----------------- |
| <code>OutPortSampleTime</code> | -1                |
| <code>InitialCondition</code>  | 0                 |

<b>Caractéristiques du bloc</b>

| Champ        | Valeur               |
| ------------ | -------------------- |
| Type de bloc | rateTransition       |
| Famille      | Blocs discrets       |
| Phases       | INIT, OUTPUT, UPDATE |

<b>Extended Capabilities</b>

<b>Implementation Sources</b>

Generation de code : prise en charge pour C et Rust.

<details>
<summary>Manifest: <code>modules/nflow_blocks/libraries/discrete/library.json</code></summary>

```json
{
  "id": "builtin.discrete",
  "title": "Discrete",
  "version": "1.0.0",
  "format": "nflow-2",
  "metadata": {
    "author": "Allan CORNET",
    "created": "2026-03-21",
    "tool": "Nelson nflow"
  },
  "comment": "Blocks for discrete-time systems",
  "license": "LGPL-3.0",
  "builtin": true,
  "blocks": [
    {
      "type": "zoh",
      "label": "ZOH",
      "icon": "zoh.svg",
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
        "SampleTime": 0.1
      },
      "render": {
        "type": "image",
        "src": "zoh.svg"
      }
    },
    {
      "type": "foh",
      "label": "FOH",
      "icon": "foh.svg",
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
        "SampleTime": 0.1
      },
      "render": {
        "type": "image",
        "src": "foh.svg"
      }
    },
    {
      "type": "dtf",
      "icon": "dtf.svg",
      "label": "Discrete TF",
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
        "Numerator": [1],
        "Denominator": [1, -0.5],
        "SampleTime": 0.1
      },
      "render": {
        "type": "image",
        "src": "dtf.svg"
      }
    },
    {
      "type": "ddelay",
      "icon": "ddelay.svg",
      "label": "Discrete Delay",
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
        "DelayLength": 1,
        "SampleTime": 0.1
      },
      "render": {
        "type": "image",
        "src": "ddelay.svg"
      }
    },
    {
      "type": "dstateSpace",
      "icon": "dstateSpace.svg",
      "label": "Discrete State-Space",
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
        "A": 1,
        "B": 1,
        "C": 1,
        "D": 0,
        "SampleTime": 0.1
      },
      "render": {
        "type": "image",
        "src": "dstateSpace.svg"
      }
    },
    {
      "type": "unitDelay",
      "label": "Unit Delay",
      "icon": "unitDelay.svg",
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
        "InitialCondition": 0
      },
      "render": {
        "type": "image",
        "src": "exports/unitDelay.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "rateTransition",
      "label": "Rate Transition",
      "icon": "rateTransition.svg",
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
        "OutPortSampleTime": -1,
        "InitialCondition": 0
      },
      "render": {
        "type": "image",
        "src": "exports/rateTransition.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "difference",
      "label": "Difference",
      "icon": "difference.svg",
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
        "ICPrevInput": 0
      },
      "render": {
        "type": "image",
        "src": "exports/difference.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "detectChange",
      "label": "Detect Change",
      "icon": "detectChange.svg",
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
        "InitialCondition": 0
      },
      "render": {
        "type": "image",
        "src": "exports/detectChange.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "detectIncrease",
      "label": "Detect Increase",
      "icon": "detectIncrease.svg",
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
        "InitialCondition": 0
      },
      "render": {
        "type": "image",
        "src": "exports/detectIncrease.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "detectDecrease",
      "label": "Detect Decrease",
      "icon": "detectDecrease.svg",
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
        "InitialCondition": 0
      },
      "render": {
        "type": "image",
        "src": "exports/detectDecrease.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "risingEdge",
      "label": "Rising Edge",
      "icon": "risingEdge.svg",
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
        "InitialCondition": 0
      }
    },
    {
      "type": "fallingEdge",
      "label": "Falling Edge",
      "icon": "fallingEdge.svg",
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
        "InitialCondition": 0
      }
    }
  ]
}
```

</details>


<details>
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/discrete/rateTransition.cpp</code></summary>

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
#include "NFlowCodegenLang.hpp"
#include <cmath>
#include <algorithm>
#include "discrete_blocks.hpp"
//=============================================================================
// Rate transition (minimal multi-rate primitive): a zero-order-hold sample and
// hold that resamples its input at its own OutPortSampleTime, holding the last
// sample between ticks. This lets one block run slower than the base step
// without a full sample-time scheduler. OutPortSampleTime <= base step (or the
// default -1 = inherit) means "every step"; a larger value Ts holds the output
// for Ts / base-step steps. st.scalar carries the next sample time.
//
// The tick answers the input it samples, in the SAME step: sampling in UPDATE
// and answering from OUTPUT put a whole output period between the two, so every
// value was reported one tick late.
//=============================================================================
bool
Nelson::NFlow::handleRateTransition(SimCtx& ctx, const Block& b, Phase phase)
{
    auto& st = getState(ctx, b.nid);
    const int w = outputWidth(ctx, b.nid, 0);
    if (phase == Phase::INIT) {
        nflow::BlockDescriptor bd(b, ctx.variables);
        if (w <= 1) {
            st.output = bd.paramDouble(nflow::kInitial, 0.0);
        } else {
            std::vector<double> iniList = bd.paramList(nflow::kInitial);
            st.vec.assign(w, 0.0);
            for (int i = 0; i < w; ++i) {
                st.vec[i] = iniList.empty()
                    ? 0.0
                    : (i < (int)iniList.size() ? iniList[i] : iniList.back());
            }
        }
        st.scalar = 0.0; // next sample time
        return false;
    }
    // Is the step now running a sample tick? Read the same way from both
    // phases, which see the same t, so the sample and the schedule agree
    // without a flag between them.
    auto isTick = [&]() -> bool {
        nflow::BlockDescriptor bd(b, ctx.variables);
        const double ts = bd.paramDouble("OutPortSampleTime", -1.0);
        const double base = (ctx.dt > 0.0) ? ctx.dt : 1e-9;
        if (ts <= base * (1.0 + 1e-9)) {
            return true; // inherit / base rate: every step
        }
        return (ctx.t + base * 1e-6 >= st.scalar);
    };
    if (phase == Phase::ALGEBRAIC) {
        if (isTick()) {
            if (w <= 1) {
                st.output = getInput(ctx, b.nid, 0, 0.0);
            } else {
                SigView u = getInputSig(ctx, b.nid, 0);
                if ((int)st.vec.size() != w) {
                    st.vec.assign(w, 0.0);
                }
                for (int i = 0; i < w; ++i) {
                    st.vec[i] = sigAt(u, i);
                }
            }
        }
        if (w <= 1) {
            setOutput(ctx, b.nid, st.output);
        } else {
            double* y = outputSlice(ctx, b.nid, 0);
            for (int i = 0; i < w; ++i) {
                y[i] = (i < (int)st.vec.size()) ? st.vec[i] : 0.0;
            }
        }
        return false;
    }
    if (phase == Phase::UPDATE) {
        nflow::BlockDescriptor bd(b, ctx.variables);
        const double ts = bd.paramDouble("OutPortSampleTime", -1.0);
        const double base = (ctx.dt > 0.0) ? ctx.dt : 1e-9;
        if (!isTick()) {
            return false; // hold between sample ticks
        }
        if (ts > base) {
            // Advance to the next sample time strictly after the current time.
            if (st.scalar <= 0.0) {
                st.scalar = ctx.t;
            }
            while (st.scalar <= ctx.t + base * 1e-6) {
                st.scalar += ts;
            }
        }
        return false;
    }
    return false;
}
//=============================================================================
// Single language-parameterized emitter (CodegenLang), the zoh shape: a held
// sample with time-based self-scheduling on OutPortSampleTime. Output-then-
// update mirrors the simulator: the tick samples FIRST and the output answers
// with what it just sampled; OutPortSampleTime <= the base step (or the default
// -1 = inherit) samples every step.
static Nelson::NFlow::BlockCodegenTemplate
makeRateTransitionCodegen(Nelson::NFlow::CodegenLang L)
{
    using namespace Nelson::NFlow;
    BlockCodegenTemplate t;
    t.emitState = [L](const BlockCodegenStateArgs& a) {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        a.addState("rt_last_" + a.id, a.fmt(bd.paramDouble(nflow::kInitial, 0.0)), "");
        a.addState("rt_next_" + a.id, "", "");
    };
    t.emitOutput = [L](const BlockCodegenArgs& a) {
        a.line("out_" + a.id + " = " + L.sref("rt_last_" + a.id) + ";");
    };
    t.emitStep = [L](const BlockCodegenArgs& a) {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        const double ts = bd.paramDouble("OutPortSampleTime", -1.0);
        const std::string last = L.sref("rt_last_" + a.id);
        if (ts <= a.dt * (1.0 + 1e-9)) {
            // Inherit / base rate: a plain sample and hold, answering the
            // sample it has just taken.
            a.line(last + " = " + a.in[0] + ";");
            a.line("out_" + a.id + " = " + last + ";");
            return;
        }
        const std::string next = L.sref("rt_next_" + a.id);
        if (L.rust) {
            a.line("if t + 1e-6 >= " + next + " {");
            a.line("    " + last + " = " + a.in[0] + ";");
            a.line("    " + next + " = t + " + a.fmt(ts) + ";");
            a.line("}");
        } else {
            a.line("if (t + 1e-6 >= " + next + ") {");
            a.line("  " + last + " = " + a.in[0] + ";");
            a.line("  " + next + " = t + " + a.fmt(ts) + ";");
            a.line("}");
        }
        a.line("out_" + a.id + " = " + last + ";");
    };
    return t;
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenCRateTransition()
{
    return makeRateTransitionCodegen({ false });
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenRustRateTransition()
{
    return makeRateTransitionCodegen({ true });
}
//=============================================================================

```

</details>

## 🔗 Voir aussi

[unitDelay](../../nflow_blocks/discrete/unitDelay.md), [zoh](../../nflow_blocks/discrete/zoh.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
