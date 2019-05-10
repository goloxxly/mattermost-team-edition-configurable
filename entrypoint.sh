#!/bin/bash

MM_CONFIG=${MM_CONFIG:-/mattermost/config/config.json}
INIT_CONFIG=${INIT_CONFIG:-/init-config/config.json}

# Init config.json if not exists
if [ ! -f $MM_CONFIG ]
then
  # If there is no configuration file, create it with some default values
  echo "No configuration file" $MM_CONFIG

  if [ -f $INIT_CONFIG ]
  then
      echo "Copying from $INIT_CONFIG"
      cp $INIT_CONFIG $MM_CONFIG
  else
      echo "No init config file $INIT_CONFIG"
  fi
else
   echo "Using existing config file" $MM_CONFIG
fi

./bin/mattermost
