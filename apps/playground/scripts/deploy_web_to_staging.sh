#!/bin/sh
# Run sudo chmod 755 before use.

echo "🌏 Deploy Flutter Web to Staging..."
peanut --branch gh-pages-staging --release --web-renderer html --extra-args "--dart-define=flavor=prod"
git push origin gh-pages-staging