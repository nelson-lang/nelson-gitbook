# fileSink

<p align="center">
<img src="fileSink.svg"/>
</p>
Represente un recepteur de sortie fichier.

## 📝 Syntaxe

- Block type: fileSink

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📄 Description

Represente un recepteur de sortie fichier.

| Champ        | Valeur                    |
| ------------ | ------------------------- |
| Module       | <code>nflow_blocks</code> |
| Bibliotheque | Blocs puits               |
| Type         | <code>fileSink</code>     |
| Libelle      | Output File               |

<b>Description</b>

Represente un recepteur de sortie fichier.

<b>Ports</b>

<b>Entree(s)</b>

| Port   | Role                             | Cote | Position  |
| ------ | -------------------------------- | ---- | --------- |
| Port_1 | Signal numerique lu par le bloc. | left | x=0, y=40 |

<b>Sortie(s)</b>

Ce bloc ne declare aucune sortie.

<b>Parametres</b>

| Parametre         | Valeur par defaut |
| ----------------- | ----------------- |
| <code>path</code> | output.csv        |

<b>Cles de l inspecteur</b>

Ces cles serialisees sont exposees par l inspecteur du bloc.

- <code>path</code>

<b>Caracteristiques du bloc</b>

| Champ                      | Valeur                             |
| -------------------------- | ---------------------------------- |
| Type de bloc               | fileSink                           |
| Famille                    | Blocs puits                        |
| Taille graphique           | 80 x 80                            |
| Phases                     | none                               |
| Traversee directe          | voir Algorithmes                   |
| Etat ou historique interne | non observe dans le code documente |
| Type de donnees signaux    | valeurs numeriques double          |

<b>Algorithmes</b>

- INIT : tronque le fichier CSV (parametre FileName) et ecrit l en-tete "t,<id>" (une colonne par element pour un signal vectoriel).
- AFTER_STEP : ajoute une ligne par echantillon (temps puis valeurs) ; le fichier est ouvert et ferme a chaque phase, une execution annulee garde les lignes deja ecrites.
- Le code genere ne fait aucune E/S fichier : le bloc devient une colonne de sortie du CSV du programme genere (etiquetee avec l identifiant du bloc).

<b>Capacites et limites</b>

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

Generation de code : prise en charge pour C et Rust.

<b>Sources d implementation</b>

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
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/sink/fileSink.cpp</code></summary>

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
#include <algorithm>
#include <cstdio>
#include <string>
#include "sink_blocks.hpp"
//=============================================================================
// fileSink: streams its input signal to a CSV file at major steps. INIT
// truncates the file (FileName parameter, default "output.csv") and writes
// the header "t,<id>" (vector inputs: "t,<id>_0,<id>_1,..."); AFTER_STEP
// appends one row per sample. The file is opened and closed per phase so a
// crashed or cancelled run keeps every row written so far. An unwritable
// path is skipped silently (the simulation itself is unaffected).
//
// Code generation lowers the block to a labelSink-shaped model output (a
// column in the generated runner's CSV) instead of an fopen in model.c;
// see the pipeline's fileSink rewrite.
//=============================================================================
namespace {
std::string
fileSinkPath(const Nelson::NFlow::Block& b, const Nelson::NFlow::ValMap& vars)
{
    nflow::BlockDescriptor bd(b, vars);
    std::string p = bd.paramStr("FileName", "");
    if (p.empty()) {
        p = bd.paramStr("Filename", "");
    }
    if (p.empty()) {
        p = "output.csv";
    }
    return p;
}
} // namespace
//=============================================================================
bool
Nelson::NFlow::handleFileSink(SimCtx& ctx, const Block& b, Phase phase)
{
    if (phase != Phase::INIT && phase != Phase::AFTER_STEP) {
        return false;
    }
    const std::string path = fileSinkPath(b, ctx.variables);
    SigView v = getInputSig(ctx, b.nid, 0);
    const int w = std::max(1, v.width);
    if (phase == Phase::INIT) {
        FILE* f = fopen(path.c_str(), "wt");
        if (!f) {
            return false;
        }
        fputs("t", f);
        if (w == 1) {
            fprintf(f, ",%s", b.id.c_str());
        } else {
            for (int k = 0; k < w; ++k) {
                fprintf(f, ",%s_%d", b.id.c_str(), k);
            }
        }
        fputs("\n", f);
        fclose(f);
        return false;
    }
    FILE* f = fopen(path.c_str(), "at");
    if (!f) {
        return false;
    }
    fprintf(f, "%.15g", ctx.t);
    for (int k = 0; k < w; ++k) {
        fprintf(f, ",%.15g", sigAt(v, k));
    }
    fputs("\n", f);
    fclose(f);
    return false;
}
//=============================================================================

```

</details>

## 🔗 Voir aussi

[scope](../../nflow_blocks/sink/scope.md), [display](../../nflow_blocks/sink/display.md), [fileSource](../../nflow_blocks/source/fileSource.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
