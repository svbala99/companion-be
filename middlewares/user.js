const Joi = require("@hapi/joi");
const User = require("../models").User;

const validateUserCreation = (req, res, next) => {
  const schema = Joi.object().keys({
    name: Joi.string()
      .min(4)
      .max(1000)
      .required(),
    email: Joi.string()
      .email()
      .required(),
    password: Joi.string()
      .min(6)
      .max(20)
      .required(),
    imageUrl: Joi.string()
      .min(5)
      .max(300)
      .uri()
      .required()
  });

  const { error, value } = schema.validate(req.body);
  if (error) {
    res
      .status(400)
      .send({ error: { code: 400, message: error.details[0].message } });
  }
  req.body = value;
  next();
};

const checkEmailUniqueness = async (req, res, next) => {
  const email = req.body.email;
  try {
    const usersCount = await User.count({
      where: {
        email: email
      }
    });
    if (usersCount > 0) {
      return res
        .status(400)
        .send({ error: { code: 400, message: "user email already exist" } });
    }
    next();
  } catch (e) {
    return res.status(500).send(e);
  }
};

module.exports = {
  validateUserCreation,
  checkEmailUniqueness
};
