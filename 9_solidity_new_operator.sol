//  A contract can create a new contract using the new keyword
contract sample1 {   

    int a;
    function assign(int b)    {        
        a = b;    
    } 
}

contract sample2{   
     function sample2()    {        
         sample1 s = new sample1();        
         s.assign(12);
    } 
}