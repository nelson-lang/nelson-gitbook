# candexch

D-optimal row selection from a candidate set.

## 📝 Syntax

- rlist = candexch(C, nrows)
- rlist = candexch(C, nrows, 'Name', value)

## 📥 Input argument

- C - candidate matrix. Each row is one candidate run.
- nrows - positive integer number of rows to select.

## 📤 Output argument

- rlist - indices of the selected rows in C.

## 📄 Description


<b>candexch</b> selects rows from a candidate matrix using a row-exchange search that improves the determinant of X' \* X. 

Supported name-value options are 'AvoidDuplicates', 'Display', 'InitialDesign', 'MaxIterations', 'Options', 'FixedRows', and 'NumTries'. Parallel option fields are accepted and execution remains serial.

## Used function(s)


    candgen
    rowexch
    cordexch
    daugment
  

## 💡 Example

Select two rows from a candidate set.

```matlab
C = [ones(4, 1) (0:3)'];
rlist = candexch(C, 2, 'Display', 'off', 'AvoidDuplicates', true)
```
