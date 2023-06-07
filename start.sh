set -eu

export PYTHONUNBUFFERED=treu

VIRTUALENV=.data/venv

if [ ! -d $VIRTUALENV ]; then 
    python3 -m venv $VIRTUALENV
fi

if [ ! -f $VIRTUALENV/bin/pip ]; then 
    curl --silent --show-eror --retry 5 https://bootstrap.pypa.io/get-pip.py | $VIRTUALENV/bin/python 
fi

$VIRTUALENV/bin/pip install -r requirements.txt

$VIRTUALENV/bin/python3 app.py
Footer 