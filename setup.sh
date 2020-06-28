mkdir -p ~/.streamlit/

echo "\
[general]\n\
email = \"davidli012345@gmail.com\"\n\
" > ~/.streamlit/credentials.toml

python -m spacy download en_core_web_sm
python -m spacy download en_core_web_md

echo "\
[server]\n\
headless = true\n\
enableCORS=false\n\
port = $PORT\n\
" > ~/.streamlit/config.toml