//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract StorageFactory{

    SimpleStorage[] public storages;

    function crearSimpleStorageContract()public{
        storages.push(new SimpleStorage());
    }
    function sfStore(uint256 _index, uint256 _number)public{
        //SimpleStorage ss = SimpleStorage(address(storages[_index]));
        //ss.store(_number);
        storages[_index].store(_number);
    }
    function getStore(uint256 _index)public view returns(uint256){
        return storages[_index].retrive();
    }

}