const Post = require("../models").Post;
const User = require("../models").User;

const Sequelize = require("sequelize");
const Op = Sequelize.Op;

const fetchAll = async (req, res) => {
  try {
    const posts = await Post.findAll({
      attributes: ["id", "text", "imageUrl", "createdAt"],
      include: [
        { model: User, attributes: ["name", "email"], as: "userDetails" }
      ]
    });
    return res.send({ data: posts });
  } catch (e) {
    console.log(e);
    return res.status(500).send(e);
  }
};

const create = async (req, res) => {
  console.log(req.body);
  const { text, imageUrl, userEmail } = req.body;
  try {
    const post = await Post.create({ text, imageUrl, userEmail });

    const postData = post.get({ plain: true });
    return res.send({ data: postData, message: "Stored successfully" });
  } catch (e) {
    return res.status(500).send(e);
  }
};

module.exports = {
  fetchAll,
  create
};
