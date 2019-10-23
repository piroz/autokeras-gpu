#!/bin/bash

curl https://files.pythonhosted.org/packages/c2/32/de74bf6afd09925980340355a05aa6a19e7378ed91dac09e76a487bd136d/autokeras-0.4.0.tar.gz | tar zx

for i in scipy tensorflow torch torchvision numpy scikit-learn scikit-image tqdm imageio requests
do
    _TMP=$(pip freeze | grep "$i=")

    if [ -n "$_TMP" ]; then
        sed -i -e "s/$i\=\=[0-9a-z\.]\+/$_TMP/" autokeras-0.4.0/setup.py
    fi

    _TMP=""
done

tar cf - autokeras-0.4.0 | gzip > autokeras-0.4.0.tar.gz

pip install autokeras-0.4.0.tar.gz