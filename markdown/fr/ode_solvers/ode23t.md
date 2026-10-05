# ode23t

Entree de solveur EDO moderement raide.

## 📝 Syntaxe

- [t, y] = ode23t(odefun, tspan, y0)

## 📄 Description


<b>ode23t</b> fournit une interface de solveur moderement raide. 

| Element | Details | 
| --- | --- | 
| Forme du probleme | **y' = f(t,y)**, avec valeur initiale **y0**. | 
| Entrees | **odefun**, **tspan**, **y0**, et options creees avec **odeset**. | 
| Sorties | **[t,y]** pour les tableaux ou **sol** pour une structure compatible avec **deval** et **odextend**. | 
| Evenements | Les options **Events** renseignent **te**, **ye** et **ie** ou les champs **xe**, **ye** et **ie** de la structure. | 



## 💡 Exemple


```matlab
[t, y] = ode23t(@(t,y) -20*y, [0 1], 1)
```


## 🔗 Voir aussi

[ode23tb](../ode_solvers/ode23tb.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
