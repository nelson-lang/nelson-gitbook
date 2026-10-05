# randsample

Echantillon aleatoire depuis une population.

## 📝 Syntaxe

- y = randsample(n, k)
- y = randsample(population, k)
- y = randsample(..., replacement)
- y = randsample(population, k, true, w)

## 📄 Description


<b>randsample</b> tire des valeurs avec le generateur aleatoire de Nelson. Le tirage pondere est pris en charge avec remise.

## Fonction(s) utilisée(s)


    rng
    bootstrp
  

## 💡 Exemples

Tirer un echantillon reproductible sans remise.

```matlab
rng(10);
y = randsample(10, 4)
```
Tirer un echantillon pondere avec remise.

```matlab
population = [10 20 30];
w = [0 0 1];
y = randsample(population, 5, true, w)
```
