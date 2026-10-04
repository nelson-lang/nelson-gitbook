# expression

<p align="center">
<img src="expression.svg"/>
</p>
Evaluates a restricted math expression of u during simulation and in generated code.

## 📝 Syntax

- Block type: expression

## 📥 Input argument

- input ports - 1 input port (u, scalar double).

## 📤 Output argument

- output ports - 1 output port (scalar double).

## 📄 Description

Evaluates the math expression <code>Expr</code> with <code>u</code> (block input), <code>t</code> (current time), <code>dt</code> (step) and the diagram variables. The same expression engine drives the simulation and the C/Rust code generation, so simulated and generated behaviors match.

Supported grammar: constants <code>pi</code>, <code>e</code>, <code>inf</code>; unary functions <code>abs, ceil, floor, round, sign, sqrt, exp, log, log10, log2, acos, asin, atan, cos, cosh, sin, sinh, tan, tanh, sinc</code>; binary functions <code>pow, atan2, min, max</code>; ternary <code>clamp</code>; operators <code>+ - \* / ^</code>. Non-math constructs are rejected at code generation.

For arbitrary Nelson code (any function, handles), use the <code>nelsonFunction</code> block instead (simulation only).

<b>Parameters</b>

| Parameter         | Default value |
| ----------------- | ------------- |
| <code>Expr</code> | u             |

<b>Block Characteristics</b>

| Field              | Value                        |
| ------------------ | ---------------------------- |
| Block type         | expression                   |
| Family             | User-Defined Function blocks |
| Phases             | INIT, ALGEBRAIC              |
| Direct feedthrough | yes                          |
| Signal data type   | double, scalar               |
| Code generation    | yes (C and Rust)             |

Code generation: supported for C and Rust.

<details>
<summary>Manifest: <code>modules/nflow_blocks/libraries/userdefined/library.json</code></summary>

```json
{
  "id": "builtin.userdefined",
  "title": "User-Defined Functions",
  "version": "1.0.0",
  "format": "nflow-2",
  "metadata": {
    "author": "Allan CORNET",
    "created": "2026-08-02",
    "tool": "Nelson nflow"
  },
  "builtin": true,
  "comment": "User-defined function blocks",
  "license": "LGPL-3.0",
  "blocks": [
    {
      "type": "expression",
      "label": "Expression",
      "icon": "expression.svg",
      "phases": ["INIT", "ALGEBRAIC"],
      "width": 80,
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
          "x": 80,
          "y": 40,
          "side": "right"
        }
      ],
      "defaultParams": {
        "Expr": "u"
      },
      "render": {
        "type": "math",
        "formula": "{params.Expr}",
        "mathGroupClass": "userfunc-math",
        "textSize": "16px",
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "nelsonFunction",
      "label": "Nelson Function",
      "icon": "nelsonFunction.svg",
      "phases": ["INIT", "ALGEBRAIC"],
      "width": 96,
      "height": 48,
      "inputs": [
        {
          "x": 0,
          "y": 24,
          "side": "left"
        }
      ],
      "outputs": [
        {
          "x": 96,
          "y": 24,
          "side": "right"
        }
      ],
      "defaultParams": {
        "Fcn": "sin",
        "OutputDimensions": "-1",
        "SampleTime": "-1"
      },
      "render": {
        "type": "math",
        "formula": "\\mathtt{{params.Fcn}}",
        "textSize": 14
      }
    }
  ]
}
```

</details>


<details>
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/userdefined/expression.cpp</code></summary>

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
#include "ExprEngine.hpp"
#include <stdexcept>
#include "userdefined_blocks.hpp"
//=============================================================================
// expression: evaluates a restricted math expression of u (plus t, dt and the
// diagram variables) at every step, through the module's own ExprEngine - no
// interpreter involved, so this block simulates everywhere AND generates
// C/Rust code (the generators reconstruct the expression from its AST).
// Scalar signals only, one input, one output, stateless.
//=============================================================================
bool
Nelson::NFlow::handleExpression(SimCtx& ctx, const Block& b, Phase phase)
{
    if (phase != Phase::INIT && phase != Phase::ALGEBRAIC) {
        return false;
    }
    nflow::BlockDescriptor bd(b, ctx.variables);
    const std::string expr = bd.paramStr(nflow::kExpr, "u");
    if (phase == Phase::INIT) {
        // Validate once so a bad expression fails with a clear diagnostic
        // instead of erroring at every step.
        std::unordered_map<std::string, double> vars = ctx.variables;
        vars["u"] = 0.0;
        vars["t"] = 0.0;
        vars["dt"] = ctx.dt;
        try {
            (void)evalExpressionValue(expr, vars);
        } catch (const std::exception& e) {
            if (ctx.diag) {
                SimDiagnostic d;
                d.code = "expression_invalid";
                d.blockId = b.id;
                d.message = "expression block: invalid expression '" + expr + "': " + e.what();
                d.time = ctx.t;
                ctx.diag->fail(d);
            }
        }
        return false;
    }
    if (!hasInput(ctx, b.nid, 0)) {
        setOutput(ctx, b.nid, ctx.blockState[b.nid].output);
        return false;
    }
    std::unordered_map<std::string, double> vars = ctx.variables;
    vars["u"] = getInput(ctx, b.nid, 0, 0.0);
    vars["t"] = ctx.t;
    vars["dt"] = ctx.dt;
    double y = 0.0;
    try {
        y = evalExpressionValue(expr, vars);
    } catch (const std::exception&) {
        y = 0.0; // validated at INIT; runtime failures degrade to 0
    }
    return emitElementwise(ctx, b.nid, [&](int) { return y; });
}
//=============================================================================

```

</details>

## 💡 Example

Open the user-defined function demo (Expression + Nelson Function)

```matlab
open_system([modulepath('nflow_blocks'), '/examples/workspace/Nelson_Function_Demo.nflow']);
```

## 🔗 See also

[nelsonFunction](../../nflow_blocks/userdefined/nelsonFunction.md), [gain](../../nflow_blocks/math/gain.md).

## 🕔 History

| Version | 📄 Description                                                                                  |
| ------- | ----------------------------------------------------------------------------------------------- |
| 1.0.0   | initial version (replaces the codegen-only userFunc block; the expression block also simulates) |

<!--
## 👤 Author

Allan CORNET
-->
