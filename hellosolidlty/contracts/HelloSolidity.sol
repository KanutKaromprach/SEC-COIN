/*
    Contract-oriented
        class = contract
        method = function
        instnce variavle = state vairables

        Value type = primitive type (int / bool)
        Reference type = complex type (array / structure)
        mapping = dictionary
*/

pragma solidity >=0.5.0;

contract HelloSolidity {

    // state variable
    uint public myValue;

    constructor() public {
        myValue =  5;
    }

    function increase() public  { // transactional call => need transaction
        myValue++;
    }

    function setValue(uint newValue) public {
        myValue = newValue;
    }

    function getValue() public returns (uint) { // non-transactional call
        return myValue;
    }

    function decrease() public {
        myValue--;
    }

    function myFunc(uint a, uint b) public returns (uint, uint) {
        return (a*b, a+b);
    }

}