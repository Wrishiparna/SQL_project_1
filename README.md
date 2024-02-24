NETFLIX CONTENT – SQL PROJECT

 

About:
We are analysing Netflix's content and performance data to identify high-performing movies and shows, analyse the genres, and understand subscribers behaviour. The primary objective is to identify popular patterns and therefore have a better understanding and prediction of content to put across. The dataset utilized in this project is sourced from the Kaggle Netflix TV Shows and Movies.

Purpose of the project:
The main goal of this project is to gain an understanding from Netflix's dataset, exploring the various factors that help us gain an insight of the same and predict patterns and trends when it comes to Netflix content.

Tools used:
Excel, PostgreSQL


About Data:
This project's data was obtained from the Kaggle Netflix TV Shows and Movies.

Analysis:

Top and bottom 10 content according to IMDB score –
An IMDB score is a widely recognized measure of the overall quality and popularity of a movie or show. The top 10 movies and shows stood out for their exceptional IMDB scores, indicating that they are highly regarded by viewers. These titles have likely garnered significant acclaim and positive reviews, contributing to their high rankings within the Netflix library. Viewers who are seeking quality content would find these selections very appealing. On the other hand, the bottom 10 movies and shows had lower IMDB scores. While these entries may not have resonated as strongly with audiences, it's important to note that many factors influence these rankings such as individual preferences, weak plot, poor acting, and low-quality production. By uncovering the top and bottom performers based on IMDB scores, this project sheds light on the varying levels of audience reception and highlights titles that are likely to be well-received and those that may have room for improvement. These findings can provide valuable insights for viewers seeking highly-rated content and can serve as a basis for further analysis and decision-making for Netflix's audience recommendations.

Impact of age certification on the dataset –
The first query focused on the average IMDB scores associated with each age certification, revealing interesting trends in audience ratings. According to the data, TV-14 emerges as the age certification with the highest average IMDB score of 7.21. This suggests that content designated for viewers aged 14 and older tends to receive relatively favourable ratings. The age certification TV-G obtains an average score of 6.33, signalling the appreciation for content suitable for all audiences. On the other hand, the age certification R obtaining average score of 6.29, demonstrate that while it may have lower rating, there is still a substantial audience that finds enjoyment in this category.
When examining the distribution of movies and shows across age certifications, the second query showcases the varying prevalence of different certifications within Netflix's dataset. R emerges as the most prevalent age certification, with 556 titles falling under this category. PG-13 closely follows with 451 titles, reflecting a significant number of movies and shows targeted at mature audiences. The age certification PG accounts for 233 titles, indicating a considerable selection suitable for general audiences. The dataset also includes 124 titles classified as G, which mostly caters to a younger audience. Lastly, the least represented certification is NC-17, with only 16 titles available. These findings highlight the diverse range of age certifications present in Netflix's movies and shows dataset and provide valuable insights into both audience preferences and content distribution. The higher average scores associated with TV-14, TV-MA, and TV-PG certifications suggest that content aligned with these age categories tends to resonate positively with viewers.

Common genres –
By analysing the frequency of genres, we can gain a better understanding of the content that dominates the platform and the preferences of its audience. Starting with movies, the first query reveals the top 10 most common genres. Comedy emerges as the most popular genre with a total of 384 movies, reflecting its widespread appeal. Following closely behind are documentation with 229 movies and drama with 224 movies, indicating the significance of these genres in Netflix's movie collection. Combinations of genres also feature prominently, with comedy + documentation and comedy + drama occupying the fourth and fifth positions respectively. The presence of drama + romance, drama + comedy, and comedy + romance further emphasizes the audience's likeness for movies that blend multiple genres. These findings highlight the diverse range of movie genres available on Netflix and the platform's commitment to catering to a wide array of preferences.
Shifting the focus, the second query presents the top 10 most common genres for shows. Reality takes the lead with 112 shows, showcasing the popularity of this genre among Netflix viewers. Drama follows closely behind with 102 shows. Comedy and documentation also emerge as prevalent genres with 100 and 98 shows each. Similar to movies, combinations of genres such as comedy + drama and drama + romance are present, indicating viewer interest in multi-genre shows.
Overall, these findings shed light on the genres that dominate Netflix's library, showcasing the platform's efforts to cater to a diverse range of viewer preferences.

Conclusion:
On the basis of above analysis at the end of this project we could get a detailed understanding of Netflix’s various most and least rated content, various actors and directors work, ratings that are widespread, country wise content, popular genres across Netflix. With this insightful and valuable information, we will be able to predict future patterns when it comes to Netflix content and henceforth giving a helping hand to grow the Netflix business to a higher extend.



