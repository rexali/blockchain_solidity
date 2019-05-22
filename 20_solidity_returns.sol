// Solidity allows functions to return multiple values
contract sample {    
    
    function a() returns (int a, string c)    {        
        return (1, "ss");    
    }
    function b()    {        
        int A;        
        string memory B;
        //A is 1 and B is "ss"        
        (A, B) = a();
        //A is 1        
        (A,) = a();
        //B is "ss"        
        (, B) = a();    
    } 
}
