# moment

Central moment of a data set.

## 📝 Syntax

- m = moment(X, order)
- m = moment(X, order, dim)
- m = moment(X, order, vecdim)
- m = moment(X, order, 'all')

## 📄 Description


<b>moment</b> computes the central moment of the requested positive integer order. 

The first-order central moment is zero. The second-order central moment uses a divisor of <b>n</b>.

## 💡 Example



```matlab
X = [1 2 4; 2 4 8; 3 8 13];
m = moment(X, 3)
```


## 🔗 See also

[skewness](../../statistics/1_descriptive_statistics_visualization/skewness.md), [kurtosis](../../statistics/1_descriptive_statistics_visualization/kurtosis.md), [var](../../statistics/1_descriptive_statistics_visualization/var.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
