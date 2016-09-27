dock-kwalify
============

Dockerized version of `kwalify <http://www.kuwata-lab.com/kwalify/>`_: Parser, schema validator, and data binding tool for YAML and JSON.

.. |dock-kwalify| image:: https://badge.imagelayers.io/jcfr/dock-kwalify:latest.svg
  :target: https://imagelayers.io/?images=jcfr/dock-kwalify:latest

jcfr/dock-kwalify
  |dock-kwalify| Dockerized version of kwalify.


Installation
------------

This image does not need to be run manually. Instead, there is a helper script
to execute it.

To install the helper script, copy the script `kwalify` in your `PATH`::

  curl https://raw.githubusercontent.com/jcfr/dock-kwalify/master/kwalify.sh \
    -o ~/bin/kwalify && \
  chmod +x ~/bin/kwalify


Maintainance
------------

To rebuild the image::

  git clone git://github.com/jcfr/dock-kwalify
  make build


To publish the image::

  docker login -u <user> -p <password>
  make push


License
-------

This project is maintained by Jean-Christophe Fillion-Robin from Kitware Inc.

It is covered by the Apache License, Version 2.0:

http://www.apache.org/licenses/LICENSE-2.0

kwalify is distributed under the MIT License.

For more information about Kwalify, visit http://www.kuwata-lab.com/kwalify/


---

Credits go to `sdt/docker-raspberry-pi-cross-compiler <https://github.com/sdt/docker-raspberry-pi-cross-compiler>`_, who invented the base of the dockerized script.
