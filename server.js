const express = require("express");
const bodyParser = require("body-parser");
const app = express();

const router = require("./routes/v1");

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use("/api/v1", router);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {});
