for file in target/debug/iron_cms-*; do mkdir -p "target/cov/$(basename $file)"; kcov --exclude-pattern=/.cargo,/usr/lib --verify "target/cov/$(basename $file)" "$file"; done
