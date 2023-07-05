from BackendTest import BackendAutoTester
from caseloader import Loader

if __name__ == '__main__':
    path = '../test/testgen-0705-205137'

    tester = BackendAutoTester(path)
    loader = Loader(path)

    tester.run(loader.testcases)

# python3 pi_run.py