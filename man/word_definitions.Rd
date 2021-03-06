% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/words.R
\name{word_definitions}
\alias{word_definitions}
\title{Retrieve definitions of a word}
\usage{
word_definitions(key, words, use_canonical = FALSE, source_dicts = "all",
  limit = 200, ...)
}
\arguments{
\item{key}{a Wordnik API key. These can be obtained
at the \href{http://developer.wordnik.com/}{Wordnik developer portal}.}

\item{words}{a vector of words.}

\item{use_canonical}{whether to use the stemmed, canonical form of the word
(i.e. 'cat', for 'cats') instead of the actual \code{word}. FALSE by default.
Note that for pronunciations specifically, setting it to TRUE may get a wider
range of pronunciations; you should experiment.}

\item{source_dicts}{the dictionaries to use; options are any permutation of
"ahd", "century", "wiktionary", "wordnet" and "webster". "all" (the default)
searches all of them.}

\item{limit}{the maximum number of items to return for any one word.}

\item{...}{further arguments to pass to httr's GET.}
}
\value{
a list structure containing definitions for each word in \code{words},
along with associated metadata, which can be manipulated with
\code{\link{birdnik_get}}.
}
\description{
\code{word_definitions} retrieves the overall metadata for
each word in \code{words}, including actual definitions.
}
\examples{
\dontrun{
cats <- word_definitions(key = "madeupkey", words = "cat")
}
}
\seealso{
\code{\link{birdnik_get}} for ways to conveniently access individual
chunks of the returned dataset.
}

