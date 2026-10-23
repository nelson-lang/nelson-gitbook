# randg

Gamma distributed random number.

## 📝 Syntax

- M = randg
- M = randg(A)
- M = randg(A, n)
- M = randg(A, x1, x2, ... , xN)
- M = randg(A, sz)
- M = randg(A, x1, x2, ... , xN, classname)

## 📥 Input argument

- A - a real nonnegative value or array: the shape parameter(s).
- n - a variable: n-by-n matrix will be generated.
- x1, x2, ... , xN - x1-by-...-by-xN values
- classname - a string: 'single' or 'double'

## 📤 Output argument

- M - a matrix of random numbers.

## 📄 Description


<b>randg</b> returns a matrix with gamma distributed random elements, with shape parameter <b>A</b> and unit scale. 

A gamma sample of shape <b>k</b> has mean <b>k</b> and variance <b>k</b>; a shape of 1 gives the standard exponential distribution. 

When only <b>A</b> is supplied, the result has the size of <b>A</b> and each element uses the matching shape. When a size is supplied, <b>A</b> must be a scalar used for every element. 

Values are drawn with the Marsaglia and Tsang rejection method; the seed can be modified using <b>rng</b>.

## 📚 Bibliography

G. Marsaglia and W. W. Tsang, "A simple method for generating gamma variables", ACM Transactions on Mathematical Software, 26(3), 363-372, 2000.

## 💡 Examples



```matlab
rng('default');
randg

```


```matlab
rng('default');
randg(2, 3)

```


```matlab
rng('default');
M = randg(3, 1, 100000);
[mean(M), var(M)]

```


```matlab
rng('default');
randg(2, 2, 2, 'single')

```


## 🔗 See also

[rand](../random/rand.md), [randn](../random/randn.md), [rng](../random/rng.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
