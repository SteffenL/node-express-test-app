const express = require("express");
const app = express();
const port = process.env.PORT || 80;

app.get("/", (req, res) => {
  res.send("OK");
});

app.listen(port, () => {
  console.log("Test App is running.");
});
