
var express = require("express");
var app = express();

const PORT = process.env.PORT || 8080;
console.log(PORT)

app.listen(PORT, () => {
  console.log("Server running on port 5001");
});

app.get("/", (req, res, next) => {
  res.json('hello');
});