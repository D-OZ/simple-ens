pragma solidity ^0.4.24;


library MimoLib {

    // Logged when the owner of a node publishes new info about said node.
    event Publish(bytes32 indexed _node, bytes _info);

    function publish(bytes32 _node, bytes  _info, address _ens) public {
        require(msg.sender == owner(_node, _ens));
        Publish(_node, _info);
    }

    function owner(bytes32 _node, address _ens) public view returns (address) {
        return ENS(_ens).owner(_node);
    }

}
