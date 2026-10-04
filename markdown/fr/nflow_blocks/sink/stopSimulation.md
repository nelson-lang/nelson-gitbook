# stopSimulation

<p align="center">
<img src="stopSimulation.svg"/>
</p>
Termine le run a la fin du pas ou son entree devient non nulle pour la premiere fois.

## 📝 Syntaxe

- Type de bloc : stopSimulation

## 📥 Argument d'entrée

- ports d entree - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- ports de sortie - Aucun port de sortie (ce bloc n en possede aucun).

## 📄 Description

Termine le run a la fin du pas ou son entree devient non nulle pour la premiere fois.

| Champ        | Valeur                      |
| ------------ | --------------------------- |
| Module       | <code>nflow_blocks</code>   |
| Bibliotheque | Puits                       |
| Type         | <code>stopSimulation</code> |
| Libelle      | Stop                        |

<b>Description</b>

Arrete la simulation a la fin du pas ou son entree devient non nulle pour la premiere fois, en positionnant <code>SimCtx::stopRequested</code> (respecte par la boucle a pas fixe et par la boucle solveur). Typiquement pilote par un bloc de comparaison ou de test d'intervalle pour arreter sur condition. Une entree, aucune sortie ; natif seulement.

Enregistre en phase AFTER_STEP afin d'observer les sorties stabilisees de chaque pas avant de decider d'arreter.

<b>Ports</b>

<b>Entree(s)</b>

| Port   | Role                             | Cote   | Position  |
| ------ | -------------------------------- | ------ | --------- |
| Port_1 | Signal numerique lu par le bloc. | gauche | x=0, y=20 |

Ce bloc n'a aucun port de sortie.

<b>Parametres</b>

| Parametre | Valeur par defaut |
| --------- | ----------------- |
| _none_    |                   |

<b>Caracteristiques du bloc</b>

| Champ                      | Valeur                    |
| -------------------------- | ------------------------- |
| Type de bloc               | stopSimulation            |
| Famille                    | Puits                     |
| Taille rendue              | 40 x 40                   |
| Phases                     | AFTER_STEP                |
| Etat interne ou historique | non                       |
| Type de donnees du signal  | valeurs numeriques double |

<b>Algorithmes</b>

- AFTER_STEP : si un element d'entree != 0, positionner stopRequested = true.

<b>Capacites etendues</b>

Execution native seulement (ce bloc n'est pas genere en code).

<b>Sources d implementation</b>

Generation de code : prise en charge pour C et Rust.

<details>
<summary>Manifest: <code>modules/nflow_blocks/libraries/sink/library.json</code></summary>

```json
{
  "id": "builtin.sink",
  "title": "Sinks",
  "version": "1.0.0",
  "format": "nflow-2",
  "metadata": {
    "author": "Allan CORNET",
    "created": "2026-03-21",
    "tool": "Nelson nflow"
  },
  "comment": "Blocks for visualizing or exporting simulation results",
  "license": "LGPL-3.0",
  "builtin": true,
  "blocks": [
    {
      "type": "scope",
      "label": "Scope",
      "icon": "scope.svg",
      "phases": ["INIT", "AFTER_STEP"],
      "width": 220,
      "height": 160,
      "inputs": [
        {
          "x": 0,
          "y": 40,
          "side": "left"
        },
        {
          "x": 0,
          "y": 80,
          "side": "left"
        },
        {
          "x": 0,
          "y": 120,
          "side": "left"
        }
      ],
      "outputs": [],
      "defaultParams": {
        "TMin": "",
        "TMax": "",
        "YMin": "",
        "YMax": "",
        "width": 220,
        "height": 160,
        "ShowTickLabels": false
      },
      "render": {
        "type": "plot",
        "path": "M{axisX} {axisTop} L{axisX} {axisY} L{axisRight-2} {axisY}"
      }
    },
    {
      "type": "xyScope",
      "icon": "xyScope.svg",
      "label": "XY Scope",
      "phases": ["INIT", "AFTER_STEP"],
      "width": 220,
      "height": 160,
      "inputs": [
        {
          "x": 0,
          "y": 50,
          "side": "left"
        },
        {
          "x": 0,
          "y": 110,
          "side": "left"
        }
      ],
      "outputs": [],
      "defaultParams": {
        "XMin": "",
        "XMax": "",
        "YMin": "",
        "YMax": "",
        "width": 220,
        "height": 160,
        "ShowTickLabels": false
      },
      "render": {
        "type": "plot",
        "path": "M{axisX} {axisY} L{axisRight-2} {axisTop+8}"
      }
    },
    {
      "type": "xyzScope",
      "label": "XYZ Scope",
      "icon": "xyzScope.svg",
      "phases": ["INIT", "AFTER_STEP"],
      "width": 220,
      "height": 180,
      "inputs": [
        {
          "x": 0,
          "y": 50,
          "side": "left"
        },
        {
          "x": 0,
          "y": 90,
          "side": "left"
        },
        {
          "x": 0,
          "y": 130,
          "side": "left"
        }
      ],
      "outputs": [],
      "defaultParams": {
        "XMin": "",
        "XMax": "",
        "YMin": "",
        "YMax": "",
        "ZMin": "",
        "ZMax": "",
        "width": 220,
        "height": 180,
        "RotationX": 30,
        "RotationY": 45
      },
      "render": {
        "type": "plot",
        "path": "M{axisX} {axisY} L{axisRight-2} {axisY-20}"
      }
    },
    {
      "type": "fileSink",
      "icon": "fileSink.svg",
      "label": "Output File",
      "phases": [],
      "width": 80,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 40,
          "side": "left"
        }
      ],
      "outputs": [],
      "defaultParams": {
        "FileName": "output.csv"
      },
      "render": {
        "type": "image",
        "src": "fileSink.svg"
      }
    },
    {
      "type": "labelSink",
      "icon": "labelSink.svg",
      "label": "Label Sink",
      "phases": [],
      "width": 40,
      "height": 40,
      "inputs": [
        {
          "x": 0,
          "y": 20,
          "side": "left"
        }
      ],
      "outputs": [],
      "defaultParams": {
        "GotoTag": "x",
        "ShowNode": true
      },
      "render": {
        "type": "math",
        "bodyClass": "block-body",
        "mathGroupClass": "label-sink-math",
        "formula": "{params.GotoTag}"
      }
    },
    {
      "type": "display",
      "icon": "display.svg",
      "label": "Display",
      "phases": ["INIT", "AFTER_STEP"],
      "width": 120,
      "height": 60,
      "inputs": [
        {
          "x": 0,
          "y": 30,
          "side": "left"
        }
      ],
      "outputs": [],
      "defaultParams": {
        "Label": "Display",
        "Format": "short",
        "Decimation": 1,
        "Floating": false
      },
      "render": {
        "type": "math",
        "bodyClass": "block-body",
        "mathGroupClass": "display-math",
        "formula": "\\mathsf{Disp}"
      }
    },
    {
      "type": "toWorkspace",
      "label": "To Workspace",
      "icon": "toWorkspace.svg",
      "phases": ["INIT", "AFTER_STEP"],
      "width": 80,
      "height": 48,
      "inputs": [
        {
          "x": 0,
          "y": 24,
          "side": "left"
        }
      ],
      "outputs": [],
      "defaultParams": {
        "VariableName": "simout",
        "MaxDataPoints": "inf",
        "Decimation": 1,
        "SaveFormat": "Structure With Time",
        "SampleTime": "-1"
      },
      "render": {
        "type": "math",
        "formula": "\\mathtt{{params.VariableName}}",
        "textSize": 14
      }
    },
    {
      "type": "terminator",
      "label": "Terminator",
      "icon": "terminator.svg",
      "phases": [],
      "width": 40,
      "height": 40,
      "inputs": [
        {
          "x": 0,
          "y": 20,
          "side": "left"
        }
      ],
      "outputs": [],
      "defaultParams": {},
      "render": {
        "type": "image",
        "src": "exports/terminator.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 40,
        "height": 40
      }
    },
    {
      "type": "stopSimulation",
      "label": "Stop",
      "icon": "stopSimulation.svg",
      "phases": ["AFTER_STEP"],
      "width": 40,
      "height": 40,
      "inputs": [
        {
          "x": 0,
          "y": 20,
          "side": "left"
        }
      ],
      "outputs": [],
      "defaultParams": {}
    }
  ]
}
```

</details>


<details>
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/sink/stopSimulation.cpp</code></summary>

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
#include "sink_blocks.hpp"
//=============================================================================
// stopSimulation: a sink that ends the run at the end of the step in which any
// element of its input is nonzero (via SimCtx::stopRequested, which both
// engine loops honor). Generated code mirrors it with a SHARED
// nflow_stop_requested state flag the block raises at its topological
// position (equivalent to AFTER_STEP: sinks emit after their producers and
// the flag is only consumed between steps); the generated main() breaks its
// loop after writing the row of the stopping step, and library consumers read
// the field between calls.
//=============================================================================
bool
Nelson::NFlow::handleStopSimulation(SimCtx& ctx, const Block& b, Phase phase)
{
    if (phase != Phase::AFTER_STEP) {
        return false;
    }
    if (!hasInput(ctx, b.nid, 0)) {
        return false;
    }
    SigView u = getInputSig(ctx, b.nid, 0);
    for (int i = 0; i < u.width; ++i) {
        if (sigAt(u, i) != 0.0) {
            ctx.stopRequested = true;
            break;
        }
    }
    return false;
}
//=============================================================================
// Single language-parameterized emitter (CodegenLang). The stop flag is one
// SHARED state field however many stopSimulation blocks (or expanded vector
// elements) the model carries: `once` guards the declaration, every copy
// OR-raises it.
static Nelson::NFlow::BlockCodegenTemplate
makeStopSimulationCodegen(Nelson::NFlow::CodegenLang L)
{
    using namespace Nelson::NFlow;
    BlockCodegenTemplate t;
    t.emitState = [L](const BlockCodegenStateArgs& a) {
        if (!a.once("nflow_stop_requested")) {
            return;
        }
        if (L.rust) {
            a.declState("    pub nflow_stop_requested: f64,");
            a.addInit("    s.nflow_stop_requested = 0.0;");
        } else {
            a.declState("double nflow_stop_requested;");
            a.addInit("  s->nflow_stop_requested = 0.0;");
        }
    };
    t.emitStep = [L](const BlockCodegenArgs& a) {
        a.line("out_" + a.id + " = " + a.in[0] + ";");
        if (L.rust) {
            a.line("if " + a.in[0] + " != 0.0 { " + L.sref("nflow_stop_requested") + " = 1.0; }");
        } else {
            a.line("if (" + a.in[0] + " != 0.0) " + L.sref("nflow_stop_requested") + " = 1.0;");
        }
    };
    return t;
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenCStopSimulation()
{
    return makeStopSimulationCodegen({ false });
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenRustStopSimulation()
{
    return makeStopSimulationCodegen({ true });
}
//=============================================================================

```

</details>

## 💡 Exemple

Arreter le run des qu'une source echelon s'active a t = 0.45.

```matlab
d.blocks={ struct('id','s','type','step','inputs',0,'outputs',1,'params',struct('Time',0.45)), struct('id','stop','type','stopSimulation','inputs',1,'outputs',0,'params',struct()), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','s','to','stop','fromIndex',0,'toIndex',0), struct('from','s','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```

## 🔗 Voir aussi

[compareToConstant](../../nflow_blocks/logic/compareToConstant.md), [intervalTest](../../nflow_blocks/logic/intervalTest.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
