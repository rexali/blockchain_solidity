//
library math {    
    
    struct myStruct1 {        
        int a;
    }
    struct myStruct2 {        
        int a;
    }
    //Here we have to make 's' location storage so that we get a reference.    
    //Otherwise addInt will end up accessing/modifying a different instance
    // of myStruct1 than the one on which its invoked    
    function addInt(myStruct1 storage s, int b) returns (int c)    {        
        return s.a + b;    
    }
    function subInt(myStruct2 storage s, int b) returns (int c)    {        
        return s.a + b;    
    } 
    
}

contract sample {    
    //"*" attaches the functions to all the structs

    using math for *;    
    math.myStruct1 s1;    
    math.myStruct2 s2;

    function sample()    {        
        s1 = math.myStruct1(9);        
        s2 = math.myStruct2(9);
        s1.addInt(2);
        //compiler error as the first parameter of addInt is 
        //of type myStruct1 so addInt is not attached to myStruct2        
        s2.addInt(1);    
        } 
}