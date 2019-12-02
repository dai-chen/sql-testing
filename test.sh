
git clone https://github.com/dai-chen/sql.git
cd sql
git checkout correctness-poc

./gradlew integTestRunner
cp -rf build/reports/tests/integTestRunner/* ..

cd ..
rm -rf sql

git config user.email "daichen@amazon.com"
git config user.name "Dai"
git remote set-url origin https://x-access-token:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git

git commit -am "Test report"
git push
