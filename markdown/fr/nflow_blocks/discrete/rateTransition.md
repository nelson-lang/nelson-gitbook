# rateTransition

Rééchantillonne un signal à son propre pas d'échantillonnage (bloqueur d'ordre zéro).

## 📝 Syntaxe

- Type de bloc : rateTransition

## 📥 Argument d'entrée

- ports d'entrée - 1 entrée : le signal rapide à rééchantillonner.

## 📤 Argument de sortie

- ports de sortie - 1 sortie : l'entrée tenue au pas d'échantillonnage propre du bloc.

## 📄 Description


Rééchantillonne un signal à son propre pas d'échantillonnage (bloqueur d'ordre zéro). 

Le bloc échantillonne son entrée aux multiples de <code>OutPortSampleTime</code> et tient cette valeur entre les tops, ce qui lui permet de tourner plus lentement que le pas de base du diagramme. C'est la primitive multi-rate minimale : une valeur <code><=</code> au pas de base (ou le défaut <code>-1</code>, hérité) échantillonne à chaque pas, se ramenant à un simple retard unitaire ; une valeur plus grande <code>Ts</code> tient la sortie pendant <code>Ts / pas-de-base</code> pas. La valeur échantillonnée apparaît un pas de base après le top (bloqueur d'ordre zéro avec intégrité des données). 

<b>Paramètres</b> 

| Paramètre | Valeur par défaut | 
| --- | --- | 
| <code>OutPortSampleTime</code> | -1 | 
| <code>InitialCondition</code> | 0 | 

 

<b>Caractéristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | rateTransition | 
| Famille | Blocs discrets | 
| Phases | INIT, OUTPUT, UPDATE | 

 

<b>Extended Capabilities</b> 

<b>Implementation Sources</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/discrete/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/discrete/rateTransition.cpp`



## 🔗 Voir aussi

[unitDelay](../../nflow_blocks/discrete/unitDelay.md), [zoh](../../nflow_blocks/discrete/zoh.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
