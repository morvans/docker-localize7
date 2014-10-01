Docker disposable testing environment for localize.drupal.org D7 migration
==========================================================================

KickStart
---------

1. Install docker
2. Install fig
3. run: fig build
4. prepare a database dump in dump/dump.sql.gz (or whatever other name is set up in fig.yml)
5. run fig up
6. wait for DB restore (& drush make, for the first run)
7. access localhost:5001 (or whatever other port is set up in fig.yml)
8. test the update path
9. update the code if needed, in 'www'


To reset the database
---------------------

1. (stop the running containers, then)
2. fig rm mysql --force
3. fig up

To rebuild www
--------------

1. (stop the running containers, then)
2. delete www
3. fig up
