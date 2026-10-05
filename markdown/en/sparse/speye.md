# speye

Sparse identity matrix.

## 📝 Syntax

- S = speye()
- S = speye(n)
- S = speye(n, m)
- S = speye(sz)

## 📥 Input argument

- n, m - dimension sizes: nonnegative integer scalar.
- sz - dimension sizes: two-element row vector.

## 📤 Output argument

- S - a sparse matrix.

## 📄 Description


<b>S = speye()</b> returns a sparse scalar 1. 

<b>S = speye(n)</b> returns a sparse n-by-n identity matrix, with ones on the main diagonal. 

<b>S = speye(n, m)</b> returns a sparse n-by-m matrix, with ones on the main diagonal. 

<b>S = speye(sz)</b> returns a matrix with ones on the main diagonal.

## 💡 Example



```matlab

tic();S = speye(5000, 5000);toc()
tic();S = sparse(eye(5000, 5000));toc()
    
```


## 🔗 See also

[sparse](../sparse/sparse.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
