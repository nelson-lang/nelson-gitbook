# busSelector

Extracts members from a bus by path.

## 📝 Syntax

- Block type: busSelector

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 2 output port(s) declared.

## 📄 Description

Extracts members from a bus by path.

| Field   | Value                     |
| ------- | ------------------------- |
| Module  | <code>nflow_blocks</code> |
| Library | Utility blocks            |
| Type    | <code>busSelector</code>  |
| Label   | Bus Selector              |

<b>Description</b>

Reads its bus input and emits one output port per entry of the <code>SelectedSignals</code> parameter. Paths address nested buses with dots (<code>sub.a</code>); a selected member that is itself a bus yields a bus-typed output.

Each output adopts the member’s full descriptor (type, complexity, N-D shape). An unknown path is a compile-time error listing the available members.

This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

Code generation: supported for C and Rust.

<b>Implementation Sources</b>

<details>
<summary>Manifest: <code>modules/nflow_blocks/libraries/utility/library.json</code></summary>

```json
{
  "id": "builtin.utility",
  "title": "Utility",
  "version": "1.0.0",
  "format": "nflow-2",
  "metadata": {
    "author": "Allan CORNET",
    "created": "2026-03-21",
    "tool": "Nelson nflow"
  },
  "comment": "Utility blocks such as switches, comments, and subsystems",
  "license": "LGPL-3.0",
  "builtin": true,
  "blocks": [
    {
      "type": "comment",
      "label": "Comment",
      "icon": "comment.svg",
      "phases": [],
      "width": 220,
      "height": 120,
      "inputs": [],
      "outputs": [],
      "defaultParams": {
        "CommentText": "",
        "ShowBorder": true
      },
      "render": {
        "type": "comment",
        "bodyClass": "block-body"
      }
    },
    {
      "type": "switch",
      "label": "Switch",
      "icon": "switch.svg",
      "phases": ["ALGEBRAIC"],
      "width": 80,
      "height": 80,
      "inputs": [
        {
          "x": 0,
          "y": 0,
          "side": "left"
        },
        {
          "x": 0,
          "y": 40,
          "side": "left"
        },
        {
          "x": 0,
          "y": 80,
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
        "Criteria": "ge",
        "Threshold": 0
      },
      "render": {
        "type": "math",
        "bodyClass": "block-body",
        "mathGroupClass": "switch-math"
      }
    },
    {
      "type": "multiportSwitch",
      "label": "Multiport Switch",
      "icon": "multiportSwitch.svg",
      "phases": ["ALGEBRAIC"],
      "width": 40,
      "height": 80,
      "inputs": [
        {
          "x": 20,
          "y": 0,
          "side": "top"
        },
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
          "x": 40,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "DataPortCount": 3
      },
      "render": {
        "type": "image",
        "src": "exports/multiportSwitch.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 40,
        "height": 90
      }
    },
    {
      "type": "toggleSwitch",
      "label": "Toggle Switch",
      "icon": "toggleSwitch.svg",
      "phases": ["OUTPUT"],
      "width": 80,
      "height": 50,
      "inputs": [],
      "outputs": [
        {
          "x": 80,
          "y": 25,
          "side": "right"
        }
      ],
      "defaultParams": {
        "State": 0,
        "OnLabel": "ON",
        "OffLabel": "OFF",
        "OnValue": 1,
        "OffValue": 0
      },
      "render": {
        "type": "toggle"
      }
    },
    {
      "type": "subsystem",
      "icon": "subsystem.svg",
      "label": "Subsystem",
      "phases": ["INIT", "OUTPUT", "ALGEBRAIC", "UPDATE"],
      "width": 120,
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
          "x": 120,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "name": "Subsystem",
        "externalInputs": [],
        "externalOutputs": [],
        "subsystem": null
      },
      "render": {
        "type": "math",
        "bodyClass": "block-body",
        "mathGroupClass": "subsystem-math",
        "formula": "\\mathsf{Sub}"
      }
    },
    {
      "type": "mux",
      "label": "Mux",
      "icon": "mux.svg",
      "phases": ["OUTPUT"],
      "width": 8,
      "height": 40,
      "inputs": [
        {
          "x": 0,
          "y": 10,
          "side": "left"
        },
        {
          "x": 0,
          "y": 30,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 8,
          "y": 20,
          "side": "right"
        }
      ],
      "defaultParams": {
        "Inputs": 2
      }
    },
    {
      "type": "demux",
      "label": "Demux",
      "icon": "demux.svg",
      "phases": ["OUTPUT"],
      "width": 8,
      "height": 40,
      "inputs": [
        {
          "x": 0,
          "y": 20,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 8,
          "y": 10,
          "side": "right"
        },
        {
          "x": 8,
          "y": 30,
          "side": "right"
        }
      ],
      "defaultParams": {
        "Outputs": 2
      }
    },
    {
      "type": "convert",
      "label": "Convert",
      "icon": "convert.svg",
      "phases": ["ALGEBRAIC"],
      "width": 90,
      "height": 50,
      "inputs": [
        {
          "x": 0,
          "y": 25,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 90,
          "y": 25,
          "side": "right"
        }
      ],
      "defaultParams": {
        "OutDataType": "double",
        "SaturateOnOverflow": true,
        "Rounding": "nearest"
      }
    },
    {
      "type": "initialCondition",
      "label": "IC",
      "icon": "initialCondition.svg",
      "phases": ["ALGEBRAIC"],
      "width": 90,
      "height": 50,
      "inputs": [
        {
          "x": 0,
          "y": 25,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 90,
          "y": 25,
          "side": "right"
        }
      ],
      "defaultParams": {
        "InitialValue": 0
      }
    },
    {
      "type": "dataStoreMemory",
      "label": "Data Store Memory",
      "icon": "dataStoreMemory.svg",
      "phases": ["INIT"],
      "width": 70,
      "height": 60,
      "inputs": [],
      "outputs": [],
      "defaultParams": {
        "DataStoreName": "A",
        "InitialValue": 0
      },
      "render": {
        "type": "image",
        "src": "exports/dataStoreMemory.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 70,
        "height": 60
      }
    },
    {
      "type": "dataStoreWrite",
      "label": "Data Store Write",
      "icon": "dataStoreWrite.svg",
      "phases": ["INIT", "UPDATE"],
      "width": 70,
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
        "DataStoreName": "A"
      },
      "render": {
        "type": "image",
        "src": "exports/dataStoreWrite.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 70,
        "height": 60
      }
    },
    {
      "type": "dataStoreRead",
      "label": "Data Store Read",
      "icon": "dataStoreRead.svg",
      "phases": ["OUTPUT"],
      "width": 70,
      "height": 60,
      "inputs": [],
      "outputs": [
        {
          "x": 70,
          "y": 30,
          "side": "right"
        }
      ],
      "defaultParams": {
        "DataStoreName": "A"
      },
      "render": {
        "type": "image",
        "src": "exports/dataStoreRead.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 70,
        "height": 60
      }
    },
    {
      "type": "selector",
      "label": "Selector",
      "icon": "selector.svg",
      "phases": ["ALGEBRAIC"],
      "width": 80,
      "height": 50,
      "inputs": [
        {
          "x": 0,
          "y": 25,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 80,
          "y": 25,
          "side": "right"
        }
      ],
      "defaultParams": {
        "Indices": "1"
      }
    },
    {
      "type": "reshape",
      "label": "Reshape",
      "icon": "reshape.svg",
      "phases": ["INIT", "ALGEBRAIC"],
      "width": 80,
      "height": 50,
      "inputs": [
        {
          "x": 0,
          "y": 25,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 80,
          "y": 25,
          "side": "right"
        }
      ],
      "defaultParams": {
        "OutputDimensions": ""
      }
    },
    {
      "type": "concatenate",
      "label": "Concatenate",
      "icon": "concatenate.svg",
      "phases": ["ALGEBRAIC"],
      "width": 60,
      "height": 60,
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
        }
      ],
      "outputs": [
        {
          "x": 60,
          "y": 30,
          "side": "right"
        }
      ],
      "defaultParams": {
        "ConcatenateDimension": 1
      }
    },
    {
      "type": "busCreator",
      "label": "Bus Creator",
      "icon": "busCreator.svg",
      "phases": ["ALGEBRAIC"],
      "width": 80,
      "height": 70,
      "inputs": [
        {
          "x": 0,
          "y": 25,
          "side": "left"
        },
        {
          "x": 0,
          "y": 45,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 80,
          "y": 35,
          "side": "right"
        }
      ],
      "defaultParams": {
        "BusType": "",
        "NonVirtual": false,
        "MemberNames": []
      }
    },
    {
      "type": "busSelector",
      "label": "Bus Selector",
      "icon": "busSelector.svg",
      "phases": ["ALGEBRAIC"],
      "width": 85,
      "height": 70,
      "inputs": [
        {
          "x": 0,
          "y": 35,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 85,
          "y": 25,
          "side": "right"
        },
        {
          "x": 85,
          "y": 45,
          "side": "right"
        }
      ],
      "defaultParams": {
        "SelectedSignals": [],
        "OutputAsBus": false
      }
    },
    {
      "type": "merge",
      "label": "Merge",
      "icon": "merge.svg",
      "phases": ["INIT", "ALGEBRAIC"],
      "width": 40,
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
          "x": 40,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "InitialOutput": 0
      },
      "render": {
        "type": "image",
        "src": "exports/merge.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 40,
        "height": 80
      }
    },
    {
      "type": "functionCallGenerator",
      "label": "Function-Call Generator",
      "icon": "functionCallGenerator.svg",
      "phases": ["ALGEBRAIC"],
      "width": 90,
      "height": 60,
      "inputs": [],
      "outputs": [
        {
          "x": 90,
          "y": 30,
          "side": "right"
        }
      ],
      "defaultParams": {
        "NumberOfIterations": 1
      },
      "render": {
        "type": "image",
        "src": "exports/functionCallGenerator.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 90,
        "height": 60
      }
    },
    {
      "type": "functionCallSplit",
      "label": "Function-Call Split",
      "icon": "functionCallSplit.svg",
      "phases": [],
      "width": 60,
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
          "x": 60,
          "y": 30,
          "side": "right"
        },
        {
          "x": 60,
          "y": 50,
          "side": "right"
        }
      ],
      "defaultParams": {},
      "render": {
        "type": "image",
        "src": "exports/functionCallSplit.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 60,
        "height": 80
      }
    },
    {
      "type": "iteratorNumber",
      "label": "Iterator Number",
      "icon": "iteratorNumber.svg",
      "phases": ["OUTPUT"],
      "width": 70,
      "height": 50,
      "inputs": [],
      "outputs": [
        {
          "x": 70,
          "y": 25,
          "side": "right"
        }
      ],
      "defaultParams": {},
      "render": {
        "type": "image",
        "src": "exports/iteratorNumber.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 70,
        "height": 50
      }
    },
    {
      "type": "iteratorCondition",
      "label": "Iterator Condition",
      "icon": "iteratorCondition.svg",
      "phases": ["ALGEBRAIC"],
      "width": 70,
      "height": 50,
      "inputs": [
        {
          "x": 0,
          "y": 25,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 70,
          "y": 25,
          "side": "right"
        }
      ],
      "defaultParams": {},
      "render": {
        "type": "image",
        "src": "exports/iteratorCondition.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 70,
        "height": 50
      }
    },
    {
      "type": "width",
      "label": "Width",
      "icon": "width.svg",
      "phases": ["ALGEBRAIC"],
      "width": 80,
      "height": 50,
      "inputs": [
        {
          "x": 0,
          "y": 25,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 80,
          "y": 25,
          "side": "right"
        }
      ],
      "defaultParams": {}
    },
    {
      "type": "signalConversion",
      "label": "Signal Conversion",
      "icon": "signalConversion.svg",
      "phases": ["ALGEBRAIC"],
      "width": 90,
      "height": 50,
      "inputs": [
        {
          "x": 0,
          "y": 25,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 90,
          "y": 25,
          "side": "right"
        }
      ],
      "defaultParams": {}
    },
    {
      "type": "assignment",
      "label": "Assignment",
      "icon": "assignment.svg",
      "phases": ["ALGEBRAIC"],
      "width": 90,
      "height": 60,
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
        }
      ],
      "outputs": [
        {
          "x": 90,
          "y": 30,
          "side": "right"
        }
      ],
      "defaultParams": {
        "Indices": [1]
      }
    },
    {
      "type": "busAssignment",
      "label": "Bus Assignment",
      "icon": "busAssignment.svg",
      "phases": ["ALGEBRAIC"],
      "width": 100,
      "height": 60,
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
        }
      ],
      "outputs": [
        {
          "x": 100,
          "y": 30,
          "side": "right"
        }
      ],
      "defaultParams": {
        "AssignedSignals": []
      }
    }
  ]
}
```

</details>


<details>
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/routing/busSelector.cpp</code></summary>

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
// busSelector: extract members (or nested sub-buses) from a bus by path
// ("a" or "a.b.c"), one output port per selected path. Member offsets come
// from the registry (SimCtx::busRegistry); all storage lanes are preserved.
//=============================================================================
#include "routing_blocks.hpp"
#include "SimEngineBusTypes.hpp"
#include "FieldNames.hpp"
#include "NFlowBlockDescriptor.hpp"
#include <algorithm>
//=============================================================================
namespace {
// Selected paths from the SelectedSignals parameter.
std::vector<std::string>
selectedPaths(const Nelson::NFlow::Block& b)
{
    std::vector<std::string> paths;
    if (b.params.contains(nflow::kSelectedSignals)
        && b.params[nflow::kSelectedSignals].is_array()) {
        for (const auto& s : b.params[nflow::kSelectedSignals]) {
            if (s.is_string()) {
                paths.push_back(s.get<std::string>());
            }
        }
    }
    return paths;
}

bool
outputAsBus(const Nelson::NFlow::Block& b)
{
    return b.params.contains(nflow::kOutputAsBus) && b.params[nflow::kOutputAsBus].is_boolean()
        && b.params[nflow::kOutputAsBus].get<bool>();
}

std::string
memberNameForPath(const std::vector<std::string>& paths, size_t idx)
{
    std::string name = paths[idx];
    const size_t dot = name.find_last_of('.');
    if (dot != std::string::npos && dot + 1 < name.size()) {
        name = name.substr(dot + 1);
    }
    for (size_t k = 0; k < idx; ++k) {
        std::string other = paths[k];
        const size_t odot = other.find_last_of('.');
        if (odot != std::string::npos && odot + 1 < other.size()) {
            other = other.substr(odot + 1);
        }
        if (other == name) {
            name = paths[idx];
            std::replace(name.begin(), name.end(), '.', '_');
            break;
        }
    }
    return name;
}
} // namespace
//=============================================================================
bool
Nelson::NFlow::handleBusSelector(SimCtx& ctx, const Block& b, Phase phase)
{
    if (phase != Phase::ALGEBRAIC) {
        return false;
    }
    SigView v = getInputSig(ctx, b.nid, 0);
    const std::vector<std::string> paths = selectedPaths(b);
    // The input port's descriptor carries the bus id.
    int busId = -1;
    if (ctx.inputSigs && ctx.sigs && b.nid < (int)ctx.inputSigs->size()) {
        const auto& sIds = (*ctx.inputSigs)[b.nid];
        if (!sIds.empty() && sIds[0] >= 0 && sIds[0] < (int)ctx.sigs->size()) {
            busId = (*ctx.sigs)[sIds[0]].busTypeId;
        }
    }
    if (busId < 0 || !ctx.busRegistry) {
        return false;
    }
    bool changed = false;
    if (outputAsBus(b)) {
        double* y = outputSlice(ctx, b.nid, 0);
        double* yim = outputSliceImag(ctx, b.nid, 0);
        long long* yi = outputSliceI64(ctx, b.nid, 0);
        int dst = 0;
        const int outW = outputWidth(ctx, b.nid, 0);
        for (const auto& path : paths) {
            const int off = ctx.busRegistry->memberOffset(busId, path);
            const PortSig* ms = ctx.busRegistry->resolvePath(busId, path);
            if (off < 0 || !ms) {
                continue;
            }
            const int wo
                = (ms->busTypeId >= 0) ? ctx.busRegistry->packedWidth(ms->busTypeId) : ms->width();
            for (int k = 0; k < wo && dst < outW; ++k, ++dst) {
                const int src = off + k;
                const double val = sigAt(v, src);
                if (y[dst] != val) {
                    y[dst] = val;
                    changed = true;
                }
                if (yim) {
                    const double iv = (v.imag && v.width > 0)
                        ? ((v.width == 1) ? v.imag[0] : v.imag[src])
                        : 0.0;
                    if (yim[dst] != iv) {
                        yim[dst] = iv;
                        changed = true;
                    }
                }
                if (yi) {
                    const long long ev
                        = v.idata ? ((v.width == 1) ? v.idata[0] : v.idata[src]) : (long long)val;
                    if (yi[dst] != ev) {
                        yi[dst] = ev;
                        changed = true;
                    }
                }
            }
        }
        return changed;
    }
    const int nOut = std::max(1, b.outputs);
    for (int p = 0; p < nOut && p < (int)paths.size(); ++p) {
        const int off = ctx.busRegistry->memberOffset(busId, paths[(size_t)p]);
        if (off < 0) {
            continue; // rejected at compile time; defensive here
        }
        const int wo = outputWidth(ctx, b.nid, p);
        double* y = outputSlice(ctx, b.nid, p);
        double* yim = outputSliceImag(ctx, b.nid, p);
        long long* yi = outputSliceI64(ctx, b.nid, p);
        for (int k = 0; k < wo; ++k) {
            const int src = off + k;
            const double val = sigAt(v, src);
            if (y[k] != val) {
                y[k] = val;
                changed = true;
            }
            if (yim) {
                const double iv
                    = (v.imag && v.width > 0) ? ((v.width == 1) ? v.imag[0] : v.imag[src]) : 0.0;
                if (yim[k] != iv) {
                    yim[k] = iv;
                    changed = true;
                }
            }
            if (yi) {
                const long long ev
                    = v.idata ? ((v.width == 1) ? v.idata[0] : v.idata[src]) : (long long)val;
                if (yi[k] != ev) {
                    yi[k] = ev;
                    changed = true;
                }
            }
        }
    }
    return changed;
}
//=============================================================================
// Dimension/type rule: each selected path adopts the member's descriptor
// (nested sub-bus paths yield a bus-typed output port).
bool
Nelson::NFlow::resolveBusSelectorDims(const Block& b, const ValMap& /*vars*/,
    const std::vector<PortSig>& inSigs, std::vector<PortSig>& outSigs, BusRegistry& busReg,
    std::string& err)
{
    const int busId = inSigs.empty() ? -1 : inSigs[0].busTypeId;
    if (busId < 0) {
        // Input bus not resolved yet (or a non-bus input): leave the ports
        // as-is; the not-a-bus case is rejected after the fixed point.
        return true;
    }
    const std::vector<std::string> paths = selectedPaths(b);
    if (paths.empty()) {
        err = "busSelector requires a non-empty SelectedSignals list";
        return false;
    }
    if (outputAsBus(b)) {
        BusType t;
        t.nonvirtual = false;
        for (size_t p = 0; p < paths.size(); ++p) {
            const PortSig* ms = busReg.resolvePath(busId, paths[p]);
            if (!ms) {
                const BusType* bt = busReg.get(busId);
                std::string members;
                if (bt) {
                    for (const auto& m : bt->members) {
                        if (!members.empty()) {
                            members += ", ";
                        }
                        members += m.name;
                    }
                }
                err = "unknown bus member '" + paths[p] + "' (available: " + members + ")";
                return false;
            }
            BusMember m;
            m.name = memberNameForPath(paths, p);
            m.sig = *ms;
            m.sig.offset = -1;
            t.members.push_back(std::move(m));
        }
        int id = -1;
        const int probe = busReg.add(t);
        for (int k = 0; k < probe; ++k) {
            if (busReg.structurallyEqual(k, probe)) {
                id = k;
                break;
            }
        }
        if (id >= 0) {
            busReg.types.pop_back();
        } else {
            id = probe;
        }
        outSigs[0].busTypeId = id;
        outSigs[0].setVector(std::max(1, busReg.packedWidth(id)));
        outSigs[0].type = SigType::Double;
        outSigs[0].isComplex = false;
        return true;
    }
    for (size_t p = 0; p < paths.size() && p < outSigs.size(); ++p) {
        const PortSig* ms = busReg.resolvePath(busId, paths[p]);
        if (!ms) {
            const BusType* t = busReg.get(busId);
            std::string members;
            if (t) {
                for (const auto& m : t->members) {
                    if (!members.empty()) {
                        members += ", ";
                    }
                    members += m.name;
                }
            }
            err = "unknown bus member '" + paths[p] + "' (available: " + members + ")";
            return false;
        }
        const int keepOffset = outSigs[p].offset;
        outSigs[p] = *ms;
        outSigs[p].offset = keepOffset;
        if (outSigs[p].busTypeId >= 0) {
            // Nested sub-bus output: packed footprint.
            outSigs[p].setVector(std::max(1, busReg.packedWidth(outSigs[p].busTypeId)));
            outSigs[p].type = SigType::Double;
            outSigs[p].isComplex = false;
        }
    }
    return true;
}
//=============================================================================

```

</details>

## 🔗 See also

[busCreator](../../nflow_blocks/utility/busCreator.md), [demux](../../nflow_blocks/utility/demux.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
