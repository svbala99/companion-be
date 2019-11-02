"use strict";

module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.addColumn("post", "user_email", {
      type: Sequelize.STRING,
      references: {
        model: {
          tableName: "user"
        },
        key: "email"
      },
      allowNull: true,
      onDelete: "CASCADE",
      onUpdate: "CASCADE"
    });
  },

  down: (queryInterface, Sequelize) => {
    return queryInterface.removeColumn("post", "user_email");
  }
};
