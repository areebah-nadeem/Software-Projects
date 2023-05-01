/*
COMP 125-
ASSIGNMENT#1 Javascript File
  STUDENT NAME: AREEBAH NADEEM
STUDENT ID: 301283959
*/
        //Creating default function
window.onload=function(){
        document.getElementById("ROW").value=15;
        document.getElementById("COLUMN").value=15;
        DrawMyMatrixTable();
      }

//creating script tag for javascript code
    //creating a function to draw table using javascript
    function DrawMyMatrixTable() {
        //As we want to enter values of rows from user we put .value here
        // in the line below we created variables row and column 
        //and get the value affiliated with id row and coloumn

        var ROW = document.getElementById("ROW").value;
        var COL = document.getElementById("COLUMN").value;

        // now creating a variable myTable that has table cell styling
        var myTable = "<table border='3' width='820px'>";

        //Creating table 
        //creating rows with tr
        for (var r = 1; r <= ROW; r++) {
            myTable = myTable + "<tr>";

            // Creating coloumns from td
            for (var c = 1; c <= COL; c++) {

                myTable = myTable + "<td>" + r + " , " + c + "</td>";
            }


            myTable = myTable + "</tr>";
        }
        myTable = myTable + "</table>";

        document.getElementById("myTable").innerHTML=myTable;
    }
