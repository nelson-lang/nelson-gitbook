# classdef tutorial

Tutoriel classdef pas a pas.

## 📝 Syntaxe

- classdef ClassName, properties, methods, end
- classdef SubClass < SuperClass
- classdef HandleClass < handle
- classdef MyClass < handle & nelson.mixin.Copyable

## 📄 Description


Un fichier <b>classdef</b> definit un modele de classe. Le fichier contient une seule definition de classe et son nom doit correspondre au nom de la classe. 

Une definition de classe peut contenir des blocs <b>properties</b>, <b>methods</b>, <b>events</b> et <b>enumeration</b>. Les proprietes stockent l'etat de l'objet. Les methodes implementent le comportement. Les evenements et les ecouteurs sont utiles pour les classes handle qui notifient d'autres parties du code. 

Les classes valeur copient leurs donnees lors d'une affectation. Les classes handle heritent de <b>handle</b> et utilisent une semantique de reference: deux variables peuvent designer le meme objet. 

Nelson fournit aussi des classes mixin legeres sous <b>nelson.mixin</b>. <b>nelson.mixin.Copyable</b> ajoute une methode <b>copy</b> superficielle pour les classes handle. <b>nelson.mixin.CustomDisplay</b> redirige l'affichage scalaire vers une methode protegee <b>displayScalarObject</b> quand la classe la definit. 

Les declarations de proprietes peuvent inclure une valeur par defaut, une validation de taille et de type, et des fonctions de validation. Les methodes d'acces nommees <b>get.PropertyName</b> et <b>set.PropertyName</b> implementent l'acces calcule ou valide aux proprietes. Les proprietes <b>Dependent</b> ne sont pas stockees; les proprietes <b>Transient</b> ne sont pas persistees; les proprietes handle <b>NonCopyable</b> sont reinitialisees par le mixin de copie. 

La methode statique generee <b>ClassName.empty(...)</b> cree des tableaux vides types. L'expansion indexee initialise les elements manquants de classes valeur avec les valeurs par defaut et les elements manquants de classes handle avec des handles par defaut distincts. 

<b>saveObjectImpl</b> et <b>loadObjectImpl</b> statique personnalisent la persistance. Pour les tableaux non vides, ces methodes s'executent element par element. Les tableaux vides conservent leur type et leur taille sans appeler les hooks scalaires, et les tableaux de handles sont verifies avant l'execution des hooks de sauvegarde afin de detecter les elements invalides.

## 💡 Exemples

Creer une premiere classe valeur dans un fichier nomme MyClass.m.

```matlab

classdef MyClass
  properties
    Value
  end

  methods
    function obj = MyClass(val)
      if nargin > 0
        obj.Value = val;
      end
    end
  end
end

a = MyClass(42);
disp(a.Value)

```
Utiliser un stockage prive et une propriete dependante.

```matlab

classdef Person
  properties (Access = private)
    AgeInternal = 0
  end

  properties
    Name (1,1) string = ""
  end

  properties (Dependent)
    Age
  end

  methods
    function obj = Person(name, age)
      if nargin > 0
        obj.Name = name;
        obj.AgeInternal = age;
      end
    end

    function v = get.Age(obj)
      v = obj.AgeInternal;
    end
  end
end

p = Person("Ada", 31);
p.Age

```
Heriter d'une superclasse et appeler son constructeur et sa methode.

```matlab

classdef Vehicle
  properties
    Name (1,1) string = "vehicle"
  end

  methods
    function obj = Vehicle(name)
      if nargin > 0
        obj.Name = name;
      end
    end

    function start(obj)
      fprintf("%s started\n", obj.Name);
    end
  end
end

classdef Car < Vehicle
  properties
    Brand (1,1) string = "unknown"
  end

  methods
    function obj = Car(name, brand)
      obj@Vehicle(name);
      if nargin > 1
        obj.Brand = brand;
      end
    end

    function start(obj)
      start@Vehicle(obj);
      fprintf("Car brand: %s\n", obj.Brand);
    end
  end
end

c = Car("MyCar", "Toyota");
c.start();

```
Utiliser la semantique de reference des handles.

```matlab

classdef Counter < handle
  properties
    Value (1,1) double = 0
  end

  methods
    function increment(obj)
      obj.Value = obj.Value + 1;
    end
  end
end

a = Counter();
b = a;
a.increment();
disp(b.Value)

```
Ajouter une copie superficielle a une classe handle.

```matlab

classdef Config < handle & nelson.mixin.Copyable
  properties
    Mode (1,1) string = "default"
    Options struct = struct()
  end
end

c1 = Config();
c1.Mode = "fast";
c2 = copy(c1);
c2.Mode = "safe";

```
Personnaliser l'affichage scalaire d'un objet.

```matlab

classdef Point2D < nelson.mixin.CustomDisplay
  properties
    X (1,1) double = 0
    Y (1,1) double = 0
  end

  methods
    function obj = Point2D(x, y)
      if nargin > 0
        obj.X = x;
        obj.Y = y;
      end
    end
  end

  methods (Access = protected)
    function displayScalarObject(obj)
      fprintf("Point2D: (%.2f, %.2f)\n", obj.X, obj.Y);
    end
  end
end

p = Point2D(3.5, 4.2);
p

```


## 🔗 Voir aussi

[classdef](../interpreter/classdef.md), [methods](../handle/methods.md), [properties](../handle/properties.md), [metaclass](../handle/metaclass.md), [events](../handle/events.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | tutoriel classdef ajoute |

<!--
## 👤 Auteur

Allan CORNET
-->
