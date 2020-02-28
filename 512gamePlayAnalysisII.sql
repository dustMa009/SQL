--https://leetcode.com/problems/game-play-analysis-ii/
--my solution, 1700ms
SELECT A.player_id, A.device_id
FROM Activity A
WHERE A.event_date <= ALL (SELECT A2.event_date
                          FROM Activity A2
                          WHERE A.player_id = A2.player_id)

--fast solution, 380ms
# Write your MySQL query statement below
SELECT A.player_id, A.device_id
FROM Activity A, (SELECT A2.player_id, min(A2.event_date) as first_login
                 FROM Activity A2
                 GROUP BY A2.player_id) as B
WHERE A.player_id = B.player_id and A.event_date = B.first_login