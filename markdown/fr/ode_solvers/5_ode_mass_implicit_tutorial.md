# tutoriel masse implicite edo

Resoudre des problemes EDO avec matrice de masse ou forme implicite.

## 📄 Description

Utilisez l'option <b>Mass</b> quand le systeme est ecrit <b>M(t,y)y'=f(t,y)</b>. Une matrice constante, un scalaire ou un handle de fonction peut definir la matrice de masse.

| Forme du probleme     | Entree                              | Donnees requises                                                    |
| --------------------- | ----------------------------------- | ------------------------------------------------------------------- |
| **M(t,y)y' = f(t,y)** | **ode15s**, **ode23t**, **ode23tb** | Option **Mass** et valeur initiale.                                 |
| **F(t,y,yp) = 0**     | **ode15i**                          | Valeur initiale et pente initiale.                                  |
| Workflow objet        | **ode** avec **EquationType**       | Fonction residuelle, valeur initiale et pente initiale optionnelle. |

Utilisez <b>ode15i</b> pour les equations residuelles implicites <b>F(t,y,yp)=0</b>. La forme fonction utilise la valeur initiale et la pente initiale fournies. Dans le workflow objet, <b>ComputeConsistentInitialConditions</b> peut ajuster la pente initiale en gardant la valeur initiale fixe.

## 💡 Exemples

Matrice de masse constante.

```matlab
options = odeset('Mass', 2, 'Jacobian', 1);
[t, y] = ode15s(@(t,y) y, [0 0.5], 1, options)
```

Equation residuelle implicite.

```matlab
f = @(t,y,yp) yp + y;
[t, y] = ode15i(f, [0 1], 1, -1)
```

## 🔗 Voir aussi

[ode15s](../ode_solvers/ode15s.md), [ode15i](../ode_solvers/ode15i.md), [odeMassMatrix](../ode_solvers/odeMassMatrix.md), [odeJacobian](../ode_solvers/odeJacobian.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
