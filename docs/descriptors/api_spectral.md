---
title: spectral configuration in MegaLinter
description: How to use spectral (configure, ignore files, ignore errors, help & version documentations) to analyze API files
---
<!-- markdownlint-disable MD033 MD041 -->
<!-- @generated by .automation/build.py, please don't update manually -->

<div align="center">
  <a href="https://docs.stoplight.io/docs/spectral/674b27b261c3c-overview" target="blank" title="Visit linter Web Site">
    <img src="https://github.com/stoplightio/spectral/raw/develop/docs/img/spectral-banner.png" alt="spectral" height="150px" class="megalinter-banner">
  </a>
</div>

[![GitHub stars](https://img.shields.io/github/stars/stoplightio/spectral?cacheSeconds=3600)](https://github.com/stoplightio/spectral) [![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/stoplightio/spectral?sort=semver)](https://github.com/stoplightio/spectral/releases) [![GitHub last commit](https://img.shields.io/github/last-commit/stoplightio/spectral)](https://github.com/stoplightio/spectral/commits) [![GitHub commit activity](https://img.shields.io/github/commit-activity/y/stoplightio/spectral)](https://github.com/stoplightio/spectral/graphs/commit-activity/) [![GitHub contributors](https://img.shields.io/github/contributors/stoplightio/spectral)](https://github.com/stoplightio/spectral/graphs/contributors/)

## spectral documentation

- Version in MegaLinter: **6.11.1**
- Visit [Official Web Site](https://docs.stoplight.io/docs/spectral/674b27b261c3c-overview){target=_blank}
- See [How to configure spectral rules](https://docs.stoplight.io/docs/spectral/9ffa04e052cc1-spectral-cli#using-a-ruleset-file){target=_blank}
  - If custom `.spectral.yaml` config file isn't found, [.spectral.yaml](https://github.com/oxsecurity/megalinter/tree/main/TEMPLATES/.spectral.yaml){target=_blank} will be used
- See [Index of problems detected by spectral](https://docs.stoplight.io/docs/spectral/4dec24461f3af-open-api-rules){target=_blank}

[![spectral - GitHub](https://gh-card.dev/repos/stoplightio/spectral.svg?fullname=)](https://github.com/stoplightio/spectral){target=_blank}

## Configuration in MegaLinter

- Enable spectral by adding `API_SPECTRAL` in [ENABLE_LINTERS variable](https://megalinter.io/7.12.0/configuration/#activation-and-deactivation)
- Disable spectral by adding `API_SPECTRAL` in [DISABLE_LINTERS variable](https://megalinter.io/7.12.0/configuration/#activation-and-deactivation)

| Variable                                 | Description                                                                                                                                                                                  | Default value                                   |
|------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------|
| API_SPECTRAL_ARGUMENTS                   | User custom arguments to add in linter CLI call<br/>Ex: `-s --foo "bar"`                                                                                                                     |                                                 |
| API_SPECTRAL_COMMAND_REMOVE_ARGUMENTS    | User custom arguments to remove from command line before calling the linter<br/>Ex: `-s --foo "bar"`                                                                                         |                                                 |
| API_SPECTRAL_FILTER_REGEX_INCLUDE        | Custom regex including filter<br/>Ex: `(src\|lib)`                                                                                                                                           | Include every file                              |
| API_SPECTRAL_FILTER_REGEX_EXCLUDE        | Custom regex excluding filter<br/>Ex: `(test\|examples)`                                                                                                                                     | Exclude no file                                 |
| API_SPECTRAL_CLI_LINT_MODE               | Override default CLI lint mode<br/>- `file`: Calls the linter for each file<br/>- `project`: Call the linter from the root of the project                                                    | `file`                                          |
| API_SPECTRAL_FILE_EXTENSIONS             | Allowed file extensions. `"*"` matches any extension, `""` matches empty extension. Empty list excludes all files<br/>Ex: `[".py", ""]`                                                      | `[".yml", ".yaml", ".json"]`                    |
| API_SPECTRAL_FILE_NAMES_REGEX            | File name regex filters. Regular expression list for filtering files by their base names using regex full match. Empty list includes all files<br/>Ex: `["Dockerfile(-.+)?", "Jenkinsfile"]` | Include every file                              |
| API_SPECTRAL_PRE_COMMANDS                | List of bash commands to run before the linter                                                                                                                                               | None                                            |
| API_SPECTRAL_POST_COMMANDS               | List of bash commands to run after the linter                                                                                                                                                | None                                            |
| API_SPECTRAL_UNSECURED_ENV_VARIABLES     | List of env variables explicitly not filtered before calling API_SPECTRAL and its pre/post commands                                                                                          | None                                            |
| API_SPECTRAL_CONFIG_FILE                 | spectral configuration file name</br>Use `LINTER_DEFAULT` to let the linter find it                                                                                                          | `.spectral.yaml`                                |
| API_SPECTRAL_RULES_PATH                  | Path where to find linter configuration file                                                                                                                                                 | Workspace folder, then MegaLinter default rules |
| API_SPECTRAL_DISABLE_ERRORS              | Run linter but consider errors as warnings                                                                                                                                                   | `false`                                         |
| API_SPECTRAL_DISABLE_ERRORS_IF_LESS_THAN | Maximum number of errors allowed                                                                                                                                                             | `0`                                             |
| API_SPECTRAL_CLI_EXECUTABLE              | Override CLI executable                                                                                                                                                                      | `['spectral']`                                  |

## IDE Integration

Use spectral in your favorite IDE to catch errors before MegaLinter !

|                                                                   <!-- -->                                                                   | IDE                                                  | Extension Name                                                    |                                     Install                                     |
|:--------------------------------------------------------------------------------------------------------------------------------------------:|------------------------------------------------------|-------------------------------------------------------------------|:-------------------------------------------------------------------------------:|
| <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/icons/default.ico" alt="" height="32px" class="megalinter-icon"></a> | stoplight                                            | [Native integration](https://stoplight.io/studio)                 |          [Visit Web Site](https://stoplight.io/studio){target=_blank}           |
| <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/icons/vscode.ico" alt="" height="32px" class="megalinter-icon"></a>  | [Visual Studio Code](https://code.visualstudio.com/) | [vscode-spectral](https://github.com/stoplightio/vscode-spectral) | [Visit Web Site](https://github.com/stoplightio/vscode-spectral){target=_blank} |

## MegaLinter Flavours

This linter is available in the following flavours

|                                                                         <!-- -->                                                                         | Flavor                                                               | Description                                              | Embedded linters |                                                                                                                                                                                                      Info |
|:--------------------------------------------------------------------------------------------------------------------------------------------------------:|:---------------------------------------------------------------------|:---------------------------------------------------------|:----------------:|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/images/mega-linter-square.png" alt="" height="32px" class="megalinter-icon"></a> | [all](https://megalinter.io/7.12.0/supported-linters/)               | Default MegaLinter Flavor                                |       124        |                             ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/oxsecurity/megalinter/v7.12.0) ![Docker Pulls](https://img.shields.io/docker/pulls/oxsecurity/megalinter) |
|        <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/icons/c_cpp.ico" alt="" height="32px" class="megalinter-icon"></a>        | [c_cpp](https://megalinter.io/7.12.0/flavors/c_cpp/)                 | Optimized for pure C/C++ projects                        |        54        |                 ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/oxsecurity/megalinter-c_cpp/v7.12.0) ![Docker Pulls](https://img.shields.io/docker/pulls/oxsecurity/megalinter-c_cpp) |
|    <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/icons/documentation.ico" alt="" height="32px" class="megalinter-icon"></a>    | [documentation](https://megalinter.io/7.12.0/flavors/documentation/) | MegaLinter for documentation projects                    |        50        | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/oxsecurity/megalinter-documentation/v7.12.0) ![Docker Pulls](https://img.shields.io/docker/pulls/oxsecurity/megalinter-documentation) |
|       <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/icons/dotnet.ico" alt="" height="32px" class="megalinter-icon"></a>        | [dotnet](https://megalinter.io/7.12.0/flavors/dotnet/)               | Optimized for C, C++, C# or VB based projects            |        62        |               ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/oxsecurity/megalinter-dotnet/v7.12.0) ![Docker Pulls](https://img.shields.io/docker/pulls/oxsecurity/megalinter-dotnet) |
|      <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/icons/dotnetweb.ico" alt="" height="32px" class="megalinter-icon"></a>      | [dotnetweb](https://megalinter.io/7.12.0/flavors/dotnetweb/)         | Optimized for C, C++, C# or VB based projects with JS/TS |        71        |         ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/oxsecurity/megalinter-dotnetweb/v7.12.0) ![Docker Pulls](https://img.shields.io/docker/pulls/oxsecurity/megalinter-dotnetweb) |
|         <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/icons/go.ico" alt="" height="32px" class="megalinter-icon"></a>          | [go](https://megalinter.io/7.12.0/flavors/go/)                       | Optimized for GO based projects                          |        52        |                       ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/oxsecurity/megalinter-go/v7.12.0) ![Docker Pulls](https://img.shields.io/docker/pulls/oxsecurity/megalinter-go) |
|        <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/icons/java.ico" alt="" height="32px" class="megalinter-icon"></a>         | [java](https://megalinter.io/7.12.0/flavors/java/)                   | Optimized for JAVA based projects                        |        53        |                   ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/oxsecurity/megalinter-java/v7.12.0) ![Docker Pulls](https://img.shields.io/docker/pulls/oxsecurity/megalinter-java) |
|     <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/icons/javascript.ico" alt="" height="32px" class="megalinter-icon"></a>      | [javascript](https://megalinter.io/7.12.0/flavors/javascript/)       | Optimized for JAVASCRIPT or TYPESCRIPT based projects    |        60        |       ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/oxsecurity/megalinter-javascript/v7.12.0) ![Docker Pulls](https://img.shields.io/docker/pulls/oxsecurity/megalinter-javascript) |
|         <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/icons/php.ico" alt="" height="32px" class="megalinter-icon"></a>         | [php](https://megalinter.io/7.12.0/flavors/php/)                     | Optimized for PHP based projects                         |        55        |                     ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/oxsecurity/megalinter-php/v7.12.0) ![Docker Pulls](https://img.shields.io/docker/pulls/oxsecurity/megalinter-php) |
|       <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/icons/python.ico" alt="" height="32px" class="megalinter-icon"></a>        | [python](https://megalinter.io/7.12.0/flavors/python/)               | Optimized for PYTHON based projects                      |        63        |               ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/oxsecurity/megalinter-python/v7.12.0) ![Docker Pulls](https://img.shields.io/docker/pulls/oxsecurity/megalinter-python) |
|        <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/icons/ruby.ico" alt="" height="32px" class="megalinter-icon"></a>         | [ruby](https://megalinter.io/7.12.0/flavors/ruby/)                   | Optimized for RUBY based projects                        |        51        |                   ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/oxsecurity/megalinter-ruby/v7.12.0) ![Docker Pulls](https://img.shields.io/docker/pulls/oxsecurity/megalinter-ruby) |
|        <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/icons/rust.ico" alt="" height="32px" class="megalinter-icon"></a>         | [rust](https://megalinter.io/7.12.0/flavors/rust/)                   | Optimized for RUST based projects                        |        51        |                   ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/oxsecurity/megalinter-rust/v7.12.0) ![Docker Pulls](https://img.shields.io/docker/pulls/oxsecurity/megalinter-rust) |
|     <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/icons/salesforce.ico" alt="" height="32px" class="megalinter-icon"></a>      | [salesforce](https://megalinter.io/7.12.0/flavors/salesforce/)       | Optimized for Salesforce based projects                  |        55        |       ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/oxsecurity/megalinter-salesforce/v7.12.0) ![Docker Pulls](https://img.shields.io/docker/pulls/oxsecurity/megalinter-salesforce) |
|        <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/icons/swift.ico" alt="" height="32px" class="megalinter-icon"></a>        | [swift](https://megalinter.io/7.12.0/flavors/swift/)                 | Optimized for SWIFT based projects                       |        51        |                 ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/oxsecurity/megalinter-swift/v7.12.0) ![Docker Pulls](https://img.shields.io/docker/pulls/oxsecurity/megalinter-swift) |
|      <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/icons/terraform.ico" alt="" height="32px" class="megalinter-icon"></a>      | [terraform](https://megalinter.io/7.12.0/flavors/terraform/)         | Optimized for TERRAFORM based projects                   |        55        |         ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/oxsecurity/megalinter-terraform/v7.12.0) ![Docker Pulls](https://img.shields.io/docker/pulls/oxsecurity/megalinter-terraform) |

## Behind the scenes

### How are identified applicable files

- File extensions: `.yml`, `.yaml`, `.json`
- Detected file content (regex): `"asyncapi":`, `"openapi":`, `"swagger":`, `asyncapi:`, `openapi:`, `swagger:`

<!-- markdownlint-disable -->
<!-- /* cSpell:disable */ -->
### How the linting is performed

- spectral is called one time by identified file (`file` CLI lint mode)

### Example calls

```shell
spectral lint myfile.yml
```

```shell
spectral lint -r .spectral.yaml myfile.yml
```


### Help content

```shell
spectral lint [documents..]

lint JSON/YAML documents from files or URLs

Positionals:
  documents  Location of JSON/YAML documents. Can be either a file, a glob or fetchable resource(s) on the web.  [array] [default: []]

Options:
      --version                  Show version number  [boolean]
      --help                     Show help  [boolean]
  -e, --encoding                 text encoding to use  [string] [choices: "utf8", "ascii", "utf-8", "utf16le", "ucs2", "ucs-2", "base64", "latin1"] [default: "utf8"]
  -f, --format                   formatters to use for outputting results, more than one can be provided by using multiple flags  [string] [choices: "json", "stylish", "junit", "html", "text", "teamcity", "pretty", "github-actions", "sarif"] [default: "stylish"]
  -o, --output                   where to output results, can be a single file name, multiple "output.<format>" or missing to print to stdout  [string]
      --stdin-filepath           path to a file to pretend that stdin comes from  [string]
      --resolver                 path to custom json-ref-resolver instance  [string]
  -r, --ruleset                  path/URL to a ruleset file  [string]
  -F, --fail-severity            results of this level or above will trigger a failure exit code  [string] [choices: "error", "warn", "info", "hint"] [default: "error"]
  -D, --display-only-failures    only output results equal to or greater than --fail-severity  [boolean] [default: false]
      --ignore-unknown-format    do not warn about unmatched formats  [boolean] [default: false]
      --fail-on-unmatched-globs  fail on unmatched glob patterns  [boolean] [default: false]
  -v, --verbose                  increase verbosity  [boolean]
  -q, --quiet                    no logging - output only  [boolean]
```

### Installation on mega-linter Docker image

- NPM packages (node.js):
  - [@stoplight/spectral-cli](https://www.npmjs.com/package/@stoplight/spectral-cli)