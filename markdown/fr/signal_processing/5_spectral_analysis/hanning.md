# hanning

Fonction de compatibilite pour la fenetre de Hann.

## 📝 Syntaxe

- w = hanning(n)
- w = hanning(n, option)

## 📥 Argument d'entrée

- n - Longueur de la fenetre.
- option - 'symmetric' ou 'periodic'.

## 📤 Argument de sortie

- w - Vecteur colonne contenant la fenetre.

## 📄 Description

<b>hanning</b> retourne la meme fenetre que <b>hann</b>.

## 💡 Exemple

```matlab
w = hanning(6, 'periodic')
```

## 🔗 Voir aussi

[hann](../../signal_processing/hann.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
