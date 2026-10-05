# randsample

Random sample from a population.

## 📝 Syntax

- y = randsample(n, k)
- y = randsample(population, k)
- y = randsample(..., replacement)
- y = randsample(population, k, true, w)

## 📄 Description


<b>randsample</b> samples values using Nelson's random generator. Weighted sampling is supported with replacement.

## Used function(s)


    rng
    bootstrp
  

## 💡 Examples

Draw a reproducible sample without replacement.

```matlab
rng(10);
y = randsample(10, 4)
```
Draw a weighted sample with replacement.

```matlab
population = [10 20 30];
w = [0 0 1];
y = randsample(population, 5, true, w)
```
