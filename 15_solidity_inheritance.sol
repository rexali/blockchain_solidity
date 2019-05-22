// Solidity supports multiple inheritance by copying code 
//including polymorphism. 
//Even if a contract inherits from multiple other contracts, 
//only a single contract is created on the bl
//the code from the parent contracts is always copied into the 
//final contract

contract sample1 {    
    
    function a(){}
    function b(){} 

}
//sample2 inherits sample1 
contract sample2 is sample1 { 

    function b(){}
}

contract sample3 { 

    function sample3(int b){} 
}
//sample4 inherits from sample1 and sample2 
//Note that sample1 is also parent of sample2, 
//yet there is only a single instance of sample1 
contract sample4 is sample1, sample2 {    
    
    function a(){}
    function c(){

        //this executes the "a" method of sample3 contract        
        a();
        //this executes the 'a" method of sample1 contract        
        sample1.a();
        //calls sample2.b() because it's in last in the parent 
        //contracts list and therefore it overrides sample1.b()        
        b();    
    }
    
}
//If a constructor takes an argument, 
//it needs to be provided at the constructor of the child contract. 
//In Solidity child constructor doesn't call parent constructor 
//instead parent is initialized and copied to child contract 
sample5 is sample3(122) {

}