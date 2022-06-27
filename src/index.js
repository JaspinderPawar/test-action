
var express = require("express");
var app = express();

app.listen(8080, () => {
  console.log("Server running on port 5001");
});

app.get("/", (req, res, next) => {
  res.json('hello');
});