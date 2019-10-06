const Joi = require("@hapi/joi");

const validateCreateBanner = (req, res, next) => {
  const schema = Joi.object().keys({
    imageUrl: Joi.string()
      .min(5)
      .max(300)
      .required()
  });

  const { error, value } = Joi.validate(req.body, schema);
  if (error) {
    res
      .status(400)
      .send({ error: { code: 400, message: error.details[0].message } });
  }
  req.body = value;
  next();
};

module.exports = {
  validateCreateBanner
};
