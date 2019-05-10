FROM mattermost/mattermost-team-edition:5.10.0
LABEL maintainer 'György Novák <gyorgy.novak@loxxly.com>'

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
