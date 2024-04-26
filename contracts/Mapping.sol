//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract myMappingContract{
    mapping(uint => string) public names;
    mapping (uint => Book) public  books; 

    constructor(){
        names[1]= "SAGAR";
        names[2]= "SIMRAN";
    }
    struct Book{
        string title;
        string author;

    }
    
    function addBook(uint _id,string memory _title,string memory _author)public{
       books[_id] = Book(_title,_author);
    }
    //Nested Mapping
    mapping (address=> mapping(uint =>Book)) public myBooks;


    function addMyBook(uint _id, string memory _title ,string memory _author) public{
        myBooks[msg.sender][_id] = Book(_title,_author);
    }
}