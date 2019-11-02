"use strict";
module.exports = (sequelize, DataTypes) => {
  const User = sequelize.define(
    "User",
    {
      name: DataTypes.STRING,
      email: {
        type: DataTypes.STRING,
        primaryKey: true
      },
      password: DataTypes.STRING,
      createdAt: {
        type: DataTypes.DATE,
        field: "created_at"
      },
      updatedAt: {
        type: DataTypes.DATE,
        field: "updated_at"
      },
      imageUrl: {
        type: DataTypes.STRING,
        field: "image_url"
      }
    },
    { freezeTableName: true, tableName: "user", timestamps: true }
  );
  User.associate = function(models) {
    // associations can be defined here
    models.User.hasMany(models.Post, {
      foreignKey: "userEmail"
    });
  };
  return User;
};
