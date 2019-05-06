#!/usr/bin/python
#-*- coding: utf-8 -*-
#kNN algorithm

from numpy import *
from os import listdir
import matplotlib.pyplot as plt
import operator

def createDataSet():
    group = array([[1.0,1.1],[1.0,1.0],[0,0],[0,0.1]])
    labels = ['A','A','B','B']
    return group, labels

def classify0(inX, dataSet, labels, k):
    dataSetSize = dataSet.shape[0]
    diffMat = tile(inX, (dataSetSize,1)) - dataSet      #tile 相当于inX乘以 (dataSetSize,1)的单位矩阵的每个矩阵元得到的新的矩阵
    sqDiffMat = diffMat**2
    sqDistances = sqDiffMat.sum(axis=1)                 #对行求和，得到dataSetSize行1列的矩阵
    distances = sqDistances**0.5                        #求根号，得到第二范数
    sortedDistIndicies = distances.argsort()            #得到排列序号的矢量，distances 从小到大的元素在distances中的序号
    classCount = {}                                     #空字典
    for i in range (k):
        voteIlabel = labels[sortedDistIndicies[i]]      #找K近邻个点的label
        classCount[voteIlabel] = classCount.get(voteIlabel,0) + 1       #寻找字典中键为votedIlabel对应的键值，get()函数为查找，若无此键那么默认键值为0，若直接用字典，没有此键时会出错。

    sortedClassCount = sorted(classCount.iteritems(), key = operator.itemgetter(1), reverse = True)         #对最近临出现的键的数目反向排序，sort的第一个参数以迭代对象返回键值对，第二个参数排列的对象，通常用key = lambda d:d[1]的形式，表示将字典转换为可迭代对象后每次传递给d一个元组，取第二个值排序。operator.itemgetter(1)表示获取元组的第二个值，即label对应的数目，比起lambda函数，利用opertator会大大降低开销，第三个参数表示由大到小排序。

    return sortedClassCount[0][0]

#file2matrix function, this function takes a filename string and outputs two things: a matrix of training examples and a vector of class labels.

def file2matrix(filename):
    fr = open(filename)
    content = fr.readlines()
    numberOfLines = len(content)                         #read the file and counts the number of lines
    line0 = content[0]                                  #the first line
    width = len(line0.strip().split('\t')) - 1          #calculate the number of attributes
    returnMat = zeros((numberOfLines,width))            #create a Numpy matrix to populate and return
    classLabelVector = []   
    index = 0
    for line in content:
        line = line.strip()
        listFromLine = line.split('\t')
        returnMat[index,:] = listFromLine[0:width]
        classLabelVector.append(int(listFromLine[-1]))
        index += 1
    return returnMat,classLabelVector

def datingClassTest(a):
    hoRatio = a
    datingDataMat,datingLabels = file2matrix('datingTestSet2.txt')
    normMat,ranges,minVals = autoNorm(datingDataMat)
    m = normMat.shape[0]
    numTestVecs = int(m*hoRatio)
    errorCount = 0.0
    for i in range(numTestVecs):
        classifierResult = classify0(normMat[i,:],normMat[numTestVecs:m,:],datingLabels[numTestVecs:m],3)
        if (classifierResult != datingLabels[i]):
            errorCount += 1.0
#            print "The classifier came back with: %d, the real answer is: %d" %(classifierResult, datingLabels[i])
#    print "The total error rate is : %f" %(errorCount/float(numTestVecs))
    return (errorCount/float(numTestVecs))

def autoNorm(dataSet):
    minVals = dataSet.min(0)                            #The 0 in dataSet.min(0) allows you to take the minimums from the columns
    maxVals = dataSet.max(0)                            #Take the maxmums from the columns
    ranges = maxVals - minVals                           #Get the range of each columns
    normDataSet = zeros(shape(dataSet))
    m = dataSet.shape[0]
    normDataSet = dataSet - tile(minVals, (m,1))        #Using Numpy tile() function to create a matrix the same size as our input matrix
    normDataSet = normDataSet/tile(ranges, (m,1))       #Element-wise division
    return normDataSet,ranges,minVals

def error_rate():
    hoRatios = arange(0.01,0.2,0.01)
    errorrate = []
    for f in hoRatios:
        errorrate.append(datingClassTest(f))
    fig = plt.figure(1)
    plt.subplot(111)
    plt.plot(hoRatios,errorrate,'ro')
    plt.xlabel('Test rate')
    plt.ylabel('Error rate')
    plt.title('Error rate')
    plt.show()

def classifyPerson():
    resultList = ['not at all', 'in small doses', 'in large doses']
    percentTats = float(raw_input("percentage of time spent playing video games?"))
    ffMiles = float(raw_input("frenqent flier miles earned per year?"))
    iceCream = float(raw_input("liters of ice cream consumed per year?"))
    datingDataMat,datingLabels = file2matrix('datingTestSet2.txt')
    normMat, ranges, minVals = autoNorm(datingDataMat)
    inArr = array([ffMiles,percentTats,iceCream])
    classifierResult = classify0((inArr-minVals)/ranges,normMat,datingLabels,3)
    print "You will probably like this person: ", resultList[classifierResult-1]

def img2vector(filename):
    returnVect = zeros((1,1024))
    fr = open(filename)
    for i in range(32):
        lineStr = fr.readline()
        for j in range(32):
            returnVect[0,32*i+j] = int(lineStr[j])
    return returnVect

def handwritingClassTest(numberk):
    hwLabels = []
    trainingFileList = listdir('digits/trainingDigits')
    m = len(trainingFileList)
    trainingMat = zeros((m,1024))
    for i in range(m):
        fileNameStr = trainingFileList[i]
        fileStr = fileNameStr.split('.')[0]
        classNumStr = int(fileStr.split('_')[0])
        hwLabels.append(classNumStr)
        trainingMat[i,:] = img2vector('digits/trainingDigits/%s' % fileNameStr)
    testFileList = listdir('digits/testDigits')
    errorCount = 0.0
    mTest = len(testFileList)
    for i in range(mTest):
        fileNameStr = testFileList[i]
        fileStr = fileNameStr.split('.')[0]
        classNumStr = int(fileStr.split('_')[0])
        vectorUnderTest = img2vector('digits/testDigits/%s' % fileNameStr)
        classifierResult = classify0(vectorUnderTest,trainingMat,hwLabels,numberk)
        if(classifierResult != classNumStr):
            errorCount += 1.0
            print "the classifier came back with: %d, the real answer is: %d" %(classifierResult, classNumStr)
    print "\nthe total number of errors is: %d" % errorCount
    print "\nthe total error rate is: %f" %(errorCount/float(mTest))
    return (errorCount/float(mTest))
