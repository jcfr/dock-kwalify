dock-kwalify
============

Dockerized version of `kwalify <http://www.kuwata-lab.com/kwalify/>`_: Parser, schema validator, and data binding tool for YAML and JSON.

.. |dock-kwalify| image:: https://images.microbadger.com/badges/image/jcfr/dock-kwalify.svg
  :target: https://microbadger.com/images/jcfr/dock-kwalify

jcfr/dock-kwalify
  |dock-kwalify| Dockerized version of kwalify.


Usage
-----

::

  $ kwalify --help
  kwalify - schema validator and data binding tool for YAML and JSON
  ## Usage1: validate yaml document
  kwalify [..options..] -f schema.yaml doc.yaml [doc2.yaml ...]
  ## Usage2: validate schema definition
  kwalify [..options..] -m schema.yaml [schema2.yaml ...]
  ## Usage3: do action
  kwalify [..options..] -a action -f schema.yaml [schema2.yaml ...]
    -h, --help     : help
    -v             : version
    -q             : quiet
    -s             : silent (obsolete, use '-q' instead)
    -f schema.yaml : schema definition file
    -m             : meta-validation mode
    -t             : expand tab characters
    -l             : show linenumber when errored (experimental)
    -E             : show errors in emacs-style (experimental, implies '-l')
    -a action      : action ('genclass-ruby', 'genclass-php', 'genclass-java')
                     (try '-ha genclass-ruby' for details)
    -I path        : template path (for '-a')
    -P             : allow preceding alias


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
