# switchCase

Aiguille un contrôle entier vers l'une de plusieurs sorties d'action.

## 📝 Syntaxe

- Type de bloc : switchCase

## 📥 Argument d'entrée

- ports d'entrée - 1 port d'entrée : la valeur de contrôle.

## 📤 Argument de sortie

- ports de sortie - Une sortie par cas, plus une sortie par défaut optionnelle.

## 📄 Description


Aiguille un contrôle entier vers l'une de plusieurs sorties d'action. 

L'entrée scalaire est tronquée vers zéro en entier puis comparée à <code>CaseConditions</code>, un littéral de tableau tel que <code>{1, [7 9 4]}</code>. Le premier cas qui correspond met sa sortie à <code>1.0</code> et toutes les autres à <code>0.0</code>. Avec <code>ShowDefaultCase</code> à <code>on</code>, une valeur non appariée pilote la dernière sortie (par défaut). Pas de fall-through. Ces sorties servent à activer des sous-systèmes d'action. 

<b>Paramètres</b> 

| Paramètre | Valeur par défaut | 
| --- | --- | 
| <code>CaseConditions</code> | {1} | 
| <code>ShowDefaultCase</code> | on | 

 

<b>Caractéristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | switchCase | 
| Famille | Blocs logiques | 
| Phases | ALGEBRAIC | 

 

<b>Capacites etendues</b> 

Generation de code : prise en charge pour C et Rust.


## 🔗 Voir aussi

[if](../../nflow_blocks/logic/if.md), [merge](../../nflow_blocks/utility/merge.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
