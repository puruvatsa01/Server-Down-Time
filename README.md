📘 Project Summary
This project solves a practical recommendation problem using SQL, based on LinkedIn-style data. The goal is to recommend one relevant post to each user based on what the people they follow have liked. The recommendation must exclude any post that the user has already liked themselves. Among all possible options, the post liked by the highest number of followed users is selected. If there is a tie, the post with the smallest ID is chosen. This logic ensures that the recommendation is both relevant and unique for each user.
The project uses two main tables:
`post_likes`: stores which users liked which posts.
`user_follows`: stores user follow relationships.

This SQL solution is useful for social networks and content platforms where personalized and relationship-based recommendations can drive user engagement and retention.
============================================
✅ Key Tasks
* Identify which posts are liked by users a person follows.
* Exclude posts the user has already liked.
* Count how many followed users liked each post.
* Select the most liked post (with smallest post ID in case of a tie).
* Display the final recommendation for each user.
  
💼 Business Value
* Drives engagement by showing users what their network is interacting with.
* Avoids redundant suggestions by filtering out already liked posts.
* Supports scalable content recommendation logic for large user bases.
