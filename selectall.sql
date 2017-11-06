SELECT club.name, league.name, stadium.name
	FROM public.club, public.league, public.stadium
    WHERE club.id_league=league.id AND club.id_stadium=stadium.id;