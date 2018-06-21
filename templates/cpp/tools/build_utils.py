import os
import os.path
import functools

# Environment static method:
def with_colour(self):
    try:
        self['ENV']['TERM'] = os.environ['TERM']
    except:
        pass
    return self

def paths_under(directory):
    for root, directories, files in os.walk(directory):
        for filename in directories + files:
            yield os.path.join(root, filename)
    yield directory

def files_only(paths):
    return [p for p in paths if os.path.isfile(p)]

def directories_only(paths):
    return [p for p in paths if os.path.isdir(p)]

def with_extension(extension, paths):
    return [p for p in paths if p.endswith(extension)]

cpp_only = functools.partial(with_extension, '.cpp')
hpp_only = functools.partial(with_extension, '.hpp')
object_only = functools.partial(with_extension, '.o')
