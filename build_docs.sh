    
#!/bin/bash

cd /app

python3.10 -m pip install -r docs/requirements.txt

echo "======================="
echo "Build Python wrapper Wrapper"
echo "======================="

python3.10 --version
python3.10 -m pip install numpy==1.22.0
mkdir -p _pyil
cmake  -DCMAKE_BUILD_TYPE=Release -B ./_pyil cuvis.pyil
cmake --build "_pyil" --target cuvis_pyil --config Release
cp _pyil/_cuvis_pyil.so ./cuvis.pyil/cuvis_il
cp _pyil/cuvis_il.py ./cuvis.pyil/cuvis_il
cd cuvis.pyil
python3.10 -m pip install .
cd ../cuvis.python
python3.10 -m pip install .
cd ..

echo "======================="
echo "Build Documentation"
echo "======================="

source venv/bin/activate
mkdir -p _build
cmake -B _build .
cmake --build "_build"
python3.10 -m sphinx -b html -Dbreathe_projects.cuvis=_build/doc/xml docs _build
touch /app/_build/html/.nojekyll


