SELECT moz_places.url as pl_url,
    moz_places.visit_count as pl_visit_count,
    moz_places.frecency as pl_url_frecency,
    moz_places.last_visit_date as pl_last_visit_date,
    moz_historyvisits.'from_visit' as 'his_from_visit',
    moz_historyvisits.'visit_date' as 'his_visit_date',
    moz_historyvisits.'visit_type' as 'his_visit_type',
    moz_historyvisits.'triggeringPlaceId' as 'his_triggeringPlaceId'
from moz_historyvisits
    join moz_places on moz_places.id = moz_historyvisits.place_id
WHERE his_visit_date != pl_last_visit_date;