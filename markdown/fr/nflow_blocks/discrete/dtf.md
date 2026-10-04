# dtf

<p align="center">
<img src="dtf.svg"/>
</p>
Implemente une fonction de transfert discrete.

## 📝 Syntaxe

- Block type: dtf

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description

Implemente une fonction de transfert discrete.

| Champ        | Valeur                    |
| ------------ | ------------------------- |
| Module       | <code>nflow_blocks</code> |
| Bibliotheque | Blocs discrets            |
| Type         | <code>dtf</code>          |
| Libelle      | Discrete TF               |

<b>Description</b>

Implemente une fonction de transfert discrete.

<b>Ports</b>

<b>Entree(s)</b>

| Port   | Role                             | Cote | Position  |
| ------ | -------------------------------- | ---- | --------- |
| Port_1 | Signal numerique lu par le bloc. | left | x=0, y=40 |

<b>Sortie(s)</b>

| Port   | Role                                  | Cote  | Position   |
| ------ | ------------------------------------- | ----- | ---------- |
| Port_1 | Signal numerique produit par le bloc. | right | x=80, y=40 |

<b>Parametres</b>

| Parametre        | Valeur par defaut |
| ---------------- | ----------------- |
| <code>num</code> | [1]               |
| <code>den</code> | [1, -0.5]         |
| <code>ts</code>  | 0.1               |

<b>Cles de l inspecteur</b>

Ces cles serialisees sont exposees par l inspecteur du bloc.

- <code>num</code>
- <code>den</code>
- <code>ts</code>

<b>Caracteristiques du bloc</b>

| Champ                      | Valeur                    |
| -------------------------- | ------------------------- |
| Type de bloc               | dtf                       |
| Famille                    | Blocs discrets            |
| Taille graphique           | 80 x 80                   |
| Phases                     | INIT, OUTPUT, UPDATE      |
| Traversee directe          | voir Algorithmes          |
| Etat ou historique interne | oui                       |
| Type de donnees signaux    | valeurs numeriques double |

<b>Algorithmes</b>

- INIT normalise numerateur et denominateur par den[0] et efface les historiques.
- OUTPUT emet la sortie memorisee. UPDATE echantillonne a ts, decale les historiques et evalue la recurrence.
- Un numerateur vide vaut [0], un denominateur vide vaut [1], et ts vaut au moins 0.001.

<b>Equation ou regle</b>

discrete transfer-function recurrence

<b>Capacites et limites</b>

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

Generation de code : prise en charge pour C et Rust.

<b>Sources d implementation</b>

<details>
<summary>Manifest: <code>modules/nflow_blocks/libraries/discrete/library.json</code></summary>

```json
{
  "id": "builtin.discrete",
  "title": "Discrete",
  "version": "1.0.0",
  "format": "nflow-2",
  "metadata": {
    "author": "Allan CORNET",
    "created": "2026-03-21",
    "tool": "Nelson nflow"
  },
  "comment": "Blocks for discrete-time systems",
  "license": "LGPL-3.0",
  "builtin": true,
  "blocks": [
    {
      "type": "zoh",
      "label": "ZOH",
      "icon": "zoh.svg",
      "phases": ["INIT", "OUTPUT", "UPDATE"],
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
        "SampleTime": 0.1
      },
      "render": {
        "type": "image",
        "src": "zoh.svg"
      }
    },
    {
      "type": "foh",
      "label": "FOH",
      "icon": "foh.svg",
      "phases": ["INIT", "OUTPUT", "UPDATE"],
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
        "SampleTime": 0.1
      },
      "render": {
        "type": "image",
        "src": "foh.svg"
      }
    },
    {
      "type": "dtf",
      "icon": "dtf.svg",
      "label": "Discrete TF",
      "phases": ["INIT", "OUTPUT", "UPDATE"],
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
        "Numerator": [1],
        "Denominator": [1, -0.5],
        "SampleTime": 0.1
      },
      "render": {
        "type": "image",
        "src": "dtf.svg"
      }
    },
    {
      "type": "ddelay",
      "icon": "ddelay.svg",
      "label": "Discrete Delay",
      "phases": ["INIT", "OUTPUT", "UPDATE"],
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
        "DelayLength": 1,
        "SampleTime": 0.1
      },
      "render": {
        "type": "image",
        "src": "ddelay.svg"
      }
    },
    {
      "type": "dstateSpace",
      "icon": "dstateSpace.svg",
      "label": "Discrete State-Space",
      "phases": ["INIT", "OUTPUT", "UPDATE"],
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
        "A": 1,
        "B": 1,
        "C": 1,
        "D": 0,
        "SampleTime": 0.1
      },
      "render": {
        "type": "image",
        "src": "dstateSpace.svg"
      }
    },
    {
      "type": "unitDelay",
      "label": "Unit Delay",
      "icon": "unitDelay.svg",
      "phases": ["INIT", "OUTPUT", "UPDATE"],
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
        "InitialCondition": 0
      },
      "render": {
        "type": "image",
        "src": "exports/unitDelay.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "rateTransition",
      "label": "Rate Transition",
      "icon": "rateTransition.svg",
      "phases": ["INIT", "OUTPUT", "UPDATE"],
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
        "OutPortSampleTime": -1,
        "InitialCondition": 0
      },
      "render": {
        "type": "image",
        "src": "exports/rateTransition.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "difference",
      "label": "Difference",
      "icon": "difference.svg",
      "phases": ["INIT", "OUTPUT", "UPDATE"],
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
        "ICPrevInput": 0
      },
      "render": {
        "type": "image",
        "src": "exports/difference.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "detectChange",
      "label": "Detect Change",
      "icon": "detectChange.svg",
      "phases": ["INIT", "OUTPUT", "UPDATE"],
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
        "InitialCondition": 0
      },
      "render": {
        "type": "image",
        "src": "exports/detectChange.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "detectIncrease",
      "label": "Detect Increase",
      "icon": "detectIncrease.svg",
      "phases": ["INIT", "OUTPUT", "UPDATE"],
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
        "InitialCondition": 0
      },
      "render": {
        "type": "image",
        "src": "exports/detectIncrease.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "detectDecrease",
      "label": "Detect Decrease",
      "icon": "detectDecrease.svg",
      "phases": ["INIT", "OUTPUT", "UPDATE"],
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
        "InitialCondition": 0
      },
      "render": {
        "type": "image",
        "src": "exports/detectDecrease.svg",
        "svgMode": "element",
        "preserveAspectRatio": "none",
        "x": 0,
        "y": 0,
        "width": 80,
        "height": 80
      }
    },
    {
      "type": "risingEdge",
      "label": "Rising Edge",
      "icon": "risingEdge.svg",
      "phases": ["INIT", "OUTPUT", "UPDATE"],
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
        "InitialCondition": 0
      }
    },
    {
      "type": "fallingEdge",
      "label": "Falling Edge",
      "icon": "fallingEdge.svg",
      "phases": ["INIT", "OUTPUT", "UPDATE"],
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
        "InitialCondition": 0
      }
    }
  ]
}
```

</details>


<details>
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/discrete/dtf.cpp</code></summary>

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
#include "NFlowCodegenHelpers.hpp"
#include <cmath>
#include <algorithm>
#include "discrete_blocks.hpp"
//=============================================================================
bool
Nelson::NFlow::handleDtf(SimCtx& ctx, const Block& b, Phase phase)
{
    auto& st = getState(ctx, b.nid);
    if (phase == Phase::INIT) {
        auto toPolyD = [](const json& j) -> std::vector<double> {
            std::vector<double> v;
            if (j.is_array()) {
                for (const auto& el : j) {
                    v.push_back(el.is_number() ? el.get<double>() : 0.0);
                }
            } else if (j.is_number()) {
                v.push_back(j.get<double>());
            }
            return v;
        };
        // Same reading as the emitted code: buildDiscreteTf normalises by the
        // leading denominator coefficient AND pads a lower-degree numerator on
        // the left, so both lists are polynomials in z. The runtime used to
        // normalise here on its own without the padding, which gave a system
        // with no delay where the emitted code had one.
        const nflow::DiscreteTf model
            = nflow::buildDiscreteTf(toPolyD(b.params.value(nflow::kNum, json::array())),
                toPolyD(b.params.value(nflow::kDen, json::array())));
        std::vector<double> numArr = model.num;
        std::vector<double> denArr = model.den;
        // Per-element input/output histories: xHist is flat [width * nx],
        // yHist flat [width * ny]; the coefficients are shared.
        const int w = std::max(1, outputWidth(ctx, b.nid, 0));
        st.tfNum = numArr;
        st.tfDen = denArr;
        st.xHist.assign(numArr.size() * (size_t)w, 0.0);
        st.yHist.assign(std::max((int)denArr.size() - 1, 0) * (size_t)w, 0.0);
        st.outLatch.assign(w, 0.0);
        st.dNextTime = 0.0;
        st.output = 0.0;
        return false;
    }
    if (phase == Phase::ALGEBRAIC) {
        // The output answers the CURRENT input: with the numerator and the
        // denominator read as polynomials in z, a biproper system feeds through
        // and only a lower-degree numerator delays. Emitting what UPDATE had
        // latched put every form one step behind, so a biproper system answered
        // a step after its input moved.
        const int w = std::max(1, outputWidth(ctx, b.nid, 0));
        const bool onHit = (ctx.t + 1e-6 >= st.dNextTime);
        if (!onHit) {
            // Between this block's own sample hits it holds what it last said.
            if (w <= 1) {
                setOutput(ctx, b.nid, st.outLatch.empty() ? st.output : st.outLatch[0]);
            } else {
                double* yv = outputSlice(ctx, b.nid, 0);
                for (int e = 0; e < w; ++e) {
                    yv[e] = (e < (int)st.outLatch.size()) ? st.outLatch[e] : 0.0;
                }
            }
            return false;
        }
        const int nx = (int)st.tfNum.size();
        const int ny = std::max((int)st.tfDen.size() - 1, 0);
        SigView u = getInputSig(ctx, b.nid, 0);
        std::vector<double> xs(nx), ys(ny);
        if (w <= 1) {
            const double* xh = st.xHist.data();
            const double* yh = st.yHist.data();
            if (nx > 0) {
                xs[0] = sigAt(u, 0);
            }
            for (int k = 1; k < nx; ++k) {
                xs[k] = xh[k - 1];
            }
            for (int k = 0; k < ny; ++k) {
                ys[k] = yh[k];
            }
            setOutput(ctx, b.nid, evalDiscreteTf(st.tfNum, st.tfDen, xs, ys));
        } else {
            double* yv = outputSlice(ctx, b.nid, 0);
            for (int e = 0; e < w; ++e) {
                const double* xh = st.xHist.data() + (size_t)e * nx;
                const double* yh = st.yHist.data() + (size_t)e * ny;
                if (nx > 0) {
                    xs[0] = sigAt(u, e);
                }
                for (int k = 1; k < nx; ++k) {
                    xs[k] = xh[k - 1];
                }
                for (int k = 0; k < ny; ++k) {
                    ys[k] = yh[k];
                }
                yv[e] = evalDiscreteTf(st.tfNum, st.tfDen, xs, ys);
            }
        }
        return false;
    }
    if (phase == Phase::UPDATE) {
        nflow::BlockDescriptor bd(b, ctx.variables);
        double ts = std::max(0.001, bd.paramDouble(nflow::kTs, ctx.dt));
        if (ctx.t + 1e-6 >= st.dNextTime) {
            const int w = std::max(1, outputWidth(ctx, b.nid, 0));
            const int nx = (int)st.tfNum.size();
            const int ny = std::max((int)st.tfDen.size() - 1, 0);
            SigView u = getInputSig(ctx, b.nid, 0);
            if ((int)st.outLatch.size() != w) {
                st.outLatch.assign(w, 0.0);
            }
            std::vector<double> xs(nx), ys(ny);
            for (int e = 0; e < w; ++e) {
                double* xh = st.xHist.data() + (size_t)e * nx;
                double* yh = st.yHist.data() + (size_t)e * ny;
                for (int k = nx - 1; k > 0; --k) {
                    xh[k] = xh[k - 1];
                }
                if (nx > 0) {
                    xh[0] = sigAt(u, e);
                }
                for (int k = 0; k < nx; ++k) {
                    xs[k] = xh[k];
                }
                for (int k = 0; k < ny; ++k) {
                    ys[k] = yh[k];
                }
                double y = evalDiscreteTf(st.tfNum, st.tfDen, xs, ys);
                for (int k = ny - 1; k > 0; --k) {
                    yh[k] = yh[k - 1];
                }
                if (ny > 0) {
                    yh[0] = y;
                }
                st.outLatch[e] = y;
            }
            st.dNextTime = ctx.t + ts;
            st.output = st.outLatch.empty() ? 0.0 : st.outLatch[0];
        }
        return false;
    }
    return false;
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenCDtf()
{
    BlockCodegenTemplate t;
    t.emitState = [](const BlockCodegenStateArgs& a) {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        auto num = bd.paramList(nflow::kNum);
        auto den = bd.paramList(nflow::kDen);
        auto model = nflow::buildDiscreteTf(num, den);
        int numLen = static_cast<int>(model.num.size());
        int denLen = static_cast<int>(model.den.size());
        a.addConst("static const int dtf_num_" + a.id + "_n = " + std::to_string(numLen) + ";");
        a.addConst("static const int dtf_den_" + a.id + "_n = " + std::to_string(denLen) + ";");
        std::string numStr = "";
        for (int i = 0; i < numLen; ++i) {
            if (i > 0) {
                numStr += ", ";
            }
            numStr += a.fmt(model.num[i]);
        }
        std::string denStr = "";
        for (int i = 0; i < denLen; ++i) {
            if (i > 0) {
                denStr += ", ";
            }
            denStr += a.fmt(model.den[i]);
        }
        a.addConst("static const double dtf_num_" + a.id + "[" + std::to_string(numLen) + "] = {"
            + numStr + "};");
        a.addConst("static const double dtf_den_" + a.id + "[" + std::to_string(denLen) + "] = {"
            + denStr + "};");
        a.declState("double dtf_x_" + a.id + "[" + std::to_string(numLen) + "];");
        a.declState("double dtf_y_" + a.id + "[" + std::to_string(std::max(0, denLen - 1)) + "];");
        a.addState("dtf_next_" + a.id, "", "");
        a.addState("dtf_last_" + a.id, "", "");
        a.addInit("  for (int i = 0; i < " + std::to_string(numLen) + "; i++) s->dtf_x_" + a.id
            + "[i] = 0.0;");
        a.addInit("  for (int i = 0; i < " + std::to_string(std::max(0, denLen - 1))
            + "; i++) s->dtf_y_" + a.id + "[i] = 0.0;");
    };
    t.emitOutput = [](const BlockCodegenArgs& a) {
        a.line("out_" + a.id + " = (dtf_den_" + a.id + "_n > 1) ? s->dtf_y_" + a.id + "[0] : 0.0;");
    };
    t.emitStep = [](const BlockCodegenArgs& a) {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        double ts = std::fmax(0.001, bd.paramDouble(nflow::kTs, 0.0));
        if (ts == 0) {
            ts = a.dt;
        }
        // The output is the value computed ON the hit (held between hits), not
        // the one from the previous hit: a biproper system feeds through.
        a.line("if (t + 1e-6 >= s->dtf_next_" + a.id + ") {");
        a.line("  for (int i = dtf_num_" + a.id + "_n - 1; i > 0; i--) s->dtf_x_" + a.id
            + "[i] = s->dtf_x_" + a.id + "[i - 1];");
        a.line("  s->dtf_x_" + a.id + "[0] = " + a.in[0] + ";");
        a.line("  double y = 0.0;");
        a.line("  for (int i = 0; i < dtf_num_" + a.id + "_n; i++) y += dtf_num_" + a.id
            + "[i] * s->dtf_x_" + a.id + "[i];");
        a.line("  for (int i = 1; i < dtf_den_" + a.id + "_n; i++) y -= dtf_den_" + a.id
            + "[i] * s->dtf_y_" + a.id + "[i - 1];");
        a.line("  for (int i = dtf_den_" + a.id + "_n - 2; i > 0; i--) s->dtf_y_" + a.id
            + "[i] = s->dtf_y_" + a.id + "[i - 1];");
        a.line("  if (dtf_den_" + a.id + "_n > 1) s->dtf_y_" + a.id + "[0] = y;");
        a.line("  s->dtf_last_" + a.id + " = y;");
        a.line("  s->dtf_next_" + a.id + " = t + " + a.fmt(ts) + ";");
        a.line("}");
        a.line("out_" + a.id + " = s->dtf_last_" + a.id + ";");
    };
    return t;
}
//=============================================================================
Nelson::NFlow::BlockCodegenTemplate
Nelson::NFlow::getCodeGenRustDtf()
{
    BlockCodegenTemplate t;
    t.emitState = [](const BlockCodegenStateArgs& a) {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        auto num = bd.paramList(nflow::kNum);
        auto den = bd.paramList(nflow::kDen);
        auto model = nflow::buildDiscreteTf(num, den);
        int numLen = static_cast<int>(model.num.size());
        int denLen = static_cast<int>(model.den.size());
        std::string cu = a.id;
        for (auto& c : cu) {
            c = static_cast<char>(std::toupper(static_cast<unsigned char>(c)));
        }
        a.addConst("const DTF_NUM_" + cu + "_N: usize = " + std::to_string(numLen) + ";");
        a.addConst("const DTF_DEN_" + cu + "_N: usize = " + std::to_string(denLen) + ";");
        std::string numStr;
        for (int i = 0; i < numLen; ++i) {
            if (i > 0) {
                numStr += ", ";
            }
            numStr += a.fmt(model.num[i]);
        }
        std::string denStr;
        for (int i = 0; i < denLen; ++i) {
            if (i > 0) {
                denStr += ", ";
            }
            denStr += a.fmt(model.den[i]);
        }
        a.addConst(
            "const DTF_NUM_" + cu + ": [f64; " + std::to_string(numLen) + "] = [" + numStr + "];");
        a.addConst(
            "const DTF_DEN_" + cu + ": [f64; " + std::to_string(denLen) + "] = [" + denStr + "];");
        a.declState("    pub dtf_x_" + a.id + ": [f64; " + std::to_string(numLen) + "],");
        a.declState(
            "    pub dtf_y_" + a.id + ": [f64; " + std::to_string(std::max(1, denLen - 1)) + "],");
        a.declState("    pub dtf_next_" + a.id + ": f64,");
        a.declState("    pub dtf_last_" + a.id + ": f64,");
        a.addInit(
            "    s.dtf_x_" + a.id + " = [" + a.fmt(0.0) + "; " + std::to_string(numLen) + "]; ");
        a.addInit("    s.dtf_y_" + a.id + " = [" + a.fmt(0.0) + "; "
            + std::to_string(std::max(1, denLen - 1)) + "]; ");
        a.addInit("    s.dtf_next_" + a.id + " = 0.0_f64;");
        a.addInit("    s.dtf_last_" + a.id + " = 0.0_f64;");
    };
    t.emitOutput
        = [](const BlockCodegenArgs& a) { a.line("out_" + a.id + " = s.dtf_last_" + a.id + ";"); };
    t.emitStep = [](const BlockCodegenArgs& a) {
        nflow::BlockDescriptor bd(*a.block, *a.variables);
        double ts = std::fmax(0.001, bd.paramDouble(nflow::kTs, 0.0));
        if (ts == 0) {
            ts = a.dt;
        }
        std::string cu = a.id;
        for (auto& c : cu) {
            c = static_cast<char>(std::toupper(static_cast<unsigned char>(c)));
        }
        // The value computed ON the hit is what leaves, held between hits: a
        // biproper system feeds through.
        a.line("if (t + 1e-6 >= s.dtf_next_" + a.id + ") {");
        a.line("    for i in (1..DTF_NUM_" + cu + "_N).rev() { s.dtf_x_" + a.id + "[i] = s.dtf_x_"
            + a.id + "[i - 1]; }");
        a.line("    s.dtf_x_" + a.id + "[0] = " + a.in[0] + ";");
        a.line("    let mut y = 0.0_f64;");
        a.line("    for i in 0..DTF_NUM_" + cu + "_N { y += DTF_NUM_" + cu + "[i] * s.dtf_x_" + a.id
            + "[i]; }");
        a.line("    for i in 1..DTF_DEN_" + cu + "_N { y -= DTF_DEN_" + cu + "[i] * s.dtf_y_" + a.id
            + "[i - 1]; }");
        a.line("    for i in (1..(DTF_DEN_" + cu + "_N - 1)).rev() { s.dtf_y_" + a.id
            + "[i] = s.dtf_y_" + a.id + "[i - 1]; }");
        a.line("    if DTF_DEN_" + cu + "_N > 1 { s.dtf_y_" + a.id + "[0] = y; }");
        a.line("    s.dtf_last_" + a.id + " = y;");
        a.line("    s.dtf_next_" + a.id + " = t + " + a.fmt(ts) + ";");
        a.line("}");
        a.line("out_" + a.id + " = s.dtf_last_" + a.id + ";");
    };
    return t;
}
//=============================================================================

```

</details>

## 🔗 Voir aussi

[dstateSpace](../../nflow_blocks/discrete/dstateSpace.md), [tf](../../nflow_blocks/continuous/tf.md), [unitDelay](../../nflow_blocks/discrete/unitDelay.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
