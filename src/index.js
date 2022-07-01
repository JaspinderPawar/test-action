
var express = require("express");
const mongoose = require("mongoose");
var app = express();


const url = process.env.MONGODB_URL;
const options = {
  useCreateIndex: true,
  useNewUrlParser: true,
  autoIndex: true,
  useUnifiedTopology: true,
};

app.listen(5001, () => {
  console.log("Server running on port 5001");

   console.log("Smongo url ",url);
  mongoose.connect(url, options).then(() => {
  console.log("Connected to MongoDB");
});
});




app.get("/", (req, res, next) => {
  res.json('hello');
});