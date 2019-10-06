"use strict";

module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.bulkInsert(
      "post",
      [
        {
          text: "This is the text for this post",
          image_url: "https://www.cricbuzz.com/stats/img/faceImages/25.jpg",
          created_at: new Date(),
          updated_at: new Date()
        },
        {
          text: "This is the text for this post",
          image_url: "https://www.cricbuzz.com/stats/img/faceImages/26.jpg",
          created_at: new Date(),
          updated_at: new Date()
        },
        {
          text: "This is the text for this post",
          image_url: "https://www.cricbuzz.com/stats/img/faceImages/27.jpg",
          created_at: new Date(),
          updated_at: new Date()
        }
      ],
      {}
    );
  },

  down: (queryInterface, Sequelize) => {
    return queryInterface.bulkDelete("post", null, {});
  }
};
