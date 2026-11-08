# NFlow.librarypaths

Renvoie les répertoires de recherche de bibliothèques de blocs nflow.

## 📝 Syntaxe

- paths = NFlow.librarypaths()

## 📤 Argument de sortie

- paths - les répertoires de recherche nflow actuels, un tableau de cellules de chaînes de caractères.

## 📄 Description


<b>NFlow.librarypaths</b> renvoie les répertoires actuellement parcourus pour trouver des bibliothèques de blocs nflow externes. La liste est celle partagée par <b>sim</b>, la génération de code et l'éditeur ; elle se modifie avec <b>NFlow.addlibrarypath</b> et <b>NFlow.rmlibrarypath</b>.

## 💡 Exemple

Liste les répertoires de recherche enregistrés.

```matlab
NFlow.librarypaths()
```


## 🔗 Voir aussi

[NFlow.addlibrarypath](../nflow_engine/NFlow.addlibrarypath.md), [NFlow.rmlibrarypath](../nflow_engine/NFlow.rmlibrarypath.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
