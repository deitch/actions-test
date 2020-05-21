# actions-test

Executes actions on demand, to test doing things outside of a long PR cycle.

To use:

1. Create an action in `.github/workflows`
1. Give the action a unique custom name, and use it in the conditions of the action
1. Get a personal access token, instructions [here](https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line)
1. Execute the curl command

```console
REPO=deitch/actions-test  # change this to your repo!
TOKEN=mytoken             # change this to your token!
ACTION=myaction           # change this to your action!
curl -X POST https://api.github.com/repos/${REPO}/dispatches \
-H 'Accept: application/vnd.github.everest-preview+json' \
-H 'Authorization: token $TOKEN' \
--data '{"event_type": "$ACTION"}'
```
