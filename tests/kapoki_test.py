import kapoki
from unittest import TestCase
from unittest.mock import MagicMock
from functools import partial


class ASkeletonCreator(TestCase):

    def setUp(self):
        self.mock_directory_creator = MagicMock()
        self.create_skeleton = partial(kapoki.create_skeleton, self.mock_directory_creator)

    def test_should_create_a_directory_with_the_project_name(self):
        data = ['foo', 'bar', 'baz']
        for project_name in data:
           self.create_skeleton(project_name)
           self.mock_directory_creator.assert_called_with(project_name)

    def test_should_place_template_contents_into_project_directory(self):
        pass
