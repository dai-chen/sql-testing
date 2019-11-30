
git clone https://github.com/dai-chen/sql.git

cd sql

git checkout correctness-poc

./gradlew integTestRunner

cp -rf build/reports/tests/integTestRunner/* ..

cd ..
rm -rf sql
git commit -am "Test report"
git push
