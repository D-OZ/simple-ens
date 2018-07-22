pragma solidity ^0.4.24;


contract Mimo is Ownable {

    // Interface used to interact with a deployed MimoLib
    MimoI public lib;

    // Address of ENS registrar used
    address public ens;

    // Logged when the owner of a node publishes new info about said node.
    event Publish(bytes32 indexed _node, bytes _info);

    constructor(address _ens, address _lib) public {
        ens = _ens;
        lib = _lib;
    }

    function publish(bytes32 _node, bytes  _info) public {
        publish(_node, _info, ens);
    }

    function change(address _ens, address _lib) public onlyOwner {
        ens = _ens;
        lib = _lib;
    }

}
