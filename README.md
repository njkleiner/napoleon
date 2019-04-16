# napoleon

> A file-first, no-database URL shortener

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Installing

Install the dependencies.

`$ bundle install`

### Customizing Redirects

Each file in the [redirects](redirects) directory represents a redirect.
The file's name is the name of the redirect, the file's contents are the target URL.

Add a new redirect from `/example` to `http://example.com`.

`$ touch redirects/example && echo "http://example.com" > redirects/example`

## Deployment

You can use the [Dockerfile](Dockerfile) to build an image for deployment.

## Contributing

This project uses the git branching model [described here](https://nvie.com/posts/a-successful-git-branching-model/).

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/njkleiner/napoleon/tags).

## Authors

* [Noah Kleiner](https://github.com/njkleiner)

See also the list of [contributors](https://github.com/njkleiner/napoleon/contributors) who participated in this project.

## License

This project is licensed under the MIT License. See the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments

* [README template](https://gist.github.com/PurpleBooth/109311bb0361f32d87a2) by [Billie Thompson](https://github.com/PurpleBooth).
* See the [Gemfile](Gemfile) file for a list of libraries used.
