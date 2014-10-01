#!/bin/bash
env >> /etc/environment

if [ ! -d /project/www ] ; then
    /project/localize/build.sh
fi

supervisord -n

