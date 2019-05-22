// Modifiers are inherited by child contracts, and child contracts 
//can override them. Multiple modifiers can be applied to a function 
//by specifying them in a whitespace-separated list and will be 
//evaluated in order. You can also pass arguments to modifiers. 
//Inside the modifier, the next modifier body or function body, 
//whichever comes next, is inserted where _; appears
contract sample {    
    
    int a = 90;

    modifier myModifier1(int b) {        
        int c = b;        
        _;        
        c = a;        
        a = 8;    
    }

    modifier myModifier2 {        
        int c = a;        
        _;    
    }

    modifier myModifier3 {        
        a = 96;        
        return;        
        _;        
        a = 99;
    }

    modifier myModifier4 {        
        int c = a;       
         _;    
    }
    //In the case of functions, the code after return is executed after the caller's code 
    //execution is finished. 
    //And in the case of modifiers, the code after _; in the previous modifier
    // is executed after the caller's code execution is finished

    function myFunction() myModifier1(a) myModifier2 myModifier3 returns (int d) {        
        a = 1;        
        return a;    
        } 
    } 