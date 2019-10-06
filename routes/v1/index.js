const express = require("express");
const router = express.Router();
const postRouter = require("./posts");

router.get("/", (req, res) => {
  res.send({ data: { message: "response for GET at '/api/v1/' " } });
});

router.use("/posts", postRouter);

module.exports = router;
