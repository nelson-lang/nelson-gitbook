# isdeployed

Indique si le code s'execute dans une application deployee.

## 📝 Syntaxe

- state = isdeployed()

## 📤 Argument de sortie

- state - Scalaire logique.

## 📄 Description


<b>isdeployed</b> retourne true pendant l'execution du code d'une application produite par <b>nelsonc</b>, y compris ses callbacks graphiques. Il retourne false dans une session Nelson ordinaire, meme si le module compiler est charge. 

Le resultat ne depend pas d'une variable d'environnement modifiable par l'application. Les modes de runtime livre et installe partagent le meme comportement. Cette fonction appartient au module d'execution et ne charge pas le compilateur. 

L'analyse des dependances ne supprime pas automatiquement les branches conditionnelles utilisant cette fonction.

## 💡 Exemple



```matlab
state = isdeployed()
```

<!--
## 👤 Auteur

Allan CORNET
-->
