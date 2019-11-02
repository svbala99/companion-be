const express = require("express");
const router = express.Router();
const postController = require("../../controllers/post");
const { validateCreatePost } = require("../../middlewares/post");

router.get("/", postController.fetchAll);

router.post("/", validateCreatePost, postController.create);

module.exports = router;
