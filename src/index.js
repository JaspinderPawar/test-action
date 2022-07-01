var express = require("express");
//var mongoose = require("mongoose");
var app = express();

const url = 'process.env.MONGODB_URL';
const options = {
  useNewUrlParser: true,
  autoIndex: true,
  useUnifiedTopology: true,
};

console.log(url)
  
app.listen(5001, () => {
  console.log("Server running on the port 5001");
});


// mongoose.connect(url, options).then(() => {
//   console.log("Connected to MongoDB");
// });

app.get("/", (req, res, next) => {
  res.json('hello');
});