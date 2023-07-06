import os.path

from BackendTest import BackendAutoTester
from caseloader import Loader

if __name__ == '__main__':
    path = os.path.abspath('../test/testgen-0706-013931')

    tester = BackendAutoTester(path)
    loader = Loader(path)

    tester.run(loader.testcases)

# python3 pi_run.py