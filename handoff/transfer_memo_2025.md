**Project Transfer Memo**

**Massachusetts Trial Court: Small Claims Interview  
Prepared by: Nicole Dimitri  
Date: April 30, 2025**

**Project Overview:**

This project translates the Massachusetts Notice of Small Claim form into a guided, plain-language interview using Docassemble and YAML, allowing a plaintiff to generate a completed form to file with the court. The interview is designed to clarify legal terminology, streamline the filing process, and increase access to justice, especially for self-represented plaintiffs who may be unable to afford counsel.

**Project Status:** (as of April 30, 2025)

- Minimum viable product (MVP) demonstrated on April 1, 2025, to Massachusetts Trial Court analysts Caitlin, Carolyn, and Filipe, and subject matter expert from Housing Court, Linette
- Final biweekly meeting with Trial Court took place on April 15, 2025

**Project Milestones and Development History:**

To begin the project, LIT students in the Summer 2024 session created a basic Weaver outline and “next steps” document to communicate their vision for the project.

Then, from Fall 2024 to the close of Spring 2025, I worked with Sam Glover and Ary Ascencio to implement the full functionality of the small claims interview. This included designing the full question flow, writing conditional logic, linking attachments, formatting output documents, testing for logic errors, and ensuring the interview met usability standards. All major features present in the current version were added during this development cycle and refined based on biweekly feedback from the Massachusetts Trial Court analysts.

**Project Plan:**

- The Trial Court would like to expand its guided interview offerings and standardize improvements across forms, especially the newly released eviction sealing project. In the future, the Trial Court analysts expressed that they want to redraft the small claims PDF form’s design and language.
- Regarding upcoming clinic projects, the Trial Court analysts would like the LIT Lab students to update the Affidavit of Indigency interview, which is integrated within the small claims guided interview and the other guided interviews that offer a fee waiver.

**Project Resources:**

- GitHub Small Claims Project Board: <https://github.com/orgs/SuffolkLITLab/projects/27>
- GitHub Small Claims Project Repository: <https://github.com/SuffolkLITLab/docassemble-MATCSmallClaims>
- Mass.gov Small Claims Information Page: <https://www.mass.gov/small-claims>
- Trial Court Small Claims Information Page: <https://www.mass.gov/lists/trial-court-efiling-forms#small-claims->
  - _Note: Due to the present e-filing initiative, the Trial Court small claims page no longer links the small claims PDF used in the current version of the interview pushed to GitHub on April 30, 2025. However, the only apparent change to the PDF is the e-filing seal in the upper-right corner._
- PDF for Statement of Small Claim and Notice: <https://www.mass.gov/doc/statement-of-small-claims-and-notice-for-efiling-select-district-court-bmc-and-housing-court/download>

**Project Feedback and Requested Improvements from Trial Court:** (April 2025)

1. Required Information for Filing: Add Defendant’s Address
    1. Feedback: Linette emphasized that the defendant’s address is needed for the address verification form and for the court to notify the defendant. Carolyn confirmed that while not always a required field on the form, the court must have an address to proceed.
    2. Action: Update the preliminary instructions to explicitly require the defendant’s address, regardless of the department (BMC, District, Housing), and ensure the interview collects this for all defendants (individuals and businesses).
2. Parties’ Information: Clarify Role of Address Use for Court Selection
    1. Feedback: Linette and Carolyn discussed scenarios where the plaintiff may not have a Massachusetts address. The interview should clarify how address input affects court selection and explain what to do if the plaintiff or claim location is out of state.
    2. Action: Add plain-language explanations, and possibly a collapsible help template, to direct users who lack a Massachusetts address or whose claim relates to property in Massachusetts.
3. Business Defendant Address Collection:
    1. Feedback: Linette pointed out that the business defendant workflow may not consistently collect the business’s address.
    2. Action: Ensure that when the defendant is a business, the interview always prompts for and records the defendant’s business’s address.
4. Contact Information Fields: Email Address Collection
    1. Feedback: Caitlin and Linette noted that the current small claims form does not have an email field, but adding an optional email field would be beneficial for futureproofing and communication.
    2. Action: Add an optional email field for both plaintiffs and defendants, with clear messaging that it is not required but recommended.
5. Military Affidavit Section: Form Field Consistency
    1. Feedback: Linette clarified that the official form only provides yes-no checkboxes for the plaintiff to describe the defendant’s military status, not text boxes.
    2. Action: Ensure the interview questions mirror the PDF form’s structure by only collecting yes/no checkbox responses and by not displaying free-text explanations in the generated PDF. Any additional information should be retained only in the LIT Lab’s internal logs and not on the form itself.
6. Court Locator and Filing Venue: Clarify Venue Selection
    1. Feedback: The team discussed the need for guidance when the plaintiff’s address is not in Massachusetts, or when the claim requires listing a property address in Massachusetts that is different from the parties’ home addresses.
    2. Action: Refine the current court selection template to explain how to select the proper court venue based on the claim or property location, not just on the filer’s home address.
7. Troubleshooting the "Review" Screen Logic:
    1. Feedback: During testing, it was observed that editing an early field on the review screen forced the user to re-approve all subsequent fields, even if they were already correct.
    2. Action: Revise the review screen logic so that when a user edits a field, they are returned only to that specific question, and can then jump back to the review screen, rather than being required to proceed sequentially through all following questions. Consider implementing a section-jump feature, as seen in some other court e-filing tools, to improve usability and prevent interview drop-off.
8. "Signing Under Oath" Screen Language: Refine Certification Language
    1. Feedback: Across all Trial Court e-filing projects, it was agreed that the default "Signing Under Oath" screen uses overly aggressive language and inaccurately suggests that the claimant is certifying the entire interview under penalty of perjury. However, only the military affidavit portion of the small claims filing requires certification under oath.
    2. Action: Revise the "Signing Under Oath" screen to use more accurate, plain-language text that clarifies what is being certified. Make clear that the oath applies specifically to the military affidavit section, not to the entire small claims interview or to all the user’s responses.  

**Small Claims Next-Steps for Future Students:**

1. Review and implement the improvements listed above, as well as completing pre-demo integration with the updated Affidavit of Indigency interview for fee waiver eligibility.
2. Stress-test the interview logic with a variety of user inputs to ensure that questions proceed as intended.
3. Coordinate with Trial Court analysts to confirm that updates align with their evolving requirements.
4. Monitor the Mass.gov website for small claims form updates and broader filing changes.
5. Document all changes and feedback in the small claims GitHub repository.  
    <br/>
