public without sharing class HexToBinary_Iterator implements Iterator<String>, Iterable<String> {
    private String hexadecimal;
    private Integer binaryStringSize;
    private Integer currentIndex = 0;

    public HexToBinary_Iterator(String hexadecimalString) {
        this.hexadecimal = hexadecimalString;
        this.binaryStringSize = hexadecimalString.length() * 4;
    }

    public Iterator<String> iterator() {
        return this;
    }

    public Boolean hasNext() {
        if (currentIndex < binaryStringSize) {
            return true;
        } else {
            return false;
        }
    }

    public String next() {
        if (hasNext()) {
            Integer charPos = currentIndex / 4;
            Integer bitPosition = 3 - (currentIndex - 4 * charPos);
            Integer value = getIntFromHexChar(hexadecimal.charAt(charPos));
            Integer mask = 1 << bitPosition;
            Boolean isOne = (value & mask) > 0;
            currentIndex++;
            if (isOne) {
                return '1';
            } else {
                return '0';
            }
        } else {
            throw new NoSuchElementException('Iterator has no more elements.');
        }
    }

    private static Integer getIntFromHexChar(Integer hexChar) {
        if (hexChar >= 48 && hexChar < 58) {
            return hexChar - 48; // 0-9
        } else if (hexChar >= 65 && hexChar < 71) {
            return hexChar - 55; // A-F
        } else if (hexChar >= 97 && hexChar < 103) {
            return hexChar - 87; // a-f
        } else {
            throw new IllegalArgumentException('Invalid char');
        }
    }
}
