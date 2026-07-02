@small_claims
Feature: MATC Small Claims

@sc0 @fast
Scenario: small claims starts
  Given I start the interview at "small_claims.yml"
  And the maximum seconds for each Step in this Scenario is 30
  And I set the variable "acknowledged_information_use to "True"
  And I tap to continue

@sc1 @full @slow
Scenario: No e-filing, no aff
  Given I start the interview at "small_claims.yml"
  And the maximum seconds for each Step in this Scenario is 30
  And I get to the question id "download_small_claims_no_efile" with this data:
    | var | value |
    | acknowledged_information_use | True |
    | claim_amount | 500 |
    | wants_fee_waiver | False |
    | al_person_answering | user |
    | user_wants_efile | False |
    | users[0].name.first | Jill |
    | users[0].name.last | Representert |
    | users[0].name.email | example@example.com |
    | users[0].address.address | 123 Fake St |
    | users[0].address.city | Boston |
    | users[0].address.state | MA |
    | users[0].address.zip | 02122 |
    | users[0].phone_number | 123-456-7890 |
    | users.there_is_another | False |
    | other_parties[0].person_type | business |
    | other_parties[0].name.first | Woah Inc. |
    | other_parties[0].address.address | 234 Fake St |
    | other_parties[0].address.city | Boston |
    | other_parties[0].address.state | MA |
    | other_parties[0].address.zip | 02122 |
    | other_parties[0].email | woahinc@example.com |
    | other_parties.there_is_another | False |
    | claim_description | Testing some input |
    | exhibit_attachment.exhibits.has_exhibits | False |
    | plaintiffs1_willing_to_mediate | False |
    | trial_court | all_courts[11] |
    | users[0].states_above_true['states_true'] | True |
    | users[0].signature | |

@sc2 @full @slow
Scenario: No e-filing, aff
  Given I start the interview at "small_claims.yml"
  And the maximum seconds for each Step in this Scenario is 30
  And I get to the question id "download_small_claims_no_efile" with this data:
    | var | value |
    | acknowledged_information_use | True |
    | claim_amount | 500 |
    | wants_fee_waiver | True |
    | public_assistance_kinds['TAFDC'] | True |
    | al_person_answering | user |
    | user_wants_efile | False |
    | users[0].name.first | Jill |
    | users[0].name.last | Representert |
    | users[0].name.email | example@example.com |
    | users[0].address.address | 123 Fake St |
    | users[0].address.city | Boston |
    | users[0].address.state | MA |
    | users[0].address.zip | 02122 |
    | users[0].phone_number | 123-456-7890 |
    | users.there_is_another | False |
    | other_parties[0].person_type | business |
    | other_parties[0].name.first | Woah Inc. |
    | other_parties[0].address.address | 234 Fake St |
    | other_parties[0].address.city | Boston |
    | other_parties[0].address.state | MA |
    | other_parties[0].address.zip | 02122 |
    | other_parties[0].email | woahinc@example.com |
    | other_parties.there_is_another | False |
    | claim_description | Testing some input |
    | exhibit_attachment.exhibits.has_exhibits | False |
    | plaintiffs1_willing_to_mediate | False |
    | trial_court | all_courts[11] |
    | users[0].states_above_true['states_true'] | True |
    | users[0].signature | |

