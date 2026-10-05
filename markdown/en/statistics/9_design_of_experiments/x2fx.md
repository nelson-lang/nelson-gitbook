# x2fx

Convert factor settings to a design matrix.

## 📝 Syntax

- D = x2fx(X, modelspec)

## 📄 Description


<b>x2fx</b> creates a design matrix with a constant column and terms requested by the model specification.

## Used function(s)


    candgen
    rowexch
    cordexch
  

## 💡 Examples

Create common model matrices from factor settings.

```matlab
X = [1 2; 3 4];
Dlinear = x2fx(X, 'linear')
Dquadratic = x2fx(X, 'quadratic')
```
Use an explicit model specification matrix.

```matlab
X = [1 2; 3 4];
modelspec = [1 0; 0 2; 1 1];
D = x2fx(X, modelspec)
```
