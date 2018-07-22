pragma solidity ^0.4.24;


interface MimoI {
    function publish(bytes32 _node, bytes  _info, address _ens) public;
}
