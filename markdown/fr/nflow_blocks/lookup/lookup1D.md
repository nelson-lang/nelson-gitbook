# lookup1D

Table de consultation 1-D interpolee.

## 📝 Syntaxe

- Block type: lookup1D

## 📥 Argument d'entrée

- input ports - 1 input port(s) declared.

## 📤 Argument de sortie

- output ports - 1 output port(s) declared.

## 📄 Description

Table de consultation 1-D interpolee.

| Champ   | Valeur                    |
| ------- | ------------------------- |
| Module  | <code>nflow_blocks</code> |
| Library | Tables de consultation    |
| Type    | <code>lookup1D</code>     |
| Label   | 1-D Lookup Table          |

<b>Description</b>

Interpole un couple points de rupture / table statique a la valeur d entree. InterpMethod choisit Flat, Nearest, Linear point-slope ou Linear Lagrange ; ExtrapMethod choisit Clip ou Linear. Element par element avec expansion scalaire.

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

Generation de code : prise en charge pour C et Rust.

<b>Sources d implementation</b>

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
<summary>Runtime: <code>modules/nflow_blocks/src/cpp/lookup/lookup1D.cpp</code></summary>

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
// lookup1D: 1-D lookup table. Output = interpolation of a static breakpoint /
// table pair at the input value, element-wise with scalar expansion.
//   BreakpointsForDimension1 : strictly increasing vector (param expression)
//   Table                    : vector, same cardinality
//   InterpMethod             : Flat | Nearest | Linear point-slope |
//                              Linear Lagrange
//   ExtrapMethod             : Clip | Linear
//   IndexSearchMethod        : (perf only, does not change the value)
//   UseLastTableValue        : on | off  (Flat: input >= last bp -> last value)
// Feedthrough (ALGEBRAIC), real double, no state. Splines and the Warning /
// Error out-of-range diagnostics are a follow-up (V1 = None, silent extrap).
//=============================================================================
#include "SimEngineTypes.hpp"
#include "BlockRegistry.hpp"
#include "FieldNames.hpp"
#include "NFlowBlockDescriptor.hpp"
#include "lookup_blocks.hpp"
#include <string>
#include <vector>
#include <cmath>
#include <algorithm>
//=============================================================================
namespace Nelson {
namespace NFlow {
    //=============================================================================
    namespace {
        // Locate i such that bp[i] <= u < bp[i+1] for an in-range u (bp[0] <= u
        // < bp[N-1]); linear scan (the search method is a perf choice only).
        int
        findInterval(const std::vector<double>& bp, double u)
        {
            const int n = (int)bp.size();
            for (int i = n - 2; i >= 0; --i) {
                if (u >= bp[i]) {
                    return i;
                }
            }
            return 0;
        }

        // Second derivatives M[i] of the not-a-knot cubic spline through
        // (bp, tbl). For n == 3 the two end conditions become natural (M0 =
        // M_{n-1} = 0); n < 3 has no spline (linear is used instead). Solved by
        // Gaussian elimination on the (small) n x n system.
        std::vector<double>
        cubicSplineM(const std::vector<double>& x, const std::vector<double>& y)
        {
            const int n = (int)x.size();
            std::vector<double> M(std::max(0, n), 0.0);
            if (n < 3) {
                return M;
            }
            std::vector<double> h(n - 1);
            for (int i = 0; i < n - 1; ++i) {
                h[i] = x[i + 1] - x[i];
            }
            std::vector<std::vector<double>> A(n, std::vector<double>(n, 0.0));
            std::vector<double> rhs(n, 0.0);
            for (int i = 1; i <= n - 2; ++i) {
                A[i][i - 1] = h[i - 1];
                A[i][i] = 2.0 * (h[i - 1] + h[i]);
                A[i][i + 1] = h[i];
                rhs[i] = 6.0 * ((y[i + 1] - y[i]) / h[i] - (y[i] - y[i - 1]) / h[i - 1]);
            }
            if (n >= 4) {
                // Not-a-knot: continuous third derivative at x[1] and x[n-2].
                A[0][0] = h[1];
                A[0][1] = -(h[0] + h[1]);
                A[0][2] = h[0];
                A[n - 1][n - 3] = h[n - 2];
                A[n - 1][n - 2] = -(h[n - 3] + h[n - 2]);
                A[n - 1][n - 1] = h[n - 3];
            } else {
                // n == 3: natural spline end conditions.
                A[0][0] = 1.0;
                A[n - 1][n - 1] = 1.0;
            }
            for (int col = 0; col < n; ++col) {
                int piv = col;
                for (int r = col + 1; r < n; ++r) {
                    if (std::fabs(A[r][col]) > std::fabs(A[piv][col])) {
                        piv = r;
                    }
                }
                std::swap(A[col], A[piv]);
                std::swap(rhs[col], rhs[piv]);
                const double d = A[col][col];
                if (std::fabs(d) < 1e-300) {
                    continue;
                }
                for (int r = 0; r < n; ++r) {
                    if (r == col) {
                        continue;
                    }
                    const double f = A[r][col] / d;
                    if (f != 0.0) {
                        for (int c = col; c < n; ++c) {
                            A[r][c] -= f * A[col][c];
                        }
                        rhs[r] -= f * rhs[col];
                    }
                }
            }
            for (int i = 0; i < n; ++i) {
                const double d = A[i][i];
                M[i] = (std::fabs(d) > 1e-300) ? rhs[i] / d : 0.0;
            }
            return M;
        }

        // Evaluate the cubic spline (second-derivative form) over interval i.
        // For an out-of-range u the caller passes the nearest end interval,
        // which extends the end cubic polynomial (cubic extrapolation).
        double
        cubicSplineEval(const std::vector<double>& x, const std::vector<double>& y,
            const std::vector<double>& M, int i, double u)
        {
            const double h = x[i + 1] - x[i];
            if (h == 0.0) {
                return y[i];
            }
            const double A = (x[i + 1] - u) / h;
            const double B = (u - x[i]) / h;
            return A * y[i] + B * y[i + 1]
                + ((A * A * A - A) * M[i] + (B * B * B - B) * M[i + 1]) * (h * h) / 6.0;
        }

        // Endpoint derivatives of the Akima spline at each breakpoint. The
        // secant slopes are extended by two on each side (Akima 1970); n < 3
        // has no Akima spline (linear is used instead).
        std::vector<double>
        akimaDerivs(const std::vector<double>& x, const std::vector<double>& y)
        {
            const int n = (int)x.size();
            std::vector<double> t(std::max(0, n), 0.0);
            if (n < 3) {
                return t;
            }
            const int ns = n - 1; // secant slopes s[0..ns-1]
            std::vector<double> ext(n + 3, 0.0); // ext[k] = s[k-2]
            for (int i = 0; i < ns; ++i) {
                ext[i + 2] = (y[i + 1] - y[i]) / (x[i + 1] - x[i]);
            }
            ext[1] = 2.0 * ext[2] - ext[3];
            ext[0] = 2.0 * ext[1] - ext[2];
            ext[n + 1] = 2.0 * ext[n] - ext[n - 1];
            ext[n + 2] = 2.0 * ext[n + 1] - ext[n];
            for (int i = 0; i < n; ++i) {
                const double w1 = std::fabs(ext[i + 3] - ext[i + 2]);
                const double w2 = std::fabs(ext[i + 1] - ext[i]);
                t[i] = (w1 + w2 == 0.0) ? 0.5 * (ext[i + 1] + ext[i + 2])
                                        : (w1 * ext[i + 1] + w2 * ext[i + 2]) / (w1 + w2);
            }
            return t;
        }

        // Evaluate the Akima Hermite cubic over interval i (extends the end
        // cubic for out-of-range u).
        double
        akimaEval(const std::vector<double>& x, const std::vector<double>& y,
            const std::vector<double>& t, int i, double u)
        {
            const double h = x[i + 1] - x[i];
            if (h == 0.0) {
                return y[i];
            }
            const double p = (y[i + 1] - y[i]) / h;
            const double dx = u - x[i];
            const double a2 = (3.0 * p - 2.0 * t[i] - t[i + 1]) / h;
            const double a3 = (t[i] + t[i + 1] - 2.0 * p) / (h * h);
            return y[i] + t[i] * dx + a2 * dx * dx + a3 * dx * dx * dx;
        }

        double
        interp1d(const std::vector<double>& bp, const std::vector<double>& tbl, double u,
            const std::string& interp, const std::string& extrap, bool useLast,
            const std::vector<double>& splM)
        {
            const int n = (int)bp.size();
            if (n == 0) {
                return 0.0;
            }
            if (n == 1) {
                return tbl[0];
            }
            const bool spline = (interp == "Cubic spline") && n >= 3 && !splM.empty();
            const bool akima = (interp == "Akima spline") && n >= 3 && !splM.empty();
            // Below the first breakpoint.
            if (u <= bp[0]) {
                if (u == bp[0]) {
                    return tbl[0];
                }
                if (extrap == "Cubic spline" && spline) {
                    return cubicSplineEval(bp, tbl, splM, 0, u);
                }
                if (extrap == "Akima spline" && akima) {
                    return akimaEval(bp, tbl, splM, 0, u);
                }
                if (extrap == "Linear") {
                    const double slope = (tbl[1] - tbl[0]) / (bp[1] - bp[0]);
                    return tbl[0] + (u - bp[0]) * slope;
                }
                return tbl[0]; // Clip
            }
            // At or above the last breakpoint.
            if (u >= bp[n - 1]) {
                if (u == bp[n - 1] || useLast) {
                    return tbl[n - 1];
                }
                if (extrap == "Cubic spline" && spline) {
                    return cubicSplineEval(bp, tbl, splM, n - 2, u);
                }
                if (extrap == "Akima spline" && akima) {
                    return akimaEval(bp, tbl, splM, n - 2, u);
                }
                if (extrap == "Linear") {
                    const double slope = (tbl[n - 1] - tbl[n - 2]) / (bp[n - 1] - bp[n - 2]);
                    return tbl[n - 1] + (u - bp[n - 1]) * slope;
                }
                return tbl[n - 1]; // Clip
            }
            // In range.
            const int i = findInterval(bp, u);
            const double f = (u - bp[i]) / (bp[i + 1] - bp[i]);
            if (interp == "Flat") {
                return tbl[i];
            }
            if (interp == "Nearest") {
                return (f < 0.5) ? tbl[i] : tbl[i + 1];
            }
            if (interp == "Cubic spline" && spline) {
                return cubicSplineEval(bp, tbl, splM, i, u);
            }
            if (interp == "Akima spline" && akima) {
                return akimaEval(bp, tbl, splM, i, u);
            }
            if (interp == "Linear Lagrange") {
                return (1.0 - f) * tbl[i] + f * tbl[i + 1];
            }
            // "Linear point-slope" (default).
            return tbl[i] + f * (tbl[i + 1] - tbl[i]);
        }

        bool
        isStrictlyIncreasing(const std::vector<double>& v)
        {
            for (size_t i = 1; i < v.size(); ++i) {
                if (!(v[i] > v[i - 1])) {
                    return false;
                }
            }
            return true;
        }

        // Parse a list-valued param through BlockDescriptor so both JSON arrays
        // and string expressions ("[0 1 2]", "k*[1 2]") resolve, matching the
        // simulator (an inspector edit turns an array into a string).
        std::vector<double>
        paramVec(const BlockCodegenArgs& a, const char* key)
        {
            if (!a.block || !a.variables) {
                return {};
            }
            nflow::BlockDescriptor bd(*a.block, *a.variables);
            return bd.paramList(key);
        }

        // Cubic-spline code generation: bake the breakpoint / table / second-
        // derivative arrays (M computed at generation time) and emit the interval
        // search + cubic evaluation, mirroring interp1d for Cubic spline.
        void
        emitSpline1D(const BlockCodegenArgs& a, bool rust, const std::vector<double>& bp,
            const std::vector<double>& tbl, const std::string& extrap, bool useLast)
        {
            const int n = (int)bp.size();
            const std::vector<double> M = cubicSplineM(bp, tbl);
            const std::string id = a.id;
            const std::string bpv = "__sbp_" + id;
            const std::string tv = "__stbl_" + id;
            const std::string mv = "__sM_" + id;
            const std::string su = "__su_" + id;
            const std::string sy = "__sy_" + id;
            const std::string si = "__si_" + id;
            const std::string last = std::to_string(n - 1);
            const bool sx = (extrap == "Cubic spline");
            auto arr = [&](const std::string& name, const std::vector<double>& v) {
                std::string s
                    = rust ? ("let " + name + " = [") : ("static const double " + name + "[] = {");
                for (size_t i = 0; i < v.size(); ++i) {
                    s += (i ? ", " : "") + a.fmt(v[i]);
                }
                s += rust ? "];" : "};";
                return s;
            };
            a.line(arr(bpv, bp));
            a.line(arr(tv, tbl));
            a.line(arr(mv, M));
            // cubic(idx): evaluate the spline over interval `idx` at su.
            auto cubic = [&](const std::string& idx) {
                const std::string h = "(" + bpv + "[" + idx + "+1] - " + bpv + "[" + idx + "])";
                const std::string A = "((" + bpv + "[" + idx + "+1] - " + su + ") / " + h + ")";
                const std::string B = "((" + su + " - " + bpv + "[" + idx + "]) / " + h + ")";
                return A + " * " + tv + "[" + idx + "] + " + B + " * " + tv + "[" + idx + "+1] + (("
                    + A + "*" + A + "*" + A + " - " + A + ") * " + mv + "[" + idx + "] + (" + B
                    + "*" + B + "*" + B + " - " + B + ") * " + mv + "[" + idx + "+1]) * " + h
                    + " * " + h + " / 6.0";
            };
            const std::string slope0
                = "((" + tv + "[1] - " + tv + "[0]) / (" + bpv + "[1] - " + bpv + "[0]))";
            const std::string slopeN = "((" + tv + "[" + last + "] - " + tv + "["
                + std::to_string(n - 2) + "]) / (" + bpv + "[" + last + "] - " + bpv + "["
                + std::to_string(n - 2) + "]))";
            const std::string below = sx
                ? cubic("0")
                : (extrap == "Linear" ? tv + "[0] + (" + su + " - " + bpv + "[0]) * " + slope0
                                      : tv + "[0]");
            const std::string above = sx ? cubic(std::to_string(n - 2))
                                         : (extrap == "Linear" ? tv + "[" + last + "] + (" + su
                                                       + " - " + bpv + "[" + last + "]) * " + slopeN
                                                               : tv + "[" + last + "]");
            const std::string aboveGuard = useLast ? "1" : "0";
            if (rust) {
                a.line("let " + su + " = " + a.in[0] + ";");
                a.line("let " + sy + ": f64;");
                a.line("let mut " + si + ": usize = 0;");
                a.line("if " + su + " <= " + bpv + "[0] { if " + su + " == " + bpv + "[0] { " + sy
                    + " = " + tv + "[0]; } else { " + sy + " = " + below + "; } }");
                a.line("else if " + su + " >= " + bpv + "[" + last + "] { if " + su + " == " + bpv
                    + "[" + last + "] || " + aboveGuard + " != 0 { " + sy + " = " + tv + "[" + last
                    + "]; } else { " + sy + " = " + above + "; } }");
                a.line("else { " + si + " = " + std::to_string(n - 2) + "; while " + si + " > 0 && "
                    + su + " < " + bpv + "[" + si + "] { " + si + " -= 1; } " + sy + " = "
                    + cubic(si) + "; }");
                a.line("out_" + id + " = " + sy + ";");
            } else {
                a.line("double " + su + " = " + a.in[0] + ";");
                a.line("double " + sy + ";");
                a.line("int " + si + " = 0;");
                a.line("if (" + su + " <= " + bpv + "[0]) { if (" + su + " == " + bpv + "[0]) " + sy
                    + " = " + tv + "[0]; else " + sy + " = " + below + "; }");
                a.line("else if (" + su + " >= " + bpv + "[" + last + "]) { if (" + su
                    + " == " + bpv + "[" + last + "] || " + aboveGuard + ") " + sy + " = " + tv
                    + "[" + last + "]; else " + sy + " = " + above + "; }");
                a.line("else { " + si + " = " + std::to_string(n - 2) + "; while (" + si
                    + " > 0 && " + su + " < " + bpv + "[" + si + "]) " + si + "--; " + sy + " = "
                    + cubic(si) + "; }");
                a.line("out_" + id + " = " + sy + ";");
            }
        }

        // Akima code generation: bake the breakpoint / table / endpoint-derivative
        // arrays (t computed at generation time) and emit the interval search +
        // Hermite cubic, mirroring interp1d for Akima spline.
        void
        emitAkima1D(const BlockCodegenArgs& a, bool rust, const std::vector<double>& bp,
            const std::vector<double>& tbl, const std::string& extrap, bool useLast)
        {
            const int n = (int)bp.size();
            const std::vector<double> T = akimaDerivs(bp, tbl);
            const std::string id = a.id;
            const std::string bpv = "__abp_" + id;
            const std::string tv = "__atbl_" + id;
            const std::string dv = "__aT_" + id;
            const std::string su = "__au_" + id;
            const std::string sy = "__ay_" + id;
            const std::string si = "__ai_" + id;
            const std::string last = std::to_string(n - 1);
            const bool ax = (extrap == "Akima spline");
            auto arr = [&](const std::string& name, const std::vector<double>& v) {
                std::string s
                    = rust ? ("let " + name + " = [") : ("static const double " + name + "[] = {");
                for (size_t i = 0; i < v.size(); ++i) {
                    s += (i ? ", " : "") + a.fmt(v[i]);
                }
                s += rust ? "];" : "};";
                return s;
            };
            a.line(arr(bpv, bp));
            a.line(arr(tv, tbl));
            a.line(arr(dv, T));
            auto cubic = [&](const std::string& idx) {
                const std::string h = "(" + bpv + "[" + idx + "+1] - " + bpv + "[" + idx + "])";
                const std::string p
                    = "((" + tv + "[" + idx + "+1] - " + tv + "[" + idx + "]) / " + h + ")";
                const std::string dx = "(" + su + " - " + bpv + "[" + idx + "])";
                const std::string a2 = "((3.0 * " + p + " - 2.0 * " + dv + "[" + idx + "] - " + dv
                    + "[" + idx + "+1]) / " + h + ")";
                const std::string a3 = "((" + dv + "[" + idx + "] + " + dv + "[" + idx
                    + "+1] - 2.0 * " + p + ") / (" + h + " * " + h + "))";
                return tv + "[" + idx + "] + " + dv + "[" + idx + "] * " + dx + " + " + a2 + " * "
                    + dx + " * " + dx + " + " + a3 + " * " + dx + " * " + dx + " * " + dx;
            };
            const std::string slope0
                = "((" + tv + "[1] - " + tv + "[0]) / (" + bpv + "[1] - " + bpv + "[0]))";
            const std::string slopeN = "((" + tv + "[" + last + "] - " + tv + "["
                + std::to_string(n - 2) + "]) / (" + bpv + "[" + last + "] - " + bpv + "["
                + std::to_string(n - 2) + "]))";
            const std::string below = ax
                ? cubic("0")
                : (extrap == "Linear" ? tv + "[0] + (" + su + " - " + bpv + "[0]) * " + slope0
                                      : tv + "[0]");
            const std::string above = ax ? cubic(std::to_string(n - 2))
                                         : (extrap == "Linear" ? tv + "[" + last + "] + (" + su
                                                       + " - " + bpv + "[" + last + "]) * " + slopeN
                                                               : tv + "[" + last + "]");
            const std::string aboveGuard = useLast ? "1" : "0";
            if (rust) {
                a.line("let " + su + " = " + a.in[0] + ";");
                a.line("let " + sy + ": f64;");
                a.line("let mut " + si + ": usize = 0;");
                a.line("if " + su + " <= " + bpv + "[0] { if " + su + " == " + bpv + "[0] { " + sy
                    + " = " + tv + "[0]; } else { " + sy + " = " + below + "; } }");
                a.line("else if " + su + " >= " + bpv + "[" + last + "] { if " + su + " == " + bpv
                    + "[" + last + "] || " + aboveGuard + " != 0 { " + sy + " = " + tv + "[" + last
                    + "]; } else { " + sy + " = " + above + "; } }");
                a.line("else { " + si + " = " + std::to_string(n - 2) + "; while " + si + " > 0 && "
                    + su + " < " + bpv + "[" + si + "] { " + si + " -= 1; } " + sy + " = "
                    + cubic(si) + "; }");
                a.line("out_" + id + " = " + sy + ";");
            } else {
                a.line("double " + su + " = " + a.in[0] + ";");
                a.line("double " + sy + ";");
                a.line("int " + si + " = 0;");
                a.line("if (" + su + " <= " + bpv + "[0]) { if (" + su + " == " + bpv + "[0]) " + sy
                    + " = " + tv + "[0]; else " + sy + " = " + below + "; }");
                a.line("else if (" + su + " >= " + bpv + "[" + last + "]) { if (" + su
                    + " == " + bpv + "[" + last + "] || " + aboveGuard + ") " + sy + " = " + tv
                    + "[" + last + "]; else " + sy + " = " + above + "; }");
                a.line("else { " + si + " = " + std::to_string(n - 2) + "; while (" + si
                    + " > 0 && " + su + " < " + bpv + "[" + si + "]) " + si + "--; " + sy + " = "
                    + cubic(si) + "; }");
                a.line("out_" + id + " = " + sy + ";");
            }
        }

        // Emit the static breakpoint / table arrays plus the baked-in search +
        // interpolation for the block's InterpMethod / ExtrapMethod. The C and
        // Rust bodies share this structure with a few token differences.
        void
        emitLookup1D(const BlockCodegenArgs& a, bool rust)
        {
            const std::vector<double> bp = paramVec(a, "BreakpointsForDimension1");
            const std::vector<double> tbl = paramVec(a, "Table");
            nflow::BlockDescriptor bdp(*a.block, *a.variables);
            const std::string interp = bdp.paramStr("InterpMethod", "Linear point-slope");
            const std::string extrap = bdp.paramStr("ExtrapMethod", "Linear");
            const std::string useLastStr = bdp.paramStr("UseLastTableValue", "off");
            const bool useLast = (useLastStr == "on" || useLastStr == "true");
            const int n = (int)bp.size();
            if (n < 2 || (int)tbl.size() != n) {
                a.line("out_" + a.id + (rust ? " = 0.0_f64;" : " = 0.0;"));
                return;
            }
            if (interp == "Cubic spline" && n >= 3) {
                emitSpline1D(a, rust, bp, tbl, extrap, useLast);
                return;
            }
            if (interp == "Akima spline" && n >= 3) {
                emitAkima1D(a, rust, bp, tbl, extrap, useLast);
                return;
            }
            const std::string bpv = "__lu_bp_" + a.id;
            const std::string tv = "__lu_tbl_" + a.id;
            const std::string N = std::to_string(n);
            // Array declarations.
            std::string bpd
                = (rust ? "let " + bpv + " = [" : "static const double " + bpv + "[] = {");
            std::string tvd
                = (rust ? "let " + tv + " = [" : "static const double " + tv + "[] = {");
            for (int i = 0; i < n; ++i) {
                bpd += (i ? ", " : "") + a.fmt(bp[i]);
                tvd += (i ? ", " : "") + a.fmt(tbl[i]);
            }
            bpd += rust ? "];" : "};";
            tvd += rust ? "];" : "};";
            a.line(bpd);
            a.line(tvd);
            // Interpolation body, sharing a scope.
            const std::string idx1 = std::to_string(n - 1);
            const std::string idx2 = std::to_string(n - 2);
            auto below = [&]() {
                if (extrap == "Linear") {
                    return tv + "[0] + (__u_" + a.id + " - " + bpv + "[0]) * ((" + tv + "[1] - "
                        + tv + "[0]) / (" + bpv + "[1] - " + bpv + "[0]))";
                }
                return tv + "[0]";
            };
            auto above = [&]() {
                if (useLast || extrap == "Clip") {
                    return tv + "[" + idx1 + "]";
                }
                return tv + "[" + idx1 + "] + (__u_" + a.id + " - " + bpv + "[" + idx1 + "]) * (("
                    + tv + "[" + idx1 + "] - " + tv + "[" + idx2 + "]) / (" + bpv + "[" + idx1
                    + "] - " + bpv + "[" + idx2 + "]))";
            };
            const std::string ip = "__i_" + a.id;
            const std::string fp = "__f_" + a.id;
            auto inRange = [&]() {
                if (interp == "Flat") {
                    return tv + "[" + ip + "]";
                }
                if (interp == "Nearest") {
                    return rust
                        ? "if " + fp + " < 0.5 { " + tv + "[" + ip + "] } else { " + tv + "[" + ip
                            + "+1] }"
                        : "(" + fp + " < 0.5) ? " + tv + "[" + ip + "] : " + tv + "[" + ip + "+1]";
                }
                if (interp == "Linear Lagrange") {
                    return "(1.0 - " + fp + ") * " + tv + "[" + ip + "] + " + fp + " * " + tv + "["
                        + ip + "+1]";
                }
                return tv + "[" + ip + "] + " + fp + " * (" + tv + "[" + ip + "+1] - " + tv + "["
                    + ip + "])";
            };
            const std::string u = "__u_" + a.id;
            const std::string y = "__y_" + a.id;
            if (rust) {
                a.line("let " + u + " = " + a.in[0] + ";");
                a.line("let " + y + ";");
                a.line("if " + u + " <= " + bpv + "[0] { " + y + " = " + below() + "; }");
                a.line("else if " + u + " >= " + bpv + "[" + idx1 + "] { " + y + " = " + above()
                    + "; }");
                a.line("else {");
                a.line("  let mut " + ip + ": usize = " + idx2 + ";");
                a.line("  while " + ip + " > 0 && " + u + " < " + bpv + "[" + ip + "] { " + ip
                    + " -= 1; }");
                a.line("  let " + fp + " = (" + u + " - " + bpv + "[" + ip + "]) / (" + bpv + "["
                    + ip + "+1] - " + bpv + "[" + ip + "]);");
                a.line("  " + y + " = " + inRange() + ";");
                a.line("}");
                a.line("out_" + a.id + " = " + y + ";");
            } else {
                a.line("double " + u + " = " + a.in[0] + ";");
                a.line("double " + y + ";");
                a.line("if (" + u + " <= " + bpv + "[0]) { " + y + " = " + below() + "; }");
                a.line("else if (" + u + " >= " + bpv + "[" + idx1 + "]) { " + y + " = " + above()
                    + "; }");
                a.line("else {");
                a.line("  int " + ip + " = " + idx2 + ";");
                a.line("  while (" + ip + " > 0 && " + u + " < " + bpv + "[" + ip + "]) " + ip
                    + "--;");
                a.line("  double " + fp + " = (" + u + " - " + bpv + "[" + ip + "]) / (" + bpv + "["
                    + ip + "+1] - " + bpv + "[" + ip + "]);");
                a.line("  " + y + " = " + inRange() + ";");
                a.line("}");
                a.line("out_" + a.id + " = " + y + ";");
            }
        }
    } // namespace
    //=============================================================================
    bool
    handleLookup1D(SimCtx& ctx, const Block& b, Phase phase)
    {
        if (phase != Phase::ALGEBRAIC) {
            return false;
        }
        if (!hasInput(ctx, b.nid, 0)) {
            return false;
        }
        nflow::BlockDescriptor bd(b, ctx.variables);
        const std::vector<double> bp = bd.paramList("BreakpointsForDimension1");
        const std::vector<double> tbl = bd.paramList("Table");
        const std::string interp = bd.paramStr("InterpMethod", "Linear point-slope");
        const std::string extrap = bd.paramStr("ExtrapMethod", "Linear");
        const std::string useLastStr = bd.paramStr("UseLastTableValue", "off");
        const bool useLast = (useLastStr == "on" || useLastStr == "true");
        // Spline coefficients, computed once for all elements: cubic-spline
        // second derivatives, or Akima endpoint derivatives.
        std::vector<double> splM;
        if (interp == "Cubic spline") {
            splM = cubicSplineM(bp, tbl);
        } else if (interp == "Akima spline") {
            splM = akimaDerivs(bp, tbl);
        }
        SigView u = getInputSig(ctx, b.nid, 0);
        // Out-of-range diagnostic (None / Warning / Error) via the structured
        // diagnostic channel. None (default) stays silent and extrapolates per
        // ExtrapMethod. Code generation has no diagnostic channel, so this is a
        // simulation-time action only.
        const std::string oorAction = bd.paramStr("DiagnosticForOutOfRangeInput", "None");
        if (ctx.diag != nullptr && oorAction != "None" && !bp.empty()) {
            const double lo = bp.front();
            const double hi = bp.back();
            bool oor = false;
            for (int i = 0; i < u.width; ++i) {
                const double x = sigAt(u, i);
                if (x < lo || x > hi) {
                    oor = true;
                    break;
                }
            }
            if (oor) {
                SimDiagnostic sd;
                sd.code = "lookup_out_of_range";
                sd.blockId = b.id;
                sd.operation = "lookup1D";
                sd.message = "lookup1D input is outside the breakpoint range";
                sd.time = ctx.t;
                if (oorAction == "Error") {
                    ctx.diag->fail(sd);
                } else {
                    ctx.diag->warn(sd);
                }
            }
        }
        return emitElementwise(ctx, b.nid,
            [&](int i) { return interp1d(bp, tbl, sigAt(u, i), interp, extrap, useLast, splM); });
    }
    //=============================================================================
    // Output dims follow the input (element-wise). Validate the breakpoint /
    // table pair here so a bad table is a clean compile-time error, not a
    // silent wrong result.
    bool
    resolveLookup1DDims(const Block& b, const ValMap& vars, const std::vector<PortSig>& inSigs,
        std::vector<PortSig>& outSigs, std::string& err)
    {
        nflow::BlockDescriptor bd(b, vars);
        const std::vector<double> bp = bd.paramList("BreakpointsForDimension1");
        const std::vector<double> tbl = bd.paramList("Table");
        if (bp.size() < 2) {
            err = "lookup1D requires at least 2 breakpoints";
            return false;
        }
        if (bp.size() != tbl.size()) {
            err = "lookup1D breakpoints and table must have the same length";
            return false;
        }
        if (!isStrictlyIncreasing(bp)) {
            err = "lookup1D breakpoints must be strictly increasing";
            return false;
        }
        if (!inSigs.empty()) {
            outSigs[0].copyShape(inSigs[0]);
        } else {
            outSigs[0].setScalar();
        }
        outSigs[0].type = SigType::Double;
        return true;
    }
    //=============================================================================
    BlockCodegenTemplate
    getCodeGenCLookup1D()
    {
        BlockCodegenTemplate t;
        t.emitStep = [](const BlockCodegenArgs& a) { emitLookup1D(a, false); };
        return t;
    }
    //=============================================================================
    BlockCodegenTemplate
    getCodeGenRustLookup1D()
    {
        BlockCodegenTemplate t;
        t.emitStep = [](const BlockCodegenArgs& a) { emitLookup1D(a, true); };
        return t;
    }
    //=============================================================================
} // namespace NFlow
} // namespace Nelson
//=============================================================================

```

</details>

## 🔗 Voir aussi

[lookup1D](../../nflow_blocks/lookup/lookup1D.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
