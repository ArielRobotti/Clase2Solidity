//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SimpleStorage{
    uint256 favNumber;

    struct People{
        uint256 favNumber;
        string name;
    }
    mapping(string name => uint256 favNumber) public lista;

    function store(uint256 _favNumber)public{
        favNumber = _favNumber;
    }
    People[] public people;

    function retrive() public view returns(uint256){
        return favNumber;
    }

    function addPerson(string memory _name, uint256 _favNumber)public{
        people.push(People(_favNumber, _name));
        lista[_name] = _favNumber;
    }
}