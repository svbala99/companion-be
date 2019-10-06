const express = require("express");
const app = express();

const router = require("./routes/v1");

app.use("/api/v1", router);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {});
