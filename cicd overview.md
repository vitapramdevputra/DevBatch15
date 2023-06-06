CI/CD pipeline overview
    - continuos integration cont deployment

- to deploy code automatically when it is tested.

Main/Master brach
    - dev1 will create a new feature branch
        - feat55 branch --> dev1 did all the changes.
    - dev1 will create PR and move changes to QA branch
        - Tester will test the functionality.
        - It is working as expected.
    - dev1 or Tester will MOVE all the changes to Master branch
        - Create new PR to Master branch
            - we can deploy code to dev sandbox and verify all the TESTs.
        - Merge the PR to Master
            - code will be auto deployed to production