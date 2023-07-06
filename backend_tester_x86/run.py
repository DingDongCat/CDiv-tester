from yaml import load
from backend_tester import BackendAutoTester 
from caseloader import Loader, TestCase

COMPILER = "./CDiv-0.0.1.jar"
JAVA = "E:/Java/JDK17/bin/java"
OUT_DIR = "./out"
sftpArg = {'ip':'192.168.179.100','user':'phoenix','password':'ldf020103','port':22}

scheme_function2022 = {
    "path" : "testcases/functional",
    "echo" : True
}

scheme_performance2022 = {
    "path" : "testcases/performance",
    "echo" : True
}

scheme_temp = {
    "path" : "testcases/tmp",
    "echo" : True
}


if __name__ == '__main__':
    tester = BackendAutoTester(COMPILER, JAVA, OUT_DIR, sftpArg)

    schemes = [scheme_function2022]
    # schemes = [scheme_performance2022]
    # schemes = [scheme_temp]

    for scheme in schemes:
        loader = Loader(scheme.get("path"))
        tester.run(loader.testcases, echo_ret=scheme.get("echo"))
