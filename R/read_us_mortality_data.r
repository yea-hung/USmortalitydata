#' Read US mortality data
#'
#' @param file_path the path to the file
#'
#' @returns a tibble
#' @export
#'
#' @examples
#' ii <- read_us_mortality_data(file_path)
read_us_mortality_data<-function(file_path){

  # define positions
  positions<-list(
    resident.status=c(20,20),
    state.occurrence=c(21,22),
    county.occurrence=c(23,25),
    state.residence=c(29,30),
    county.residence=c(35,37),
    education.1989=c(61,62),
    education.2003=c(63,63),
    education.flag=c(64,64),
    month.of.death=c(65,66),
    sex=c(69,69),
    age=c(70,73),
    age.flag=c(74,74),
    age.recode.52=c(75,76),
    age.recode.27=c(77,78),
    age.recode.12=c(79,80),
    age.recode.22=c(81,82),
    place.of.death=c(83,83),
    marital.status=c(84,84),
    day.of.week.of.death=c(85,85),
    data.year=c(102,105),
    injury.at.work=c(106,106),
    manner.of.death=c(107,107),
    method.of.disposition=c(108,108),
    autopsy=c(109,109),
    activity.code=c(144,144),
    place.of.injury=c(145,145),
    ucod.icd.10=c(146,149),
    ucod.recode.358=c(150,152),
    ucod.recode.113=c(154,156),
    ucod.recode.130=c(157,159),
    ucod.recode.39=c(160,161),
    entity.n=c(163,164),
    entity.1=c(165,171),
    entity.2=c(172,178),
    entity.3=c(179,185),
    entity.4=c(186,192),
    entity.5=c(193,199),
    entity.6=c(200,206),
    entity.7=c(207,213),
    entity.8=c(214,220),
    entity.9=c(221,227),
    entity.10=c(228,234),
    entity.11=c(235,241),
    entity.12=c(242,248),
    entity.13=c(249,255),
    entity.14=c(256,262),
    entity.15=c(263,269),
    entity.16=c(270,276),
    entity.17=c(277,283),
    entity.18=c(284,290),
    entity.19=c(291,297),
    entity.20=c(298,304),
    record.n=c(341,342),
    record.1=c(344,348),
    record.2=c(349,353),
    record.3=c(354,358),
    record.4=c(359,363),
    record.5=c(364,368),
    record.6=c(369,373),
    record.7=c(374,378),
    record.8=c(379,383),
    record.9=c(384,388),
    record.10=c(389,393),
    record.11=c(394,398),
    record.12=c(399,403),
    record.13=c(404,408),
    record.14=c(409,413),
    record.15=c(414,418),
    record.16=c(419,423),
    record.17=c(424,428),
    record.18=c(429,433),
    record.19=c(434,438),
    record.20=c(439,443),
    race=c(445,446),
    race.flag.bridged=c(447,447),
    race.flag.imputation=c(448,448),
    race.recode.3=c(449,449),
    race.recode.5=c(450,450),
    hispanic=c(484,486),
    hispanic.recode=c(488,488),
    race.recode.40=c(489,490),
    occupation.4=c(806,809),
    occupation.2=c(810,811),
    industry.4=c(812,815),
    industry.2=c(816,817)
  )
  
  # extract components
  ss<-sapply(1:length(positions),function(ee){ positions[[ee]][1]} )
  ee<-sapply(1:length(positions),function(ee){ positions[[ee]][2]} )
  nn<-names(positions)
  
  # load data
  readr::read_fwf(ff,fwf_positions(ss,ee,nn))  
  
}