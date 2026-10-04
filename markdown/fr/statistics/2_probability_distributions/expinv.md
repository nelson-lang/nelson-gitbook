# expinv

Fonction de repartition inverse exponentielle

## 📝 Syntaxe

- x = expinv(p)
- x = expinv(p, mu)

## 📥 Argument d'entrée

- p - tableau numerique reel de probabilites.
- mu - moyenne positive, 1 par defaut.

## 📤 Argument de sortie

- x - valeurs inverses de queue inferieure exponentielle.

## 📄 Description

<b>expinv</b> calcule les probabilites inverses de queue inferieure exponentielle.

## 💡 Exemple

```matlab
p = [0.025 0.5 0.975];
x = expinv(p, 3);
```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
