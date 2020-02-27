const fs = require('fs')
const { argv } = require('yargs')
const { execSync } = require('child_process')

const { log } = console

const archivePath = argv['archive-path']
const prefix = argv.prefix

const report = { coverage: {} }

getFileList(archivePath).forEach(file => {
    const coverageInfo = getCoverageInfo(file)
    const coverageJson = convertCoverage(coverageInfo)
    const repoFilePath = file.replace(prefix, '')
    report.coverage[repoFilePath] = coverageJson
})

fs.writeFileSync('./coverage-report.json', JSON.stringify(report))

log('done.')

function getFileList(archivePath) {
    const fileListCmd = 'xcrun xccov view --file-list --archive'
    const fileListStr = execSync(`${fileListCmd} ${archivePath}`, {stdio: [process.stdout]}).toString()
    return fileListStr.split('\n').filter(i => i !== '')
}

function getCoverageInfo(filePath) {
  return execSync(`xcrun xccov view --archive ${archivePath} --file ${filePath}`, {stdio: [process.stdout]}).toString()
}

function convertCoverage(coverageInfo) {
    const coverageInfoArr = coverageInfo.split('\n')
    const obj = {}
    coverageInfoArr.forEach(line => {
        const [lineNum, lineInfo] = line.split(':')
        if (lineNum && Number.isInteger(Number(lineNum))) {
            const lineHits = lineInfo.trimStart().split(' ')[0].trim()
            if (lineHits === '*') {
                obj[String(lineNum.trim())] = null
            } else {
                obj[String(lineNum.trim())] = lineHits
            }
        }
    })
    return obj
}