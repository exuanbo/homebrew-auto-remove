def list_formula
  `brew list --formula`.split
end

pkgs_to_remove = ARGV.map { |pkg| [pkg, *`brew deps #{pkg}`.split] }

pkgs_to_remove.each do |_pkgs|
  pkg_count = list_formula.count

  loop do
    still_installed = _pkgs & list_formula
    still_installed.each { |pkg| system "brew uninstall #{pkg} 2>/dev/null" }

    pkg_count_old = pkg_count
    pkg_count = list_formula.count

    break if pkg_count == pkg_count_old
  end
end
