# nflow

Lance l'editeur nflow, eventuellement sur un fichier modele.

## 📝 Syntaxe

- nflow()
- nflow(file)
- h = nflow(file)

## 📥 Argument d'entrée

- file - un vecteur de caracteres : le chemin d'un fichier modele <b>.nflow</b> a ouvrir dans l'editeur. Omis, l'editeur s'ouvre sur un modele vide.

## 📤 Argument de sortie

- h - un handle vers la fenetre d'editeur ouverte.

## 📄 Description

<b>nflow</b> ouvre l'editeur nflow, un editeur de diagrammes base navigateur pour construire et simuler des modeles. Appele sans argument, il s'ouvre sur un modele vide ; appele avec un fichier <b>.nflow</b>, il ouvre ce modele.

<b>nflow</b> est le lanceur bas niveau. Pour ouvrir un modele deja charge en memoire (par nom ou par handle), ou une archive <b>.ssp</b>, utilisez <b>open_system</b>, qui resout ces entrees puis ouvre l'editeur.

L'editeur travaille sur le modele avec lequel il a ete ouvert ; les modifications faites cote script pendant que la fenetre est ouverte ne lui sont pas transmises en direct.

## 💡 Exemple

Ouvrir un editeur vide, puis un fichier modele

```matlab
nflow();
model = [modulepath('nflow_blocks', 'root'), '/examples/acausal/Acausal_EMF_DC_Motor_Demo.nflow'];
nflow(model);
```

## 🔗 Voir aussi

[open_system](../nflow_gui/open_system.md), [new_system](../nflow_engine/new_system.md), [sim](../nflow_engine/sim.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
