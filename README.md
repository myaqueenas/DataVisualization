# DataVisualization
## Visualization sets of Gross Domestic Product per capita, Population and Life expectancy in G20 and European Union countries
### Structured abstract
Population, human life expectancy, and global Gross Domestic Product (GDP) have been rising steadily in human history (Riley, 2001; Lepenies, 2016). The study notes the link between these data. In particular, it could focus on about 40 years of data from G20 countries and EU countries, which account for more than 70 percent of the world’s population, 90 percent of global GDP and more than 80 percent of trade (Teker & Yuksel, 2016). In this study, the trend of each country's GDP per capita is identified by a time series graph and life expectancy data is visualized as a Choropleth Map. It also visualizes and analyses the data with a Scatter plot to identify each association of data. As an example of the identified links, some argue that an increase in personal income (increasing medical expenses) has resulted in an increase in life expectancy (Howard & Odum, 2015), but in many countries in G20 and European Union (EU), an increase in life expectancy has occurred earlier than an increase in personal income. Therefore, it may be appropriate to determine that the increased working hours (increasing life expectancy) have resulted in an increase in personal income (GDP per capita).

### Part 1 Introduction and aims
The current infant mortality rate is significantly lower than in the past, and current medical technology is able to treat many diseases. Then, humans can enjoy old age more than ever (Mackey & Bassendowski, 2017; Case & Deaton, 2015). Human life expectancy has increased, and more humans could exist on Earth (Riley, 2001). Thus, more human Gross Domestic Product (GDP) activities are bound to increase than ever before. As evidenced by this, over the last 200 years, the GDP of many countries has exploded. GDP is not just a numerical representation of a country's economic output, the value of all goods and services, but the strongest statistic in history. Because the rate of change in GDP serves as a key indicator of growth and development, the global economy and global politics are largely defined by GDP (Lepenies, 2016). In other words, The GDP data is likely to contain a variety of information. Also, GPD, population and life expectancy, all of which have grown steadily before (Riley, 2001), may inevitably relate to each other In order to focus and understand their relationships, we need visualization data on the relationship of these data. It could focus on World Bank data from G20 countries and EU countries, which account for more than 65 percent of the world’s population, 85 percent of global GDP (Teker & Yuksel, 2016).
The justification for this study is to present through data visualization the relationship of the three data that seems unrelated but has a close relationship. In addition, the study could help emphasize the importance of extending human life expectancy in order to achieve the development of the global economy and politics.
Clear visualization of these GDP, population and life expectancy data would give a broad understanding of each country's politics and economy (Lepenies, 2016). The purpose of this study is to communicate as much information as possible through data visualization as possible, so that it is as simple as possible, and anyone can recognize it. Furthermore, this study uses R Studio Version 1.2.5001 and packages WDI, dplyr, plotly, DT, googleVis and ggplot2 to integrate command formats and syntax.
A)	Research question:
1)	Can the study find a link between the three by visualizing the data of GDP per capita, population and life expectancy?
B)	Objectives: The visualization process allows us to find a link between the data.
1)	To identify the trend by year of GDP per capita
2)	To identify the life expectancy of each country through a map produced
3)	To identify the life expectancy by year through a Scatter plot and Interactive graph
4)	To identify the life expectancy by GDP per capita through a Scatter plot and Interactive graph
5)	To identify the population by GDP per capita through a Scatter plot and Interactive graph

The study has four benefits: First, the data visualization found in the study could easily help many people understand the economies and societies of major countries (G20 and EU) around the world. Second, as the study emphasizes the importance of data visualization, this study could have a positive impact on data visualization and understanding global economic trends. Third, it could be referenced to studies using other data as well as GDP per capita, population and life expectancy. Finally, those who are new to R could easily copy and understand World Bank data. An overview of the subsection studies is as follows. The first part is about introduction. The explaining the methodology in Part 2. Part 3 describes the results and discussion. The conclusion in Part 4. The last part is about the appendices and reference list.

### Part 2 Methodology
As we looked at above, GDP, population and life expectancy data might be correlated, and this data alone may be able to understand much about the economies and societies of G20 and EU countries (Howard & Odum, 2015; Teker & Yuksel, 2016). Therefore, the purpose of this study is to study the associations of each other by making the above three data simple and easy visualizations that are recognizable to all.
The study would also answer the following questions.
•	Can the study find a link between the three by visualizing the data of GDP per capita, population and life expectancy?

Research Design
The proper philosophy of this research is Pragmatism. It can be said that this philosophy focuses on the use of realistic tools and places importance on practical effects (Saunders, Lewis & Thornhill, 2009). As for quantitative methods, statistics and data of G20 and EU countries are collected statistics from World Bank Data Catalog. Also, this study could visualize these collected statistics and data to find their associations. This study would be a longitudinal inductive method because it establishes hypotheses, analyses visualized data and leads to general principles.

![Figure1](https://github.com/myaqueenas/DataVisualization/blob/main/Figures/Figure%201.PNG)

Console 1-1

The Console 1-1 reveals the packages to use. Using a package (WDI) is easier and faster than downloading directly from the World Bank data catalog website. It is also easier to find the data you want. Such active use of multiple packages could effectively reach your desired research goals.

![Figure2](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%2012.PNG)
![Figure3](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%2013.PNG)

Console 1-2

You could search for data using keywords in WDIsearch. For instance, if you are looking for data on GDP per capita, you may enter it as above. Therefore, in the above way, we could find that the data required for this study is ("NY.GDP.PCAP.CD", # GDP per capita "SP.DYN.LE00.IN", # life expectancy "SP.POP.TOTL" #population).

![Figure4](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%202.PNG)

Console 1-3

The Console 1-3 means to import the data needed in some of these studies from the World Development Indicator (WDI). The names of 43 countries are composed of two-digit alphabets according to the International Organization for Standardization (ISO 3166 Country Codes, n.d.), and for the purposes of this study, 40 years of GDP per capita, life expectancy and population data were extracted from 1977 to 2017.

![Figure5](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%203.PNG)

Console 1-4

It is convenient for users to work on modifying variable names before analysing data. Changing the variable name to an easy-to-understand word makes data easier to handle. Especially, if the variable name is in characters that are hard to remember, change it to an easy word. In respect to the Console 1-4, change the name of the intuitive variable through dplyr to simplify and facilitate the use of the command.

![Figure6](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%2026.PNG)

Console 1-5

To check the contents of the data, you can type and run the data frame name, but it is difficult to read because the screen has too much content. Use head() to print only a portion of the data to view the data. head() outputs up to the first six rows of data.

![Figure7](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%204.PNG)

Console 1-6

Now it is time to check the data from the World Bank collected for the study. select() is used to extract and utilize only some of the numerous variables in the data. Data can be downloaded and used as Excel or PDF.

![Figure8](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%205.PNG)

Figure 1

In Figure 1, you can see that the newly created data frame consists of six columns; countries, regions, years, GDP per capita, life expectancy, and population.

 Data visualization
Data raw materials and statistical tables consist of several numbers and letters, making it difficult to grasp the meaning. Expressing data graphically reveals trends, making it easier to understand features. They also could find new patterns in the process of making graphs. In addition to two-dimensional graphs, R has a variety of packages, including three-dimensional graphs, map graphs, network graphs, motion charts that vary over time, and interactive graphs that respond to mouse operations (Pandey et al., 2017).

 1 GDP per capita by year (Line chart)
Use line graphs primarily to represent data that vary over time.

![Figure9](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%2014.PNG)

Console 2-1

This is the Console 2-1 to see the trend of GDP per capita in each country on a graph. The year is set to be 40 years from 1977 to 2017.

![Figure10](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%2015.PNG)

Console 2-2

However, we can see that 170 missing values exist in the data.

![Figure11](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%2016.PNG)

Console 2-3

Applying is.na() to filter() can remove missing values. First, only cases (rows) with missing values were extracted. The above code only outputs data with values of NY.GDP.PCAP.KD. The above output shows only 170 missing cases in the data.

![Figure12](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%2017.PNG)

Console 2-4

Put 'not' sign !. If this code is applied as above, the rows are extracted except missing values.

![Figure13](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%2018.PNG)

Console 2-5

Generating a data frame from this extracted data completes the data that does not have missing values. Missing values have been removed, so the graph is output normally. On the x-axis, year, which means time, is designated as GDP per capita on the y-axis and added geom_line() to express it as a line graph.

![Figure14](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%2019.PNG)

Figure 2

ggplot2 is the most commonly used package for graph creation. The completed graph using ggplot2 is as shown above. When you look at the printed graph, you can see that the data in many countries has been stagnant or elevated.

2 Map
The above graph is easy to identify trends by year, but we could use another intuitive visualization method, such as a map. A map that describes regional statistics as a difference in colour is called the Choropleth Map. It is easy to understand how different characteristics such as population and income differ from region to region when using the Choropleth map.

![Figure15](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%206.PNG)

Console 3-1

Life expectancy can be expressed on a map using the data given. Colours vary according to life expectancy, making them more intuitive and easier to understand than the table above.

![Figure16](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%207.png)

Figure 3

Put the mouse cursor over the country and it shows the name and life expectancy of country the mouse cursor pointed to. However, the above map is a two-dimensional representation of the Earth using the Mercator's projection and the ground size of each country is distorted (Battersea & Montello, 2009). To overcome this distortion, a globe type map is presented in the following figure in R.

3 Globe
![Figure17](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%208.PNG)

Console 4-1

![Figure18](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%209.png)

Figure 4

The generated globe is almost the same as the previous map, where you can see life expectancy by placing a mouse cursor, but users can move the earth with their mouse and compare the size of the country. We could overcome the distortion of the country's size.

 4 Life expectancy by year (Scatter plot, Interactive graph)
Interactive graphs are graphs in which the shape changes in real time in response to mouse movement. Creating an interactive graph allows you to freely manipulate the graph and examine the areas of interest in it.

4.1 ggplot with ggplotly
![Figure19](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%2010.PNG)

Console 5-1

This Console 5-1 shows the life expectancy by year using ggplot2. The x-axis represents the year and the y-axis represents the life expectancy. Also, different regions have different colours and sizes depending on the population and we add a function geom_point() to draw a scatter plot. dplyr package functions are linked with %>% symbols, while ggplot2 package functions are linked with + symbols.

![Figure20](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%2011.PNG)

Figure 5

As this Figure 4 shows, code execution creates a scatter plot with point marks added to the background. The points shown in the scatter plot represent each observation (row). Each point means a region and country. The graph shows that life expectancy generally increases over time.

4.2 plotly

![Figure21](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%2020.PNG)

Console 6-1

![Figure22](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%2021.png)

Figure 6

This chapter shows the life expectancy by year using plotly. The x-axis represents the year and the y-axis represents the life expectancy. Also, different countries have different colours and sizes depending on the population. It is almost identical to the previous chapter. Hence, details are omitted.

5 Life Expectancy by GDP (Scatter plot, Interactive graph)

![Figure23](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%2022.PNG)

Console 7-1

![Figure24](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%2023.png)

Figure 7

The x-axis represents the GDP and the y-axis represents the life expectancy. Also, different countries have different colours and sizes depending on the population.

6 Population by GDP (Scatter plot, Interactive graph)

![Figure25](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%2024.PNG)

Console 8-1

![Figure26](https://raw.githubusercontent.com/myaqueenas/DataVisualization/696c859d009b22d254ce61d0ade012e0a5dfe11f/Figures/Figure%2025.png)

Figure 8

The x-axis represents the population and the y-axis represents the GDP per capita. Also, different countries have different colours and sizes depending on the population.
				
### Part 3 Results and discussion
We used R to visualize the data on GDP per capita, population and life expectancy in the G20 and EU countries.
The first thing we did was to look at the trends of each country's GDP per capita, and we could observe that most countries achieved an overall rise. However, some data of countries showed a sharp rise, but others did not make a big difference from 40 years ago. Also, while it was easy to identify trends and compare data from countries through graphs, it is not easy to distinguish because it is made up of too many countries. 
Maps can overcome these shortcomings. Maps also provide data from each country, but users can easily obtain information on the location of the country. However, our maps using the Mercator's projection are likely to cause users to misunderstand the size of the country. The map using Mercator's projection is a two-dimensional representation of the spherical earth, and the size of the country is significantly distorted. For example, countries that are closer to the polar region can be seen expanding greatly and countries near the equator shrinking (Battersea & Montello, 2009). The three-dimensional map has no the distortions, but there is an inconvenience in moving the map using the mouse cursor. It is also difficult to express on paper. Therefore, select the map that suits your needs. According to the above map, the life expectancy of advanced countries with high GDP per capita also appears to be high. On the other hand, life expectancy in developing countries is lower overall. The above map allows us to estimate the expectation that there may be a link between per capita GDP and average life expectancy.
As seen in the relationship between life expectancy and year, life expectancy has gradually increased in most regions and countries. This graph we created can be distinguished by colour by country or region and can be estimated by the size of the dots.
Looking at the graph of life expectancy and GDP, you could see that the number of life expectancy and per capita GDP are increasing in most countries. In the 1970s and early 2000s, GDP-related data grew relatively slowly compared to life expectancy, but from the 2000s we can see the rapid growth of GDP data in several countries. In other words, in 1977, most of the values were gathered on the y-axis, but in 2017, the values were scattered over the top of the graph. Judging from the simultaneous rise in both data GDP per capita and life expectancy, some could assume that it may be relevant (Howard & Odum, 2015). In addition, the overall trend, given the fact that life expectancy rises first and GDP per capita rises later, one might not be able to say that the increase in personal income leads to a longer life expectancy. For example, expanding medical expenses (an increase in GDP) may not extend the life span, but it may be argued through this graph that extending the life span would lead to an expansion of working hours. Longer working hours mean more income. Therefore, it may be appropriate to determine that the increased working hours (Extended life expectancy) have resulted in an increase in personal income (GDP per capita).
The graph of population and GDP per capita shows markedly different trends in developing and developed countries. In most advanced countries, only a rise in GDP per capita could be seen, while developing countries could see a rapid increase in population. For developing countries, it may be thought that the overall GDP has increased significantly, but the population has also increased, which appears to be slowing the GDP per capita growth.

 Limitation
The sample size is small. Research, which has a low theoretical background and lacks relevant knowledge, requires a lot of samples for sufficient academic support and establishment (Malterud et. al., 2016). Basic data on GDP, population and life expectancy, along with more related data such as GDP growth rate and infant mortality, would have to be used in research. This research is only an obvious prediction, and because there are many variables, it is difficult to blindly trust this research. Further investigation is also needed into special situations and events in each country.

 Potential Significance
The findings of the study would help visualize and understand basic information about GDP, population and life expectancy in the G20 and the EU countries. Furthermore, historical data from each country may help them design their respective future strategies. Moreover, this study shows the relationship and impact of each data.

### Part 4 Conclusion
To sum up the study, it shows the sets of visualization analysis and the process of R with GDP per capita, population and life expectancy of G20 and EU countries and we could deduce the meaning each visualization gives. For example, GDP per capita, life expectancy, and population data could be used to infer how each data would affect each other during each growth of countries. Ultimately, it identifies the pros and cons of each visualisation method. Studies show that visualisation methods need to be established to suit the purpose of the study. Also, in some countries in the data, working hours can increase as well, as life expectancy increases. Therefore, the increased working hours mean higher incomes (GDP per capita). Also, a sharp increase in the population could be a major challenge to an increase in GDP per capita. However, this is only an obvious prediction, and because there are many variables, it is extremely hard to trust this research.

### Appendices
ISO 3166-1

### References
Case, A., & Deaton, A. (2015). Rising morbidity and mortality in midlife among white non-Hispanic Americans in the 21st century. Proceedings of the National Academy of Sciences, 112(49), 15078-15083

Battersby, S., & Montello, D. (2009). Area Estimation of World Regions and the Projection of the Global-Scale Cognitive Map. Annals Of The Association Of American Geographers, 99(2), 273-291.

Howard, W., & Odum. (2015). Two-way scatter plot and the World Databank (2012) : gross domestic product per capita and average life expectancy. Retrieved from https://dx.doi.org/10.4135/9781473937871

ISO 3166 Country Codes. (n.d.). Retrieved from https://www.iso.org/iso-3166-country-codes.html.

Lepenies, P. (2016). The power of a single number : A political history of gdp. Retrieved from https://ebookcentral.proquest.com

Mackey, A., & Bassendowski, S. (2017). The History of Evidence-Based Practice in Nursing Education and Practice. Journal of Professional Nursing, 33(1), 51-55.

Malterud, K., Siersma, V., & Guassora, A. (2016). Sample Size in Qualitative Interview Studies. Qualitative Health Research, 26(13), 1753-1760. doi: 10.1177/1049732315617444

Pandey, R., Srivastava, N., & Verma, K. (2017). Data visualization through R and Azure for scaling machine training sets. 2017 7th International Conference on Communication Systems and Network Technologies (CSNT), 345-349.

Riley, J. (2001). Rising life expectancy : A global history. Cambridge: Cambridge University Press.

Saunders, M., Lewis, P., & Thornhill, A. (2009). Research methods for business students (5th ed.). Harlow: Pearson Education Limited.

Teker, S., & Yuksel, A. (2016). G20: On Behalf of the Rest? Procedia Economics and Finance, 38(C), 219-223.

World Bank Group - International Development, Poverty, & Sustainability. (n.d.). Retrieved from https://www.worldbank.org/.
