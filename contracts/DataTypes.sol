//SPDX-License-Identifier: MIT

pragma solidity ^0.8.6;

contract DataType {

    /*
    uint stands for unsigned integer, meaning non negative integers
    different sizes are available. Eg
        - uint8   ranges from 0 to 2 ** 8 - 1
        - uint256 ranges from 0 to 2 ** 256 - 1
    `public` means that the variable can be accessed internally
     by the contract and can also be read by the external world
    */


    uint public myuint = 256;
    uint256 public myUint256 = 65;
    /*
    Negative numbers are allowed for int types. Eg
    - int256 ranges from -2 ** 255 to 2 ** 255 - 1
    */
    int public  mynegative = -156;
    
    // Default values for the boolean type is false

    bool public isloggedIn = false;

    string  public name = "SAGAR";
    string public animal = "DOG";

    bytes32 public myBytesss = "HEY I WILL BE TREATED AS ARRAY";
    //address is used to store etherium addresses
    address public TitanBuilder = 0x4838B106FCe9647Bdf1E7877BF73cE8B0BAD5f97;


    function getValue()public pure returns(uint){
        uint value =1 ;
        return value;
    }

    struct Person{
        string Name;
        address Wallet;

    }
    
    Person public  Reyna = Person('Raman',0x4838B106FCe9647Bdf1E7877BF73cE8B0BAD5f97);

}