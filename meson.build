project('the-cpp-abstraction-penalty', 'cpp',
        meson_version : '>=0.53', version : '1.0',
        default_options: ['cpp_std=c++17', 'buildtype=release'])

benchmarks_dir = 'benchmarks'
c = run_command('get_benchmarks.py', meson.source_root() / benchmarks_dir, check: true)

benchmarks = c.stdout().strip().split()
foreach bench_dir : benchmarks
  subdir(benchmarks_dir / bench_dir)
endforeach

host_cpp_compiler = meson.get_compiler('cpp')

host_config = configuration_data({
                                    'COMPILER_ID': host_cpp_compiler.get_id(),
                                    'LINKER_ID': host_cpp_compiler.get_linker_id(),
                                    'SYSTEM': host_machine.system(),
                                    'CPU_FAMILY': host_machine.cpu_family(),
                                    'COMPILER_VERSION': host_cpp_compiler.version(),
                                    'CPU_COUNT': 'unknown'
                                  })

message(meson.current_build_dir())
configure_file(input: 'config/configuration_info.md.in',
               output: 'configuration_info.md', configuration: host_config)
