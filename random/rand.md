



rand


rand

Random Number.

## Syntax

- M = rand
- M = rand(n)
- M = rand(x1, x2, ... , xN)
- M = rand(sz)
- M = rand(x1, x2, ... , xN, classname)
- M = rand(x1, x2, ... , xN, 'like', var)

## Input argument

 - n - a variable: n-by-n matrix will be generated.
 - x1, x2, ... , xN - x1-by-...-by-xN values
 - classname - a string: 'single' or 'double'
 - var - a variable: single or double

## Output argument

 - M - a matrix of random numbers.

## Description


  <p><b>rand</b> returns a matrix with random elements uniformly distributed on the interval [0, 1].</p>
  <p>seed can be modified using <b>rng</b>.</p>
  <p>The Mersenne Twister designers consider 5489 as default seed. Nelson uses 0 as default seed.</p>


Bibliography

M. Matsumoto and T. Nishimura, Mersenne Twister: A 623-dimensionally equidistributed uniform pseudorandom number generator, ACM Trans. on Modeling and Computer Simulation Vol. 8, No. 1, pp. 3–30, January 1998

## Examples

```Nelson
rng('default');
rand
rng('default');
rand
```
```Nelson
rng('default');
rand(6)
```
```Nelson
rng('default');
rand(3, 2, 3)
```
```Nelson
rng('default');
rand(3, 2, 'single')
```
```Nelson
rng('default');
v = single([3, 3]);
rand(3, 2, 'like', v)
```

## See also

rng.md rng, randn.md randn, eye.md eye.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET


