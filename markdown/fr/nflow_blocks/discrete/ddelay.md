# ddelay

<p align="center">
<img src="ddelay.svg"/>
</p>
Retarde un signal echantillonne d un nombre entier de pas.

## 📝 Syntaxe

- Block type: ddelay

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description

Retarde un signal echantillonne d un nombre entier de pas.

| Champ        | Valeur                    |
| ------------ | ------------------------- |
| Module       | <code>nflow_blocks</code> |
| Bibliotheque | Blocs discrets            |
| Type         | <code>ddelay</code>       |
| Libelle      | Discrete Delay            |

<b>Description</b>

Retarde un signal echantillonne d un nombre entier de pas.

<b>Ports</b>

<b>Entree(s)</b>

| Port   | Role                             | Cote | Position  |
| ------ | -------------------------------- | ---- | --------- |
| Port_1 | Signal numerique lu par le bloc. | left | x=0, y=40 |

<b>Sortie(s)</b>

| Port   | Role                                  | Cote  | Position   |
| ------ | ------------------------------------- | ----- | ---------- |
| Port_1 | Signal numerique produit par le bloc. | right | x=80, y=40 |

<b>Parametres</b>

| Parametre          | Valeur par defaut |
| ------------------ | ----------------- |
| <code>steps</code> | 1                 |
| <code>ts</code>    | 0.1               |

<b>Cles de l inspecteur</b>

Ces cles serialisees sont exposees par l inspecteur du bloc.

- <code>steps</code>
- <code>ts</code>

<b>Caracteristiques du bloc</b>

| Champ                      | Valeur                             |
| -------------------------- | ---------------------------------- |
| Type de bloc               | ddelay                             |
| Famille                    | Blocs discrets                     |
| Taille graphique           | 80 x 80                            |
| Phases                     | INIT, OUTPUT, UPDATE               |
| Traversee directe          | voir Algorithmes                   |
| Etat ou historique interne | non observe dans le code documente |
| Type de donnees signaux    | valeurs numeriques double          |

<b>Algorithmes</b>

- INIT alloue une file de taille issue de steps.
- OUTPUT emet la valeur la plus ancienne. UPDATE echantillonne a ts et avance la file.
- steps vaut au moins 1 et ts au moins 0.001.

<b>Equation ou regle</b>
$$y_k = u_{k-steps}$$

<b>Capacites et limites</b>

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

Generation de code : prise en charge pour C et Rust.

<b>Sources d implementation</b>

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
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/discrete/ddelay.cpp</code></summary>

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
#include "discrete_blocks.hpp"
//=============================================================================
bool
Nelson::NFlow::handleDdelay(SimCtx& ctx, const Block& b, Phase phase)
{
    auto& st = getState(ctx, b.nid);
    // Per-element FIFO ring: st.queue is a flat [width * steps] buffer,
    // element e occupying [e*steps, e*steps+steps); delayIndex is the shared
    // head. st.outLatch holds the per-element delayed output.
    if (phase == Phase::INIT) {
        nflow::BlockDescriptor bd(b, ctx.variables);
        int steps = std::max(1, (int)std::round(bd.paramDouble(nflow::kSteps, 1.0)));
        double ts_v = std::max(0.001, bd.paramDouble(nflow::kTs, 0.1));
        const int w = std::max(1, outputWidth(ctx, b.nid, 0));
        st.queue.assign((size_t)steps * w, 0.0);
        st.delayIndex = 0;
        st.outLatch.assign(w, 0.0);
        st.dTs = ts_v;
        st.dNextTime = 0.0;
        st.dLastOut = 0.0;
        st.output = 0.0;
        return false;
    }
    if (phase == Phase::OUTPUT) {
        const int w = std::max(1, outputWidth(ctx, b.nid, 0));
        if (w <= 1) {
            setOutput(ctx, b.nid, st.outLatch.empty() ? st.output : st.outLatch[0]);
        } else {
            double* y = outputSlice(ctx, b.nid, 0);
            for (int e = 0; e < w; ++e) {
                y[e] = (e < (int)st.outLatch.size()) ? st.outLatch[e] : 0.0;
            }
        }
        return false;
    }
    if (phase == Phase::UPDATE) {
        nflow::BlockDescriptor bd(b, ctx.variables);
        double ts_v = std::max(0.001, bd.paramDouble(nflow::kTs, st.dTs));
        st.dTs = ts_v;
        int steps = std::max(1, (int)std::round(bd.paramDouble(nflow::kSteps, 1.0)));
        const int w = std::max(1, outputWidth(ctx, b.nid, 0));
        if (ctx.t + 1e-6 >= st.dNextTime) {
            // Keep the buffer sized to steps*width (Steps may be tunable).
            if ((int)st.queue.size() != steps * w) {
                st.queue.assign((size_t)steps * w, 0.0);
                st.delayIndex = 0;
            }
            if ((int)st.outLatch.size() != w) {
                st.outLatch.assign(w, 0.0);
            }
            SigView u = getInputSig(ctx, b.nid, 0);
            const int head = st.delayIndex % steps;
            const int oldest = (head + 1) % steps;
            for (int e = 0; e < w; ++e) {
                double* ring = st.queue.data() + (size_t)e * steps;
                ring[head] = sigAt(u, e);
                st.outLatch[e] = ring[oldest];
            }
            st.delayIndex = oldest;
            st.dLastOut = st.outLatch.empty() ? 0.0 : st.outLatch[0];
            st.dNextTime = ctx.t + ts_v;
        }
        st.output = st.outLatch.empty() ? st.dLastOut : st.outLatch[0];
        return false;
    }
    return false;
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenCDdelay()
{
    BlockCodegenTemplate t;
    t.emitState = [](const BlockCodegenStateArgs& a) {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        int steps = std::max(1, static_cast<int>(std::round(bd.paramDouble(nflow::kSteps, 1.0))));
        if (steps < 1) {
            steps = 1;
        }
        a.declState("double ddelay_buf_" + a.id + "[" + std::to_string(steps) + "];");
        a.addState("ddelay_next_" + a.id, "0.0", "");
        a.addState("ddelay_last_" + a.id, "0.0", "");
        a.addInit("  for (int i = 0; i < " + std::to_string(steps) + "; i++) s->ddelay_buf_" + a.id
            + "[i] = 0.0;");
    };
    t.emitOutput = [](const BlockCodegenArgs& a) {
        a.line("out_" + a.id + " = s->ddelay_last_" + a.id + ";");
    };
    t.emitStep = [](const BlockCodegenArgs& a) {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        int steps = std::max(1, static_cast<int>(std::round(bd.paramDouble(nflow::kSteps, 0.0))));
        if (steps < 1) {
            steps = 1;
        }
        double ts = std::fmax(0.001, bd.paramDouble(nflow::kTs, 0.0));
        if (ts == 0) {
            ts = 0.1;
        }
        a.line("out_" + a.id + " = s->ddelay_last_" + a.id + ";");
        a.line("if (t + 1e-6 >= s->ddelay_next_" + a.id + ") {");
        a.line("  for (int i = 0; i < " + std::to_string(steps - 1) + "; i++) s->ddelay_buf_" + a.id
            + "[i] = s->ddelay_buf_" + a.id + "[i + 1];");
        a.line(
            "  s->ddelay_buf_" + a.id + "[" + std::to_string(steps - 1) + "] = " + a.in[0] + ";");
        a.line("  s->ddelay_last_" + a.id + " = s->ddelay_buf_" + a.id + "[0];");
        a.line("  s->ddelay_next_" + a.id + " = t + " + a.fmt(ts) + ";");
        a.line("}");
    };
    return t;
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenRustDdelay()
{
    BlockCodegenTemplate t;
    t.emitState = [](const BlockCodegenStateArgs& a) {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        int steps = std::max(1, static_cast<int>(std::round(bd.paramDouble(nflow::kSteps, 1.0))));
        if (steps < 1) {
            steps = 1;
        }
        a.declState("    pub ddelay_buf_" + a.id + ": [f64; " + std::to_string(steps) + "],");
        a.declState("    pub ddelay_next_" + a.id + ": f64,");
        a.declState("    pub ddelay_last_" + a.id + ": f64,");
        a.addInit("    s.ddelay_buf_" + a.id + " = [" + a.fmt(0.0) + "; " + std::to_string(steps)
            + "]; ");
        a.addInit("    s.ddelay_next_" + a.id + " = 0.0_f64;");
        a.addInit("    s.ddelay_last_" + a.id + " = 0.0_f64;");
    };
    t.emitOutput = [](const BlockCodegenArgs& a) {
        a.line("out_" + a.id + " = s.ddelay_last_" + a.id + ";");
    };
    t.emitStep = [](const BlockCodegenArgs& a) {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        int steps = std::max(1, static_cast<int>(std::round(bd.paramDouble(nflow::kSteps, 0.0))));
        if (steps < 1) {
            steps = 1;
        }
        double ts = std::fmax(0.001, bd.paramDouble(nflow::kTs, 0.0));
        if (ts == 0) {
            ts = 0.1;
        }
        a.line("out_" + a.id + " = s.ddelay_last_" + a.id + ";");
        a.line("if (t + 1e-6 >= s.ddelay_next_" + a.id + ") {");
        a.line("    for i in 0.." + std::to_string(steps > 0 ? steps - 1 : 0) + " { s.ddelay_buf_"
            + a.id + "[i] = s.ddelay_buf_" + a.id + "[i + 1]; }");
        a.line("    s.ddelay_buf_" + a.id + "[" + std::to_string(std::max(1, steps) - 1)
            + "] = " + a.in[0] + ";");
        a.line("    s.ddelay_last_" + a.id + " = s.ddelay_buf_" + a.id + "[0];");
        a.line("    s.ddelay_next_" + a.id + " = t + " + a.fmt(ts) + ";");
        a.line("}");
    };
    return t;
}
//=============================================================================

```

</details>

## 🔗 Voir aussi

[delay](../../nflow_blocks/continuous/delay.md), [unitDelay](../../nflow_blocks/discrete/unitDelay.md), [zoh](../../nflow_blocks/discrete/zoh.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
