# isunix

Vérifie si la version est pour une plateforme GNU/Linux ou Unix.

## 📝 Syntaxe

- s = isunix()

## 📤 Argument de sortie

- s - un booléen : vrai si la plateforme est GNU/Linux ou Unix.

## 📄 Description

<b>isunix</b> vérifie si la plateforme est GNU/Linux ou Unix.

La plateforme macOS est également détectée comme étant GNU/Linux ou Unix.

## 💡 Exemple

```matlab
if isunix
  disp('Your platform is Unix or Linux')
else
  disp('Your platform is Unix or Linux')
end
```

## 🔗 Voir aussi

[ispc](../os_functions/ispc.md), [ismac](../os_functions/ismac.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
