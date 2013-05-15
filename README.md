# Galah Group Website

This is the source code of the website at [galahgroup.com](http://www.galahgroup.com).

## Licensing

The base code for the website was taken from the GitHub template Minimal created by [orderedlist](https://github.com/orderedlist), you can see the repository [here](https://github.com/orderedlist/minimal). Thus this work is licensed under a [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/). This means that if you'd like to use any of the source code in this project you must attribute both [orderedlist](https://github.com/orderedlist) and [Galah Group LLC](http://www.galahgroup.com).

## Testing

If you'd like to simply be able to hack on the website and modify it on your local machine, you can serve it locally easily by executing `utils/serve.sh`. You must have [Jekyll](http://jekyllrb.com/) installed for this to work.

Note that you should be on the branch `master-source`, and not `master` (the `master` branch contains the built website).

## Deploying and Modifying

To deploy to [galahgroup.com](http://www.galahgroup.com) run the `deploy.sh` script in `utils/`. This will build the website and place the built HTML into the `master` branch (note that although project pages should typically be built to `gh-pages`, organization and user pages are built to `master`). After reviewing the changes the script made to ensure nothing is out of place, you can then push your changes to GitHub, at which point GitHub will automatically update the website using whatever magic it has implemented. You must have [Jekyll](http://jekyllrb.com/) installed for this to work.

**Do not** place the website source directly into the `master` branch despite the fact that GitHub has the ability to build Jekyll sites itself. We don't want the limitations that GitHub imposes on you in the long run (namely no using custom extension to Jekyll). We may also want to add additional sites to the build process, such as Sphinx documentation and I want to keep things open in the beginning (especially because it's simple enough to do so).

