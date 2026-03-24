

.onLoad <- function(libname, pkgname){
  # turn off color printing for dumb terminal
  term <- tolower(trimws(Sys.getenv("TERM")))
  # turn off color when NO_COLOR is set
  no_color <- Sys.getenv("NO_COLOR",unset=NA_character_)
  if ( identical(term, "dumb") || 
       identical(no_color, NA_character_)|| identical(no_color, "") ){

    options(tt.pr.color=FALSE)
  }

}


