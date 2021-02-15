library(WDI) # for accessing World Bank data
library(dplyr)
library(plotly) 
library(DT)
library(googleVis)
library(ggplot2)

# Searching for data

WDIsearch('gdp')
WDIsearch('gdp.*capita.')

# get names of specific indicators from WDI Data Catalog

mydata <- WDI(country=c("JP", "US", "CA", "FR", "DE", "IT", "GB", "MX", "KR", "AU", "TR", "AR", "BR", "CN", "IN", "ID", "RU", "SA", "ZA", "BE", "LU", "NL", "DK", "IE", "GR", "PT", "ES", "AT", "FI", "SE", "CY", "CZ", "EE", "HU", "LV", "LT", "MT", "PL", "SK", "SI", "RO", "BG", "HR"), 
              indicator=c("NY.GDP.PCAP.CD", # GDP
                          "SP.DYN.LE00.IN", # life expectancy
                          "SP.POP.TOTL"), #population
              start = 1977, 
              end = 2017,
              extra = TRUE)

save(mydata, file="WorldBankData.RData")

# rename some variables with dplyr

mydata <- dplyr::rename(mydata, 
                        GDP = NY.GDP.PCAP.CD,
                        life_expectancy = SP.DYN.LE00.IN, 
                        population = SP.POP.TOTL)

mydata$country_name <- mydata$country

mydata$country <-as.factor(mydata$country)

save(mydata, file="WorldBankData.RData")

#Take a Quick Look at the Data

# head(mydata) # look at the data

mydata %>% 
  select(country, 
         region,
         year,
         GDP, 
         life_expectancy, 
         population) %>%
  datatable(rownames = FALSE,
            filter = 'top', 
            extensions = 'Buttons', 
            options = list(
              dom = 'Bfrtip',
              buttons = c('copy', 'csv', 'excel', 'pdf', 'print')),
            caption = 'World Bank Data')

#GDP per capita trend

dat = WDI(indicator='NY.GDP.PCAP.KD', country=c("JP", "US", "CA", "FR", "DE", "IT", "GB", "MX", "KR", "AU", "TR", "AR", "BR", "CN", "IN", "ID", "RU", "SA", "ZA", "BE", "LU", "NL", "DK", "IE", "GR", "PT", "ES", "AT", "FI", "SE", "CY", "CZ", "EE", "HU", "LV", "LT", "MT", "PL", "SK", "SI", "RO", "BG", "HR"), start=1977, end=2017)

is.na(dat)
table(is.na(dat))
table(is.na(dat$NY.GDP.PCAP.KD))
dat %>% filter(is.na(NY.GDP.PCAP.KD))
dat %>% filter(!is.na(NY.GDP.PCAP.KD))
dat_nomiss <- dat %>% filter(!is.na(NY.GDP.PCAP.KD))
ggplot(dat_nomiss, aes(year, NY.GDP.PCAP.KD, color=country)) + geom_line() + 
  xlab('Year') + ylab('GDP per capita')

#Map

mymap <- mydata %>%
  filter(year == 2015) %>%
  plot_geo(locations = ~iso3c,
           color = ~life_expectancy,
           z = ~life_expectancy,
           text = ~country) %>%
  layout(title = "G20 and EU Countries by Life Expectancy in 2015",
         geo = list(showland = FALSE,
                    showcountries = TRUE)) %>%
  colorbar(title = 'life expectancy')

mymap

#Globe

myglobe <- mydata %>%
  filter(year == 2015) %>%
  plot_geo(locations = ~iso3c,
           color = ~life_expectancy,
           z = ~life_expectancy,
           text = ~country) %>%
  layout(title = "G20 and EU Countries by Life Expectancy in 2015",
         geo = list(showland = FALSE,
                    showcountries = TRUE,
                    projection = list(type = 'orthographic',
                                      rotation = list(lon = -30,
                                                      lat = 10,
                                                      roll = 0)))) %>%
  colorbar(title = 'life expectancy')

myglobe

#Life Expectancy by Year

#ggplot with ggplotly

p0 <- ggplot(mydata,
      aes(x = year,
          y = life_expectancy,
          color = region,
          size = population,
          frame = year)) +
  geom_point() +
  labs(title = "Life Expectancy by Year",
       x = "Year",
       y = "Life Expectancy") +
  scale_color_discrete(name = "Region")

ggplotly(p0)

#plotly

p1 <- plot_ly(mydata,
              x = ~year,
              y = ~life_expectancy,
              size = ~population,
              color = ~region,
              frame = ~year,
              text = ~country,
              hoverinfo = "text",
              type = 'scatter',
              mode = 'markers',
              showlegend = FALSE) %>%
  layout(title = "Life Expectancy by Year",
         yaxis = list(title = "life expectancy"))
p1              

#Life Expectancy by GDP

p2 <- plot_ly(mydata,
              x = ~GDP,
              y = ~life_expectancy,
              size = ~population,
              color = ~region,
              frame = ~year,
              text = ~country,
              hoverinfo = "text",
              type = 'scatter',
              mode = 'markers',
              showlegend = FALSE) %>%
  layout(title = "G20 and EU Countries Life Expectancy by GDP",
         yaxis = list(title = "life expectancy"))
p2              

#population by GDP

p3 <- plot_ly(mydata,
              x = ~population,
              y = ~GDP,
              size = ~population,
              color = ~region,
              frame = ~year,
              text = ~country,
              hoverinfo = "text",
              type = 'scatter',
              mode = 'markers',
              showlegend = FALSE) %>%
  layout(title = "Population by GDP",
         yaxis = list(title = "GDP"))
p3              
