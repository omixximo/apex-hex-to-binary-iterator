@isTest
private with sharing class HexToBinary_Iterator_Test {

    @isTest
    private static void capitalLetters() {
        HexToBinary_Iterator it = new HexToBinary_Iterator('F0');

        String result = '';
        for (String bit : it) {
            result += bit;
        }

        Assert.areEqual('11110000', result);
    }

    @isTest
    private static void smallLetters() {
        HexToBinary_Iterator it = new HexToBinary_Iterator('f0');

        String result = '';
        for (String bit : it) {
            result += bit;
        }

        Assert.areEqual('11110000', result);
    }

    @isTest
    private static void wrongString() {
        HexToBinary_Iterator it = new HexToBinary_Iterator('G');

        String result = '';
        try{
            for (String bit : it) {
                result += bit;
            }
            Assert.fail('Expected exception not thrown');
        } catch (IllegalArgumentException ex){
        } catch (Exception ex){
            Assert.fail('Unexpected exception thrown');
        }
    }
}