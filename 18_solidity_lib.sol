library math {    
    
    function addInt(int a, int b) returns (int c)    {        
        return a + b;    
    } 
}

contract sample {    
    
    function data() returns (int d)    {        
        return math.addInt(1, 2);    
    } 
} 