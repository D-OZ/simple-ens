pragma solidity ^0.4.24;


contract Mimo is Ownable {

    using MimoLib for MimoLib.Data;
    MimoLib.Data public lib;

    address public ens;

    // Logged when the owner of a node publishes new info about said node.
    event Publish(bytes32 indexed _node, bytes _info);

    constructor(address _ens) public {
        ens = _ens;
    }

    function publish(bytes32 _node, bytes  _info) public {
        lib.publish(_node, _info, ens);
    }

    function changeENS(address _ens) public onlyOwner {
        ens = _ens;
    }

}
