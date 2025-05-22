    
#!/bin/bash

cd /app

python3.10 -m venv venv
source venv/bin/activate
python3.10 -m pip install -r docs/requirements.txt

echo "======================="
echo "Build Python wrapper Wrapper"
echo "======================="

source venv/bin/activate
python --version
python3.10 -m pip install numpy==1.22.0
mkdir _pyil
cmake  -DCMAKE_BUILD_TYPE=Release -B ./_pyil -DPython_ROOT_DIR=./venv cuvis.pyil
cmake --build "_pyil" --target cuvis_pyil --config Release
cp _pyil/_cuvis_pyil.so ./cuvis.pyil/cuvis_il
cp _pyil/cuvis_il.py ./cuvis.pyil/cuvis_il
cat _pyil/cuvis_il.py
cd cuvis.pyil
python3.10 -m pip install .
cd ../cuvis.python
python3.10 -m pip install .
cd ..

echo "======================="
echo "Build Documentation"
echo "======================="

source venv/bin/activate
mkdir _build
cmake -B _build .
cmake --build "_build"
python3.10 -m sphinx -b html -Dbreathe_projects.cuvis=_build/doc/xml ./docs ./_build
touch ./_build/doc/sphinx/.nojekyll


