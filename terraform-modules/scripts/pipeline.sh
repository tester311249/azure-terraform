#!/bin/bash
TOKEN=$1
BRANCH_NAME=$2
echo "Branch Name is: ${BRANCH_NAME}"
set -Eeo pipefail
B64_PAT=$(printf "%s"":$TOKEN" | base64)
# Add the Repository to global config with the PAT so that credentials are not asked for cloning
git config --global --add http.https://dev.azure.com/bbbb/_git/ooooo.extraHeader "AUTHORIZATION: Basic ${B64_PAT}"
# Git fetch origin to get the HEAD details
git fetch origin
# Informative Message. Can be removed
ls -lrt
echo -e "Checking Branch...\n\n"
if [ $BRANCH_NAME != main ]; then
# Informative message
echo -e "CI Phase started. Validating Changed Terraform Modules....\n\n"
changed_modules=$(git diff --name-only $(git rev-parse origin/main) HEAD | cut -d "/" -f2 | grep ^az- | uniq)
# List Changed terraform modules
echo -e "Changed_modules:\n $changed_modules"
cd terraform-modules
#for module in $($changed_modules | uniq); -- Substitution was failing hence commented out
for module in $changed_modules;
    do
        # Get into the module directory
        if [ ! -d "$module" ]; then
            echo -e "Could not find $module module. Looks like it has been removed or renamed.\n"
            continue
        else
            cd "$module"
        fi

        # Check if there is a test directory, this is a must
        if [ ! -d "test" ]; then
            echo -e "Could not find any 'test' directory for $module module.\n\n"
			# Return to git root
			cd ..
			continue
		else
		    echo -e "Running tests for $module module."
			# CD to "test" directory within terraform module to generate a terraform plan
			cd test
			# To check if further directory exist within "test" for varied terraform plan generation
			search_dir=($(find . -mindepth 1 -maxdepth 1 -type d))
			# If directories exist within tests then execute terraform plan within that
			if [ ${#search_dir[@]} -gt 0 ]; then
			   for entry in "${search_dir[@]}"
                   do
						echo -e "Tests for ::::: \n $entry"
						cd $entry
						make init && make plan
						if [ $? -ne 0 ]; then
							echo -e "Compliance tests failed for $module module.\n\n"
							exit 1
						fi
			 			cd ..
					done
			else
			    echo -e "Executing Terraform Modules Test $module\n\n"
				make init && make plan
        	fi

        if [ $? -ne 0 ]; then
            echo -e "Compliance tests failed for $module module.\n\n"
            exit 1
        fi

        	echo -e "Tests passed for $module module.\n\n"

        	# Return back to the module root.
        	cd ..

        	# Return back to the git root.
        	cd ..
		fi
	done

    echo -e "CI Pipeline finished.\n\n"
    exit 0
else
# Validating plan is not required during merge as those are already done in CI Phase...
echo -e "Terraform Modules Validation Completed in CI Phase.. Merging\n\n"
fi
