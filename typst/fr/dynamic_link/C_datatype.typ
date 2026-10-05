#import "nelson_help.typ": *

= Types libpointer <dynamic_link:C_datatype>

Équivalences entre types C et Nelson

== Description

Ce tableau montre les types Nelson et leurs équivalents en C.

 

#table(
  columns: 2,
  [Type Nelson], [Type C], 
  [logical (scalaire)], [uint8\_t], 
  [uint8 (scalaire)], [uint8\_t], 
  [int8 (scalaire)], [int8\_t], 
  [uint16 (scalaire)], [uint16\_t], 
  [int16 (scalaire)], [int16\_t], 
  [uint32 (scalaire)], [uint32\_t], 
  [int32 (scalaire)], [int32\_t], 
  [uint64 (scalaire)], [uint64\_t], 
  [int64 (scalaire)], [int64\_t], 
  [float, single (scalaire)], [float], 
  [double (scalaire)], [double], 
  [cstring (chaîne utf-8)], [char \*], 
  [wstring (chaîne unicode)], [wchar\_t \*], 
  [void], [void], 
  [logicalPtr (logical vector or matrix)], [uint8\_t \*], 
  [uint8Ptr (uint8 vector or matrix)], [uint8\_t \*], 
  [int8Ptr (int8 vector or matrix)], [int8\_t \*], 
  [uint16Ptr (uint16 vector or matrix)], [uint16\_t \*], 
  [int16Ptr (int16 vector or matrix)], [int16\_t \*], 
  [uint32Ptr (uint32 vector or matrix)], [uint32\_t \*], 
  [int32Ptr (int32 vector or matrix)], [int32\_t \*], 
  [int64Ptr (uint64 vector or matrix)], [int64\_t \*], 
  [uint64Ptr (uint64 vector or matrix)], [uint64\_t \*], 
  [floatPtr, singlePtr (single vector or matrix)], [float \*], 
  [doublePtr (double vector or matrix)], [double \*], 
  [voidPtr], [void \*], 
  [libpointer], [void \*, uint8\_t \*, int8\_t \*, int16\_t \*, uint16\_t \*, ...], 
)

== Voir aussi

#nlink(<dynamic_link:libpointer>)[libpointer];, #nlink(<dynamic_link:dlsym>)[dlsym];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
