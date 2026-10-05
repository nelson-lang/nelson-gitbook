# isstatic

Vérifie si le modèle est statique ou dynamique.

## 📝 Syntaxe

- res = isstatic(sys)

## 📥 Argument d'entrée

- sys - un modèle lti.

## 📤 Argument de sortie

- res - un logique : vrai si le modèle est statique.

## 📄 Description


Vérifie si le modèle est statique.

## 💡 Exemple



```matlab
sys = tf(magic(3));
isstatic(sys)
```


## 🔗 Voir aussi

[isct](../../control_system/1_dynamic_system_models/isct.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
