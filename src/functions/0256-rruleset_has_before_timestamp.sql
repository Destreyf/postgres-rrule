CREATE OR REPLACE FUNCTION _rrule.rruleset_has_before_timestamp(_rrule.RRULESET, TIMESTAMP)
RETURNS BOOLEAN AS $$
  SELECT count(*) > 0 FROM _rrule.before($1, $2) LIMIT 1;
$$ LANGUAGE SQL IMMUTABLE STRICT;
