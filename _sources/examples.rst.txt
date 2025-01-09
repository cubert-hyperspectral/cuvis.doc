Examples
========

Loading a Measurment
~~~~~~~~~~~~~~~~~~~~

This example demonstrates how to load and process hyperspectral measurement data using the cuvis SDK. 

.. tabs::

   .. group-tab:: C
	  .. language:: c
      .. literalinclude:: ../cuvis.c.examples/01_loadMeasurement/main.c

   .. group-tab:: C++
	  .. language:: cpp
      .. literalinclude:: ../cuvis.cpp.examples/01_loadMeasurement_cpp/main.cpp

   .. group-tab:: Python
	  .. language:: python
      .. literalinclude:: ../cuvis.python.examples/EX01_loadMeasurement.py
	  
Reprocessing a Measurement
~~~~~~~~~~~~~~~~~~~~~~~~~~

This example demonstrates the process of reprocessing hyperspectral measurement data using the cuvis SDK.
	  
.. tabs::

   .. group-tab:: C
	  .. language:: c
      .. literalinclude:: ../cuvis.c.examples/02_reprocessMeasurement/main.c

   .. group-tab:: C++
	  .. language:: cpp
      .. literalinclude:: ../cuvis.cpp.examples/02_reprocessMeasurement_cpp/main.cpp

   .. group-tab:: Python
	  .. language:: python
      .. literalinclude:: ../cuvis.python.examples/EX02_reprocessMeasurement.py
	  
Exporting a Measurement
~~~~~~~~~~~~~~~~~~~~~~~

This example demonstrates exporting hyperspectral measurement data into various formats using the cuvis SDK.
  
.. tabs::

   .. group-tab:: C
	  .. language:: c
      .. literalinclude:: ../cuvis.c.examples/03_exportMeasurement/main.c

   .. group-tab:: C++
	  .. language:: cpp
      .. literalinclude:: ../cuvis.cpp.examples/03_exportMeasurement_cpp/main.cpp

   .. group-tab:: Python
	  .. language:: python
      .. literalinclude:: ../cuvis.python.examples/EX03_exportMeasurement.py
	  
Changing the Distance of a Measurement
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This example demonstrates how to update the distance parameter in hyperspectral measurement data using the cuvis SDK.

.. tabs::

   .. group-tab:: C
	  .. language:: c
      .. literalinclude:: ../cuvis.c.examples/04_changeDistance/main.c

   .. group-tab:: C++
	  .. language:: cpp
      .. literalinclude:: ../cuvis.cpp.examples/04_changeDistance_cpp/main.cpp

   .. group-tab:: Python
	  .. language:: python
      .. literalinclude:: ../cuvis.python.examples/EX04_changeDistance.py
	  
Recording single Measurements
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This example demonstrates how to capture single hyperspectral images using the cuvis SDK, with user-defined settings and parameters.

.. tabs::

   .. group-tab:: C
	  .. language:: c
      .. literalinclude:: ../cuvis.c.examples/05_recordSingleImages/main.c

   .. group-tab:: C++
	  .. language:: cpp
      .. literalinclude:: ../cuvis.cpp.examples/05_recordSingleImages_cpp/main.cpp

   .. group-tab:: Python
	  .. language:: python
      .. literalinclude:: ../cuvis.python.examples/EX05_recordSingleImages.py

Recording a video
~~~~~~~~~~~~~~~~~

This example demonstrates how to record a video sequence of hyperspectral data using the cuvis SDK.

.. tabs::

   .. group-tab:: C
	  .. language:: c
      .. include:: ../cuvis.c.examples/06_recordVideo/main.c

   .. group-tab:: C++
	  .. language:: cpp
      .. include:: ../cuvis.cpp.examples/06_recordVideo_cpp/main.cpp

   .. group-tab:: Python
	  .. language:: python
      .. literalinclude::../cuvis.python.examples/EX06_recordVideo.py
	  
Rerecording a video from already recorded data
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This example demonstrates how to simulate recording a hyperspectral video sequence using data from a pre-existing session file. It replicates the process of live video recording without requiring an actual camera.
	  
.. tabs::

   .. group-tab:: C
	  .. language:: c
      .. literalinclude:: ../cuvis.c.examples/07_recordVideoFromSessionFile/main.c

   .. group-tab:: C++
	  .. language:: cpp
      .. literalinclude:: ../cuvis.cpp.examples/07_recordVideoFromSessionFile_cpp/main.cpp

   .. group-tab:: Python
	  .. language:: python
      .. literalinclude:: ../cuvis.python.examples/EX07_recordVideoFromSessionFile.py