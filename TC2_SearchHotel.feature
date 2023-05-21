
Feature: Validating Adactin SearchHotel Page

  Scenario Outline: Validating adactin search hotel page using all fields
    Given User is on the adactin login page
    When User should login using "<userName>" and "<passWord>"
    Then After login User should verify successful login message "Hello Ashoktr!"
    And User should search hotel using "<location>" , "<hotel>" , "<roomType>" , "<noOfRoom>" , "<dateIn>" , "<dateOut>" , "<adultCount>" and "<childCount>"
    Then After searching hotel User should verify "Select Hotel" message

    Examples: 
      | userName    | passWord | location | hotel       | roomType | noOfRoom | adultCount | childCount | dateIn     | dateOut    |
      | ashoktr6496 | 5W009A   | Sydney   | Hotel Creek | Standard | 2 - Two  | 2 - Two    | 0 - None   | 22-06-2022 | 22-06-2022 |

  Scenario Outline: Validating adactin search hotel page using only mandatory fields
    Given User is on the adactin login page
    When User should login using "<userName>" and "<passWord>"
    Then After login User should verify successful login message "Hello Ashoktr!"
    And User should search hotel using mandatory fields "<location>" ,"<noOfRoom>","<dateIn>", "<dateOut>" and "<adultCount>"
    Then After searching hotel User should verify "Select Hotel" message

    Examples: 
      | userName    | passWord | location | noOfRoom | dateIn     | dateOut    | adultCount |
      | ashoktr6496 | 5W009A   | Sydney   | 2 - Two  | 27-06-2022 | 28-06-2022 | 2 - Two    |

  Scenario Outline: Validating adactin search hotel page using invalid CheckIn Date
    Given User is on the adactin login page
    When User should login using "<userName>" and "<passWord>"
    Then After login User should verify successful login message "Hello Ashoktr!"
    And User should search hotel using mandatory fields "<location>" ,"<noOfRoom>","<dateIn>", "<dateOut>" and "<adultCount>"
    Then After searching hotel User should verify invaild date error  message "Check-In Date shall be before than Check-Out Date" and "Check-Out Date shall be after than Check-In Date"

    Examples: 
      | userName    | passWord | location | noOfRoom | adultCount | dateIn     | dateOut    |
      | ashoktr6496 | 5W009A   | Sydney   | 2 - Two  | 2 - Two    | 22-06-2024 | 22-06-2022 |

  Scenario Outline: Validating adactin search hotel page without entering any fields
    Given User is on the adactin login page
    When User should login using "<userName>" and "<passWord>"
    Then After login User should verify successful login message "Hello Ashoktr!"
    And User should search hotel without entering any fields
    Then After searching hotel User should verify error message "Please Select a Location"

    Examples: 
      | userName    | passWord |
      | ashoktr6496 | 5W009A   |
