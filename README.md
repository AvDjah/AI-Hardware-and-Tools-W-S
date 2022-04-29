# AI-Hardware-and-Tools-W-S

## [Project 1 Tiny ML](/Project%201)
- **Objective**: To make a Rock-Paper-Scissors playing Python bot where you can gesture and play
- **Description**: We made a Rock-Paper-Scissors playing bot in Python which plays along with you. The gestures you make on the webcam get interpreted as Rock, Paper or Scissors and subsequently, the bot makes a move. The winner is decided according to the rules of the game. We then made a TFLite model, ready to be deployed on smaller edge-devices which are low on processing power.
- **Technologies Used**: We used TensorFlow to train a convolutional neural network to recognise three classes, Rock, Paper or Scissors. We then converted the model into a TFLite model ready to be deployed on edge-devices (TinyML).
- **Implementation**: The details to the implementation can be found in the code. We pre-processed the [dataset](https://www.kaggle.com/datasets/sanikamal/rock-paper-scissors-dataset) and augmented it. After that we scaled down the images to 64\*64\*3. We used rougly 2500 images for training and around 400 to test the model on. We chose the batch size to be 64.
- **Screenshots**:
  - ![SS1](https://user-images.githubusercontent.com/55156702/165948603-59866345-2efd-404d-87f7-a020589b65e9.png)
  - ![SS2](https://user-images.githubusercontent.com/55156702/165948628-dfa30080-f34f-4059-b647-c666a0ccb87e.png)
  - ![SS3](https://user-images.githubusercontent.com/55156702/165948648-9b3e38be-3172-434b-b630-3c7e6885edd0.png)
- **Result**: Our trained dataset performs well on the test set (>85% accuracy) and the TFLite model is <10 Mb in size, which is easily deployable to edge-devices.

## [Project 2 R Project](/Project%202)
- **Objective**: To analyze and visualize the [Nobel Prize Winners Dataset](https://www.kaggle.com/datasets/imdevskp/nobel-prize?resource=download) in R Studio.
- **Description**: We first analyze the analyze the top values and the fields. The dataset was missing an `age` field, therefore we added it as `nobel_age <- nobel %>% mutate(age = awardYear - year(birth_date))`. After that we plot the dataset along various dimensions and views, generating valuable insights on the available data.
- **Technologies Used**: We used the R language to visualize the dataset and perform analysis on it. We also used `tidyverse` and `lubridate` packages to help visualize the dataset better.
- **Implementation**: The details to the implementation can be found in the code. We pre-processed the dataset as described above. After that we generated the insights and visualizations as follows. We also compared and visualized where India stood on the world stage. A few of the visualizations can be seen below.
- **Screenshots**:
  - <img width="1440" alt="image" src="https://user-images.githubusercontent.com/55156702/165945818-33a24ffd-f432-489e-9675-945ccc61d103.png">
  - <img width="1440" alt="image" src="https://user-images.githubusercontent.com/55156702/165945888-5c5f3dbb-0a8e-4fca-9a8e-82577a55c48e.png">
  - <img width="1440" alt="image" src="https://user-images.githubusercontent.com/55156702/165945980-dbc57c9f-3156-4a8d-bb6d-8054f51b018a.png">
- **Result**: We see a clear trend in ages and genders across the years in various categories. Along with that, we see where India stands on the world stage and USA's monopoly on the Nobel Prizes.

## [Project 3 PowerBI](/Project%203)
- **Objective**: To perform exploratory data analysis on the same Nobel Prize Winners Dataset we used in the previous project using PowerBI
- **Description**: We used PowerBI to analyze the Nobel Prize Winners Dataset along the same lines as performed above. We chose countries and genders as the parameters to visualize the factors such as winners and prize money won by the winners across years.
- **Technologies Used**: We used PowerBI to generate a "data story"
- **Implementation**: The details to the implementation can be found in the code. We pre-processed the [dataset](https://www.kaggle.com/datasets/sanikamal/rock-paper-scissors-dataset) and augmented it. After that we scaled down the images to 64\*64.
- **Screenshots**:
  - ![ss1 (1)](https://user-images.githubusercontent.com/55156702/165948974-0e04e7ab-ef7e-4876-9e59-5917d771c9d9.png)
  - ![SS2 (1)](https://user-images.githubusercontent.com/55156702/165949000-59fa6b92-1b3b-408d-a563-321a26e481d7.png)
  - ![ss3 (1)](https://user-images.githubusercontent.com/55156702/165949029-138717dd-c0d6-4fe9-98a5-fbc883b7030f.png)
- **Result**: 

## [Project 4 PySpark Project](/Project%204)
- **Objective**: To perform data analysis on the Indian Diabetes dataset using Apache Spark.
- **Description**: We made a Rock-Paper-Scissors playing bot in Python which plays along with you. The gestures you make on the webcam get interpreted as Rock, Paper or Scissors and subsequently, the bot makes a move. The winner is decided according to the rules of the game. We then made a TFLite model, ready to be deployed on smaller edge-devices which are low on processing power.
- **Technologies Used**: We used TensorFlow to train a convolutional neural network to recognise three classes, Rock, Paper or Scissors. We then converted the model into a TFLite model ready to be deployed on edge-devices (TinyML).
- **Implementation**: The details to the implementation can be found in the code. We create a spark session using the `sparksession.builder` and after that, we read the dataset using PySpark's inbuilt reader. Using pyspark’s sql functions, we pre-process all the string values to float values. The dataset had features such as glucose levels, blood pressure, skin thickness, insulin levels, BMI etc. Then we converted all the features into a feature vector using the `VectorAssembler` and used that as our input data. After that, we split it into test and training, 70-30%. Finally, we fit a logistic regression model on it, achieving greater than 80% accuracy
- **Screenshots**:
  - ![ss1](https://user-images.githubusercontent.com/55156702/165948828-7f74fcb0-e127-463b-a9e3-f371a8db0205.jpeg)
  - ![ss2](https://user-images.githubusercontent.com/55156702/165948851-8727ca8a-ae3c-469e-90fa-709314dce72e.jpeg)
- **Result**: Our model trained solely on PySpark library achieved >80% accuracy on the Indian Diabetes Dataset. Since this is built on top of Apache Spark, we can easily use Spark's distributed database to source data from various data centres in India and perform the analysis locally.

## [Project 5 DevOps](/Project%205)
![image](https://user-images.githubusercontent.com/55156702/165943994-df4e5120-145f-4618-b4f2-59f21508fbc6.png)

- **Objective**: To containerize an application made by us to be deployed and run easily on other machines.
- **Description**: We dockerized a React Application [SQLVerse](https://github.com/gairTanm/sqlverse). Since Docker is a software platform that simplifies the process of building, running, managing and distributing applications, it does this by virtualizing the operating system of the computer on which it is installed and running, our application can easily run on various machines, regardless of the architecture of the machine it's running on.
- **Technologies Used**: We used Docker to containerize the application and make it easily deployable on various machines and operating systems.
- **Implementation**: The details to the implementation can be found in the code. We pre-processed the [dataset](https://www.kaggle.com/datasets/sanikamal/rock-paper-scissors-dataset) and augmented it. After that we scaled down the images to 64\*64.
- **Screenshots**:
  - ![image](https://user-images.githubusercontent.com/55156702/165949158-c858a56c-c473-4f5a-8746-e911de93220b.png)
- **Result**: 
