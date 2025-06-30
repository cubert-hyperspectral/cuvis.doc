===============
Getting Started
===============

Installation
============

The purpose of this guide is to show how to get started with using the `cuvis` SDK.
While most of the examples here will be shown in Python,
the `cuvis` SDK is also available in other languages.

These languages include:
- C API, usable by many other languages that support C-Style bindings, 
  but requires more lines of code and offers less convenience.
- C++ API, provides the a similar class-oriented design to the Python API, 
  but is usable within C++ and uses the STL where applicable.
- Deprecated: C-# and Matlab. While they are available on Github, 
  they are no longer guaranteed to be actively maintained.

Installation of the SDK
-----------------------
- Run the latest installer from `here <https://cloud.cubert-gmbh.de/s/qpxkyWkycrmBK9m>`_.
- Ensure the environment variable `CUVIS` is set to your SDK root.


Installation of the Python API
------------------------------
- Recommended: Set up a virtual environment.
- Install via `pip install cuvis`

You can now test the installation via:

.. code-block:: python

    import cuvis
    print(cuvis.version())
	
This should now print the version of the installed SDK. You are set up to get started.

Python API: Quick Start
=======================

Initialization
--------------

.. code-block:: python

    import cuvis
    cuvis.init("path/to/settings")

**[`cuvis.init`](#)**: Initializes the SDK with the provided user settings directory.  
**[`cuvis.shutdown`](#)**: Cleanly shuts down the SDK.  
**[`cuvis.set_log_level`](#)**: Set verbosity of logging, e.g., `"info"`, `"debug"`.

Calibration
===========
**[`Calibration`](#)**: Load calibration data from a directory or session file.

.. code-block:: python

    calib = cuvis.Calibration("path/to/calibration")

Acquisition
===========
**:ref:`AcquisitionContext`_**: Manages real-time image acquisition from the camera.

.. code-block:: python

    acq = cuvis.AcquisitionContext(calib)
    acq.integration_time = 100
    mesu = acq.capture_at(500)

**[`Component`](#)**: Access metadata and settings for each hardware component.  
.. code-block:: python

    for comp in acq.components():
        print(comp.info.display_name, comp.online)

Processing
==========
**[`ProcessingContext`](#)**: Apply calibration and processing (e.g. Reflectance) to raw measurements.

.. code-block:: python

    pc = cuvis.ProcessingContext(mesu)
    pc.processing_mode = cuvis.ProcessingMode.Reflectance
    pc.apply(mesu)

Measurement and Data
=====================
**[`Measurement`](#)**: Encapsulates a single captured or loaded dataset.

.. code-block:: python

    session = cuvis.SessionFile("file.cu3s")
    mesu = session[0]
    cube = mesu.cube

**[`ImageData`](#)**: Handles spectral image arrays and metadata.

.. code-block:: python

    spectrum = cube[120, 200][0]  # values at x=120, y=200

**[`SessionFile`](#)**: Load and iterate over measurements in a session file.

.. code-block:: python

    session = cuvis.SessionFile("video.cu3s")
    for mesu in session:
        print(mesu.name)

Exporting
=========
**[`CubeExporter`](#)**, **[`TiffExporter`](#)**, **[`EnviExporter`](#)**, **[`ViewExporter`](#)**:
Export processed measurements to various formats.

.. code-block:: python

    from cuvis import TiffExportSettings, TiffExporter
    settings = TiffExportSettings(export_dir="output")
    exporter = TiffExporter(settings)
    exporter.apply(mesu)

Worker
======
**[`Worker`](#)**: High-level interface to manage acquisition, processing, and exporting in a pipeline.

.. code-block:: python

    worker = cuvis.Worker(cuvis.WorkerSettings())
    worker.set_acquisition_context(acq)
    worker.set_processing_context(pc)
    worker.set_exporter(exporter)
    worker.start_processing()

Viewer
======
**[`Viewer`](#)**: Renders view data from measurements using user-defined plugins.

.. code-block:: python

    viewer = cuvis.Viewer(settings)
    images = viewer.apply(mesu)

