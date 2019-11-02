const Joi = require("@hapi/joi");

const validateCreatePost = (req, res, next) => {
  const schema = Joi.object().keys({
    imageUrl: Joi.string()
      .min(5)
      .max(300)
      .required(),
    text: Joi.string()
      .min(5)
      .max(1000)
      .required(),
    userEmail: Joi.string()
      .email()
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

module.exports = {
  validateCreatePost
};
