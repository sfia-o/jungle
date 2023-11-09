<reference types="cypress" />

describe('visit homepage', () => {

  beforeEach(() => {
    cy.visit('http://localhost:3000')
  })

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });
})