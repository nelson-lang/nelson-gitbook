# dashboardLamp

<p align="center">
<img src="dashboardLamp.svg"/>
</p>
Affiche un voyant colore qui change selon un signal lie.

## 📝 Syntaxe

- Block type: dashboardLamp

## 📄 Description

Affiche un voyant colore qui change selon un signal lie.

| Champ        | Valeur                     |
| ------------ | -------------------------- |
| Module       | <code>nflow_blocks</code>  |
| Bibliotheque | Blocs tableau de bord      |
| Type         | <code>dashboardLamp</code> |
| Libelle      | Lamp                       |

<b>Description</b>

Le bloc Lamp affiche un voyant colore dont la couleur depend de la valeur du signal lie. Des correspondances valeur-couleur definissent les couleurs d etat; les autres valeurs utilisent la couleur par defaut.

<b>Ports</b>

<b>Entree(s)</b>

Ce bloc ne declare aucune entree.

<b>Sortie(s)</b>

Ce bloc ne declare aucune sortie.

<b>Parametres</b>

| Parametre                    | Valeur par defaut                                                                       |
| ---------------------------- | --------------------------------------------------------------------------------------- |
| <code>LabelPosition</code>   | Hide                                                                                    |
| <code>Binding</code>         |                                                                                         |
| <code>ShowInitialText</code> | on                                                                                      |
| <code>ColorDefault</code>    | [0.7529411764705882, 0.7529411764705882, 0.7529411764705882]                            |
| <code>StateColors</code>     | [{"Value": 0, "Color": [0.39215686274509803, 0.8313725490196079, 0.07450980392156863]}] |
| <code>Opacity</code>         | 1                                                                                       |

<b>Cles de l inspecteur</b>

Ces cles serialisees sont exposees par l inspecteur du bloc.

- <code>LabelPosition</code>
- <code>Binding</code>
- <code>ShowInitialText</code>
- <code>ColorDefault</code>
- <code>StateColors</code>
- <code>Opacity</code>

<b>Caracteristiques du bloc</b>

| Champ                      | Valeur                    |
| -------------------------- | ------------------------- |
| Type de bloc               | dashboardLamp             |
| Famille                    | Blocs tableau de bord     |
| Taille graphique           | 65 x 60                   |
| Phases                     | INIT, AFTER_STEP          |
| Traversee directe          | voir Algorithmes          |
| Etat ou historique interne | oui                       |
| Type de donnees signaux    | valeurs numeriques double |

<b>Algorithmes</b>

- INIT reinitialise le widget a son affichage initial.
- AFTER_STEP echantillonne le signal lie et rafraichit l affichage.
- Le bloc ne fait que visualiser le signal; il ne declare aucun port de signal en entree ou sortie.

<b>Capacites et limites</b>

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

Generation de code : prise en charge pour C et Rust.

<b>Sources d implementation</b>

<details>
<summary>Manifest: <code>modules/nflow_blocks/libraries/dashboard/library.json</code></summary>

```json
{
  "id": "builtin.dashboard",
  "title": "Dashboard",
  "version": "1.0.0",
  "format": "nflow-2",
  "metadata": {
    "author": "Allan CORNET",
    "created": "2026-08-07",
    "tool": "Nelson nflow"
  },
  "comment": "Interactive controls and signal displays",
  "license": "LGPL-3.0",
  "builtin": true,
  "blocks": [
    {
      "type": "dashboardScope",
      "label": "Dashboard Scope",
      "icon": "dashboardScope.svg",
      "phases": ["INIT", "AFTER_STEP"],
      "width": 230,
      "height": 165,
      "inputs": [],
      "outputs": [],
      "defaultParams": {
        "LabelPosition": "Hide",
        "Binding": null,
        "ShowInitialText": "on",
        "TimeSpan": "auto",
        "LegendPosition": "Top",
        "ScaleAtStop": "on",
        "UpdateMode": "Wrap",
        "NormalizeYAxis": "off",
        "TicksPosition": "Outside",
        "TickLabels": "All",
        "Grid": "All",
        "Border": "on",
        "Markers": "off",
        "FontColor": [0, 0, 0],
        "YLimits": [-3, 3],
        "Colors": []
      },
      "render": {
        "type": "math",
        "formula": "Dashboard Scope"
      }
    },
    {
      "type": "dashboardDisplay",
      "label": "Display",
      "icon": "dashboardDisplay.svg",
      "phases": ["INIT", "AFTER_STEP"],
      "width": 180,
      "height": 40,
      "inputs": [],
      "outputs": [],
      "defaultParams": {
        "LabelPosition": "Hide",
        "Binding": null,
        "ShowInitialText": "on",
        "Format": "short",
        "Alignment": "Center",
        "Opacity": "1",
        "Layout": "Preserve dimensions",
        "FormatString": "%d",
        "GridColor": [0.502, 0.502, 0.502],
        "ShowGrid": "on"
      },
      "render": {
        "type": "math",
        "formula": "Display"
      }
    },
    {
      "type": "dashboardEdit",
      "label": "Edit",
      "icon": "dashboardEdit.svg",
      "phases": [],
      "width": 150,
      "height": 30,
      "inputs": [],
      "outputs": [],
      "defaultParams": {
        "LabelPosition": "Hide",
        "Binding": null,
        "ShowInitialText": "on",
        "Alignment": "Center",
        "Opacity": "1"
      },
      "render": {
        "type": "math",
        "formula": "Edit"
      }
    },
    {
      "type": "dashboardGauge",
      "label": "Gauge",
      "icon": "dashboardGauge.svg",
      "phases": ["INIT", "AFTER_STEP"],
      "width": 125,
      "height": 140,
      "inputs": [],
      "outputs": [],
      "defaultParams": {
        "LabelPosition": "Top",
        "Binding": null,
        "ShowInitialText": "on",
        "ScaleColors": [],
        "Limits": [0, -1, 100],
        "FontColor": [0, 0, 0],
        "Opacity": "1",
        "ScaleDirection": "Clockwise"
      },
      "render": {
        "type": "math",
        "formula": "Gauge"
      }
    },
    {
      "type": "dashboardHalfGauge",
      "label": "Half Gauge",
      "icon": "dashboardHalfGauge.svg",
      "phases": ["INIT", "AFTER_STEP"],
      "width": 156,
      "height": 108,
      "inputs": [],
      "outputs": [],
      "defaultParams": {
        "LabelPosition": "Top",
        "Binding": null,
        "ShowInitialText": "on",
        "ScaleColors": [],
        "Limits": [0, -1, 100],
        "FontColor": [0, 0, 0],
        "Opacity": "1",
        "ScaleDirection": "Clockwise"
      },
      "render": {
        "type": "math",
        "formula": "Half Gauge"
      }
    },
    {
      "type": "dashboardKnob",
      "label": "Knob",
      "icon": "dashboardKnob.svg",
      "phases": [],
      "width": 110,
      "height": 115,
      "inputs": [],
      "outputs": [],
      "defaultParams": {
        "LabelPosition": "Top",
        "Binding": null,
        "ShowInitialText": "on",
        "ScaleType": "Linear",
        "Limits": [0, -1, 100]
      },
      "render": {
        "type": "math",
        "formula": "Knob"
      }
    },
    {
      "type": "dashboardLamp",
      "label": "Lamp",
      "icon": "dashboardLamp.svg",
      "phases": ["INIT", "AFTER_STEP"],
      "width": 65,
      "height": 60,
      "inputs": [],
      "outputs": [],
      "defaultParams": {
        "LabelPosition": "Hide",
        "Binding": null,
        "ShowInitialText": "on",
        "ColorDefault": [
          0.7529411764705882, 0.7529411764705882, 0.7529411764705882
        ],
        "StateColors": [
          {
            "Value": 0,
            "Color": [
              0.392156862745098, 0.8313725490196079, 0.07450980392156863
            ]
          }
        ],
        "Opacity": "1"
      },
      "render": {
        "type": "math",
        "formula": "Lamp"
      }
    },
    {
      "type": "dashboardLinearGauge",
      "label": "Linear Gauge",
      "icon": "dashboardLinearGauge.svg",
      "phases": ["INIT", "AFTER_STEP"],
      "width": 210,
      "height": 90,
      "inputs": [],
      "outputs": [],
      "defaultParams": {
        "LabelPosition": "Top",
        "Binding": null,
        "ShowInitialText": "on",
        "ScaleColors": [],
        "Limits": [0, -1, 100],
        "FontColor": [0, 0, 0],
        "Opacity": "1",
        "ScaleDirection": "Clockwise"
      },
      "render": {
        "type": "math",
        "formula": "Linear Gauge"
      }
    },
    {
      "type": "dashboardMultiStateImage",
      "label": "MultiStateImage",
      "icon": "dashboardMultiStateImage.svg",
      "phases": ["INIT", "AFTER_STEP"],
      "width": 190,
      "height": 180,
      "inputs": [],
      "outputs": [],
      "defaultParams": {
        "LabelPosition": "Top",
        "Binding": null,
        "ShowInitialText": "on",
        "States": [
          {
            "State": 0,
            "Size": [0, 0],
            "Image": "",
            "Thumbnail": ""
          }
        ],
        "DefaultImage": {
          "Size": [0, 0],
          "Image": "",
          "Thumbnail": ""
        },
        "ScaleMode": "Fill with fixed aspect ratio"
      },
      "render": {
        "type": "math",
        "formula": "MultiStateImage"
      }
    },
    {
      "type": "dashboardPushButton",
      "label": "Push Button",
      "icon": "dashboardPushButton.svg",
      "phases": [],
      "width": 91,
      "height": 44,
      "inputs": [],
      "outputs": [],
      "defaultParams": {
        "LabelPosition": "Hide",
        "Binding": null,
        "ShowInitialText": "on",
        "ButtonText": "Button",
        "OnValue": "1",
        "Opacity": "1",
        "ButtonType": "Momentary",
        "Icon": "None",
        "CustomIcon": "",
        "IconAlignment": "Left",
        "IconOnColor": [0, 0.392156862745098, 0],
        "IconOffColor": [0, 1, 0],
        "IconColor": "Off"
      },
      "render": {
        "type": "math",
        "formula": "Push Button"
      }
    },
    {
      "type": "dashboardQuarterGauge",
      "label": "Quarter Gauge",
      "icon": "dashboardQuarterGauge.svg",
      "phases": ["INIT", "AFTER_STEP"],
      "width": 140,
      "height": 160,
      "inputs": [],
      "outputs": [],
      "defaultParams": {
        "LabelPosition": "Top",
        "Binding": null,
        "ShowInitialText": "on",
        "ScaleColors": [],
        "Limits": [0, -1, 100],
        "FontColor": [0, 0, 0],
        "Opacity": "1",
        "ScaleDirection": "Clockwise"
      },
      "render": {
        "type": "math",
        "formula": "Quarter Gauge"
      }
    },
    {
      "type": "dashboardRadioButton",
      "label": "Radio Button",
      "icon": "dashboardRadioButton.svg",
      "phases": [],
      "width": 135,
      "height": 115,
      "inputs": [],
      "outputs": [],
      "defaultParams": {
        "LabelPosition": "Top",
        "Binding": null,
        "ShowInitialText": "on",
        "ButtonGroupName": "Group",
        "States": [
          {
            "Value": 0,
            "Label": "Label1"
          },
          {
            "Value": 1,
            "Label": "Label2"
          },
          {
            "Value": 2,
            "Label": "Label3"
          }
        ],
        "UseEnumeratedDataType": "off",
        "EnumeratedDataType": "",
        "Opacity": "1"
      },
      "render": {
        "type": "math",
        "formula": "Radio Button"
      }
    },
    {
      "type": "dashboardRockerSwitch",
      "label": "Rocker Switch",
      "icon": "dashboardRockerSwitch.svg",
      "phases": [],
      "width": 55,
      "height": 100,
      "inputs": [],
      "outputs": [],
      "defaultParams": {
        "LabelPosition": "Top",
        "Binding": null,
        "ShowInitialText": "on",
        "States": [
          {
            "Value": 0,
            "Label": "Off"
          },
          {
            "Value": 1,
            "Label": "On"
          }
        ]
      },
      "render": {
        "type": "math",
        "formula": "Rocker Switch"
      }
    },
    {
      "type": "dashboardRotarySwitch",
      "label": "Rotary Switch",
      "icon": "dashboardRotarySwitch.svg",
      "phases": [],
      "width": 125,
      "height": 100,
      "inputs": [],
      "outputs": [],
      "defaultParams": {
        "LabelPosition": "Top",
        "Binding": null,
        "ShowInitialText": "on",
        "States": [
          {
            "Value": 0,
            "Label": "Off"
          },
          {
            "Value": 1,
            "Label": "Low"
          },
          {
            "Value": 2,
            "Label": "Medium"
          },
          {
            "Value": 3,
            "Label": "High"
          }
        ],
        "UseEnumeratedDataType": "off",
        "EnumeratedDataType": ""
      },
      "render": {
        "type": "math",
        "formula": "Rotary Switch"
      }
    },
    {
      "type": "dashboardSlider",
      "label": "Slider",
      "icon": "dashboardSlider.svg",
      "phases": [],
      "width": 200,
      "height": 90,
      "inputs": [],
      "outputs": [],
      "defaultParams": {
        "LabelPosition": "Top",
        "Binding": null,
        "ShowInitialText": "on",
        "ScaleType": "Linear",
        "Limits": [0, -1, 100]
      },
      "render": {
        "type": "math",
        "formula": "Slider"
      }
    },
    {
      "type": "dashboardSliderSwitch",
      "label": "Slider Switch",
      "icon": "dashboardSliderSwitch.svg",
      "phases": [],
      "width": 120,
      "height": 45,
      "inputs": [],
      "outputs": [],
      "defaultParams": {
        "LabelPosition": "Top",
        "Binding": null,
        "ShowInitialText": "on",
        "States": [
          {
            "Value": 0,
            "Label": "Off"
          },
          {
            "Value": 1,
            "Label": "On"
          }
        ]
      },
      "render": {
        "type": "math",
        "formula": "Slider Switch"
      }
    },
    {
      "type": "dashboardToggleSwitch",
      "label": "Toggle Switch",
      "icon": "dashboardToggleSwitch.svg",
      "phases": [],
      "width": 55,
      "height": 100,
      "inputs": [],
      "outputs": [],
      "defaultParams": {
        "LabelPosition": "Top",
        "Binding": null,
        "ShowInitialText": "on",
        "States": [
          {
            "Value": 0,
            "Label": "Off"
          },
          {
            "Value": 1,
            "Label": "On"
          }
        ]
      },
      "render": {
        "type": "math",
        "formula": "Toggle Switch"
      }
    },
    {
      "type": "dashboardCallbackButton",
      "label": "Callback Button",
      "icon": "dashboardCallbackButton.svg",
      "phases": [],
      "width": 110,
      "height": 35,
      "inputs": [],
      "outputs": [],
      "defaultParams": {
        "LabelPosition": "Top",
        "Binding": null,
        "ShowInitialText": "off",
        "ButtonText": "Callback Button",
        "ButtonType": "Momentary",
        "ClickFcn": "",
        "OnValue": 1,
        "PressDelay": "500",
        "PressFcn": "",
        "RepeatInterval": "0",
        "AutoActivate": true,
        "fixedAspectRatio": "off"
      },
      "render": {
        "type": "math",
        "formula": "Callback Button"
      }
    },
    {
      "type": "dashboardCheckBox",
      "label": "Check Box",
      "icon": "dashboardCheckBox.svg",
      "phases": [],
      "width": 135,
      "height": 30,
      "inputs": [],
      "outputs": [],
      "defaultParams": {
        "LabelPosition": "Hide",
        "Binding": null,
        "ShowInitialText": "on",
        "Label": "Label",
        "Values": [0, 1],
        "Opacity": "1"
      },
      "render": {
        "type": "math",
        "formula": "Check Box"
      }
    },
    {
      "type": "dashboardComboBox",
      "label": "Combo Box",
      "icon": "dashboardComboBox.svg",
      "phases": [],
      "width": 160,
      "height": 25,
      "inputs": [],
      "outputs": [],
      "defaultParams": {
        "LabelPosition": "Hide",
        "Binding": null,
        "ShowInitialText": "on",
        "States": [
          {
            "Value": 0,
            "Label": "Label1"
          },
          {
            "Value": 1,
            "Label": "Label2"
          },
          {
            "Value": 2,
            "Label": "Label3"
          }
        ],
        "UseEnumeratedDataType": "off",
        "EnumeratedDataType": "",
        "Opacity": "1"
      },
      "render": {
        "type": "math",
        "formula": "Combo Box"
      }
    }
  ]
}
```

</details>


<details>
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/DashboardHandlers.cpp</code></summary>

```cpp
//=============================================================================
// Copyright (c) 2026-present Allan CORNET (Nelson)
//=============================================================================
// This file is part of Nelson.
//=============================================================================
// LICENCE_BLOCK_BEGIN
// SPDX-License-Identifier: LGPL-3.0-or-later
// LICENCE_BLOCK_END
//=============================================================================
#include "BlockRegistry.hpp"
#include "SimEngineTypes.hpp"
#include <algorithm>
//=============================================================================
namespace Nelson::NFlow {
//=============================================================================
static bool
dashboardPath(const nlohmann::json& binding, std::vector<std::string>& path)
{
    path.clear();
    if (!binding.is_object() || !binding.contains("blockPath")) {
        return false;
    }
    const auto& value = binding["blockPath"];
    if (value.is_string()) {
        const std::string id = value.get<std::string>();
        if (!id.empty()) {
            path.push_back(id);
        }
    } else if (value.is_array()) {
        for (const auto& item : value) {
            if (item.is_string() && !item.get<std::string>().empty()) {
                path.push_back(item.get<std::string>());
            }
        }
    }
    return !path.empty();
}
//=============================================================================
static bool
readSubsystemOutput(const BlockState::SubsystemState& subsystem,
    const std::vector<std::string>& path, size_t pathIndex, int port, std::vector<double>& values,
    std::vector<double>& valuesImag, std::vector<long long>& valuesI64, int& exactType)
{
    if (pathIndex >= path.size()) {
        return false;
    }
    auto found = subsystem.nameToId.find(path[pathIndex]);
    if (found == subsystem.nameToId.end()) {
        return false;
    }
    const BlockId nid = found->second;
    if (nid < 0 || nid >= static_cast<BlockId>(subsystem.blocks.size())
        || nid >= static_cast<BlockId>(subsystem.blockStateVec.size())) {
        return false;
    }
    if (pathIndex + 1 < path.size()) {
        const auto& nested = subsystem.blockStateVec[nid].subsystem;
        return nested
            && readSubsystemOutput(
                *nested, path, pathIndex + 1, port, values, valuesImag, valuesI64, exactType);
    }

    const Block& source = subsystem.blocks[nid];
    if (port < 0 || port >= source.outputs) {
        return false;
    }
    int offset = -1;
    int width = 1;
    exactType = static_cast<int>(SigType::Double);
    if (!subsystem.portBase.empty() && nid < static_cast<BlockId>(subsystem.portBase.size())) {
        const int gpi = subsystem.portBase[nid] + port;
        if (gpi >= 0 && gpi < static_cast<int>(subsystem.sigs.size())) {
            const PortSig& sig = subsystem.sigs[gpi];
            offset = sig.offset;
            width = std::max(1, sig.width());
            exactType = static_cast<int>(sig.type);
            if (sig.isComplex && offset >= 0
                && offset + width <= static_cast<int>(subsystem.outputsImagVec.size())) {
                valuesImag.assign(subsystem.outputsImagVec.begin() + offset,
                    subsystem.outputsImagVec.begin() + offset + width);
            }
            if (portUsesI64(sig) && offset >= 0
                && offset + width <= static_cast<int>(subsystem.outputsI64Vec.size())) {
                valuesI64.assign(subsystem.outputsI64Vec.begin() + offset,
                    subsystem.outputsI64Vec.begin() + offset + width);
            }
        }
    }
    if (offset < 0 && nid < static_cast<BlockId>(subsystem.outputBase.size())) {
        offset = subsystem.outputBase[nid] + port;
    }
    if (offset < 0 || offset + width > static_cast<int>(subsystem.outputsVec.size())) {
        return false;
    }
    values.assign(
        subsystem.outputsVec.begin() + offset, subsystem.outputsVec.begin() + offset + width);
    return true;
}
//=============================================================================
static bool
readDashboardSignal(SimCtx& ctx, const nlohmann::json& binding, std::vector<double>& values,
    std::vector<double>& valuesImag, std::vector<long long>& valuesI64, int& exactType)
{
    if (!binding.is_object() || binding.value("kind", std::string()) != "signal") {
        return false;
    }
    std::vector<std::string> path;
    if (!dashboardPath(binding, path)) {
        return false;
    }
    auto found = ctx.nameToId.find(path.front());
    if (found == ctx.nameToId.end()) {
        return false;
    }
    const BlockId nid = found->second;
    const int port = std::max(1, binding.value("outputPortIndex", 1)) - 1;
    if (nid < 0 || nid >= static_cast<BlockId>(ctx.blocks.size())
        || port >= ctx.blocks[nid].outputs) {
        return false;
    }
    if (path.size() > 1) {
        const auto& subsystem = ctx.blockState[nid].subsystem;
        return subsystem
            && readSubsystemOutput(
                *subsystem, path, 1, port, values, valuesImag, valuesI64, exactType);
    }
    const int offset = slotOf(ctx, nid, port);
    const int width = outputWidth(ctx, nid, port);
    if (offset < 0 || width <= 0 || offset + width > static_cast<int>(ctx.outputs.size())) {
        return false;
    }
    values.assign(ctx.outputs.begin() + offset, ctx.outputs.begin() + offset + width);
    const PortSig* signal = portSigOf(ctx, nid, port);
    exactType = static_cast<int>(signal ? signal->type : SigType::Double);
    if (signal && signal->isComplex && ctx.outputsImag
        && offset + width <= static_cast<int>(ctx.outputsImag->size())) {
        valuesImag.assign(
            ctx.outputsImag->begin() + offset, ctx.outputsImag->begin() + offset + width);
    }
    if (signal && portUsesI64(*signal) && ctx.outputsI64
        && offset + width <= static_cast<int>(ctx.outputsI64->size())) {
        valuesI64.assign(
            ctx.outputsI64->begin() + offset, ctx.outputsI64->begin() + offset + width);
    }
    return true;
}
//=============================================================================
static bool
handleDashboardObserver(SimCtx& ctx, const Block& block, Phase phase)
{
    BlockState& state = getState(ctx, block.nid);
    if (phase == Phase::INIT) {
        state.scalar = 0.0;
        state.scalar2 = 0.0;
        state.displayValues.clear();
        state.displayValuesImag.clear();
        state.displayValuesI64.clear();
        state.scopeSeries.clear();
        state.scopeSeriesImag.clear();
        state.scopeSeriesI64.clear();
        state.xSeries.clear();
        state.scopeExactType = static_cast<int>(SigType::Double);
        state.dashboardTouched = false;
        state.dashboardError.clear();
        return false;
    }
    if (phase != Phase::AFTER_STEP) {
        return false;
    }
    const nlohmann::json binding = block.params.value("Binding", nlohmann::json());
    std::vector<double> values;
    std::vector<double> valuesImag;
    std::vector<long long> valuesI64;
    int exactType = static_cast<int>(SigType::Double);
    if (!readDashboardSignal(ctx, binding, values, valuesImag, valuesI64, exactType)) {
        state.scalar2 = 0.0;
        return false;
    }
    state.scalar2 = 1.0;
    state.scopeExactType = exactType;
    state.scalar = values.empty() ? 0.0 : values.front();
    state.displayValues = values;
    state.displayValuesImag = valuesImag;
    state.displayValuesI64 = valuesI64;
    state.dashboardTouched = true;
    if (block.type == "dashboardScope") {
        if (state.scopeSeries.size() != values.size()) {
            state.scopeSeries.assign(values.size(), std::vector<double> {});
        }
        if (!valuesImag.empty() && state.scopeSeriesImag.size() != valuesImag.size()) {
            state.scopeSeriesImag.assign(valuesImag.size(), std::vector<double> {});
        }
        if (!valuesI64.empty() && state.scopeSeriesI64.size() != valuesI64.size()) {
            state.scopeSeriesI64.assign(valuesI64.size(), std::vector<long long> {});
        }
        for (size_t i = 0; i < values.size(); ++i) {
            state.scopeSeries[i].push_back(values[i]);
        }
        for (size_t i = 0; i < valuesImag.size(); ++i) {
            state.scopeSeriesImag[i].push_back(valuesImag[i]);
        }
        for (size_t i = 0; i < valuesI64.size(); ++i) {
            state.scopeSeriesI64[i].push_back(valuesI64[i]);
        }
        state.xSeries.push_back(ctx.t);
    }
    return false;
}
//=============================================================================
static bool
handleDashboardControl(SimCtx&, const Block&, Phase)
{
    return false;
}
//=============================================================================
void
registerDashboardHandlers(BlockRegistry& registry)
{
    const char* observers[] = { "dashboardScope", "dashboardDisplay", "dashboardGauge",
        "dashboardHalfGauge", "dashboardQuarterGauge", "dashboardLinearGauge", "dashboardLamp",
        "dashboardMultiStateImage" };
    for (const char* type : observers) {
        registry.registerHandler(
            type, handleDashboardObserver, { Phase::INIT, Phase::AFTER_STEP }, "builtin.dashboard");
    }

    const char* controls[] = { "dashboardEdit", "dashboardKnob", "dashboardSlider",
        "dashboardPushButton", "dashboardRotarySwitch", "dashboardRadioButton", "dashboardComboBox",
        "dashboardCheckBox", "dashboardRockerSwitch", "dashboardSliderSwitch",
        "dashboardToggleSwitch", "dashboardCallbackButton" };
    BlockMetadata metadata;
    metadata.interactive = true;
    for (const char* type : controls) {
        registry.registerHandler(type, handleDashboardControl, {}, "builtin.dashboard", metadata);
    }
}
//=============================================================================
} // namespace Nelson::NFlow
//=============================================================================

```

</details>

## 🔗 Voir aussi

[dashboardLinearGauge](../../nflow_blocks/dashboard/dashboardLinearGauge.md), [dashboardMultiStateImage](../../nflow_blocks/dashboard/dashboardMultiStateImage.md), [dashboardPushButton](../../nflow_blocks/dashboard/dashboardPushButton.md), [dashboardQuarterGauge](../../nflow_blocks/dashboard/dashboardQuarterGauge.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
