#!/usr/bin/env python

import sys
import re
import os

from subprocess import check_output
from common import color

def environments():
    return {
        'github.com' : {
            'type'  : 'github',
            'api'   : 'https://api.github.com',
            'token' : os.environ[ 'GITHUB_TOKEN' ]
        },

        'git.mstuttle.com' : {
            'type' : 'gitlab',
            'api'  : 'https://git.mstuttle.com/api/v3',
            'token' : os.environ[ 'GITLAB_MSTUTTLE_TOKEN' ]
        },

        'gitlab.com' : {
            'type'  : 'gitlab',
            'api'   : 'https://gitlab.com/api/v3',
            'token' : os.environ[ 'GITLAB_TOKEN' ]
        },

        'gitlab.schoolimprovement.com' : {
            'type'  : 'gitlab',
            'api'   : 'https://gitlab.schoolimprovement.com/api/v3',
            'token' : os.environ[ 'GITLAB_SINET_TOKEN' ]
        },
    }

def requireRemotes( remote, parser ):
    # Get existing remotes
    existingRemotes = check_output( [ "git", "remote" ] ).split()

    if remote not in existingRemotes:
        parser.print_help()

        remote       = color.BOLD + color.RED + remote + color.END
        sparator     = color.END + ', ' + color.BOLD + color.GREEN
        remoteString = color.BOLD + color.GREEN + sparator.join( existingRemotes ) + color.END

        sys.exit( '\nA remote named ' + remote + ' does not exist. Only ' + remoteString + ' currently exist.' )

def parseRemote( remote ):
    def subString( string, start, end ):
        return re.search( '%s(.*?)%s' % ( start, end ), string ).group( 1 )

    fullRemoteUrl = check_output( [ 'git', 'config', '--get', 'remote.' + remote + '.url' ] )
    remoteUrl     = fullRemoteUrl
    protocol      = re.findall( r'^.*://', fullRemoteUrl )
    lDelim        = ':'

    obj = {
        'remote' : remote,
        'url'    : fullRemoteUrl.rstrip()
    }

    # Change things a little if there is 54protocol defined
    if len( protocol ):
        lDelim    = '/'
        remoteUrl = remoteUrl.split( protocol[ 0 ] )[ 1 ]

        if 'ssh' in protocol[ 0 ]:
            obj[ 'domain' ] = subString( remoteUrl, '@', ':' )
        else:
            obj[ 'domain' ] = subString( fullRemoteUrl, '://', '/' )

    obj[ 'owner' ] = subString( remoteUrl, lDelim, '/' )
    obj[ 'repo' ]  = subString( remoteUrl, obj[ 'owner' ] + '/', '\.git' )

    if 'domain' not in obj:
        obj[ 'domain' ] = subString( remoteUrl, '@', ':' )

    return obj
