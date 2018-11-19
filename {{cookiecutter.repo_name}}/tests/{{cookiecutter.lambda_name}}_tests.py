from {{cookiecutter.lambda_file_name|replace('.py', '')|lower}} import lambda_handler
import unittest

class TestSensuPagerdutyHeartbeat(unittest.TestCase):
    def test_hello_world_returned(self):
        self.assertEquals(lambda_handler({}, {}), 'Hello World')
