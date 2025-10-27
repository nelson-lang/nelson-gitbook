# getnelsonmode

Retourne le mode courant de Nelson.

## 📝 Syntaxe

- m = getnelsonmode()

## 📤 Argument de sortie

- m - une chaîne de caractères.

## 📄 Description

<b>getnelsonmode()</b> renvoie le mode courant utilisé par Nelson.

Les modes possibles sont :

<b>BASIC_ENGINE</b> : Nelson utilisé comme moteur sans graphisme.

<b>ADVANCED_ENGINE</b> : Nelson utilisé comme moteur avec graphisme/GUI.

<b>BASIC_TERMINAL</b> : Nelson lancé en terminal sans graphisme.

<b>ADVANCED_TERMINAL</b> : Nelson lancé en terminal avec graphisme/GUI.

<b>BASIC_SIO_CLIENT</b> : Nelson lancé comme client socket IO.

<b>ADVANCED_SIO_CLIENT</b> : Nelson lancé comme client socket IO avec graphisme/GUI.

<b>GUI</b> : Nelson lancé comme application graphique (par défaut).

## 💡 Exemple

```matlab
getnelsonmode()
```

## 🔗 Voir aussi

[executable](../engine/executable.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
