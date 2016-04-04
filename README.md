Disclaimer
==========
The TDWS Image Optimizer is BETA SOFTWARE. It contains plenty of bugs and rough edges, and should be tested thoroughly in staging environments before use on production systems.

About TDWS Image Optimisation
==============================

On any average site, most of the transferred data is due to image files. The fastest way to optimize load speed is to optimize the images. Page load speed is important for multitude of reasons ranging from user conversion rate to search engine ranking. The first rule of thumb to having fast loading pages is to keep the amount of data the users need to transfer small. The smaller the web page file and its dependencies are, the faster it will load.

Making it easier for website to Load their pages, is why TD Web Services, is releasing this script. 

Installation Instructions
=========================

Download the script and save it on your web server.

Then make this into a cronjob by adding a line to cron like:

``` 
# m h dom mon dow command
0 1 * * * /root/imageoptimizer.bash
``` 

System Requirements
====================
* Any flavor of linux with:
* jpegoptim
* optipng

Links
-----
**Main Website:** [https://tdwebservices.com/](https://tdwebservices.com/)

**Community:** [http://community.tdwebservices.com/](http://community.tdwebservices.com/)

Supported Images:
-----------------
* JPEG
* PNG

Future Release:
===============
- downscale images for web use
- Enable CSS sprites
