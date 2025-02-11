//Create list of ints from 1 to 5, Haskell equivalent [1..5]
function arrFunc(){
    let arr = [];
    for (let i = 1; i<=5; i++) {
        arr.push(i);
    }
    return arr;    
}

function applicatorFunc(inpFunc, s){
    if(s=='s'){
        const arr = inpFunc();        
        let sum = arr.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
        return sum;
    }
    else{        
        const arr = inpFunc();
        let sum = arr.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
        return sum/5;
    }
}

let x = applicatorFunc(arrFunc, 's');
console.log(x);




// Function to generate a list of integers from a to b
function arrFunc(a, b){
    let arr = [];
    for (let i = a; i <= b; i++) {
        arr.push(i);
    }
    return arr;    
}

// Function to compute either sum or average based on the input 's' or 'a'
function applicatorFunc(inpFunc, a, b, s){
    const arr = inpFunc(a, b);  // Get the array from the function
    let sum = arr.reduce((accumulator, currentValue) => accumulator + currentValue, 0);  // Sum of the array
    if(s == 's'){
        return sum;  // Return sum if 's' is passed
    }
    else {
        return sum / arr.length;  // Return average if 'a' is passed
    }
}

// Example usage: Compute sum or average for a range 1 to 10
let x = applicatorFunc(arrFunc, 1, 10, 's');  // Sum of numbers from 1 to 10
console.log('Sum:', x);

let y = applicatorFunc(arrFunc, 1, 10, 'a');  // Average of numbers from 1 to 10
console.log('Average:', y);
