#import "nelson_help.typ": *

= Optimization

The Optimization module provides scalar minimization, unconstrained minimization, zero finding, nonlinear equations, nonlinear least squares, nonnegative least squares, quadratic programming, solver options, and a first problem-based modelling layer.

 The implemented algorithms are deterministic dense numerical methods intended for small and medium-size engineering models in Nelson.

== Functions

- #nlink(<optimization:1_optimization_tutorial>)[optimization tutorial]: Optimization module tutorial.
- #nlink(<optimization:evaluate>)[evaluate]: Evaluate an optimization expression.
- #nlink(<optimization:fcn2optimexpr>)[fcn2optimexpr]: Convert a function to an optimization expression.
- #nlink(<optimization:fminbnd>)[fminbnd]: Bounded scalar minimization.
- #nlink(<optimization:fmincon>)[fmincon]: Constrained nonlinear minimization.
- #nlink(<optimization:fminsearch>)[fminsearch]: Unconstrained derivative-free minimization.
- #nlink(<optimization:fminunc>)[fminunc]: Unconstrained nonlinear minimization.
- #nlink(<optimization:fsolve>)[fsolve]: Solve a system of nonlinear equations.
- #nlink(<optimization:fzero>)[fzero]: Zero of a scalar function.
- #nlink(<optimization:intlinprog>)[intlinprog]: Mixed-integer linear programming.
- #nlink(<optimization:linprog>)[linprog]: Linear programming.
- #nlink(<optimization:lsqcurvefit>)[lsqcurvefit]: Least-squares curve fitting.
- #nlink(<optimization:lsqnonlin>)[lsqnonlin]: Nonlinear least-squares solution.
- #nlink(<optimization:lsqnonneg>)[lsqnonneg]: Nonnegative linear least-squares solution.
- #nlink(<optimization:optim.options.SolverOptions>)[optim.options.SolverOptions]: Solver options object.
- #nlink(<optimization:optim.problemdef.OptimizationConstraint>)[optim.problemdef.OptimizationConstraint]: Optimization constraints.
- #nlink(<optimization:optim.problemdef.OptimizationExpression>)[optim.problemdef.OptimizationExpression]: Optimization expression.
- #nlink(<optimization:optim.problemdef.OptimizationProblem>)[optim.problemdef.OptimizationProblem]: Optimization problem object.
- #nlink(<optimization:optim.problemdef.OptimizationVariable>)[optim.problemdef.OptimizationVariable]: Variable for optimization expressions.
- #nlink(<optimization:optimconstr>)[optimconstr]: Create an optimization constraint placeholder.
- #nlink(<optimization:optimexpr>)[optimexpr]: Create an optimization expression.
- #nlink(<optimization:optimget>)[optimget]: Read an optimization option value.
- #nlink(<optimization:optimoptions>)[optimoptions]: Create solver options.
- #nlink(<optimization:optimproblem>)[optimproblem]: Create an optimization problem object.
- #nlink(<optimization:optimset>)[optimset]: Create or edit optimization option structures.
- #nlink(<optimization:optimvar>)[optimvar]: Create optimization variables.
- #nlink(<optimization:prob2struct>)[prob2struct]: Convert an optimization problem to a solver structure.
- #nlink(<optimization:quadprog>)[quadprog]: Quadratic programming.
- #nlink(<optimization:show>)[show]: Display an optimization object.
- #nlink(<optimization:solve>)[solve]: Solve an optimization problem object.


#nested[
#pagebreak(weak: true)
#include "1_optimization_tutorial.typ"
#pagebreak(weak: true)
#include "evaluate.typ"
#pagebreak(weak: true)
#include "fcn2optimexpr.typ"
#pagebreak(weak: true)
#include "fminbnd.typ"
#pagebreak(weak: true)
#include "fmincon.typ"
#pagebreak(weak: true)
#include "fminsearch.typ"
#pagebreak(weak: true)
#include "fminunc.typ"
#pagebreak(weak: true)
#include "fsolve.typ"
#pagebreak(weak: true)
#include "fzero.typ"
#pagebreak(weak: true)
#include "intlinprog.typ"
#pagebreak(weak: true)
#include "linprog.typ"
#pagebreak(weak: true)
#include "lsqcurvefit.typ"
#pagebreak(weak: true)
#include "lsqnonlin.typ"
#pagebreak(weak: true)
#include "lsqnonneg.typ"
#pagebreak(weak: true)
#include "optim.options.SolverOptions.typ"
#pagebreak(weak: true)
#include "optim.problemdef.OptimizationConstraint.typ"
#pagebreak(weak: true)
#include "optim.problemdef.OptimizationExpression.typ"
#pagebreak(weak: true)
#include "optim.problemdef.OptimizationProblem.typ"
#pagebreak(weak: true)
#include "optim.problemdef.OptimizationVariable.typ"
#pagebreak(weak: true)
#include "optimconstr.typ"
#pagebreak(weak: true)
#include "optimexpr.typ"
#pagebreak(weak: true)
#include "optimget.typ"
#pagebreak(weak: true)
#include "optimoptions.typ"
#pagebreak(weak: true)
#include "optimproblem.typ"
#pagebreak(weak: true)
#include "optimset.typ"
#pagebreak(weak: true)
#include "optimvar.typ"
#pagebreak(weak: true)
#include "prob2struct.typ"
#pagebreak(weak: true)
#include "quadprog.typ"
#pagebreak(weak: true)
#include "show.typ"
#pagebreak(weak: true)
#include "solve.typ"
]
