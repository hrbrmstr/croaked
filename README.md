
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Signed
by](https://img.shields.io/badge/Keybase-Verified-brightgreen.svg)](https://keybase.io/hrbrmstr)
![Signed commit
%](https://img.shields.io/badge/Signed_Commits-100%25-lightgrey.svg)
[![R-CMD-check](https://github.com/hrbrmstr/croaked/workflows/R-CMD-check/badge.svg)](https://github.com/hrbrmstr/croaked/actions?query=workflow%3AR-CMD-check)
[![Linux build
Status](https://travis-ci.org/hrbrmstr/croaked.svg?branch=master)](https://travis-ci.org/hrbrmstr/croaked)
[![Coverage
Status](https://codecov.io/gh/hrbrmstr/croaked/branch/master/graph/badge.svg)](https://codecov.io/gh/hrbrmstr/croaked)
![Minimal R
Version](https://img.shields.io/badge/R%3E%3D-3.6.0-blue.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

# croaked

Tools to Query the endoflife.date Service

## Description

The endoflife.date site is a community-maintained project to document
end-of-life dates, and support lifecycles of various products. Tools are
provided to query this end-of-life metadata.

## What’s Inside The Tin

The following functions are implemented:

-   `all_details`: Get All Details
-   `available_products`: Retrieve a list of tracked products
-   `cycle_details`: Single cycle details

## Installation

``` r
remotes::install_github("hrbrmstr/croaked")
```

NOTE: To use the ‘remotes’ install options you will need to have the
[{remotes} package](https://github.com/r-lib/remotes) installed.

## Usage

``` r
library(croaked)

# current version
packageVersion("croaked")
## [1] '0.1.0'
```

``` r
available_products()
##   [1] "alpine"                   "amazon-eks"               "amazon-linux"             "android"                 
##   [5] "angular"                  "ansible"                  "apache"                   "api-platform"            
##   [9] "blender"                  "bootstrap"                "centos"                   "cfengine"                
##  [13] "citrix-vad"               "coldfusion"               "composer"                 "consul"                  
##  [17] "cortexxdr"                "couchbase-server"         "debian"                   "django"                  
##  [21] "docker-engine"            "dotnet"                   "dotnetfx"                 "drupal"                  
##  [25] "elasticsearch"            "electron"                 "elixir"                   "emberjs"                 
##  [29] "esxi"                     "fedora"                   "ffmpeg"                   "filemaker"               
##  [33] "firefox"                  "freebsd"                  "gitlab"                   "go"                      
##  [37] "godot"                    "google-kubernetes-engine" "haproxy"                  "horizon"                 
##  [41] "iphone"                   "java"                     "jquery"                   "kindle"                  
##  [45] "kotlin"                   "kubernetes"               "laravel"                  "lineageos"               
##  [49] "linux"                    "linuxmint"                "log4j"                    "looker"                  
##  [53] "macos"                    "magento"                  "mariadb"                  "mediawiki"               
##  [57] "mongodb"                  "moodle"                   "msexchange"               "mssqlserver"             
##  [61] "mysql"                    "nginx"                    "nodejs"                   "nomad"                   
##  [65] "nvidia"                   "nvidia-gpu"               "office"                   "openbsd"                 
##  [69] "opensuse"                 "openzfs"                  "pangp"                    "panos"                   
##  [73] "perl"                     "php"                      "pixel"                    "postgresql"              
##  [77] "powershell"               "python"                   "qt"                       "rabbitmq"                
##  [81] "rails"                    "redis"                    "rhel"                     "rocky-linux"             
##  [85] "ros"                      "roundcube"                "ruby"                     "samsung-mobile"          
##  [89] "sles"                     "splunk"                   "spring-framework"         "surface"                 
##  [93] "symfony"                  "ubuntu"                   "unity"                    "visualstudio"            
##  [97] "wagtail"                  "windows"                  "windowsembedded"          "windowsserver"           
## [101] "yocto"

all_details("macos")
##                       cycle    release        eol                               link
## 1       macOS 12 (Monterey) 2021-10-25      FALSE https://support.apple.com/HT212585
## 2        macOS 11 (Big Sur) 2020-11-12      FALSE https://support.apple.com/HT211896
## 3    macOS 10.15 (Catalina) 2019-10-07      FALSE https://support.apple.com/HT210642
## 4      macOS 10.14 (Mojave) 2018-09-24 2021-10-25                               <NA>
## 5 macOS 10.13 (High Sierra) 2017-09-25 2020-12-01                               <NA>
## 6      macOS 10.12 (Sierra) 2016-09-20 2019-10-01                               <NA>
## 7   OS X 10.11 (El Capitan) 2015-09-30 2018-12-01                               <NA>
## 8     OS X 10.10 (Yosemite) 2014-10-16 2017-08-01                               <NA>
## 9     OS X 10.9 (Mavericks) 2013-10-22 2016-12-01                               <NA>

cycle_details("python", "3.9")
## $release
## [1] "2020-10-05"
## 
## $eol
## [1] "2025-10-05"
## 
## $latest
## [1] "3.9.11"
```

## croaked Metrics

| Lang | \# Files |  (%) | LoC |  (%) | Blank lines |  (%) | \# Lines |  (%) |
|:-----|---------:|-----:|----:|-----:|------------:|-----:|---------:|-----:|
| YAML |        2 | 0.12 |  35 | 0.22 |          10 | 0.11 |        2 | 0.01 |
| R    |        5 | 0.31 |  34 | 0.21 |          19 | 0.20 |       39 | 0.27 |
| Rmd  |        1 | 0.06 |  11 | 0.07 |          18 | 0.19 |       30 | 0.21 |
| SUM  |        8 | 0.50 |  80 | 0.50 |          47 | 0.50 |       71 | 0.50 |

clock Package Metrics for croaked

## Code of Conduct

Please note that this project is released with a Contributor Code of
Conduct. By participating in this project you agree to abide by its
terms.
