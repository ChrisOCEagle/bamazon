const mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
  
    // Your port; if not 3306
    port: 3306,
  
    // Your username
    user: "root",
  
    // Your password
    password: "root",
    database: "bamazon_db"
});

connection.connect(function(err) {
    if (err) {
        console.log(err);
    } else {
        display();
    };
});

// Then create a Node application called `bamazonCustomer.js`.
// Running this application will first display all of the items available for sale.
// Include the ids, names, and prices of products for sale.
function display() {
    console.log("Displaying all available data...\n");
    connection.query(
        "SELECT * FROM products",
        function(err, data) {
            if (err) {
                throw err;
            } else {
                for (let i = 0; i < data.length; i++) {
                    console.log(
                        "Item ID: " + data[i].item_id + 
                        "\nProduct Name: " + data[i].product_name +
                        "\nDepartment Name: " + data[i].department_name +
                        "\nPrice: " + data[i].price +
                        "\nStock Quantity: " + data[i].stock_quantity +
                        "\n----------------------------------\n"
                    );
                }
                // The app should then prompt users with two messages.
                inquirer.prompt(
                    [
                        // The first should ask them the ID of the product they would like to buy.
                        {
                            name: "id",
                            type: "list",
                            message: "What product would you like to purchase?",
                            choices: data.item_id
                        }
                        // The second message should ask how many units of the product they would like to buy.
                    ]
                ).then(function(res) {
                    console.log(res);
                });    
                connection.end();
            };
        }
    );
};

// Once the customer has placed the order,
// your application should check if your store has enough of the product to meet
// the customer's request.
    // If not, the app should log a phrase like `Insufficient quantity!`,
    // and then prevent the order from going through.

// However, if your store _does_ have enough of the product, you should fulfill the customer's order.
    // This means updating the SQL database to reflect the remaining quantity.
    // Once the update goes through, show the customer the total cost of their purchase.

// If this activity took you between 8-10 hours,
// then you've put enough time into this assignment.
// Feel free to stop here -- unless you want to take on the next challenge.
