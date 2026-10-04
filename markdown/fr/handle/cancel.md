# cancel

Annuler un objet annulable.

## 📝 Syntaxe

- cancel(obj)

## 📥 Argument d'entrée

- obj - objet prenant en charge l'annulation, par exemple un objet d'evaluation asynchrone.

## 📄 Description

cancel demande l'annulation d'un objet qui prend en charge un travail asynchrone. Le type de l'objet fournit le comportement concret.

Si le premier argument n'implemente pas l'annulation, Nelson signale que la fonction n'est pas implementee pour ce type.

## Fonction(s) utilisée(s)

    cancel

## 💡 Exemple

Annuler une evaluation asynchrone.

```matlab
f = parfeval(@pause, 0, 10);
cancel(f)
```

## 🔗 Voir aussi

[parfeval](../parallel/parfeval.md), [afterEach](../parallel/afterEach.md), [afterAll](../parallel/afterAll.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
