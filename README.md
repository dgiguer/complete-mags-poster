# Complete and validated genomes poster for Biochemistry poster day

![version_1](poster_version1.png)

The static version is located as a `pdf` in the top level. 

To run the interacative version: 

1) Clone this repository and ensure your working directory is set to the `shiny` directory: 

```
git clone https://github.com/dgiguer/complete_mags_poster.git
cd complete_mags_poster/shiny
```

2) Open R, run the app

```
require(shiny)

runApp("poster_shiny.R")
```

This should launch in your default browser, it has only been tested in Chrome. 
