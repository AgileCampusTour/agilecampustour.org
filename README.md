# AgileCampusTour

This is the source code of the Sinatra app behind agilecampustour.org

## Prerequisites

* Ruby 1.9.2
* Bundler 1.0.7
* RVM (optional)

## Installation

Clone the repository:

    $ git clone <act_repository_url>
    $ cd AgileCampusTour

If you use RVM, you might want a .rvmrc file:

    rvm use 1.9.2-p0@agilecampustour
 
Install gems:

    $ gem install bundler
    $ bundle install

Run the app:

    $ cd <path_to_act_repository>
    $ rackup
    
## Development

You can use *shotgun* to make the application reload on each request. use it to run the app instead of rackup:

    $ cd <path_to_act_repository>
    $ gem install shotgun
    $ shotgunx

## Deployment

### Setup

We have a staging and production servers, set them up:

    $ cd <path_to_act_repository>
    $ git remote add staging git@heroku.com:agilecampustour-staging.git
    $ git remote add production git@heroku.com:agilecampustour.git
    
### Staging server

The *master* branch should be the only branch to be deployed onto our staging server:

    $ git push staging master
    
### Development server

The *production* branch should be the only branch to be deployed onto our production server:

    $ git push production production:master
    
It is important to specify the remote *master* branch after the column (:); Heroku does not care about other branches.

## License

This source code is released under MIT license.

Copyright © AgileCampusTour.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

The Software is provided "as is", without warranty of any kind, express or implied, including but not limited to the warranties of merchantability, fitness for a particular purpose and noninfringement. In no event shall the authors or copyright holders be liable for any claim, damages or other liability, whether in an action of contract, tort or otherwise, arising from, out of or in connection with the software or the use or other dealings in the Software.
