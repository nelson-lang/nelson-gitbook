# rate

<p align="center">
<img src="rate.svg"/>
</p>
Limite les vitesses de montee et de descente du signal.

## 📝 Syntaxe

- Block type: rate

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description

Limite les vitesses de montee et de descente du signal.

| Champ        | Valeur                    |
| ------------ | ------------------------- |
| Module       | <code>nflow_blocks</code> |
| Bibliotheque | Blocs non lineaires       |
| Type         | <code>rate</code>         |
| Libelle      | Rate Lim.                 |

<b>Description</b>

Limite les vitesses de montee et de descente du signal.

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

| Parametre         | Valeur par defaut |
| ----------------- | ----------------- |
| <code>rise</code> | 1                 |
| <code>fall</code> | 1                 |

<b>Cles de l inspecteur</b>

Ces cles serialisees sont exposees par l inspecteur du bloc.

- <code>rise</code>
- <code>fall</code>

<b>Caracteristiques du bloc</b>

| Champ                      | Valeur                    |
| -------------------------- | ------------------------- |
| Type de bloc               | rate                      |
| Famille                    | Blocs non lineaires       |
| Taille graphique           | 80 x 80                   |
| Phases                     | INIT, OUTPUT, UPDATE      |
| Traversee directe          | voir Algorithmes          |
| Etat ou historique interne | oui                       |
| Type de donnees signaux    | valeurs numeriques double |

<b>Algorithmes</b>

- INIT met la sortie memorisee a 0.
- OUTPUT emet la valeur memorisee. UPDATE borne l entree entre previous - fall\*dt et previous + rise\*dt.
- rise et fall sont contraints a des valeurs positives ou nulles.

<b>Equation ou regle</b>
$$y = \operatorname{clamp}(u,\,y_{prev} - fall\,dt,\,y_{prev} + rise\,dt)$$

<b>Capacites et limites</b>

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

Generation de code : prise en charge pour C et Rust.

<b>Sources d implementation</b>

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
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/nonlinear/rate.cpp</code></summary>

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
Nelson::NFlow::handleRate(SimCtx& ctx, const Block& b, Phase phase)
{
    auto& st = getState(ctx, b.nid);
    const int w = outputWidth(ctx, b.nid, 0);
    if (phase == Phase::INIT) {
        st.scalar = 0.0;
        if (w > 1) {
            st.vec.assign(w, 0.0);
        }
        return false;
    }
    if (phase == Phase::ALGEBRAIC) {
        // Direct feedthrough, as the emitted C/Rust step is: the output at t is
        // the current input slewed from the state committed at the end of the
        // previous step. Emitting the committed state instead delayed the block
        // by one step. Pure: the state is committed by UPDATE, never here, so
        // re-entering this from an RK stage or an algebraic-loop sweep is safe.
        nflow::BlockDescriptor bd(b, ctx.variables);
        const double rise = std::max(0.0, bd.paramDouble(nflow::kRise, 0.0));
        const double fall = std::max(0.0, bd.paramDouble(nflow::kFall, 0.0));
        SigView u = getInputSig(ctx, b.nid, 0);
        return emitElementwise(ctx, b.nid, [&](int i) {
            const double prev = (w <= 1) ? st.scalar : ((i < (int)st.vec.size()) ? st.vec[i] : 0.0);
            return std::min(prev + rise * ctx.dt, std::max(prev - fall * ctx.dt, sigAt(u, i)));
        });
    }
    if (phase == Phase::UPDATE) {
        nflow::BlockDescriptor bd(b, ctx.variables);
        double rise = std::max(0.0, bd.paramDouble(nflow::kRise, 0.0));
        double fall = std::max(0.0, bd.paramDouble(nflow::kFall, 0.0));
        if (w <= 1) {
            double inp = getInput(ctx, b.nid, 0, 0.0);
            double maxRise = st.scalar + rise * ctx.dt;
            double maxFall = st.scalar - fall * ctx.dt;
            st.scalar = std::min(maxRise, std::max(maxFall, inp));
        } else {
            SigView u = getInputSig(ctx, b.nid, 0);
            if ((int)st.vec.size() != w) {
                st.vec.assign(w, 0.0);
            }
            for (int i = 0; i < w; ++i) {
                double maxRise = st.vec[i] + rise * ctx.dt;
                double maxFall = st.vec[i] - fall * ctx.dt;
                st.vec[i] = std::min(maxRise, std::max(maxFall, sigAt(u, i)));
            }
        }
        return false;
    }
    return false;
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenCRate()
{
    BlockCodegenTemplate t;
    t.emitState = [](const BlockCodegenStateArgs& a) { a.addState("rate_" + a.id, "", ""); };
    t.emitStep = [](const BlockCodegenArgs& a) {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        double rise = std::fmax(0.0, bd.paramDouble(nflow::kRise, 0.0));
        double fall = std::fmax(0.0, bd.paramDouble(nflow::kFall, 0.0));
        a.line("{ double maxRise = s->rate_" + a.id + " + " + a.fmt(rise) + " * dt;");
        a.line("  double maxFall = s->rate_" + a.id + " - " + a.fmt(fall) + " * dt;");
        a.line("  double v = " + a.in[0] + ";");
        a.line("  if (v > maxRise) v = maxRise;");
        a.line("  if (v < maxFall) v = maxFall;");
        a.line("  s->rate_" + a.id + " = v;");
        a.line("  out_" + a.id + " = v; }");
    };
    return t;
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenRustRate()
{
    BlockCodegenTemplate t;
    t.emitState = [](const BlockCodegenStateArgs& a) { a.addState("rate_" + a.id, "", ""); };
    t.emitStep = [](const BlockCodegenArgs& a) {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        double rise = std::fmax(0.0, bd.paramDouble(nflow::kRise, 0.0));
        double fall = std::fmax(0.0, bd.paramDouble(nflow::kFall, 0.0));
        a.line("{");
        a.line("    let max_rise = s.rate_" + a.id + " + " + a.fmt(rise) + " * dt;");
        a.line("    let max_fall = s.rate_" + a.id + " - " + a.fmt(fall) + " * dt;");
        a.line("    let mut v = " + a.in[0] + ";");
        a.line("    if v > max_rise { v = max_rise; }");
        a.line("    if v < max_fall { v = max_fall; }");
        a.line("    s.rate_" + a.id + " = v;");
        a.line("    out_" + a.id + " = v;");
        a.line("}");
    };
    return t;
}
//=============================================================================

```

</details>

## 🔗 Voir aussi

[saturation](../../nflow_blocks/nonlinear/saturation.md), [quantizer](../../nflow_blocks/nonlinear/quantizer.md), [delay](../../nflow_blocks/continuous/delay.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
