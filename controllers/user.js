const User = require("../models").User;

const Sequelize = require("sequelize");
const Op = Sequelize.Op;

const create = async (req, res) => {
  const { name, email, password, imageUrl } = req.body;
  try {
    const user = await User.create({ name, email, password, imageUrl });

    const userData = user.get({ plain: true });
    return res.send({
      data: userData,
      message: "User registered successfully"
    });
  } catch (e) {
    return res.status(500).send(e);
  }
};

module.exports = {
  create
};
