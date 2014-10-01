localize.drupal.org D7 migration disposable testing environment
---------------------------------------------------------------

1. Install docker
2. Install fig
3. run: fig build
4. prepare a database dump in dump/dump.sql.gz (or whatever other name is set up in fig.yml)
5. run fig up
6. wait for DB restore
7. access localhost:5001 (or whatever other port is set up in fig.yml)
8. test the update path


To reset the environment :
(stop the running containers, then)
1. fig rm mysql --force
2. fig up
