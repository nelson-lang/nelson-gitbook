# interpolationPrelookup

<p align="center">
<img src="interpolationPrelookup.svg"/>
</p>
Interpole une Table statique a partir du couple [k, f] issu d un prelookup.

## 📝 Syntaxe

- Type de bloc : interpolationPrelookup

## 📥 Argument d'entrée

- ports d entree - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie declare(s).

## 📄 Description

Interpole une Table statique a partir du couple [k, f] issu d un prelookup.

| Champ        | Valeur                              |
| ------------ | ----------------------------------- |
| Module       | <code>nflow_blocks</code>           |
| Bibliotheque | Tables de correspondance            |
| Type         | <code>interpolationPrelookup</code> |
| Libelle      | Interpolation Using Prelookup       |

<b>Description</b>

Interpole la <code>Table</code> statique a l'aide du couple indice/fraction produit par un bloc <code>prelookup</code>. Le port d'entree 0 est le vecteur a 2 elements <code>[k, f]</code> ; la sortie est <code>tbl[k] + f \* (tbl[k+1] - tbl[k])</code>, soit une interpolation lineaire a l'intervalle partage. k est borne a un indice de table valide. Partager un seul <code>prelookup</code> entre plusieurs de ces blocs evite de refaire la recherche d'intervalle par table.

Execution native (l'entree a 2 elements sera generee en code ulterieurement).

<b>Ports</b>

<b>Entree(s)</b>

| Port   | Role                             | Cote   | Position  |
| ------ | -------------------------------- | ------ | --------- |
| Port_1 | Signal numerique lu par le bloc. | gauche | x=0, y=40 |

<b>Sortie(s)</b>

| Port   | Role                                  | Cote   | Position   |
| ------ | ------------------------------------- | ------ | ---------- |
| Port_1 | Signal numerique produit par le bloc. | droite | x=90, y=40 |

<b>Parametres</b>

| Parametre          | Valeur par defaut |
| ------------------ | ----------------- |
| <code>Table</code> | [0 1 4 9 16]      |

<b>Caracteristiques du bloc</b>

| Champ                      | Valeur                    |
| -------------------------- | ------------------------- |
| Type de bloc               | interpolationPrelookup    |
| Famille                    | Tables de correspondance  |
| Taille rendue              | 90 x 80                   |
| Phases                     | ALGEBRAIC                 |
| Etat interne ou historique | non                       |
| Type de donnees du signal  | valeurs numeriques double |

<b>Algorithmes</b>

- ALGEBRAIC : out = tbl[k] + f \* (tbl[k+1] - tbl[k]).

<b>Equation ou regle</b>
$$y = t_k + f\,(t_{k+1} - t_k)$$

<b>Capacites etendues</b>

<b>Sources d implementation</b>

Generation de code : prise en charge pour C et Rust.

<details>
<summary>Manifest: <code>modules/nflow_blocks/libraries/lookup/library.json</code></summary>

```json
{
  "id": "builtin.lookup",
  "title": "Lookup Tables",
  "version": "0.1.0",
  "format": "nflow-2",
  "builtin": true,
  "blocks": [
    {
      "type": "lookup1D",
      "label": "1-D Lookup Table",
      "icon": "lookup1D.svg",
      "phases": ["ALGEBRAIC"],
      "width": 90,
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
          "x": 90,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "BreakpointsForDimension1": [0, 1, 2, 3, 4],
        "Table": [0, 1, 4, 9, 16],
        "InterpMethod": "Linear point-slope",
        "ExtrapMethod": "Linear"
      },
      "render": {
        "type": "image",
        "src": "exports/lookup1D.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 90,
        "height": 80
      }
    },
    {
      "type": "lookup2D",
      "label": "2-D Lookup Table",
      "icon": "lookup2D.svg",
      "phases": ["ALGEBRAIC"],
      "width": 90,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 30,
          "side": "left"
        },
        {
          "x": 0,
          "y": 50,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 90,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "BreakpointsForDimension1": [1, 2, 3],
        "BreakpointsForDimension2": [1, 2, 3],
        "Table": [4, 5, 6, 5, 7, 8, 6, 8, 10],
        "InterpMethod": "Linear point-slope",
        "ExtrapMethod": "Linear"
      },
      "render": {
        "type": "image",
        "src": "exports/lookup2D.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 90,
        "height": 80
      }
    },
    {
      "type": "lookupND",
      "label": "n-D Lookup Table",
      "icon": "lookupND.svg",
      "phases": ["ALGEBRAIC"],
      "width": 90,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 30,
          "side": "left"
        },
        {
          "x": 0,
          "y": 50,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 90,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "NumberOfTableDimensions": 2,
        "BreakpointsForDimension1": [1, 2, 3],
        "BreakpointsForDimension2": [1, 2, 3],
        "Table": [4, 5, 6, 5, 7, 8, 6, 8, 10],
        "InterpMethod": "Linear point-slope",
        "ExtrapMethod": "Linear"
      },
      "render": {
        "type": "image",
        "src": "exports/lookupND.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 90,
        "height": 80
      }
    },
    {
      "type": "directLookup",
      "label": "Direct Lookup Table (n-D)",
      "icon": "directLookup.svg",
      "phases": ["ALGEBRAIC"],
      "width": 90,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 30,
          "side": "left"
        },
        {
          "x": 0,
          "y": 50,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 90,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "NumberOfTableDimensions": 2,
        "TableDimensions": [2, 3],
        "Table": [0, 1, 10, 11, 20, 21]
      },
      "render": {
        "type": "image",
        "src": "exports/directLookup.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 90,
        "height": 80
      }
    },
    {
      "type": "prelookup",
      "label": "Prelookup",
      "icon": "prelookup.svg",
      "phases": ["ALGEBRAIC"],
      "width": 90,
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
          "x": 90,
          "y": 30,
          "side": "right"
        },
        {
          "x": 90,
          "y": 50,
          "side": "right"
        }
      ],
      "defaultParams": {
        "BreakpointsForDimension1": [0, 1, 2, 3, 4]
      },
      "render": {
        "type": "image",
        "src": "exports/prelookup.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 90,
        "height": 80
      }
    },
    {
      "type": "interpolationPrelookup",
      "label": "Interpolation Using Prelookup",
      "icon": "interpolationPrelookup.svg",
      "phases": ["ALGEBRAIC"],
      "width": 90,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 30,
          "side": "left"
        },
        {
          "x": 0,
          "y": 50,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 90,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "Table": [0, 1, 4, 9, 16]
      },
      "render": {
        "type": "image",
        "src": "exports/interpolationPrelookup.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 90,
        "height": 80
      }
    },
    {
      "type": "lookupDynamic",
      "label": "Lookup Table Dynamic",
      "icon": "lookupDynamic.svg",
      "phases": ["ALGEBRAIC"],
      "width": 90,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 20,
          "side": "left"
        },
        {
          "x": 0,
          "y": 40,
          "side": "left"
        },
        {
          "x": 0,
          "y": 60,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 90,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {},
      "render": {
        "type": "image",
        "src": "exports/lookupDynamic.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 90,
        "height": 80
      }
    }
  ]
}
```

</details>


<details>
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/lookup/interpolationPrelookup.cpp</code></summary>

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
// interpolationPrelookup (Interpolation Using Prelookup): interpolates a static
// Table using a precomputed index/fraction pair produced by a prelookup block.
// Input port 0 is the 2-element vector [k, f]; the output is
//   tbl[k] + f * (tbl[k+1] - tbl[k]),
// i.e. linear interpolation over the Table at the shared interval. k is clamped
// to a valid table index. Sharing one prelookup across several of these blocks
// avoids repeating the interval search per table. Feedthrough (ALGEBRAIC), real
// double, scalar output. Native runtime (the 2-vector input is a follow-up for
// code generation).
//=============================================================================
#include "SimEngineTypes.hpp"
#include "BlockRegistry.hpp"
#include "FieldNames.hpp"
#include "NFlowBlockDescriptor.hpp"
#include "lookup_blocks.hpp"
#include <string>
#include <vector>
#include <cmath>
//=============================================================================
namespace Nelson {
namespace NFlow {
    //=============================================================================
    bool
    handleInterpolationPrelookup(SimCtx& ctx, const Block& b, Phase phase)
    {
        if (phase != Phase::ALGEBRAIC) {
            return false;
        }
        if (!hasInput(ctx, b.nid, 0)) {
            return false;
        }
        nflow::BlockDescriptor bd(b, ctx.variables);
        const std::vector<double> tbl = bd.paramList("Table");
        const int m = (int)tbl.size();
        // Index on port 0, fraction on port 1 - the two ports a prelookup
        // produces. A single two-wide input is still read the old way, so a
        // diagram wired before the split keeps working.
        SigView u = getInputSig(ctx, b.nid, 0);
        double kd = sigAt(u, 0);
        double f = 0.0;
        if (numInputs(ctx, b.nid) > 1 && hasInput(ctx, b.nid, 1)) {
            f = getInput(ctx, b.nid, 1, 0.0);
        } else if (u.width > 1) {
            f = sigAt(u, 1);
        }
        double out = 0.0;
        if (m == 1) {
            out = tbl[0];
        } else if (m >= 2) {
            int k = (int)std::floor(kd + 0.5);
            if (k < 0) {
                k = 0;
            }
            if (k > m - 2) {
                k = m - 2;
            }
            out = tbl[k] + f * (tbl[k + 1] - tbl[k]);
        }
        setOutput(ctx, b.nid, out);
        return false;
    }
    //=============================================================================
    // Index and fraction in; scalar out.
    bool
    resolveInterpolationPrelookupDims(const Block& b, const ValMap& vars,
        const std::vector<PortSig>&, std::vector<PortSig>& outSigs, std::string& err)
    {
        nflow::BlockDescriptor bd(b, vars);
        const std::vector<double> tbl = bd.paramList("Table");
        if (tbl.empty()) {
            err = "interpolationPrelookup requires a non-empty Table";
            return false;
        }
        outSigs[0].setVector(1);
        outSigs[0].type = SigType::Double;
        return true;
    }
    //=============================================================================
} // namespace NFlow
} // namespace Nelson
//=============================================================================

```

</details>

## 💡 Exemple

Voir l'exemple prelookup, qui cable prelookup vers ce bloc.

```matlab
% See the prelookup example for a complete Prelookup -> Interpolation wiring.
```

## 🔗 Voir aussi

[prelookup](../../nflow_blocks/lookup/prelookup.md), [lookup1D](../../nflow_blocks/lookup/lookup1D.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
