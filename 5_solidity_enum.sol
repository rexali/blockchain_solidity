//Solidity also supports enums. Here is an example that shows enum syntaxes:

contract sample {
    //The integer type which can hold all enum values and is the smallest
    // is chosen to hold enum values    
    enum OS { Windows, Linux, OSX, UNIX }
    OS choice;
    constructor(OS chosen) public {        
        choice = chosen;    
        }
    function setLinuxOS(){        
        choice = OS.Linux;    
        }
    function getChoice() returns (OS chosenOS){        
        return choice;    
        }
         
}