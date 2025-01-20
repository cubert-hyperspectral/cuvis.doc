# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

import sys
import os

sys.path.insert(0, os.path.abspath('../cuvis.python'))
sys.path.insert(0, os.path.abspath('../cuvis.pyil'))

project = 'Cuvis SDK'
copyright = '2024, Cubert GmbH'
author = 'Cubert GmbH'
release = '3.2.1'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = [
    'myst_parser',
	'breathe',
	'sphinx.ext.autodoc',
    'sphinx.ext.viewcode',
    'sphinx.ext.napoleon',
    'sphinx_tabs.tabs'
]

myst_enable_extensions = [
    "linkify",  # Converts URLs and email addresses into clickable links
    "colon_fence",  # Allows colon-fenced code blocks
]

breathe_default_project = "cuvis"

templates_path = ['_templates']
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']


# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_theme = 'sphinx_rtd_theme'
html_static_path = ['_static']

# html_extra_path = ['C:\\dev\\builds\\cuvis_doc\\doc\\html']

html_theme_options = {

}