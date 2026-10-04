# sequentialfs

Sequential feature selection using a custom criterion.

## 📝 Syntax

- tf = sequentialfs(fun, X, y)
- tf = sequentialfs(fun, X1, ..., XN, Name, Value)
- [tf, history] = sequentialfs(...)

## 📄 Description

<b>sequentialfs</b> selects features from the columns of the first data input using a user supplied criterion function.

Supported options include CV, Direction, KeepIn, KeepOut, NFeatures, NullModel, and Options. CV can be a positive integer, none, or resubstitution.

The history structure contains In and Crit fields describing the selected feature mask and criterion value at each step.

## 💡 Example

```matlab
X = [1 0 0; 2 0 1; 3 1 0; 4 1 1; 5 2 0; 6 2 1];
y = X(:,1);
fun = @(Xt,yt,Xv,yv) sum((yv - Xv(:,1)).^2);
[tf, history] = sequentialfs(fun, X, y, 'CV', 'resubstitution', 'NFeatures', 1)
```

## 🔗 See also

[relieff](../../statistics/relieff.md), [statset](../../statistics/statset.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
