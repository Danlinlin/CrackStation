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
str = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
strl = list(str)
# 1 character
sha1Dict = {}
for i in strl:
    sha1_str = str1_encrypt(i)
    sha1Dict[sha1_str] = i
# 2 character
for item in itertools.product(strl,strl):
    str = item[0]+item[1]
    sha1_str = str1_encrypt(str)
    sha1Dict[sha1_str] = str


#generte json file
with open("data.json", "w") as outfile1:
    json.dump(sha1Dict, outfile1)

