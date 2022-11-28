VERSION=$(mvn help:evaluate -Dexpression=project.version -q -DforceStdout)

# shellcheck disable=SC2001
eval "$(echo "$VERSION" | sed 's/^\([0-9]\+\)\.\([0-9]\+\)\.\([0-9]\+\)\(.*\)$/MAJOR=\1\nMINOR=\2\nPATCH=\3\nORIGINAL_SUFFIX=\4/')"
PATCH=$((PATCH+1))

echo "$MAJOR.$MINOR.$PATCH$SUFFIX"
