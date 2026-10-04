# quantizer

<p align="center">
<img src="quantizer.svg"/>
</p>
Arrondit l entree au plus proche intervalle.

## 📝 Syntaxe

- Block type: quantizer

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description

Arrondit l entree au plus proche intervalle.

| Champ        | Valeur                    |
| ------------ | ------------------------- |
| Module       | <code>nflow_blocks</code> |
| Bibliotheque | Blocs non lineaires       |
| Type         | <code>quantizer</code>    |
| Libelle      | Quantizer                 |

<b>Description</b>

Arrondit l entree au plus proche intervalle.

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

| Parametre             | Valeur par defaut |
| --------------------- | ----------------- |
| <code>interval</code> | 1                 |

<b>Cles de l inspecteur</b>

Ces cles serialisees sont exposees par l inspecteur du bloc.

- <code>interval</code>

<b>Caracteristiques du bloc</b>

| Champ                      | Valeur                             |
| -------------------------- | ---------------------------------- |
| Type de bloc               | quantizer                          |
| Famille                    | Blocs non lineaires                |
| Taille graphique           | 80 x 80                            |
| Phases                     | ALGEBRAIC                          |
| Traversee directe          | oui                                |
| Etat ou historique interne | non observe dans le code documente |
| Type de donnees signaux    | valeurs numeriques double          |

<b>Algorithmes</b>

- Bloc algebrique. L entree 1 est requise.
- interval est converti en abs(interval); les valeurs sous 1e-12 sont remplacees par 1.

<b>Equation ou regle</b>
$$y = interval\,\operatorname{round}\left(\frac{u}{interval}\right)$$

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
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/nonlinear/quantizer.cpp</code></summary>

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
Nelson::NFlow::handleQuantizer(SimCtx& ctx, const Block& b, Phase phase)
{
    if (phase != Phase::ALGEBRAIC) {
        return false;
    }
    if (!hasInput(ctx, b.nid, 0)) {
        return false;
    }
    nflow::BlockDescriptor bd(b, ctx.variables);
    double interval = std::abs(bd.paramDouble(nflow::kQuantizationInterval, 1.0));
    if (interval < 1e-12) {
        interval = 1.0;
    }
    SigView u = getInputSig(ctx, b.nid, 0);
    return emitElementwise(
        ctx, b.nid, [&](int i) { return interval * std::round(sigAt(u, i) / interval); });
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenCQuantizer()
{
    BlockCodegenTemplate t;
    // The interval parameter is normalized (abs, zero-guard): native emitter.
    t.emitStep = [](const BlockCodegenArgs& a) {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        double interval = std::abs(bd.paramDouble(nflow::kQuantizationInterval, 1.0));
        if (interval < 1e-12) {
            interval = 1.0;
        }
        a.line("out_" + a.id + " = " + a.fmt(interval) + " * round(" + a.in[0] + " / "
            + a.fmt(interval) + ");");
    };
    return t;
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenRustQuantizer()
{
    BlockCodegenTemplate t;
    t.emitStep = [](const BlockCodegenArgs& a) {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        double interval = std::abs(bd.paramDouble(nflow::kQuantizationInterval, 1.0));
        if (interval < 1e-12) {
            interval = 1.0;
        }
        a.line("out_" + a.id + " = " + a.fmt(interval) + " * libm::round(" + a.in[0] + " / "
            + a.fmt(interval) + ");");
    };
    return t;
}
//=============================================================================

```

</details>

## 🔗 Voir aussi

[rate](../../nflow_blocks/nonlinear/rate.md), [saturation](../../nflow_blocks/nonlinear/saturation.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
