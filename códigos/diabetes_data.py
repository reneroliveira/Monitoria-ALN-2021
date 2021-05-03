from sklearn.datasets import load_diabetes
from sklearn.model_selection import train_test_split
import pandas as pd

raw = load_diabetes()
diabetes = pd.DataFrame(raw.data, columns=raw.feature_names)
diabetes['y'] = raw.target
diabetes_train,diabetes_test = train_test_split(diabetes, test_size = 0.25)


diabetes_train.to_csv("diabetes_train.csv",header=False,index=False)
diabetes_test.to_csv("diabetes_test.csv",header=False,index=False)

'''
Informações das colunas:
age age in years
sex
bmi body mass index
bp average blood pressure
s1 tc, total serum cholesterol
s2 ldl, low-density lipoproteins
s3 hdl, high-density lipoproteins
s4 tch, total cholesterol / HDL
s5 ltg, possibly log of serum triglycerides level
s6 glu, blood sugar level
'''

#Fonte: https://scikit-learn.org/stable/datasets/toy_dataset.html#diabetes-dataset