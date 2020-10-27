module BrewAutoremove
  module_function

  def list_formula
    `brew list --formula`.split
  end

  def remove_pkg_and_deps(pkg)
    pkg_count = list_formula.count

    loop do
      still_installed = pkg & list_formula
      still_installed.each { |pkg| system("brew uninstall #{pkg} 2>/dev/null") }

      pkg_count_old = pkg_count
      pkg_count = list_formula.count

      break if pkg_count == pkg_count_old
    end
  end

  def main
    pkgs_to_remove = ARGV.map { |pkg| [pkg, *`brew deps #{pkg}`.split] }
    pkgs_to_remove.each do |pkg|
      remove_pkg_and_deps(pkg)
    end

    system('brew cleanup')
  end
end

BrewAutoremove.main
exit 0
