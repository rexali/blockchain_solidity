// Here is an example that shows string syntaxes:
contract sample{    
    //wherever a string literal is seen a new string is created. 
    //If the string literal is in state then it's stored in storage 
    //and if it's found inside function then its stored in memory    
    //Here myString stores "" string.    
    string myString = "";  //string literal    
    bytes myRawString;
    function sample(string initString, bytes rawStringInit){        
        myString = initString;
        //myString2 holds a pointer to myString        
        string myString2 = myString;
        //myString3 is a string in memory        
        string memory myString3 = "ABCDE";
        //here the length and content changes        
        myString3 = "XYZ";

        myRawString = rawStringInit;
        //incrementing the length of myRawString        
        myRawString.length++;
        //throws exception while compiling        
        string myString4 = "Example";
        //throws exception while compiling        
        string myString5 = initString;    
        } 
}

