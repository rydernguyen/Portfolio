library(rvest)
library(readr)
library(tidyverse)
simple <- read_html("https://www.linkedin.com/jobs/view/1956850545/?refId=2deac8d0-120b-4bfc-a328-b61a0741366e&midToken=AQFuKXuIY16RvA&trk=eml-email_jobs_viewed_job_reminder_01-similar_jobs-27-similar%7Ejob%7Etitle&trkEmail=eml-email_jobs_viewed_job_reminder_01-similar_jobs-27-similar%7Ejob%7Etitle-null-3goqwt%7Ekcxw8jef%7Exj-null-jobs%7Eview")
simple

simple %>%
  html_nodes("ul","li") %>%
  html_text()


pg <- read_html("https://www.linkedin.com/jobs/view/1947998122/?alternateChannel=paview&alternateCode=seturl&eBP=CwEAAAFzfulvlxPsJ-Jjqoaa0bXGluHNqWpoF708f4l7VSROJUCvLtSJYFdYzDHD1jB0P2hegAq6F-G8pXU1zqTbJfCO-YbfHYKgOiJtyARoi6NGK5MS1nCLRr7I88R3Fgnoev65sjDfP_s5Kgz7-LVPyyu-2mtChrZ-MOSuDqm-iSPS-K4_taClBHeciONx_hLrWRQhQdD28uvRUTXUwHtjTD5OvuUXIpYWPDGx_-lyekpOIY16e-IZfQtJRfCORwNm3ZBZcgG_4PxB8N_JZFPU4T2NS5m6QmG8FqIOoimfOH8wy3C78KQOUFJOeuY4hKMDZKRHrE_aneg6Jx-e0IzMgahsJ1AiPFMi9EK4EXjZ8Yhha8uRkDhkaZQRUq2a_Y0wtVmtr6cs&refId=52c2bb6d-2973-4034-b31e-4a86c0ee0802&trk=d_flagship3_job_details")     

txt <- pg %>% html_nodes("jobs-box__html-content.jobs-description-content__text.t-14.t-normal > span > p") %>% html_text()
txt

txt <- pg %>% html_nodes("#ember15 > article > div > div > span > p > strong ") %>% html_text()
txt

txt <- pg %>% html_nodes("#artdeco-toasts__wormhole > section:#artdeco-toasts.artdeco-toasts>header:.artdeco-toasts__header>h2:.artdeco-toasts__title") %>% html_text()
txt

txt <- pg %>% html_nodes("#artdeco-toasts__wormhole > section > header > h2") %>% html_text()
txt

txt <- pg %>% html_nodes("div#artdeco-toasts__wormhole > section > header > h2") %>% html_text()
txt
#jobs-details


scraping_wiki <- read_html("https://en.wikipedia.org/wiki/Web_scraping")

body_text <- scraping_wiki %>%
  html_nodes(".reflist") %>% 
  html_text()

scraping_wiki %>%
  html_nodes("#mw-content-text > div > p > b") %>% 
  html_text()