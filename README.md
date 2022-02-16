# Computer-Vision Vision Application for Food Classification and Calorie Estimation
The aim of this project is to assist people with perfect recognition of what they are
eating along with the calories in the food, so that they are sticking to their diet. There are
many categories of food and under such categories there are similar foods which differ a lot
in their nutritional content and calories. Our project helps one to perfectly identify the food ,
so that they can know the exact amount of calories they are consuming without having to
settle for a mere approximation of miscalculation.
Our project will enable the user to upload the photo of the food they are eating and
according to that, our application will help to classify the food and then estimate the
approximate number of calories in the meal.

## Architecture

![image](https://user-images.githubusercontent.com/72674093/154350210-e4d4cbda-4774-4d3c-abcb-6e803534104f.png)

### Dataset
We have created a food dataset consisting of 1500 categories of food images. Each category consists of food images captured in different angles
and different lighting conditions.

![image](https://user-images.githubusercontent.com/72674093/154350739-cbdcd132-296f-4cd9-9137-a4545afac988.png)

### Feature Extraction
In this project , we have extracted features based
on three features:
1. Colour
2. Shape
3. Texture

### Modelling
We have used here, Support Vector machines for food recognition and classification, then we used 3D plotting method in MATLAB to estimate the number of calories in the food as per the portion size
![image](https://user-images.githubusercontent.com/72674093/154351537-f4cedf67-ba4b-4a9c-85ac-271fe4c8079c.png)
