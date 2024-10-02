/*
  Page With No Likes [Facebook SQL Interview Question]

  Assume you're given two tables containing data about Facebook Pages and their respective likes (as in "Like a Facebook Page").
  Write a query to return the IDs of the Facebook pages that have zero likes. The output should be sorted in ascending order based on the page IDs.
*/

SELECT pages.page_id 
FROM pages
WHERE pages.page_id NOT IN (SELECT page_likes.page_id
                            FROM page_likes)
ORDER BY pages.page_id;
