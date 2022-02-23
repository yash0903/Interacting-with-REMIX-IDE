// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

contract Storage{
    //following is the ways by which we can declare the variable
    uint256 a  = 9;

    // function for showing the ubove value it can also be seen by declaring it public
    function showValue() private view returns (uint256){
        return a;
    }
    function storeValue(uint256 value) private{
        a = value;
    } 

    //The data Type of the array is People and it takes two values as parameters
    struct People{
        string Name;
        uint256 Age;
    }
    
    //creating array which stores name and age of the person
    People[] public people;


    //function for entering name and age of the person
    function addPeople(string memory name, uint256 age) public {
        people.push(People(name,age));
    }
}
