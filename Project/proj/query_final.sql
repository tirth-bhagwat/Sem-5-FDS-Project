SELECT moz_places.url as pl_url,
    moz_places.visit_count as pl_visit_count,
    moz_places.frecency as pl_frecency,
    moz_places.last_visit_date as pl_last_visit_date,
    moz_origins.host as or_host,
    moz_origins.frecency as or_frecency
FROM moz_places
    JOIN moz_origins on moz_places.origin_id = moz_origins.id;
-- moz_places.title as pl_title,
-- moz_places.rev_host as pl_rev_host,
-- moz_places.foreign_count as pl_foreign_count,
-- moz_places.preview_image_url as pl_preview_image_url,