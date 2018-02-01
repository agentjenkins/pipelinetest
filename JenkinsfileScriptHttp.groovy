node() {

    currentBuild.result = "SUCCESS"

    try {
        currentBuild.description = "my new description"

        stage('Checkout') {
            checkout scm
        }
        stage('NuGet') {
            bat 'pipeline/nuget.bat'
        }
        stage {
            httpRequest(authentication: 'ddmbuildmgr_key',
                    consoleLogResponseBody: true,
                    customHeaders: [[maskValue: false,
                                     name: '',
                                     value: '']],
                    ignoreSslErrors: true,
                    responseHandle: 'NONE',
                    url: 'https://dfm.delaval.com/LogAnalyzerViewer/FileContent.aspx?filename=/Delpro/log/wcf/Hamra_Parlor/analyzerLog_20180201.zip')
        }
        stage('WrapUp') {
            timestamps {
                bat 'echo "Success"'
                sleep(1);
            }
        }
    }
    catch (err) {
        echo env.toString()
        echo currentBuild.toString()
        echo err.message;
        currentBuild.result = "FAILURE"
    }
}
