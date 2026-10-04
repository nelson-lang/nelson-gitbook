# xyzScope

<p align="center">
<img src="xyzScope.svg"/>
</p>
Stores X/Y/Z samples for 3D display.

## 📝 Syntax

- Block type: xyzScope

## 📥 Input argument

- input ports - 3 input port(s) declared.

## 📄 Description

Stores X/Y/Z samples for 3D display.

| Field   | Value                     |
| ------- | ------------------------- |
| Module  | <code>nflow_blocks</code> |
| Library | Sink blocks               |
| Type    | <code>xyzScope</code>     |
| Label   | XYZ Scope                 |

<b>Description</b>

3D scope for plotting three time-series components. Includes rotation parameters for 3D view.

<b>Ports</b>

<b>Input(s)</b>

| Port   | Role                              | Side | Position   |
| ------ | --------------------------------- | ---- | ---------- |
| Port_1 | Numeric signal read by the block. | left | x=0, y=50  |
| Port_2 | Numeric signal read by the block. | left | x=0, y=90  |
| Port_3 | Numeric signal read by the block. | left | x=0, y=130 |

<b>Output(s)</b>

This block declares no output ports.

<b>Parameters</b>

| Parameter              | Default value |
| ---------------------- | ------------- |
| <code>xMin</code>      |               |
| <code>xMax</code>      |               |
| <code>yMin</code>      |               |
| <code>yMax</code>      |               |
| <code>zMin</code>      |               |
| <code>zMax</code>      |               |
| <code>width</code>     | 220           |
| <code>height</code>    | 180           |
| <code>rotationX</code> | 30            |
| <code>rotationY</code> | 45            |

<b>Inspector Keys</b>

These serialized keys are exposed by the block inspector.

- <code>xMin</code>
- <code>xMax</code>
- <code>yMin</code>
- <code>yMax</code>
- <code>zMin</code>
- <code>zMax</code>
- <code>width</code>
- <code>height</code>
- <code>rotationX</code>
- <code>rotationY</code>

<b>Block Characteristics</b>

| Field                     | Value                                  |
| ------------------------- | -------------------------------------- |
| Block type                | xyzScope                               |
| Family                    | Sink blocks                            |
| Rendered size             | 220 x 180                              |
| Phases                    | INIT, AFTER_STEP                       |
| Direct feedthrough        | see Algorithms                         |
| Internal state or history | not observed in the documented runtime |
| Signal data type          | double numeric values                  |

<b>Algorithms</b>

- INIT clears xSeries, ySeries, and zSeries.
- AFTER_STEP appends the three inputs; missing inputs append NaN.
- The block has no outputs.

<b>Extended Capabilities</b>

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

Code generation: supported for C and Rust.

<b>Implementation Sources</b>

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
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/sink/xyzScope.cpp</code></summary>

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
#include "sink_blocks.hpp"
//=============================================================================
bool
Nelson::NFlow::handleXyzScope(SimCtx& ctx, const Block& b, Phase phase)
{
    auto& st = getState(ctx, b.nid);
    if (phase == Phase::INIT) {
        st.xSeries.clear();
        st.ySeries.clear();
        st.zSeries.clear();
        return false;
    }
    if (phase == Phase::AFTER_STEP) {
        static constexpr double kNaN = std::numeric_limits<double>::quiet_NaN();
        st.xSeries.push_back(hasInput(ctx, b.nid, 0) ? getInput(ctx, b.nid, 0, 0.0) : kNaN);
        st.ySeries.push_back(hasInput(ctx, b.nid, 1) ? getInput(ctx, b.nid, 1, 0.0) : kNaN);
        st.zSeries.push_back(hasInput(ctx, b.nid, 2) ? getInput(ctx, b.nid, 2, 0.0) : kNaN);
        return false;
    }
    return false;
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenCXyzScope()
{
    BlockCodegenTemplate t;
    t.step = "out_{id} = {in0};";
    return t;
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenRustXyzScope()
{
    BlockCodegenTemplate t;
    t.step = "out_{id} = {in0};";
    return t;
}
//=============================================================================

```

</details>

## 🔗 See also

[scope](../../nflow_blocks/sink/scope.md), [xyScope](../../nflow_blocks/sink/xyScope.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
