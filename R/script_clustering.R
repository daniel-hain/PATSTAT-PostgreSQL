##############################################################################
# Clustering
##############################################################################

# dbExecute(con, "
#   ALTER TABLE tls201_appln CLUSTER ;
# ") # TODO

# ## To see what is indexed
# dbExecute(con, "
# SELECT a.attname, format_type(a.atttypid, a.atttypmod) AS data_type
#   FROM   pg_index i
#   JOIN   pg_attribute a ON a.attrelid = i.indrelid
#                         AND a.attnum = ANY(i.indkey)
#   WHERE  i.indrelid = 'tls201_appln'::regclass;
# ") # TODO
