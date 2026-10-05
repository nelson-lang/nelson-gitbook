# expcdf

Fonction de repartition exponentielle

## 📝 Syntaxe

- p = expcdf(x)
- p = expcdf(x, mu)
- p = expcdf(x, mu, 'upper')

## 📥 Argument d'entrée

- x - tableau numerique reel.
- mu - moyenne positive, 1 par defaut.

## 📤 Argument de sortie

- p - probabilites cumulees ou de queue superieure.

## 📄 Description


<b>expcdf</b> calcule par defaut les probabilites de queue inferieure exponentielle et les probabilites de queue superieure avec <b>'upper'</b>.

## 💡 Exemple



```matlab
x = [0 0.5 1 2];
p = expcdf(x, 3);
q = expcdf(x, 3, 'upper');
```


## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
