const express = require("express");
const router = express.Router();
const postRouter = require("./posts");
const userRouter = require("./users");

router.get("/", (req, res) => {
  res.send({ data: { message: "response for GET at '/api/v1/' " } });
});

router.use("/posts", postRouter);
router.use("/users", userRouter);

module.exports = router;
