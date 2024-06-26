% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make_names_to_clean_df.R
\name{make_names_to_clean_df}
\alias{make_names_to_clean_df}
\title{Make Names to Clean DF}
\usage{
make_names_to_clean_df(clean_names_df)
}
\arguments{
\item{clean_names_df}{A tibble containing session details and summary metrics
by speaker for all class sessions (and placeholders for missing sections),
including customized student names.}
}
\value{
A tibble containing session details and summary metrics
  by speaker students with transcript recordings but no matching
student id.
}
\description{
This function creates a tibble from the provided tibble containing session details
and summary metrics by speaker for all class sessions (and placeholders for
missing sections), including customized student names, and filters out all
records except for those students with transcript recordings but no matching
student id.
}
\details{
If any names except "dead_air", "unknown", or the instructor's name are listed, resolve them.

  + Update students with their formal name from the roster in your `section_names_lookup.csv`
  + If appropriate, update `section_names_lookup.csv` with a corresponding `preferred_name`
  + Any guest students, label them as "Guests"
}
\examples{
make_names_to_clean_df(
  clean_names_df = make_clean_names_df(
    data_folder = "data",
    section_names_lookup_file = "section_names_lookup.csv",
    transcripts_fliwc_df = fliwc_transcript_files(df_transcript_list = NULL),
    roster_sessions = make_student_roster_sessions(
      transcripts_list_df = join_transcripts_list(
        df_zoom_recorded_sessions = load_zoom_recorded_sessions_list(),
        df_transcript_files = load_transcript_files_list(),
        df_cancelled_classes = load_cancelled_classes()
      ),
      roster_small_df = make_roster_small(
        roster_df = load_roster()
      )
    )
  )
)
}
