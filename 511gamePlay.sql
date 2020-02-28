--https://leetcode.com/problems/game-play-analysis-i/
SELECT A.player_id, Min(A.event_date)as first_login
FROM Activity A
GROUP BY A.player_id