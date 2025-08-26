use university;
select * from songs;
#query 1
select title, artist_name, year from songs where year > 2002 order by year asc;
#query 2
select avg(duration) as avg_duration, max(duration) as max_duration, 
min(duration) as min_duration from songs;
#query 3
select artist_name, count(distinct(song_id)) as total_songs 
from songs group by artist_name order by total_songs desc;
#query 4
select artist_name, count(distinct(song_id)) as total_songs 
from songs group by artist_name having total_songs>1;
#query 5
select title, artist_name, duration, case
	when duration<120 then "short"
    when duration between 120 and 240 then "medium"
    else "long"
    end as length 
    from songs order by duration desc;
#query 6
select title, artist_name from songs where artist_id in (
select artist_id from songs group by artist_id having count(song_id)>1);
#query 7
select title, artist_name, duration from songs order by duration desc limit 5;  
#query 8
select title, artist_name, year from songs
where artist_name = (
    select artist_name
    from songs
    group by artist_name
    order by count(song_id) desc
    limit 1 );
#query 9
select distinct(artist_name), artist_location from songs 
where artist_location is not null and trim(artist_location) <> '';
#query 10
select year, round(avg(duration), 2) as avg_duration from songs
where year > 0 group by year order by  year ASC;
    
    
  
    


