const express = require("express");
const router = express.Router();
const userController = require("../../controllers/user");
const {
  validateUserCreation,
  checkEmailUniqueness
} = require("../../middlewares/user");

router.get("/", (req, res) => {
  res.send("From root /");
});

router.post(
  "/",
  validateUserCreation,
  checkEmailUniqueness,
  userController.create
);

module.exports = router;
