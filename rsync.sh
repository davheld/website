#!/bin/bash

rsync -rvt output/ drivingtmp:/var/www
ssh drivingtmp "chgrp -R web-content /var/www; find /var/www -type f -print0 | xargs -0 chmod 640; find /var/www -type d -print0 | xargs -0 chmod 750"
