# libpointer datatype

C/Nelson equivalent data types

## Description

  <p>This table shows these Nelson types with their equivalent C types.</p>
  <table style="width:100%">
    <tr>
      <th>Nelson type</th>
      <th>C type</th>
    </tr>
    <tr>
      <td>logical (scalar)</td>
      <td>uint8_t</td>
    </tr>
    <tr>
      <td>uint8 (scalar)</td>
      <td>uint8_t</td>
    </tr>
    <tr>
      <td>int8 (scalar)</td>
      <td>int8_t</td>
    </tr>
    <tr>
      <td>uint16 (scalar)</td>
      <td>uint16_t</td>
    </tr>
    <tr>
      <td>int16 (scalar)</td>
      <td>int16_t</td>
    </tr>
    <tr>
      <td>uint32 (scalar)</td>
      <td>uint32_t</td>
    </tr>
    <tr>
      <td>int32 (scalar)</td>
      <td>uint32_t</td>
    </tr>
    <tr>
      <td>uint64 (scalar)</td>
      <td>uint64_t</td>
    </tr>
    <tr>
      <td>int64 (scalar)</td>
      <td>int64_t</td>
    </tr>
    <tr>
      <td>float, single (scalar)</td>
      <td>float</td>
    </tr>
    <tr>
      <td>double (scalar)</td>
      <td>double</td>
    </tr>
    <tr>
      <td>cstring (string utf-8)</td>
      <td>char *</td>
    </tr>
    <tr>
      <td>wstring (string unicode)</td>
      <td>wchar_t *</td>
    </tr>
    <tr>
      <td>void</td>
      <td>void</td>
    </tr>
    <tr>
      <td>logicalPtr (logical vector or matrix)</td>
      <td>uint8_t *</td>
    </tr>
    <tr>
      <td>uint8Ptr (uint8 vector or matrix)</td>
      <td>uint8_t *</td>
    </tr>
    <tr>
      <td>int8Ptr (int8 vector or matrix)</td>
      <td>int8_t *</td>
    </tr>
    <tr>
      <td>uint16Ptr (uint16 vector or matrix)</td>
      <td>uint16_t *</td>
    </tr>
    <tr>
      <td>int16Ptr (int16 vector or matrix)</td>
      <td>int16_t *</td>
    </tr>
    <tr>
      <td>uint32Ptr (uint32 vector or matrix)</td>
      <td>uint32_t *</td>
    </tr>
    <tr>
      <td>int32Ptr (int32 vector or matrix)</td>
      <td>int32_t *</td>
    </tr>
    <tr>
      <td>int64Ptr (uint64 vector or matrix)</td>
      <td>int64_t *</td>
    </tr>
    <tr>
      <td>uint64Ptr (uint64 vector or matrix)</td>
      <td>uint64_t *</td>
    </tr>
    <tr>
      <td>floatPtr, singlePtr (single vector or matrix)</td>
      <td>float *</td>
    </tr>
    <tr>
      <td>doublePtr (double vector or matrix)</td>
      <td>double *</td>
    </tr>
    <tr>
      <td>voidPtr</td>
      <td>void *</td>
    </tr>
    <tr>
      <td>libpointer</td>
      <td>void *, uint8_t *, int8_t *, int16_t *, uint16_t *, ...</td>
    </tr>
  </table>

## See also

[libpointer](libpointer.md), [dlsym](dlsym.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
