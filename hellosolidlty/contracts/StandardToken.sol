pragma solidity >=0.5.0;
import "./ERC20.sol";

import "./SafeMath.sol"
contract StandardToken is ERC20 {
    using SafeMath for uint;
    uint public _totalSupply;

    mapping (address => uint) internal balances;
    mapping (address => mapping(address => uint)) internal allowed;

    function totalSupply() public view returns(uint) {
        return _totalSupply;
    }
    function balanceOf(address owner) public view returns(uint){
        return bslances[owner];
    }
    function transfer(address to, uint value) public returns(bool){
        require(to != address(0));      // preventing of burning token
        require(balances[msg.sender] >= value);     // check whether owner has enough token to transac
        balances[msg.sender] = balances[msg.sender].sub(value);     // ผู้โอนลดลง
        balances[to] = balances[to].add(value);     
        emit Transfer(msg.sender, to, value);
        return true;                // ผู้รับเพิ่มขึ้น
    }
    function transferFrom(address from, uint value) public returns(bool){
        require(to != (0));
        require(balances[from] >= value);
         require(balances[from] >= value);
    }
    function approve(address spender, uint value) public returns(bool){ // token owner calls
        require(spender != (0));
        allowed[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
    }
    function allowance(address owner, address spender) public view returns(uint){

    }
}