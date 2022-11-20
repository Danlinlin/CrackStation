import json
import hashlib
import itertools

def str1_encrypt(str):
    sha = hashlib.sha1(str.encode("utf8"))
    encrypts = sha.hexdigest()
    return encrypts

def str256_encrypt(str):
    sha = hashlib.sha256(str.encode("utf8"))
    encrypts = sha.hexdigest()
    return encrypts

#build look-up dictionary
str = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789?!"
strl = list(str)
# 1 character
shaDict = {}
for i in strl:
    sha1_str = str1_encrypt(i)
    sha256_str = str256_encrypt(i)
    shaDict[sha1_str] = i
    shaDict[sha256_str] = i
# 2 character
for item in itertools.product(strl,strl):
    str = item[0]+item[1]
    sha1_str = str1_encrypt(str)
    sha256_str = str256_encrypt(str)
    shaDict[sha1_str] = str
    shaDict[sha256_str] = str
#3 character
all_list = [strl, strl, strl]
for i in list(itertools.product(*all_list)):
    str = ''.join(i)
    sha1_str = str1_encrypt(str)
    sha256_str = str256_encrypt(str)
    shaDict[sha1_str] = str
    shaDict[sha256_str] = str

#generte json file
with open("data.json", "w") as outfile1:
    json.dump(shaDict, outfile1, indent=4)
