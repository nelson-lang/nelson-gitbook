#import "nelson_help.typ": *

= JavaScript Object Notation

The JSON module provides functions to encode, decode, and format JSON data, allowing easy exchange of structured information between Nelson and external systems.

 JSON (JavaScript Object Notation) is a lightweight, text-based data format widely used for transmitting attribute-value pairs and arrays.

 This module enables Nelson to interoperate with web services, configuration files, and applications that rely on JSON.

== Functions

- #nlink(<json:jsondecode>)[jsondecode]: decodes a JSON string to Nelson object.
- #nlink(<json:jsonencode>)[jsonencode]: encodes a Nelson object into a JSON string.
- #nlink(<json:jsonprettyprint>)[jsonprettyprint]: format an JSON string.


#nested[
#pagebreak(weak: true)
#include "jsondecode.typ"
#pagebreak(weak: true)
#include "jsonencode.typ"
#pagebreak(weak: true)
#include "jsonprettyprint.typ"
]
