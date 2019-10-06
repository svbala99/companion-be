"use strict";
module.exports = (sequelize, DataTypes) => {
  const Post = sequelize.define(
    "Post",
    {
      text: DataTypes.STRING,
      imageUrl: { type: DataTypes.STRING, field: "image_url" },
      createdAt: { type: DataTypes.DATE, field: "created_at" },
      updatedAt: { type: DataTypes.DATE, field: "updated_at" }
    },
    { freezeTableName: true, tableName: "post", timestamps: true }
  );
  Post.associate = function(models) {
    // associations can be defined here
  };
  return Post;
};
