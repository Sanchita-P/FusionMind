# download ConceptNet
mkdir -p data/
mkdir -p data/cpnet/
wget -nc -P data/cpnet/ https://s3.amazonaws.com/conceptnet/downloads/2018/edges/conceptnet-assertions-5.6.0.csv.gz
cd data/cpnet/
yes n | gzip -d conceptnet-assertions-5.6.0.csv.gz
# download ConceptNet entity embedding
wget https://csr.s3-us-west-1.amazonaws.com/tzw.ent.npy
cd ../../

# download OpenBookQA dataset
wget -nc -P data/obqa/ https://s3-us-west-2.amazonaws.com/ai2-website/data/OpenBookQA-V1-Sep2018.zip
yes n | unzip data/obqa/OpenBookQA-V1-Sep2018.zip -d data/obqa/

# create output folders
mkdir -p data/obqa/fairseq/official/
mkdir -p data/obqa/grounded/
mkdir -p data/obqa/graph/
mkdir -p data/obqa/statement/
