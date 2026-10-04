# Handle

The Handle module provides tools for creating and manipulating handle objects in Nelson.

Handle objects are lightweight references to larger data structures, enabling efficient memory management and data sharing between different parts of a program.

This module includes functions for creating, copying, and destroying handle objects, as well as for managing their lifetimes and ensuring proper cleanup.

It also includes classdef reflection, event, listener, dynamic property, weak reference, and typed invalid handle helpers.

## Functions

- [addlistener](addlistener.md) - Adds a listener callback to a classdef event.
- [cancel](cancel.md) - Cancel a cancellable object.
- [delete](delete.md) - Delete handle objects or files.
- [dynamicprops](dynamicprops.md) - Base class for handle objects with instance dynamic properties.
- [enumeration](enumeration.md) - Returns enumeration member names for a classdef enumeration class.
- [events](events.md) - Returns event names for a classdef object or class.
- [get](get.md) - Retrieve a property value from an handle object.
- [handle](handle.md) - Base class for objects with reference semantics.
- [insert](insert.md) - Insert entries into an object that supports keyed insertion.
- [invoke](invoke.md) - Invoke method on an handle object.
- [isKey](isKey.md) - Determine whether an object contains a key.
- [ismethod](ismethod.md) - Return true if a public method belongs to an object or class.
- [isprop](isprop.md) - Return true if a property belongs to an object or class.
- [isvalid](isvalid.md) - Return true for valid handles.
- [listener](listener.md) - Creates a classdef event listener.
- [lookup](lookup.md) - Look up values in an object.
- [metaclass](metaclass.md) - Returns classdef metadata.
- [methods](methods.md) - Returns public method names for an object or class.
- [nelson.lang.HandlePlaceholder](nelson.lang.HandlePlaceholder.md) - Placeholder handle class used for missing handle targets.
- [nelson.lang.WeakReference](nelson.lang.WeakReference.md) - Weak reference to a handle object.
- [nelson.lang.invalidHandle](nelson.lang.invalidHandle.md) - Create an invalid handle with a specified handle class.
- [nelson.mixin.Copyable](nelson.mixin.Copyable.md) - Add a copy method to a handle class.
- [nelson.mixin.CustomCompactDisplayProvider](nelson.mixin.CustomCompactDisplayProvider.md) - Provide a compact display of an object inside containers.
- [nelson.mixin.CustomDisplay](nelson.mixin.CustomDisplay.md) - Customize how an object is displayed.
- [nelson.mixin.Heterogeneous](nelson.mixin.Heterogeneous.md) - Allow arrays that mix related classes.
- [nelson.mixin.Scalar](nelson.mixin.Scalar.md) - Restrict a class to scalar instances.
- [nelson.mixin.SetGet](nelson.mixin.SetGet.md) - Add set and get property access to a handle class.
- [nelson.mixin.SetGetExactNames](nelson.mixin.SetGetExactNames.md) - Set and get property access with case-sensitive names.
- [notify](notify.md) - Notifies listeners of a classdef event.
- [properties](properties.md) - Returns public property names for an object or class.
- [remove](remove.md) - Remove entries from an object.
- [set](set.md) - Set a property value of an handle object.
- [superclasses](superclasses.md) - Names of the superclasses of a class.
