# NINA Python template
🚀 Skip the boring setup and jump straight into coding! This template gives you everything you need for a modern Python project - from code formatting to CI/CD - all configured and ready to go.

## Requirements
- [uv](https://github.com/astral-sh/uv) - An extremely fast Python package installer and resolver
- [git](https://git-scm.com/) - Version control system

## How to use it

### Creating a new project
Make sure that `uv` is installed, then run (replace `your-project-name` with your desired project name):

```bash
uvx --with copier_template_extensions copier copy --trust gh:ninanor/template-python your-project-name
```

Answer the questions and you are done.

### Applying to an existing project
To apply this template to an existing project directory:

```bash
cd your-existing-project
uvx --with copier_template_extensions copier copy --trust gh:ninanor/template-python .
```

This will add the template files to your current directory. Be careful as this may overwrite existing files.


## Features
Why should I use this template:

- **Auto formatting and code checking** using `ruff`
- **Updatable template** - Easy to keep up to date with latest practices
- **Visual Studio Code** configurations included
- **Git hooks with prek** for code quality enforcement
- **GitHub Actions** workflows for CI/CD

### Optional features
When creating a project, you can choose from these additional features:
- **Docker** - Add standard files for dockerizing a Python project
- **Type annotations** - Make type annotations mandatory throughout the project
- **Notebook support** - Include Jupyter or Marimo notebook support

## I want the simplest of the templates
Press `Enter` to all questions, you'll get a simple Python project to start with.

**Keep in mind** that you can always change your answers, it's fine if you want to start with something simple and then for example you need Docker. Update the template, change your answers in the survey and you will get the code for that!

## How to update
You just need to run:
```
uvx --with copier_template_extensions copier update --trust --defaults
```

In case you want to change your answers you can drop the `--defaults` flag:
```
uvx --with copier_template_extensions copier update --trust
```

In both cases, copier will try to check differences between your project and the template. It might be necessary to fix some conflicts: in this case it is up to the user to decide whenever to include or reject the improvements of the template into the repository.

Check this [page](https://copier.readthedocs.io/en/stable/updating/) for more specific info about this feature.

## Running prek

[prek](https://prek.j178.dev/) is a fast, Rust-based framework for managing git hooks. It's 100% compatible with pre-commit configs but significantly faster. Git hooks help identify issues in your code before pushing to the repository, such as missing semicolons, trailing whitespace, or unused dependencies.

:sparkles: prek doesn't change the functionality of your code

To run prek on your code, first install prek:

```
uv tool install prek
```

If you have installed the git hooks with `pre-commit` (template version 0.2.6 and older), remove them before installing the ones provided by prek:

```
pre-commit uninstall
```

Then install the git hooks:

```
prek install
```

To run manually on all files:

```
prek run --all-files
```

## Struggling with a template?
Please report any issues you have using the template, even if some documentation is unclear or is missing!


# Development
Install development dependencies:
- **pinact**: `./scripts/install-pinact.sh`

## Testing the template
To test the template using copier-template-tester, run:
```bash
prek run -c prek-extra.toml
```

## Maintenance
To update dependencies and tools:
```bash
./scripts/maintenance.sh
```

## How to version
To create a new release:
```bash
./scripts/release.sh <patch|minor|major>
```

Example:
```bash
./scripts/release.sh minor
```
