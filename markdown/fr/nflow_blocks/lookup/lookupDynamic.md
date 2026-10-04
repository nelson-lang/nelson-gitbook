# lookupDynamic

<p align="center">
<img src="lookupDynamic.svg"/>
</p>
Recherche 1-D interpolee dont les breakpoints et la table sont pris sur les ports d entree.

## 📝 Syntaxe

- Type de bloc : lookupDynamic

## 📥 Argument d'entrée

- ports d entree - 3 port(s) d entree declare(s).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie declare(s).

## 📄 Description

Recherche 1-D interpolee dont les breakpoints et la table sont pris sur les ports d entree.

| Champ        | Valeur                     |
| ------------ | -------------------------- |
| Module       | <code>nflow_blocks</code>  |
| Bibliotheque | Tables de correspondance   |
| Type         | <code>lookupDynamic</code> |
| Libelle      | Lookup Table Dynamic       |

<b>Description</b>

Une lecture de table 1-D interpolee lineairement dont les donnees de breakpoints et de table proviennent de ports d'entree plutot que de parametres, de sorte que la table peut changer a l'execution. Port 0 = valeur x ; port 1 = vecteur de breakpoints xdat (strictement croissant) ; port 2 = vecteur de table ydat (meme longueur). La sortie est l'interpolation lineaire de (xdat, ydat) en x, bornee hors plage.

Execution native (la table vectorielle a l'execution sera generee en code ulterieurement).

<b>Ports</b>

<b>Entree(s)</b>

| Port   | Role                             | Cote   | Position  |
| ------ | -------------------------------- | ------ | --------- |
| Port_1 | Signal numerique lu par le bloc. | gauche | x=0, y=20 |
| Port_2 | Signal numerique lu par le bloc. | gauche | x=0, y=40 |
| Port_3 | Signal numerique lu par le bloc. | gauche | x=0, y=60 |

<b>Sortie(s)</b>

| Port   | Role                                  | Cote   | Position   |
| ------ | ------------------------------------- | ------ | ---------- |
| Port_1 | Signal numerique produit par le bloc. | droite | x=90, y=40 |

<b>Parametres</b>

| Parametre | Valeur par defaut |
| --------- | ----------------- |
| _none_    |                   |

<b>Caracteristiques du bloc</b>

| Champ                      | Valeur                    |
| -------------------------- | ------------------------- |
| Type de bloc               | lookupDynamic             |
| Famille                    | Tables de correspondance  |
| Taille rendue              | 90 x 80                   |
| Phases                     | ALGEBRAIC                 |
| Etat interne ou historique | non                       |
| Type de donnees du signal  | valeurs numeriques double |

<b>Algorithmes</b>

- ALGEBRAIC : localise l'intervalle dans xdat, interpole ydat lineairement, borne hors plage.

<b>Equation ou regle</b>
$$y = \text{interp}(\text{xdat}, \text{ydat}, x)$$

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
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/lookup/lookupDynamic.cpp</code></summary>

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
// lookupDynamic (Lookup Table Dynamic): a 1-D linearly interpolated lookup whose
// breakpoint and table data come from input ports instead of parameters, so the
// table can change at run time. Port 0 = value x; port 1 = breakpoint vector
// xdat (strictly increasing); port 2 = table vector ydat (same length). Output =
// linear interpolation of (xdat, ydat) at x, clipped outside the range.
// Feedthrough (ALGEBRAIC), real double, scalar output. Native runtime (the
// run-time vector table is a follow-up for code generation).
//=============================================================================
#include "SimEngineTypes.hpp"
#include "BlockRegistry.hpp"
#include "FieldNames.hpp"
#include "NFlowBlockDescriptor.hpp"
#include "lookup_blocks.hpp"
#include <vector>
//=============================================================================
namespace Nelson {
namespace NFlow {
    //=============================================================================
    // Read the table (port 2) safely. The table is indexed with breakpoint
    // indices (0..n-1, n = breakpoint width). When a saved model wires a table
    // port narrower than the breakpoint vector, clamp the index so it can never
    // read past the table region. A width-1 table still broadcasts through
    // sigAt(); an equal-or-wider table is read unchanged, so well-formed models
    // behave identically.
    static inline double
    lookupTableAt(const SigView& yd, int i)
    {
        if (yd.width > 1 && i >= yd.width) {
            i = yd.width - 1;
        }
        return sigAt(yd, i);
    }
    //=============================================================================
    bool
    handleLookupDynamic(SimCtx& ctx, const Block& b, Phase phase)
    {
        if (phase != Phase::ALGEBRAIC) {
            return false;
        }
        if (!hasInput(ctx, b.nid, 0) || !hasInput(ctx, b.nid, 1) || !hasInput(ctx, b.nid, 2)) {
            return false;
        }
        const double x = getInput(ctx, b.nid, 0, 0.0);
        SigView xd = getInputSig(ctx, b.nid, 1);
        SigView yd = getInputSig(ctx, b.nid, 2);
        const int n = xd.width;
        double out = 0.0;
        if (n <= 0) {
            out = 0.0;
        } else if (n == 1) {
            out = lookupTableAt(yd, 0);
        } else if (x <= sigAt(xd, 0)) {
            out = lookupTableAt(yd, 0); // clip below
        } else if (x >= sigAt(xd, n - 1)) {
            out = lookupTableAt(yd, n - 1); // clip above
        } else {
            int i = n - 2;
            while (i > 0 && x < sigAt(xd, i)) {
                --i;
            }
            const double x0 = sigAt(xd, i);
            const double x1 = sigAt(xd, i + 1);
            const double d = x1 - x0;
            const double f = (d != 0.0) ? (x - x0) / d : 0.0;
            const double y0 = lookupTableAt(yd, i);
            const double y1 = lookupTableAt(yd, i + 1);
            out = y0 + f * (y1 - y0);
        }
        setOutput(ctx, b.nid, out);
        return false;
    }
    //=============================================================================
    // Three inputs (value, breakpoints, table); scalar output.
    bool
    resolveLookupDynamicDims(const Block& b, const ValMap& vars, const std::vector<PortSig>&,
        std::vector<PortSig>& outSigs, std::string&)
    {
        (void)b;
        (void)vars;
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

Interpoler ydat=[0 1 4 9 16] sur xdat=[0 1 2 3 4] en x=2.5 -> 6.5.

```matlab
d.blocks={ struct('id','x','type','constant','inputs',0,'outputs',1,'params',struct('Value',2.5)), struct('id','xd','type','constant','inputs',0,'outputs',1,'params',struct('Value',[0 1 2 3 4])), struct('id','yd','type','constant','inputs',0,'outputs',1,'params',struct('Value',[0 1 4 9 16])), struct('id','ld','type','lookupDynamic','inputs',3,'outputs',1,'params',struct()), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','x','to','ld','fromIndex',0,'toIndex',0), struct('from','xd','to','ld','fromIndex',0,'toIndex',1), struct('from','yd','to','ld','fromIndex',0,'toIndex',2), struct('from','ld','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```

## 🔗 Voir aussi

[lookup1D](../../nflow_blocks/lookup/lookup1D.md), [prelookup](../../nflow_blocks/lookup/prelookup.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
