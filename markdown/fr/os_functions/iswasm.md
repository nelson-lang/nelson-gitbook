# iswasm

Vérifie si la version est pour la plateforme WebAssembly.

## 📝 Syntaxe

- s = iswasm()

## 📤 Argument de sortie

- s - un booléen : vrai si la plateforme est WebAssembly.

## 📄 Description


<b>iswasm</b> vérifie si la plateforme est WebAssembly. 

Renvoie <b>true</b> lorsque Nelson est exécuté depuis une compilation WebAssembly (dans un navigateur ou un environnement WebAssembly), et <b>false</b> sinon.

## 💡 Exemple



```matlab
if iswasm
  disp('Your platform is WebAssembly')
else
  disp('Your platform is not WebAssembly')
end
```


## 🔗 Voir aussi

[ispc](../os_functions/ispc.md), [isunix](../os_functions/isunix.md), [ismac](../os_functions/ismac.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
