// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract MappingStruct {

    struct Cars {
        string brand;
        uint price;
    }
    mapping(uint => Cars) internal carsMapping;

    function addCars(uint _key, string memory _brand, uint _price) external {
        Cars memory newCar = Cars(_brand, _price);
        carsMapping[_key] = newCar;
    }

    function getCar(uint _key) external view returns(Cars memory) {
        return carsMapping[_key];
    }
}
