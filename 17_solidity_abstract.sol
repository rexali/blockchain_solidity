//Contracts that only contain the prototype of 
//functions instead of implementation are called abstract contracts. 
//Such contracts cannot be compiled (even if they contain implemented 
//functions alongside non-implemented functions). 
//If a contract inherits from an abstract contract and does not
// implement all non-implemented functions by overriding, 
//it will itself be abstract. 

contract sample1 { 

    function a() returns (int b); 

}

contract sample2 {    
    
    function myFunc()    {        
    sample1 s = sample1(0xd5f9d8d94886e70b06e474c3fb14fd43e2f23970);
    //without abstract contract this wouldn't have compiled        
    s.a();    
    } 
}
