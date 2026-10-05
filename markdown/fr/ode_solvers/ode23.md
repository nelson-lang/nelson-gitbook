# ode23

Solveur EDO non raide bas ordre.

## 📝 Syntaxe

- [t, y] = ode23(odefun, tspan, y0)

## 📄 Description


<b>ode23</b> resout un probleme a valeur initiale avec le moteur adaptatif partage. 

| Element | Details | 
| --- | --- | 
| Forme du probleme | **y' = f(t,y)**, avec valeur initiale **y0**. | 
| Entrees | **odefun**, **tspan**, **y0**, et options creees avec **odeset**. | 
| Sorties | **[t,y]** pour les tableaux ou **sol** pour une structure compatible avec **deval** et **odextend**. | 
| Evenements | Les options **Events** renseignent **te**, **ye** et **ie** ou les champs **xe**, **ye** et **ie** de la structure. | 



## 💡 Exemple


```matlab
[t, y] = ode23(@(t,y) -y, [0 1], 1)
```


## 🔗 Voir aussi

[ode45](../ode_solvers/ode45.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
