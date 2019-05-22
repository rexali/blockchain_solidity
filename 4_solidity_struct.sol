// Solidity also supports structs. 
//Here is an example that shows struct syntaxes:
contract sample{    
    
    struct myStruct {        
        bool myBool;        
        string myString;    
        }

    myStruct s1;
    //wherever a struct method is seen a new struct is created. 
    //If the struct method is in state then it's stored in storage and 
    //if it's found inside function than its stored in memory    
    myStruct s2 = myStruct(true, ""); //struct method syntax

    function sample(bool initBool, string initString){
        //create a instance of struct        
        s1 = myStruct(initBool, initString);
        //myStruct(initBool, initString) creates a instance in memory        
        myStruct memory s3 = myStruct(initBool, initString);
            
        }

} 