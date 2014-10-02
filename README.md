Docker disposable testing environment for localize.drupal.org D7 migration
==========================================================================

KickStart
---------

1. Install docker
2. Install fig
3. prepare a database dump at mysql/dump.sql.gz
4. run: fig build
5. run: fig up
6. wait for drush make to complete (the first time)
7. access localhost:5001 (or whatever other port is set up in fig.yml)
8. test the code
9. update the code if needed, in 'www'


To reset the database
---------------------

1. (stop the running containers, then)
2. fig rm mysql --force
3. fig up

To rebuild www
--------------

1. (stop the running containers, then)
2. delete www folder
3. fig up
