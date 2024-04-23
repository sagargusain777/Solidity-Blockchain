//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Array{

    //Arrays
    uint[] public Numbers = [1,2,3,4,5];
    string[] public fruits = ["Banana", "Apple", "Mangoes"];
    string[] public values;
    function addValue(string memory _value)public{
        values.push(_value);
    }

    function valueCount() public view returns(uint){
        return values.length;
    }
    
    uint256[][] public array2D = [[1,2,3],[6,7,8]];
    
    
    
    struct Person {
        uint phoneNumber;
        string name;
        address ethereumAddress;

    }

    Person[] public people;

    function addPerson(uint _ph, string memory _name ,address _addre ) public {

        Person memory newPerson = Person(_ph,_name,_addre);
        people.push(newPerson);


    }
    
    function addSamplePerson() public {
        addPerson(7001524897,"SAGAR",0x58599Ae0311e994341974aB3ceB6AFA53D62F4b7);
    }


}