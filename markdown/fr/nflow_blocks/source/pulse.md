# pulse

<p align="center">
<img src="pulse.svg"/>
</p>
Générateur d'impulsions : train d'impulsions périodique (Amplitude, Period, Width, StartTime, Offset).

## 📝 Syntaxe

- Type de bloc : pulse

## 📥 Argument d'entrée

- ports d'entrée - Aucun port d'entrée (ce bloc n'en a pas).

## 📤 Argument de sortie

- ports de sortie - 1 port de sortie déclaré.

## 📄 Description

Générateur d'impulsions : un train d'impulsions périodique.

| Champ        | Valeur                    |
| ------------ | ------------------------- |
| Module       | <code>nflow_blocks</code> |
| Bibliothèque | Source                    |
| Type         | <code>pulse</code>        |
| Libellé      | Pulse Generator           |

<b>Description</b>

Un train d'impulsions périodique sans entrée. À partir de <code>StartTime</code>, la sortie vaut <code>Offset + Amplitude</code> pendant les premiers <code>Width</code> pour cent de chaque <code>Period</code>, et <code>Offset</code> sinon. Sans état (fonction pure du temps).

<b>Ports</b>

Ce bloc n'a pas de port d'entrée.

<b>Sortie(s)</b>

| Port   | Rôle                                  | Côté   | Position   |
| ------ | ------------------------------------- | ------ | ---------- |
| Port_1 | Signal numérique produit par le bloc. | droite | x=80, y=40 |

<b>Paramètres</b>

| Paramètre              | Valeur par défaut |
| ---------------------- | ----------------- |
| <code>Amplitude</code> | 1                 |
| <code>Period</code>    | 1                 |
| <code>Width</code>     | 50                |
| <code>StartTime</code> | 0                 |
| <code>Offset</code>    | 0                 |

<b>Caractéristiques du bloc</b>

| Champ                      | Valeur                    |
| -------------------------- | ------------------------- |
| Type de bloc               | pulse                     |
| Famille                    | Source                    |
| Taille de rendu            | 80 x 80                   |
| Phases                     | OUTPUT                    |
| État interne ou historique | non                       |
| Type de données du signal  | valeurs numériques double |

<b>Algorithmes</b>

- OUTPUT : évalue le train d'impulsions à l'instant courant.

<b>Équation ou règle</b>
$$y(t) = \text{Offset} + \begin{cases} A & \bmod(t-t_0, T) < \frac{W}{100} T \\ 0 & \text{sinon} \end{cases}$$

<b>Capacités étendues</b>

Génération de code : supportée pour C et Rust.

<b>Sources d'implémentation</b>

Generation de code : prise en charge pour C et Rust.

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
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/source/periodic.cpp</code></summary>

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
// Periodic waveform sources filling Coselica parity: pulse and sawTooth.
//   pulse:    offset + (mod(t-start, period) < width%*period ? amplitude : 0)
//   sawTooth: offset + amplitude * mod(t-start, period) / period
// Both feedthrough (OUTPUT phase) and codegen-eligible (plain time expressions).
//=============================================================================
#include "SimEngineTypes.hpp"
#include "BlockRegistry.hpp"
#include "FieldNames.hpp"
#include "NFlowBlockDescriptor.hpp"
#include <cmath>
#include "source_blocks.hpp"
//=============================================================================
namespace Nelson {
namespace NFlow {
    //=============================================================================
    bool
    handlePulse(SimCtx& ctx, const Block& b, Phase phase)
    {
        if (phase != Phase::OUTPUT) {
            return false;
        }
        nflow::BlockDescriptor bd(b, ctx.variables);
        const double amp = bd.paramDouble(nflow::kAmp, 1.0);
        const double period = bd.paramDouble("Period", 1.0);
        const double width = bd.paramDouble("Width", 50.0); // percent of period
        const double start = bd.paramDouble("StartTime", 0.0);
        const double offset = bd.paramDouble("Offset", 0.0);
        double out = offset;
        if (ctx.t >= start && period > 0.0) {
            const double tau = std::fmod(ctx.t - start, period);
            // (width * period) / 100 keeps the boundary exact when the duty
            // cycle lands on a sample: width/100 first rounds up (40/100*1.5
            // exceeds 0.6) and stretched the pulse by one sample. The epsilon
            // closes the same seam from the other side: 'tau' loses a few ulps
            // in (t - start) and fmod, so a sample landing exactly on the
            // falling edge read as just inside the pulse and stayed high for
            // one extra sample. Well below any usable step size.
            if (tau < (width * period) / 100.0 - 1e-12 * period) {
                out += amp;
            }
        }
        setOutput(ctx, b.nid, out);
        return false;
    }
    //=============================================================================
    bool
    handleSawTooth(SimCtx& ctx, const Block& b, Phase phase)
    {
        if (phase != Phase::OUTPUT) {
            return false;
        }
        nflow::BlockDescriptor bd(b, ctx.variables);
        const double amp = bd.paramDouble(nflow::kAmp, 1.0);
        const double period = bd.paramDouble("Period", 1.0);
        const double start = bd.paramDouble("StartTime", 0.0);
        const double offset = bd.paramDouble("Offset", 0.0);
        double out = offset;
        if (ctx.t >= start && period > 0.0) {
            out += amp * (std::fmod(ctx.t - start, period) / period);
        }
        setOutput(ctx, b.nid, out);
        return false;
    }
    //=============================================================================
    bool
    handleExpSine(SimCtx& ctx, const Block& b, Phase phase)
    {
        // Exponentially damped sine: offset + amp e^{-damping (t-start)}
        //                                    sin(2 pi freq (t-start) + phase).
        if (phase != Phase::OUTPUT) {
            return false;
        }
        nflow::BlockDescriptor bd(b, ctx.variables);
        const double amp = bd.paramDouble(nflow::kAmp, 1.0);
        const double freq = bd.paramDouble(nflow::kFreq, 1.0);
        const double damping = bd.paramDouble("Damping", 0.0);
        const double ph = bd.paramDouble(nflow::kPhase, 0.0);
        const double start = bd.paramDouble("StartTime", 0.0);
        const double offset = bd.paramDouble("Offset", 0.0);
        double out = offset;
        if (ctx.t >= start) {
            const double td = ctx.t - start;
            out += amp * std::exp(-damping * td) * std::sin(2.0 * M_PI * freq * td + ph);
        }
        setOutput(ctx, b.nid, out);
        return false;
    }
    //=============================================================================
    bool
    handleTrapezoid(SimCtx& ctx, const Block& b, Phase phase)
    {
        // One period: rising ramp (Rising), plateau (Width) at amplitude,
        // falling ramp (Falling), then 0 until Period; repeats. offset added.
        if (phase != Phase::OUTPUT) {
            return false;
        }
        nflow::BlockDescriptor bd(b, ctx.variables);
        const double amp = bd.paramDouble(nflow::kAmp, 1.0);
        const double rising = bd.paramDouble("Rising", 0.0);
        const double width = bd.paramDouble("Width", 0.0);
        const double falling = bd.paramDouble("Falling", 0.0);
        const double period = bd.paramDouble("Period", 1.0);
        const double start = bd.paramDouble("StartTime", 0.0);
        const double offset = bd.paramDouble("Offset", 0.0);
        double out = offset;
        if (ctx.t >= start && period > 0.0) {
            const double tau = std::fmod(ctx.t - start, period);
            if (tau < rising && rising > 0.0) {
                out += amp * (tau / rising);
            } else if (tau < rising + width) {
                out += amp;
            } else if (tau < rising + width + falling && falling > 0.0) {
                out += amp * (1.0 - (tau - rising - width) / falling);
            }
        }
        setOutput(ctx, b.nid, out);
        return false;
    }
    //=============================================================================
    BlockCodegenTemplate
    getCodeGenCPulse()
    {
        BlockCodegenTemplate t;
        t.step = "out_{id} = {param:Offset:0.0} + (((t >= {param:StartTime:0.0}) && "
                 "(fmod(t - {param:StartTime:0.0}, {param:Period:1.0}) < "
                 "({param:Width:50.0} * {param:Period:1.0}) / 100.0 - 1e-12 * {param:Period:1.0})) "
                 "? {param:Amplitude:1.0} "
                 ": 0.0);";
        return t;
    }
    //=============================================================================
    BlockCodegenTemplate
    getCodeGenRustPulse()
    {
        BlockCodegenTemplate t;
        t.step = "out_{id} = {param:Offset:0.0} + if (t >= {param:StartTime:0.0}) && "
                 "(libm::fmod(t - {param:StartTime:0.0}, {param:Period:1.0}) < "
                 "({param:Width:50.0} * {param:Period:1.0}) / 100.0 - 1e-12 * {param:Period:1.0}) "
                 "{ {param:Amplitude:1.0} } "
                 "else { 0.0 };";
        return t;
    }
    //=============================================================================
    BlockCodegenTemplate
    getCodeGenCSawTooth()
    {
        BlockCodegenTemplate t;
        t.step = "out_{id} = {param:Offset:0.0} + {param:Amplitude:1.0} * "
                 "(fmod(t - {param:StartTime:0.0}, {param:Period:1.0}) / {param:Period:1.0});";
        return t;
    }
    //=============================================================================
    BlockCodegenTemplate
    getCodeGenRustSawTooth()
    {
        BlockCodegenTemplate t;
        t.step = "out_{id} = {param:Offset:0.0} + {param:Amplitude:1.0} * "
                 "(libm::fmod(t - {param:StartTime:0.0}, {param:Period:1.0}) / "
                 "{param:Period:1.0});";
        return t;
    }
    //=============================================================================
    bool
    handleExponentials(SimCtx& ctx, const Block& b, Phase phase)
    {
        // Rising exponential toward `amplitude` over [start, start+riseTime) with
        // time constant riseTau, then a falling exponential (constant fallTau).
        if (phase != Phase::OUTPUT) {
            return false;
        }
        nflow::BlockDescriptor bd(b, ctx.variables);
        const double amp = bd.paramDouble(nflow::kAmp, 1.0);
        const double riseTime = bd.paramDouble("RiseTime", 0.5);
        const double riseTau = bd.paramDouble("RiseTau", 0.1);
        const double fallTau = bd.paramDouble("FallTau", 0.1);
        const double start = bd.paramDouble("StartTime", 0.0);
        const double offset = bd.paramDouble("Offset", 0.0);
        double out = offset;
        if (ctx.t >= start) {
            const double td = ctx.t - start;
            if (td < riseTime) {
                out += amp * (1.0 - std::exp(-td / riseTau));
            } else {
                const double peak = amp * (1.0 - std::exp(-riseTime / riseTau));
                out += peak * std::exp(-(td - riseTime) / fallTau);
            }
        }
        setOutput(ctx, b.nid, out);
        return false;
    }
    //=============================================================================
    BlockCodegenTemplate
    getCodeGenCExpSine()
    {
        BlockCodegenTemplate t;
        t.step = "out_{id} = {param:Offset:0.0} + {param:Amplitude:1.0} * "
                 "exp(-{param:Damping:0.0} * (t - {param:StartTime:0.0})) * "
                 "sin(2.0 * M_PI * {param:Frequency:1.0} * (t - {param:StartTime:0.0}) + "
                 "{param:Phase:0.0});";
        return t;
    }
    //=============================================================================
    BlockCodegenTemplate
    getCodeGenRustExpSine()
    {
        BlockCodegenTemplate t;
        t.step = "out_{id} = {param:Offset:0.0} + {param:Amplitude:1.0} * "
                 "libm::exp(-{param:Damping:0.0} * (t - {param:StartTime:0.0})) * "
                 "libm::sin(2.0_f64 * core::f64::consts::PI * {param:Frequency:1.0} * "
                 "(t - {param:StartTime:0.0}) + {param:Phase:0.0});";
        return t;
    }
    //=============================================================================
    // Trapezoid bakes its params at generation time so it can guard the
    // rising/falling divisions (a zero ramp collapses that segment).
    static BlockCodegenTemplate
    makeTrapezoid(bool rust)
    {
        BlockCodegenTemplate t;
        t.emitStep = [rust](const BlockCodegenArgs& a) {
            nflow::BlockDescriptor bd(*a.block, *a.variables);
            const double amp = bd.paramDouble(nflow::kAmp, 1.0);
            const double rising = bd.paramDouble("Rising", 0.0);
            const double width = bd.paramDouble("Width", 0.0);
            const double falling = bd.paramDouble("Falling", 0.0);
            const double period = bd.paramDouble("Period", 1.0);
            const double start = bd.paramDouble("StartTime", 0.0);
            const double offset = bd.paramDouble("Offset", 0.0);
            const std::string fmodFn = rust ? "libm::fmod" : "fmod";
            const std::string tau
                = "(" + fmodFn + "(t - " + a.fmt(start) + ", " + a.fmt(period) + "))";
            std::string riseExpr = (rising > 0.0)
                ? (a.fmt(amp) + " * (" + tau + " / " + a.fmt(rising) + ")")
                : a.fmt(0.0);
            std::string fallExpr = (falling > 0.0)
                ? (a.fmt(amp) + " * (1.0 - (" + tau + " - " + a.fmt(rising + width) + ") / "
                      + a.fmt(falling) + ")")
                : a.fmt(0.0);
            // Nested conditional (C ternary / Rust if-else).
            const double plateauEnd = rising + width;
            const double fallEnd = rising + width + falling;
            std::string body;
            if (rust) {
                body = a.fmt(offset) + " + if " + tau + " < " + a.fmt(rising) + " { " + riseExpr
                    + " } else if " + tau + " < " + a.fmt(plateauEnd) + " { " + a.fmt(amp)
                    + " } else if " + tau + " < " + a.fmt(fallEnd) + " { " + fallExpr
                    + " } else { 0.0 }";
            } else {
                body = a.fmt(offset) + " + ((" + tau + " < " + a.fmt(rising) + ") ? (" + riseExpr
                    + ") : ((" + tau + " < " + a.fmt(plateauEnd) + ") ? (" + a.fmt(amp) + ") : (("
                    + tau + " < " + a.fmt(fallEnd) + ") ? (" + fallExpr + ") : 0.0)))";
            }
            a.line("out_" + a.id + " = " + body + ";");
        };
        return t;
    }
    BlockCodegenTemplate
    getCodeGenCTrapezoid()
    {
        return makeTrapezoid(false);
    }
    BlockCodegenTemplate
    getCodeGenRustTrapezoid()
    {
        return makeTrapezoid(true);
    }
    //=============================================================================
    static BlockCodegenTemplate
    makeExponentials(bool rust)
    {
        BlockCodegenTemplate t;
        t.emitStep = [rust](const BlockCodegenArgs& a) {
            nflow::BlockDescriptor bd(*a.block, *a.variables);
            const double amp = bd.paramDouble(nflow::kAmp, 1.0);
            const double riseTime = bd.paramDouble("RiseTime", 0.5);
            const double riseTau = bd.paramDouble("RiseTau", 0.1);
            const double fallTau = bd.paramDouble("FallTau", 0.1);
            const double start = bd.paramDouble("StartTime", 0.0);
            const double offset = bd.paramDouble("Offset", 0.0);
            const std::string expFn = rust ? "libm::exp" : "exp";
            const std::string td = "(t - " + a.fmt(start) + ")";
            const double peak = amp * (1.0 - std::exp(-riseTime / riseTau));
            const std::string rise
                = a.fmt(amp) + " * (1.0 - " + expFn + "(-" + td + " / " + a.fmt(riseTau) + "))";
            const std::string fall = a.fmt(peak) + " * " + expFn + "(-(" + td + " - "
                + a.fmt(riseTime) + ") / " + a.fmt(fallTau) + ")";
            std::string body;
            if (rust) {
                body = a.fmt(offset) + " + if " + td + " < " + a.fmt(riseTime) + " { " + rise
                    + " } else { " + fall + " }";
            } else {
                body = a.fmt(offset) + " + ((" + td + " < " + a.fmt(riseTime) + ") ? (" + rise
                    + ") : (" + fall + "))";
            }
            a.line("out_" + a.id + " = " + body + ";");
        };
        return t;
    }
    BlockCodegenTemplate
    getCodeGenCExponentials()
    {
        return makeExponentials(false);
    }
    BlockCodegenTemplate
    getCodeGenRustExponentials()
    {
        return makeExponentials(true);
    }
    //=============================================================================
} // namespace NFlow
} // namespace Nelson
//=============================================================================

```

</details>

## 💡 Exemple

Générer un train d'impulsions (amplitude 1, période 1, rapport cyclique 50%).

```matlab
d.blocks={ struct('id','p','type','pulse','inputs',0,'outputs',1,'params',struct('Amplitude',1,'Period',1,'Width',50,'StartTime',0,'Offset',0)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','p','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.05; d.duration=2.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```

## 🔗 Voir aussi

[signalGenerator](../../nflow_blocks/source/signalGenerator.md), [step](../../nflow_blocks/source/step.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
