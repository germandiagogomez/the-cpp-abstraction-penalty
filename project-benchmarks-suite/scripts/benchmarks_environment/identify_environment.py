
from peewee import *
import psutil
import zlib
import cpuinfo
import platform

_db = SqliteDatabase('the-cpp-abstraction-penalty.db')

class BaseModel(Model):
    class Meta:
        database = _db

def get_os_release():
    if platform.system() == 'Windows':
        return platform.win32_ver()
    elif platform.system() == 'Darwin':
        return platform.mac_ver()
    else:
        result = platform.uname()
        return (result.system, result.release, result.version, result.machine, result.processor)


def detect_environment():
    cpu_information = cpuinfo.get_cpu_info()
    environment_info = {'cpu_family' : cpu_information['family'],
              'cpu_model' : cpu_information['model'],
              'architecture' : 'x86_64',
              'num_logical_cores' : psutil.cpu_count(logical=True),
              'num_hardware_cores' : psutil.cpu_count(logical=False),
              'l1_cache_size' : cpu_information.get('l1_cache_size', 'unknown'),
              'l2_cache_size' : cpu_information.get('l2_cache_size', 'unknown'),
              'l3_cache_size' : cpu_information.get('l3_cache_size', 'unknown'),
              'operating_system_release' : ' '.join(get_os_release())}
    return environment_info


class BenchmarksEnvironment(BaseModel):
    env_id = IntegerField(primary_key=True)
    cpu_family = IntegerField()
    cpu_model = IntegerField()
    architecture = CharField()
    num_logical_cores = IntegerField()
    num_hardware_cores = IntegerField()
    l1_cache_size = CharField()
    l2_cache_size = CharField()
    l3_cache_size = CharField()
    operating_system_release = CharField()


class BenchmarksExecution(BaseModel):
    compiler1 = CharField()
    compiler2 = CharField()
    benchmarks_environment_id = ForeignKeyField(BenchmarksEnvironment)

    class Meta:
        db_table = 'benchmarksexecution'
        primary_key = CompositeKey('compiler1', 'compiler2')
        
def compute_hash(values_iterable):
    hashval = 0
    for v in values_iterable:
        if isinstance(v, str):
            hashval = zlib.adler32(v.encode('utf-8'), hashval)
        elif isinstance(v, int):
            hashval = zlib.adler32(v.to_bytes(4, 'little'), hashval)
    return hashval


def test_insert():
    params = detect_environment()
    params['env_id'] = compute_hash(v for v in params.values())
    obj = BenchmarksEnvironment.create(**params)


_db.connect()
_db.create_tables([BenchmarksEnvironment, BenchmarksExecution])


