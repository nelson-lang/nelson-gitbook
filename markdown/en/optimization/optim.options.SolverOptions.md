# optim.options.SolverOptions

Solver options object.

## 📝 Syntax

- options = optimoptions(solver)
- options = optimoptions(problem)

## 📥 Input argument

- solver - solver name or problem object used by optimoptions.
- Name, Value - solver option names and values.

## 📤 Output argument

- options - solver options object.

## 📄 Description


optim.options.SolverOptions stores solver option values created by optimoptions. 

The object is passed to optimization solvers or to solve through the problem-based workflow.

## Used function(s)


    optimoptions
  

## 💡 Example

Create options for fminsearch.

```matlab
opts = optimoptions('fminsearch', 'Display', 'off')
```


## 🔗 See also

[optimoptions](../optimization/optimoptions.md), [solve](../optimization/solve.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
