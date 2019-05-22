// Here is an example to demonstrate the delete operator:
contract sample {

    struct Struct {        
        mapping (int => int) myMap;        
        int myNumber;    
        }

    int[] myArray;    
    Struct myStruct;

    function sample(int key, int value, int number, int[] array) {
        //maps cannot be assigned so while constructing struct we ignore 
        //the maps       
         myStruct = Struct(number);
        //here set the map key/value        
        myStruct.myMap[key] = value;
        myArray = array;    
    }

    function reset(){
        //myArray length is now 0        
        delete myArray;
        //myNumber is now 0 and myMap remains as it is        
        delete myStruct;    
    }

    function deleteKey(int key){
        //here we are deleting the key        
        delete myStruct.myMap[key];    
    }
    
}
