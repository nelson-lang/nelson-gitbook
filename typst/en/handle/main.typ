#import "nelson_help.typ": *

= Handle

The Handle module provides tools for creating and manipulating handle objects in Nelson.

 Handle objects are lightweight references to larger data structures, enabling efficient memory management and data sharing between different parts of a program.

 This module includes functions for creating, copying, and destroying handle objects, as well as for managing their lifetimes and ensuring proper cleanup.

 It also includes classdef reflection, event, listener, dynamic property, weak reference, and typed invalid handle helpers.

== Functions

- #nlink(<handle:addlistener>)[addlistener]: Adds a listener callback to a classdef event.
- #nlink(<handle:cancel>)[cancel]: Cancel a cancellable object.
- #nlink(<handle:delete>)[delete]: Delete handle objects or files.
- #nlink(<handle:dynamicprops>)[dynamicprops]: Base class for handle objects with instance dynamic properties.
- #nlink(<handle:enumeration>)[enumeration]: Returns enumeration member names for a classdef enumeration class.
- #nlink(<handle:events>)[events]: Returns event names for a classdef object or class.
- #nlink(<handle:get>)[get]: Retrieve a property value from an handle object.
- #nlink(<handle:handle>)[handle]: Base class for objects with reference semantics.
- #nlink(<handle:insert>)[insert]: Insert entries into an object that supports keyed insertion.
- #nlink(<handle:invoke>)[invoke]: Invoke method on an handle object.
- #nlink(<handle:isKey>)[isKey]: Determine whether an object contains a key.
- #nlink(<handle:ismethod>)[ismethod]: Return true if a public method belongs to an object or class.
- #nlink(<handle:isprop>)[isprop]: Return true if a property belongs to an object or class.
- #nlink(<handle:isvalid>)[isvalid]: Return true for valid handles.
- #nlink(<handle:listener>)[listener]: Creates a classdef event listener.
- #nlink(<handle:lookup>)[lookup]: Look up values in an object.
- #nlink(<handle:metaclass>)[metaclass]: Returns classdef metadata.
- #nlink(<handle:methods>)[methods]: Returns public method names for an object or class.
- #nlink(<handle:nelson.lang.HandlePlaceholder>)[nelson.lang.HandlePlaceholder]: Placeholder handle class used for missing handle targets.
- #nlink(<handle:nelson.lang.WeakReference>)[nelson.lang.WeakReference]: Weak reference to a handle object.
- #nlink(<handle:nelson.lang.invalidHandle>)[nelson.lang.invalidHandle]: Create an invalid handle with a specified handle class.
- #nlink(<handle:nelson.mixin.Copyable>)[nelson.mixin.Copyable]: Add a copy method to a handle class.
- #nlink(<handle:nelson.mixin.CustomCompactDisplayProvider>)[nelson.mixin.CustomCompactDisplayProvider]: Provide a compact display of an object inside containers.
- #nlink(<handle:nelson.mixin.CustomDisplay>)[nelson.mixin.CustomDisplay]: Customize how an object is displayed.
- #nlink(<handle:nelson.mixin.Heterogeneous>)[nelson.mixin.Heterogeneous]: Allow arrays that mix related classes.
- #nlink(<handle:nelson.mixin.Scalar>)[nelson.mixin.Scalar]: Restrict a class to scalar instances.
- #nlink(<handle:nelson.mixin.SetGet>)[nelson.mixin.SetGet]: Add set and get property access to a handle class.
- #nlink(<handle:nelson.mixin.SetGetExactNames>)[nelson.mixin.SetGetExactNames]: Set and get property access with case-sensitive names.
- #nlink(<handle:notify>)[notify]: Notifies listeners of a classdef event.
- #nlink(<handle:properties>)[properties]: Returns public property names for an object or class.
- #nlink(<handle:remove>)[remove]: Remove entries from an object.
- #nlink(<handle:set>)[set]: Set a property value of an handle object.
- #nlink(<handle:superclasses>)[superclasses]: Names of the superclasses of a class.


#nested[
#pagebreak(weak: true)
#include "addlistener.typ"
#pagebreak(weak: true)
#include "cancel.typ"
#pagebreak(weak: true)
#include "delete.typ"
#pagebreak(weak: true)
#include "dynamicprops.typ"
#pagebreak(weak: true)
#include "enumeration.typ"
#pagebreak(weak: true)
#include "events.typ"
#pagebreak(weak: true)
#include "get.typ"
#pagebreak(weak: true)
#include "handle.typ"
#pagebreak(weak: true)
#include "insert.typ"
#pagebreak(weak: true)
#include "invoke.typ"
#pagebreak(weak: true)
#include "isKey.typ"
#pagebreak(weak: true)
#include "ismethod.typ"
#pagebreak(weak: true)
#include "isprop.typ"
#pagebreak(weak: true)
#include "isvalid.typ"
#pagebreak(weak: true)
#include "listener.typ"
#pagebreak(weak: true)
#include "lookup.typ"
#pagebreak(weak: true)
#include "metaclass.typ"
#pagebreak(weak: true)
#include "methods.typ"
#pagebreak(weak: true)
#include "nelson.lang.HandlePlaceholder.typ"
#pagebreak(weak: true)
#include "nelson.lang.WeakReference.typ"
#pagebreak(weak: true)
#include "nelson.lang.invalidHandle.typ"
#pagebreak(weak: true)
#include "nelson.mixin.Copyable.typ"
#pagebreak(weak: true)
#include "nelson.mixin.CustomCompactDisplayProvider.typ"
#pagebreak(weak: true)
#include "nelson.mixin.CustomDisplay.typ"
#pagebreak(weak: true)
#include "nelson.mixin.Heterogeneous.typ"
#pagebreak(weak: true)
#include "nelson.mixin.Scalar.typ"
#pagebreak(weak: true)
#include "nelson.mixin.SetGet.typ"
#pagebreak(weak: true)
#include "nelson.mixin.SetGetExactNames.typ"
#pagebreak(weak: true)
#include "notify.typ"
#pagebreak(weak: true)
#include "properties.typ"
#pagebreak(weak: true)
#include "remove.typ"
#pagebreak(weak: true)
#include "set.typ"
#pagebreak(weak: true)
#include "superclasses.typ"
]
