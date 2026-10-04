# optim.options.SolverOptions

Objet d'options de solveur.

## 📝 Syntaxe

- options = optimoptions(solver)
- options = optimoptions(problem)

## 📥 Argument d'entrée

- solver - nom de solveur ou objet probleme utilise par optimoptions.
- Name, Value - noms et valeurs d'options du solveur.

## 📤 Argument de sortie

- options - objet d'options de solveur.

## 📄 Description

optim.options.SolverOptions stocke les valeurs d'options de solveur creees par optimoptions.

L'objet est passe aux solveurs d'optimisation ou a solve via le flux problem-based.

## Fonction(s) utilisée(s)

    optimoptions

## 💡 Exemple

Creer des options pour fminsearch.

```matlab
opts = optimoptions('fminsearch', 'Display', 'off')
```

## 🔗 Voir aussi

[optimoptions](../optimization/optimoptions.md), [solve](../optimization/solve.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
