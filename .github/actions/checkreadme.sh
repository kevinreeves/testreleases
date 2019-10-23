NEW_FILES=$(git diff --name-status ${{ github.head_ref }}..${{ github.base_ref }} | grep '^A' | wc -l)

if [[ ${NEW_FILES} -gt 0 ]]; then
    echo "We have new files"
    README_CHANGES=$(git diff --name-status README.md | grep '^M' | wc -l)
    if [[ ${README_CHANGES} -eq 0 ]]; then
        echo "should leave a PR comment here"
        export DO_PR_COMMENT=1
    fi
fi
