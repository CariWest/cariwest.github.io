for (i = 1; i <= 5; i++) {
  console.log("Printing " + i);
}

i = 1;
while (i <= 5){
  console.log("Printing " + i);
  i++;
}


divisibleByThree = false;
i = 1;

while (divisibleByThree == false) {
  if (i % 3 != 0) {
      console.log(i + " is not divisible by three.");
      i++;
  } else {
    console.log(i + " is divisible by three!");
    divisibleByThree = true;
  }
}