
# download and extract MIND-small
cd ..
mkdir MIND-small
cd MIND-small
mkdir download
cd download
wget -O MINDsmall_train.zip https://mind201910small.blob.core.windows.net/release/MINDsmall_train.zip
unzip MINDsmall_train.zip -d train
wget -O MINDsmall_dev.zip https://mind201910small.blob.core.windows.net/release/MINDsmall_dev.zip
unzip MINDsmall_dev.zip -d dev
wget -O wikidata-graph.zip https://mind201910.blob.core.windows.net/knowledge-graph/wikidata-graph.zip
unzip wikidata-graph.zip
cd ..
tree -L 2

# preprocess dataset
cd ../NNR
python prepare_MIND_dataset.py
