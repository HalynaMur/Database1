SELECT club.name, trophies.name 
	FROM public.club
    INNER JOIN
    public.clubs_trophies ON club.id=clubs_trophies.id_club 
    INNER JOIN
    public.trophies ON clubs_trophies.id_trophie=trophies.id
    GROUP BY club.name, trophies.name ORDER BY club.name
    