const express = require("express");

const app = express();
app.use(express.json());

app.get("/", (req, res) => {
  res.send("Hello From Docker");
});

app.listen(5000, () => {
  console.log("App listening on port 5000!");
});
