var express = require("express");
require(dotenv).config();

var app = express();

app.listen(3000, () => {
  console.log("Server running on port 3000");
});

app.get("/", (req, res, next) => {
  res.status(200).json({ data: process.env.NODE_ENV, port:  process.env.PORT });
});