import os

def pycharm_env_batch_maker(filename):
  years = range(2020, 2015, -1)
  quart = [3, 2, 1]
  builds = range(9, -1, -1)
  versions = ['{}.{}.{}'.format(year, q, b) for year in years for q in quart for b in builds]
  # print(versions)

  prefix = 'if not exist %PYCHARM% SET PYCHARM='
  pf64 = r'C:\Program Files'
  pf32 = r'C:\Program Files (x86)'
  jb = r'JetBrains\PyCharm '
  community = r'Community Edition '
  bin64 = 'bin\pycharm64.exe'
  bin32 = 'bin\pycharm.exe'
  with open(filename, mode='w') as f:
    f.write('@echo off\n')
    f.write('set PYCHARM="xxxxxx"\n\n')
    for v in versions:
      if v.endswith('.0'):
        v = v[:-2]
      for path in [os.path.join(pf64, jb + v, bin64),
                   os.path.join(pf64, jb + community + v, bin64),
                   os.path.join(pf32, jb + v, bin32),
                   os.path.join(pf32, jb + community + v, bin32)]:
        f.write('{}"{}"\n'.format(prefix, path))
      f.write('\n')
    f.write('echo %PYCHARM%\n')
    f.write('if not exist %PYCHARM% exit /b 3')


if __name__ == '__main__':
  pycharm_env_batch_maker(r'..\bat\pycharm_env.bat')
