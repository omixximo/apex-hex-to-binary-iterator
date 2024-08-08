
# Apex Hexadecimal to Binary iterator

Apex class to pass hexadecimal to binary. This is usefull to encode position data.

This code is usefull to allow storage of permission os big set of binary decision assigning each bit position to a permission and allowing easy storage in a string field.

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)

## Examples

Here is a simple translation from hex "ABC" to binary
```
BitPositionIterator it = new BitPositionIterator('ABC');

String result = '';
while (it.hasNext()) {
    result += it.next();
}
System.debug(result); // 101010111100
```