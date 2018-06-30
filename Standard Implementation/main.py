# -*- coding: utf-8 -*-
"""
Created on Fri Jun 29 08:57:54 2018

@author: parth
"""
import time
import sys
import digitRecognition

def normaliseString(str):
	return str.lower()

#Driver program
def main():
	datapath = "/home/parth/Desktop/Extras/Assignments/Digit-Recognition-ANN/Standard Implementation/Dataset/"
	train_X = []
	test_X = []
	train_Y = []
	test_Y = []
	s = 0
	t = 0
	file = open("help.txt","r")
	msg = file.read()
	print(msg)
	file.close()
	for i in range(0,10000000):
		input = raw_input(">>> ")
		if normaliseString(input) == "help" or normaliseString(input) == "h":
			file = open("help.txt","r")
			msg = file.read()
			print(msg)
			file.close()
		elif normaliseString(input) == 'visualize' or normaliseString(input) == 'show':
			print train_X
			input = raw_input("Enter image: ")
			digitRecognition.visualize(train_X,input)
		elif normaliseString(input) == "mlp" or normaliseString(input) == "multi layer perceptron":
			t = time.time()
			digitRecognition.multilayerperception(train_X,test_X,train_Y,test_Y)
			s = time.time()
		elif normaliseString(input) == 'svm' or normaliseString(input) == 'supportvector' or normaliseString(input) == 'supportvectormachine':
			t = time.time()
			digitRecognition.supportvectormachine(train_X,test_X,train_Y,test_Y)
			s = time.time()
		elif normaliseString(input) == "naive bayes" or normaliseString(input) == "nb":
				inp = raw_input("Enter G for Gaussian and M for Multinomial\n>>> ")
				if normaliseString(inp) == 'g' or normaliseString(inp) == 'm':
					t = time.time()
					digitRecognition.naivebayes(train_X,test_X,train_Y,test_Y,inp)
					s = time.time()
				else:
					"Error: Enter only as required!"
		elif normaliseString(input) == "Quadratic Discriminant Analysis" or normaliseString(input) == "qda":
			t = time.time()
			digitRecognition.quadraticdiscriminant(train_X,test_X,train_Y,test_Y)
			s = time.time()	
		elif normaliseString(input) == "load data" or normaliseString(input) == "ld":
			input = raw_input("Enter 'default' or 'd' for default path or else enter path\n>>> ")
			if normaliseString(input) == 'default' or normaliseString(input) == 'd':
				t = time.time()
				train_X,test_X,train_Y,test_Y = digitRecognition.load_data(datapath)
				s = time.time()
			else:
				datapath = input
				t = time.time()
				train_X,test_X,train_Y,test_Y = digitRecognition.load_data(datapath)
				s = time.time()
		elif normaliseString(input) == 'random forest' or normaliseString(input) == 'rf':
			t = time.time()
			digitRecognition.randomforest(train_X,test_X,train_Y,test_Y)
			s = time.time()
		elif normaliseString(input) == "quit" or normaliseString(input) == 'q':
				print('Have a nice day!')
				sys.exit()
		print("Time elapsed: %f seconds"%(s-t))
if __name__ == "__main__":
    main()