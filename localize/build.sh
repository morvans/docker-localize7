#!/bin/sh

drush make /project/localize/localize.drupal.org.make /project/www
cp /project/localize/settings.php /project/www/sites/default/
cp /project/localize/settings.local.php /project/www/sites/default/
