# toWorkspace

<p align="center">
<img src="toWorkspace.svg"/>
</p>
Writes the input signal to a Nelson workspace variable.

## 📝 Syntax

- Block type: toWorkspace

## 📥 Input argument

- input ports - 1 input port (scalar or vector, any signal type).

## 📄 Description

Accumulates its input signal at major simulation steps and, when the simulation stops, writes it into the base-workspace variable <code>VariableName</code>.

<code>Decimation</code> keeps one sample out of k (starting with the first). <code>MaxDataPoints</code> keeps only the last N decimated samples (<code>inf</code> keeps everything). <code>SaveFormat</code> selects the variable layout:

- <code>Structure With Time</code>: fields <code>time</code>, <code>signals.values</code> (NxW), <code>signals.dimensions</code>, <code>signals.label</code>, <code>blockName</code>;
- <code>Structure</code>: same with an empty <code>time</code>;
- <code>Array</code>: NxW matrix of samples (use the simulation time grid for timing).

In generated code the block is a no-op (workspace logging has no meaning there).

<b>Parameters</b>

| Parameter                  | Default value       |
| -------------------------- | ------------------- |
| <code>VariableName</code>  | simout              |
| <code>MaxDataPoints</code> | inf                 |
| <code>Decimation</code>    | 1                   |
| <code>SaveFormat</code>    | Structure With Time |
| <code>SampleTime</code>    | -1                  |

<b>Block Characteristics</b>

| Field            | Value                    |
| ---------------- | ------------------------ |
| Block type       | toWorkspace              |
| Family           | Sink blocks              |
| Phases           | INIT, AFTER_STEP         |
| Signal data type | any (recorded as double) |
| Code generation  | no-op                    |

Code generation: supported for C and Rust.

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
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/sink/toWorkspace.cpp</code></summary>

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
#include <limits>
#include <algorithm>
#include "sink_blocks.hpp"
//=============================================================================
// toWorkspace: accumulates its input signal at major steps; the collected
// samples are written into the Nelson workspace AFTER the simulation by the
// builtin layer (see NFlowWorkspaceIO / NelsonWorkspaceBridge), according to
// the SaveFormat parameter.
//
// Reference semantics (measured): Decimation keeps one sample out of k
// (starting with the first), applied BEFORE the MaxDataPoints window, which
// keeps the LAST N decimated samples.
//=============================================================================
bool
Nelson::NFlow::handleToWorkspace(SimCtx& ctx, const Block& b, Phase phase)
{
    auto& st = getState(ctx, b.nid);
    if (phase == Phase::INIT) {
        // Reused BlockState storage: scopeSeries = one series per signal
        // element, xSeries = sample times, scalar2 = step counter,
        // delaySamples = MaxDataPoints.
        SigView v = getInputSig(ctx, b.nid, 0);
        st.scopeSeries.assign(std::max(1, v.width), std::vector<double> {});
        // Typed lanes: latch the source port's nature once.
        st.scopeSeriesImag.clear();
        st.scopeSeriesI64.clear();
        st.scopeExactType = 0;
        if (v.isComplex) {
            st.scopeSeriesImag.assign(std::max(1, v.width), std::vector<double> {});
        }
        if (sigTypeIsExact64(v.type)) {
            st.scopeSeriesI64.assign(std::max(1, v.width), std::vector<long long> {});
            st.scopeExactType = (int)v.type;
        }
        st.xSeries.clear();
        st.scalar2 = 0.0;
        nflow::BlockDescriptor bd(b, ctx.variables);
        st.delaySamples
            = bd.paramDouble(nflow::kMaxDataPoints, std::numeric_limits<double>::infinity());
        if (!(st.delaySamples >= 1.0)) { // NaN, 0 or negative -> unlimited
            st.delaySamples = std::numeric_limits<double>::infinity();
        }
        return false;
    }
    if (phase != Phase::AFTER_STEP) {
        return false;
    }
    nflow::BlockDescriptor bd(b, ctx.variables);
    int decimation = static_cast<int>(bd.paramDouble(nflow::kDecimation, 1.0));
    if (decimation < 1) {
        decimation = 1;
    }
    const int stepIndex = static_cast<int>(st.scalar2);
    st.scalar2 += 1.0;
    if (stepIndex % decimation != 0) {
        return false;
    }
    SigView v = getInputSig(ctx, b.nid, 0);
    const bool conn = hasInput(ctx, b.nid, 0);
    const int w = (int)st.scopeSeries.size();
    const bool bounded = std::isfinite(st.delaySamples);
    const size_t maxPoints = bounded ? (size_t)st.delaySamples : 0;
    if (bounded && maxPoints == 0) {
        return false;
    }
    if (bounded && st.xSeries.size() >= maxPoints) {
        st.xSeries.erase(st.xSeries.begin());
        for (auto& series : st.scopeSeries) {
            if (!series.empty()) {
                series.erase(series.begin());
            }
        }
        for (auto& series : st.scopeSeriesImag) {
            if (!series.empty()) {
                series.erase(series.begin());
            }
        }
        for (auto& series : st.scopeSeriesI64) {
            if (!series.empty()) {
                series.erase(series.begin());
            }
        }
    }
    st.xSeries.push_back(ctx.t);
    for (int i = 0; i < w; ++i) {
        const int src = std::min(i, std::max(0, v.width - 1));
        const double val = conn ? sigAt(v, src) : std::numeric_limits<double>::quiet_NaN();
        st.scopeSeries[i].push_back(val);
        if (i < (int)st.scopeSeriesImag.size()) {
            const double iv = (conn && v.imag && v.width > 0)
                ? ((v.width == 1) ? v.imag[0] : v.imag[src])
                : 0.0;
            st.scopeSeriesImag[i].push_back(iv);
        }
        if (i < (int)st.scopeSeriesI64.size()) {
            const long long ev
                = (conn && v.idata) ? ((v.width == 1) ? v.idata[0] : v.idata[src]) : 0;
            st.scopeSeriesI64[i].push_back(ev);
        }
    }
    return false;
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenCToWorkspace()
{
    // Workspace logging has no meaning in generated code: intentional no-op.
    BlockCodegenTemplate t;
    t.step = "out_{id} = {in0}; /* toWorkspace: no-op in generated code */";
    return t;
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenRustToWorkspace()
{
    BlockCodegenTemplate t;
    t.step = "out_{id} = {in0}; // toWorkspace: no-op in generated code";
    return t;
}
//=============================================================================

```

</details>

## 💡 Example

Open the To Workspace demo (logs a sine to 'simout')

```matlab
open_system([modulepath('nflow_blocks'), '/examples/workspace/To_Workspace_Demo.nflow']);
```

## 🔗 See also

[fromWorkspace](../../nflow_blocks/source/fromWorkspace.md), [scope](../../nflow_blocks/sink/scope.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
