SELECT trophies.name
	FROM public.trophies
    INNER JOIN 
    public.clubs_trophies ON trophies.id=clubs_trophies.id_trophie
    INNER JOIN
    public.club ON clubs_trophies.id_club=club.id
    WHERE club.id=5;