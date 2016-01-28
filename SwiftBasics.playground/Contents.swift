import UIKit


//using var to create variables
var myDog = "Fido"
var age = 28

//creating constants
let someAge = 28

//strongly typed variables
var myage:String = "123"
var myAge:Int = 123
var myAgeF :Float = 4.87
var isDog :Bool = true;


//adding variables to strings
var dogName = "Fido"
var dogAge = 6
var aboutDog = "My dog's name is \(dogName) and he is \(dogAge) years old"


//if else
if(isDog){
    dogAge = 5;
}
else {
    dogAge = 50;
}


//printing on the console
print(aboutDog)


//Arrays
var friendNames = ["Sarah", "Jacob", "Matthews", "Peter"]
friendNames.append("Joey");
var length = friendNames.count;
print("The length of the array is \(length)");


//for loops
var myMoney = 10;
//underscore is just used as a placeholder, it is not a variable
for _ in 1...10{
    myMoney = myMoney - 4;
    myMoney = myMoney + 12;
}

for theNumber in 1...10{
    print("The number is: \(theNumber)");
}

for friend in friendNames{
    print("hello \(friend)")
}




//Dictionaries
var dogs = ["Fido":4, "Sarah":8, "Winston":2]
var dogFur = ["Fido":"brown", "Sarah":"blue", "Winston":"white" ]
//to see how old is fido
print(dogs["Fido"])
//to see sarah's color
print(dogFur["Sarah"])
//to modify the value
dogFur["Sarah"]="black"
//adding a new item
dogs["Joan"] = 3;
//removing an existing item
dogs.removeValueForKey("Winston");

//strongly typed dictionary
var dogsAge : [String:Int] = ["Fido":4, "Sarah":8, "Winston":2]




//functions
func tellMeAboutTheDog (name:String, age:Int){
    
    print("The dog's naem is \(name) and it is \(age) years old");
    
}
//calling a function (2nd parameter onwards, we have to provide the parameter name too)
tellMeAboutTheDog("Shaun", age:3)
tellMeAboutTheDog("Shaun", age:3)

//function returning a value (a string in this case)
func AboutTheDog (name:String, age:Int) -> String {
    var aboutDog = "The dog's naem is \(name) and it is \(age) years old";
    print(aboutDog);
    
    return aboutDog;
    
}




//Optionals
/*
An optional is a way to take a type and say it is either there or it is not (nil).
*/

var dogNameNormal : String = "Fido";     //normal variable
var dogNameOptional : String? = "Fido";  //optional variable
dogNameOptional = nil;  //similar to null
print(dogNameOptional)
//if you are sure that an optional parameter is definitely not holding nil, you can use exclamation to specify that so that the system doesn't treat it as an optional. However, in case you mark it and somehow it happens to be nil, it will cause a fatal error (crash). So use '!' wisely.
dogNameOptional = "Sarah"
print(dogNameOptional!) //since i'm pretty sure, i'm using !
//using optional
func getDogName(dogAge:Int) -> String? {
    if(dogAge>0){
        return "Sarah"
    }
    else{
        return nil
    }
}





//Classes
class Dog {
    
    //properties
    var name = "Fido"
    var age = 0
    var furColor = "Brown"
    
    //functions
    func dogInfo()->String {
        return "The dog \(name) is \(age) years old"
    }
    func dogAppearance(furColor : String) -> String {
        self.furColor = furColor;
        return "The dog has \(self.furColor) color"
    }
    
}

//making an object
var myDogObj = Dog();
myDogObj.name = "Sarah";
myDogObj.age = 6;
myDogObj.dogInfo();
myDogObj.dogAppearance("brown");


