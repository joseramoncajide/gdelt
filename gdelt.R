library(devtools)
devtools::install_github("abresler/gdeltr2")
library(gdeltr2)
load_needed_packages(c('dplyr', 'magrittr'))

test_terms <-
  c('"Brooklyn Nets"', 'El Chapo', '"Hassan Whiteside"', '"EB5"', '"Toy Poodle"')

term_data <- 
  get_data_ft_api_terms(terms = test_terms, max_rows = 10000, only_english = T, domain = NA)

test_domains <- 
  c('realdeal.com', 'nytimes.com', 'curbed.com', 'pehub.com', 'wsj.com')

domain_data <- 
  get_data_ft_api_domains(term = NA, domains = test_domains)

domain_wordcloud <- 
  get_data_wordcloud_ft_api_domains(domains = test_domains, term = NA, tone_more_than = 1)

term_wordcloud <- 
  get_data_wordcloud_ft_api_terms(terms = test_terms, domain = NA)

term_sentiment <-
  get_data_sentiment_ft_api_terms(terms = test_terms, domain = NA )

domain_sentiment <-
  get_data_sentiment_ft_api_domains(domains = test_domains)