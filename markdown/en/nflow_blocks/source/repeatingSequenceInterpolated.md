# repeatingSequenceInterpolated

<p align="center">
<img src="repeatingSequenceInterpolated.svg"/>
</p>
Periodic piecewise-linear source interpolating a (TimeValues, OutValues) table.

## 📝 Syntax

- Block type: repeatingSequenceInterpolated

## 📥 Input argument

- input ports - No input ports (this block has none).

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description

Periodic piecewise-linear source interpolating a (TimeValues, OutValues) table.

| Field   | Value                                      |
| ------- | ------------------------------------------ |
| Module  | <code>nflow_blocks</code>                  |
| Library | Source                                     |
| Type    | <code>repeatingSequenceInterpolated</code> |
| Label   | Repeating Sequence Interpolated            |

<b>Description</b>

A periodic, piecewise-linear source with no input. The <code>TimeValues</code>/<code>OutValues</code> table defines one period (period = last TimeValues entry); the output linearly interpolates the table at t wrapped into [0, period) and repeats. Stateless (a pure function of time).

<b>Ports</b>

This block has no input ports.

<b>Output(s)</b>

| Port   | Role                                  | Side  | Position   |
| ------ | ------------------------------------- | ----- | ---------- |
| Port_1 | Numeric signal produced by the block. | right | x=80, y=40 |

<b>Parameters</b>

| Parameter               | Default value |
| ----------------------- | ------------- |
| <code>TimeValues</code> | [0 1 2]       |
| <code>OutValues</code>  | [0 2 0]       |

<b>Block Characteristics</b>

| Field                     | Value                         |
| ------------------------- | ----------------------------- |
| Block type                | repeatingSequenceInterpolated |
| Family                    | Source                        |
| Rendered size             | 80 x 80                       |
| Phases                    | OUTPUT                        |
| Internal state or history | no                            |
| Signal data type          | double numeric values         |

<b>Algorithms</b>

- OUTPUT: tm = mod(t, period); out = linear interpolation of OutValues over TimeValues at tm.

<b>Equation or Rule</b>
$$y(t) = \text{interp}\big(\text{TimeValues}, \text{OutValues}, t \bmod T\big)$$

<b>Extended Capabilities</b>

Code generation: supported for C and Rust.

<b>Implementation Sources</b>

<details>
<summary>Manifest: <code>modules/nflow_blocks/libraries/source/library.json</code></summary>

```json
{
  "id": "builtin.source",
  "title": "Source",
  "version": "1.0.0",
  "format": "nflow-2",
  "metadata": {
    "author": "Allan CORNET",
    "created": "2026-03-21",
    "tool": "Nelson nflow"
  },
  "comment": "Basic source blocks",
  "license": "LGPL-3.0",
  "builtin": true,
  "blocks": [
    {
      "type": "constant",
      "label": "Constant",
      "icon": "constant.svg",
      "phases": ["OUTPUT"],
      "width": 80,
      "height": 80,
      "inputs": [],
      "outputs": [
        {
          "x": 80,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "Value": 1,
        "OutDataType": "double"
      },
      "render": {
        "type": "math",
        "bodyClass": "block-body",
        "mathGroupClass": "constant-math",
        "formula": "{params.Value}"
      }
    },
    {
      "type": "step",
      "label": "Step",
      "icon": "step.svg",
      "phases": ["OUTPUT"],
      "width": 80,
      "height": 80,
      "inputs": [],
      "outputs": [
        {
          "x": 80,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "Time": 0
      },
      "render": {
        "type": "image",
        "src": "step.svg"
      }
    },
    {
      "type": "ramp",
      "label": "Ramp",
      "icon": "ramp.svg",
      "phases": ["OUTPUT"],
      "width": 80,
      "height": 80,
      "inputs": [],
      "outputs": [
        {
          "x": 80,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "slope": 1,
        "start": 0
      },
      "render": {
        "type": "image",
        "src": "ramp.svg"
      }
    },
    {
      "type": "counterFreeRunning",
      "label": "Counter Free-Running",
      "icon": "counterFreeRunning.svg",
      "phases": ["INIT", "OUTPUT", "UPDATE"],
      "width": 80,
      "height": 80,
      "inputs": [],
      "outputs": [
        {
          "x": 80,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "NumBits": 16
      },
      "render": {
        "type": "image",
        "src": "counterFreeRunning.svg"
      }
    },
    {
      "type": "counterLimited",
      "label": "Counter Limited",
      "icon": "counterLimited.svg",
      "phases": ["INIT", "OUTPUT", "UPDATE"],
      "width": 80,
      "height": 80,
      "inputs": [],
      "outputs": [
        {
          "x": 80,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "UpperLimit": 7
      },
      "render": {
        "type": "image",
        "src": "counterLimited.svg"
      }
    },
    {
      "type": "repeatingSequenceStair",
      "label": "Repeating Sequence Stair",
      "icon": "repeatingSequenceStair.svg",
      "phases": ["INIT", "OUTPUT", "UPDATE"],
      "width": 80,
      "height": 80,
      "inputs": [],
      "outputs": [
        {
          "x": 80,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "OutValues": [0, 1, 2, 3, 2, 1]
      },
      "render": {
        "type": "image",
        "src": "repeatingSequenceStair.svg"
      }
    },
    {
      "type": "repeatingSequenceInterpolated",
      "label": "Repeating Sequence Interpolated",
      "icon": "repeatingSequenceInterpolated.svg",
      "phases": ["OUTPUT"],
      "width": 80,
      "height": 80,
      "inputs": [],
      "outputs": [
        {
          "x": 80,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "TimeValues": [0, 1, 2],
        "OutValues": [0, 2, 0]
      },
      "render": {
        "type": "image",
        "src": "repeatingSequenceInterpolated.svg"
      }
    },
    {
      "type": "signalGenerator",
      "label": "Signal Generator",
      "icon": "signalGenerator.svg",
      "phases": ["OUTPUT"],
      "width": 80,
      "height": 80,
      "inputs": [],
      "outputs": [
        {
          "x": 80,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "Waveform": "sine",
        "Amplitude": 1,
        "Frequency": 1
      },
      "render": {
        "type": "image",
        "src": "signalGenerator.svg"
      }
    },
    {
      "type": "pulse",
      "label": "Pulse Generator",
      "icon": "pulse.svg",
      "phases": ["OUTPUT"],
      "width": 80,
      "height": 80,
      "inputs": [],
      "outputs": [
        {
          "x": 80,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "Amplitude": 1,
        "Period": 1,
        "Width": 50,
        "StartTime": 0,
        "Offset": 0
      },
      "render": {
        "type": "image",
        "src": "pulse.svg"
      }
    },
    {
      "type": "impulse",
      "label": "Impulse",
      "icon": "impulse.svg",
      "phases": ["OUTPUT"],
      "width": 80,
      "height": 80,
      "inputs": [],
      "outputs": [
        {
          "x": 80,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "Time": 0,
        "Amplitude": 1
      },
      "render": {
        "type": "image",
        "src": "impulse.svg"
      }
    },
    {
      "type": "sine",
      "label": "Sine",
      "icon": "sine.svg",
      "phases": ["OUTPUT"],
      "width": 80,
      "height": 80,
      "inputs": [],
      "outputs": [
        {
          "x": 80,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "Amplitude": 1,
        "Frequency": 1,
        "Phase": 0
      },
      "render": {
        "type": "image",
        "src": "sine.svg"
      }
    },
    {
      "type": "chirp",
      "label": "Chirp",
      "icon": "chirp.svg",
      "phases": ["OUTPUT"],
      "width": 80,
      "height": 80,
      "inputs": [],
      "outputs": [
        {
          "x": 80,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "Amplitude": 1,
        "f1": 1,
        "f2": 10,
        "T": 10
      },
      "render": {
        "type": "image",
        "src": "chirp.svg"
      }
    },
    {
      "type": "fileSource",
      "label": "File",
      "icon": "fileSource.svg",
      "phases": ["OUTPUT"],
      "width": 80,
      "height": 80,
      "inputs": [],
      "outputs": [
        {
          "x": 80,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "FileName": ""
      },
      "render": {
        "type": "image",
        "src": "fileSource.svg"
      }
    },
    {
      "type": "fromWorkspace",
      "label": "From Workspace",
      "icon": "fromWorkspace.svg",
      "phases": ["OUTPUT"],
      "width": 80,
      "height": 48,
      "inputs": [],
      "outputs": [
        {
          "x": 80,
          "y": 24,
          "side": "right"
        }
      ],
      "defaultParams": {
        "VariableName": "simin",
        "SampleTime": "0",
        "Interpolate": "on",
        "OutputAfterFinalValue": "Extrapolation"
      },
      "render": {
        "type": "math",
        "formula": "\\mathtt{{params.VariableName}}",
        "textSize": 14
      }
    },
    {
      "type": "labelSource",
      "label": "Label",
      "icon": "labelSource.svg",
      "phases": ["OUTPUT"],
      "width": 40,
      "height": 40,
      "inputs": [],
      "outputs": [
        {
          "x": 40,
          "y": 20,
          "side": "right"
        }
      ],
      "defaultParams": {
        "GotoTag": "x"
      },
      "render": {
        "type": "image",
        "src": "labelSource.svg"
      }
    },
    {
      "type": "noise",
      "label": "Noise",
      "icon": "noise.svg",
      "phases": ["OUTPUT"],
      "width": 80,
      "height": 80,
      "inputs": [],
      "outputs": [
        {
          "x": 80,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "Amplitude": 1
      },
      "render": {
        "type": "image",
        "src": "noise.svg"
      }
    },
    {
      "type": "clock",
      "label": "Clock",
      "icon": "clock.svg",
      "phases": ["OUTPUT"],
      "width": 80,
      "height": 80,
      "inputs": [],
      "outputs": [
        {
          "x": 80,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "DisplayTime": false,
        "Decimation": 10
      },
      "render": {
        "type": "image",
        "src": "clock.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "enumeratedConstant",
      "label": "Enumerated Constant",
      "icon": "enumeratedConstant.svg",
      "phases": ["OUTPUT"],
      "width": 90,
      "height": 50,
      "inputs": [],
      "outputs": [
        {
          "x": 90,
          "y": 25,
          "side": "right"
        }
      ],
      "defaultParams": {
        "EnumClass": "",
        "Value": 0
      }
    }
  ]
}
```

</details>


<details>
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/source/repeatingSequenceInterpolated.cpp</code></summary>

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
// repeatingSequenceInterpolated: a periodic, piecewise-linear source (Repeating
// Sequence Interpolated). The (TimeValues, OutValues) table defines one period
// (period = last TimeValues entry); the output linearly interpolates the table
// at t wrapped into [0, period) and repeats. No input; scalar output; stateless
// (a pure function of time). C / Rust code generation via an unrolled ternary
// chain over the baked breakpoints.
//=============================================================================
#include "SimEngineTypes.hpp"
#include "BlockRegistry.hpp"
#include "FieldNames.hpp"
#include "NFlowBlockDescriptor.hpp"
#include <cmath>
#include <vector>
#include <string>
#include "source_blocks.hpp"
//=============================================================================
namespace Nelson {
namespace NFlow {
    //=============================================================================
    // Evaluate the periodic piecewise-linear table at absolute time t.
    static double
    rsiEval(const std::vector<double>& tv, const std::vector<double>& ov, double t)
    {
        const int n = static_cast<int>(std::min(tv.size(), ov.size()));
        if (n == 0) {
            return 0.0;
        }
        if (n == 1) {
            return ov[0];
        }
        const double period = tv[n - 1];
        double tm = t;
        if (period > 0.0) {
            tm = std::fmod(t, period);
            if (tm < 0.0) {
                tm += period;
            }
        } else {
            return ov[0];
        }
        for (int i = 0; i < n - 1; ++i) {
            if (tm <= tv[i + 1]) {
                const double w = tv[i + 1] - tv[i];
                if (w <= 0.0) {
                    return ov[i];
                }
                return ov[i] + (ov[i + 1] - ov[i]) * (tm - tv[i]) / w;
            }
        }
        return ov[n - 1];
    }
    //=============================================================================
    bool
    handleRepeatingSequenceInterpolated(SimCtx& ctx, const Block& b, Phase phase)
    {
        if (phase != Phase::OUTPUT) {
            return false;
        }
        nflow::BlockDescriptor bd(b, ctx.variables);
        const std::vector<double> tv = bd.paramList("TimeValues");
        const std::vector<double> ov = bd.paramList("OutValues");
        setOutput(ctx, b.nid, rsiEval(tv, ov, ctx.t));
        return false;
    }
    //=============================================================================
    // Build the unrolled interpolation for the wrapped-time variable `tm`, with
    // `f(x)` producing the numeric literal for a value (nflow::formatNumber / Rust
    // a.fmt). `elseVal` is the fallback literal for tm past the last breakpoint.
    static std::string
    rsiChain(const std::vector<double>& tv, const std::vector<double>& ov, const std::string& tm,
        std::string (*f)(double))
    {
        const int n = static_cast<int>(std::min(tv.size(), ov.size()));
        std::string expr = f(ov[n - 1]);
        for (int i = n - 2; i >= 0; --i) {
            const double w = tv[i + 1] - tv[i];
            const double m = (w > 0.0) ? (ov[i + 1] - ov[i]) / w : 0.0;
            // ov_i + m * (tm - tv_i)
            const std::string seg
                = "(" + f(ov[i]) + " + " + f(m) + " * (" + tm + " - " + f(tv[i]) + "))";
            expr = "((" + tm + " <= " + f(tv[i + 1]) + ") ? " + seg + " : " + expr + ")";
        }
        return expr;
    }
    //=============================================================================
    static std::string
    fmtC(double v)
    {
        return nflow::formatNumber(v);
    }
    //=============================================================================
    BlockCodegenTemplate
    getCodeGenCRepeatingSequenceInterpolated()
    {
        BlockCodegenTemplate t;
        t.emitStep = [](const BlockCodegenArgs& a) {
            nflow::BlockDescriptor bd(*a.block, *a.variables);
            const std::vector<double> tv = bd.paramList("TimeValues");
            const std::vector<double> ov = bd.paramList("OutValues");
            const int n = static_cast<int>(std::min(tv.size(), ov.size()));
            if (n == 0) {
                a.line("out_" + a.id + " = 0.0;");
                return;
            }
            if (n == 1 || tv[n - 1] <= 0.0) {
                a.line("out_" + a.id + " = " + nflow::formatNumber(ov[0]) + ";");
                return;
            }
            const std::string per = nflow::formatNumber(tv[n - 1]);
            const std::string tm = "rsi_tm_" + a.id;
            a.line("double " + tm + " = fmod(t, " + per + ");");
            a.line("if (" + tm + " < 0.0) " + tm + " += " + per + ";");
            a.line("out_" + a.id + " = " + rsiChain(tv, ov, tm, fmtC) + ";");
        };
        return t;
    }
    //=============================================================================
    BlockCodegenTemplate
    getCodeGenRustRepeatingSequenceInterpolated()
    {
        BlockCodegenTemplate t;
        t.emitStep = [](const BlockCodegenArgs& a) {
            nflow::BlockDescriptor bd(*a.block, *a.variables);
            const std::vector<double> tv = bd.paramList("TimeValues");
            const std::vector<double> ov = bd.paramList("OutValues");
            const int n = static_cast<int>(std::min(tv.size(), ov.size()));
            auto rfmt = [&a](double v) { return a.fmt(v); };
            if (n == 0) {
                a.line("out_" + a.id + " = 0.0_f64;");
                return;
            }
            if (n == 1 || tv[n - 1] <= 0.0) {
                a.line("out_" + a.id + " = " + a.fmt(ov[0]) + ";");
                return;
            }
            const std::string per = a.fmt(tv[n - 1]);
            const std::string tm = "rsi_tm_" + a.id;
            a.line("let mut " + tm + ": f64 = t % " + per + ";");
            a.line("if " + tm + " < 0.0_f64 { " + tm + " += " + per + "; }");
            // Build the nested chain with the Rust formatter.
            const int nn = n;
            std::string expr = a.fmt(ov[nn - 1]);
            for (int i = nn - 2; i >= 0; --i) {
                const double w = tv[i + 1] - tv[i];
                const double m = (w > 0.0) ? (ov[i + 1] - ov[i]) / w : 0.0;
                const std::string seg = "(" + a.fmt(ov[i]) + " + " + a.fmt(m) + " * (" + tm + " - "
                    + a.fmt(tv[i]) + "))";
                expr = "if " + tm + " <= " + a.fmt(tv[i + 1]) + " { " + seg + " } else { " + expr
                    + " }";
            }
            a.line("out_" + a.id + " = " + expr + ";");
        };
        return t;
    }
    //=============================================================================
} // namespace NFlow
} // namespace Nelson
//=============================================================================

```

</details>

## 💡 Example

A triangle wave of period 1 s from [0 0.5 1] -> [0 1 0].

```matlab
d.blocks={ struct('id','r','type','repeatingSequenceInterpolated','inputs',0,'outputs',1,'params',struct('TimeValues',[0 0.5 1],'OutValues',[0 1 0])), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','r','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```

## 🔗 See also

[repeatingSequenceStair](../../nflow_blocks/source/repeatingSequenceStair.md), [signalGenerator](../../nflow_blocks/source/signalGenerator.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
