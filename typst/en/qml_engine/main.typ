#import "nelson_help.typ": *

= QML engine

The QML Engine module allows Nelson programs to display, manipulate, and interact with graphical content using Qt's QML framework.

 It provides functions to manage QML components, access Qt objects, and integrate JavaScript and QML logic.

== Functions

- #nlink(<qml_engine:QObject_classname>)[QObject\_classname]: Returns class name of an QObject handle.
- #nlink(<qml_engine:QObject_findchildren>)[QObject\_findchildren]: Returns all children of this object with the given name.
- #nlink(<qml_engine:QObject_get>)[QObject\_get]: Retrieve a property value from an QObject handle.
- #nlink(<qml_engine:QObject_iswidgettype>)[QObject\_iswidgettype]: Returns true if the QObject is a widget.
- #nlink(<qml_engine:QObject_iswindowtype>)[QObject\_iswindowtype]: Returns true if the QObject is a window.
- #nlink(<qml_engine:QObject_methodsignature>)[QObject\_methodsignature]: Returns the signature of a method of a QObject handle.
- #nlink(<qml_engine:QObject_root>)[QObject\_root]: QObject root object.
- #nlink(<qml_engine:QObject_set>)[QObject\_set]: Set a property value of an QObject handle (set).
- #nlink(<qml_engine:QObject_undefine>)[QObject\_undefine]: Undefine a dynamic property of a QObject handle.
- #nlink(<qml_engine:QObject_used>)[QObject\_used]: Returns the current valid QObject handles.
- #nlink(<qml_engine:nelsonObject>)[nelsonObject]: nelson object callable from QML.
- #nlink(<qml_engine:qml_addimportpath>)[qml\_addimportpath]: Adds path as directory where the qml engine searches for installed modules.
- #nlink(<qml_engine:qml_addpluginpath>)[qml\_addpluginpath]: Adds path as directory where the qml engine searches for native plugins.
- #nlink(<qml_engine:qml_clearcomponentcache>)[qml\_clearcomponentcache]: Clears the engine's internal component cache..
- #nlink(<qml_engine:qml_collectgarbage>)[qml\_collectgarbage]: Runs the Qml garbage collector.
- #nlink(<qml_engine:qml_createqquickview>)[qml\_createqquickview]: Load a QML file and creates a window.
- #nlink(<qml_engine:qml_demos>)[qml\_demos]: QML demos.
- #nlink(<qml_engine:qml_evaluatefile>)[qml\_evaluatefile]: Evaluates a js file.
- #nlink(<qml_engine:qml_evaluatestring>)[qml\_evaluatestring]: Evaluates a js string.
- #nlink(<qml_engine:qml_importpathlist>)[qml\_importpathlist]: Returns the list of directories where the engine searches for installed modules in a URL-based directory structure.
- #nlink(<qml_engine:qml_loadfile>)[qml\_loadfile]: Load a QML file.
- #nlink(<qml_engine:qml_loadstring>)[qml\_loadstring]: Load a QML string.
- #nlink(<qml_engine:qml_offlinestoragepath>)[qml\_offlinestoragepath]: Get the Property contains the directory to store offline user data.
- #nlink(<qml_engine:qml_pluginpathlist>)[qml\_pluginpathlist]: Returns the list of directories where the engine searches for native plugins for imported modules.
- #nlink(<qml_engine:qml_setofflinestoragepath>)[qml\_setofflinestoragepath]: Set the Property contains the directory to store offline user data.
- #nlink(<qml_engine:qt_constant>)[qt\_constant]: Returns Qt constant value.
- #nlink(<qml_engine:qt_version>)[qt\_version]: Returns Qt version used.


#nested[
#pagebreak(weak: true)
#include "QObject_classname.typ"
#pagebreak(weak: true)
#include "QObject_findchildren.typ"
#pagebreak(weak: true)
#include "QObject_get.typ"
#pagebreak(weak: true)
#include "QObject_iswidgettype.typ"
#pagebreak(weak: true)
#include "QObject_iswindowtype.typ"
#pagebreak(weak: true)
#include "QObject_methodsignature.typ"
#pagebreak(weak: true)
#include "QObject_root.typ"
#pagebreak(weak: true)
#include "QObject_set.typ"
#pagebreak(weak: true)
#include "QObject_undefine.typ"
#pagebreak(weak: true)
#include "QObject_used.typ"
#pagebreak(weak: true)
#include "nelsonObject.typ"
#pagebreak(weak: true)
#include "qml_addimportpath.typ"
#pagebreak(weak: true)
#include "qml_addpluginpath.typ"
#pagebreak(weak: true)
#include "qml_clearcomponentcache.typ"
#pagebreak(weak: true)
#include "qml_collectgarbage.typ"
#pagebreak(weak: true)
#include "qml_createqquickview.typ"
#pagebreak(weak: true)
#include "qml_demos.typ"
#pagebreak(weak: true)
#include "qml_evaluatefile.typ"
#pagebreak(weak: true)
#include "qml_evaluatestring.typ"
#pagebreak(weak: true)
#include "qml_importpathlist.typ"
#pagebreak(weak: true)
#include "qml_loadfile.typ"
#pagebreak(weak: true)
#include "qml_loadstring.typ"
#pagebreak(weak: true)
#include "qml_offlinestoragepath.typ"
#pagebreak(weak: true)
#include "qml_pluginpathlist.typ"
#pagebreak(weak: true)
#include "qml_setofflinestoragepath.typ"
#pagebreak(weak: true)
#include "qt_constant.typ"
#pagebreak(weak: true)
#include "qt_version.typ"
]
