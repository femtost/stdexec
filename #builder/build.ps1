echo "This doesn't build .lib nor .a, it tests headers only"
cd ..

cmake -S . -B build -G Ninja
cmake --build build
ctest --test-dir build --output-on-failure

cd "#builder"