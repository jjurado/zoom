define([], function () {
    return {
        colors: {
            actionBlue: '#057D9F',
            errorRed: '#CC574F',
            successTrans: '',
            unknownGray: '#F7EEDA',
            warnOrange: '#FFAE2F',
            configErrPink: '#FF64DB'
        },

        glyphs: {
            runningCheck: 'glyphicon glyphicon-ok-circle',
            stoppedX: 'glyphicon glyphicon-remove-circle',
            unknownQMark: 'glyphicon glyphicon-question-sign',
            thumpsUp: 'glyphicon glyphicon-thumbs-up',
            startingRetweet: 'glyphicon glyphicon-retweet',
            stoppingDown: 'glyphicon glyphicon-arrow-down',
            errorWarning: 'glyphicon glyphicon-warning-sign',
            notifyExclamation: 'glyphicon glyphicon-exclamation-sign',
            filledStar: 'glyphicon glyphicon-star',
            emptyStar: 'glyphicon glyphicon-star-empty',
            modeAuto: 'glyphicon glyphicon-eye-open',
            modeManual: 'glyphicon glyphicon-eye-close',
            configErr: 'glyphicon glyphicon-resize-small'
        },

        applicationStatuses: {
            running: 'running',
            stopped: 'stopped',
            unknown: 'unknown'
        },

        errorStates: {
            ok: 'ok',
            starting: 'starting',
            stopping: 'stopping',
            error: 'error',
            notify: 'notify',
            configErr: 'config_error',
            unknown: 'unknown'
        },

        predicateTypes: {
            ZooKeeperHasChildren: 'zookeeperhaschildren',
            ZooKeeperHasGrandChildren: 'zookeeperhasgrandchildren',
            ZooKeeperNodeExists: 'zookeepernodeexists',
            ZookeeperGoodUntilTime: 'zookeepergooduntiltime',
            Weekend: 'weekend',
            Holiday: 'holiday',
            Time: 'time',
            Process: 'process'
        },

        zkPaths: {
            statePath: '/spot/software/state/',
            appStatePath: '/spot/software/state/application/'
        }
    };
});