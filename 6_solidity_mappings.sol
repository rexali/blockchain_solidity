// Here is an example of how to create and use a mapping:
contract sample{ 

    mapping (int => string) myMap;

    function sample(int key, string value){

        myMap[key] = value;
        //myMap2 is a reference to myMap        
        mapping (int => string) myMap2 = myMap;   
    } 
}