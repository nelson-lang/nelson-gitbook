# ode23s

Entree de solveur EDO raide.

## 📝 Syntaxe

- [t, y] = ode23s(odefun, tspan, y0)

## 📄 Description


<b>ode23s</b> fournit une interface de solveur raide avec le moteur adaptatif partage. 

| Element | Details | 
| --- | --- | 
| Forme du probleme | **y' = f(t,y)**, avec valeur initiale **y0**. | 
| Entrees | **odefun**, **tspan**, **y0**, et options creees avec **odeset**. | 
| Sorties | **[t,y]** pour les tableaux ou **sol** pour une structure compatible avec **deval** et **odextend**. | 
| Evenements | Les options **Events** renseignent **te**, **ye** et **ie** ou les champs **xe**, **ye** et **ie** de la structure. | 



## 💡 Exemple


```matlab
[t, y] = ode23s(@(t,y) -20*y, [0 1], 1)
```


## 🔗 Voir aussi

[ode23t](../ode_solvers/ode23t.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
