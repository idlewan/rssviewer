# rssviewer

rssviewer is a little webapp for reading an rss feed in a phone-like interface.

# Development and build instructions

You need to have coffee-script, jade and stylus installed to build it.
Then, execute in different terminals the 'coffee' and 'stylus' scripts:

    $ ./coffee

    $ ./stylus

To compile the jade templates, execute the 'make' command. You can recompile automatically with 'watch'.

    $ watch make

Serve the app locally using the serve.py script.

    $ ./serve.py

# Deploy

Copy css_compiled/, js_compiled/, lib/, index.html, icon128.png and manifest.webapp to your web root.

    $ cp -t /path/to/www/ -R css_compiled/ js_compiled/ lib/ index.html icon128.png manifest.webapp
