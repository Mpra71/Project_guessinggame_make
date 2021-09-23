created_readme.md:
        touch readme.md

        echo "Make Guessinggame " > readme.md
        echo "Execution : $$(date +%FT%T%Z)" >> readme.md
        wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
