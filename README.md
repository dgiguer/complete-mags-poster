# Complete and validated genomes poster for Biochemistry poster day

![version_1](version_1.png)

The static version is located as a `pdf` in the top level. 

To run the interacative version on macOS/Linux: 

1) Clone this repository and ensure your working directory is set to the `shiny` directory: 

```
# install git first
git clone https://github.com/dgiguer/complete_mags_poster.git
cd complete_mags_poster/shiny
```

2) Open R, run the app

```
require(shiny)

runApp("poster_shiny.R")
```

This should launch in your default browser, it has only been tested in Chrome. 
