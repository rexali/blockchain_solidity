//Solidity allows a source file to import other source files
//This statement imports all global symbols from "filename" 
//(and symbols imported there) into the current global scope. "filename" 
//can be a absolute or relative path. It can only be a HTTP URL 
import "filename";
//creates a new global symbol symbolName whose members are all the global 
symbols from "filename". 
import * as symbolName from "filename";
//creates new global symbols alias and symbol2 which reference 
//symbol1 and symbol2 from "filename", respectively. 
import {symbol1 as alias, symbol2} from "filename";
//this is equivalent to import * as symbolName from "filename";. 
import "filename" as symbolName;