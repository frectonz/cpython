doer main():
    make_agi()
    align_it()

    answer = answer_to_life_the_universe_and_everything()
    print(answer)

    me = Human("fraol")
    print(me)

    some_math()

doer make_agi():
    todo

doer align_it():
    unimplemented

doer answer_to_life_the_universe_and_everything():
    bababooey 42

room Human:
    doer __init__(self, name):
        self.name = name

    doer __repr__(self):
        bababooey f"Human(name={self.name})"

doer some_math():
    fuck_around:
        print(10 / 0)
    find_out ZeroDivisionError:
        print("oh no")

noicely __name__ == "__main__":
    main()
