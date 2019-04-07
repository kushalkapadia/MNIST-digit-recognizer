# MNIST-digit-recognizer

## Still ongoing!!

Here is what I'm upto:

Featuring engineering for making tree ensemble methods Like Extreme Gradient Boosting competitive with Convolutional Neural Networks (CNN) on classification tasks.

Some detailing about the Project here:

## Dataset: MNIST digit reognizer

![image](https://user-images.githubusercontent.com/33611104/55599031-a15c9700-570a-11e9-9677-d7cf6b8c7e22.png)

## Sequential CNN Architechture:

Input -> [[Conv2D->ReLu]*2 -> MaxPool2D -> Dropout]*2 -> Flatten -> Dense -> Dropout -> Output

loss='categorical_crossentropy'

optimizer='adadelta'

metrics=['accuracy']

# Overall accuracy of 98.50% is achieved using Xgb to classify handwritten digits from 0 - 9.



