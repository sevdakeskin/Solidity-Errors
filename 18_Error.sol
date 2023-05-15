// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Errors{
    /*
    require -> inputs(params) validated by this function
    revert -> i>10 revert, error throw ediyoruz ,hatanın açıklamasını veriyoruz.-> message return ediyor
    assert -> bir condition parametre alıyor ve false ise error throw ediyor
    
    */
    function testRequire(uint _i) public pure {

        // require(condition,message)
        require(_i>10,"Input must be greater than 10");
    }

    function testRevert(uint _i) public pure {
        //revert(message)
        if(_i <= 10){
            revert ("Input must be greater than 10");
        }
    }
    
    uint public num;
    function testAssert() public view {
        //assert(condition(comparision)
        assert (num == 0);
    }

    /*uint public num1;
    function testAssert(uint a, uint b) public pure returns(uint) {
        //assert(condition(comparision)
        uint c = a+b;
        assert (c == a+b);
        return c;
    }*/

    uint public num2;
    function testAssert(uint x, uint y) public pure returns(uint) {
        //assert(condition(comparision)
        uint z = x+y;
        assert (z == x-y);// 14 == 6
        //logic
        return z;
    }
    
    function deposit(uint _amount) public view returns(uint) {
        // 99.99999999000000000   >= 100000000000000000000 
        // 0.1 ether varsa cüzdanında NFT yi mintle  
        require(msg.sender.balance >= _amount, "Insufficent Balance");
        // requiredan geçemezse alt kısımdaki kodlar çalışmaz.
        return _amount;

    }



}