SELECT club.name, trophies.name, trophies.id as ti, clubs_trophies.id
	FROM public.club
    JOIN
    	public.clubs_trophies ON club.id=clubs_trophies.id_club
    JOIN
    	public.trophies ON clubs_trophies.id_trophie=trophies.id
    WHERE trophies.id=3