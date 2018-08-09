var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3310,
    user: "root",
    password: "",
    database: "bamazonDB"
  });

  connection.connect(function(err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId + "\n");
     start();
  });
  
function start() {
   connection.query("SELECT * FROM products", function(err, res) {
    for (var i = 0; i < res.length; i++) {
      console.log(res[i].id )
    }
          console.log(res);
    })
      };
   inquirer
       .prompt([
         {
           name: "id",
           type: "input",
           message: "What is the id of the item you would like to buy?", 
         },
         {
           name: "quantity",
           type: "input",
           message: "How many would you like to buy?"
         }
       ])
     .then(function(anwser) {
        console.log(anwser)
       }
     );
    // 