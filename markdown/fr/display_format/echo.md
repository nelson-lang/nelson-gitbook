# echo

Contrôle l'écho lors de l'exécution des scripts.

## 📝 Syntaxe

- state = echo()
- echo()
- echo('on')
- echo('off')

## 📥 Argument d'entrée

- 'on' - activer le mode echo (par défaut)
- 'off' - désactiver le mode echo

## 📤 Argument de sortie

- state - une chaîne : 'on' ou 'off'

## 📄 Description

<b>echo('off')</b> désactive le mode echo.

Sans arguments d'entrée ou de sortie, la commande <b>echo</b> bascule l'état d'echo courant.

## 💡 Exemple

an example

```matlab
R = echo
echo('on')
A = 1+1
echo('off')
A = A+1
echo(R)
A
```

## 🔗 Voir aussi

[disp](../display_format/disp.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
