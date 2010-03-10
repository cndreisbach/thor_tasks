class Metrics < Thor
  desc "flog DIRS", "Flog the specified directories"
  def flog(*dirs)
    xargs('flog', *dirs)
  end

  desc "reek DIRS", "Run reek on the specified directories"
  def reek(*dirs)
    xargs('reek', *dirs)
  end

  desc "flay DIRS", "Run flay on the specified directories"
  def flay(*dirs)
    xargs('flay', *dirs)
  end

  desc "roodi DIRS", "Run roodi on the specified directories"
  def roodi(*dirs)
    xargs('roodi', *dirs)
  end

  private

  def xargs(cmd, *dirs)
    dirs = ['.'] if dirs.empty?
    system "find #{dirs.join(' ')} -name \\*.rb -print0 | xargs -0 #{cmd}"
  end

end
