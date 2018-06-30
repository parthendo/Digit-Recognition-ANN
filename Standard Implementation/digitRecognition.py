# -*- coding: utf-8 -*-
"""
Created on Fri Jun 29 08:57:38 2018

@author: parth
"""
import time
import sys
import pickle
import os.path
import gzip
import numpy as np
from sklearn import svm
from sklearn.neural_network import MLPClassifier
from sklearn.naive_bayes import MultinomialNB,GaussianNB
from sklearn.neighbors import KNeighborsClassifier
from sklearn.gaussian_process.kernels import RBF
from sklearn.ensemble import RandomForestClassifier
from sklearn.discriminant_analysis import QuadraticDiscriminantAnalysis
from sklearn import preprocessing
import matplotlib.pyplot as plt

def normaliseString(str):
    return str.lower()

def visualize(list,n):
    print list[n]
    print'********'
    p = list[n]
    print(p)
    plt.gray()
    plt.matshow(p)
    plt.show()

def result(Y_test,pred):
    correct=0
    for i in range(len(Y_test)):
        if(Y_test[i]==pred[i]):
            correct+=1
    total=len(Y_test)
    print("Accuracy achieved: %f per cent"%(float(correct)/total*100))

def quadraticdiscriminant(X_train,X_test,Y_train,Y_test):
    print("Algorithm: Quadratic Discriminant Analysis")
    qd = QuadraticDiscriminantAnalysis()
    qd.fit(X_train,Y_train)
    prediction = qd.predict(X_test)
    result(prediction,Y_test)

def randomforest(X_train,X_test,Y_train,Y_test):
    print("Algorithm: Random Forest")
    rf = RandomForestClassifier(max_depth = 100, random_state = 3)
    rf.fit(X_train,Y_train)
    prediction = rf.predict(X_test)
    result(prediction,Y_test)

def naivebayes(X_train,X_test,Y_train,Y_test,mode):
    print("Algorithm: Naive Bayes")
    naivebayes = object 
    if mode == 'M':
        naivebayes = MultinomialNB()
    elif mode == 'G':
        naivebayes = GaussianNB()
    naivebayes.fit(X_train,Y_train)
    prediction = naivebayes.predict(X_test)
    result(prediction,Y_test)

def multilayerperception(X_train,X_test,Y_train,Y_test):
    print("Algorithm: Supervised Neural Network")
    MLP=MLPClassifier(activation="relu",alpha=1e-05,momentum=0.12)
    MLP.fit(X_train,Y_train)
    pred=MLP.predict(X_test)
    result(Y_test,pred)

def supportvectormachine(X_train,X_test,Y_train,Y_test):
    print("Algorithm: Support Vector Machine")
    X_train = preprocessing.scale(X_train)
    X_test = preprocessing.scale(X_test)
    sVm = svm.SVC(gamma=2,C=0.01,decision_function_shape='ovo',kernel='rbf')
    sVm.fit(X_train,Y_train)
    pred=sVm.predict(X_test)
    result(Y_test,pred)

def buildgzip(path):

    mnist = {}
    filename = [["training_images","train-images-idx3-ubyte.gz"],["test_images","t10k-images-idx3-ubyte.gz"],["training_labels","train-labels-idx1-ubyte.gz"],["test_labels","t10k-labels-idx1-ubyte.gz"]]
    filename_len = len(filename)
    for i in range(filename_len):    
            file_ = os.path.join(path,filename[i][1])    
            if(os.path.isfile(file_)):
                if i <= 1:
                    with gzip.open(file_,'rb') as f:
                        mnist[filename[i][0]] = np.frombuffer(f.read(), np.uint8, offset=16).reshape(-1,28*28)
                else:
                    with gzip.open(file_,'rb') as f:
                        mnist[filename[i][0]] = np.frombuffer(f.read(), np.uint8, offset=8) 
            else:
                print("Error: No data file found in the folder. Program will quit")
                sys.exit()
    with open("Dataset/mnist.pickle","wb") as f:
        pickle.dump(mnist,f)
    print("Build complete")
    return mnist

def load_data(path):
    
    mnist = {}
    filename = [["training_images","train-images-idx3-ubyte.gz"],["test_images","t10k-images-idx3-ubyte.gz"],["training_labels","train-labels-idx1-ubyte.gz"],["test_labels","t10k-labels-idx1-ubyte.gz"]]
    filename_len = len(filename)
    if (os.path.isfile("Dataset/mnist.pickle")):
        input = raw_input("Old data exists, rebuild new? Y/n\n>>> ")
        if normaliseString(input) == 'n' or normaliseString(input) == 'N':
            pickle_base = open("Dataset/mnist.pickle","rb")
            mnist = pickle.load(pickle_base)
            pickle_base.close()
            print("Data loaded successfully")
        else:
            mnist = buildgzip(path)
    else:
        print("Pickle file not found, building a new pickle file")
        mnist = buildgzip(path)
    
    return mnist[filename[0][0]],mnist[filename[1][0]],mnist[filename[2][0]],mnist[filename[3][0]]
