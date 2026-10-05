# if

Sélectionne une sortie d'action à partir d'une expression booléenne sur les entrées.

## 📝 Syntaxe

- Type de bloc : if

## 📥 Argument d'entrée

- ports d'entrée - Les signaux u1..un référencés par les expressions.

## 📤 Argument de sortie

- ports de sortie - Une sortie pour la clause if, une par elseif, plus une sortie else optionnelle.

## 📄 Description


Sélectionne une sortie d'action à partir d'une expression booléenne sur les entrées. 

La clause if et chaque clause elseif sont évaluées dans l'ordre sur les entrées <code>u1..un</code> ; la première clause vraie met sa sortie à <code>1.0</code> et toutes les autres à <code>0.0</code>. Avec <code>ShowElse</code> à <code>on</code>, un résultat entièrement faux pilote la dernière sortie (else). La grammaire d'expression est restreinte : comparaisons (<code>< <= > >= == ~=</code>), logique (<code>& | ~</code>), parenthèses, moins unaire, littéraux numériques et entrées <code>u<k></code>. Ces sorties servent à activer des sous-systèmes d'action. 

<b>Paramètres</b> 

| Paramètre | Valeur par défaut | 
| --- | --- | 
| <code>IfExpression</code> | u1 > 0 | 
| <code>ElseIfExpressions</code> | (séparées par des virgules, vide par défaut) | 
| <code>ShowElse</code> | on | 

 

<b>Caractéristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | if | 
| Famille | Blocs logiques | 
| Phases | ALGEBRAIC | 

 

<b>Capacites etendues</b> 

Generation de code : prise en charge pour C et Rust.


## 🔗 Voir aussi

[switchCase](../../nflow_blocks/logic/switchCase.md), [merge](../../nflow_blocks/utility/merge.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
