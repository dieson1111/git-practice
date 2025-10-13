# install packages

npm install husky --save-dev
npm install @commitlint/config-conventional @commitlint/cli --save-dev

## initialize husky

npx husky init
npm run prepare

## configure commitlint and husky

echo "module.exports = { extends: ['@commitlint/config-conventional'], };" > commitlint.config.js
npx husky add .husky/commit-msg 'npx --no-install commitlint --edit "$1"'
