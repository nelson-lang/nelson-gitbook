# prelookup

<p align="center">
<img src="prelookup.svg"/>
</p>
Calcule l indice d intervalle k et la fraction f pour une recherche de breakpoints partagee.

## 📝 Syntaxe

- Type de bloc : prelookup

## 📥 Argument d'entrée

- ports d entree - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie declare(s).

## 📄 Description

Calcule l indice d intervalle k et la fraction f pour une recherche de breakpoints partagee.

| Champ        | Valeur                    |
| ------------ | ------------------------- |
| Module       | <code>nflow_blocks</code> |
| Bibliotheque | Tables de correspondance  |
| Type         | <code>prelookup</code>    |
| Libelle      | Prelookup                 |

<b>Description</b>

Pour une entree scalaire <code>u</code> et le vecteur strictement croissant <code>BreakpointsForDimension1</code>, calcule l'indice d'intervalle k tel que bp[k] <= u < bp[k+1] et la fraction f = (u - bp[k]) / (bp[k+1] - bp[k]). La sortie est le vecteur a 2 elements <code>[k, f]</code>, qu'un ou plusieurs blocs <code>interpolationPrelookup</code> reutilisent pour interpoler plusieurs tables sans refaire la recherche d'intervalle.

Les entrees hors plage sont bornees : sous le premier breakpoint donne [0, 0] ; au niveau ou au-dessus du dernier donne [N-2, 1]. La generation de code C et Rust est supportee (la passe d'expansion vectorielle abaisse le bloc en aides scalaires).

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

| Parametre                             | Valeur par defaut |
| ------------------------------------- | ----------------- |
| <code>BreakpointsForDimension1</code> | [0 1 2 3 4]       |

<b>Caracteristiques du bloc</b>

| Champ                      | Valeur                    |
| -------------------------- | ------------------------- |
| Type de bloc               | prelookup                 |
| Famille                    | Tables de correspondance  |
| Taille rendue              | 90 x 80                   |
| Phases                     | ALGEBRAIC                 |
| Etat interne ou historique | non                       |
| Type de donnees du signal  | valeurs numeriques double |

<b>Algorithmes</b>

- ALGEBRAIC : localise k, calcule f, sort [k, f].

<b>Equation ou regle</b>
$$k : b_k \le u < b_{k+1},\quad f = \frac{u - b_k}{b_{k+1} - b_k}$$

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
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/lookup/prelookup.cpp</code></summary>

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
// prelookup (Prelookup): computes the interval index k and the fraction f for a
// scalar input over a strictly increasing breakpoint vector, so several tables
// can share one interval search via interpolationPrelookup. The output is the
// 2-element vector [k, f] where bp[k] <= u < bp[k+1] and f = (u - bp[k]) /
// (bp[k+1] - bp[k]). Out-of-range inputs are clipped: below the first
// breakpoint -> [0, 0]; at/above the last -> [N-2, 1]. Feedthrough (ALGEBRAIC),
// real double, no state. Native runtime (the 2-vector output is a follow-up for
// code generation).
//=============================================================================
#include "SimEngineTypes.hpp"
#include "BlockRegistry.hpp"
#include "FieldNames.hpp"
#include "NFlowBlockDescriptor.hpp"
#include "lookup_blocks.hpp"
#include <string>
#include <vector>
//=============================================================================
namespace Nelson {
namespace NFlow {
    //=============================================================================
    namespace {
        int
        preFindInterval(const std::vector<double>& bp, double u)
        {
            const int n = (int)bp.size();
            for (int i = n - 2; i >= 0; --i) {
                if (u >= bp[i]) {
                    return i;
                }
            }
            return 0;
        }

        bool
        preIsStrictlyIncreasing(const std::vector<double>& v)
        {
            for (size_t i = 1; i < v.size(); ++i) {
                if (!(v[i] > v[i - 1])) {
                    return false;
                }
            }
            return true;
        }
    } // namespace
    //=============================================================================
    bool
    handlePrelookup(SimCtx& ctx, const Block& b, Phase phase)
    {
        if (phase != Phase::ALGEBRAIC) {
            return false;
        }
        if (!hasInput(ctx, b.nid, 0)) {
            return false;
        }
        nflow::BlockDescriptor bd(b, ctx.variables);
        const std::vector<double> bp = bd.paramList("BreakpointsForDimension1");
        const double u = getInput(ctx, b.nid, 0, 0.0);
        const int n = (int)bp.size();
        double k = 0.0, f = 0.0;
        if (n >= 2) {
            if (u <= bp[0]) {
                k = 0.0;
                f = 0.0;
            } else if (u >= bp[n - 1]) {
                k = (double)(n - 2);
                f = 1.0;
            } else {
                const int i = preFindInterval(bp, u);
                k = (double)i;
                const double d = bp[i + 1] - bp[i];
                f = (d != 0.0) ? (u - bp[i]) / d : 0.0;
            }
        }
        // Index and fraction leave on two ports, the way the pair is wired: the
        // index on port 0, the fraction on port 1. They used to share one
        // two-wide port, which no other block reads that way.
        setOutput(ctx, b.nid, k);
        if (numOutputs(ctx, b.nid) > 1) {
            double* f1 = outputSlice(ctx, b.nid, 1);
            if (f1 != nullptr) {
                f1[0] = f;
            }
        }
        return false;
    }
    //=============================================================================
    // Scalar input; the index and the fraction leave on their own ports.
    bool
    resolvePrelookupDims(const Block& b, const ValMap& vars, const std::vector<PortSig>&,
        std::vector<PortSig>& outSigs, std::string& err)
    {
        nflow::BlockDescriptor bd(b, vars);
        const std::vector<double> bp = bd.paramList("BreakpointsForDimension1");
        if (bp.size() < 2) {
            err = "prelookup requires at least 2 breakpoints";
            return false;
        }
        if (!preIsStrictlyIncreasing(bp)) {
            err = "prelookup breakpoints must be strictly increasing";
            return false;
        }
        for (size_t i = 0; i < outSigs.size() && i < 2; ++i) {
            outSigs[i].setVector(1);
            outSigs[i].type = SigType::Double;
        }
        return true;
    }
    //=============================================================================
} // namespace NFlow
} // namespace Nelson
//=============================================================================

```

</details>

## 💡 Exemple

Prelookup u = 2.5 sur [0 1 2 3 4], puis interpoler la table [0 1 4 9 16] -> 6.5.

```matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',2.5)), struct('id','pl','type','prelookup','inputs',1,'outputs',1,'params',struct('BreakpointsForDimension1',[0 1 2 3 4])), struct('id','ip','type','interpolationPrelookup','inputs',1,'outputs',1,'params',struct('Table',[0 1 4 9 16])), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','pl','fromIndex',0,'toIndex',0), struct('from','pl','to','ip','fromIndex',0,'toIndex',0), struct('from','ip','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```

## 🔗 Voir aussi

[interpolationPrelookup](../../nflow_blocks/lookup/interpolationPrelookup.md), [lookup1D](../../nflow_blocks/lookup/lookup1D.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
