describe("add to cart", () => {
  beforeEach(() => {
    cy.visit("http://localhost:3000");
  });

  it("should increase cart count", () => {
    cy.get('nav .nav-link[ href="/cart" ]').invoke("text").as("initialCount");
    cy.get("button.btn-add-to-cart").first().click({ force: true });
    cy.get('nav .nav-link[ href="/cart" ]').invoke("text").as("updatedCount");
    cy.get("@updatedCount").should("not.eq", "@initialCount");
  });
});
