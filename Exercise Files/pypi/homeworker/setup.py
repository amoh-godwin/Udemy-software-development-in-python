from setuptools import setup, find_namespace_packages

with open('README.md', 'r') as f_file:
    long_desc = f_file.read()

setup(
    name="AmohHomeworker",
    version="0.0.2",
    description="Helps you with your homework",
    long_description=long_desc,
    long_description_type="text/markdown",
    packages=find_namespace_packages(),
    author="Amoh - Gyebi Ampofo",
    author_email="amohgyebigodwin@gmail.com",
    keywords=['homework', 'exercises'],
    url="https://github.com/amoh-godwin/homeworker",
    project_urls = {
        "Bug Tracker": "https://github.com/amoh-godwin/homeworker/issues",
        "Documentation": "https://github.com/amoh-godwin/homeworker/wiki",
        "Source Code": "https://github.com/amoh-godwin/homeworker"
    },
    classifiers = [
        "Programming Language :: Python",
        "Programming Language :: Python :: 3",
        "Development Status :: 4 - Beta",
        "Environment :: Other Environment",
        "Intended Audience :: Developers",
        "Intended Audience :: Financial and Insurance Industry",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
        "Topic :: Scientific/Engineering :: Image Recognition",
        "Topic :: Scientific/Engineering :: Mathematics"
    ]
)
