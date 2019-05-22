// There are two kinds of function calls in Solidity: 
//internal and external function calls. 
//An internal function call is when a function calls another function in the same contract. 
//An external function call is when a function calls a function of another 
//contract.

contract sample1 {

    int a;
    //"payable" is a built-in modifier    
    //This modifier is required if another contract is sending 
    //Ether while calling the method    
    function sample1(int b) payable {        
        a = b;    
    }

    function assign(int c)    {       
         a = c;    
    }

    function makePayment(int d) payable    {        
        a = d;    
    } 

}

contract sample2{

    function hello()    {    

    }

    function sample2(address addressOfContract)    {        
        //send 12 wei while creating contract instance        
        sample1 s = (new sample1).value(12)(23);

        s.makePayment(22);
        //sending Ether also        
        s.makePayment.value(45)(12);
        //specifying the amount of gas to use        
        s.makePayment.gas(895)(12);
        //sending Ether and also specifying gas        
        s.makePayment.value(4).gas(900)(12);
        //hello() is internal call whereas this.hello() is external call 
        //Calls made using the this keyword are called as external calls. 
        //The this keyword inside functions represents the current contract instance       
        this.hello();
        //pointing a contract that's already deployed        
        sample1 s2 = sample1(addressOfContract);

        s2.makePayment(112);
    } 

}