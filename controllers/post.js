const Post = require("../models").Post;
const Sequelize = require("sequelize");
const Op = Sequelize.Op;

const fetchAll = async (req, res) => {
  try {
    const posts = await Post.findAll({});
    return res.send({ data: posts });
  } catch (e) {
    return res.status(500).send(e);
  }
};

const create = async (req, res) => {
  const { text, imageUrl } = req.body;
  try {
    const post = await Post.create({ text, imageUrl });
    return res.send({ data: post });
  } catch (e) {
    return res.status(500).send(e);
  }
};

module.exports = {
  fetchAll,
  create
};
