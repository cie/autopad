Feature: autopadding

    Scenario: All lines are aligned
        When the input is:
            """python
            firstname = request.POST['firstname']
            lastname = request.POST['lastname']
            username = request.POST['username']
            password = request.POST['password']
            """
        Then the output is:
            """python
            firstname = request.POST['firstname']
            lastname  = request.POST['lastname']
            username  = request.POST['username']
            password  = request.POST['password']
            """

    Scenario: Indent is kept
        When the input is:
            """python
            firstname = request.POST['firstname']
              lastname = request.POST['lastname']
            """
        Then the output is:
            """python
            firstname  = request.POST['firstname']
              lastname = request.POST['lastname']
            """
